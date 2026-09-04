import vitis
import os
import shutil

print("Starting Vitis Automation...")
client = vitis.create_client()
client.set_workspace("D:/ECG-Embedded_System/Wearable_ECG_EdgeAI/vitis_workspace_new")

xsa_path = "D:/ECG-Embedded_System/Wearable_ECG_EdgeAI/ecg_fpga_project/design_1_wrapper.xsa"
print(f"Creating platform from {xsa_path}...")

try:
    plat = client.create_platform_component(name="ecg_platform", hw_design=xsa_path, os="standalone", cpu="ps7_cortexa9_0")
    plat.build()
    print("Platform built successfully!")
    
    platform_xpfm = "D:/ECG-Embedded_System/Wearable_ECG_EdgeAI/vitis_workspace_new/ecg_platform/export/ecg_platform/ecg_platform.xpfm"
    
    print("Creating application...")
    app = client.create_app_component(name="ecg_app", platform=platform_xpfm, domain="standalone_ps7_cortexa9_0", template="hello_world")
    
    print("Replacing helloworld.c with main.c...")
    src_c = "C:/Users/devad/.gemini/antigravity-cli/brain/1383538f-4d4d-4670-b4d5-68a58c167356/main.c"
    dest_c = "D:/ECG-Embedded_System/Wearable_ECG_EdgeAI/vitis_workspace_new/ecg_app/src/helloworld.c"
    shutil.copy(src_c, dest_c)
    
    print("Building application...")
    app.build()
    print("Application built successfully! Software is ready!")
    
except Exception as e:
    print(f"FAILED: {e}")
