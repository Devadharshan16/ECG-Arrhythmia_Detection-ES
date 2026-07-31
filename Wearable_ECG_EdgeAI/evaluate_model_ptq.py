"""
evaluate_ptq.py: 
Loads the final, exported TorchScript INT8 model and evaluates it 
on the 20% holdout test set to verify final accuracy.
"""

import os
import numpy as np
import torch
from torch.utils.data import TensorDataset

def evaluate_quantized_model():
    print("======================================================")
    print("--- Starting PTQ INT8 Model Evaluation ---")
    print("======================================================")
    
    # 1. Load the Traced PTQ Model directly 
    model_path = os.path.join("saved_models", "tiny_ecg_ptq_int8.pth")
    
    if not os.path.exists(model_path):
        print(f"[CRITICAL ERROR] Could not find '{model_path}'.")
        return

    # torch.jit.load handles all the quantization configurations internally
    model = torch.jit.load(model_path)
    model.eval()
    print(f"Successfully loaded traced INT8 model from '{model_path}'.\n")

    # 2. Load NumPy Arrays
    tensor_dir = "processed_tensors"
    X_path = os.path.join(tensor_dir, "X_data.npy")
    y_path = os.path.join(tensor_dir, "y_data.npy")
    
    if not os.path.exists(X_path) or not os.path.exists(y_path):
        print(f"[CRITICAL ERROR] Tensor files not found in '{tensor_dir}/'.")
        return

    X_data = np.load(X_path)
    y_data = np.load(y_path)

    X_tensor = torch.tensor(X_data, dtype=torch.float32)
    y_tensor = torch.tensor(y_data, dtype=torch.long)
    full_dataset = TensorDataset(X_tensor, y_tensor)

    # 3. Recreate the EXACT SAME 80/20 Split using the fixed seed
    train_size = int(0.8 * len(full_dataset))
    test_size = len(full_dataset) - train_size
    
    _, test_dataset = torch.utils.data.random_split(
        full_dataset, 
        [train_size, test_size], 
        generator=torch.Generator().manual_seed(42) # The exact same seed
    )
    print(f"Reconstructed testing pool with {test_size} purely unseen heartbeats.\n")

    # 4. Evaluation Loop with Detailed Display
    correct_predictions = 0
    total_samples = len(test_dataset)
    display_limit = 20
    displayed_count = 0

    print("--- Detailed Sample Breakdown (First 20 Samples) ---")
    
    with torch.no_grad():
        for i in range(total_samples):
            inputs, label = test_dataset[i]
            inputs = inputs.unsqueeze(0) # Add batch dimension for inference
            label = label.item()

            # Pass through the traced model
            outputs = model(inputs)
            _, predicted = torch.max(outputs, 1)
            pred_val = predicted.item()
            
            true_status = "Normal" if label == 0 else "Anomaly"
            pred_status = "Normal" if pred_val == 0 else "Anomaly"
            
            if pred_val == label:
                correct_predictions += 1
                match_icon = "✅"
            else:
                match_icon = "❌"

            if displayed_count < display_limit:
                print(f"Sample {displayed_count + 1:02d} | True: {true_status:<7} | Predicted: {pred_status:<7} {match_icon}")
                displayed_count += 1

    # 5. Calculate Metrics
    accuracy = (correct_predictions / total_samples) * 100
    print("\n" + "=" * 54)
    print(f"Final Quantized PTQ Model Accuracy: {accuracy:.2f}%")
    print(f"Correctly Classified: {correct_predictions} out of {total_samples}")
    print("======================================================")

if __name__ == "__main__":
    evaluate_quantized_model()
