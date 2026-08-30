#include <stdint.h>
#include "weights.h"

static inline int8_t requantize_and_relu(int32_t acc, int32_t multiplier, int32_t shift, int8_t output_zp) {
    // M = multiplier / 2^shift. We use int64_t to prevent overflow during multiplication.
    int64_t acc64 = (int64_t)acc * (int64_t)multiplier;
    
    // Add rounding factor (half of the divisor) if shift > 0
    if (shift > 0) {
        acc64 += (1LL << (shift - 1));
    }
    
    int32_t res = (int32_t)(acc64 >> shift);
    res += output_zp;
    
    // ReLU: The real value is max(0, x). In quantized domain, 0 corresponds to output_zp.
    if (res < output_zp) res = output_zp;
    
    // Clamp to INT8 range
    if (res > 127) return 127;
    if (res < -128) return -128;
    return (int8_t)res;
}

static inline int8_t requantize_linear(int32_t acc, int32_t multiplier, int32_t shift, int8_t output_zp) {
    int64_t acc64 = (int64_t)acc * (int64_t)multiplier;
    
    if (shift > 0) {
        acc64 += (1LL << (shift - 1));
    }
    
    int32_t res = (int32_t)(acc64 >> shift);
    res += output_zp;
    
    // Clamp to INT8 range (No ReLU for final dense layer)
    if (res > 127) return 127;
    if (res < -128) return -128;
    return (int8_t)res;
}

void tiny_ecg_inference(int8_t input_ecg[90], int8_t output_logits[2]) {
#pragma HLS INTERFACE s_axilite port=return bundle=CTRL
#pragma HLS INTERFACE m_axi port=input_ecg offset=slave bundle=DATA_IN
#pragma HLS INTERFACE m_axi port=output_logits offset=slave bundle=DATA_OUT

    int8_t buffer_c1[8][45];
#pragma HLS ARRAY_PARTITION variable=buffer_c1 complete dim=1

    int8_t buffer_c2[16][23];
#pragma HLS ARRAY_PARTITION variable=buffer_c2 complete dim=1

    int8_t buffer_c3[16][12];
#pragma HLS ARRAY_PARTITION variable=buffer_c3 complete dim=1
    int8_t flatten[192];

    // ------------------------------------------------------------------
    // Layer 1: Conv1D 1 -> 8, kernel 5, stride 2, padding 2
    // Output: 8 x 45
    // ------------------------------------------------------------------
    for (int out_idx = 0; out_idx < 45; ++out_idx) {
        for (int oc = 0; oc < CONV1_OUT_CH; ++oc) {
#pragma HLS PIPELINE II=1
            int32_t acc = conv1_bias[oc];

            for (int k = 0; k < CONV1_KERNEL; ++k) {
                int in_idx = out_idx * CONV1_STRIDE + k - CONV1_PAD;
                int32_t x = 0;

                if (in_idx >= 0 && in_idx < INPUT_LENGTH) {
                    // Apply input zero-point offset
                    x = (int32_t)input_ecg[in_idx] - input_zero_point;
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
                        // Previous layer was relu'd and clamped, but we must subtract its zero point
                        // to get the true mathematical value for the next layer.
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
    for (int out_class = 0; out_class < FC_OUT; ++out_class) {
#pragma HLS PIPELINE II=1
        int32_t acc = fc_bias[out_class];

        for (int idx = 0; idx < FC_IN; ++idx) {
            int32_t x = (int32_t)flatten[idx] - conv3_output_zp;
            acc += (int32_t)fc_weight[out_class * FC_IN + idx] * x;
        }

        output_logits[out_class] = requantize_linear(acc, fc_multiplier[out_class], fc_shift[out_class], fc_output_zp);
    }
}
