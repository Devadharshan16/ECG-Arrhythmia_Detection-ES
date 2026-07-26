- **`.hea` (Header Files):** Plain text files detailing the patient ID, sampling rate ($360\text{ Hz}$), ADC gain, and lead configuration (e.g., Lead MLII).
    
- **`.dat` (Data Files):** Highly compressed binary files containing the continuous raw voltage time-series arrays.
    
- **`.atr` (Annotation Files):** The cardiologist ground-truth files containing the exact sample index (timestamp) and symbol (e.g., `'N'` for Normal, `'V'` for Ventricular Arrhythmia) for every single detected heartbeat.