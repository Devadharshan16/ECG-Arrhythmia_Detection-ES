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

def simulate_hls_custom_zp(x_raw, out_zp, clamp_int8, hw_is_int8):
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
    
    # Custom FC
    fc_in = hls_c3.flatten()
    out = np.zeros(2, dtype=np.int32)
    for out_class in range(2):
        acc = int(b4[out_class])
        w4_flat = w4.flatten()
        for idx in range(len(fc_in)):
            x = int(fc_in[idx]) - int(zp3)
            acc += int(w4_flat[out_class * len(fc_in) + idx]) * x
        
        acc64 = np.int64(acc) * np.int64(m4[out_class])
        if s4[out_class] > 0:
            acc64 += np.int64(1) << int(s4[out_class] - 1)
        res = int(np.int32(acc64 >> int(s4[out_class])))
        res += out_zp
        
        if clamp_int8:
            if res > 127: res = 127
            if res < -128: res = -128
        else:
            if res > 255: res = 255
            if res < 0: res = 0
            
        out[out_class] = res
        
    if hw_is_int8:
        out = np.int8(out)
        
    return out

print(f"{'Idx':<8} | {'Old ZP, Old Clamp':<20} | {'Old ZP, Old Clmp, HW int8':<25} | HW Pred")

for idx in indices:
    x_raw, _ = dataset[idx]
    
    # What if HLS used OLD weights.h (-120) and OLD clamp (127) and OLD hw (int8)
    out1 = simulate_hls_custom_zp(x_raw, -120, True, True)
    pred1 = "ANOMALY" if out1[1] > out1[0] else "NORMAL"
    
    # What if HLS used NEW weights.h (136) and OLD clamp (127) and OLD hw (int8)
    out2 = simulate_hls_custom_zp(x_raw, 136, True, True)
    pred2 = "ANOMALY" if out2[1] > out2[0] else "NORMAL"
    
    # What if HLS used NEW weights.h (136) and NEW clamp (255) and OLD hw (int8)
    out3 = simulate_hls_custom_zp(x_raw, 136, False, True)
    pred3 = "ANOMALY" if out3[1] > out3[0] else "NORMAL"
    
    # What if HLS used NEW weights.h (136) and NEW clamp (255) and NEW hw (uint8) BUT something else is wrong
    out4 = simulate_hls_custom_zp(x_raw, 136, False, False)
    pred4 = "ANOMALY" if out4[1] > out4[0] else "NORMAL"
    
    print(f"{idx:<8} | {out1[0]:>4},{out1[1]:>4}={pred1[0]:<4} | {out2[0]:>4},{out2[1]:>4}={pred2[0]:<4} | {out3[0]:>4},{out3[1]:>4}={pred3[0]:<4} | {out4[0]:>4},{out4[1]:>4}={pred4[0]:<4} | HW:{hw_preds[idx]}")

