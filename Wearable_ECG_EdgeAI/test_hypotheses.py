import numpy as np
from trace_logits import simulate_hls, model, dataset

indices = [36861, 35662, 6164, 22327, 8765, 27918, 19322, 40666, 2081, 41173, 21439]

hw_preds = {
    36861: "NORMAL",
    35662: "ANOMALY",
    6164: "NORMAL",
    22327: "ANOMALY",
    8765: "NORMAL",
    27918: "NORMAL", # Wait, GT is ANOMALY, Pred is NORMAL
    19322: "ANOMALY",
    40666: "NORMAL",
    2081: "NORMAL",
    41173: "NORMAL",
    21439: "ANOMALY"
}

print(f"{'Idx':<8} | {'Uint8 Output':<10} | {'Int8 Cast':<10} | {'Old Int8 Clamp':<15} | HW Pred")

for idx in indices:
    x_raw, _ = dataset[idx]
    hls_fc = simulate_hls(x_raw) # This is uint8 output [0,255]
    
    # Simulate if helloworld is int8
    v0_i8 = np.int8(hls_fc[0])
    v1_i8 = np.int8(hls_fc[1])
    pred_i8 = "ANOMALY" if v1_i8 > v0_i8 else "NORMAL"
    
    # Simulate if HLS clamped to 127
    v0_clamp = min(127, hls_fc[0])
    v1_clamp = min(127, hls_fc[1])
    pred_clamp = "ANOMALY" if v1_clamp > v0_clamp else "NORMAL"
    
    # Simulate if HLS clamped to 127 AND helloworld is int8
    v0_both = np.int8(v0_clamp)
    v1_both = np.int8(v1_clamp)
    pred_both = "ANOMALY" if v1_both > v0_both else "NORMAL"
    
    # Simulate if weights.h wasn't copied (fc_output_zp = -120)
    # Requantize with zp=-120 instead of 136
    # It just shifts everything by -256
    # Meaning 165 becomes -91.
    
    print(f"{idx:<8} | {hls_fc[0]:>4},{hls_fc[1]:>4} | {v0_i8:>4},{v1_i8:>4}={pred_i8[0]} | {v0_clamp:>4},{v1_clamp:>4}={pred_clamp[0]} | HW:{hw_preds[idx]}")

