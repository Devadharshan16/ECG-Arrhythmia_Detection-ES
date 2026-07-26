import os
import wfdb

def download_mitbih_locally():
    # 1. Define the local target directory
    local_dir = 'mitdb_data'
    os.makedirs(local_dir, exist_ok=True)
    
    print(f"Starting local download of the MIT-BIH Arrhythmia Database...")
    print(f"Target directory: {os.path.abspath(local_dir)}")
    print("Please wait ~1 to 2 minutes while all 48 patient records are fetched...")
    
    # 2. Download the entire database from PhysioNet
    wfdb.dl_database('mitdb', dl_dir=local_dir)
    
    print("\n--- Download Complete! ---")
    
    # 3. Quick verification of downloaded files
    downloaded_files = os.listdir(local_dir)
    print(f"Total files saved: {len(downloaded_files)}")
    print("Example records successfully stored:")
    print(" - " + "\n - ".join(sorted(downloaded_files)[:6]))

if __name__ == '__main__':
    download_mitbih_locally()
