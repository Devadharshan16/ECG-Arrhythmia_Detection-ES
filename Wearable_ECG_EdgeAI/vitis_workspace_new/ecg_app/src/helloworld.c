#include <stdio.h>
#include <stdint.h>
#include "xparameters.h"
#include "xtiny_ecg_inference.h"
#include "xil_cache.h"
#include "xstatus.h"
#include "xuartps_hw.h"
#include "platform.h"
#include "oled.h"
#include "xadcps.h"
#include "ds2_all_samples.h"

/* =====================================================================
 * DIRECT CORTEX-A9 64-BIT GLOBAL TIMER DRIVER (0xF8F00200)
 * Always runs at PERIPHCLK = CPU_CLK / 2 = 333,333,333 Hz (3.00 ns/tick).
 * =================================================================== */

#define GTIMER_BASEADDR        0xF8F00200U
#define GTIMER_COUNTER_LOWER   (GTIMER_BASEADDR + 0x00U)
#define GTIMER_COUNTER_UPPER   (GTIMER_BASEADDR + 0x04U)
#define GTIMER_CONTROL         (GTIMER_BASEADDR + 0x08U)

#ifdef COUNTS_PER_SECOND
#undef COUNTS_PER_SECOND
#endif
#define COUNTS_PER_SECOND      333333333ULL

typedef uint64_t XTime;

static inline void gtimer_init(void) {
    volatile uint32_t *ctrl = (volatile uint32_t *)GTIMER_CONTROL;
    *ctrl = (*ctrl & ~0x0000FF00U) | 0x00000001U;
}

static inline void XTime_GetTime(XTime *Xtime_Global) {
    volatile uint32_t *lower = (volatile uint32_t *)GTIMER_COUNTER_LOWER;
    volatile uint32_t *upper = (volatile uint32_t *)GTIMER_COUNTER_UPPER;
    uint32_t high1, low, high2;
    do {
        high1 = *upper;
        low   = *lower;
        high2 = *upper;
    } while (high1 != high2);
    *Xtime_Global = (((uint64_t)high1) << 32) | (uint64_t)low;
}

/* =====================================================================
 * UART PRINT FUNCTIONS  (FIFO-safe, no printf/sprintf dependency)
 * =================================================================== */

#ifndef XPAR_XUARTPS_0_BASEADDR
#define XPAR_XUARTPS_0_BASEADDR 0xE0001000U
#endif

static inline void uart_putc(char c) {
    while (XUartPs_IsTransmitFull(XPAR_XUARTPS_0_BASEADDR));
    XUartPs_SendByte(XPAR_XUARTPS_0_BASEADDR, (u8)c);
}

void print_str(const char *s) {
    while (*s) {
        if (*s == '\n') uart_putc('\r');
        uart_putc(*s++);
    }
}

void print_num(int num) {
    char buf[16]; int i = 0;
    if (num == 0) { print_str("0"); return; }
    if (num < 0)  { print_str("-"); num = -num; }
    while (num > 0) { buf[i++] = (num % 10) + '0'; num /= 10; }
    while (i > 0)   { char c[2] = {buf[--i], '\0'}; print_str(c); }
}

void print_u64(uint64_t num) {
    if (num == 0) { print_str("0"); return; }
    char buf[24]; int i = 0;
    while (num > 0) { buf[i++] = (num % 10) + '0'; num /= 10; }
    while (i > 0)   { char c[2] = {buf[--i], '\0'}; print_str(c); }
}

void print_hex32(uint32_t val) {
    print_str("0x");
    for (int i = 28; i >= 0; i -= 4) {
        int nib = (val >> i) & 0xF;
        char c[2] = { (nib < 10) ? ('0'+nib) : ('A'+nib-10), '\0' };
        print_str(c);
    }
}

void print_fixed3(int64_t thousandths) {
    if (thousandths < 0) { print_str("-"); thousandths = -thousandths; }
    int64_t ipart = thousandths / 1000;
    int64_t fpart = thousandths % 1000;
    if (ipart > 2000000000LL) { print_str("OVERFLOW"); return; }
    print_num((int)ipart);
    print_str(".");
    if (fpart < 100) print_str("0");
    if (fpart < 10)  print_str("0");
    print_num((int)fpart);
}

static uint64_t isqrt64(uint64_t n) {
    if (n == 0) return 0;
    uint64_t x = n, y = (x + 1) / 2;
    while (y < x) { x = y; y = (x + n / x) / 2; }
    return x;
}

/* ===================================================================== */

XTiny_ecg_inference Nn_Hardware;
XAdcPs XAdcInst;
static XAdcPs_Config XAdcFallbackCfg;

__attribute__((aligned(32))) uint8_t input_ecg[96];
__attribute__((aligned(32))) uint8_t output_logits[32];

#define NUM_TEST_BEATS   DS2_TOTAL_SAMPLES
#define WARMUP_COUNT     10
#define XADC_INTERVAL    10
#define SAMPLE_INTERVAL  100
#define MAX_SAMPLES      520

/* Exact single-tick (3 ns) histogram: 4096 bins from base_tick (covers 12.288 us window at 3 ns resolution) */
#define TICK_HIST_BINS   4096
uint32_t tick_hist_hw[TICK_HIST_BINS];
uint64_t hist_base_tick = 9500; /* Centered around ~10,027 ticks (30.081 us) */

/* Sampled time-series */
uint32_t sampled_hw_ns[MAX_SAMPLES];
uint32_t sampled_path_ns[MAX_SAMPLES];
int32_t  sampled_temp_mdeg[MAX_SAMPLES];
uint16_t sampled_vi_mv[MAX_SAMPLES];
uint16_t sampled_va_mv[MAX_SAMPLES];
uint16_t sampled_vb_mv[MAX_SAMPLES];
int      sample_count = 0;

/* XADC integer accumulators */
int64_t  xadc_temp_sum  = 0;
int64_t  xadc_vi_sum    = 0;
int64_t  xadc_va_sum    = 0;
int64_t  xadc_vb_sum    = 0;
int32_t  xadc_temp_min  =  999000;
int32_t  xadc_temp_max  = -999000;
int      xadc_count     = 0;

int32_t  last_temp_mdeg = 0;
uint16_t last_vi_mv = 0, last_va_mv = 0, last_vb_mv = 0;

/* Exact percentile in nanoseconds from single-tick histogram */
static uint64_t tick_hist_pct_ns(uint32_t *h, int total, int pct) {
    int target = ((int64_t)total * pct + 50) / 100;
    int cum = 0;
    for (int i = 0; i < TICK_HIST_BINS; i++) {
        cum += h[i];
        if (cum >= target) {
            uint64_t t = hist_base_tick + (uint64_t)i;
            return (t * 1000000000ULL + COUNTS_PER_SECOND / 2) / COUNTS_PER_SECOND;
        }
    }
    uint64_t t = hist_base_tick + TICK_HIST_BINS - 1;
    return (t * 1000000000ULL + COUNTS_PER_SECOND / 2) / COUNTS_PER_SECOND;
}

int init_hardware(void) {
    *((volatile uint32_t *)0xF8000008) = 0xDF0D;
    *((volatile uint32_t *)0xF8000240) = 0x00000000;
    *((volatile uint32_t *)0xF8000004) = 0x767B;

    Nn_Hardware.Control_BaseAddress = 0x40000000;
    Nn_Hardware.Ctrl_BaseAddress    = 0x40010000;
    Nn_Hardware.IsReady             = XIL_COMPONENT_IS_READY;

    XAdcPs_Config *cfg = NULL;
#ifdef XPAR_XADCPS_0_BASEADDR
    cfg = XAdcPs_LookupConfig(XPAR_XADCPS_0_BASEADDR);
#endif
    if (!cfg) cfg = XAdcPs_LookupConfig(0xF8007100U);
    if (!cfg) cfg = XAdcPs_LookupConfig(0);
    if (!cfg) {
        XAdcFallbackCfg.BaseAddress = 0xF8007100U;
        cfg = &XAdcFallbackCfg;
    }

    XAdcPs_CfgInitialize(&XAdcInst, cfg, cfg->BaseAddress);
    XAdcPs_SetSequencerMode(&XAdcInst, XADCPS_SEQ_MODE_SAFE);

    return XST_SUCCESS;
}

int main(void) {

    init_platform();
    gtimer_init();

    print_str("\n======================================================\n");
    print_str("   Zynq ZedBoard FULL DS2 Benchmark\n");
    print_str("======================================================\n\n");

    print_str("COUNTS_PER_SECOND: ");
    print_u64((uint64_t)COUNTS_PER_SECOND);
    print_str("\n");

    XTime tSanity0, tSanity1;
    XTime_GetTime(&tSanity0);
    for (volatile int k = 0; k < 10000; k++);
    XTime_GetTime(&tSanity1);
    print_str("GTIMER_SANITY_DELTA: ");
    print_u64(tSanity1 - tSanity0);
    print_str(" ticks\n");

    uint32_t fclk_ctrl = *((volatile uint32_t *)0xF8000170);
    print_str("FPGA0_CLK_CTRL: ");
    print_hex32(fclk_ctrl);
    print_str("\n");
    print_str("  DIVISOR0=");
    print_num((int)((fclk_ctrl >> 8) & 0x3F));
    print_str(" DIVISOR1=");
    print_num((int)((fclk_ctrl >> 20) & 0x3F));
    print_str("\n\n");

    if (init_hardware() != XST_SUCCESS) {
        print_str("[ERROR] Hardware init failed.\n");
        return -1;
    }

    print_str("Total DS2 Beats: ");
    print_num(NUM_TEST_BEATS);
    print_str("\n");

    oled_init();
    oled_clear();
    oled_print_large("BENCH");

    /* ==================== WARM-UP ==================== */

    print_str("Warm-up: ");
    print_num(WARMUP_COUNT);
    print_str(" inferences... ");

    for (int j = 0; j < 96; j++) input_ecg[j] = 0;
    for (int j = 0; j < 32; j++) output_logits[j] = 0;

    XTime wS, wE;
    for (int w = 0; w < WARMUP_COUNT; w++) {
        for (int j = 0; j < 90; j++)
            input_ecg[j] = ds2_all_samples[0][j];
        Xil_DCacheFlushRange((UINTPTR)input_ecg, 96);
        Xil_DCacheFlushRange((UINTPTR)output_logits, 32);
        XTiny_ecg_inference_Set_input_ecg(&Nn_Hardware, (u32)(UINTPTR)input_ecg);
        XTiny_ecg_inference_Set_output_logits(&Nn_Hardware, (u32)(UINTPTR)output_logits);
        XTime_GetTime(&wS);
        XTiny_ecg_inference_Start(&Nn_Hardware);
        while (!XTiny_ecg_inference_IsDone(&Nn_Hardware));
        XTime_GetTime(&wE);
        Xil_DCacheInvalidateRange((UINTPTR)output_logits, 32);
    }
    /* Dynamically center the 4096-bin single-tick histogram around warm-up latency */
    uint64_t warm_ticks = wE - wS;
    hist_base_tick = (warm_ticks > 512) ? (warm_ticks - 512) : 0;
    print_str("done.\n\n");

    /* ==================== BENCHMARK ==================== */

    int TP = 0, TN = 0, FP = 0, FN = 0;

    uint64_t hw_tick_sum    = 0;
    uint64_t hw_tick_sq_sum = 0;
    uint64_t hw_tick_min    = 0xFFFFFFFFFFFFFFFFULL;
    uint64_t hw_tick_max    = 0;

    uint64_t path_tick_sum    = 0;
    uint64_t path_tick_sq_sum = 0;
    uint64_t path_tick_min    = 0xFFFFFFFFFFFFFFFFULL;
    uint64_t path_tick_max    = 0;

    for (int i = 0; i < TICK_HIST_BINS; i++)
        tick_hist_hw[i] = 0;

    XTime benchStart, benchEnd;
    XTime tHwS, tHwE, tPathS, tPathE;

    print_str("Starting inference...\n\n");
    XTime_GetTime(&benchStart);

    for (int iter = 0; iter < NUM_TEST_BEATS; iter++) {

        int expected = ds2_all_labels[iter];

        XTime_GetTime(&tPathS);

        for (int j = 0; j < 90; j++)
            input_ecg[j] = ds2_all_samples[iter][j];

        Xil_DCacheFlushRange((UINTPTR)input_ecg, 96);
        Xil_DCacheFlushRange((UINTPTR)output_logits, 32);

        XTiny_ecg_inference_Set_input_ecg(&Nn_Hardware, (u32)(UINTPTR)input_ecg);
        XTiny_ecg_inference_Set_output_logits(&Nn_Hardware, (u32)(UINTPTR)output_logits);

        XTime_GetTime(&tHwS);

        XTiny_ecg_inference_Start(&Nn_Hardware);

        { int to = 0;
          while (!XTiny_ecg_inference_IsDone(&Nn_Hardware)) {
              if (++to > 10000000) {
                  XTime tNow; XTime_GetTime(&tNow);
                  print_str("\n[ERROR] Timeout beat ");
                  print_num(iter);
                  print_str(" delta_ticks=");
                  print_u64(tNow - tHwS);
                  print_str("\n");
                  GPIO_BUZZ_DATA = 0;
                  cleanup_platform();
                  return -1;
              }
          }
        }

        XTime_GetTime(&tHwE);

        Xil_DCacheInvalidateRange((UINTPTR)output_logits, 32);
        int predicted = (output_logits[1] > output_logits[0]) ? 1 : 0;

        XTime_GetTime(&tPathE);

        /* ---- Accumulate exact HW ticks & squares ---- */
        uint64_t hwd = tHwE - tHwS;
        hw_tick_sum    += hwd;
        hw_tick_sq_sum += hwd * hwd;
        if (hwd < hw_tick_min) hw_tick_min = hwd;
        if (hwd > hw_tick_max) hw_tick_max = hwd;

        /* ---- Accumulate exact Path ticks & squares ---- */
        uint64_t pd = tPathE - tPathS;
        path_tick_sum    += pd;
        path_tick_sq_sum += pd * pd;
        if (pd < path_tick_min) path_tick_min = pd;
        if (pd > path_tick_max) path_tick_max = pd;

        /* ---- Single-tick (3 ns) HW histogram ---- */
        int tbin = (hwd >= hist_base_tick) ? (int)(hwd - hist_base_tick) : 0;
        if (tbin >= TICK_HIST_BINS) tbin = TICK_HIST_BINS - 1;
        tick_hist_hw[tbin]++;

        uint64_t hw_ns = (hwd * 1000000000ULL + COUNTS_PER_SECOND / 2) / COUNTS_PER_SECOND;

        /* ---- Confusion matrix ---- */
        if      (expected == 1 && predicted == 1) TP++;
        else if (expected == 0 && predicted == 0) TN++;
        else if (expected == 0 && predicted == 1) FP++;
        else                                      FN++;

        /* ---- XADC (every 10th beat, OUTSIDE timing) ---- */
        if (iter % XADC_INTERVAL == 0 && XAdcInst.IsReady == XIL_COMPONENT_IS_READY) {
            u32 rT = XAdcPs_GetAdcData(&XAdcInst, XADCPS_CH_TEMP);
            u32 rI = XAdcPs_GetAdcData(&XAdcInst, XADCPS_CH_VCCINT);
            u32 rA = XAdcPs_GetAdcData(&XAdcInst, XADCPS_CH_VCCAUX);
            u32 rB = XAdcPs_GetAdcData(&XAdcInst, XADCPS_CH_VBRAM);

            float tc = XAdcPs_RawToTemperature(rT);
            int32_t md  = (int32_t)(tc * 1000.0f + 0.5f);
            uint16_t mi = (uint16_t)(XAdcPs_RawToVoltage(rI) * 1000.0f + 0.5f);
            uint16_t ma = (uint16_t)(XAdcPs_RawToVoltage(rA) * 1000.0f + 0.5f);
            uint16_t mb = (uint16_t)(XAdcPs_RawToVoltage(rB) * 1000.0f + 0.5f);

            xadc_temp_sum += md;
            xadc_vi_sum   += mi;
            xadc_va_sum   += ma;
            xadc_vb_sum   += mb;
            if (md < xadc_temp_min) xadc_temp_min = md;
            if (md > xadc_temp_max) xadc_temp_max = md;

            last_temp_mdeg = md;
            last_vi_mv = mi; last_va_mv = ma; last_vb_mv = mb;
            xadc_count++;
        }

        /* ---- Sample for charts (every 100th beat) ---- */
        if (iter % SAMPLE_INTERVAL == 0 && sample_count < MAX_SAMPLES) {
            uint64_t p_ns = (pd * 1000000000ULL + COUNTS_PER_SECOND / 2) / COUNTS_PER_SECOND;
            sampled_hw_ns[sample_count]     = (uint32_t)hw_ns;
            sampled_path_ns[sample_count]   = (uint32_t)p_ns;
            sampled_temp_mdeg[sample_count] = last_temp_mdeg;
            sampled_vi_mv[sample_count]     = last_vi_mv;
            sampled_va_mv[sample_count]     = last_va_mv;
            sampled_vb_mv[sample_count]     = last_vb_mv;
            sample_count++;
        }

        /* ---- Progress ---- */
        if (iter == 0 || (iter + 1) % 1000 == 0 || iter == NUM_TEST_BEATS - 1) {
            int64_t ax10 = (int64_t)(TP + TN) * 1000LL / (iter + 1);
            uint64_t rmn = hw_tick_sum * 1000000000ULL / COUNTS_PER_SECOND / (uint64_t)(iter + 1);

            print_str("[P] ");
            print_num(iter + 1);
            print_str("/");
            print_num(NUM_TEST_BEATS);
            print_str(" Acc:");
            print_num((int)(ax10 / 10));
            print_str(".");
            print_num((int)(ax10 % 10));
            print_str("% HW:");
            print_u64(rmn);
            print_str("ns T:");
            print_num(last_temp_mdeg);
            print_str("mC\n");
        }
    }

    XTime_GetTime(&benchEnd);
    GPIO_BUZZ_DATA = 0;

    /* ==================== COMPUTE RESULTS ==================== */

    uint64_t N = (uint64_t)NUM_TEST_BEATS;

    int64_t acc_x1k = ((int64_t)(TP+TN) * 100000LL + N/2) / N;
    int64_t pre_x1k = (TP+FP > 0) ? ((int64_t)TP * 100000LL + (TP+FP)/2) / (TP+FP) : 0;
    int64_t rec_x1k = (TP+FN > 0) ? ((int64_t)TP * 100000LL + (TP+FN)/2) / (TP+FN) : 0;
    int64_t spc_x1k = (TN+FP > 0) ? ((int64_t)TN * 100000LL + (TN+FP)/2) / (TN+FP) : 0;
    int64_t f1_x1k  = (pre_x1k + rec_x1k > 0) ? (2LL * pre_x1k * rec_x1k + (pre_x1k + rec_x1k)/2) / (pre_x1k + rec_x1k) : 0;

    uint64_t hw_total_ns = (hw_tick_sum * 1000000000ULL + COUNTS_PER_SECOND/2) / COUNTS_PER_SECOND;
    uint64_t hw_mean_ns  = (hw_total_ns + N/2) / N;
    uint64_t hw_min_ns   = (hw_tick_min * 1000000000ULL + COUNTS_PER_SECOND/2) / COUNTS_PER_SECOND;
    uint64_t hw_max_ns   = (hw_tick_max * 1000000000ULL + COUNTS_PER_SECOND/2) / COUNTS_PER_SECOND;

    /* Exact unbinned standard deviation in nanoseconds:
     * Var(ticks) = (N * sum(t^2) - (sum(t))^2) / N^2
     * Std(ns) = 3 * sqrt(N * sum(t^2) - (sum(t))^2) / N  (zero truncation error!) */
    uint64_t num_var_hw = N * hw_tick_sq_sum - hw_tick_sum * hw_tick_sum;
    uint64_t std_ns = (3ULL * isqrt64(num_var_hw) + N/2) / N;

    uint64_t p50_ns = tick_hist_pct_ns(tick_hist_hw, NUM_TEST_BEATS, 50);
    uint64_t p95_ns = tick_hist_pct_ns(tick_hist_hw, NUM_TEST_BEATS, 95);
    uint64_t p99_ns = tick_hist_pct_ns(tick_hist_hw, NUM_TEST_BEATS, 99);

    uint64_t path_total_ns = (path_tick_sum * 1000000000ULL + COUNTS_PER_SECOND/2) / COUNTS_PER_SECOND;
    uint64_t path_mean_ns  = (path_total_ns + N/2) / N;
    uint64_t path_min_ns   = (path_tick_min * 1000000000ULL + COUNTS_PER_SECOND/2) / COUNTS_PER_SECOND;
    uint64_t path_max_ns   = (path_tick_max * 1000000000ULL + COUNTS_PER_SECOND/2) / COUNTS_PER_SECOND;

    uint64_t hw_thru_x1k   = (hw_tick_sum > 0) ? (N * COUNTS_PER_SECOND * 1000ULL + hw_tick_sum/2) / hw_tick_sum : 0;
    uint64_t path_thru_x1k = (path_tick_sum > 0) ? (N * COUNTS_PER_SECOND * 1000ULL + path_tick_sum/2) / path_tick_sum : 0;

    /* Properly rounded time in ms */
    uint64_t path_time_ms = (path_tick_sum * 1000ULL + COUNTS_PER_SECOND/2) / COUNTS_PER_SECOND;
    uint64_t wall_ticks   = benchEnd - benchStart;
    uint64_t wall_time_ms = (wall_ticks * 1000ULL + COUNTS_PER_SECOND/2) / COUNTS_PER_SECOND;

    int64_t avg_t  = (xadc_count > 0) ? (xadc_temp_sum + xadc_count/2) / xadc_count : 0;
    int64_t avg_vi = (xadc_count > 0) ? (xadc_vi_sum + xadc_count/2) / xadc_count : 0;
    int64_t avg_va = (xadc_count > 0) ? (xadc_va_sum + xadc_count/2) / xadc_count : 0;
    int64_t avg_vb = (xadc_count > 0) ? (xadc_vb_sum + xadc_count/2) / xadc_count : 0;

    /* ==================== PRINT RESULTS ==================== */

    print_str("\n======================================================\n");
    print_str("   FULL DS2 BENCHMARK RESULTS\n");
    print_str("======================================================\n\n");

    print_str("--- Confusion Matrix ---\n");
    print_str("TP: ");  print_num(TP);
    print_str("  TN: "); print_num(TN); print_str("\n");
    print_str("FP: ");  print_num(FP);
    print_str("  FN: "); print_num(FN); print_str("\n");
    print_str("Total: "); print_num(TP+TN+FP+FN);
    print_str("\n\n");

    print_str("--- Classification Metrics ---\n");
    print_str("Accuracy   : "); print_fixed3(acc_x1k); print_str(" %\n");
    print_str("Precision  : "); print_fixed3(pre_x1k); print_str(" %\n");
    print_str("Recall     : "); print_fixed3(rec_x1k); print_str(" %\n");
    print_str("Specificity: "); print_fixed3(spc_x1k); print_str(" %\n");
    print_str("F1-Score   : "); print_fixed3(f1_x1k);  print_str(" %\n\n");

    print_str("--- HW Accelerator Latency ---\n");
    print_str("Mean   : "); print_fixed3((int64_t)hw_mean_ns); print_str(" us\n");
    print_str("Min    : "); print_fixed3((int64_t)hw_min_ns);  print_str(" us\n");
    print_str("Max    : "); print_fixed3((int64_t)hw_max_ns);  print_str(" us\n");
    print_str("StdDev : "); print_fixed3((int64_t)std_ns);     print_str(" us\n");
    print_str("P50    : "); print_fixed3((int64_t)p50_ns);     print_str(" us\n");
    print_str("P95    : "); print_fixed3((int64_t)p95_ns);     print_str(" us\n");
    print_str("P99    : "); print_fixed3((int64_t)p99_ns);     print_str(" us\n\n");

    print_str("--- Inference Path Latency (excl. XADC/UART) ---\n");
    print_str("Mean   : "); print_fixed3((int64_t)path_mean_ns); print_str(" us\n");
    print_str("Min    : "); print_fixed3((int64_t)path_min_ns);  print_str(" us\n");
    print_str("Max    : "); print_fixed3((int64_t)path_max_ns);  print_str(" us\n\n");

    print_str("--- Throughput ---\n");
    print_str("Path Sum Time   : ");
    print_fixed3((int64_t)path_time_ms); print_str(" s\n");
    print_str("HW Throughput   : ");
    print_fixed3((int64_t)hw_thru_x1k); print_str(" beats/s\n");
    print_str("Path Throughput : ");
    print_fixed3((int64_t)path_thru_x1k); print_str(" beats/s\n");
    print_str("Wall Time (incl. UART/XADC): ");
    print_fixed3((int64_t)wall_time_ms); print_str(" s\n\n");

    print_str("--- XADC Readings (N=");
    print_num(xadc_count);
    print_str(" samples) ---\n");
    print_str("Die Temp : "); print_fixed3(avg_t);
    print_str(" C (Min:"); print_fixed3((int64_t)xadc_temp_min);
    print_str(" Max:");     print_fixed3((int64_t)xadc_temp_max);
    print_str(")\n");
    print_str("VCCINT   : "); print_fixed3(avg_vi); print_str(" V\n");
    print_str("VCCAUX   : "); print_fixed3(avg_va); print_str(" V\n");
    print_str("VCCBRAM  : "); print_fixed3(avg_vb); print_str(" V\n");

    print_str("\n======================================================\n");

    /* ==================== CHART DATA ==================== */

    print_str("\nHIST_START\n");
    for (int i = 0; i < TICK_HIST_BINS; i++) {
        if (tick_hist_hw[i] > 0) {
            uint64_t t = hist_base_tick + (uint64_t)i;
            uint64_t ns = (t * 1000000000ULL + COUNTS_PER_SECOND / 2) / COUNTS_PER_SECOND;
            print_u64(ns);
            print_str(",");
            print_u64((uint64_t)tick_hist_hw[i]);
            print_str("\n");
        }
    }
    print_str("HIST_END\n");

    print_str("\nSAMPLE_START\n");
    print_str("beat,hw_ns,path_ns,temp_mdeg,vi_mv,va_mv,vb_mv\n");
    for (int i = 0; i < sample_count; i++) {
        print_num(i * SAMPLE_INTERVAL);
        print_str(",");
        print_u64((uint64_t)sampled_hw_ns[i]);
        print_str(",");
        print_u64((uint64_t)sampled_path_ns[i]);
        print_str(",");
        print_num((int)sampled_temp_mdeg[i]);
        print_str(",");
        print_num((int)sampled_vi_mv[i]);
        print_str(",");
        print_num((int)sampled_va_mv[i]);
        print_str(",");
        print_num((int)sampled_vb_mv[i]);
        print_str("\n");
    }
    print_str("SAMPLE_END\n");

    print_str("\n======================================================\n");

    oled_clear();
    oled_print_large("DONE");

    cleanup_platform();
    return 0;
}