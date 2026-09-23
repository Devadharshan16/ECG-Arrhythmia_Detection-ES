import numpy as np
from trace_logits import model, dataset

indices = [36861, 35662, 6164, 22327, 8765, 27918, 19322, 40666, 2081, 41173, 21439]
hw_preds = {
    36861: "NORMAL",
    35662: "ANOMALY",
    6164: "NORMAL",
    22327: "ANOMALY",
    8765: "NORMAL",
    27918: "NORMAL",
    19322: "ANOMALY",
    40666: "NORMAL",
    2081: "NORMAL",
    41173: "NORMAL",
    21439: "ANOMALY"
}

def simulate_hls_missed_hls_rebuild(x_raw):
    from parity_test import p1, p2, p3, p4, input_scale, input_zp, hls_conv1d, hls_conv1d_2d
    x_np = x_raw.squeeze(0).numpy()
    
    hls_input = np.clip(np.round(x_np / input_scale) + input_zp, 0, 255).astype(np.uint8)

    w1, b1, m1, s1, _, zp1 = p1
    w2, b2, m2, s2, _, zp2 = p2
    w3, b3, m3, s3, _, zp3 = p3
    w4, b4, m4, s4, _, zp4 = p4

    hls_c1 = hls_conv1d(hls_input, w1, b1, m1, s1, zp1, 5, 2, 2, input_zp)
    hls_c2 = hls_conv1d_2d(hls_c1, w2, b2, m2, s2, zp2, 5, 2, 2, zp1)
    hls_c3 = hls_conv1d_2d(hls_c2, w3, b3, m3, s3, zp3, 3, 2, 1, zp2)
    
    fc_in = hls_c3.flatten()
    out = np.zeros(2, dtype=np.int32)
    w4_flat = w4.flatten()
    for out_class in range(2):
        acc = int(b4[out_class])
        for idx in range(len(fc_in)):
            x = int(fc_in[idx]) - int(zp3)
            acc += int(w4_flat[out_class * len(fc_in) + idx]) * x
        
        acc64 = np.int64(acc) * np.int64(m4[out_class])
        if s4[out_class] > 0:
            acc64 += np.int64(1) << int(s4[out_class] - 1)
        res = int(np.int32(acc64 >> int(s4[out_class])))
        res += 136 # NEW ZP from weights.h
        
        # BITSTREAM WAS NOT REBUILT FOR UINT8 FIX! (clamped to int8 range!)
        if res > 127: res = 127
        if res < -128: res = -128
            
        out[out_class] = res
        
    # HW treats as uint8_t in helloworld.c
    out_uint8 = np.uint8(np.int8(out))
    return out_uint8

print(f"{'Idx':<8} | {'Old Bitstream Output':<20} | HW Pred")

matches = 0
for idx in indices:
    x_raw, _ = dataset[idx]
    
    out = simulate_hls_missed_hls_rebuild(x_raw)
    pred = "ANOMALY" if out[1] > out[0] else "NORMAL"
    
    match = "MATCH" if pred == hw_preds[idx] else "FAIL"
    if match == "MATCH": matches += 1
    
    print(f"{idx:<8} | {out[0]:>4},{out[1]:>4}={pred:<6} | {hw_preds[idx]:<8} | {match}")

print(f"Total Matches: {matches}/{len(indices)}")
