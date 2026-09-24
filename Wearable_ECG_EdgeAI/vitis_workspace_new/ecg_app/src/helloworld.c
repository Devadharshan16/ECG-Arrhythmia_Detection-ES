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
#include "ds2_all_samples.h"

#ifndef XPAR_CPU_CORTEXA9_0_CPU_CLK_FREQ_HZ
#define XPAR_CPU_CORTEXA9_0_CPU_CLK_FREQ_HZ XPAR_CPU_CORE_CLOCK_FREQ_HZ
#endif
#include "xiltimer.h"

/* ---------------------------------------------------------------------
 * FIXED PRINT FUNCTIONS
 * XUartPs_SendByte() is a raw register-write macro - it does NOT wait
 * for room in the TX FIFO. Calling it back-to-back in a tight loop
 * overflows the 64-byte FIFO and corrupts/garbles the output on the
 * terminal. Every call is now guarded with XUartPs_IsTransmitFull().
 * ------------------------------------------------------------------- */

static inline void uart_putc(char c) {
    while (XUartPs_IsTransmitFull(XPAR_XUARTPS_0_BASEADDR));
    XUartPs_SendByte(XPAR_XUARTPS_0_BASEADDR, (u8)c);
}

void print_str(const char *str) {
    while (*str) {
        if (*str == '\n') {
            uart_putc('\r');
        }
        uart_putc(*str++);
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

void print_float(float num) {
    int integer_part = (int)num;
    int decimal_part = (int)((num - integer_part) * 100);

    if (decimal_part < 0)
        decimal_part = -decimal_part;

    print_num(integer_part);
    print_str(".");

    if (decimal_part < 10)
        print_str("0");

    print_num(decimal_part);
}

/* --------------------------------------------------------------------- */

XTiny_ecg_inference Nn_Hardware;
XAdcPs XAdcInst;

__attribute__((aligned(32))) uint8_t input_ecg[96];
__attribute__((aligned(32))) uint8_t output_logits[8];

#define NUM_TEST_BEATS 80

int selected_indices[NUM_TEST_BEATS];

void select_random_ds2_beats() {

    XTime seed_time;

    XTime_GetTime(&seed_time);

    unsigned int seed =
        (unsigned int)(seed_time ^ (seed_time >> 32));

    srand(seed);

    for (int i = 0; i < NUM_TEST_BEATS; i++) {

        int index;
        int duplicate;

        do {

            index = rand() % DS2_TOTAL_SAMPLES;
            duplicate = 0;

            for (int j = 0; j < i; j++) {

                if (selected_indices[j] == index) {
                    duplicate = 1;
                    break;
                }
            }

        } while (duplicate);

        selected_indices[i] = index;
    }
}

int init_hardware() {

    *((volatile uint32_t *)0xF8000008) = 0xDF0D;
    *((volatile uint32_t *)0xF8000240) = 0x00000000;
    *((volatile uint32_t *)0xF8000004) = 0x767B;

    Nn_Hardware.Control_BaseAddress = 0x40000000;
    Nn_Hardware.Ctrl_BaseAddress = 0x40010000;
    Nn_Hardware.IsReady = XIL_COMPONENT_IS_READY;

    XAdcPs_Config *ConfigPtr =
        XAdcPs_LookupConfig(0);

    if (ConfigPtr) {

        XAdcPs_CfgInitialize(
            &XAdcInst,
            ConfigPtr,
            ConfigPtr->BaseAddress
        );

        XAdcPs_SetSequencerMode(
            &XAdcInst,
            XADCPS_SEQ_MODE_SAFE
        );
    }

    return XST_SUCCESS;
}

int main() {

    init_platform();

    print_str("\n======================================================\n");
    print_str("   Wearable ECG Edge-AI Hardware Accelerator (Zynq)   \n");
    print_str("======================================================\n");

    if (init_hardware() != XST_SUCCESS) {

        print_str("[ERROR] Hardware Init Failed.\n");

        return -1;
    }

    print_str("\nDS2 Dataset Loaded\n");

    print_str("Total DS2 Beats: ");
    print_num(DS2_TOTAL_SAMPLES);
    print_str("\n");

    select_random_ds2_beats();

    print_str("\nRandomly Selected 20 DS2 Beats:\n");

    for (int i = 0; i < NUM_TEST_BEATS; i++) {

        print_str("Beat ");
        print_num(i + 1);

        print_str(" -> Dataset Index: ");

        print_num(selected_indices[i]);

        print_str("\n");
    }

    oled_init();
    oled_clear();

    int TP = 0;
    int TN = 0;
    int FP = 0;
    int FN = 0;

    XTime tStart;
    XTime tEnd;

    for (int iter = 1; iter <= NUM_TEST_BEATS; iter++) {

        print_str("\nStarting inference iteration ");
        print_num(iter);
        print_str("\n");

        int beat_idx =
            selected_indices[iter - 1];

        int expected_class =
            ds2_all_labels[beat_idx];

        print_str("Loading DS2 beat...\n");

        for (int i = 0; i < 90; i++) {

            input_ecg[i] =
                ds2_all_samples[beat_idx][i];
        }

        print_str("Input loaded.\n");

        Xil_DCacheFlushRange(
            (UINTPTR)input_ecg,
            96 * sizeof(uint8_t)
        );

        Xil_DCacheFlushRange(
            (UINTPTR)output_logits,
            8 * sizeof(uint8_t)
        );

        print_str("Setting accelerator input...\n");

        XTiny_ecg_inference_Set_input_ecg(
            &Nn_Hardware,
            (u32)(UINTPTR)input_ecg
        );

        XTiny_ecg_inference_Set_output_logits(
            &Nn_Hardware,
            (u32)(UINTPTR)output_logits
        );

        print_str("Starting accelerator...\n");

        u32 TempRaw =
            XAdcPs_GetAdcData(
                &XAdcInst,
                XADCPS_CH_TEMP
            );

        float temp_c =
            XAdcPs_RawToTemperature(TempRaw);

        XTime_GetTime(&tStart);

        XTiny_ecg_inference_Start(
            &Nn_Hardware
        );

        print_str("Waiting for accelerator...\n");

        int timeout = 0;

        while (!XTiny_ecg_inference_IsDone(
            &Nn_Hardware
        )) {

            timeout++;

            if (timeout > 10000000) {

                print_str(
                    "[ERROR] Accelerator timeout!\n"
                );

                print_str("Iteration: ");
                print_num(iter);
                print_str("\n");

                print_str("Dataset Index: ");
                print_num(beat_idx);
                print_str("\n");

                print_str(
                    "The accelerator did not complete.\n"
                );

                GPIO_BUZZ_DATA = 0;

                cleanup_platform();

                return -1;
            }
        }

        print_str("Accelerator completed.\n");

        XTime_GetTime(&tEnd);

        float latency_us =
            1.0 *
            (tEnd - tStart) /
            (COUNTS_PER_SECOND / 1000000.0);

        Xil_DCacheInvalidateRange(
            (UINTPTR)output_logits,
            8 * sizeof(uint8_t)
        );

        int predicted_class =
            (output_logits[1] >
             output_logits[0])
            ? 1
            : 0;

        if (expected_class == 1 &&
            predicted_class == 1) {

            TP++;
        }

        if (expected_class == 0 &&
            predicted_class == 0) {

            TN++;
        }

        if (expected_class == 0 &&
            predicted_class == 1) {

            FP++;
        }

        if (expected_class == 1 &&
            predicted_class == 0) {

            FN++;
        }

        print_str("\n--- ITERATION ");

        print_num(iter);

        print_str(" / ");

        print_num(NUM_TEST_BEATS);

        print_str(" ---\n");

        print_str("DS2 Dataset Index: ");

        print_num(beat_idx);

        print_str("\n");

        if (expected_class == 1) {

            print_str(
                "Ground Truth: ANOMALY\n"
            );

        } else {

            print_str(
                "Ground Truth: NORMAL\n"
            );
        }

        print_str("Hardware Pred: ");

        if (predicted_class == 1) {

            print_str("ANOMALY\n");

            oled_clear();

            oled_print_large(
                "ANOMALY"
            );

            GPIO_BUZZ_DATA = 1;

        } else {

            print_str("NORMAL\n");

            oled_clear();

            oled_print_large(
                "NORMAL"
            );

            GPIO_BUZZ_DATA = 0;
        }

        print_str("H/W Latency : ");

        print_float(latency_us);

        print_str(" us\n");

        print_str("Die Temp (C): ");

        print_float(temp_c);

        print_str(" C\n");

        sleep(1);
    }

    GPIO_BUZZ_DATA = 0;

    float accuracy =
        100.0 *
        (TP + TN) /
        NUM_TEST_BEATS;

    float precision =
        (TP + FP) > 0
        ? 100.0 * TP / (TP + FP)
        : 0;

    float recall =
        (TP + FN) > 0
        ? 100.0 * TP / (TP + FN)
        : 0;

    float f1_score =
        (precision + recall) > 0
        ? 2 * (precision * recall) /
          (precision + recall)
        : 0;

    print_str(
        "\n======================================================\n"
    );

    print_str(
        "   FINAL EVALUATION METRICS (20 RANDOM DS2 BEATS)\n"
    );

    print_str(
        "======================================================\n"
    );

    print_str(
        "Total True Positives (TP) : "
    );

    print_num(TP);

    print_str("\n");

    print_str(
        "Total True Negatives (TN) : "
    );

    print_num(TN);

    print_str("\n");

    print_str(
        "Total False Positives (FP): "
    );

    print_num(FP);

    print_str("\n");

    print_str(
        "Total False Negatives (FN): "
    );

    print_num(FN);

    print_str("\n");

    print_str("\nAccuracy  : ");

    print_float(accuracy);

    print_str(" %\n");

    print_str("Precision : ");

    print_float(precision);

    print_str(" %\n");

    print_str("Recall    : ");

    print_float(recall);

    print_str(" %\n");

    print_str("F1-Score  : ");

    print_float(f1_score);

    print_str(" %\n");

    print_str(
        "======================================================\n"
    );

    oled_clear();

    oled_print_large("DONE");

    cleanup_platform();

    return 0;
}