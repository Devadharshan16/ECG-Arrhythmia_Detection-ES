"""eval_ds2_sample_comparison.py: Evaluates the QAT INT8 model on a FIXED SET
of DS2 dataset indices, so results can be directly compared beat-for-beat
against the same indices run on the FPGA board.

Mirrors evaluate_model_qat.py exactly (same qconfig, same prepare_qat,
same model loading) - the ONLY difference is which beats are pulled from
the dataset: instead of the full DS2_TEST split, it uses SAMPLE_INDICES.
"""

import os
import torch
from model_cnn import TinyECG_CNN
import torch.ao.quantization
from ecg_dataset import MITBIH_Dataset, DS2_TEST

# ----------------------------------------------------------------------
# The exact 80 dataset indices extracted by extract_ds2_samples.py
# These are the SAME beats that will be run on the FPGA board.
# ----------------------------------------------------------------------
SAMPLE_INDICES = [
    11640, 25551, 6714, 16259, 15822, 1183, 19831, 34819, 14427, 15905,
    4467, 22831, 30301, 15165, 19790, 20634, 49296, 20292, 46024, 38561,
    8142, 9364, 28958, 45475, 12317, 503, 45249, 47637, 10383, 42616,
    39215, 14190, 34690, 5572, 46457, 36883, 43225, 247, 33399, 9365,
    32490, 37180, 13784, 47342, 25724, 20933, 29470, 34799, 3594, 37312,
    30067, 31357, 11450, 48410, 45111, 26427, 18638, 32626, 19667, 11021,
    38094, 16579, 24169, 28400, 25587, 12085, 43519, 49551, 15453, 18862,
    45358, 48424, 22748, 6292, 36433, 41487, 2043, 16045, 17987, 7224,
]


def evaluate_qat_on_fixed_samples():
    print("======================================================")
    print("--- QAT SAMPLE COMPARISON EVAL (Fixed 80 Beats) ---")
    print("======================================================")

    # 1. Set the SAME quantization backend used during training
    backend = torch.backends.quantized.supported_engines[0]
    torch.backends.quantized.engine = backend
    print(f"Using Quantization Backend: {backend}")

    # 2. Reconstruct Model with the EXACT SAME QAT pipeline as training
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
    dataset_size = len(test_dataset)
    print(f"Full DS2_TEST dataset size: {dataset_size}")

    # Sanity check: make sure every requested index is actually valid
    bad_indices = [idx for idx in SAMPLE_INDICES if idx < 0 or idx >= dataset_size]
    if bad_indices:
        print(f"[CRITICAL ERROR] These indices are out of range for the dataset: {bad_indices}")
        return

    num_samples = len(SAMPLE_INDICES)
    print(f"Evaluating fixed set of {num_samples} beats (same indices as extract_ds2_samples.py)\n")

    # 5. Clinical Tracking Variables (Confusion Matrix)
    true_normal = 0     # TN
    true_anomaly = 0     # TP
    false_alarm = 0      # FP
    missed_anomaly = 0   # FN

    print("--- Per-Beat Results ---")

    results = []  # (beat_num, dataset_idx, truth, pred, correct)

    with torch.no_grad():
        for beat_num, idx in enumerate(SAMPLE_INDICES, start=1):
            inputs, label = test_dataset[idx]
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
            else:  # label == 1 and pred_val == 0
                missed_anomaly += 1
                status, icon = "MISSED ANOMALY [X]", "(Predicted Normal on Arrhythmia!)"

            correct = (label == pred_val)
            results.append((beat_num, idx, label, pred_val, correct))

            print(f"Beat {beat_num:02d} | Idx: {idx:>6} | Truth: {'Normal' if label==0 else 'Anomaly':<7} "
                  f"| Pred: {'Normal' if pred_val==0 else 'Anomaly':<7} | {status} {icon}")

    # 6. Compute Clinical Metrics
    total_correct = true_normal + true_anomaly
    accuracy = (total_correct / num_samples) * 100 if num_samples > 0 else 0

    sensitivity = (true_anomaly / (true_anomaly + missed_anomaly) * 100) if (true_anomaly + missed_anomaly) > 0 else 0
    specificity = (true_normal / (true_normal + false_alarm) * 100) if (true_normal + false_alarm) > 0 else 0
    precision = (true_anomaly / (true_anomaly + false_alarm) * 100) if (true_anomaly + false_alarm) > 0 else 0
    f1 = (2 * precision * sensitivity / (precision + sensitivity)) if (precision + sensitivity) > 0 else 0

    # 7. Final Report
    print("\n======================================================")
    print("--- FIXED-SAMPLE COMPARISON REPORT (80 Beats) ---")
    print("======================================================")
    print(f"Overall Accuracy: {accuracy:.2f}% ({total_correct}/{num_samples} beats)")
    print("-" * 54)
    print(f"[OK] True Normals (TN): {true_normal}")
    print(f"[!] True Anomalies (TP): {true_anomaly}")
    print("-" * 54)
    print(f"[X] False Alarms (FP): {false_alarm}")
    print(f"[X] Missed Anomalies(FN): {missed_anomaly}")
    print("=" * 54)
    print(f"[*] Sensitivity (Recall): {sensitivity:.2f}%")
    print(f"[*] Specificity: {specificity:.2f}%")
    print(f"[*] Precision: {precision:.2f}%")
    print(f"[*] F1-Score: {f1:.2f}%")
    print("======================================================")

    # 8. Dump a simple CSV-friendly summary you can diff against the board's output
    print("\n--- CSV Summary (Beat,DatasetIdx,Truth,Pred,Correct) ---")
    for beat_num, idx, label, pred_val, correct in results:
        truth_str = "Normal" if label == 0 else "Anomaly"
        pred_str = "Normal" if pred_val == 0 else "Anomaly"
        print(f"{beat_num},{idx},{truth_str},{pred_str},{correct}")


if __name__ == "__main__":
    evaluate_qat_on_fixed_samples()