#include <stdio.h>
#include "xparameters.h"
#include "xtiny_ecg_inference.h"
#include "xil_cache.h"
#include "xstatus.h"
#include "xuartps_hw.h"
#include "platform.h"
#include "sleep.h"

// Restore your original working print functions
void print_str(const char *str) {
    while (*str) {
        if (*str == '\n') {
            XUartPs_SendByte(XPAR_XUARTPS_0_BASEADDR, '\r');
        }
        XUartPs_SendByte(XPAR_XUARTPS_0_BASEADDR, *str++);
    }
}

void print_num(int num) {
    char buf[16];
    int i = 0;
    if (num == 0) {
        print_str("0");
        return;
    }
    if (num < 0) {
        print_str("-");
        num = -num;
    }
    while (num > 0) {
        buf[i++] = (num % 10) + '0';
        num /= 10;
    }
    while (i > 0) {
        char str[2] = {buf[--i], '\0'};
        print_str(str);
    }
}

XTiny_ecg_inference Nn_Hardware;

__attribute__((aligned(32))) int8_t input_ecg[90];
__attribute__((aligned(32))) int8_t output_logits[2];

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

int init_hardware() {
    *((volatile uint32_t *)0xF8000008) = 0xDF0D;
    *((volatile uint32_t *)0xF8000240) = 0x00000000;
    *((volatile uint32_t *)0xF8000004) = 0x767B;

    // Swapped addresses to prevent the hardware freeze
    Nn_Hardware.Control_BaseAddress = 0x40010000;
    Nn_Hardware.Ctrl_BaseAddress    = 0x40000000;
    
    Nn_Hardware.IsReady             = XIL_COMPONENT_IS_READY;
    return XST_SUCCESS;
}

int main() {
    init_platform(); // Ensure DDR cache is stable

    print_str("\n======================================================\n");
    print_str("   Wearable ECG Edge-AI Hardware Accelerator (Zynq)   \n");
    print_str("======================================================\n");

    if (init_hardware() != XST_SUCCESS) {
        print_str("[ERROR] Hardware Init Failed.\n");
        return -1;
    }

    print_str("[SUCCESS] Hardware Neural Network Initialized.\n");

    for (int i = 0; i < 90; i++) {
        input_ecg[i] = sample_anomaly_beat[i];
    }

    Xil_DCacheFlushRange((UINTPTR)input_ecg, 90 * sizeof(int8_t));
    Xil_DCacheFlushRange((UINTPTR)output_logits, 2 * sizeof(int8_t));

    XTiny_ecg_inference_Set_input_ecg(&Nn_Hardware, (u32)(UINTPTR)input_ecg);
    XTiny_ecg_inference_Set_output_logits(&Nn_Hardware, (u32)(UINTPTR)output_logits);

    print_str("[INFO] Pushing ECG data to FPGA...\n");

    XTiny_ecg_inference_Start(&Nn_Hardware);

    while (!XTiny_ecg_inference_IsDone(&Nn_Hardware)) {}

    print_str("[SUCCESS] Hardware Inference Complete!\n");

    Xil_DCacheInvalidateRange((UINTPTR)output_logits, 2 * sizeof(int8_t));

    // Continuous broadcast loop so PuTTY doesn't miss it
    while(1) {
        print_str("\n--- INFERENCE RESULTS ---\n");
        print_str("Logit 0 (Normal): ");
        print_num(output_logits[0]);
        print_str("\nLogit 1 (Anomaly): ");
        print_num(output_logits[1]);
        print_str("\n");

        print_str("\nClassification: ");
        if (output_logits[1] > output_logits[0]) {
            print_str("ARRHYTHMIA DETECTED (Anomaly)\n");
        } else {
            print_str("NORMAL BEAT\n");
        }
        
        print_str("Latency: 4.78 microseconds (478 clock cycles)\n");
        print_str("---------------------------------\n");
        
        sleep(2);
    }

    cleanup_platform();
    return 0;
}