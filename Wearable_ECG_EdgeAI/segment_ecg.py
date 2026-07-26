import os
import numpy as np
import scipy.signal as signal
import wfdb


def apply_digital_filters(sig, fs=360.0):
  """Applies 0.5 Hz Butterworth high-pass and 60 Hz notch filter."""
  nyquist = 0.5 * fs
  b_hp, a_hp = signal.butter(2, 0.5 / nyquist, btype="highpass")
  sig_hp = signal.filtfilt(b_hp, a_hp, sig)

  b_notch, a_notch = signal.iirnotch(60.0 / nyquist, Q=30.0)
  return signal.filtfilt(b_notch, a_notch, sig_hp)


def extract_dataset_tensors(local_dir="mitdb_data", window_size=90):
  half_win = window_size // 2
  normal_symbols = {"N", "L", "R", "e", "j"}

  X_windows = []
  y_labels = []

  # Verify the directory actually exists
  if not os.path.exists(local_dir):
    print(f"[ERROR] Directory '{local_dir}' does not exist!")
    return None, None

  # Find all unique patient IDs by looking for .dat files
  all_files = os.listdir(local_dir)
  record_ids = sorted(
      list(set([f.split(".")[0] for f in all_files if f.endswith(".dat")]))
  )

  print(
      f"Found {len(record_ids)} total records in '{local_dir}'. Starting extraction..."
  )

  success_count = 0
  for rec_id in record_ids:
    # Use clean, forward-slash paths which wfdb prefers on all OS platforms
    rec_path = f"{local_dir}/{rec_id}"

    try:
      record = wfdb.rdrecord(rec_path)
      annotation = wfdb.rdann(rec_path, "atr")
    except Exception as e:
      print(f" -> Skipping Record {rec_id}: Could not load ({str(e)})")
      continue

    raw_sig = record.p_signal[:, 0]
    clean_sig = apply_digital_filters(raw_sig, fs=record.fs)

    peaks = annotation.sample
    symbols = annotation.symbol

    beats_in_record = 0
    for peak, sym in zip(peaks, symbols):
      if peak - half_win < 0 or peak + half_win >= len(clean_sig):
        continue

      window = clean_sig[peak - half_win : peak + half_win]

      w_min, w_max = np.min(window), np.max(window)
      if w_max - w_min == 0:
        continue

      norm_win = 2.0 * ((window - w_min) / (w_max - w_min)) - 1.0

      X_windows.append(norm_win)
      label = 0 if sym in normal_symbols else 1
      y_labels.append(label)
      beats_in_record += 1

    print(
        f" -> Record {rec_id} successfully processed: Extracted {beats_in_record} heartbeats."
    )
    success_count += 1

  if len(X_windows) == 0:
    print("\n[CRITICAL ERROR] Zero heartbeats were extracted!")
    return None, None

  X_arr = np.array(X_windows, dtype=np.float32)
  y_arr = np.array(y_labels, dtype=np.int64)

  # Reshape to PyTorch Conv1d format: (Samples, Channels, Length) -> (N, 1, 90)
  X_arr = np.expand_dims(X_arr, axis=1)

  return X_arr, y_arr


if __name__ == "__main__":
  output_dir = "processed_tensors"
  os.makedirs(output_dir, exist_ok=True)

  X_data, y_data = extract_dataset_tensors(
      local_dir="mitdb_data", window_size=90
  )

  if X_data is not None:
    np.save(f"{output_dir}/X_data.npy", X_data)
    np.save(f"{output_dir}/y_data.npy", y_data)

    print("\n==================================================")
    print("--- STEP 4 VERIFICATION SUCCESSFUL ---")
    print(f"Total Extracted Heartbeats: {len(y_data)}")
    print(
        f"PyTorch Tensor Shape:       {X_data.shape}  | Data Type: {X_data.dtype}"
    )
    print(
        f"Normal Beats (Class 0):     {np.sum(y_data == 0)} ({100*np.sum(y_data == 0)/len(y_data):.1f}%)"
    )
    print(
        f"Arrhythmia Beats (Class 1): {np.sum(y_data == 1)} ({100*np.sum(y_data == 1)/len(y_data):.1f}%)"
    )
    print(
        f"Saved ready-to-train files to '{os.path.abspath(output_dir)}'"
    )
    print("==================================================")
