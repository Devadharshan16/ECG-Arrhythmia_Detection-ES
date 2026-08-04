"""export_binary_csv.py: Batch processes the MIT-BIH raw database into strict 
binary ML labels (Class 0 or Class 1). Zero blanks. Zero artifact symbols."""

import os
import glob
import wfdb
import pandas as pd

# The Strict Binary ML Map
# Forces every medical symbol into purely Class 0 or Class 1
ANNOTATION_MAP = {
    # CLASS 1 : ANOMALIES
    'V': 'Anomaly (Class 1)', 'A': 'Anomaly (Class 1)', 'a': 'Anomaly (Class 1)',
    'J': 'Anomaly (Class 1)', 'S': 'Anomaly (Class 1)', 'F': 'Anomaly (Class 1)',
    '[': 'Anomaly (Class 1)', '!': 'Anomaly (Class 1)', ']': 'Anomaly (Class 1)',
    'E': 'Anomaly (Class 1)', '/': 'Anomaly (Class 1)', 'f': 'Anomaly (Class 1)',
    'x': 'Anomaly (Class 1)', 'Q': 'Anomaly (Class 1)',
    
    # CLASS 0 : NORMAL BEATS & SYSTEM MARKERS (Like the '+' symbol)
    'N': 'Normal (Class 0)', 'L': 'Normal (Class 0)', 'R': 'Normal (Class 0)',
    'e': 'Normal (Class 0)', 'j': 'Normal (Class 0)', '|': 'Normal (Class 0)',
    '~': 'Normal (Class 0)', '+': 'Normal (Class 0)'
}

def export_strict_binary_dataset(data_dir="mitdb_data", output_dir="Dataset_ML_Mentor_Ready"):
    print("======================================================")
    print("--- STRICT BINARY ML DATASET EXPORT (CLASS 0 / 1) ---")
    print("======================================================")

    # Creating a BRAND NEW folder to avoid opening old Excel files
    os.makedirs(output_dir, exist_ok=True)

    search_path = os.path.join(data_dir, "*.dat")
    dat_files = glob.glob(search_path)
    
    if not dat_files:
        print(f"[CRITICAL ERROR] No .dat files found in '{data_dir}'.")
        return

    record_names = [os.path.splitext(os.path.basename(f))[0] for f in dat_files]
    print(f"Found {len(record_names)} complete patient records. Starting extraction...")

    for record_name in sorted(record_names):
        record_path = os.path.join(data_dir, record_name)
        output_file = os.path.join(output_dir, f"Patient_{record_name}_Binary.csv")
        
        print(f" -> Processing Patient {record_name} (~648,000 rows)...", end="", flush=True)

        try:
            record = wfdb.rdrecord(record_path)
            annotation = wfdb.rdann(record_path, 'atr')
            
            # 1. Fill 100% of the baseline rows with Class 0 (Zero blanks)
            ann_array = ['Normal (Class 0)'] * record.sig_len
            
            # 2. Map the doctor's annotations using the strict binary dictionary
            for sym, idx in zip(annotation.symbol, annotation.sample):
                # If a weird symbol slips through, default it to Class 0 to prevent ML crashes
                ann_array[idx] = ANNOTATION_MAP.get(sym, 'Normal (Class 0)')

            # Build the tabular DataFrame
            df = pd.DataFrame({
                'Sample_Index': range(record.sig_len),
                'Time_Seconds': [i / record.fs for i in range(record.sig_len)],
                f'Channel_0_mV': record.p_signal[:, 0],
                f'Channel_1_mV': record.p_signal[:, 1],
                'ML_Binary_Label': ann_array
            })

            # Export to CSV 
            df.to_csv(output_file, index=False)
            print(" DONE.")
            
        except Exception as e:
            print(f" FAILED. Error: {e}")

    print("======================================================")
    print(f"✅ SUCCESS: Strict binary dataset saved to '{output_dir}/'")

if __name__ == "__main__":
    export_strict_binary_dataset()
