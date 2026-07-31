import os
import numpy as np
import torch
from torch.utils.data import TensorDataset
from model_cnn import TinyECG_CNN

def evaluate_cross_dataset():
    print("======================================================")
    print("--- CROSS-DATASET EVALUATION (INCART DATABASE) ---")
    print("======================================================")
    
    backend = torch.backends.quantized.supported_engines[0]
    torch.backends.quantized.engine = backend
    
    # Reconstruct Model & Load 8-bit Weights
    model = TinyECG_CNN()
    model.eval()
    model.qconfig = torch.ao.quantization.get_default_qconfig(backend)
    torch.ao.quantization.prepare(model, inplace=True)
    torch.ao.quantization.convert(model, inplace=True)
    
    model_path = 'saved_models/tiny_ecg_quantized.pth'
    model.load_state_dict(torch.load(model_path))
    print("Successfully loaded 8-bit quantized MIT-BIH trained model.\n")

    # Load from the NEW folder
    tensor_dir = "incart_tensors"
    if not os.path.exists(tensor_dir):
        print(f"Error: {tensor_dir} not found. Run process_incart_data.py first.")
        return

    X_data = np.load(os.path.join(tensor_dir, "X_data.npy"))
    y_data = np.load(os.path.join(tensor_dir, "y_data.npy"))

    # We test on 100% of this data, because it is all unseen!
    X_tensor = torch.tensor(X_data, dtype=torch.float32)
    y_tensor = torch.tensor(y_data, dtype=torch.long)
    test_dataset = TensorDataset(X_tensor, y_tensor)
    total_beats = len(test_dataset)

    print(f"Evaluating model on {total_beats} totally alien heartbeats...\n")

    true_normal = 0
    true_anomaly = 0
    false_alarm = 0
    missed_anomaly = 0
    
    with torch.no_grad():
        for i in range(total_beats):
            inputs, label = test_dataset[i]
            inputs = inputs.unsqueeze(0) 
            label = label.item()

            outputs = model(inputs)
            _, predicted = torch.max(outputs, 1)
            pred_val = predicted.item()
            
            if label == 0 and pred_val == 0: true_normal += 1
            elif label == 1 and pred_val == 1: true_anomaly += 1
            elif label == 0 and pred_val == 1: false_alarm += 1
            elif label == 1 and pred_val == 0: missed_anomaly += 1

    accuracy = ((true_normal + true_anomaly) / total_beats) * 100
    
    print("======================================================")
    print("--- CROSS-DATASET CLINICAL REPORT ---")
    print("======================================================")
    print(f"Overall Accuracy: {accuracy:.2f}%")
    print("-" * 54)
    print(f"✅ True Normals:    {true_normal}")
    print(f"🚨 True Anomalies:  {true_anomaly}")
    print("-" * 54)
    print(f"❌ False Alarms:    {false_alarm}")
    print(f"💀 Missed Anomalies:{missed_anomaly}")
    print("======================================================")

if __name__ == "__main__":
    evaluate_cross_dataset()
