#include <stdio.h>
#include "xparameters.h"
#include "xtiny_ecg_inference.h"
#include "xil_cache.h"
#include "xstatus.h"
#include "xuartps_hw.h"

void print_str(const char *str) {
    while (*str) {
        if (*str == '\n') {
            XUartPs_SendByte(XPAR_XUARTPS_0_BASEADDR, '\r');
        }
        XUartPs_SendByte(XPAR_XUARTPS_0_BASEADDR, *str++);
    }
}

void print_num(int32_t num) {
    char buf[16];
    int i = 0;
    if (num == 0) { print_str("0"); return; }
    if (num < 0) { print_str("-"); num = -num; }
    while (num > 0) { buf[i++] = (num % 10) + '0'; num /= 10; }
    while (i > 0) { 
        char c[2] = {buf[--i], 0};
        print_str(c); 
    }
}

// Instance of the Neural Network Hardware Driver
XTiny_ecg_inference Nn_Hardware;

// We must allocate our arrays in DDR memory so the FPGA can read/write them.
// We align them to 32 bytes to ensure safe cache flushing.
__attribute__((aligned(32))) int8_t input_ecg[90];
__attribute__((aligned(32))) int8_t output_logits[2];

// A sample 90-step ANOMALY beat extracted from your DS2 PyTorch dataset (Beat index 1)
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
    int status;
    XTiny_ecg_inference_Config *cfg_ptr;

    // BRUTE-FORCE FIX: Route UART1 to MIO 48/49 physically
    *((volatile uint32_t *)0xF8000008) = 0xDF0D; // Unlock SLCR
    *((volatile uint32_t *)0xF80007C0) = 0x000033E0; // MIO48 (TX) - LVCMOS18, Fast, UART1
    *((volatile uint32_t *)0xF80007C4) = 0x000013E1; // MIO49 (RX) - LVCMOS18, Fast, UART1, Tri
    *((volatile uint32_t *)0xF8000004) = 0x767B; // Lock SLCR

    // 1. Look up the hardware configuration in the Vivado xparameters
    cfg_ptr = XTiny_ecg_inference_LookupConfig(XPAR_TINY_ECG_INFERENCE_0_BASEADDR);
    if (!cfg_ptr) {
        print_str("ERROR: Could not find Neural Network hardware in design!\n");
        return XST_FAILURE;
    }

    // 2. Initialize the driver
    status = XTiny_ecg_inference_CfgInitialize(&Nn_Hardware, cfg_ptr);
    if (status != XST_SUCCESS) {
        print_str("ERROR: Failed to initialize Neural Network!\n");
        return XST_FAILURE;
    }

    return XST_SUCCESS;
}

int main() {
    print_str("\n======================================================\n");
    print_str("   Wearable ECG Edge-AI Hardware Accelerator (Zynq)   \n");
    print_str("======================================================\n");

    if (init_hardware() != XST_SUCCESS) {
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

    Xil_DCacheInvalidateRange((UINTPTR)output_logits, 2 * sizeof(int8_t));

    print_str("[SUCCESS] Hardware Inference Complete!\n\n");

    int8_t logit_normal = output_logits[0];
    int8_t logit_anomaly = output_logits[1];

    print_str("--- HARDWARE PREDICTION RESULTS ---\n");
    print_str("Logit [Normal]  : "); print_num(logit_normal); print_str("\n");
    print_str("Logit [Anomaly] : "); print_num(logit_anomaly); print_str("\n");

    if (logit_anomaly > logit_normal) {
        print_str("\n>>> FINAL DIAGNOSIS: ANOMALY DETECTED! <<<\n");
    } else {
        print_str("\n>>> FINAL DIAGNOSIS: Normal Heartbeat <<<\n");
    }
    
    print_str("======================================================\n");

    return 0;
}
