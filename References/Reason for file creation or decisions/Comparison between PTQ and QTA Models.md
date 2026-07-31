| **Clinical Metric**          | **Previous PTQ Model** | **New QAT Model** | **Clinical Impact**                 |
| ---------------------------- | ---------------------- | ----------------- | ----------------------------------- |
| **Overall Accuracy**         | 95.73%                 | **92.99%**        | 📉 Dropped by 2.74%                 |
| **True Anomalies (Caught)**  | 3,667                  | **3,711**         | 🟢 **Caught 44 MORE arrhythmias.**  |
| **Missed Anomalies (Fatal)** | 741                    | **697**           | 🟢 **44 FEWER fatal misses.**       |
| **True Normals (Ignored)**   | 17,894                 | **17,233**        | 📉 Ignored fewer normal beats.      |
| **False Alarms (Annoying)**  | 220                    | **881**           | 🔴 Triggered 661 more false alarms. |



| **Clinical Metric**          | **PTQ Baseline** | **QAT Pass 1 (Unweighted)** | **QAT Pass 2 (Class Weights)** | **QAT Pass 3 (Focal Loss)** | **Clinical Impact (PTQ vs Pass 3)** |
| ---------------------------- | ---------------- | --------------------------- | ------------------------------ | --------------------------- | ----------------------------------- |
| **Overall Accuracy**         | 95.73%           | 92.99%                      | 94.90%                         | 95.16%                      | 📉 Dropped by 0.57%                 |
| **True Anomalies (Caught)**  | 3,667            | 3,711                       | 3,648                          | 3,573                       | 🔴 Caught 94 FEWER arrhythmias.     |
| **Missed Anomalies (Fatal)** | 741              | 697                         | 760                            | 835                         | 🔴 94 MORE fatal misses.            |
| **True Normals (Ignored)**   | 17,894           | 17,233                      | 17,726                         | 17,858                      | 📉 Ignored 36 fewer normal beats.   |
| **False Alarms (Annoying)**  | 220              | 881                         | 388                            | 256                         | 🔴 Triggered 36 more false alarms.  |