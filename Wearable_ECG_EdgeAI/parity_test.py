"""
parity_test.py
==============
Layer-by-layer comparison between PyTorch QAT model and HLS C simulation
for 3 specific DS2 beats.

PyTorch side: captures int_repr() after every quantized layer.
HLS side:     simulates cnn_hls.cpp arithmetic EXACTLY in Python,
              including all confirmed bugs (signed int8 buffers, wrong
              clamp ceiling, fc_output_zp int8_t overflow).

Run: python parity_test.py
"""

import sys, io
sys.stdout = io.TextIOWrapper(sys.stdout.buffer, encoding='utf-8')

import torch
import numpy as np
import torch.ao.quantization
from model_cnn import TinyECG_CNN
from ecg_dataset import MITBIH_Dataset, DS2_TEST

BEAT_INDICES = [11640, 25551, 48410]

# ─────────────────────────────────────────────────────────────
# 1.  Load QAT model
# ─────────────────────────────────────────────────────────────
backend = torch.backends.quantized.supported_engines[0]
torch.backends.quantized.engine = backend

model = TinyECG_CNN()
model.train()
model.fuse_model()
model.qconfig = torch.ao.quantization.get_default_qat_qconfig(backend)
torch.ao.quantization.prepare_qat(model, inplace=True)
model.eval()
torch.ao.quantization.convert(model, inplace=True)
model.load_state_dict(torch.load("saved_models/tiny_ecg_qat.pth", weights_only=True))
model.eval()

# ─────────────────────────────────────────────────────────────
# 2.  Extract all quantization parameters from model
# ─────────────────────────────────────────────────────────────
def get_quant_params(layer, inp_scale):
    """Extract int8 weights, per-channel scales, biases, output scale/zp,
    and fixed-point multipliers/shifts — identical to export_weights_to_cpp.py."""
    qw      = layer.weight()
    w_int8  = qw.int_repr().numpy()               # shape: (out_ch, in_ch*kernel) or (out_ch, in_ch, k)
    w_int8  = w_int8.reshape(w_int8.shape[0], -1) # flatten to (out_ch, N)
    w_scales = qw.q_per_channel_scales().numpy()
    bias_fp32 = layer.bias().detach().numpy()
    out_scale = float(layer.scale)
    out_zp    = int(layer.zero_point)

    # Quantize bias to int32 (same formula as export_weights_to_cpp.py)
    bias_int32 = np.zeros(len(bias_fp32), dtype=np.int64)
    for c in range(len(bias_fp32)):
        cs = float(inp_scale) * float(w_scales[c])
        bias_int32[c] = int(np.round(bias_fp32[c] / cs)) if cs > 0 else 0

    # Fixed-point multipliers and shifts
    multipliers = np.zeros(len(w_scales), dtype=np.int32)
    shifts      = np.zeros(len(w_scales), dtype=np.int32)
    for c in range(len(w_scales)):
        M = (float(inp_scale) * float(w_scales[c])) / out_scale
        if M > 0:
            frac, exp = np.frexp(M)
            multipliers[c] = int(np.round(frac * (1 << 30)))
            shifts[c]      = 30 - exp
    return w_int8, bias_int32, multipliers, shifts, out_scale, out_zp

input_scale = float(model.quant.scale)
input_zp    = int(model.quant.zero_point)   # 104

p1 = get_quant_params(model.conv1, input_scale)
p2 = get_quant_params(model.conv2, p1[4])   # inp_scale = conv1 out_scale
p3 = get_quant_params(model.conv3, p2[4])
p4 = get_quant_params(model.fc,    p3[4])

def as_int8(v):
    """Simulate C int8_t cast (two's complement wraparound)."""
    return int(np.array(v, dtype=np.uint8).view(np.int8))

print(f"input_zp       = {input_zp}  (stored as int8_t -> {'OK' if input_zp <= 127 else f'OVERFLOW -> {as_int8(input_zp)}'})")
print(f"conv1_output_zp= {p1[5]}  (stored as int8_t -> {'OK' if p1[5] <= 127 else f'OVERFLOW -> {as_int8(p1[5])}'})")
print(f"conv2_output_zp= {p2[5]}  (stored as int8_t -> {'OK' if p2[5] <= 127 else f'OVERFLOW -> {as_int8(p2[5])}'})")
print(f"conv3_output_zp= {p3[5]}  (stored as int8_t -> {'OK' if p3[5] <= 127 else f'OVERFLOW -> {as_int8(p3[5])}'})")
print(f"fc_output_zp   = {p4[5]}  (stored as int8_t -> {'OK' if p4[5] <= 127 else f'OVERFLOW -> {as_int8(p4[5])}'})")
print()

# ─────────────────────────────────────────────────────────────
# 3.  HLS arithmetic helpers (exact replica of cnn_hls.cpp)
# ─────────────────────────────────────────────────────────────
def as_int8(v):
    """Simulate C int8_t cast — two's complement wraparound for values outside [-128,127]."""
    return int(np.array(int(v) & 0xFF, dtype=np.uint8).view(np.int8))

def hls_requantize_relu(acc, mult, shift, out_zp_raw):
    """Mirrors the FIXED cnn_hls.cpp requantize_and_relu()."""
    out_zp = int(out_zp_raw)                 # FIX: now int32_t, no overflow
    acc64  = np.int64(acc) * np.int64(mult)
    if shift > 0:
        acc64 += np.int64(1) << int(shift - 1)
    res = int(np.int32(acc64 >> int(shift)))
    res += out_zp
    if res < out_zp:  res = out_zp           # ReLU
    if res > 255:     res = 255              # FIX: uint8 ceiling
    if res < 0:       res = 0                # FIX: uint8 floor
    return np.uint8(res)

def hls_requantize_linear(acc, mult, shift, out_zp_raw):
    """Mirrors the FIXED cnn_hls.cpp requantize_linear()."""
    out_zp = int(out_zp_raw)                 # FIX: now int32_t, no overflow
    acc64  = np.int64(acc) * np.int64(mult)
    if shift > 0:
        acc64 += np.int64(1) << int(shift - 1)
    res = int(np.int32(acc64 >> int(shift)))
    res += out_zp
    if res > 255:  res = 255                 # PyTorch quint8 clamp
    if res < 0:    res = 0
    return np.uint8(res)

def hls_conv1d(inp, weights, bias_int32, mults, shifts, out_zp, kernel, stride, pad, inp_zp_raw):
    """Simulates the FIXED Conv1D layer (uint8 input -> uint8 output)."""
    inp_zp  = int(inp_zp_raw)                # FIX: int32_t
    in_len  = len(inp)
    out_ch  = weights.shape[0]
    out_len = (in_len + 2 * pad - kernel) // stride + 1
    buf     = np.zeros((out_ch, out_len), dtype=np.uint8)  # FIX: uint8_t buffer

    for t in range(out_len):
        for oc in range(out_ch):
            acc = int(bias_int32[oc])
            for k in range(kernel):
                in_idx = t * stride + k - pad
                if 0 <= in_idx < in_len:
                    x = int(inp[in_idx]) - inp_zp   # de-quantize unsigned input
                    w = int(weights[oc, k])
                    acc += x * w
            buf[oc, t] = hls_requantize_relu(acc, mults[oc], shifts[oc], out_zp)
    return buf

def hls_conv1d_2d(inp_buf, weights, bias_int32, mults, shifts, out_zp, kernel, stride, pad, inp_zp_raw):
    """Conv1D over multi-channel uint8 input buffer."""
    inp_zp  = int(inp_zp_raw)                # FIX: int32_t
    in_ch   = inp_buf.shape[0]
    in_len  = inp_buf.shape[1]
    out_ch  = weights.shape[0]
    n_per_ch = weights.shape[1] // in_ch        # kernel size
    out_len = (in_len + 2 * pad - kernel) // stride + 1
    buf     = np.zeros((out_ch, out_len), dtype=np.uint8)  # FIX: uint8_t buffer

    for t in range(out_len):
        for oc in range(out_ch):
            acc = int(bias_int32[oc])
            for k in range(kernel):
                for ic in range(in_ch):
                    in_idx = t * stride + k - pad
                    if 0 <= in_idx < in_len:
                        x = int(inp_buf[ic, in_idx]) - inp_zp
                        w = int(weights[oc, ic * kernel + k])
                        acc += x * w
            buf[oc, t] = hls_requantize_relu(acc, mults[oc], shifts[oc], out_zp)
    return buf

def hls_fc_layer(inp_flat, weights, bias_int32, mults, shifts, out_zp, inp_zp_raw):
    """Simulates the FIXED FC layer (uint8 input -> uint8 output)."""
    inp_zp  = int(inp_zp_raw)                # FIX: int32_t
    out_ch  = weights.shape[0]
    result  = np.zeros(out_ch, dtype=np.uint8)  # quint8
    for oc in range(out_ch):
        acc = int(bias_int32[oc])
        for i in range(len(inp_flat)):
            x = int(inp_flat[i]) - inp_zp
            w = int(weights[oc, i])
            acc += x * w
        result[oc] = hls_requantize_linear(acc, mults[oc], shifts[oc], out_zp)
    return result

# ─────────────────────────────────────────────────────────────
# 4.  Load dataset
# ─────────────────────────────────────────────────────────────
dataset = MITBIH_Dataset(data_dir="mitdb_data", patient_ids=DS2_TEST)

# ─────────────────────────────────────────────────────────────
# 5.  Run parity check for each beat
# ─────────────────────────────────────────────────────────────
print("=" * 70)
print("  LAYER-BY-LAYER HLS vs PyTorch PARITY TEST (3 beats)")
print("=" * 70)

LAYERS = ["Input (post-QuantStub)", "Conv1+ReLU", "Conv2+ReLU", "Conv3+ReLU", "FC logits"]
grand_total = {L: 0 for L in LAYERS}
grand_elements = {L: 0 for L in LAYERS}

for beat_idx in BEAT_INDICES:
    x_raw, label = dataset[beat_idx]
    label_str = "Normal" if label.item() == 0 else "Anomaly"
    print(f"\n{'─'*70}")
    print(f"  Beat DS2 index {beat_idx}  |  Ground truth: {label_str}")
    print(f"{'─'*70}")

    x_tensor = x_raw.unsqueeze(0)   # (1, 1, 90)

    # ── PyTorch side ─────────────────────────────────────────
    with torch.no_grad():
        pt_input  = model.quant(x_tensor)
        pt_c1_raw = model.conv1(pt_input)
        pt_c2_raw = model.conv2(pt_c1_raw)
        pt_c3_raw = model.conv3(pt_c2_raw)
        pt_flat   = pt_c3_raw.reshape(1, -1)
        pt_fc_raw = model.fc(pt_flat)

    pt_input_int  = pt_input.int_repr().numpy().flatten()   # shape (90,)
    pt_c1_int     = pt_c1_raw.int_repr().numpy().reshape(8, 45)
    pt_c2_int     = pt_c2_raw.int_repr().numpy().reshape(16, 23)
    pt_c3_int     = pt_c3_raw.int_repr().numpy().reshape(16, 12)
    pt_fc_int     = pt_fc_raw.int_repr().numpy().flatten()  # shape (2,)

    # ── HLS side ─────────────────────────────────────────────
    # Step 0: quantize input the same way the fixed extract_ds2_samples.py does
    x_np      = x_raw.squeeze(0).numpy()
    hls_input = np.clip(np.round(x_np / input_scale) + input_zp, 0, 255).astype(np.uint8)

    w1, b1, m1, s1, _, zp1 = p1
    w2, b2, m2, s2, _, zp2 = p2
    w3, b3, m3, s3, _, zp3 = p3
    w4, b4, m4, s4, _, zp4 = p4

    hls_c1 = hls_conv1d(hls_input, w1, b1, m1, s1, zp1,
                         kernel=5, stride=2, pad=2, inp_zp_raw=input_zp)
    hls_c2 = hls_conv1d_2d(hls_c1, w2, b2, m2, s2, zp2,
                            kernel=5, stride=2, pad=2, inp_zp_raw=zp1)
    hls_c3 = hls_conv1d_2d(hls_c2, w3, b3, m3, s3, zp3,
                            kernel=3, stride=2, pad=1, inp_zp_raw=zp2)
    hls_flat = hls_c3.flatten()
    hls_fc   = hls_fc_layer(hls_flat, w4, b4, m4, s4, zp4, inp_zp_raw=zp3)

    # ── Compare layer by layer ────────────────────────────────
    layers_pt  = [pt_input_int, pt_c1_int.flatten(), pt_c2_int.flatten(),
                  pt_c3_int.flatten(), pt_fc_int]
    layers_hls = [hls_input, hls_c1.flatten(), hls_c2.flatten(),
                  hls_c3.flatten(), hls_fc]

    for name, pt_arr, hls_arr in zip(LAYERS, layers_pt, layers_hls):
        pt_arr  = pt_arr.astype(np.uint8)
        hls_arr = hls_arr.astype(np.uint8)
        
        n       = len(pt_arr)
        mismatches = int(np.sum(pt_arr != hls_arr))
        max_err    = int(np.max(np.abs(pt_arr.astype(np.int32) - hls_arr.astype(np.int32)))) if mismatches > 0 else 0
        grand_total[name]    += mismatches
        grand_elements[name] += n
        status = "✓ MATCH" if mismatches == 0 else f"✗ {mismatches}/{n} wrong  max_err={max_err}"
        print(f"  {name:<30}  {status}")

    # Print predicted class on each side
    pt_class  = int(torch.argmax(pt_fc_raw.dequantize()).item())
    hls_class = int(np.argmax(hls_fc))
    print(f"  {'PyTorch pred:':<30}  {'Normal' if pt_class==0 else 'Anomaly'}")
    print(f"  {'HLS pred:':<30}  {'Normal' if hls_class==0 else 'Anomaly'}")
    print(f"  {'Ground truth:':<30}  {label_str}")

# ─────────────────────────────────────────────────────────────
# 6.  Grand total summary
# ─────────────────────────────────────────────────────────────
print(f"\n{'='*70}")
print("  GRAND TOTAL ACROSS ALL 3 BEATS")
print(f"{'='*70}")
for name in LAYERS:
    t = grand_total[name]
    n = grand_elements[name]
    pct = 100 * t / n if n > 0 else 0
    status = "PERFECT" if t == 0 else f"{t}/{n} mismatches ({pct:.1f}%)"
    print(f"  {name:<30}  {status}")
print(f"{'='*70}")
