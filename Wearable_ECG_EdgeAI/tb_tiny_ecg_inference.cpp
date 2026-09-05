#include <cstdio>
#include <cstdint>

void tiny_ecg_inference(int8_t input_ecg[90], int8_t output_logits[2]);

const int8_t sample_anomaly_beat[90] = {
    -20, -18, -15, -10,  -5,   0,   5,  12,  25,  40, 
     60,  80, 105, 120, 110,  85,  50,  20,   5,  -5, 
    -10, -15, -18, -20, -22, -25, -28, -30, -32, -35, 
    -38, -40, -42, -45, -48, -50, -52, -55, -58, -60, 
    -60, -58, -55, -50, -45, -40, -35, -30, -25, -20, 
    -15, -10,  -5,   0,   5,  10,  15,  20,  25,  30, 
     35,  38,  40,  40,  38,  35,  30,  25,  20,  15, 
     10,   5,   0,  -5, -10, -15, -20, -22, -25, -28, 
    -30, -32, -35, -38, -40, -42, -45, -48, -50, -52
};

int main() {
    int8_t output_logits[2] = {0, 0};
    tiny_ecg_inference((int8_t*)sample_anomaly_beat, output_logits);
    printf("Logit Normal  = %d\n", output_logits[0]);
    printf("Logit Anomaly = %d\n", output_logits[1]);
    return 0;
}
