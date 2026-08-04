"""visualize_3_patients_matched.py: Extracts a Normal and Anomaly heartbeat from 
THREE specific patients to demonstrate pure morphological changes side-by-side."""

import os
import glob
import wfdb
import numpy as np
import matplotlib
matplotlib.use('Agg') # Bypass GUI crash
import matplotlib.pyplot as plt

def normalize_tensor(signal):
    """Applies standard Min-Max normalization to bound between -1.0 and 1.0"""
    min_val = np.min(signal)
    max_val = np.max(signal)
    if max_val == min_val:
        return signal
    return 2 * ((signal - min_val) / (max_val - min_val)) - 1

def generate_matched_ppt_grid(data_dir="mitdb_data", output_file="Matched_3_Patients_Review.png"):
    print("======================================================")
    print("--- GENERATING 3-PATIENT MATCHED TENSOR GRID ---")
    print("======================================================")

    search_path = os.path.join(data_dir, "*.dat")
    dat_files = glob.glob(search_path)
    
    if not dat_files:
        print(f"[CRITICAL ERROR] No raw .dat files found in '{data_dir}/'.")
        return

    # Extract record IDs and sort them
    record_names = sorted([os.path.splitext(os.path.basename(f))[0] for f in dat_files])
    matched_patients = []
    
    print("Scanning database for 3 distinct patients exhibiting both Normal and PVC arrhythmias...")
    
    # Loop through records until we find 3 valid patients
    for rec in record_names:
        if len(matched_patients) >= 3:
            break
        try:
            ann = wfdb.rdann(os.path.join(data_dir, rec), 'atr')
            symbols = np.array(ann.symbol)
            if 'N' in symbols and 'V' in symbols:
                n_indices = ann.sample[symbols == 'N']
                v_indices = ann.sample[symbols == 'V']
                
                # Ensure we have enough data (skip the first few beats to avoid sensor setup noise)
                if len(n_indices) > 5 and len(v_indices) > 5:
                    matched_patients.append({
                        'record': rec,
                        'normal_idx': n_indices[5],
                        'anomaly_idx': v_indices[5]
                    })
        except Exception:
            continue

    if len(matched_patients) < 3:
        print(f"[ERROR] Could only find {len(matched_patients)} suitable patients.")
        return

    print(f"✅ Selected Patients: {[p['record'] for p in matched_patients]}")
    print("Plotting the 2x3 standardized tensor grid...")
    
    # Set up the PPT slide layout (16:9 widescreen)
    fig, axes = plt.subplots(2, 3, figsize=(16, 9))
    fig.suptitle("Morphological Comparison: Matched Normal vs. Anomaly Beats (90-Point Tensors)", fontsize=20, fontweight='bold')

    window = 45 # 45 points before and after the peak (90 total)

    # Plot data column by column (Patient by Patient)
    for col, patient_data in enumerate(matched_patients):
        rec = patient_data['record']
        n_idx = patient_data['normal_idx']
        v_idx = patient_data['anomaly_idx']
        
        # Read just enough of the record to extract both beats
        max_read = max(n_idx, v_idx) + 500
        record = wfdb.rdrecord(os.path.join(data_dir, rec), sampto=max_read)
        
        # Extract raw signal array
        raw_normal = record.p_signal[n_idx - window : n_idx + window, 0]
        raw_anomaly = record.p_signal[v_idx - window : v_idx + window, 0]

        # Apply CNN normalization math
        tensor_normal = normalize_tensor(raw_normal)
        tensor_anomaly = normalize_tensor(raw_anomaly)

        # -----------------------------------------
        # Plot Normal (Top Row)
        # -----------------------------------------
        axes[0, col].plot(tensor_normal, color='#2ca02c', linewidth=2.5) # Green
        axes[0, col].set_title(f"Patient {rec}: Normal Beat", fontsize=15, pad=10)
        axes[0, col].set_ylim([-1.2, 1.2])
        axes[0, col].grid(True, linestyle='--', alpha=0.6)
        if col == 0:
            axes[0, col].set_ylabel("Normalized Voltage", fontsize=12)

        # -----------------------------------------
        # Plot Anomaly (Bottom Row)
        # -----------------------------------------
        axes[1, col].plot(tensor_anomaly, color='#d62728', linewidth=2.5) # Red
        axes[1, col].set_title(f"Patient {rec}: Anomaly (PVC)", fontsize=15, pad=10)
        axes[1, col].set_ylim([-1.2, 1.2])
        axes[1, col].grid(True, linestyle='--', alpha=0.6)
        axes[1, col].set_xlabel("Time Steps (90 Points)", fontsize=12)
        if col == 0:
            axes[1, col].set_ylabel("Normalized Voltage", fontsize=12)

    plt.tight_layout(rect=[0, 0.03, 1, 0.95]) 
    plt.savefig(output_file, dpi=300) 
    
    print(f"\n✅ SUCCESS: 3-Patient Grid saved as '{output_file}'")
    print("======================================================")

if __name__ == "__main__":
    generate_matched_ppt_grid()
