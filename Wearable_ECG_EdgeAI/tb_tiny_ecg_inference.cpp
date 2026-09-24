#include <cstdio>
#include <cstdint>

// FIX: Signature must EXACTLY match cnn_hls.cpp.
// input_ecg  : uint8_t[96]  (quint8, padded from 90 to 96 for AXI alignment)
// output_logits: uint8_t[8] (quint8, padded from 2 to 8 for AXI alignment)
void tiny_ecg_inference(uint8_t input_ecg[96], uint8_t output_logits[8]);

// FIX: Sample beat converted to NEW uint8_t quint8 convention.
// input_zero_point = 104. All values are in [0, 255].
// Original float values were shifted by +zp=104 and clipped to [0,255].
// Baseline (float ~0.0) -> quint8 104.
// QRS peak  (float ~0.9) -> quint8 ~246.
// Deep trough (float ~-0.5) -> quint8 ~52.
//
// This is a synthetic anomaly-shaped beat (wide QRS, flat ST segment).
// 90 real signal values, 6 padding bytes (0) for AXI 96-byte alignment.
const uint8_t sample_anomaly_beat[96] = {
    // Samples 0-89: quint8-encoded ECG anomaly beat
     84,  86,  89,  94,  99, 104, 109, 116, 129, 144,
    164, 184, 209, 224, 214, 189, 154, 124, 109,  99,
     94,  89,  86,  84,  82,  79,  76,  74,  72,  69,
     66,  64,  62,  59,  56,  54,  52,  49,  46,  44,
     44,  46,  49,  54,  59,  64,  69,  74,  79,  84,
     89,  94,  99, 104, 109, 114, 119, 124, 129, 134,
    139, 142, 144, 144, 142, 139, 134, 129, 124, 119,
    114, 109, 104,  99,  94,  89,  84,  82,  79,  76,
     74,  72,  69,  66,  64,  62,  59,  56,  54,  52,
    // Samples 90-95: AXI padding bytes (never read by the kernel)
      0,   0,   0,   0,   0,   0
};

int main() {
    // FIX: output_logits is uint8_t[8] to match cnn_hls.cpp signature.
    // Only indices [0] and [1] carry valid logit values.
    // Indices [2..7] are AXI padding — ignore them.
    uint8_t output_logits[8] = {0, 0, 0, 0, 0, 0, 0, 0};

    tiny_ecg_inference((uint8_t*)sample_anomaly_beat, output_logits);

    // FIX: Read from correct indices [0] and [1]. Both are uint8_t.
    // argmax: if output_logits[1] > output_logits[0] => ANOMALY, else NORMAL.
    printf("Logit Normal  (class 0) = %u\n", (unsigned)output_logits[0]);
    printf("Logit Anomaly (class 1) = %u\n", (unsigned)output_logits[1]);

    if (output_logits[1] > output_logits[0]) {
        printf("Prediction: ANOMALY\n");
    } else {
        printf("Prediction: NORMAL\n");
    }

    return 0;
}
