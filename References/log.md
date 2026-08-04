1. Created Directory of the project.
2. Installed dependencies --> Primary(`torch`,`wfdb`,`scipy`,`numpy`,`matplotlib`), Auto-Installed Backend Dependencies(`requests`,`urllib3`,`certifi`,`aiohttp`,`typing-extensions`,`six`,`python-dateutil`,`pillow`,`fonttools`,`kiwisolver`) in a venv(Virtual Environment) so that it does not make conflict with the local user's libraries.
3. Created a get_data.py file to install dataset locally (48 patients record).
4. Ran get_data,py file and downloaded dataset of 48 patients(Size:89.7 MB, No. of files: 144)
5. Created a filter_ecg.py to filter out respiration (0.5 Hz Butterworth High-Pass Filter) and electrical buzz (The 60 Hz IIR Notch Filter).
6. Created a segment_ecg.py to export the filtered data to annotations to locate sharp peak.
7. Created model_cnn.py to explain the model about the architecture
8. Created train_model_ptq.py to train the model
9. Created quantize_model_ptq.py for Post Training Quantization
10. Then evaluated the model using evaluate_model_ptq.py
11. Found a mistake trained in ptq method instead of qta.
12. Created train_model_qta.py to train in qta method.
13. Evaluated using evaluate_model_qta.py
14. Ran visualize_dataset.py to generate simple 3 plots of same patients normal vs anomaly
15. Ran plot_dataset.py to generate plots of heartbeats.
16. Ran generate_csv_of_dataset.py to generate csv files of whole dataset
----------------------------------------------Phase-1 Ends here------------------------------------------
