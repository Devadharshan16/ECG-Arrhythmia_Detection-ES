import numpy as np
import torch
from model_cnn import TinyECG_CNN
from ecg_dataset import MITBIH_Dataset, DS2_TEST

def simulate_hls(x_raw):
    from parity_test import dataset, p1, p2, p3, p4, input_scale, input_zp, hls_conv1d, hls_conv1d_2d, hls_fc_layer
    x_np = x_raw.squeeze(0).numpy()
    hls_input = np.clip(np.round(x_np / input_scale) + input_zp, 0, 255).astype(np.uint8)

    w1, b1, m1, s1, _, zp1 = p1
    w2, b2, m2, s2, _, zp2 = p2
    w3, b3, m3, s3, _, zp3 = p3
    w4, b4, m4, s4, _, zp4 = p4

    hls_c1 = hls_conv1d(hls_input, w1, b1, m1, s1, zp1, 5, 2, 2, input_zp)
    hls_c2 = hls_conv1d_2d(hls_c1, w2, b2, m2, s2, zp2, 5, 2, 2, zp1)
    hls_c3 = hls_conv1d_2d(hls_c2, w3, b3, m3, s3, zp3, 3, 2, 1, zp2)
    hls_fc = hls_fc_layer(hls_c3.flatten(), w4, b4, m4, s4, zp4, zp3)
    
    return hls_fc

# Load PyTorch model
model = TinyECG_CNN()
model.fuse_model()
import torch.ao.quantization
model.qconfig = torch.ao.quantization.get_default_qat_qconfig('fbgemm')
torch.ao.quantization.prepare_qat(model, inplace=True)
torch.ao.quantization.convert(model, inplace=True)
model.load_state_dict(torch.load('saved_models/tiny_ecg_qat.pth', map_location='cpu'))

dataset = MITBIH_Dataset(data_dir="mitdb_data", patient_ids=DS2_TEST)

indices = [36861, 35662, 6164, 22327, 8765, 27918]

print(f"{'Index':<8} | {'PyTorch (N, A)':<15} | {'HLS Sim (N, A)':<15} | {'Pred'}")
for idx in indices:
    x_raw, label = dataset[idx]
    
    # PyTorch
    pt_fc_float = model(x_raw.unsqueeze(0)).detach().numpy().flatten()
    
    # HLS Sim
    hls_fc = simulate_hls(x_raw)
    
    pred_pt = "NORMAL" if pt_fc_float[0] >= pt_fc_float[1] else "ANOMALY"
    pred_hls = "NORMAL" if hls_fc[0] >= hls_fc[1] else "ANOMALY"
    print(f"{idx:<8} | {pt_fc_float[0]:>5.2f}, {pt_fc_float[1]:>5.2f} | {hls_fc[0]:>5}, {hls_fc[1]:>5} | PT:{pred_pt} HLS:{pred_hls}")

