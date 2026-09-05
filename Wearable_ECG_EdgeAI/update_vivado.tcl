open_project D:/ECG-Embedded_System/Wearable_ECG_EdgeAI/ecg_fpga_project/ecg_fpga_project.xpr
set_property ip_repo_paths D:/ECG-Embedded_System/Wearable_ECG_EdgeAI/ecg_fpga_project/ip_repo [current_project]
update_ip_catalog
open_bd_design D:/ECG-Embedded_System/Wearable_ECG_EdgeAI/ecg_fpga_project/ecg_fpga_project.srcs/sources_1/bd/design_1/design_1.bd
upgrade_ip -vlnv xilinx.com:hls:tiny_ecg_inference:1.0 [get_ips *tiny_ecg_inference*]
export_ip_user_files -of_objects [get_ips *tiny_ecg_inference*] -no_script -sync -force -quiet
generate_target all [get_files  D:/ECG-Embedded_System/Wearable_ECG_EdgeAI/ecg_fpga_project/ecg_fpga_project.srcs/sources_1/bd/design_1/design_1.bd]
reset_run synth_1
reset_run impl_1
launch_runs impl_1 -to_step write_bitstream -jobs 8
wait_on_run impl_1
write_hw_platform -fixed -include_bit -force -file D:/ECG-Embedded_System/Wearable_ECG_EdgeAI/ecg_fpga_project/design_1_wrapper.xsa
puts "VIVADO UPDATE DONE"
