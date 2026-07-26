### 1. Why We Apply Digital Filtering (0.5 Hz Butterworth High-Pass Filter & 60 Hz IIR Notch Filter)

When a patient is hooked up to an ECG, two major types of interference corrupt the raw signal:

- **Respiration Drift (Baseline Wander):** As a patient breathes, their chest expands and contracts, causing the baseline voltage of the ECG to slowly drift up and down. We apply a **0.5 Hz high-pass filter** to strip away these very slow, low-frequency breathing waves, anchoring the heartbeat flat on the horizontal axis without distorting its shape.
    
- **Electrical Wall-Hum (Mains Hum):** Standard wall outlets and hospital lights emit an alternating current frequency of 50 Hz or 60 Hz that radiates into the sensor wires. We apply a **50/60 Hz notch filter** to surgically remove this exact electrical buzz so it doesn't mask the heart's natural microvolt activity.
    

**Why this matters for your FPGA:** On massive server GPUs, engineers often feed noisy, unfiltered data directly into deep AI models and let extra neural network layers learn to ignore the background noise. On the Lattice iCE40UP5K FPGA, you have a strict **15 KB Block RAM limit** and only **8 physical DSP multiplier blocks**. We cannot afford to waste a single logic gate or memory byte teaching a network how to ignore breathing hum. By cleaning the signal first in software, our 8-bit integer (INT8) neural network receives a pure cardiac waveform where every amplitude change corresponds exclusively to real anatomical heart events.

### 2. What the 360 Hz Sampling Rate Means for Our Architecture

In digital signal processing, the "sampling rate" (or sampling frequency, abbreviated as $f_s$) tells you how many discrete measurements an analog-to-digital converter takes per second. Because the MIT-BIH Arrhythmia Database was recorded at **360 Hz**, every 1 second of recorded time contains exactly 360 voltage numbers in our array.

This sampling rate is the mathematical foundation for how we slice data for our FPGA memory budget:

- **The 90-Point Window Calculation:** To classify a heartbeat, we need to analyze the full cardiac cycle (the P-QRS-T complex). At a speed of 360 samples per second, a standardized window of **90 data points** captures exactly **250 milliseconds** of time ($90 \div 360 = 0.25\text{ seconds}$).
    
- **The Memory Connection:** A 250-millisecond window is wide enough to capture the entire anatomical shape of an arrhythmia, yet compact enough that the resulting `TinyECG_CNN` parameter weights stay well under our 15 KB Block RAM hardware ceiling.