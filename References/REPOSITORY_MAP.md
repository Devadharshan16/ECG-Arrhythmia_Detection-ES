# 🗺️ REPOSITORY MAP — Wearable Edge-AI ECG Arrhythmia Detection

> **Purpose of this file**: This is the single-source-of-truth index for the entire repository.
> Any AI agent working on this project should read this file FIRST before exploring any folders.
> It eliminates the need to scan directories one-by-one, saving tokens and time.

> **Last Updated**: 2026-08-20

---

## 📌 PROJECT IDENTITY

| Field | Value |
|---|---|
| **Project Title** | Wearable Edge-AI Accelerator for Real-Time Cardiac Arrhythmia Detection |
| **Repository Root** | `d:\ECG- Embedded System\` |
| **Current Phase** | Phase 1 Complete (Software — ML Pipeline). Phase 2 Pending (Hardware — FPGA/HLS). |
| **Goal** | Train a tiny 1D-CNN on MIT-BIH ECG data → Quantize to INT8 → Deploy on Lattice iCE40 FPGA |
| **Target Hardware** | Lattice iCE40 FPGA (≤15 KB BRAM, 8 DSP multipliers) |
| **Dataset** | MIT-BIH Arrhythmia Database (48 patients, 360 Hz, 2-channel ECG, ~30 min each) |
| **Classification** | Binary — Class 0 (Normal) vs Class 1 (Arrhythmia/Anomaly) |
| **Model** | `TinyECG_CNN` — 2-layer 1D-CNN with QuantStub/DeQuantStub |
| **Quantization Methods** | PTQ (Post-Training Quantization) and QAT (Quantization-Aware Training) |
| **Target Publication** | IEEE Embedded Systems Letters (ESL) / IEEE TCAD |

---

## 🏗️ TOP-LEVEL DIRECTORY STRUCTURE

```
d:\ECG- Embedded System\
│
├── .git/                          # Git version control
├── .gitignore                     # Ignores: venv, __pycache__, mitdb_data, processed_tensors, .obsidian, FPGA artifacts
├── References/                    # Documentation, logs, decision notes, and THIS map file
└── Wearable_ECG_EdgeAI/           # ★ ALL source code, data, models, and outputs live here
```

---

## 📂 DETAILED DIRECTORY & FILE MAP

### 1. `References/` — Documentation & Decision Log

> **Path**: `d:\ECG- Embedded System\References\`
> **Purpose**: Human-readable project documentation, design decisions, and reference materials.

| File / Folder | Type | Description |
|---|---|---|
| `REPOSITORY_MAP.md` | 📄 File | **THIS FILE** — The master index for the entire repo. |
| `Cardiac_Arrhythmia_Detection_Project.txt` | 📄 File (3.3 KB) | Full project proposal — layman's terms, technical description, and IEEE alignment. |
| `log.md` | 📄 File (1.5 KB) | Chronological step-by-step log of every action taken in Phase 1 (16 steps). |
| `Show Difference between Normal Beat and Anomaly Beat.png` | 🖼️ Image (545 KB) | Visual comparison image of normal vs anomaly ECG waveforms. |
| `Sent Items - VISHAL M.D-[...].pdf` | 📄 PDF (322 KB) | Email correspondence / submission reference. |
| `Reason for file creation or decisions/` | 📁 Folder | Contains 10 markdown docs + 1 image explaining WHY each script/decision was made. |

#### Sub-folder: `References/Reason for file creation or decisions/`

> **Path**: `d:\ECG- Embedded System\References\Reason for file creation or decisions\`
> **Purpose**: Detailed explanations for every technical decision made during Phase 1.

| File | Size | Description |
|---|---|---|
| `Installed Dependencies and Uses.md` | 4.0 KB | Explains why `torch`, `wfdb`, `scipy`, `numpy`, `matplotlib` were chosen. |
| `Comparison between PTQ and QTA Models.md` | 2.1 KB | Clinical metrics comparison table: PTQ vs QAT across 3 tuning passes. |
| `Reason for just taking 48 patient records alone from MIT dataset.md` | 2.5 KB | Why only 48 of the 48 standard MIT-BIH records are used. |
| `Role of filter_ecg.py script.md` | 971 B | Why the 0.5 Hz high-pass + 60 Hz notch filter pipeline exists. |
| `Role of model_cnn.py script.md` | 1.4 KB | Architecture rationale for the TinyECG_CNN (BRAM budget). |
| `Role of quantize_model.py script.md` | 583 B | Why PTQ quantization was the first approach tried. |
| `Role of segment_ecg.py script.md` | 1.1 KB | Why 90-point R-peak windowing was chosen for segmentation. |
| `What are the 2 filters used and reason to use that filter.md` | 2.5 KB | Deep explanation of Butterworth high-pass and IIR notch filter. |
| `What are the files in dataset.md` | 504 B | Explains the `.dat`, `.hea`, `.atr` file triplet per patient. |
| `What is Post Training Quantization.md` | 482 B | Brief explanation of PTQ methodology. |
| `filter_comparison.png` | 🖼️ Image (380 KB) | Raw vs filtered ECG signal comparison plot (Patient 100). |

---

### 2. `Wearable_ECG_EdgeAI/` — Main Project Directory

> **Path**: `d:\ECG- Embedded System\Wearable_ECG_EdgeAI\`
> **Purpose**: Contains ALL source code, raw data, processed data, trained models, and generated outputs.

---

#### 2.1 Python Scripts (Source Code)

> **All scripts are in**: `d:\ECG- Embedded System\Wearable_ECG_EdgeAI\`

The scripts form a **sequential pipeline**. They must be understood (and run) in this order:

| # | Script | Size | Pipeline Stage | Description |
|---|---|---|---|---|
| 1 | `get_data.py` | 898 B | **Data Acquisition** | Downloads all 48 MIT-BIH patient records from PhysioNet into `mitdb_data/` using `wfdb.dl_database()`. |
| 2 | `filter_ecg.py` | 2.5 KB | **Signal Preprocessing** | Applies 0.5 Hz Butterworth high-pass filter (removes respiration drift) + 60 Hz IIR notch filter (removes AC hum). Uses `scipy.signal.filtfilt` for zero-phase filtering. Outputs a comparison plot. |
| 3 | `segment_ecg.py` | 3.7 KB | **Feature Extraction** | Reads all 48 patient records, applies filtering, extracts 90-point windows centered on R-peaks, normalizes to [-1, 1], labels as binary (Normal=0, Anomaly=1). Saves `X_data.npy` and `y_data.npy` to `processed_tensors/`. |
| 4 | `model_cnn.py` | 2.2 KB | **Architecture Definition** | Defines `TinyECG_CNN` class: 2× Conv1d layers (1→4→8 channels, kernel=5, stride=2) + FC layer (184→2). Includes `QuantStub`/`DeQuantStub` for INT8 quantization. Total ≈ 558 parameters, < 15 KB INT8. |
| 5 | `train_model_ptq.py` | 4.8 KB | **Training (PTQ Path)** | Loads tensors, 80/20 split (seed=42), trains TinyECG_CNN with CrossEntropyLoss + Adam for 5 epochs, applies 20% L1 unstructured pruning, saves `tiny_ecg_pruned.pth`. |
| 6 | `quantize_model_ptq.py` | 3.9 KB | **Quantization (PTQ Path)** | Loads pruned FP32 model, calibrates with HistogramObserver on training data, converts to INT8, evaluates on test set, exports TorchScript traced model as `tiny_ecg_ptq_int8.pth`. |
| 7 | `evaluate_model_ptq.py` | 3.5 KB | **Evaluation (PTQ Path)** | Loads the TorchScript INT8 model, evaluates on 20% holdout test set sample-by-sample, prints accuracy. |
| 8 | `train_model_qta.py` | 5.7 KB | **Training + Quantization (QAT Path)** | QAT training with Focal Loss (α=0.75, γ=2.0), Cosine Annealing LR scheduler, 10 epochs, `qnnpack` backend. Applies 20% L1 pruning THEN converts to INT8. Saves `tiny_ecg_qat.pth`. |
| 9 | `evaluate_model_qta.py` | 4.5 KB | **Evaluation (QAT Path)** | Loads QAT INT8 model, evaluates with full clinical confusion matrix: True Normals, True Anomalies, False Alarms, Missed Anomalies. |
| 10 | `visualize_dataset.py` | 5.0 KB | **Visualization** | Scans database for 3 patients with both Normal ('N') and PVC ('V') beats, generates a 2×3 grid plot comparing Normal vs Anomaly morphology using 90-point normalized tensors. |
| 11 | `plot_dataset.py` | 6.2 KB | **Full Dataset Plotting** | Batch-processes ALL 48 patients. Creates per-patient folders, splits 30-min records into 5-minute chunks, generates highlighted ECG strip images (green=Normal, red=Anomaly). Outputs to `Dataset_Plots/`. |
| 12 | `generate_csv_of_dataset.py` | 3.6 KB | **CSV Export** | Converts ALL 48 patient records into strict binary-labeled CSVs (every sample row tagged Class 0 or Class 1). Outputs to `Dataset_CSV/`. |

---

#### 2.2 Data Directories

##### 2.2.1 `mitdb_data/` — Raw MIT-BIH Database (Downloaded)

> **Path**: `d:\ECG- Embedded System\Wearable_ECG_EdgeAI\mitdb_data\`
> **Git Status**: ⛔ GITIGNORED (too large)
> **Total Files**: 144 (48 patients × 3 files each)
> **Total Size**: ~89.7 MB
> **Created By**: `get_data.py`

Each patient has exactly **3 files**:

| Extension | Purpose | Example |
|---|---|---|
| `.dat` | Raw binary ECG signal data (2 channels, 360 Hz, ~650,000 samples) | `100.dat` (1.95 MB) |
| `.hea` | Header file — metadata (channel names, gains, sampling frequency) | `100.hea` (143 B) |
| `.atr` | Annotation file — cardiologist-labeled beat timestamps and symbols | `100.atr` (4.6 KB) |

**Patient Record IDs** (48 total):
`100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 111, 112, 113, 114, 115, 116, 117, 118, 119, 121, 122, 123, 124, 200, 201, 202, 203, 205, 207, 208, 209, 210, 212, 213, 214, 215, 217, 219, 220, 221, 222, 223, 228, 230, 231, 232, 233, 234`

##### 2.2.2 `processed_tensors/` — ML-Ready NumPy Arrays

> **Path**: `d:\ECG- Embedded System\Wearable_ECG_EdgeAI\processed_tensors\`
> **Git Status**: ⛔ GITIGNORED
> **Created By**: `segment_ecg.py`

| File | Size | Shape | Description |
|---|---|---|---|
| `X_data.npy` | 38.7 MB | `(N, 1, 90)` float32 | N heartbeat windows, each 90 data points, 1 channel. Ready for PyTorch Conv1d input. |
| `y_data.npy` | 879 KB | `(N,)` int64 | Binary labels: 0 = Normal, 1 = Anomaly. |

> **N ≈ 112,600** total extracted heartbeats across all 48 patients.

##### 2.2.3 `Dataset_CSV/` — Full Binary-Labeled CSV Export

> **Path**: `d:\ECG- Embedded System\Wearable_ECG_EdgeAI\Dataset_CSV\`
> **Git Status**: ✅ Tracked
> **Total Files**: 48 CSVs (one per patient)
> **Total Size**: ~1.67 GB
> **Created By**: `generate_csv_of_dataset.py`

| File Pattern | Rows Per File | Columns | Example |
|---|---|---|---|
| `Patient_{ID}_Binary.csv` | ~650,000 | `Sample_Index`, `Time_Seconds`, `Channel_0_mV`, `Channel_1_mV`, `ML_Binary_Label` | `Patient_100_Binary.csv` (34 MB) |

**Column Details**:
- `Sample_Index`: Integer index (0 to ~649,999)
- `Time_Seconds`: Float timestamp at 360 Hz
- `Channel_0_mV`: Lead MLII voltage in millivolts
- `Channel_1_mV`: Lead V1/V5 voltage in millivolts
- `ML_Binary_Label`: `"Normal (Class 0)"` or `"Anomaly (Class 1)"`

##### 2.2.4 `Dataset_Plots/` — Highlighted ECG Strip Images

> **Path**: `d:\ECG- Embedded System\Wearable_ECG_EdgeAI\Dataset_Plots\`
> **Git Status**: ✅ Tracked
> **Total Folders**: 48 (one per patient)
> **Created By**: `plot_dataset.py`

Each patient folder contains **6–7 PNG images** (5-minute chunks of their 30-minute recording):

| Folder Pattern | Files Inside | File Pattern | Size Per Image |
|---|---|---|---|
| `Patient_{ID}/` | 6–7 PNGs | `Patient_{ID}_{start}_to_{end}_mins.png` | ~400–550 KB |

**Visual Encoding**:
- Gray baseline: continuous ECG signal
- Green overlay: Normal beat windows (90-point)
- Red overlay: Anomaly beat windows (90-point)
- Text annotations: Beat symbol labels floating above R-peaks

---

#### 2.3 Saved Models

> **Path**: `d:\ECG- Embedded System\Wearable_ECG_EdgeAI\saved_models\`
> **Git Status**: ✅ Tracked

| File | Size | Created By | Description |
|---|---|---|---|
| `tiny_ecg_pruned.pth` | 5.2 KB | `train_model_ptq.py` | FP32 model weights after training + 20% L1 pruning (PTQ path). |
| `tiny_ecg_ptq_int8.pth` | 21.7 KB | `quantize_model_ptq.py` | TorchScript-traced INT8 quantized model (PTQ path). Deployable. |
| `tiny_ecg_ptq_pruned.pth` | 5.3 KB | `train_model_ptq.py` | Alternate pruned checkpoint (PTQ path). |
| `tiny_ecg_ptq_quantized.pth` | 7.7 KB | `quantize_model_ptq.py` | INT8 quantized state dict (PTQ path, non-traced). |
| `tiny_ecg_qat.pth` | 5.8 KB | `train_model_qta.py` | INT8 quantized state dict (QAT path with Focal Loss). |

---

#### 2.4 Other Directories

| Directory | Path | Status | Purpose |
|---|---|---|---|
| `venv/` | `Wearable_ECG_EdgeAI/venv/` | ⛔ GITIGNORED | Python virtual environment. Contains `torch`, `wfdb`, `scipy`, `numpy`, `matplotlib`, `pandas`. |
| `__pycache__/` | `Wearable_ECG_EdgeAI/__pycache__/` | ⛔ GITIGNORED | Python bytecode cache. |

---

## 🔗 PIPELINE FLOW DIAGRAM

```
┌─────────────────────────────────────────────────────────────────────────┐
│                        PHASE 1: SOFTWARE (COMPLETE)                     │
│                                                                         │
│  ┌──────────┐    ┌──────────────┐    ┌──────────────┐    ┌───────────┐ │
│  │ get_data  │───▶│  filter_ecg   │───▶│  segment_ecg  │───▶│ model_cnn │ │
│  │   .py     │    │     .py       │    │     .py       │    │    .py    │ │
│  └──────────┘    └──────────────┘    └──────────────┘    └───────────┘ │
│       │                                      │                   │      │
│       ▼                                      ▼                   ▼      │
│  mitdb_data/                          processed_tensors/     (arch def) │
│  (48×3 files)                         X_data.npy                        │
│                                       y_data.npy                        │
│                                              │                          │
│                          ┌───────────────────┼───────────────────┐      │
│                          ▼                                       ▼      │
│                ┌──────────────────┐                   ┌────────────────┐│
│                │ train_model_ptq  │                   │ train_model_qta││
│                │      .py         │                   │      .py       ││
│                └──────────────────┘                   └────────────────┘│
│                          │                                       │      │
│                          ▼                                       ▼      │
│                ┌──────────────────┐                   ┌────────────────┐│
│                │quantize_model_ptq│                   │ (QAT converts  ││
│                │      .py         │                   │  during train) ││
│                └──────────────────┘                   └────────────────┘│
│                          │                                       │      │
│                          ▼                                       ▼      │
│                ┌──────────────────┐                   ┌────────────────┐│
│                │evaluate_model_ptq│                   │evaluate_model  ││
│                │      .py         │                   │   _qta.py      ││
│                └──────────────────┘                   └────────────────┘│
│                          │                                       │      │
│                          ▼                                       ▼      │
│                  saved_models/                           saved_models/  │
│            tiny_ecg_ptq_int8.pth                     tiny_ecg_qat.pth  │
│                                                                         │
│  ┌──────────────────┐  ┌──────────────┐  ┌─────────────────────────┐   │
│  │ visualize_dataset │  │ plot_dataset  │  │ generate_csv_of_dataset │   │
│  │       .py         │  │     .py       │  │          .py            │   │
│  └──────────────────┘  └──────────────┘  └─────────────────────────┘   │
│          │                     │                        │               │
│          ▼                     ▼                        ▼               │
│   (single PNG)          Dataset_Plots/            Dataset_CSV/          │
│                       (48 patient folders)      (48 patient CSVs)       │
│                                                                         │
├─────────────────────────────────────────────────────────────────────────┤
│                    PHASE 2: HARDWARE (PENDING)                          │
│                                                                         │
│  - Export INT8 weights to C/C++ header file (weights.h)                 │
│  - HLS / RTL design for Lattice iCE40 FPGA                             │
│  - Custom datapath for 1D-CNN inference                                 │
│  - Hardware interrupt trigger on anomaly detection                      │
│                                                                         │
└─────────────────────────────────────────────────────────────────────────┘
```

---

## 🧮 MODEL ARCHITECTURE QUICK-REFERENCE

```
Input: (Batch, 1, 90)  — 1 channel, 90 time-steps

Layer 1:  Conv1d(1 → 4, kernel=5, stride=2, pad=2)  → (Batch, 4, 45)
          ReLU
Layer 2:  Conv1d(4 → 8, kernel=5, stride=2, pad=2)  → (Batch, 8, 23)
          ReLU
Flatten:  (Batch, 184)
FC:       Linear(184 → 2)  — Binary classification output

Total Parameters: ~558
INT8 Footprint:   ~0.55 KB (well under 15 KB BRAM limit)

Quantization Stubs: QuantStub() at input, DeQuantStub() at output
```

---

## 📊 PERFORMANCE RESULTS (Phase 1)

| Metric | PTQ Model | QAT Model (Focal Loss) |
|---|---|---|
| Overall Accuracy | **95.73%** | 95.16% |
| True Anomalies Caught | 3,667 | 3,573 |
| Missed Anomalies (Fatal) | 741 | 835 |
| True Normals | 17,894 | 17,858 |
| False Alarms | 220 | 256 |

> **Current Best**: PTQ model has higher accuracy and fewer missed anomalies.

---

## 📋 KEY TECHNICAL PARAMETERS

| Parameter | Value |
|---|---|
| Sampling Frequency | 360 Hz |
| ECG Lead Used | Modified Limb Lead II (MLII) — Channel 0 |
| Window Size | 90 data points (~250 ms of cardiac activity) |
| Normalization | Min-Max to [-1.0, 1.0] |
| Normal Beat Symbols | `N`, `L`, `R`, `e`, `j` |
| Anomaly Beat Symbols | Everything else (`V`, `A`, `a`, `J`, `S`, `F`, `[`, `!`, `]`, `E`, `/`, `f`, `x`, `Q`) |
| Train/Test Split | 80% / 20% (seed=42 for reproducibility) |
| Pruning | 20% L1 Unstructured on Conv1d + Linear layers |
| PTQ Calibration | HistogramObserver (full training set) |
| QAT Backend | `qnnpack` |
| QAT Loss Function | Focal Loss (α=0.75, γ=2.0) |
| QAT LR Schedule | Cosine Annealing (η_min=1e-6) |
| PTQ Training | 5 epochs, batch=64, lr=0.001, Adam |
| QAT Training | 10 epochs, batch=64, lr=0.001, Adam |

---

## 🔍 QUICK LOOKUP — "Where is...?"

| I Need... | Go To |
|---|---|
| Raw ECG data for any patient | `Wearable_ECG_EdgeAI/mitdb_data/{ID}.dat` |
| Cardiologist annotations for any patient | `Wearable_ECG_EdgeAI/mitdb_data/{ID}.atr` |
| ML-ready tensors (train/test data) | `Wearable_ECG_EdgeAI/processed_tensors/X_data.npy` & `y_data.npy` |
| Full patient CSV with binary labels | `Wearable_ECG_EdgeAI/Dataset_CSV/Patient_{ID}_Binary.csv` |
| ECG strip images for any patient | `Wearable_ECG_EdgeAI/Dataset_Plots/Patient_{ID}/` |
| The CNN model definition | `Wearable_ECG_EdgeAI/model_cnn.py` |
| Best trained model (PTQ INT8) | `Wearable_ECG_EdgeAI/saved_models/tiny_ecg_ptq_int8.pth` |
| QAT trained model | `Wearable_ECG_EdgeAI/saved_models/tiny_ecg_qat.pth` |
| Project description / proposal | `References/Cardiac_Arrhythmia_Detection_Project.txt` |
| Step-by-step build log | `References/log.md` |
| Why a specific script exists | `References/Reason for file creation or decisions/Role of {script}.md` |
| Technical decision explanations | `References/Reason for file creation or decisions/` |
| Filter design rationale | `References/Reason for file creation or decisions/What are the 2 filters used...md` |
| PTQ vs QAT accuracy comparison | `References/Reason for file creation or decisions/Comparison between PTQ and QTA Models.md` |
| Dependencies and their purpose | `References/Reason for file creation or decisions/Installed Dependencies and Uses.md` |
| This map itself | `References/REPOSITORY_MAP.md` |

---

## ⚠️ IMPORTANT NOTES FOR AI AGENTS

1. **Do NOT explore `venv/`, `__pycache__/`, or `.git/`** — They contain no project-relevant code.
2. **`mitdb_data/` and `processed_tensors/` are GITIGNORED** — They must be regenerated by running `get_data.py` then `segment_ecg.py` if missing.
3. **The 80/20 split uses seed=42** — All scripts share this seed for reproducibility. Do NOT change it.
4. **Channel 0 is MLII** — All signal processing uses `record.p_signal[:, 0]`. Channel 1 is only included in CSVs.
5. **The scripts in `Wearable_ECG_EdgeAI/` are meant to be run from that directory** — Relative paths assume `Wearable_ECG_EdgeAI/` as the CWD.
6. **Phase 2 (Hardware) has NOT started** — There are no FPGA/Verilog/HLS files yet.
7. **The QAT script is named `train_model_qta.py` and `evaluate_model_qta.py`** (note: the "a" and "t" are swapped in the filename, but the code inside correctly implements QAT).
