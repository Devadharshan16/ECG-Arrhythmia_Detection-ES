"""spot_check_quantization.py
Verifies that extract_ds2_samples.py's quantization exactly matches
what PyTorch's internal QuantStub produces for the same raw beats.
Checks DS2 indices: 11640, 25551, 48410 (a normal, a normal, an anomaly).
"""
import torch
import numpy as np
import torch.ao.quantization
from model_cnn import TinyECG_CNN
from ecg_dataset import MITBIH_Dataset, DS2_TEST

CHECK_INDICES = [11640, 25551, 48410]

# ── 1. Load model and extract QuantStub params ──────────────────────────────
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

scale = model.quant.scale
zp    = model.quant.zero_point
if isinstance(scale, torch.Tensor): scale = scale.item()
if isinstance(zp,    torch.Tensor): zp    = zp.item()

print(f"QuantStub scale      : {scale:.10f}")
print(f"QuantStub zero_point : {zp}")
print()

# ── 2. Load dataset ─────────────────────────────────────────────────────────
dataset = MITBIH_Dataset(data_dir="mitdb_data", patient_ids=DS2_TEST)

# ── 3. For each beat: compare script quantization vs PyTorch quantization ───
def script_quantize(x_float, s, z):
    q = np.round(x_float / s) + z
    q = np.clip(q, 0, 255).astype(np.uint8)
    return q.view(np.int8)

print(f"{'Beat Index':<12} {'Method':<20} {'First 10 INT8 values'}")
print("-" * 70)

all_match = True
for idx in CHECK_INDICES:
    x, y = dataset[idx]
    x_np = x.squeeze(0).numpy()

    # Script method (what extract_ds2_samples.py now produces)
    script_q = script_quantize(x_np, scale, zp)

    # PyTorch internal method (what evaluate_model_qat.py uses internally)
    with torch.no_grad():
        x_tensor = x.unsqueeze(0)
        qt = model.quant(x_tensor)
        pytorch_q = qt.int_repr().numpy().flatten().astype(np.int8)

    match = np.array_equal(script_q, pytorch_q)
    if not match:
        all_match = False
        diff_indices = np.where(script_q != pytorch_q)[0]

    label = "Normal" if y.item() == 0 else "Anomaly"
    print(f"Idx {idx:<7} [{label}]  script  : {script_q[:10].tolist()}")
    print(f"{'':12}             pytorch : {pytorch_q[:10].tolist()}")
    print(f"{'':12}             MATCH   : {'YES ✓' if match else f'NO ✗  — {len(diff_indices)} values differ, first at index {diff_indices[0]}'}")
    print()

print("=" * 70)
print(f"OVERALL: {'ALL MATCH — quantization is correct ✓' if all_match else 'MISMATCH DETECTED — fix is incomplete ✗'}")
