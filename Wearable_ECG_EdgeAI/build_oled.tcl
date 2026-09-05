open_project D:/ECG-Embedded_System/Wearable_ECG_EdgeAI/ecg_fpga_project/ecg_fpga_project.xpr
add_files -fileset constrs_1 -norecurse D:/ECG-Embedded_System/Wearable_ECG_EdgeAI/ecg_fpga_project/ecg_fpga_project.srcs/constrs_1/new/oled_buzzer.xdc
set_property target_constrs_file D:/ECG-Embedded_System/Wearable_ECG_EdgeAI/ecg_fpga_project/ecg_fpga_project.srcs/constrs_1/new/oled_buzzer.xdc [current_fileset -constrset]
generate_target all [get_files D:/ECG-Embedded_System/Wearable_ECG_EdgeAI/ecg_fpga_project/ecg_fpga_project.srcs/sources_1/bd/design_1/design_1.bd]
reset_run synth_1
reset_run impl_1
launch_runs impl_1 -to_step write_bitstream -jobs 8
wait_on_run impl_1
write_hw_platform -fixed -include_bit -force -file D:/ECG-Embedded_System/Wearable_ECG_EdgeAI/ecg_fpga_project/design_1_wrapper.xsa
puts "BITSTREAM WITH OLED AND BUZZER DONE"
