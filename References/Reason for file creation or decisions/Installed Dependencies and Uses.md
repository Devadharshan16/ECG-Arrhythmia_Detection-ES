### 1. **`torch` (PyTorch — CPU Edition)**

- **What it is:** The primary deep learning framework used to design, train, and compress your neural network.
    
- **Why you need it here:** You are not just training a standard model; you are building `TinyECG_CNN` to fit under a strict **15 KB Block RAM limit**. You need PyTorch specifically for three advanced edge-AI tasks:
    
    - **Quantization-Aware Training (QAT):** Using the x86-optimized `fbgemm` backend to simulate 8-bit integer (**INT8**) math during training, preparing the weights for your FPGA's 8 physical DSP multipliers.
        
    - **Model Pruning:** Using `torch.nn.utils.prune` to strip away the 20% least important synaptic weights (L1 unstructured pruning) so the model fits in silicon memory.
        
    - **Quantization Stubs:** Injecting `QuantStub()` and `DeQuantStub()` at the input and output layers to define exact boundaries for integer conversion.
        

### 2. **`wfdb` (Waveform Database Library)**

- **What it is:** A specialized library developed by PhysioNet for reading, writing, and processing medical waveform data.
    
- **Why you need it here:** Instead of manually downloading and parsing raw clinical files, `wfdb` allows Python to directly download or stream the **MIT-BIH Arrhythmia Database**. You use it to pull the 360 Hz ECG voltage traces (like Patient Record 100) along with the expert cardiologist annotation files (`.atr`) that mark the precise timestamp and classification of every heartbeat.
    

### 3. **`scipy` (Scientific Python — `scipy.signal`)**

- **What it is:** A mathematical and engineering library containing algorithms for digital signal processing (DSP).
    
- **Why you need it here:** Your FPGA cannot waste hardware logic or BRAM trying to learn how to ignore background noise. You use `scipy.signal` in software to clean the ECG waveform before slicing it:
    
    - **`scipy.signal.butter` & `filtfilt`:** To create a **0.5 Hz high-pass filter** that removes slow baseline drift caused by patient breathing.
        
    - **`scipy.signal.iirnotch`:** To apply a **50/60 Hz notch filter** that surgically eliminates electrical wall-hum picked up by the sensor cables.
        

### 4. **`numpy` (Numerical Python)**

- **What it is:** The foundational package for high-performance array and matrix manipulation in Python.
    
- **Why you need it here:** Once the ECG signal is filtered, you use NumPy to slice the heartbeat around the R-peak into exact **90-point time-series windows** (representing 250 milliseconds of cardiac activity at 360 Hz). You also use NumPy to min-max normalize these amplitudes to a strict **[-1.0, 1.0] range** (preventing clipping during INT8 quantization) and to format the weight matrices before exporting them to your static C/C++ header file (`weights.h`).
    

### 5. **`matplotlib` (Matplotlib)**

- **What it is:** A comprehensive plotting and data visualization library.
    
- **Why you need it here:** You need visual verification at every step of Phase 1. You use Matplotlib to render diagnostic graphs—such as overlaying expert red annotation dots directly on top of raw voltage peaks in Record 100, comparing noisy vs. filtered signals, and inspecting the 90-point R-peak segmentation windows before feeding them into the PyTorch tensor dataset.
    

### 6. **Supporting & System Libraries (Auto-Installed)**

When you ran the installation, `pip` also pulled in several mandatory backend utilities:

- **`typing-extensions`, `six`, `python-dateutil`:** Syntax and type-checking compatibility layers required by SciPy and Matplotlib.
    
- **`requests`, `urllib3`, `certifi`, `aiohttp`:** Networking and SSL certificate libraries used by `wfdb` to securely connect to PhysioNet's cloud servers and stream MIT-BIH patient records over the internet.
    
- **`pillow`, `fonttools`, `kiwisolver`:** Graphics-rendering engines used by Matplotlib to calculate graph axes, render UI text, and save plots as image artifacts.