#include <stdint.h>
#include "weights.h"

static inline int8_t clamp_i8(int32_t value) {
    if (value > 127) return 127;
    if (value < -128) return -128;
    return static_cast<int8_t>(value);
}

static inline int8_t relu_i8(int32_t value) {
    if (value < 0) return 0;
    return clamp_i8(value);
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
    int8_t flatten[192];

    // ------------------------------------------------------------------
    // Layer 1: Conv1D 1 -> 8, kernel 5, stride 2, padding 2
    // Output: 8 x 45
    // ------------------------------------------------------------------
    for (int oc = 0; oc < CONV1_OUT_CH; ++oc) {
#pragma HLS PIPELINE II=1
        for (int out_idx = 0; out_idx < 45; ++out_idx) {
// #pragma HLS UNROLL
            int32_t acc = conv1_bias[oc];

            for (int k = 0; k < CONV1_KERNEL; ++k) {
// #pragma HLS UNROLL
                int in_idx = out_idx * CONV1_STRIDE + k - CONV1_PAD;
                int8_t x = 0;

                if (in_idx >= 0 && in_idx < INPUT_LENGTH) {
                    x = input_ecg[in_idx];
                }

                acc += (int32_t)conv1_weight[oc * CONV1_KERNEL + k] * (int32_t)x;
            }

            buffer_c1[oc][out_idx] = relu_i8(acc);
        }
    }

    // ------------------------------------------------------------------
    // Layer 2: Conv1D 8 -> 16, kernel 5, stride 2, padding 2
    // Output: 16 x 23
    // ------------------------------------------------------------------
    for (int oc = 0; oc < CONV2_OUT_CH; ++oc) {
#pragma HLS PIPELINE II=1
        for (int out_idx = 0; out_idx < 23; ++out_idx) {
// #pragma HLS UNROLL
            int32_t acc = conv2_bias[oc];

            for (int in_ch = 0; in_ch < CONV2_IN_CH; ++in_ch) {
// #pragma HLS UNROLL
                for (int k = 0; k < CONV2_KERNEL; ++k) {
// #pragma HLS UNROLL
                    int in_idx = out_idx * CONV2_STRIDE + k - CONV2_PAD;
                    int8_t x = 0;

                    if (in_idx >= 0 && in_idx < 45) {
                        x = buffer_c1[in_ch][in_idx];
                    }

                    acc += (int32_t)conv2_weight[(oc * CONV2_IN_CH + in_ch) * CONV2_KERNEL + k] * (int32_t)x;
                }
            }

            buffer_c2[oc][out_idx] = relu_i8(acc);
        }
    }

    // ------------------------------------------------------------------
    // Layer 3: Conv1D 16 -> 16, kernel 3, stride 2, padding 1
    // Output: 16 x 12
    // ------------------------------------------------------------------
    for (int oc = 0; oc < CONV3_OUT_CH; ++oc) {
#pragma HLS PIPELINE II=1
        for (int out_idx = 0; out_idx < 12; ++out_idx) {
// #pragma HLS UNROLL
            int32_t acc = conv3_bias[oc];

            for (int in_ch = 0; in_ch < CONV3_IN_CH; ++in_ch) {
// #pragma HLS UNROLL
                for (int k = 0; k < CONV3_KERNEL; ++k) {
// #pragma HLS UNROLL
                    int in_idx = out_idx * CONV3_STRIDE + k - CONV3_PAD;
                    int8_t x = 0;

                    if (in_idx >= 0 && in_idx < 23) {
                        x = buffer_c2[in_ch][in_idx];
                    }

                    acc += (int32_t)conv3_weight[(oc * CONV3_IN_CH + in_ch) * CONV3_KERNEL + k] * (int32_t)x;
                }
            }

            buffer_c3[oc][out_idx] = relu_i8(acc);
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
// #pragma HLS UNROLL
            acc += (int32_t)fc_weight[out_class * FC_IN + idx] * (int32_t)flatten[idx];
        }

        output_logits[out_class] = clamp_i8(acc);
    }
}
