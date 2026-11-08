"""evaluate_ds2_full.py: Evaluates the QAT INT8 model on the ENTIRE DS2 dataset
(all 51,170 beats) with per-beat latency measurement, so results can be
directly compared against the FPGA board's full-dataset run.

Outputs: Accuracy, Precision, Recall, F1, Specificity, and Latency stats.
"""

import os
import time
import torch
from model_cnn import TinyECG_CNN
import torch.ao.quantization
from ecg_dataset import MITBIH_Dataset, DS2_TEST


def evaluate_full_ds2():
    print("======================================================")
    print("   FULL DS2 EVALUATION — PyTorch QAT INT8 (Laptop)")
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
    print(f"\nEvaluating ALL {dataset_size} beats with latency measurement...\n")

    # 5. Clinical Tracking Variables (Confusion Matrix)
    true_normal = 0     # TN
    true_anomaly = 0    # TP
    false_alarm = 0     # FP
    missed_anomaly = 0  # FN

    latencies = []

    total_start = time.perf_counter()

    with torch.no_grad():
        for idx in range(dataset_size):
            inputs, label = test_dataset[idx]
            inputs = inputs.unsqueeze(0)
            label = label.item()

            # Measure per-beat inference latency
            t0 = time.perf_counter()
            outputs = model(inputs)
            t1 = time.perf_counter()

            latency_us = (t1 - t0) * 1_000_000  # Convert to microseconds
            latencies.append(latency_us)

            _, predicted = torch.max(outputs, 1)
            pred_val = predicted.item()

            # Clinical Mapping (0 = Normal, 1 = Anomaly)
            if label == 0 and pred_val == 0:
                true_normal += 1
            elif label == 1 and pred_val == 1:
                true_anomaly += 1
            elif label == 0 and pred_val == 1:
                false_alarm += 1
            else:  # label == 1 and pred_val == 0
                missed_anomaly += 1

            # Progress update every 5000 beats
            if (idx + 1) % 5000 == 0:
                print(f"Progress: {idx + 1} / {dataset_size} beats completed...")

    total_end = time.perf_counter()
    total_time_sec = total_end - total_start

    # 6. Compute Clinical Metrics
    total_beats = dataset_size
    total_correct = true_normal + true_anomaly
    accuracy = (total_correct / total_beats) * 100

    sensitivity = (true_anomaly / (true_anomaly + missed_anomaly) * 100) if (true_anomaly + missed_anomaly) > 0 else 0
    specificity = (true_normal / (true_normal + false_alarm) * 100) if (true_normal + false_alarm) > 0 else 0
    precision = (true_anomaly / (true_anomaly + false_alarm) * 100) if (true_anomaly + false_alarm) > 0 else 0
    f1 = (2 * precision * sensitivity / (precision + sensitivity)) if (precision + sensitivity) > 0 else 0

    # Latency stats
    avg_latency = sum(latencies) / len(latencies)
    min_latency = min(latencies)
    max_latency = max(latencies)

    # 7. Final Report
    print(f"\n======================================================")
    print(f"   FULL DS2 EVALUATION (ALL {total_beats} BEATS)")
    print(f"======================================================")
    print(f"Total True Positives (TP) : {true_anomaly}")
    print(f"Total True Negatives (TN) : {true_normal}")
    print(f"Total False Positives (FP): {false_alarm}")
    print(f"Total False Negatives (FN): {missed_anomaly}")

    print(f"\nAccuracy    : {accuracy:.2f} %")
    print(f"Precision   : {precision:.2f} %")
    print(f"Recall      : {sensitivity:.2f} %")
    print(f"Specificity : {specificity:.2f} %")
    print(f"F1-Score    : {f1:.2f} %")

    print(f"\n------------------------------------------------------")
    print(f"   LAPTOP LATENCY (PyTorch INT8 on CPU)")
    print(f"------------------------------------------------------")
    print(f"Avg Latency : {avg_latency:.2f} us/beat")
    print(f"Min Latency : {min_latency:.2f} us")
    print(f"Max Latency : {max_latency:.2f} us")
    print(f"Total Time  : {total_time_sec:.2f} sec")
    print(f"Throughput  : {int(total_beats / total_time_sec)} beats/sec")
    print(f"======================================================")


if __name__ == "__main__":
    evaluate_full_ds2()
