# HLS vs PyTorch Numerical Mismatch — Full Analysis

## 1. Confirmed Root Causes

The 95% PyTorch vs 61% board gap is **pure numerical deployment mismatch**, not model quality.
Three independent bugs compound each other.

---

## 2. Tensor-by-Tensor Mismatch Map

| Tensor | PyTorch dtype | PyTorch range | zero_point | HLS dtype | HLS saturation | Mismatch? |
|--------|--------------|--------------|------------|-----------|----------------|-----------|
| **Input** | `quint8` | [0, 255] | 104 | `int8_t` | clips to 127 | **YES** — QRS peaks [128–255] clipped to 127; arithmetic `x - 104` gives +23 instead of +36 |
| **Conv1 output (post-ReLU)** | `quint8` | [zp_c1, 255] | conv1_output_zp | `int8_t` | clips to **127** | **YES** — quint8 ReLU allows up to 255; HLS clips all values >127 |
| **Conv2 output (post-ReLU)** | `quint8` | [zp_c2, 255] | conv2_output_zp | `int8_t` | clips to **127** | **YES** — same, error compounds |
| **Conv3 output (post-ReLU)** | `quint8` | [zp_c3, 255] | conv3_output_zp | `int8_t` | clips to **127** | **YES** — same, error compounds again |
| **FC logits** | `quint8` | [0, 255] | fc_output_zp=136 | `int8_t` | `const int8_t fc_output_zp = 136` **overflows to -120** | **CRITICAL** — 256-unit error added to both logits |

---

## 3. Bug-by-Bug Walkthrough

### Bug 1 — Input: signed clipping corrupts QRS peaks

PyTorch quantizes to quint8 [0, 255]. A QRS peak mapping to quantized value **140**:

```
PyTorch: 140 - 104 = +36   ✓
HLS:     127 - 104 = +23   ✗  (clipped — 13-unit error per peak sample)
```

### Bug 2 — ReLU activation buffers clip at 127 instead of 255

```cpp
// CURRENT (wrong)
if (res > 127) return 127;   // kills quint8 values [128, 255]

// NEEDED
if (res > 255) return 255;   // correct quint8 ceiling
```
This error corrupts every conv layer output and compounds across three layers.

### Bug 3 — fc_output_zp int8_t overflow (critical)

```c
const int8_t fc_output_zp = 136;   // 136 > 127 → stored as -120 in int8_t
```

HLS then adds -120 instead of +136 to the final logit — a **256-unit error** in classification.

---

## 4. Proposed End-to-End Unsigned-Activation Design

**Principle:** All activation tensors that PyTorch stores as `quint8` [0, 255] must be `uint8_t` in HLS. All zero_points must be `int32_t`, never `int8_t`.

### `export_weights_to_cpp.py` — zero_point type change

```python
# BEFORE
H.append(f"const int8_t {name}_output_zp = {int(layer.zero_point)};")
H.append(f"const int8_t input_zero_point = {int(quant_zp)};")

# AFTER
H.append(f"const int32_t {name}_output_zp = {int(layer.zero_point)};")
H.append(f"const int32_t input_zero_point = {int(quant_zp)};")
```

### `cnn_hls.cpp` — full diff summary

```cpp
// Function signature
// BEFORE: void tiny_ecg_inference(int8_t input_ecg[90], int8_t output_logits[2])
// AFTER:  void tiny_ecg_inference(uint8_t input_ecg[90], int8_t output_logits[2])

// Local copy
// BEFORE: int8_t local_ecg[90];
// AFTER:  uint8_t local_ecg[90];

// Activation buffers
// BEFORE: int8_t buffer_c1[8][45];  int8_t buffer_c2[16][23];  int8_t buffer_c3[16][12];
// AFTER:  uint8_t buffer_c1[8][45]; uint8_t buffer_c2[16][23]; uint8_t buffer_c3[16][12];

// requantize_and_relu — return type and clamp
// BEFORE: static inline int8_t requantize_and_relu(..., int8_t output_zp)
//           if (res > 127) return 127;
//           if (res < -128) return -128;
//           return (int8_t)res;
//
// AFTER:  static inline uint8_t requantize_and_relu(..., int32_t output_zp)
//           if (res > 255) return 255;
//           if (res < 0)   return 0;
//           return (uint8_t)res;

// requantize_linear (FC) — zero_point type only
// BEFORE: static inline int8_t requantize_linear(..., int8_t output_zp)
// AFTER:  static inline int8_t requantize_linear(..., int32_t output_zp)
//         (clamp stays [-128, 127] — final logit stays signed for argmax comparison)
```

### `extract_ds2_samples.py` — quantize function

```python
def quantize(x_float, scale, zero_point):
    q = np.round(x_float / scale) + zero_point
    q = np.clip(q, 0, 255)       # quint8 range — no signed reinterpretation
    return q.astype(np.uint8)    # HLS now accepts uint8_t input
```

### `helloworld.c` — input array type

```c
// BEFORE
__attribute__((aligned(32))) int8_t input_ecg[90];

// AFTER
__attribute__((aligned(32))) uint8_t input_ecg[90];
```

### `ds2_all_samples.h` — regenerate after fixing extract_ds2_samples.py

```c
// Array type changes too
const uint8_t ds2_all_samples[DS2_TOTAL_SAMPLES][90] = { ... };
```

---

## 5. Required Build Sequence (do not skip steps)

1. Edit `export_weights_to_cpp.py` — int32_t zero_points
2. Re-run `export_weights_to_cpp.py` → new `weights.h`
3. **Run parity test (Section 6) — must pass before continuing**
4. Edit `cnn_hls.cpp` — uint8_t buffers, clamps, int32_t zero_points
5. Edit `extract_ds2_samples.py` — uint8 clip
6. Re-run `extract_ds2_samples.py` → new `ds2_all_samples.h`
7. **Vitis HLS resynthesis** of `cnn_hls.cpp`
8. **Vivado IP upgrade** — swap IP, re-implement, regenerate bitstream
9. Edit `helloworld.c` — uint8_t input_ecg
10. **Vitis firmware rebuild** → new `.elf`
11. **Reflash board** — new bitstream + new ELF
12. Re-run 80-beat test — expect ~95% accuracy matching PyTorch

---

## 6. Mandatory One-Beat Parity Test (before any synthesis)

### `parity_extract.py` (Python side)

Runs one beat through the QAT model layer by layer, captures `int_repr()` after each layer,
and writes a C header with ground-truth uint8 values.

### `parity_test.c` (HLS C-simulation side)

Runs the same beat through `tiny_ecg_inference()` in software simulation.
Compares `buffer_c1`, `buffer_c2`, `buffer_c3`, and `output_logits` element-by-element
against the Python ground-truth header.

**Pass criterion:** 0 mismatches across all layers for the chosen beat.

> [!IMPORTANT]
> Do not proceed to HLS synthesis until parity_test.c reports 0 mismatches.
> The parity test is the only objective proof the fixed HLS arithmetic matches PyTorch exactly.

---

## 7. Summary Table

| File | What changes | When |
|------|-------------|------|
| `export_weights_to_cpp.py` | int8_t → int32_t for all zero_points | Before weights.h regeneration |
| `weights.h` | Regenerated automatically | After step above |
| `cnn_hls.cpp` | uint8_t buffers, correct clamps, int32_t zero_points | Before HLS synthesis |
| `extract_ds2_samples.py` | clip [0,255], return uint8 | Before header regeneration |
| `ds2_all_samples.h` | Regenerated automatically | After step above |
| `helloworld.c` | uint8_t input_ecg | Before Vitis firmware rebuild |

> [!WARNING]
> HLS resynthesis and Vivado bitstream rebuild are unavoidable.
> This cannot be fixed at the Python or firmware level alone.
