"""
quantize_and_eval.py: 
1. Loads your pruned FP32 model.
2. Calibrates using a HistogramObserver (Maximum PTQ Accuracy configuration).
3. Converts it to INT8 and evaluates on the exact 20% test split.
"""

import os
import numpy as np
import torch
import torch.ao.quantization as quantization
from torch.utils.data import DataLoader, TensorDataset

# Import YOUR exact model
from model_cnn import TinyECG_CNN

def run_quantization_and_evaluation(tensor_dir="processed_tensors", model_dir="saved_models", batch_size=64):
    print("======================================================")
    print("--- MAXIMUM ACCURACY PTQ START ---")
    print("======================================================")

    # 1. DATA LOADING & EXACT 80/20 SPLIT
    X_path = os.path.join(tensor_dir, "X_data.npy")
    y_path = os.path.join(tensor_dir, "y_data.npy")

    X_data = np.load(X_path)
    y_data = np.load(y_path)
    X_tensor = torch.tensor(X_data, dtype=torch.float32)
    y_tensor = torch.tensor(y_data, dtype=torch.long)

    full_dataset = TensorDataset(X_tensor, y_tensor)
    train_size = int(0.8 * len(full_dataset))
    test_size = len(full_dataset) - train_size

    train_dataset, test_dataset = torch.utils.data.random_split(
        full_dataset, 
        [train_size, test_size], 
        generator=torch.Generator().manual_seed(42)
    )

    train_loader = DataLoader(train_dataset, batch_size=batch_size, shuffle=True)
    test_loader = DataLoader(test_dataset, batch_size=batch_size, shuffle=False)

    # 2. LOAD PRUNED WEIGHTS
    model = TinyECG_CNN()
    weights_path = os.path.join(model_dir, "tiny_ecg_pruned.pth")
    model.load_state_dict(torch.load(weights_path, weights_only=True))
    model.eval()

    # 3. ADVANCED CALIBRATION (HISTOGRAM) & INT8 CONVERSION
    backend = torch.backends.quantized.supported_engines[0]
    torch.backends.quantized.engine = backend
    
    # --- THE MAGIC FIX ---
    # Using HistogramObserver minimizes the mean squared quantization error
    advanced_qconfig = quantization.QConfig(
        activation=quantization.HistogramObserver.with_args(reduce_range=False),
        weight=quantization.default_per_channel_weight_observer
    )
    model.qconfig = advanced_qconfig
    # ---------------------
    
    quantization.prepare(model, inplace=True)
    
    print("Calibrating using Histogram Analysis on full dataset...")
    with torch.no_grad():
        for batch_inputs, _ in train_loader:
            model(batch_inputs)
            
    print("Converting model to True INT8...")
    quantized_model = quantization.convert(model, inplace=True)

    # 4. EVALUATION ON TEST SET
    print("\n======================================================")
    print("--- EVALUATING FINAL PTQ INT8 MODEL ---")
    print("======================================================")
    
    correct_test = 0
    total_test = 0
    
    with torch.no_grad():
        for test_inputs, test_labels in test_loader:
            outputs = quantized_model(test_inputs)
            preds = torch.max(outputs, 1)[1]
            correct_test += (preds == test_labels).sum().item()
            total_test += test_labels.size(0)

    test_acc = (100.0 * correct_test) / total_test
    print(f"Final INT8 PTQ Test Accuracy: {test_acc:.2f}%")

    # 5. EXPORT TRACED MODEL
    ptq_save_path = os.path.join(model_dir, "tiny_ecg_ptq_int8.pth")
    dummy_input = torch.randn(1, 1, 90)
    traced_model = torch.jit.trace(quantized_model, dummy_input)
    torch.jit.save(traced_model, ptq_save_path)
    
    print(f"\nSUCCESS: Deployable INT8 model saved to '{ptq_save_path}'")
    print("======================================================")

if __name__ == "__main__":
    run_quantization_and_evaluation()
