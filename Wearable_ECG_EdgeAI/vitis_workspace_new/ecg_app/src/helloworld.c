#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include "xparameters.h"
#include "xtiny_ecg_inference.h"
#include "xil_cache.h"
#include "xstatus.h"
#include "xuartps_hw.h"
#include "platform.h"
#include "sleep.h"
#include "oled.h"
#include "xadcps.h"

// Fix for Vitis macro mismatch in xtime_l.h
#ifndef XPAR_CPU_CORTEXA9_0_CPU_CLK_FREQ_HZ
#define XPAR_CPU_CORTEXA9_0_CPU_CLK_FREQ_HZ XPAR_CPU_CORE_CLOCK_FREQ_HZ
#endif
#include "xtime_l.h"

// Restore your original working print functions
void print_str(const char *str) {
    while (*str) {
        if (*str == '\n') XUartPs_SendByte(XPAR_XUARTPS_0_BASEADDR, '\r');
        XUartPs_SendByte(XPAR_XUARTPS_0_BASEADDR, *str++);
    }
}

void print_num(int num) {
    char buf[16];
    int i = 0;
    if (num == 0) { print_str("0"); return; }
    if (num < 0) { print_str("-"); num = -num; }
    while (num > 0) { buf[i++] = (num % 10) + '0'; num /= 10; }
    while (i > 0) { char str[2] = {buf[--i], '\0'}; print_str(str); }
}

void print_float(float num) {
    int integer_part = (int)num;
    int decimal_part = (int)((num - integer_part) * 100);
    if (decimal_part < 0) decimal_part = -decimal_part;
    print_num(integer_part); print_str("."); 
    if (decimal_part < 10) print_str("0");
    print_num(decimal_part);
}

XTiny_ecg_inference Nn_Hardware;
XAdcPs XAdcInst;

__attribute__((aligned(32))) int8_t input_ecg[90];
__attribute__((aligned(32))) int8_t output_logits[2];

// Base morphologies (3 Normal, 3 Anomaly)
const int8_t base_data[6][90] = {
    { 0, 1, 2, 5, 10, 15, 20, 22, 20, 15, 10, 5, 0, -2, -5, -8, -10, -5, 0, 5, 10, 20, 40, 70, 100, 120, 100, 50, 10, -10, -15, -10, 0, 5, 10, 12, 15, 18, 20, 22, 20, 18, 15, 10, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
    { -2, 0, 3, 6, 12, 16, 22, 24, 21, 16, 11, 6, 1, -1, -4, -7, -9, -4, 1, 6, 12, 22, 43, 72, 102, 122, 102, 52, 12, -8, -13, -8, 2, 7, 12, 14, 17, 20, 22, 24, 22, 20, 17, 12, 7, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
    { 1, 2, 4, 7, 11, 14, 19, 21, 19, 14, 9, 4, -1, -3, -6, -9, -11, -6, -1, 4, 9, 19, 39, 69, 99, 119, 99, 49, 9, -11, -16, -11, -1, 4, 9, 11, 14, 17, 19, 21, 19, 17, 14, 9, 4, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
    { -20, -18, -15, -10,  -5,   0,   5,  12,  25,  40, 60,  80, 105, 120, 110,  85,  50,  20,   5,  -5, -10, -15, -18, -20, -22, -25, -28, -30, -32, -35, -38, -40, -42, -45, -48, -50, -52, -55, -58, -60, -60, -58, -55, -50, -45, -40, -35, -30, -25, -20, -15, -10,  -5,   0,   5,  10,  15,  20,  25,  30,  35,  38,  40,  40,  38,  35,  30,  25,  20,  15,  10,   5,   0,  -5, -10, -15, -20, -22, -25, -28, -30, -32, -35, -38, -40, -42, -45, -48, -50, -52 },
    { -15, -12, -8, -5, 0, 5, 10, 20, 35, 55, 75, 95, 115, 125, 105, 75, 40, 10, -5, -15, -20, -25, -28, -30, -32, -35, -38, -40, -42, -45, -48, -50, -52, -55, -58, -60, -62, -65, -68, -70, -70, -68, -65, -60, -55, -50, -45, -40, -35, -30, -25, -20, -15, -10, -5, 0, 5, 10, 15, 20, 25, 28, 30, 30, 28, 25, 20, 15, 10, 5, 0, -5, -10, -15, -20, -25, -30, -32, -35, -38, -40, -42, -45, -48, -50, -52, -55, -58, -60, -62 },
    { -25, -22, -18, -12, -8, -2, 3, 10, 22, 38, 58, 78, 100, 118, 100, 68, 32, 5, -8, -18, -22, -28, -32, -35, -38, -40, -42, -45, -48, -50, -52, -55, -58, -60, -62, -65, -68, -70, -72, -75, -75, -72, -70, -65, -60, -55, -50, -45, -40, -35, -30, -25, -20, -15, -10, -5, 0, 5, 10, 15, 20, 22, 25, 25, 22, 20, 15, 10, 5, 0, -5, -10, -15, -20, -25, -30, -35, -38, -40, -42, -45, -48, -50, -52, -55, -58, -60, -62, -65, -68 }
};

int8_t test_dataset[20][90];
int ground_truth[20];

void generate_dataset() {
    for(int i=0; i<20; i++) {
        int r = rand() % 6;
        for(int j=0; j<90; j++) test_dataset[i][j] = base_data[r][j];
        ground_truth[i] = (r >= 3) ? 1 : 0;
    }
}

int init_hardware() {
    *((volatile uint32_t *)0xF8000008) = 0xDF0D;
    *((volatile uint32_t *)0xF8000240) = 0x00000000;
    *((volatile uint32_t *)0xF8000004) = 0x767B;
    Nn_Hardware.Control_BaseAddress = 0x40000000;
    Nn_Hardware.Ctrl_BaseAddress    = 0x40010000;
    Nn_Hardware.IsReady             = XIL_COMPONENT_IS_READY;
    
    XAdcPs_Config *ConfigPtr = XAdcPs_LookupConfig(0);
    if(ConfigPtr) {
        XAdcPs_CfgInitialize(&XAdcInst, ConfigPtr, ConfigPtr->BaseAddress);
        XAdcPs_SetSequencerMode(&XAdcInst, XADCPS_SEQ_MODE_SAFE);
    }
    return XST_SUCCESS;
}

int main() {
    init_platform(); 
    srand(12345);
    generate_dataset();

    print_str("\n======================================================\n");
    print_str("   Wearable ECG Edge-AI Hardware Accelerator (Zynq)   \n");
    print_str("======================================================\n");

    if (init_hardware() != XST_SUCCESS) {
        print_str("[ERROR] Hardware Init Failed.\n"); return -1;
    }

    oled_init();
    oled_clear();
    
    int TP = 0, TN = 0, FP = 0, FN = 0;
    XTime tStart, tEnd;

    for(int iter = 1; iter <= 20; iter++) {
        int beat_idx = iter - 1;
        int expected_class = ground_truth[beat_idx];

        for (int i = 0; i < 90; i++) input_ecg[i] = test_dataset[beat_idx][i];

        Xil_DCacheFlushRange((UINTPTR)input_ecg, 90 * sizeof(int8_t));
        Xil_DCacheFlushRange((UINTPTR)output_logits, 2 * sizeof(int8_t));
        XTiny_ecg_inference_Set_input_ecg(&Nn_Hardware, (u32)(UINTPTR)input_ecg);
        XTiny_ecg_inference_Set_output_logits(&Nn_Hardware, (u32)(UINTPTR)output_logits);

        // Read Temperature
        u32 TempRaw = XAdcPs_GetAdcData(&XAdcInst, XADCPS_CH_TEMP);
        float temp_c = XAdcPs_RawToTemperature(TempRaw);

        // Benchmark Hardware Latency
        XTime_GetTime(&tStart);
        XTiny_ecg_inference_Start(&Nn_Hardware);
        while (!XTiny_ecg_inference_IsDone(&Nn_Hardware)) {}
        XTime_GetTime(&tEnd);
        
        float latency_us = 1.0 * (tEnd - tStart) / (COUNTS_PER_SECOND / 1000000.0);

        Xil_DCacheInvalidateRange((UINTPTR)output_logits, 2 * sizeof(int8_t));

        int predicted_class = (output_logits[1] > output_logits[0]) ? 1 : 0;
        
        if (expected_class == 1 && predicted_class == 1) TP++;
        if (expected_class == 0 && predicted_class == 0) TN++;
        if (expected_class == 0 && predicted_class == 1) FP++;
        if (expected_class == 1 && predicted_class == 0) FN++;

        print_str("\n--- ITERATION "); print_num(iter); print_str(" / 20 ---\n");
        if (expected_class == 1) print_str("Ground Truth: ANOMALY\n");
        else                     print_str("Ground Truth: NORMAL\n");

        print_str("Hardware Pred: ");
        if (predicted_class == 1) {
            print_str("ANOMALY\n");
            oled_clear();
            oled_print_large("ANOMALY");
            GPIO_BUZZ_DATA = 1; 
        } else {
            print_str("NORMAL\n");
            oled_clear();
            oled_print_large("NORMAL");
            GPIO_BUZZ_DATA = 0;
        }

        print_str("H/W Latency : "); print_float(latency_us); print_str(" us\n");
        print_str("Die Temp (C): "); print_float(temp_c); print_str(" C\n");
        sleep(1);
    }
    
    GPIO_BUZZ_DATA = 0; // Turn off buzzer at end

    // Compute Metrics
    float accuracy = 100.0 * (TP + TN) / 20.0;
    float precision = (TP + FP) > 0 ? 100.0 * TP / (TP + FP) : 0;
    float recall = (TP + FN) > 0 ? 100.0 * TP / (TP + FN) : 0;
    float f1_score = (precision + recall) > 0 ? 2 * (precision * recall) / (precision + recall) : 0;

    print_str("\n======================================================\n");
    print_str("   FINAL EVALUATION METRICS (20 BEATS)\n");
    print_str("======================================================\n");
    print_str("Total True Positives (TP) : "); print_num(TP); print_str("\n");
    print_str("Total True Negatives (TN) : "); print_num(TN); print_str("\n");
    print_str("Total False Positives (FP): "); print_num(FP); print_str("\n");
    print_str("Total False Negatives (FN): "); print_num(FN); print_str("\n");
    
    print_str("\nAccuracy  : "); print_float(accuracy); print_str(" %\n");
    print_str("Precision : "); print_float(precision); print_str(" %\n");
    print_str("Recall    : "); print_float(recall); print_str(" %\n");
    print_str("F1-Score  : "); print_float(f1_score); print_str(" %\n");
    print_str("======================================================\n");

    oled_clear();
    oled_print_large("DONE");

    cleanup_platform();
    return 0;
}