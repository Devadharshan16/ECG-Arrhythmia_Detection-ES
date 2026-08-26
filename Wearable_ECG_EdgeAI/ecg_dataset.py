import os
import numpy as np
import torch
from torch.utils.data import Dataset
import wfdb
import scipy.signal as signal

# AAMI / de Chazal Standard DS1/DS2 Split
DS1_TRAIN = ['101', '106', '108', '109', '112', '114', '115', '116', '118', '119', '122', '124', '201', '203', '205', '207', '208', '209', '215', '220', '223', '230']
DS2_TEST = ['100', '103', '105', '111', '113', '117', '121', '123', '200', '202', '210', '212', '213', '214', '219', '221', '222', '228', '231', '232', '233', '234']
# Note: 102, 104, 107, 217 are paced beats, excluded per AAMI standards.

def apply_digital_filters(sig, fs=360.0):
    nyquist = 0.5 * fs
    b_hp, a_hp = signal.butter(2, 0.5 / nyquist, btype="highpass")
    sig_hp = signal.filtfilt(b_hp, a_hp, sig)

    b_notch, a_notch = signal.iirnotch(60.0 / nyquist, Q=30.0)
    return signal.filtfilt(b_notch, a_notch, sig_hp)

class MITBIH_Dataset(Dataset):
    """
    Dynamically loads patient .dat files into memory, applies filters,
    and segments beats. This prevents saving massive .npy tensors to disk
    and ensures strict DS1/DS2 patient separation to avoid Data Leakage.
    """
    def __init__(self, data_dir, patient_ids, window_size=90):
        self.window_size = window_size
        self.half_win = window_size // 2
        self.normal_symbols = {"N", "L", "R", "e", "j"}
        
        X_data_list = []
        y_data_list = []
        
        print(f"Dynamically loading {len(patient_ids)} patient records into memory...")
        for rec_id in patient_ids:
            rec_path = os.path.join(data_dir, rec_id).replace('\\', '/')
            try:
                record = wfdb.rdrecord(rec_path)
                annotation = wfdb.rdann(rec_path, "atr")
            except Exception as e:
                print(f" -> Skipping Record {rec_id}: Could not load ({str(e)})")
                continue
                
            raw_sig = record.p_signal[:, 0] # MLII Lead
            clean_sig = apply_digital_filters(raw_sig, fs=record.fs)
            
            peaks = annotation.sample
            symbols = annotation.symbol
            
            for peak, sym in zip(peaks, symbols):
                if peak - self.half_win < 0 or peak + self.half_win >= len(clean_sig):
                    continue
                
                window = clean_sig[peak - self.half_win : peak + self.half_win]
                
                w_min, w_max = np.min(window), np.max(window)
                if w_max - w_min == 0:
                    continue
                
                # Min-Max Normalization to [-1.0, 1.0]
                norm_win = 2.0 * ((window - w_min) / (w_max - w_min)) - 1.0
                
                X_data_list.append(np.expand_dims(norm_win, axis=0)) # (1, 90)
                label = 0 if sym in self.normal_symbols else 1
                y_data_list.append(label)
                
        self.X_data = torch.tensor(np.array(X_data_list, dtype=np.float32))
        self.y_data = torch.tensor(np.array(y_data_list, dtype=np.int64))
        
        print(f"Success! Loaded {len(self.y_data)} beats dynamically (Memory footprint optimized).")

    def __len__(self):
        return len(self.y_data)

    def __getitem__(self, idx):
        return self.X_data[idx], self.y_data[idx]
