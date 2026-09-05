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

// --- OLED and Buzzer Driver (AXI GPIO) ---
#define GPIO_OLED_BASE 0x40020000
#define GPIO_OLED_DATA *(volatile uint32_t*)(GPIO_OLED_BASE + 0x00)
#define GPIO_BUZZ_DATA *(volatile uint32_t*)(GPIO_OLED_BASE + 0x08)

#define OLED_DC    0x01
#define OLED_RES   0x02
#define OLED_SCLK  0x04
#define OLED_SDIN  0x08
#define OLED_VBAT  0x10
#define OLED_VDD   0x20

void spi_send_byte(uint8_t data) {
    for(int i=7; i>=0; i--) {
        GPIO_OLED_DATA &= ~OLED_SCLK;
        if(data & (1<<i)) GPIO_OLED_DATA |= OLED_SDIN;
        else              GPIO_OLED_DATA &= ~OLED_SDIN;
        GPIO_OLED_DATA |= OLED_SCLK;
    }
}

void oled_command(uint8_t cmd) {
    GPIO_OLED_DATA &= ~OLED_DC; // Command mode
    spi_send_byte(cmd);
}

void oled_init() {
    GPIO_OLED_DATA = 0; // All low
    for(volatile int i=0; i<100000; i++);
    GPIO_OLED_DATA |= OLED_VDD;
    for(volatile int i=0; i<10000; i++);
    GPIO_OLED_DATA |= OLED_RES;
    for(volatile int i=0; i<10000; i++);
    GPIO_OLED_DATA |= OLED_VBAT;
    for(volatile int i=0; i<1000000; i++); // 100ms for power stabilization

    oled_command(0xAE); // Display OFF
    oled_command(0x8D); // Charge Pump
    oled_command(0x14); // Enable Charge Pump
    oled_command(0xAF); // Display ON
}

void trigger_alarm() {
    GPIO_BUZZ_DATA = 1; // Turn on the buzzer!
    oled_command(0xA5); // Flash the OLED screen to solid white!
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
    // BRUTE-FORCE FIX 2: Release FPGA Reset (FCLK_RESET0_N)
    *((volatile uint32_t *)0xF8000008) = 0xDF0D; // Unlock SLCR
    *((volatile uint32_t *)0xF8000240) = 0x00000000;
    *((volatile uint32_t *)0xF8000004) = 0x767B; // Lock SLCR

    // 2. Initialize the driver MANUALLY to bypass Vitis bugs!
    Nn_Hardware.Control_BaseAddress = 0x40000000;
    Nn_Hardware.Ctrl_BaseAddress    = 0x40010000;
    Nn_Hardware.IsReady             = XIL_COMPONENT_IS_READY;
    return XST_SUCCESS;
}

int main() {
    print_str("\n======================================================\n");
    print_str("   Wearable ECG Edge-AI Hardware Accelerator (Zynq)   \n");
    print_str("======================================================\n");

    if (init_hardware() != XST_SUCCESS) {
        return -1;
    }
    
    // Now that the FPGA is out of reset, we can initialize the OLED!
    oled_init();

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
        trigger_alarm();
    } else {
        print_str("\n>>> FINAL DIAGNOSIS: NORMAL BEAT <<<\n");
    }
    
    print_str("======================================================\n");
    print_str("[DEBUG] PROGRAM FINISHED. ENTERING INFINITE LOOP FOR TERMINAL.\n");

    // Prevent the CPU from sleeping so the Jury can see the terminal output!
    while(1) { }

    return 0;
}
