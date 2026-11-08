# Cross-Architecture ECG Edge-AI Benchmark Manual

> **Paper Title (Working):** *Cross-Architecture Benchmarking of a Quantized 1D-CNN for Real-Time ECG Anomaly Detection on Edge Platforms*
>
> **Model:** TinyECG_CNN v3 — INT8 Quantization-Aware Training (QAT)
>
> **Dataset:** MIT-BIH Arrhythmia Database (DS1 train / DS2 test — 51,170 beats)

---

## Table of Contents

1. [Common Methodology](#1-common-methodology)
2. [Board A — Zynq ZedBoard (XC7Z020)](#2-board-a--zynq-zedboard-xc7z020)
3. [Board B — NVIDIA Jetson Nano](#3-board-b--nvidia-jetson-nano)
4. [Board C — ESP32](#4-board-c--esp32)
5. [Results Table Template](#5-results-table-template)
6. [Paper Figures Checklist](#6-paper-figures-checklist)

---

## 1. Common Methodology

### 1.1 Model Architecture — TinyECG_CNN v3

| Layer        | Type       | In→Out Channels | Kernel | Stride | Padding | Output Length |
|:-------------|:-----------|:---------------:|:------:|:------:|:-------:|:-------------:|
| Conv1 + BN + ReLU | Conv1d | 1 → 8   | 5      | 2      | 2       | 45            |
| Conv2 + BN + ReLU | Conv1d | 8 → 16  | 5      | 2      | 2       | 23            |
| Conv3 + BN + ReLU | Conv1d | 16 → 16 | 3      | 2      | 1       | 12            |
| Flatten + FC      | Linear | 192 → 2 | —      | —      | —       | 2 (logits)    |

- **Total Parameters:** ~2,900
- **INT8 Weight Footprint:** ~2.9 KB
- **Input:** 90 × `uint8` samples (quantized ECG window, 0–255)
- **Output:** 2 × `uint8` logits → argmax → `0` = Normal, `1` = Anomaly
- **Quantization:** Per-channel INT8 weights, INT32 bias accumulators, fixed-point requantization multipliers + shifts (no floating-point needed at inference)

### 1.2 Test Dataset — DS2

- **Source:** MIT-BIH Arrhythmia Database
- **Split:** DS1 (training), DS2 (testing) — patient-independent
- **Total DS2 beats:** 51,170
- **Binary Classification:** Normal (class 0) vs Anomaly (class 1)
- **Data Header:** `ds2_all_samples.h` — `uint8_t ds2_all_samples[51170][90]` + `uint8_t ds2_all_labels[51170]`
- **File Size:** ~4.6 MB (needs to fit in platform memory)

### 1.3 Benchmark Metrics (All Platforms Must Report)

| Metric | Formula | Unit |
|:-------|:--------|:-----|
| **Accuracy** | (TP + TN) / Total × 100 | % |
| **Precision** | TP / (TP + FP) × 100 | % |
| **Recall (Sensitivity)** | TP / (TP + FN) × 100 | % |
| **Specificity** | TN / (TN + FP) × 100 | % |
| **F1-Score** | 2 × Precision × Recall / (Precision + Recall) | % |
| **Inference Latency** | Time for 1 beat (input → output) | µs |
| **Throughput** | Beats / second | beats/s |
| **Power** | Platform-specific measurement | mW |
| **Energy per Inference** | Power × Latency | µJ |
| **Model Size on Device** | INT8 weights + code footprint | KB |

### 1.4 Benchmarking Protocol

1. **Warm-up:** Run 10 dummy inferences before timing starts (cache/pipeline warm-up)
2. **Full DS2 Run:** Infer all 51,170 beats sequentially
3. **Timing:** Measure per-beat latency using platform timer (µs resolution)
4. **Reporting:** Compute mean, min, max, std of latency; report confusion matrix
5. **Power:** Measure during active inference (not idle), report average

### 1.5 Files to Copy to Each Platform

| File | Description | Location in Repo |
|:-----|:------------|:-----------------|
| `weights.h` | INT8 quantized weights + biases + scales | `vitis_workspace_new/ecg_app/src/weights.h` |
| `ds2_all_samples.h` | All 51,170 test beats (uint8) | `vitis_workspace_new/ecg_app/src/ds2_all_samples.h` |
| `model_cnn.py` | PyTorch model definition | `Wearable_ECG_EdgeAI/model_cnn.py` |
| `tiny_ecg_qat_best.pth` | Trained PyTorch checkpoint | `saved_models/tiny_ecg_qat_best.pth` |
| `export_weights_to_cpp.py` | Weight export script | `Wearable_ECG_EdgeAI/export_weights_to_cpp.py` |

---

## 2. Board A — Zynq ZedBoard (XC7Z020)

### 2.1 Platform Summary

| Property | Value |
|:---------|:------|
| **Board** | Avnet ZedBoard |
| **SoC** | Xilinx Zynq-7020 (XC7Z020-CLG484-1) |
| **Processor** | Dual-core ARM Cortex-A9 @ 667 MHz |
| **FPGA Fabric** | Artix-7 equivalent (53,200 LUTs, 106,400 FFs, 140 BRAMs) |
| **RAM** | 512 MB DDR3 |
| **Accelerator** | Custom HLS IP (`tiny_ecg_inference`) via AXI bus |
| **FCLK** | 50 MHz (PL clock for HLS IP) |
| **Status** | ✅ COMPLETED |

### 2.2 Completed Work

- **HLS IP:** `tiny_ecg_inference` synthesized in Vivado HLS → exported as AXI-mapped IP
- **Vivado Block Design:** PS7 + HLS IP + AXI GPIO (OLED + Buzzer) + AXI Interconnect
- **Vitis App:** `ecg_app/src/helloworld.c` — bare-metal Cortex-A9 application
- **Peripherals Working:** OLED display (SSD1306, bit-banged SPI), Buzzer (PMOD Y11), UART, XADC

### 2.3 Results Already Obtained

| Run | Beats | Accuracy | Notes |
|:----|:-----:|:--------:|:------|
| Subset | 80 | 91.25% | Random subset |
| Subset | 150 | 92.00% | Fixed indices for video demo |
| Subset | 1000 | 91.40% | Larger validation |

- **Per-beat HW Latency:** ~4,511 µs (measured via `XTime` ARM performance counter)
- **Die Temperature:** ~42–45 °C during inference (XADC)

### 2.4 Remaining Benchmarks

> [!IMPORTANT]
> The full 51,170-beat run **crashed** previously (likely stack/memory issue with large arrays + float accumulators). This needs debugging before the paper.

**TODO:**
1. **Full DS2 Benchmark (51,170 beats):** Debug the crash — possible fixes:
   - Increase stack size in linker script (`lscript.ld`)
   - Use integer-only accumulators (avoid float overflow)
   - Disable OLED init during large batch runs
   - Process in chunks if memory is tight
2. **Power Measurement:** Use XADC to read VCCINT, VCCAUX, VCCBRAM during inference:
   ```
   VCCINT ≈ 1.0V (core logic)
   VCCAUX ≈ 1.8V (auxiliary)
   VCCBRAM ≈ 1.0V (block RAM)
   ```
   Record current via external multimeter on J21 power header or compute from XADC voltage rails
3. **FPGA Resource Utilization:** Extract from Vivado → Implementation → Utilization Report:
   - LUTs, FFs, BRAMs, DSPs used by HLS IP
4. **Latency Histogram:** Collect per-beat latency for all 51,170 beats → plot histogram

### 2.5 Tools Already Installed

- AMD Vivado 2026.1
- AMD Vitis Unified IDE 2026.1
- PuTTY (UART terminal, 115200 baud, COM port)
- USB-JTAG drivers for ZedBoard

### 2.6 Hardware Pin Mapping

| Peripheral | Connection | Pins |
|:-----------|:-----------|:-----|
| OLED (SSD1306) | AXI GPIO Ch1 (6-bit), bit-banged SPI | U10, U9, AB12, AA12, U11, U12 |
| Buzzer | AXI GPIO Ch2 (1-bit) | Y11 (PMOD) |
| LED LD9 | PS7 GPIO MIO 7 | On-board |
| UART | PS7 UART1 | USB-UART (Micro-USB) |
| XADC | Internal | On-die temperature + voltage rails |

---

## 3. Board B — NVIDIA Jetson Nano

### 3.1 Platform Summary

| Property | Value |
|:---------|:------|
| **Board** | NVIDIA Jetson Nano Developer Kit (B01) |
| **SoC** | Tegra X1 |
| **CPU** | Quad-core ARM Cortex-A57 @ 1.43 GHz |
| **GPU** | 128-core Maxwell |
| **RAM** | 4 GB LPDDR4 |
| **Storage** | microSD card |
| **Power Modes** | 5W (2-core) / 10W (4-core) |
| **Status** | 🔲 NOT STARTED |

### 3.2 Software Downloads & Setup

#### Step 1: Flash JetPack OS Image

| Item | Download Link |
|:-----|:-------------|
| **JetPack SD Card Image** | https://developer.nvidia.com/embedded/jetpack → Select Jetson Nano → Download SD Card Image |
| **balenaEtcher** | https://etcher.balena.io/ (to flash the SD card) |
| **microSD Card** | 64 GB or larger, UHS-1 speed class recommended |

**Steps:**
1. Download the JetPack SD card image (latest version, e.g., JetPack 4.6.x)
2. Flash to microSD using balenaEtcher
3. Insert into Jetson Nano, connect HDMI + keyboard + power
4. Complete Ubuntu setup (username, password, etc.)
5. Connect to WiFi or Ethernet

#### Step 2: Install Python Environment

```bash
# Update system
sudo apt update && sudo apt upgrade -y

# Install pip and essentials
sudo apt install -y python3-pip python3-dev libopenblas-dev liblapack-dev

# Install numpy
pip3 install numpy

# Install PyTorch (pre-built for Jetson - IMPORTANT: use NVIDIA's wheel, not PyPI)
# Check https://forums.developer.nvidia.com/t/pytorch-for-jetson/ for latest URL
wget https://nvidia.box.com/shared/static/<hash>.whl -O torch-1.10.0-cp36-cp36m-linux_aarch64.whl
pip3 install torch-1.10.0-cp36-cp36m-linux_aarch64.whl

# Install torchvision (optional, not needed for inference)
# pip3 install torchvision
```

> [!NOTE]
> The exact PyTorch wheel URL changes with JetPack version. Always check the **NVIDIA Developer Forums** for the correct wheel: https://forums.developer.nvidia.com/t/pytorch-for-jetson/

#### Step 3: Install TensorRT (Optional — for GPU Inference)

```bash
# TensorRT is pre-installed with JetPack. Verify:
python3 -c "import tensorrt; print(tensorrt.__version__)"

# Install torch2trt for easy PyTorch → TensorRT conversion
git clone https://github.com/NVIDIA-AI-IOT/torch2trt
cd torch2trt
python3 setup.py install
```

#### Step 4: Install Monitoring Tools

```bash
# jtop — real-time CPU/GPU/power monitoring for Jetson
sudo pip3 install jetson-stats
sudo systemctl restart jtop.service

# Usage:
jtop
# Or for logging:
tegrastats --interval 100 > tegrastats_log.txt &
```

### 3.3 Inference Approaches (Choose One or Both)

#### Approach A: Pure Python (CPU-only, simpler)

Create a file `jetson_ecg_benchmark.py`:

```python
import numpy as np
import time

# Load the quantized weights from weights.h (parse or re-export as .npy)
# Or re-implement the INT8 inference in pure numpy

def int8_conv1d(input_data, weights, bias, multiplier, shift, stride, padding):
    """Fixed-point 1D convolution matching HLS implementation."""
    # Pad input
    if padding > 0:
        input_data = np.pad(input_data, ((0,0), (padding, padding)), mode='constant')
    
    out_channels, in_channels, kernel_size = weights.shape
    in_length = input_data.shape[1]
    out_length = (in_length - kernel_size) // stride + 1
    
    output = np.zeros((out_channels, out_length), dtype=np.int32)
    
    for oc in range(out_channels):
        for ol in range(out_length):
            acc = bias[oc]
            for ic in range(in_channels):
                for k in range(kernel_size):
                    acc += int(input_data[ic, ol * stride + k]) * int(weights[oc, ic, k])
            # Requantize
            acc = (acc * multiplier[oc]) >> shift[oc]
            acc = max(0, min(255, acc))  # ReLU + clamp
            output[oc, ol] = acc
    
    return output.astype(np.uint8)

# ... (full implementation follows HLS logic)
```

#### Approach B: PyTorch Quantized Model (CPU or GPU)

```python
import torch
import time
import numpy as np
from model_cnn import TinyECG_CNN

# Load the QAT model
model = TinyECG_CNN()
model.eval()
model.fuse_model()
model.qconfig = torch.ao.quantization.get_default_qconfig('qnnpack')
torch.ao.quantization.prepare(model, inplace=True)
# Calibrate with a few samples, then convert
torch.ao.quantization.convert(model, inplace=True)
model.load_state_dict(torch.load('tiny_ecg_qat_best.pth', map_location='cpu'))

# Load DS2 data (export ds2_all_samples.h to numpy format first)
ds2_samples = np.load('ds2_samples.npy')   # shape: (51170, 90), dtype: uint8
ds2_labels = np.load('ds2_labels.npy')     # shape: (51170,), dtype: uint8

# Benchmark
latencies = []
predictions = []

for i in range(len(ds2_samples)):
    x = torch.tensor(ds2_samples[i], dtype=torch.float32).unsqueeze(0).unsqueeze(0) / 255.0
    
    start = time.perf_counter_ns()
    with torch.no_grad():
        out = model(x)
    end = time.perf_counter_ns()
    
    pred = out.argmax(dim=1).item()
    predictions.append(pred)
    latencies.append((end - start) / 1000)  # ns → µs

# Compute metrics
predictions = np.array(predictions)
TP = np.sum((predictions == 1) & (ds2_labels == 1))
TN = np.sum((predictions == 0) & (ds2_labels == 0))
FP = np.sum((predictions == 1) & (ds2_labels == 0))
FN = np.sum((predictions == 0) & (ds2_labels == 1))

accuracy = 100.0 * (TP + TN) / len(ds2_labels)
# ... etc.
```

#### Approach C: TensorRT INT8 (GPU — Best for Paper)

```python
from torch2trt import torch2trt
import torch

model = TinyECG_CNN()
model.load_state_dict(torch.load('tiny_ecg_qat_best.pth'))
model.eval().cuda()

dummy = torch.randn(1, 1, 90).cuda()
model_trt = torch2trt(model, [dummy], int8_mode=True)

# Benchmark with TensorRT model
# ... similar loop as above but using model_trt
```

### 3.4 Power Measurement on Jetson Nano

The Jetson Nano has **built-in INA3221 power monitors** accessible via sysfs:

```bash
# Read power rails (in milliwatts)
cat /sys/bus/i2c/drivers/ina3221x/6-0040/iio_device/in_power0_input  # POM_5V_IN (total)
cat /sys/bus/i2c/drivers/ina3221x/6-0040/iio_device/in_power1_input  # POM_5V_GPU
cat /sys/bus/i2c/drivers/ina3221x/6-0040/iio_device/in_power2_input  # POM_5V_CPU

# Or use tegrastats:
tegrastats --interval 100
# Output includes: POM_5V_IN xxxx/xxxx (current_mW / average_mW)
```

**Python script to log power during inference:**

```python
import subprocess
import threading
import time

power_log = []
stop_logging = False

def log_power():
    while not stop_logging:
        try:
            with open('/sys/bus/i2c/drivers/ina3221x/6-0040/iio_device/in_power0_input') as f:
                power_mw = int(f.read().strip())
                power_log.append((time.time(), power_mw))
        except:
            pass
        time.sleep(0.01)  # 10ms sampling

# Start power logging thread
power_thread = threading.Thread(target=log_power)
power_thread.start()

# ... run inference benchmark here ...

stop_logging = True
power_thread.join()

avg_power_mw = sum(p for _, p in power_log) / len(power_log)
print(f"Average Power: {avg_power_mw:.1f} mW")
```

### 3.5 Expected Performance (Estimates for Planning)

| Metric | Estimated Range |
|:-------|:---------------|
| Accuracy | ~92% (same model weights) |
| CPU Latency (PyTorch) | ~500–2,000 µs per beat |
| GPU Latency (TensorRT) | ~100–500 µs per beat |
| Power (5W mode) | ~3,000–5,000 mW total system |
| Power (10W mode) | ~5,000–8,000 mW total system |
| Model Size | ~2.9 KB weights + runtime overhead |

### 3.6 Step-by-Step Benchmark Procedure

1. SSH into Jetson Nano or open terminal
2. Set power mode:
   ```bash
   sudo nvpmodel -m 0   # 10W mode (all 4 cores)
   # OR
   sudo nvpmodel -m 1   # 5W mode (2 cores)
   ```
3. Export DS2 data to numpy format (on laptop, then copy to Jetson):
   ```python
   # On laptop:
   import numpy as np
   from ecg_dataset import MITBIH_Dataset, DS2_TEST
   ds = MITBIH_Dataset(DS2_TEST)
   np.save('ds2_samples.npy', ds.inputs)  # (51170, 90)
   np.save('ds2_labels.npy', ds.labels)   # (51170,)
   ```
4. Copy files to Jetson: `scp ds2_samples.npy ds2_labels.npy tiny_ecg_qat_best.pth model_cnn.py jetson_ecg_benchmark.py user@jetson_ip:~/ecg_bench/`
5. Run benchmark: `python3 jetson_ecg_benchmark.py`
6. Record all metrics
7. **Run in both 5W and 10W modes** for the paper comparison

---

## 4. Board C — ESP32

> [!IMPORTANT]
> **This section is written as a standalone manual** for a collaborator to work on the ESP32 deployment independently. It includes all hardware connections, software setup, and implementation details.

### 4.1 Platform Summary

| Property | Value |
|:---------|:------|
| **Board** | ESP32 DevKit (ESP32-WROOM-32 or ESP32-S3) |
| **CPU** | Dual-core Xtensa LX6 @ 240 MHz (or LX7 for S3) |
| **RAM** | 520 KB SRAM (internal) + optional PSRAM |
| **Flash** | 4 MB (typically) |
| **FPU** | Single-precision FPU available |
| **WiFi/BLE** | Built-in (not needed for benchmark) |
| **Status** | 🔲 NOT STARTED |

### 4.2 Hardware Components Available

| Component | Quantity | Notes |
|:----------|:--------:|:------|
| ESP32 DevKit board | 1 | Main microcontroller |
| OLED Display (SSD1306) | 1 | 0.96" 128×64, I2C interface |
| Battery | 1 | Li-Po or Li-Ion (check voltage: 3.7V typical) |
| Breadboard | 1 | Full-size or half-size |
| Jumper Wires | Multiple | Male-to-male and male-to-female |

### 4.3 Hardware Wiring Diagram

#### 4.3.1 OLED Display (SSD1306 — I2C Mode)

```
┌─────────────────┐         ┌──────────────────┐
│    ESP32 DevKit  │         │  OLED SSD1306    │
│                  │         │  (I2C Mode)      │
│     3.3V ●───────┼─────────┤ VCC              │
│      GND ●───────┼─────────┤ GND              │
│  GPIO 21 (SDA) ●─┼─────────┤ SDA              │
│  GPIO 22 (SCL) ●─┼─────────┤ SCL              │
│                  │         └──────────────────┘
└─────────────────┘
```

| OLED Pin | ESP32 Pin | Wire Color (Suggested) |
|:---------|:----------|:----------------------|
| VCC | 3.3V | **Red** |
| GND | GND | **Black** |
| SDA | GPIO 21 | **Blue** |
| SCL | GPIO 22 | **Yellow** |

> [!WARNING]
> - Use **3.3V** (NOT 5V) for the OLED VCC — the ESP32 is a 3.3V device
> - Some OLED modules have the pin order as GND-VCC-SCL-SDA — **check your module's silkscreen**
> - If using a 4-pin module, there's no RST/DC — it's purely I2C
> - I2C address is typically `0x3C` (try `0x3D` if `0x3C` doesn't work)

#### 4.3.2 Battery Connection

```
┌─────────────────┐
│    ESP32 DevKit  │
│                  │
│     VIN ●────────┼──── Battery (+) (Red wire)
│     GND ●────────┼──── Battery (-) (Black wire)
│                  │
└─────────────────┘
```

| Battery Wire | ESP32 Pin | Notes |
|:-------------|:----------|:------|
| Positive (+) | **VIN** (or **5V** pin) | Battery voltage must be 3.7V–6V for VIN |
| Negative (-) | **GND** | Common ground |

> [!CAUTION]
> - **Check battery voltage** — If using a 3.7V Li-Po cell, connect to VIN (it has an on-board regulator)
> - If battery is already regulated to 3.3V, connect to the **3.3V** pin instead of VIN
> - **NEVER** connect battery directly to 3.3V if battery voltage exceeds 3.3V — this will damage the ESP32
> - For **power measurement**, place a multimeter in series with the battery positive wire (measure current in mA)

#### 4.3.3 Full Breadboard Layout

```
                    Breadboard
    ┌─────────────────────────────────────┐
    │  + (Red Power Rail)                 │
    │  - (Blue Ground Rail)               │
    │                                     │
    │   ┌──────────────┐                  │
    │   │   ESP32      │                  │
    │   │   DevKit     │                  │
    │   │              │                  │
    │   │  3.3V ●──────┼──→ + Rail        │
    │   │  GND  ●──────┼──→ - Rail        │
    │   │  G21  ●──────┼──→ OLED SDA      │
    │   │  G22  ●──────┼──→ OLED SCL      │
    │   │  VIN  ●──────┼──→ Battery +     │
    │   │  GND  ●──────┼──→ Battery -     │
    │   │  G2   ●──────┼──→ (Buzzer +)    │  ← OPTIONAL
    │   └──────────────┘                  │
    │                                     │
    │   ┌──────────┐                      │
    │   │  OLED    │                      │
    │   │ VCC ●────┼──→ + Rail (3.3V)     │
    │   │ GND ●────┼──→ - Rail            │
    │   │ SDA ●────┼──→ from G21          │
    │   │ SCL ●────┼──→ from G22          │
    │   └──────────┘                      │
    └─────────────────────────────────────┘
```

### 4.4 Software Downloads & Installation

#### Option A: Arduino IDE (Recommended — Easier)

| Item | Download Link | Version |
|:-----|:-------------|:--------|
| **Arduino IDE** | https://www.arduino.cc/en/software | 2.x (latest) |
| **ESP32 Board Package** | Add via Board Manager (see below) | Latest |

**Setup Steps:**

1. Install Arduino IDE
2. Go to **File → Preferences → Additional Board Manager URLs**, add:
   ```
   https://raw.githubusercontent.com/espressif/arduino-esp32/gh-pages/package_esp32_index.json
   ```
3. Go to **Tools → Board → Board Manager**, search "ESP32", install **"esp32 by Espressif Systems"**
4. Select board: **Tools → Board → ESP32 Dev Module** (or your specific variant)
5. Select port: **Tools → Port → COMx** (the ESP32's USB-Serial port)

**Required Arduino Libraries (install via Library Manager):**

| Library | Author | Purpose |
|:--------|:-------|:--------|
| `Adafruit SSD1306` | Adafruit | OLED display driver |
| `Adafruit GFX Library` | Adafruit | Graphics primitives for OLED |
| `Wire` | Arduino (built-in) | I2C communication |

**Install via:** Sketch → Include Library → Manage Libraries → Search each name → Install

#### Option B: ESP-IDF (Advanced — Better Performance)

| Item | Download Link | Version |
|:-----|:-------------|:--------|
| **ESP-IDF** | https://docs.espressif.com/projects/esp-idf/en/latest/esp32/get-started/ | v5.x |
| **VS Code + ESP-IDF Extension** | https://marketplace.visualstudio.com/items?itemName=espressif.esp-idf-extension | Latest |

### 4.5 Implementing the Model on ESP32

#### 4.5.1 Memory Budget Analysis

```
ESP32 Internal SRAM: 520 KB total
  - System/stack/heap overhead: ~100 KB
  - Available for application:  ~420 KB

Model weights (INT8):          ~2.9 KB   ✅ Fits easily
DS2 samples (51170 × 90):     ~4.6 MB   ❌ Does NOT fit in SRAM
DS2 labels (51170):            ~50 KB    ❌ Borderline

SOLUTION: Stream DS2 data from Flash (PROGMEM / SPIFFS / LittleFS)
```

> [!IMPORTANT]
> The full DS2 dataset (~4.6 MB) does NOT fit in ESP32 SRAM. You MUST store it in **Flash memory** (using `PROGMEM` in Arduino or `const` with flash mapping in ESP-IDF). The ESP32 has 4 MB flash, so the data fits in flash but must be read sample-by-sample.

#### 4.5.2 Arduino Sketch Structure

Create a new Arduino sketch named `ecg_benchmark.ino`:

```cpp
#include <Wire.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>

// --- OLED Setup ---
#define SCREEN_WIDTH 128
#define SCREEN_HEIGHT 64
#define OLED_RESET -1
#define OLED_I2C_ADDR 0x3C
Adafruit_SSD1306 display(SCREEN_WIDTH, SCREEN_HEIGHT, &Wire, OLED_RESET);

// --- Include model weights (copy from weights.h) ---
#include "weights.h"

// --- Include DS2 test data (store in PROGMEM/flash) ---
#include "ds2_data.h"  // Must use PROGMEM for large arrays

// --- Inference buffers ---
int8_t conv1_out[8][45];
int8_t conv2_out[16][23];
int8_t conv3_out[16][12];
int32_t fc_out[2];

// --- INT8 Convolution (matches HLS exactly) ---
void conv1d_int8(const uint8_t* input, int in_ch, int in_len,
                 const int8_t* weight, const int32_t* bias,
                 const int32_t* mult, const int32_t* shift,
                 int out_ch, int kernel, int stride, int pad,
                 int8_t* output, int out_len) {
    for (int oc = 0; oc < out_ch; oc++) {
        for (int ol = 0; ol < out_len; ol++) {
            int32_t acc = bias[oc];
            for (int ic = 0; ic < in_ch; ic++) {
                for (int k = 0; k < kernel; k++) {
                    int pos = ol * stride - pad + k;
                    if (pos >= 0 && pos < in_len) {
                        int8_t w = weight[oc * in_ch * kernel + ic * kernel + k];
                        int8_t x = (int8_t)(input[ic * in_len + pos] - 128); // uint8→int8
                        acc += (int32_t)w * (int32_t)x;
                    }
                }
            }
            // Fixed-point requantization
            int64_t temp = (int64_t)acc * (int64_t)mult[oc];
            temp = temp >> shift[oc];
            // ReLU + clamp to int8
            if (temp < 0) temp = 0;
            if (temp > 127) temp = 127;
            output[oc * out_len + ol] = (int8_t)temp;
        }
    }
}

// Similar functions for conv2, conv3, fc layer...

int run_inference(const uint8_t* ecg_90) {
    // Conv1: input(1,90) → output(8,45)
    conv1d_int8(ecg_90, 1, 90,
                conv1_weight, conv1_bias,
                conv1_multiplier, conv1_shift,
                8, 5, 2, 2,
                (int8_t*)conv1_out, 45);
    
    // Conv2: input(8,45) → output(16,23)
    // conv1d_int8(...);
    
    // Conv3: input(16,23) → output(16,12)
    // conv1d_int8(...);
    
    // FC: flatten(16*12=192) → output(2)
    // fc_int8(...);
    
    return (fc_out[1] > fc_out[0]) ? 1 : 0;
}

void setup() {
    Serial.begin(115200);
    
    // Init OLED
    Wire.begin(21, 22);  // SDA=21, SCL=22
    if (!display.begin(SSD1306_SWITCHCAPVCC, OLED_I2C_ADDR)) {
        Serial.println("[ERROR] OLED init failed!");
    }
    display.clearDisplay();
    display.setTextSize(1);
    display.setTextColor(SSD1306_WHITE);
    display.println("ECG Edge-AI");
    display.println("ESP32 Benchmark");
    display.display();
    delay(2000);
    
    Serial.println("======================================================");
    Serial.println("   Wearable ECG Edge-AI Benchmark (ESP32)");
    Serial.println("======================================================");
    
    int TP = 0, TN = 0, FP = 0, FN = 0;
    
    for (int i = 0; i < DS2_TOTAL_SAMPLES; i++) {
        // Read sample from flash
        uint8_t ecg_sample[90];
        for (int j = 0; j < 90; j++) {
            ecg_sample[j] = pgm_read_byte(&ds2_all_samples[i][j]);
        }
        uint8_t label = pgm_read_byte(&ds2_all_labels[i]);
        
        // Time inference
        unsigned long start_us = micros();
        int pred = run_inference(ecg_sample);
        unsigned long end_us = micros();
        unsigned long latency = end_us - start_us;
        
        // Update confusion matrix
        if (label == 1 && pred == 1) TP++;
        else if (label == 0 && pred == 0) TN++;
        else if (label == 0 && pred == 1) FP++;
        else if (label == 1 && pred == 0) FN++;
        
        // Print progress every 1000 beats
        if (i % 1000 == 0) {
            Serial.printf("Beat %d/%d | Latency: %lu us\n", i, DS2_TOTAL_SAMPLES, latency);
        }
    }
    
    // Print results
    float accuracy = 100.0f * (TP + TN) / DS2_TOTAL_SAMPLES;
    Serial.printf("\nAccuracy: %.2f%%\n", accuracy);
    // ... print all metrics
    
    // Display on OLED
    display.clearDisplay();
    display.setTextSize(2);
    display.printf("Acc:%.1f%%", accuracy);
    display.display();
}

void loop() {
    // Nothing — benchmark runs once in setup()
}
```

#### 4.5.3 Preparing Data Files for ESP32

**Step 1: Convert `weights.h`**
The existing `weights.h` from the Zynq project can be used **directly** — it's pure C with `const int8_t` arrays. Just copy it.

**Step 2: Convert `ds2_all_samples.h` to use PROGMEM**

The original `ds2_all_samples.h` stores data in RAM. For ESP32, it MUST be in flash:

```cpp
// ds2_data.h — ESP32 version with PROGMEM
#include <pgmspace.h>

#define DS2_TOTAL_SAMPLES 51170

const uint8_t ds2_all_samples[DS2_TOTAL_SAMPLES][90] PROGMEM = {
    // ... copy all data from original ds2_all_samples.h ...
};

const uint8_t ds2_all_labels[DS2_TOTAL_SAMPLES] PROGMEM = {
    // ... copy all labels ...
};
```

> [!NOTE]
> If using ESP-IDF instead of Arduino, replace `PROGMEM` with just `const` — ESP-IDF maps `const` data to flash automatically.

**Step 3: Verify flash size**
- Default partition: ~1.2 MB for app. This may NOT be enough for 4.6 MB data.
- **Solution:** Use a **custom partition table** with minimal OTA and maximum app space:

```csv
# partitions.csv — Custom partition for large app
# Name,   Type, SubType, Offset,   Size
nvs,      data, nvs,     0x9000,   0x5000
otadata,  data, ota,     0xe000,   0x2000
app0,     app,  ota_0,   0x10000,  0x3F0000
```

In Arduino IDE: **Tools → Partition Scheme → "Huge APP (3MB No OTA)"** or use the custom CSV above.

### 4.6 Power Measurement on ESP32

#### Method 1: Multimeter in Series (Simplest)

```
Battery (+) ──→ Multimeter (mA mode) ──→ ESP32 VIN
Battery (-) ──→ ESP32 GND
```

1. Set multimeter to **mA DC** mode
2. Connect in series with the battery positive wire
3. Record average current during inference
4. Power (mW) = Current (mA) × Battery Voltage (V)

#### Method 2: INA219 Current Sensor (Automated)

If available, use an INA219 breakout board:

| INA219 Pin | Connection |
|:-----------|:-----------|
| VCC | ESP32 3.3V |
| GND | ESP32 GND |
| SDA | GPIO 21 (shared with OLED — use different I2C address) |
| SCL | GPIO 22 |
| VIN+ | Battery (+) |
| VIN- | ESP32 VIN |

```cpp
#include <Adafruit_INA219.h>
Adafruit_INA219 ina219;

void setup() {
    ina219.begin();
    float current_mA = ina219.getCurrent_mA();
    float voltage_V = ina219.getBusVoltage_V();
    float power_mW = current_mA * voltage_V;
}
```

> [!TIP]
> If using INA219 on the same I2C bus as the OLED, make sure they have different I2C addresses (OLED = 0x3C, INA219 = 0x40 default).

### 4.7 ESP32-Specific Constraints & Tips

| Constraint | Impact | Mitigation |
|:-----------|:-------|:-----------|
| 520 KB SRAM | Cannot hold DS2 in RAM | Use `PROGMEM` (Flash) |
| 4 MB Flash | DS2 (4.6 MB) barely fits | Use custom partition, compress if needed |
| 240 MHz clock | Slower than Cortex-A9 | Pure INT8 math, no float at inference |
| No hardware multiplier for int8 | Convolution is slow | Use ESP32-S3 with vector extensions if available |
| No OS | Single-threaded | Use `micros()` for timing |
| WiFi/BLE | Consumes power | Disable WiFi/BLE during benchmark |

**Disable WiFi/BLE for accurate power measurement:**
```cpp
#include <WiFi.h>
#include <esp_bt.h>

void setup() {
    WiFi.mode(WIFI_OFF);
    esp_bt_controller_disable();
    // ... rest of setup
}
```

### 4.8 Step-by-Step Deployment Checklist for ESP32

- [ ] **Hardware Setup**
  - [ ] Place ESP32 on breadboard
  - [ ] Wire OLED display (VCC→3.3V, GND→GND, SDA→GPIO21, SCL→GPIO22)
  - [ ] Wire battery (if using: +→VIN, -→GND)
  - [ ] Connect USB cable to PC for programming + Serial Monitor

- [ ] **Software Setup**
  - [ ] Install Arduino IDE 2.x
  - [ ] Add ESP32 board URL to Board Manager
  - [ ] Install ESP32 board package
  - [ ] Install Adafruit SSD1306 library
  - [ ] Install Adafruit GFX library
  - [ ] Select correct board and COM port

- [ ] **Code Preparation**
  - [ ] Copy `weights.h` from Zynq project (no changes needed)
  - [ ] Convert `ds2_all_samples.h` → add `PROGMEM` to all arrays
  - [ ] Implement `conv1d_int8()` function (match HLS/Zynq logic exactly)
  - [ ] Implement `conv2d_int8()` for conv2 and conv3
  - [ ] Implement `fc_int8()` for fully-connected layer
  - [ ] Implement `run_inference()` that chains all layers
  - [ ] Set partition scheme to "Huge APP (3MB No OTA)"

- [ ] **Verification**
  - [ ] Test OLED display with "Hello World" sketch first
  - [ ] Test inference on 1 known beat — compare output with Zynq/Python
  - [ ] Verify that the predicted class matches for at least 10 test beats

- [ ] **Benchmarking**
  - [ ] Run all 51,170 DS2 beats
  - [ ] Record per-beat latency (µs) — mean, min, max, std
  - [ ] Record confusion matrix (TP, TN, FP, FN)
  - [ ] Measure power consumption during inference (multimeter or INA219)
  - [ ] Record total inference time

- [ ] **Results to Report**
  - [ ] Accuracy, Precision, Recall, Specificity, F1
  - [ ] Mean latency (µs) ± std
  - [ ] Power (mW)
  - [ ] Energy per inference (µJ)
  - [ ] Throughput (beats/sec)

---

## 5. Results Table Template

Use this table format for the paper:

| Metric | Zynq ZedBoard | Jetson Nano (5W) | Jetson Nano (10W) | ESP32 |
|:-------|:-------------:|:----------------:|:-----------------:|:-----:|
| **Processor** | Cortex-A9 + FPGA HLS | Cortex-A57 (CPU) | Cortex-A57 (CPU) | Xtensa LX6 |
| **Clock (MHz)** | 667 (CPU) / 50 (PL) | 1,430 | 1,430 | 240 |
| **RAM** | 512 MB DDR3 | 4 GB LPDDR4 | 4 GB LPDDR4 | 520 KB SRAM |
| **Accuracy (%)** | | | | |
| **Precision (%)** | | | | |
| **Recall (%)** | | | | |
| **Specificity (%)** | | | | |
| **F1-Score (%)** | | | | |
| **Mean Latency (µs)** | | | | |
| **Min Latency (µs)** | | | | |
| **Max Latency (µs)** | | | | |
| **Throughput (beats/s)** | | | | |
| **Power (mW)** | | | | |
| **Energy/Inference (µJ)** | | | | |
| **Model Size (KB)** | 2.9 | 2.9 | 2.9 | 2.9 |

---

## 6. Paper Figures Checklist

| Figure | Description | Source |
|:-------|:------------|:-------|
| Fig. 1 | System architecture diagram (all 3 boards) | Draw in draw.io / LaTeX TikZ |
| Fig. 2 | TinyECG_CNN model architecture | Already available |
| Fig. 3 | Training curves (loss + accuracy vs epoch) | Generate from training logs |
| Fig. 4 | Confusion matrix heatmap (per platform) | Generate from benchmark results |
| Fig. 5 | Latency comparison bar chart (3 boards) | Generate from benchmark results |
| Fig. 6 | Power consumption comparison | Generate from measurements |
| Fig. 7 | Energy-per-inference comparison | Compute from latency × power |
| Fig. 8 | Accuracy vs Latency scatter plot | Combine all board results |
| Fig. 9 | Hardware photos (all 3 setups) | Take photos |
| Fig. 10 | ROC curves (per platform) | Generate from prediction probabilities |

---

## Appendix A: File Structure

```
ECG-Embedded_System/
├── Wearable_ECG_EdgeAI/
│   ├── model_cnn.py                    # PyTorch model definition
│   ├── train_model_qat.py              # QAT training script
│   ├── ecg_dataset.py                  # Dataset loader
│   ├── export_weights_to_cpp.py        # Weight export to C headers
│   ├── evaluate_ds2_full.py            # Full DS2 evaluation (laptop)
│   ├── saved_models/
│   │   └── tiny_ecg_qat_best.pth       # Best trained model
│   ├── hls/
│   │   └── tiny_ecg_inference.cpp      # HLS C++ for FPGA synthesis
│   └── vitis_workspace_new/
│       └── ecg_app/src/
│           ├── helloworld.c            # Zynq bare-metal application
│           ├── weights.h               # INT8 weights (shared across platforms)
│           ├── ds2_all_samples.h        # DS2 test data (51,170 × 90)
│           └── oled.h                  # OLED driver for Zynq
├── References/
│   ├── Cross Architecture Benchmark Manual.md  ← THIS FILE
│   └── Results for Zync/
│       └── Full DS2 benchmark Board.txt
└── README.md
```

## Appendix B: Quick Reference — Key Numbers

| Parameter | Value |
|:----------|:------|
| Input size | 90 samples × 1 byte = 90 bytes |
| Output size | 2 bytes (logits) |
| Model parameters | ~2,900 |
| Model size (INT8) | ~2.9 KB |
| DS2 test beats | 51,170 |
| DS2 data size | ~4.6 MB |
| Classes | 2 (Normal=0, Anomaly=1) |
| Training method | QAT (Quantization-Aware Training) |
| Quantization | INT8 weights, INT32 accumulators |
| Conv1 | 1→8 ch, k=5, s=2, p=2 → 45 outputs |
| Conv2 | 8→16 ch, k=5, s=2, p=2 → 23 outputs |
| Conv3 | 16→16 ch, k=3, s=2, p=1 → 12 outputs |
| FC | 192→2 |

---

*Last updated: November 8, 2026*
*Authors: [Your Names]*
