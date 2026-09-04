setws D:/ECG-Embedded_System/Wearable_ECG_EdgeAI/vitis_workspace
platform create -name ecg_platform -hw D:/ECG-Embedded_System/Wearable_ECG_EdgeAI/ecg_fpga_project/design_1_wrapper.xsa -os standalone -proc ps7_cortexa9_0
platform generate
app create -name ecg_app -platform ecg_platform -domain standalone_domain -template {Empty Application}
app build -name ecg_app
