import vitis
import os

client = vitis.create_client()
client.set_workspace("D:/ECG-Embedded_System/Wearable_ECG_EdgeAI/vitis_workspace_new")

# We don't know the exact project name in the workspace, maybe "tiny_ecg_inference" or it's not a Vitis Unified HLS project!
