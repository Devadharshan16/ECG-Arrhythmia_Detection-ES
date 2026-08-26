"""evaluate_model_qat.py: Evaluates the QAT INT8 model on the completely unseen DS2 patient split.

v2 Evaluation Changes (2026-08-26):
  - Added Sensitivity (Recall), Specificity, Precision, F1-Score metrics
  - Added per-class accuracy breakdown
  - Updated to match TinyECG_CNN v2 architecture
  - Fixed: Now uses identical QAT qconfig and prepare_qat() to match training script exactly
"""

import os
import torch
from model_cnn import TinyECG_CNN
import torch.ao.quantization
from ecg_dataset import MITBIH_Dataset, DS2_TEST

def evaluate_qat_clinical_performance():
    print("======================================================")
    print("--- PHASE 1 v2: QAT CLINICAL EVALUATION (DS2) ---")
    print("======================================================")
    
    # 1. Set the SAME quantization backend used during training
    backend = torch.backends.quantized.supported_engines[0]
    torch.backends.quantized.engine = backend
    print(f"Using Quantization Backend: {backend}")
    
    # 2. Reconstruct Model with the EXACT SAME QAT pipeline as training
    #    CRITICAL: Must use get_default_qat_qconfig + prepare_qat (NOT get_default_qconfig + prepare)
    #    Otherwise BatchNorm fusion and observer types will differ, causing state_dict key mismatches
    model = TinyECG_CNN()
    model.train()  # prepare_qat requires train mode
    model.fuse_model()  # MUST fuse Conv+BN+ReLU before QAT
    model.qconfig = torch.ao.quantization.get_default_qat_qconfig(backend)
    torch.ao.quantization.prepare_qat(model, inplace=True)
    
    # Switch to eval mode and convert to true INT8 (mirrors training post-loop)
    model.eval()
    torch.ao.quantization.convert(model, inplace=True)
    
    # 3. Load QAT 8-bit Weights
    model_path = 'saved_models/tiny_ecg_qat.pth'
    if not os.path.exists(model_path):
        print(f"[CRITICAL ERROR] Could not find {model_path}. Run train_model_qat.py first.")
        return
    model.load_state_dict(torch.load(model_path, weights_only=True))
    print("Successfully loaded QAT 8-bit quantized 'brain'.\n")

    # 4. Load DS2 (Test Patients) dynamically (NO DATA LEAKAGE)
    print("Loading completely unseen clinical DS2 patients...")
    test_dataset = MITBIH_Dataset(data_dir="mitdb_data", patient_ids=DS2_TEST)
    test_size = len(test_dataset)

    # 5. Clinical Tracking Variables (Confusion Matrix)
    true_normal = 0     # TN: Correctly identified Normal
    true_anomaly = 0    # TP: Correctly identified Anomaly
    false_alarm = 0     # FP: Normal predicted as Anomaly
    missed_anomaly = 0  # FN: Anomaly predicted as Normal
    
    display_limit = 15
    displayed_count = 0

    print("\n--- Real-Time Sample Peek (First 15 Beats) ---")
    
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
                status, icon = "Normal [OK]", ""
            elif label == 1 and pred_val == 1:
                true_anomaly += 1
                status, icon = "Anomaly Caught [!]", ""
            elif label == 0 and pred_val == 1:
                false_alarm += 1
                status, icon = "False Alarm [X]", "(Predicted Anomaly on Normal Beat)"
            elif label == 1 and pred_val == 0:
                missed_anomaly += 1
                status, icon = "MISSED ANOMALY [X]", "(Predicted Normal on Arrhythmia!)"

            # Print a small sample for visual validation
            if displayed_count < display_limit:
                print(f"Beat {displayed_count + 1:02d} | Truth: {'Normal' if label==0 else 'Anomaly':<7} | Result: {status} {icon}")
                displayed_count += 1

    # 6. Compute Clinical Metrics
    total_correct = true_normal + true_anomaly
    accuracy = (total_correct / test_size) * 100 if test_size > 0 else 0
    
    # Sensitivity (Recall) = TP / (TP + FN) — How many anomalies did we catch?
    sensitivity = (true_anomaly / (true_anomaly + missed_anomaly) * 100) if (true_anomaly + missed_anomaly) > 0 else 0
    
    # Specificity = TN / (TN + FP) — How many normals did we correctly ignore?
    specificity = (true_normal / (true_normal + false_alarm) * 100) if (true_normal + false_alarm) > 0 else 0
    
    # Precision = TP / (TP + FP) — When we say anomaly, how often are we right?
    precision = (true_anomaly / (true_anomaly + false_alarm) * 100) if (true_anomaly + false_alarm) > 0 else 0
    
    # F1-Score = 2 * (Precision * Sensitivity) / (Precision + Sensitivity)
    f1 = (2 * precision * sensitivity / (precision + sensitivity)) if (precision + sensitivity) > 0 else 0
    
    # 7. Final Clinical Report
    print("\n======================================================")
    print("--- FINAL QAT v2 CLINICAL ACCURACY REPORT (DS2) ---")
    print("======================================================")
    print(f"Overall Accuracy: {accuracy:.2f}% ({total_correct}/{test_size} beats)")
    print("-" * 54)
    print(f"[OK] True Normals  (TN): {true_normal}")
    print(f"[!]  True Anomalies (TP): {true_anomaly}")
    print("-" * 54)
    print(f"[X]  False Alarms   (FP): {false_alarm}")
    print(f"[X]  Missed Anomalies(FN): {missed_anomaly}")
    print("=" * 54)
    print(f"[*] Sensitivity (Recall): {sensitivity:.2f}%")
    print(f"[*] Specificity:          {specificity:.2f}%")
    print(f"[*] Precision:            {precision:.2f}%")
    print(f"[*] F1-Score:             {f1:.2f}%")
    print("======================================================")

if __name__ == "__main__":
    evaluate_qat_clinical_performance()
