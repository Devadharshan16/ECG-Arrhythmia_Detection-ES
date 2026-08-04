"""plot_chunked_dataset.py: Extracts the complete MIT-BIH dataset by generating
a dedicated folder for each patient, breaking their 30-minute record into 
manageable 5-minute chunks for Image plots ONLY.

Upgraded: Dynamically highlights Normal beats (Green) and Anomaly beats (Red)."""

import os
import glob
import wfdb
import numpy as np
import matplotlib
matplotlib.use('Agg') # Prevents RAM overflow and GUI crashes
import matplotlib.pyplot as plt
import gc

def plot_chunked_dataset(data_dir="mitdb_data", output_dir="Dataset_Organized_Plots", chunk_minutes=5):
    print("======================================================")
    print(f"--- BATCH EXPORT: {chunk_minutes}-MINUTE HIGHLIGHTED PLOTS ---")
    print("======================================================")

    os.makedirs(output_dir, exist_ok=True)
    
    search_path = os.path.join(data_dir, "*.dat")
    dat_files = glob.glob(search_path)
    
    if not dat_files:
        print(f"[CRITICAL ERROR] No .dat files found in '{data_dir}'.")
        return

    record_names = sorted([os.path.splitext(os.path.basename(f))[0] for f in dat_files])
    print(f"Found {len(record_names)} patients. Creating organized directory structure...\n")

    # Define the normal symbols based on your Phase 1 preprocessing logic
    normal_symbols = {"N", "L", "R", "e", "j"}
    window_half = 45 # 90-point window (45 before, 45 after)

    for record_name in record_names:
        # Create a dedicated folder for this specific patient
        patient_folder = os.path.join(output_dir, f"Patient_{record_name}")
        os.makedirs(patient_folder, exist_ok=True)
        
        print(f"📁 Plotting Patient {record_name}...")

        try:
            # Read full record
            record = wfdb.rdrecord(os.path.join(data_dir, record_name))
            annotation = wfdb.rdann(os.path.join(data_dir, record_name), 'atr')
            
            fs = record.fs # 360 Hz
            total_samples = record.sig_len
            chunk_samples = chunk_minutes * 60 * fs
            total_chunks = int(np.ceil(total_samples / chunk_samples))
            
            ann_symbols = np.array(annotation.symbol)
            ann_samples = np.array(annotation.sample)

            for i in range(total_chunks):
                start_idx = i * chunk_samples
                end_idx = min((i + 1) * chunk_samples, total_samples)
                
                start_min = i * chunk_minutes
                end_min = start_min + chunk_minutes
                
                file_suffix = f"{start_min}_to_{end_min}_mins"
                
                # --- 1. SLICE DATA ---
                time_slice = np.arange(start_idx, end_idx) / fs
                sig_slice_ch0 = record.p_signal[start_idx:end_idx, 0]
                
                # Find annotations that fall strictly within this 5-minute window
                mask = (ann_samples >= start_idx) & (ann_samples < end_idx)
                chunk_ann_samples = ann_samples[mask]
                chunk_ann_symbols = ann_symbols[mask]

                # --- 2. EXPORT IMAGE PLOT CHUNK ONLY ---
                png_path = os.path.join(patient_folder, f"Patient_{record_name}_{file_suffix}.png")
                
                # 40-inch width is perfect for 5 minutes (clean, highly readable)
                plt.figure(figsize=(40, 6)) 
                
                # Plot the background continuous signal in subtle gray
                plt.plot(time_slice, sig_slice_ch0, color='#B0B0B0', linewidth=0.8, alpha=0.7)

                # Overlay highlighted beats and annotations
                for sym, abs_idx in zip(chunk_ann_symbols, chunk_ann_samples):
                    # Convert absolute index from the whole record to relative index for this 5-minute chunk
                    rel_idx = abs_idx - start_idx
                    
                    # Calculate exactly where the 90-point window falls for this beat
                    win_start = max(0, rel_idx - window_half)
                    win_end = min(len(sig_slice_ch0), rel_idx + window_half)
                    
                    t_win = time_slice[win_start:win_end]
                    sig_win = sig_slice_ch0[win_start:win_end]
                    
                    # Differentiate Normal vs Anomaly colors
                    if sym in normal_symbols:
                        beat_color = '#2ca02c' # Green for Normal
                        z_order = 2
                    else:
                        beat_color = '#d62728' # Red for Anomaly (PVCs, etc.)
                        z_order = 3 # Ensure red anomalies always render on top if they overlap

                    # Highlight the specific 90-point beat over the gray baseline
                    plt.plot(t_win, sig_win, color=beat_color, linewidth=2.0, zorder=z_order)

                    # Add the annotation text floating above the peak
                    plt.annotate(sym, xy=(abs_idx / fs, sig_slice_ch0[rel_idx]),
                                 xytext=(0, 15), textcoords='offset points',
                                 color=beat_color, fontsize=12, fontweight='bold', ha='center')

                plt.title(f"Patient {record_name} Highlighted ECG Strip (Minutes {start_min} to {end_min})", fontsize=20, fontweight='bold')
                plt.xlabel("Time (Seconds)", fontsize=14)
                plt.ylabel("Voltage (mV)", fontsize=14)
                plt.grid(True, linestyle='--', alpha=0.5)
                
                plt.tight_layout()
                plt.savefig(png_path, dpi=150)
                plt.close('all')
                
            # Clear memory after finishing a patient
            gc.collect()
            print(f"   -> Saved {total_chunks} Highlighted Images.")

        except Exception as e:
            print(f"   -> [FAILED] Error: {e}")

    print("======================================================")
    print(f"✅ SUCCESS: Complete highlighted plot dataset built at '{output_dir}/'")

if __name__ == "__main__":
    plot_chunked_dataset()
