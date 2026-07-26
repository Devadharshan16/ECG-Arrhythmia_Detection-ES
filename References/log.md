1. Created Directory of the project.
2. Installed dependencies --> Primary(`torch`,`wfdb`,`scipy`,`numpy`,`matplotlib`), Auto-Installed Backend Dependencies(`requests`,`urllib3`,`certifi`,`aiohttp`,`typing-extensions`,`six`,`python-dateutil`,`pillow`,`fonttools`,`kiwisolver`) in a venv(Virtual Environment) so that it does not make conflict with the local user's libraries.
3. Created a get_data.py file to install dataset locally (48 patients record).
4. Ran get_data,py file and downloaded dataset of 48 patients(Size:89.7 MB, No. of files: 144)
5. Created a filter_ecg.py to filter out respiration (0.5 Hz Butterworth High-Pass Filter) and electrical buzz (The 60 Hz IIR Notch Filter).
6. Created a segment_ecg.py to export the filtered data to annotations to locate sharp peak.