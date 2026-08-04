"""train_model.py: Executes the PyTorch QAT training loop using Focal Loss 
and Cosine Annealing for the TinyECG_CNN model."""

# DIAGNOSTIC 1: If you don't see this print, the file is not saved.
print("\n[SYSTEM DIAGNOSTIC] Python interpreter has successfully read train_model.py...")

import os
import numpy as np
import torch
import torch.nn as nn
import torch.optim as optim
import torch.nn.utils.prune as prune
import torch.nn.functional as F
from torch.utils.data import DataLoader, TensorDataset
from model_cnn import TinyECG_CNN, count_parameters

# ==========================================
# ADVANCED MATHEMATICS: FOCAL LOSS
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
        focal_loss = (self.alpha * (1 - pt) ** self.gamma * ce_loss)

        if self.reduction == 'mean':
            return focal_loss.mean()
        elif self.reduction == 'sum':
            return focal_loss.sum()
        else:
            return focal_loss

def train_qat_ecg_model(tensor_dir="processed_tensors", epochs=10, batch_size=64, learning_rate=0.001):
    print("======================================================")
    print("--- PHASE 1: QAT LOOP WITH FOCAL LOSS ---")
    print("======================================================")

    # 1. Verify and Load Data
    X_path = os.path.join(tensor_dir, "X_data.npy")
    y_path = os.path.join(tensor_dir, "y_data.npy")

    if not os.path.exists(X_path) or not os.path.exists(y_path):
        print(f"[CRITICAL ERROR] Tensor files not found in '{tensor_dir}/'.")
        return None

    X_data = np.load(X_path)
    y_data = np.load(y_path)
    X_tensor = torch.tensor(X_data, dtype=torch.float32)
    y_tensor = torch.tensor(y_data, dtype=torch.long)

    # 2. Strict 80/20 Split (MAGIC SEED APPLIED)
    torch.manual_seed(42)
    full_dataset = TensorDataset(X_tensor, y_tensor)
    train_size = int(0.8 * len(full_dataset))
    test_size = len(full_dataset) - train_size

    train_dataset, test_dataset = torch.utils.data.random_split(full_dataset, [train_size, test_size])
    train_loader = DataLoader(train_dataset, batch_size=batch_size, shuffle=True, drop_last=True)

    print(f"Data Loaders Ready -> Train Batches: {len(train_loader)} | Validation Pool: {test_size} beats")

    # 3. Initialize Model & QAT Preparation
    model = TinyECG_CNN()
    model.train()
    
    model.qconfig = torch.ao.quantization.get_default_qat_qconfig('qnnpack')
    torch.ao.quantization.prepare_qat(model, inplace=True)
    
    print("\n[Architecture Status]")
    print(" -> QAT Observers Injected.")
    print(" -> Loss Function: Focal Loss (Alpha=0.75, Gamma=2.0)")

    # 4. Focal Loss, Optimizer, and Scheduler
    criterion = FocalLoss(alpha=0.75, gamma=2.0)
    optimizer = optim.Adam(model.parameters(), lr=learning_rate)
    scheduler = optim.lr_scheduler.CosineAnnealingLR(optimizer, T_max=epochs, eta_min=1e-6)

    # 5. Training Loop
    print(f"\nStarting QAT Training Loop over {epochs} Epochs...")
    
    for epoch in range(epochs):
        running_loss = 0.0
        correct_preds = 0
        total_batch_samples = 0

        for batch_inputs, batch_labels in train_loader:
            optimizer.zero_grad()
            outputs = model(batch_inputs)
            
            loss = criterion(outputs, batch_labels)
            loss.backward()
            optimizer.step()

            running_loss += loss.item() * batch_inputs.size(0)
            preds = torch.max(outputs, 1)[1]
            correct_preds += (preds == batch_labels).sum().item()
            total_batch_samples += batch_labels.size(0)
            
        scheduler.step()

        epoch_loss = running_loss / train_size
        epoch_acc = (100.0 * correct_preds) / total_batch_samples
        current_lr = scheduler.get_last_lr()[0]
        
        print(f" Epoch [{epoch+1}/{epochs}] | Loss: {epoch_loss:.4f} | Acc: {epoch_acc:.2f}% | LR: {current_lr:.6f}")

    # 6. Apply L1 Pruning
    print("\nApplying 20% L1 Unstructured Pruning...")
    for name, module in model.named_modules():
        if isinstance(module, (nn.Conv1d, nn.Linear)):
            prune.l1_unstructured(module, name="weight", amount=0.2)
            prune.remove(module, "weight")

    # 7. Convert to Final INT8
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
    
    print(f"\nSUCCESS: Advanced QAT model saved to '{model_save_path}'")
    print("======================================================")

    return model

# ==========================================
# EXECUTION BLOCK (CRITICAL)
# ==========================================
# DIAGNOSTIC 2: If you see Diagnostic 1 but not this, the execution block is missing.
if __name__ == "__main__":
    print("[SYSTEM DIAGNOSTIC] Execution block triggered. Booting training loop...")
    train_qat_ecg_model()
