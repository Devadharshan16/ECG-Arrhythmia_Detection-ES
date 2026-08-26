# 🏃 Run Instructions — QAT v2 Pipeline

> **Created**: 2026-08-26
> **Purpose**: Step-by-step instructions to train and evaluate the improved TinyECG_CNN v2 model.

---

## Prerequisites

- Python virtual environment must be activated (`venv`)
- Dataset must be already downloaded in `mitdb_data/` (if not, run Step 0 first)
- All commands must be run from inside the `Wearable_ECG_EdgeAI/` directory

---

## Execution Order

### Step 0 — Download Dataset (ONLY if `mitdb_data/` folder is missing)

```
python get_data.py
```

This downloads the 48 MIT-BIH patient records (~89.7 MB) from PhysioNet.
**Skip this step if `mitdb_data/` already exists with 144 files.**

---

### Step 1 — Verify the Model Architecture

```
python model_cnn.py
```

**Expected Output:**
```
TinyECG_CNN v2 Instantiated!
Total Parameters: ~2900
Estimated INT8 Footprint: ~2.83 KB (Limit: < 15.0 KB)
Output Shape: torch.Size([1, 2]) (Expected: [1, 2])
```

This confirms the v2 architecture loads correctly and the output shape is valid.

---

### Step 2 — Train the Model (QAT v2)

```
python train_model_qat.py
```

**What it does:**
1. Dynamically loads 22 DS1 patient records into memory
2. Computes dynamic Focal Loss alpha from class distribution
3. Trains for 30 epochs with data augmentation (time shift, noise, amplitude scaling)
4. Applies 10% L1 pruning
5. Converts to INT8 quantized model
6. Saves to `saved_models/tiny_ecg_qat.pth`

**Expected Duration:** ~5-15 minutes depending on hardware (CPU only).

**What to look for:**
- Training accuracy should steadily climb across 30 epochs
- Final training accuracy should be 95%+ on DS1
- INT8 footprint should be ~2.8 KB

---

### Step 3 — Evaluate the Model (Clinical DS2 Test)

```
python evaluate_model_qat.py
```

**What it does:**
1. Loads the saved QAT INT8 model
2. Dynamically loads 22 completely unseen DS2 patient records
3. Runs inference on every single beat
4. Prints confusion matrix + clinical metrics

**Metrics to check:**
- **Accuracy**: Target 93%+ on DS2 (this is a REAL clinical benchmark with no leakage)
- **Sensitivity (Recall)**: How many anomalies we catch — higher is better for a medical device
- **Specificity**: How many normals we correctly ignore — higher means fewer false alarms
- **Precision**: When we say "anomaly", how often we're right
- **F1-Score**: Harmonic mean of Precision and Sensitivity

---

## Full Command Sequence (Copy-Paste Ready)

Open a terminal in `Wearable_ECG_EdgeAI/`, activate the venv, and run:

```
# Activate virtual environment
.\venv\Scripts\Activate

# Step 1: Verify architecture
python model_cnn.py

# Step 2: Train (this takes a few minutes)
python train_model_qat.py

# Step 3: Evaluate on unseen patients
python evaluate_model_qat.py
```

---

## Troubleshooting

| Issue | Solution |
|---|---|
| `ModuleNotFoundError: No module named 'wfdb'` | Activate the venv first: `.\venv\Scripts\Activate` |
| `FileNotFoundError: mitdb_data/101.dat` | Run `python get_data.py` to download the dataset |
| `RuntimeError: shape mismatch` | Old model weights detected. Delete `saved_models/tiny_ecg_qat.pth` and re-run Step 2 |
| Training is very slow | This is CPU-only training — 30 epochs on ~50K beats is expected to take 5-15 minutes |
