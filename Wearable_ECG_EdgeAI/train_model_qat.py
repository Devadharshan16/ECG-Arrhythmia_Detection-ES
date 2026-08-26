"""train_model_qat.py: Executes PyTorch QAT training loop with data augmentation,
Focal Loss (dynamic alpha), AdamW optimizer, and CosineAnnealingWarmRestarts.
Trained explicitly on DS1 clinical split.

v2 Training Changes (2026-08-26):
  - Added ECG-valid data augmentation: time shift, noise injection, amplitude scaling
  - Increased epochs from 10 to 30 for better QAT convergence
  - Switched from Adam to AdamW with weight decay (1e-4)
  - Switched from CosineAnnealing to CosineAnnealingWarmRestarts (T_0=10)
  - Focal Loss alpha now computed dynamically from DS1 class ratio
  - Reduced pruning from 20% to 10% to preserve capacity in small model
"""

print("\n[SYSTEM DIAGNOSTIC] Python interpreter has successfully read train_model_qat.py...")

import os
import numpy as np
import torch
import torch.nn as nn
import torch.optim as optim
import torch.nn.utils.prune as prune
import torch.nn.functional as F
from torch.utils.data import DataLoader
from model_cnn import TinyECG_CNN, count_parameters
from ecg_dataset import MITBIH_Dataset, DS1_TRAIN

# ==========================================
# ECG DATA AUGMENTATION
# ==========================================
def augment_ecg_batch(batch_inputs):
    """
    Applies clinically valid augmentations to a batch of ECG windows.
    1. Gaussian Noise (std=0.01): Simulates electrode/sensor noise
    2. Random Amplitude Scaling (0.9-1.1): Simulates inter-patient gain variation
    (Time shift removed because circular roll creates false anomalies)
    """
    augmented = batch_inputs.clone()
    batch_size = augmented.size(0)
    
    # 1. Gaussian Noise Injection
    noise = torch.randn_like(augmented) * 0.01
    augmented = augmented + noise
    
    # 2. Random Amplitude Scaling
    scales = 0.9 + 0.2 * torch.rand(batch_size, 1, 1)
    augmented = augmented * scales
    
    # Clamp back to [-1, 1] range to maintain normalization integrity
    augmented = torch.clamp(augmented, -1.0, 1.0)
    
    return augmented

# ==========================================
# FOCAL LOSS WITH DYNAMIC ALPHA
# ==========================================
class FocalLoss(nn.Module):
    def __init__(self, alpha=0.75, gamma=2.0, reduction='mean'):
        super(FocalLoss, self).__init__()
        self.alpha = alpha
        self.gamma = gamma
        self.reduction = reduction

    def forward(self, inputs, targets):
        ce_loss = F.cross_entropy(inputs, targets, reduction='none')
        pt = torch.exp(-ce_loss)
        
        # Per-sample alpha: apply higher weight to the minority class
        alpha_t = torch.where(targets == 1, self.alpha, 1.0 - self.alpha)
        focal_loss = alpha_t * (1 - pt) ** self.gamma * ce_loss

        if self.reduction == 'mean':
            return focal_loss.mean()
        elif self.reduction == 'sum':
            return focal_loss.sum()
        else:
            return focal_loss

# ==========================================
# MAIN TRAINING FUNCTION
# ==========================================
def train_qat_ecg_model(epochs=50, batch_size=64, learning_rate=0.001):
    print("======================================================")
    print("--- PHASE 1 v2: QAT LOOP (DS1 PATIENT SPLIT) ---")
    print("======================================================")

    # 1. Load DS1 (Train) Dynamically to prevent Data Leakage
    train_dataset = MITBIH_Dataset(data_dir="mitdb_data", patient_ids=DS1_TRAIN)
    train_loader = DataLoader(train_dataset, batch_size=batch_size, shuffle=True, drop_last=True)
    print(f"Data Loaders Ready -> Train Batches: {len(train_loader)}")

    # 2. Stable Focal Loss Alpha
    # Using 0.50 to perfectly balance true normals vs anomalies and heavily penalize false alarms.
    dynamic_alpha = 0.50
    print(f"\n[Focal Loss Status]")
    print(f" -> Focal Alpha set to: {dynamic_alpha:.4f}")

    # 3. Initialize Model & QAT Preparation
    model = TinyECG_CNN()
    model.train()
    model.fuse_model()  # MUST fuse Conv+BN+ReLU before QAT
    
    # Dynamically select the supported backend (e.g., 'onednn', 'qnnpack', 'fbgemm')
    backend = torch.backends.quantized.supported_engines[0]
    torch.backends.quantized.engine = backend
    
    model.qconfig = torch.ao.quantization.get_default_qat_qconfig(backend)
    torch.ao.quantization.prepare_qat(model, inplace=True)
    
    params, mem = count_parameters(model)
    print(f"\n[Architecture Status]")
    print(f" -> TinyECG_CNN v2: {params} params, {mem:.2f} KB INT8 footprint")
    print(f" -> QAT Observers Injected.")
    print(f" -> Loss Function: Focal Loss (Alpha={dynamic_alpha:.4f}, Gamma=2.0)")
    print(f" -> Data Augmentation: Noise std=0.01, Amp Scale 0.9-1.1")

    # 4. AdamW Optimizer with Weight Decay + Warm Restarts Scheduler
    criterion = FocalLoss(alpha=dynamic_alpha, gamma=2.0)
    optimizer = optim.AdamW(model.parameters(), lr=learning_rate, weight_decay=1e-4)
    scheduler = optim.lr_scheduler.CosineAnnealingWarmRestarts(optimizer, T_0=20, T_mult=1, eta_min=1e-6)

    # 5. Training Loop with Data Augmentation
    print(f"\nStarting QAT Training Loop over {epochs} Epochs (with augmentation)...")
    
    best_acc = 0.0
    for epoch in range(epochs):
        model.train()
        running_loss = 0.0
        correct_preds = 0
        total_batch_samples = 0

        for batch_inputs, batch_labels in train_loader:
            # Apply data augmentation to the batch
            aug_inputs = augment_ecg_batch(batch_inputs)
            
            optimizer.zero_grad()
            outputs = model(aug_inputs)
            
            loss = criterion(outputs, batch_labels)
            loss.backward()
            optimizer.step()

            running_loss += loss.item() * aug_inputs.size(0)
            preds = torch.max(outputs, 1)[1]
            correct_preds += (preds == batch_labels).sum().item()
            total_batch_samples += batch_labels.size(0)
            
        scheduler.step()

        epoch_loss = running_loss / len(train_dataset)
        epoch_acc = (100.0 * correct_preds) / total_batch_samples
        current_lr = scheduler.get_last_lr()[0]
        
        # Track best training accuracy
        if epoch_acc > best_acc:
            best_acc = epoch_acc
        
        print(f" Epoch [{epoch+1:02d}/{epochs}] | Loss: {epoch_loss:.4f} | Acc: {epoch_acc:.2f}% | LR: {current_lr:.6f}")

    print(f"\nBest Training Accuracy: {best_acc:.2f}%")

    # 6. Convert to Final INT8
    # (Pruning was removed here: 1954 params doesn't need pruning to fit in 15KB. Pruning destroyed accuracy.)
    print("\nConverting model to true 8-bit integers...")
    model.eval()
    torch.ao.quantization.convert(model, inplace=True)

    pruned_params, pruned_mem_kb = count_parameters(model)
    print(f" -> Final INT8 Footprint: {pruned_mem_kb:.2f} KB")

    # 8. Save Final Model
    output_dir = "saved_models"
    os.makedirs(output_dir, exist_ok=True)
    model_save_path = os.path.join(output_dir, "tiny_ecg_qat.pth")
    torch.save(model.state_dict(), model_save_path)
    
    print(f"\nSUCCESS: Advanced QAT v2 model saved to '{model_save_path}'")
    print("======================================================")

    return model

if __name__ == "__main__":
    train_qat_ecg_model()
