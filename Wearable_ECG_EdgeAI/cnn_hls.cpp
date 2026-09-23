#include <stdint.h>
#include "weights.h"

// FIX: requantize_and_relu now returns uint8_t (quint8 range [0, 255]).
// output_zp is int32_t (no longer int8_t, so fc_output_zp=136 no longer overflows).
// ReLU clamps to [output_zp, 255], matching PyTorch quint8 behaviour.
static inline uint8_t requantize_and_relu(int32_t acc, int32_t multiplier, int32_t shift, int32_t output_zp) {
    // M = multiplier / 2^shift. Use int64_t to prevent overflow during multiplication.
    int64_t acc64 = (int64_t)acc * (int64_t)multiplier;

    // Add rounding factor (half of the divisor) if shift > 0
    if (shift > 0) {
        acc64 += (1LL << (shift - 1));
    }

    int32_t res = (int32_t)(acc64 >> shift);
    res += output_zp;

    // ReLU: real value is max(0, x). In quant domain 0 maps to output_zp.
    if (res < output_zp) res = output_zp;

    // FIX: Clamp to quint8 range [0, 255], NOT int8 [-128, 127].
    if (res > 255) return (uint8_t)255;
    if (res < 0)   return (uint8_t)0;
    return (uint8_t)res;
}

// requantize_linear for the FC layer — no ReLU, stays int8_t for signed logit comparison.
// output_zp is int32_t (no overflow for any value in [0, 255]).
static inline uint8_t requantize_linear(int32_t acc, int32_t multiplier, int32_t shift, int32_t output_zp) {
    int64_t acc64 = (int64_t)acc * (int64_t)multiplier;

    if (shift > 0) {
        acc64 += (1LL << (shift - 1));
    }

    int32_t res = (int32_t)(acc64 >> shift);
    res += output_zp;

    // FIX: clamp to uint8 range [0, 255] because PyTorch FC layer produces quint8
    if (res > 255) return (uint8_t)255;
    if (res < 0) return (uint8_t)0;
    return (uint8_t)res;
}

// FIX: Pad AXI Master bursts to multiples of 8 bytes (64 bits) to prevent Zynq HP port deadlocks.
// input_ecg padded to 96 bytes. output_logits padded to 8 bytes.
void tiny_ecg_inference(uint8_t input_ecg[96], uint8_t output_logits[8]) {
#pragma HLS INTERFACE s_axilite port=return bundle=CTRL
#pragma HLS INTERFACE m_axi port=input_ecg offset=slave bundle=DATA_IN depth=96
#pragma HLS INTERFACE m_axi port=output_logits offset=slave bundle=DATA_OUT depth=8

    // Force an aligned 96-byte AXI Burst to prevent unaligned lockups
    uint8_t local_ecg[96];
    for(int i = 0; i < 96; i++) {
#pragma HLS PIPELINE II=1
        local_ecg[i] = input_ecg[i];
    }

    // FIX: Activation buffers are uint8_t (quint8 [0, 255]), not int8_t.
    uint8_t buffer_c1[8][45];
#pragma HLS ARRAY_PARTITION variable=buffer_c1 complete dim=1

    uint8_t buffer_c2[16][23];
#pragma HLS ARRAY_PARTITION variable=buffer_c2 complete dim=1

    uint8_t buffer_c3[16][12];
#pragma HLS ARRAY_PARTITION variable=buffer_c3 complete dim=1

    uint8_t flatten[192];

    // ------------------------------------------------------------------
    // Layer 1: Conv1D 1 -> 8, kernel 5, stride 2, padding 2
    // Output: 8 x 45
    // input_zero_point is int32_t in weights.h — no overflow.
    // ------------------------------------------------------------------
    for (int out_idx = 0; out_idx < 45; ++out_idx) {
        for (int oc = 0; oc < CONV1_OUT_CH; ++oc) {
#pragma HLS PIPELINE II=1
            int32_t acc = conv1_bias[oc];

            for (int k = 0; k < CONV1_KERNEL; ++k) {
                int in_idx = out_idx * CONV1_STRIDE + k - CONV1_PAD;
                int32_t x = 0;

                if (in_idx >= 0 && in_idx < INPUT_LENGTH) {
                    // FIX: local_ecg is uint8_t, cast to int32_t before subtraction
                    // gives correct range: e.g. 140 - 104 = 36 (was 127 - 104 = 23).
                    x = (int32_t)local_ecg[in_idx] - input_zero_point;
                }

                acc += (int32_t)conv1_weight[oc * CONV1_KERNEL + k] * x;
            }

            buffer_c1[oc][out_idx] = requantize_and_relu(acc, conv1_multiplier[oc], conv1_shift[oc], conv1_output_zp);
        }
    }

    // ------------------------------------------------------------------
    // Layer 2: Conv1D 8 -> 16, kernel 5, stride 2, padding 2
    // Output: 16 x 23
    // ------------------------------------------------------------------
    for (int out_idx = 0; out_idx < 23; ++out_idx) {
        for (int oc = 0; oc < CONV2_OUT_CH; ++oc) {
#pragma HLS PIPELINE II=1
            int32_t acc = conv2_bias[oc];

            for (int k = 0; k < CONV2_KERNEL; ++k) {
                for (int in_ch = 0; in_ch < CONV2_IN_CH; ++in_ch) {
                    int in_idx = out_idx * CONV2_STRIDE + k - CONV2_PAD;
                    int32_t x = 0;

                    if (in_idx >= 0 && in_idx < 45) {
                        // FIX: buffer_c1 is uint8_t, subtraction into int32_t is correct.
                        x = (int32_t)buffer_c1[in_ch][in_idx] - conv1_output_zp;
                    }

                    acc += (int32_t)conv2_weight[(oc * CONV2_IN_CH + in_ch) * CONV2_KERNEL + k] * x;
                }
            }

            buffer_c2[oc][out_idx] = requantize_and_relu(acc, conv2_multiplier[oc], conv2_shift[oc], conv2_output_zp);
        }
    }

    // ------------------------------------------------------------------
    // Layer 3: Conv1D 16 -> 16, kernel 3, stride 2, padding 1
    // Output: 16 x 12
    // ------------------------------------------------------------------
    for (int out_idx = 0; out_idx < 12; ++out_idx) {
        for (int oc = 0; oc < CONV3_OUT_CH; ++oc) {
#pragma HLS PIPELINE II=1
            int32_t acc = conv3_bias[oc];

            for (int k = 0; k < CONV3_KERNEL; ++k) {
                for (int in_ch = 0; in_ch < CONV3_IN_CH; ++in_ch) {
                    int in_idx = out_idx * CONV3_STRIDE + k - CONV3_PAD;
                    int32_t x = 0;

                    if (in_idx >= 0 && in_idx < 23) {
                        // FIX: buffer_c2 is uint8_t.
                        x = (int32_t)buffer_c2[in_ch][in_idx] - conv2_output_zp;
                    }

                    acc += (int32_t)conv3_weight[(oc * CONV3_IN_CH + in_ch) * CONV3_KERNEL + k] * x;
                }
            }

            buffer_c3[oc][out_idx] = requantize_and_relu(acc, conv3_multiplier[oc], conv3_shift[oc], conv3_output_zp);
        }
    }

    // ------------------------------------------------------------------
    // Flatten: 16 * 12 = 192 elements
    // ------------------------------------------------------------------
    for (int i = 0; i < 16; ++i) {
        for (int j = 0; j < 12; ++j) {
#pragma HLS PIPELINE II=1
            flatten[i * 12 + j] = buffer_c3[i][j];
        }
    }

    // ------------------------------------------------------------------
    // Layer 4: Dense 192 -> 2 logits
    // ------------------------------------------------------------------
    uint8_t local_out[8] = {0, 0, 0, 0, 0, 0, 0, 0};
    for (int out_class = 0; out_class < FC_OUT; ++out_class) {
#pragma HLS PIPELINE II=1
        int32_t acc = fc_bias[out_class];

        for (int idx = 0; idx < FC_IN; ++idx) {
            // FIX: flatten is uint8_t; conv3_output_zp is int32_t — no overflow.
            int32_t x = (int32_t)flatten[idx] - conv3_output_zp;
            acc += (int32_t)fc_weight[out_class * FC_IN + idx] * x;
        }

        local_out[out_class] = requantize_linear(acc, fc_multiplier[out_class], fc_shift[out_class], fc_output_zp);
    }
    
    // Force an aligned 8-byte AXI Burst
    for (int i = 0; i < 8; i++) {
#pragma HLS PIPELINE II=1
        output_logits[i] = local_out[i];
    }
}
