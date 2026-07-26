"""train_model.py: Executes the PyTorch training loop and 20% L1 unstructured
pruning for the TinyECG_CNN model, preparing parameters for INT8 quantization
export."""

import os
import numpy as np
import torch
import torch.nn as nn
import torch.optim as optim
import torch.nn.utils.prune as prune
from torch.utils.data import DataLoader, TensorDataset
from model_cnn import TinyECG_CNN, count_parameters

def train_and_prune_ecg_model(tensor_dir="processed_tensors", epochs=5, batch_size=64, learning_rate=0.001):
    print("======================================================")
    print("--- PHASE 1, TASK 1: PYTORCH TRAINING LOOP START ---")
    print("======================================================")

    # 1. Verify and Load Preprocessed Dataset Tensors
    X_path = os.path.join(tensor_dir, "X_data.npy")
    y_path = os.path.join(tensor_dir, "y_data.npy")

    if not os.path.exists(X_path) or not os.path.exists(y_path):
        print(f"[CRITICAL ERROR] Tensor files not found in '{tensor_dir}/'. Please run segment_ecg.py first.")
        return None

    print(f"Loading dataset arrays from '{tensor_dir}/'...")
    X_data = np.load(X_path)
    y_data = np.load(y_path)

    # 2. Convert to PyTorch Tensors
    X_tensor = torch.tensor(X_data, dtype=torch.float32)
    y_tensor = torch.tensor(y_data, dtype=torch.long)

    # 3. Create Dataset Splits (80% Training, 20% Validation/Testing)
    full_dataset = TensorDataset(X_tensor, y_tensor)
    train_size = int(0.8 * len(full_dataset))
    test_size = len(full_dataset) - train_size

    train_dataset, test_dataset = torch.utils.data.random_split(full_dataset, [train_size, test_size])

    train_loader = DataLoader(train_dataset, batch_size=batch_size, shuffle=True, drop_last=True)
    test_loader = DataLoader(test_dataset, batch_size=batch_size, shuffle=False, drop_last=False)

    print(f"Data Loaders Ready -> Train Batches: {len(train_loader)} | Test Batches: {len(test_loader)}")

    # 4. Initialize Model & Check BRAM Budget
    model = TinyECG_CNN()
    total_params, initial_mem_kb = count_parameters(model)
    print(f"\n[Model Initialization]")
    print(f" -> Total Parameters: {total_params}")
    print(f" -> Estimated INT8 Memory: {initial_mem_kb:.2f} KB (Limit: < 15.0 KB)")

    # 5. Define Loss Function and Optimizer
    criterion = nn.CrossEntropyLoss()
    optimizer = optim.Adam(model.parameters(), lr=learning_rate)

    # 6. Training Loop Execution
    print(f"\nStarting Training Loop over {epochs} Epochs...")
    model.train()
    for epoch in range(epochs):
        running_loss = 0.0
        correct_preds = 0
        total_samples = 0

        for batch_inputs, batch_labels in train_loader:
            optimizer.zero_grad()
            outputs = model(batch_inputs)
            loss = criterion(outputs, batch_labels)
            loss.backward()
            optimizer.step()

            running_loss += loss.item() * batch_inputs.size(0)
            preds = torch.max(outputs, 1)[1]
            correct_preds += (preds == batch_labels).sum().item()
            total_samples += batch_labels.size(0)

        epoch_loss = running_loss / train_size
        epoch_acc = (100.0 * correct_preds) / total_samples
        print(f" Epoch [{epoch+1}/{epochs}] | Loss: {epoch_loss:.4f} | Training Accuracy: {epoch_acc:.2f}%")

    # 7. Apply 20% L1 Unstructured Pruning
    print("\nApplying 20% L1 Unstructured Pruning to Convolutional & Linear Layers...")
    for name, module in model.named_modules():
        if isinstance(module, (nn.Conv1d, nn.Linear)):
            prune.l1_unstructured(module, name="weight", amount=0.2)
            prune.remove(module, "weight") # Make pruning permanent

    pruned_params, pruned_mem_kb = count_parameters(model)
    print("\n[Pruning Complete]")
    print(f" -> Active Parameters Post-Pruning: {pruned_params}")
    print(f" -> Final INT8 Footprint: {pruned_mem_kb:.2f} KB")
    print(f" -> FPGA BRAM Budget Status: {'PASSED' if pruned_mem_kb < 15.0 else 'FAILED'}")

    # 8. Save Trained & Pruned Weights
    output_dir = "saved_models"
    os.makedirs(output_dir, exist_ok=True)
    model_save_path = os.path.join(output_dir, "tiny_ecg_pruned.pth")
    torch.save(model.state_dict(), model_save_path)
    print(f"\nSUCCESS: Pruned model state dict saved to '{model_save_path}'")
    print("======================================================")

    return model

if __name__ == "__main__":
    train_and_prune_ecg_model()
