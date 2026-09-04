import vitis
client = vitis.create_client()
client.set_workspace("D:/ECG-Embedded_System/Wearable_ECG_EdgeAI/vitis_workspace")
print("Workspace set. Creating application...")
try:
    # In Vitis 2026.1, we must pass the path to the exported platform xpfm file
    platform_path = "D:/ECG-Embedded_System/Wearable_ECG_EdgeAI/vitis_workspace/ecg_platform/export/ecg_platform/ecg_platform.xpfm"
    app = client.create_app_component(name="ecg_app", platform=platform_path, domain="standalone_ps7_cortexa9_0", template="hello_world")
    print("Application created successfully!")
except Exception as e:
    print(f"Error: {e}")
