# ECG Model Diagnosis — Problems & Solutions

*(Corrected context: your DS1/DS2 patient-independent 81.5% accuracy / 67.5% sensitivity is your real, honest baseline — the earlier ~90% was leakage-inflated and not a valid comparison point.)*

---

## 🔴 Problem 1 — Per-window normalization erases amplitude information

**File:** `ecg_dataset.py`, lines 57-62

```python
w_min, w_max = np.min(window), np.max(window)
norm_win = 2.0 * ((window - w_min) / (w_max - w_min)) - 1.0
```

Every single 90-sample beat is independently stretched to fill exactly `[-1, 1]`. This destroys **absolute and relative amplitude** — a real diagnostic feature (PVCs are often taller/wider than normal beats). The model can now only learn shape, not magnitude.

**Fix:** Normalize per **patient record**, not per beat. Compute min/max (or mean/std) once per record's filtered signal, and apply that same scale to every window cut from it. This preserves genuine inter-beat amplitude differences within a patient while still normalizing across patients.

```python
clean_sig = apply_digital_filters(raw_sig, fs=record.fs)
sig_mean, sig_std = clean_sig.mean(), clean_sig.std()
# then per window:
norm_win = (window - sig_mean) / (sig_std + 1e-8)
```

(z-score is usually more robust than min-max for physiological signals with outlier beats.)

---

## 🔴 Problem 2 — No validation tracking during training

**File:** `train_model_qat.py`

You only log **training accuracy** per epoch. You never see generalization performance until the full 30-50 epoch run finishes and you separately run `evaluate_model_qat.py`. You can't tell which epoch generalized best, whether you're overfitting, or whether a hyperparameter change actually helped — without a full retrain + separate eval each time.

**Fix:** Hold out ~4-5 patients from DS1 as a validation split (still patient-independent, never touching DS2). Track val accuracy, sensitivity, specificity, F1 every epoch, and save the checkpoint with the best val sensitivity (not train accuracy, since Focal Loss + imbalance makes train accuracy misleading).

---

## 🟡 Problem 3 — Focal Loss alpha is hand-tuned, not measured

**File:** `train_model_qat.py`, line 93

```python
dynamic_alpha = 0.50  # comment says "dynamic" but it's hardcoded
```

Your slide deck gives real numbers: DS-wide ~68% normal / 32% anomaly; your DS2 test split is ~80% normal / 20% anomaly. You've manually tried 0.50 and 0.60 (per your log) without a principled basis — this is why sensitivity is stuck at 67.5% (missing 1 in 3 real arrhythmias), a costly failure mode for a clinical anomaly detector.

**Fix:** Actually compute alpha from your **DS1 training** class counts (not DS2 — DS2 must stay untouched):

```python
n_normal = (train_dataset.y_data == 0).sum().item()
n_anomaly = (train_dataset.y_data == 1).sum().item()
dynamic_alpha = n_normal / (n_normal + n_anomaly)  # weight anomaly class higher
```

Then, once you have validation tracking (Problem 2), sweep alpha in a small range (e.g., 0.55–0.75) and pick based on val sensitivity/F1, not a guess.

---

## 🟡 Problem 4 — Augmentation partially neutralized by Problem 1

**File:** `train_model_qat.py`, `augment_ecg_batch()`

Random amplitude scaling (0.9–1.1) is meant to simulate inter-patient gain variation — but since Problem 1 already flattens every beat's amplitude to fill `[-1, 1]`, this augmentation is scaling data that's already artificially normalized, so it teaches the model less than intended.

**Fix:** Once Problem 1 is fixed (record-level normalization), this augmentation becomes meaningful again — no separate action needed beyond fixing #1 first.

---

## 🟢 Not a problem — model capacity

~2,900 params is small but plausible for 90-sample binary classification given your BRAM constraint (19.3% of 15KB used). I wouldn't grow the model further until #1–#3 are fixed — extra capacity won't fix a broken input representation.

## 🟢 Not a problem — DS1/DS2 split itself

Your patient-independent split logic in `ecg_dataset.py` is correctly implemented and matches the AAMI standard. This is the right foundation; it's just a harder, more honest number than the leaky 90% was.

---

## Suggested order of attack

| Step | Change | Why first |
|---|---|---|
| 1 | Fix normalization (record-level, not per-window) | Root-cause data quality issue; likely the single biggest lever on sensitivity |
| 2 | Add validation split + per-epoch metric tracking | Lets you *see* whether #1 and #3 actually help, instead of guessing |
| 3 | Compute Focal Loss alpha from real DS1 counts, then sweep using val sensitivity | Directly targets your weak point (missed anomalies) |
| 4 | Re-run full DS2 evaluation only after 1–3 are in place | Confirms real gains without wasting eval runs on half-fixed pipelines |
