# Zynq ZedBoard - Full DS2 Benchmark Results

**Board:** Avnet ZedBoard (XC7Z020-CLG484-1)  
**Accelerator IP:** `tiny_ecg_inference` (HLS INT8 CNN)  
**CPU:** ARM Cortex-A9 MPCore @ 667 MHz  
**Timer:** Cortex-A9 64-bit Global Timer @ 333,333,333 Hz (3.00 ns/tick)  
**FPGA0_CLK_CTRL:** `0x00400800` (`DIVISOR0=8`, `DIVISOR1=4`)  
**Dataset:** MIT-BIH Arrhythmia DS2 Benchmark (51,170 beats)  
**Report Generated:** 2026-11-14 11:34:17

---

## 1. Confusion Matrix

|                    | Predicted Normal | Predicted Anomaly | Total       |
|:-------------------|:----------------:|:-----------------:|:-----------:|
| **Actual Normal**  | TN = 42,202    | FP = 2,053    | 44,255 |
| **Actual Anomaly** | FN = 1,804    | TP = 5,111    | 6,915 |

---

## 2. Classification Metrics

| Metric               | Value       |
|:---------------------|------------:|
| **Accuracy**         | 92.462 %  |
| **Precision**        | 71.343 % |
| **Recall (Sens.)**   | 73.912 %    |
| **Specificity**      | 95.361 % |
| **F1-Score**         | 72.605 %        |

---

## 3. Latency Statistics (Exact Unbinned Tick Resolution)

| Metric                                        | Value          |
|:----------------------------------------------|---------------:|
| **HW Accelerator Mean**                       | 30.083 us |
| **HW Accelerator Std-Dev**                    | 0.034 us  |
| **HW Accelerator Min**                        | 30.066 us  |
| **HW Accelerator Max**                        | 30.465 us  |
| **HW Accelerator Median (P50)**               | 30.081 us  |
| **HW Accelerator P95**                        | 30.081 us  |
| **HW Accelerator P99**                        | 30.087 us  |
| **Inference Path Mean (excl. XADC/UART)**     | 35.855 us |
| **Inference Path Std-Dev**                    | 0.060 us  |
| **Inference Path Min**                        | 35.781 us  |
| **Inference Path Max**                        | 36.576 us  |
| **Inference Path Median (P50)**               | 35.856 us  |
| **Inference Path P95**                        | 35.922 us  |
| **Inference Path P99**                        | 36.049 us  |

> **Note on Timing Boundaries:**  
> - **HW Accelerator Window:** From `XTiny_ecg_inference_Start()` to `XTiny_ecg_inference_IsDone() == 1`. Measures pure PL execution time (deterministic 10,027 Global Timer ticks = 30.081 us mode).  
> - **Inference Path Window:** Includes CPU input buffer copy, L1/L2 data cache flush, AXI register configuration, HW execution, cache invalidation, and output argmax (mean 5.772 us CPU/cache overhead). Excludes all UART printing and XADC sensor sampling.

---

## 4. Throughput & Execution Time

| Metric                                    | Value                 |
|:------------------------------------------|----------------------:|
| **HW Accelerator Throughput**             | 33241.347 beats/s |
| **Inference Path Throughput**             | 27890.058 beats/s |
| **Pure HW Execution Total Time (Sum)**    | 1.539 s    |
| **Inference Path Total Time (Sum)**       | 1.835 s    |
| **Total Wall Time (incl. UART/XADC)**     | 1.923 s    |

---

## 5. XADC Operational Environment (Telemetry)

> **Important:** XADC reports on-chip voltage rails and die temperature, not total system power dissipation. Total power should be obtained using Vivado Power Analysis or an external DC power meter.

| Sensor / Rail    | Mean          | Min           | Max           | Nominal |
|:-----------------|:-------------:|:-------------:|:-------------:|:-------:|
| **Die Temp**     | 38.188 C | 37.583 C | 38.660 C | < 85 C  |
| **VCCINT**       | 1.015 V   | ---           | ---           | 1.000 V |
| **VCCAUX**       | 1.798 V   | ---           | ---           | 1.800 V |
| **VCCBRAM**      | 1.015 V  | ---           | ---           | 1.000 V |

---

## 6. Generated Publication Figures

| No. | Figure Name                   | File                          | Description |
|:---:|:------------------------------|:------------------------------|:------------|
|  1  | Confusion Matrix              | `01_confusion_matrix.png`       | Normal vs Anomaly heat map |
|  2  | HW Latency Histogram          | `02_latency_histogram.png`      | Exact tick-resolved distribution with Mean, P50 & P99 |
|  3  | Latency Over Time             | `03_latency_timeline.png`       | HW accel vs Inference path stability across DS2 |
|  4  | Temperature Profile           | `04_temperature_timeline.png`   | XADC internal die temperature stability |
|  5  | Supply Voltage Rails          | `05_voltage_rails.png`          | VCCINT, VCCAUX, and VCCBRAM rails |
|  6  | Classification Metrics        | `06_classification_metrics.png` | Bar chart of Acc, Pre, Rec, Spc, F1 |
|  7  | Latency Box Plot              | `07_latency_boxplot.png`        | Quartiles and exact percentiles distribution |
