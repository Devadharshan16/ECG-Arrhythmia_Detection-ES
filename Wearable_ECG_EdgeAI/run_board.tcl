puts "Connecting..."
connect
targets -set -nocase -filter {name =~"APU*"}
puts "Resetting..."
rst -system
after 1000
targets -set -nocase -filter {name =~"APU*"}
puts "Programming FPGA..."
fpga -f D:/ECG-Embedded_System/Wearable_ECG_EdgeAI/ecg_fpga_project/design_1_wrapper.bit
loadhw -hw D:/ECG-Embedded_System/Wearable_ECG_EdgeAI/ecg_fpga_project/design_1_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
puts "Initializing PS..."
source D:/ECG-Embedded_System/Wearable_ECG_EdgeAI/vitis_workspace_new/ecg_platform/export/ecg_platform/hw/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
puts "Downloading ELF..."
dow D:/ECG-Embedded_System/Wearable_ECG_EdgeAI/vitis_workspace_new/ecg_app/build/ecg_app.elf
configparams force-mem-access 0
puts "Resuming CPU..."
con
puts "Done!"

