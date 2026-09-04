import vitis
print("Successfully imported vitis python module!")
client = vitis.create_client()
client.set_workspace("D:/ECG-Embedded_System/Wearable_ECG_EdgeAI/vitis_workspace")
print("Workspace set. Creating platform...")
try:
    plat = client.create_platform_component(name="ecg_platform", hw_design="D:/ECG-Embedded_System/Wearable_ECG_EdgeAI/ecg_fpga_project/design_1_wrapper.xsa", os="standalone", cpu="ps7_cortexa9_0")
    print("Platform created successfully!")
except Exception as e:
    print(f"Error: {e}")
