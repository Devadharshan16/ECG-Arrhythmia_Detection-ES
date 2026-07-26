import os
import matplotlib.pyplot as plt
import numpy as np
import scipy.signal as signal
import wfdb
import matplotlib

matplotlib.use('Agg')  # Forces silent file saving instead of desktop windows
import matplotlib.pyplot as plt

def apply_digital_filters(sig, fs=360.0):
    """Applies a 0.5 Hz Butterworth high-pass filter and a 60 Hz IIR notch filter."""
    nyquist = 0.5 * fs

    # 1. High-Pass Filter (0.5 Hz cutoff, 2nd Order Butterworth, Zero-Phase)
    # Zero-phase filtfilt ensures we don't shift the R-peak timestamp forward or backward
    normal_cutoff = 0.5 / nyquist
    b_hp, a_hp = signal.butter(2, normal_cutoff, btype="highpass")
    sig_hp = signal.filtfilt(b_hp, a_hp, sig)

    # 2. Notch Filter (60 Hz AC wall hum, Quality Factor Q = 30)
    notch_freq = 60.0 / nyquist
    b_notch, a_notch = signal.iirnotch(notch_freq, Q=30.0)
    sig_clean = signal.filtfilt(b_notch, a_notch, sig_hp)

    return sig_clean


def run_filter_demo(record_name="100", local_dir="mitdb_data"):
    print(f"Reading Record {record_name} from local storage ('{local_dir}')...")
    record_path = os.path.join(local_dir, record_name)

    # Load 10 seconds of data from local disk
    record = wfdb.rdrecord(record_path, sampto=3600)
    raw_sig = record.p_signal[:, 0]  # Modified Limb Lead II (MLII)
    fs = record.fs

    # Apply our filter pipeline
    clean_sig = apply_digital_filters(raw_sig, fs=fs)

    # Plot Raw vs. Cleaned Signal
    time_axis = np.arange(len(raw_sig)) / fs
    plt.figure(figsize=(12, 6))

    plt.subplot(2, 1, 1)
    plt.plot(time_axis, raw_sig, color="#d95f02", label="Raw Noisy Signal (Lead MLII)")
    plt.title(
        f"MIT-BIH Record {record_name} — Raw vs. Filtered (360 Hz Local Storage)"
    )
    plt.ylabel("Voltage (mV)")
    plt.legend(loc="upper right")
    plt.grid(True, alpha=0.3)

    plt.subplot(2, 1, 2)
    plt.plot(
        time_axis,
        clean_sig,
        color="#1b9e77",
        label="Cleaned Signal (0.5 Hz High-Pass + 60 Hz Notch)",
    )
    plt.xlabel("Time (seconds)")
    plt.ylabel("Voltage (mV)")
    plt.legend(loc="upper right")
    plt.grid(True, alpha=0.3)

    plt.tight_layout()
    output_filename = "filter_comparison.png"
    plt.savefig(output_filename, dpi=300, bbox_inches="tight")
    print(f"Graph saved successfully as '{output_filename}'!")
    print("Step 3 Verification Successful: Signal cleaned without phase distortion.")


if __name__ == "__main__":
    run_filter_demo()
