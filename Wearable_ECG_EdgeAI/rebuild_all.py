import os
import subprocess

print("Running Vitis HLS...")
subprocess.run([r"D:\AMD\2026.1\Vitis_HLS\bin\vitis_hls.bat", "-f", "build_hls.tcl"], check=True)

with open("update_ip.tcl", "w") as f:
    f.write('''open_project D:/ECG-Embedded_System/Wearable_ECG_EdgeAI/ecg_fpga_project/ecg_fpga_project.xpr
update_ip_catalog -rebuild -scan_changes
upgrade_ip -vlnv xilinx.com:hls:tiny_ecg_inference:1.0 [get_ips  *tiny_ecg_inference*] -log ip_upgrade.log
export_ip_user_files -of_objects [get_ips *tiny_ecg_inference*] -no_script -sync -force -quiet
reset_run synth_1
reset_run impl_1
launch_runs impl_1 -to_step write_bitstream -jobs 8
wait_on_run impl_1
write_hw_platform -fixed -include_bit -force -file D:/ECG-Embedded_System/Wearable_ECG_EdgeAI/ecg_fpga_project/design_1_wrapper.xsa
puts "ALL DONE"
''')

print("Running Vivado...")
subprocess.run([r"D:\AMD\2026.1\Vivado\bin\vivado.bat", "-mode", "batch", "-source", "update_ip.tcl"], check=True)
print("Complete.")
