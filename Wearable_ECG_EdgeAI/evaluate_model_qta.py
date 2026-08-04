import os
import numpy as np
import torch
from torch.utils.data import TensorDataset
from model_cnn import TinyECG_CNN
import torch.ao.quantization

def evaluate_qat_clinical_performance():
    print("======================================================")
    print("--- PHASE 1: QAT CLINICAL ANOMALY EVALUATION ---")
    print("======================================================")
    
    # 1. Set the quantization backend dynamically
    backend = torch.backends.quantized.supported_engines[0]
    torch.backends.quantized.engine = backend
    print(f"Using Quantization Backend: {backend}")
    
    # 2. Reconstruct Model & Apply Quantization Structure 
    model = TinyECG_CNN()
    model.eval()
    model.qconfig = torch.ao.quantization.get_default_qconfig(backend)
    torch.ao.quantization.prepare(model, inplace=True)
    torch.ao.quantization.convert(model, inplace=True)
    
    # 3. Load QAT 8-bit Weights
    model_path = 'saved_models/tiny_ecg_qat.pth'
    if not os.path.exists(model_path):
        print(f"[CRITICAL ERROR] Could not find {model_path}. Run train_model.py first.")
        return
    model.load_state_dict(torch.load(model_path))
    print("Successfully loaded QAT 8-bit quantized 'brain'.\n")

    # 4. Load NumPy Arrays
    tensor_dir = "processed_tensors"
    X_data = np.load(os.path.join(tensor_dir, "X_data.npy"))
    y_data = np.load(os.path.join(tensor_dir, "y_data.npy"))

    X_tensor = torch.tensor(X_data, dtype=torch.float32)
    y_tensor = torch.tensor(y_data, dtype=torch.long)
    full_dataset = TensorDataset(X_tensor, y_tensor)

    # 5. Lock the Seed to grab the EXACT SAME unseen 20%
    train_size = int(0.8 * len(full_dataset))
    test_size = len(full_dataset) - train_size
    _, test_dataset = torch.utils.data.random_split(
        full_dataset, 
        [train_size, test_size], 
        generator=torch.Generator().manual_seed(42)
    )
    print(f"Evaluating exactly {test_size} purely unseen heartbeats...\n")

    # 6. Clinical Tracking Variables
    true_normal = 0    
    true_anomaly = 0   
    false_alarm = 0    
    missed_anomaly = 0 
    
    display_limit = 15
    displayed_count = 0

    print("--- Real-Time Sample Peek (First 15 Beats) ---")
    
    with torch.no_grad():
        for i in range(test_size):
            inputs, label = test_dataset[i]
            inputs = inputs.unsqueeze(0) 
            label = label.item()

            outputs = model(inputs)
            _, predicted = torch.max(outputs, 1)
            pred_val = predicted.item()
            
            # Clinical Mapping (0 = Normal, 1 = Anomaly)
            if label == 0 and pred_val == 0:
                true_normal += 1
                status, icon = "Normal ✅", ""
            elif label == 1 and pred_val == 1:
                true_anomaly += 1
                status, icon = "Anomaly Caught 🚨", ""
            elif label == 0 and pred_val == 1:
                false_alarm += 1
                status, icon = "False Alarm ❌", "(Predicted Anomaly on Normal Beat)"
            elif label == 1 and pred_val == 0:
                missed_anomaly += 1
                status, icon = "MISSED ANOMALY ❌", "(Predicted Normal on Arrhythmia!)"

            # Print a small sample for visual validation
            if displayed_count < display_limit:
                print(f"Beat {displayed_count + 1:02d} | Truth: {'Normal' if label==0 else 'Anomaly':<7} | Result: {status} {icon}")
                displayed_count += 1

    # 7. Final Clinical Report
    total_correct = true_normal + true_anomaly
    accuracy = (total_correct / test_size) * 100
    
    print("\n======================================================")
    print("--- FINAL QAT CLINICAL ACCURACY REPORT ---")
    print("======================================================")
    print(f"Overall Accuracy: {accuracy:.2f}% ({total_correct}/{test_size} beats)")
    print("-" * 54)
    print(f"✅ True Normals (Correctly Ignored):  {true_normal}")
    print(f"🚨 True Anomalies (Correctly Caught): {true_anomaly}")
    print("-" * 54)
    print(f"❌ False Alarms (Annoying to patient): {false_alarm}")
    print(f"💀 Missed Anomalies (Fatal for device): {missed_anomaly}")
    print("======================================================")

if __name__ == "__main__":
    evaluate_qat_clinical_performance()
