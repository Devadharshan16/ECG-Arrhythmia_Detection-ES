open_project -reset tiny_ecg_hls
set_top tiny_ecg_inference
add_files cnn_hls.cpp
add_files weights.cpp
add_files weights.h
open_solution "solution1" -flow_target vivado
set_part {xc7z020clg484-1}
create_clock -period 20.0 -name default
csynth_design
export_design -rtl verilog -format ip_catalog -output D:/ECG-Embedded_System/Wearable_ECG_EdgeAI/ecg_fpga_project/ip_repo
exit