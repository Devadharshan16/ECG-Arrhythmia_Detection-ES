import os
import numpy as np
import scipy.signal as signal
import wfdb

def apply_digital_filters(sig, fs=360.0):
    nyquist = 0.5 * fs
    b_hp, a_hp = signal.butter(2, 0.5 / nyquist, btype="highpass")
    sig_hp = signal.filtfilt(b_hp, a_hp, sig)
    b_notch, a_notch = signal.iirnotch(60.0 / nyquist, Q=30.0)
    return signal.filtfilt(b_notch, a_notch, sig_hp)

def process_out_of_distribution_data(records_to_process=5, window_size=90):
    print(f"--- Fetching {records_to_process} New Patients from INCART Database ---")
    # Fetch record names directly from the PhysioNet cloud
    record_list = wfdb.get_record_list('incartdb')[:records_to_process]
    
    X_windows = []
    y_labels = []
    normal_symbols = {"N", "L", "R", "e", "j"}
    half_win = window_size // 2

    for rec_id in record_list:
        print(f" -> Downloading & Processing Record {rec_id}...")
        # Read from cloud (pn_dir)
        record = wfdb.rdrecord(rec_id, pn_dir='incartdb', channels=[0]) 
        annotation = wfdb.rdann(rec_id, 'atr', pn_dir='incartdb')
        
        raw_sig = record.p_signal[:, 0]
        orig_fs = record.fs # INCART is 257 Hz
        target_fs = 360.0   # MIT-BIH is 360 Hz
        
        # 1. Resample to match the AI's physical expectation
        num_samples = int(len(raw_sig) * (target_fs / orig_fs))
        resampled_sig = signal.resample(raw_sig, num_samples)
        
        # 2. Clean
        clean_sig = apply_digital_filters(resampled_sig, fs=target_fs)
        
        # 3. Scale peak annotations to the new sampling rate
        peaks = np.round(annotation.sample * (target_fs / orig_fs)).astype(int)
        symbols = annotation.symbol
        
        for peak, sym in zip(peaks, symbols):
            if peak - half_win < 0 or peak + half_win >= len(clean_sig):
                continue
            window = clean_sig[peak - half_win : peak + half_win]
            w_min, w_max = np.min(window), np.max(window)
            if w_max - w_min == 0: 
                continue
            
            norm_win = 2.0 * ((window - w_min) / (w_max - w_min)) - 1.0
            X_windows.append(norm_win)
            y_labels.append(0 if sym in normal_symbols else 1)

    X_arr = np.array(X_windows, dtype=np.float32)
    y_arr = np.array(y_labels, dtype=np.int64)
    X_arr = np.expand_dims(X_arr, axis=1) # (N, 1, 90)
    
    return X_arr, y_arr

if __name__ == "__main__":
    # Save to a COMPLETELY DIFFERENT folder
    output_dir = "incart_tensors"
    os.makedirs(output_dir, exist_ok=True)
    
    X_data, y_data = process_out_of_distribution_data()
    
    if len(X_data) > 0:
        np.save(f"{output_dir}/X_data.npy", X_data)
        np.save(f"{output_dir}/y_data.npy", y_data)
        print("\n==================================================")
        print("--- OUT-OF-DISTRIBUTION DATA READY ---")
        print(f"Total Extracted Heartbeats: {len(y_data)}")
        print(f"Saved cleanly to '{output_dir}/'")
        print("==================================================")
