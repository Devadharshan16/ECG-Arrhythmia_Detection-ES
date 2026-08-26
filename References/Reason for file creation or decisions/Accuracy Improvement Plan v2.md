# 🎯 Accuracy Improvement Plan — From ~90% to 95%+ on DS2

> **Created**: 2026-08-26
> **Status**: Approved & Implemented

---

## Root Cause Analysis — Why is accuracy ~90%?

| Problem | Impact | Where |
|---|---|---|
| **Too few parameters** — Only 558 params. The model is *under*fitting, not overfitting. | High | `model_cnn.py` |
| **No BatchNorm** — Conv layers have no normalization, making QAT quantization less stable. | High | `model_cnn.py` |
| **No data augmentation** — The model sees the exact same beats every epoch. No jitter, no noise. | High | `train_model_qat.py` |
| **Only 10 epochs** — With QAT observers and a small model, convergence needs more time. | Medium | `train_model_qat.py` |
| **Focal Loss alpha is static** — α=0.75 doesn't adapt to the actual class imbalance ratio in DS1. | Medium | `train_model_qat.py` |
| **Pruning at 20% after only 10 epochs** — Removing weights from an already tiny model that hasn't fully converged. | Medium | `train_model_qat.py` |

---

## Improvement Strategy

### 1. Model Architecture (Still under 15 KB BRAM)

**Before:** 2 Conv layers (1→4→8), 558 params, 0.55 KB INT8
**After:** 3 Conv layers (1→8→16→16) + BatchNorm1d, ~2,900 params, ~2.9 KB INT8

We have a **15 KB BRAM budget** and are only using 0.55 KB. We're massively under-utilizing the hardware. Going to ~3 KB still leaves 80% of BRAM free for buffers and line-stores.

Changes:
- Increase channel widths: 1→8→16→16
- Add `BatchNorm1d` after each conv (critical for QAT — stabilizes fake-quantized activations)
- Add a 3rd conv layer for deeper feature extraction
- Add Dropout before FC for regularization

### 2. Data Augmentation (in the training loop)

Augmentations that are clinically valid for ECG:
- **Random time shift** (±5 samples): simulates slight R-peak detection jitter
- **Gaussian noise injection** (σ=0.01): simulates sensor noise
- **Random amplitude scaling** (0.9–1.1): simulates gain variation across patients

### 3. Training Hyperparameters

| Parameter | Old | New | Reason |
|---|---|---|---|
| Epochs | 10 | 30 | More convergence time for QAT observers |
| Optimizer | Adam | AdamW | Weight decay regularization (1e-4) |
| Scheduler | CosineAnnealing | CosineAnnealingWarmRestarts | Periodic LR resets help escape local minima |
| Pruning | 20% | 10% | Less aggressive on a still-small model |
| Focal α | 0.75 (static) | Computed from DS1 class ratio | Adapts to actual imbalance |

---

## INT8 Footprint Comparison

| Model | Params | INT8 Size | % of 15 KB BRAM |
|---|---|---|---|
| Old TinyECG_CNN | 558 | 0.55 KB | 3.6% |
| **New TinyECG_CNN_v2** | ~2,900 | ~2.9 KB | 19.3% |

Still well under the 15 KB limit. The extra parameters buy us significantly better feature extraction.
