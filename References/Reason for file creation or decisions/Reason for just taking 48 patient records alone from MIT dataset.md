### 1. You Are Actually Training on ~110,000 Heartbeats

Each of the 48 records in the MIT-BIH Arrhythmia Database is a continuous, **30-minute dual-channel recording** sampled at $360\text{ Hz}$.

- $48\text{ records} \times 30\text{ minutes} = \mathbf{24\text{ hours}}$ of continuous clinical ECG data.
    
- At an average human heart rate, 24 hours of ECG footage yields **approximately 109,000 to 110,000 individually annotated heartbeats** (R-peaks).
    

Because your preprocessing pipeline slices the signal into a 90-point time-series window around every single R-peak, your neural network is not learning from 48 examples—it is training on **~110,000 distinct time-series tensors**.

### 2. The Data-to-Parameter Ratio is Ideal for Your FPGA

In deep learning, you must balance the size of your dataset against the size of your model to prevent **overfitting** (where the model memorizes the data instead of learning the patterns).

- Your hardware limit on the Lattice iCE40UP5K FPGA requires a model under **15 KB**, meaning `TinyECG_CNN` will have **fewer than 15,000 total parameters**.
    
- Feeding **110,000 labeled heartbeat samples** into a **15,000-parameter model** gives you a sample-to-parameter ratio greater than **7-to-1**. This is a exceptionally healthy mathematical ratio that guarantees your model will generalize well when deployed on real-world silicon.
    

### 3. It Contains Clinical Benchmark Variety

The 48 records were specifically chosen by the Massachusetts Institute of Technology and Beth Israel Hospital to cover a wide range of rare and complex cardiac anomalies. Hidden inside those 110,000 heartbeats are roughly:

- **~75,000 Normal beats** (Class `'N'`)
    
- **~7,000 Premature Ventricular Contractions (PVCs)** (Class `'V'`)
    
- **~8,000 Paced and Fusion beats**
    
- **~20,000 other arrhythmias** (Atrial premature beats, bundle branch blocks, etc.)
    

Even after we apply class weighting in your PyTorch loss function to handle the imbalance between normal and arrhythmic beats, you still have thousands of distinct arrhythmia examples to train your convolutional filters on.

### 4. Academic Gold Standard

If you look at published literature in **IEEE Transactions on Computer-Aided Design (TCAD)** or **IEEE Embedded Systems Letters (ESL)**—the exact target journals for your project—virtually every ultra-low-power ECG hardware accelerator paper published in the last decade uses this exact 48-record MIT-BIH database as its primary benchmark for accuracy and area-power tradeoffs.