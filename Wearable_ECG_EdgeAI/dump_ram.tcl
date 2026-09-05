connect
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 1000
targets -set -nocase -filter {name =~"APU*"}
fpga -f D:/ECG-Embedded_System/Wearable_ECG_EdgeAI/ecg_fpga_project/design_1_wrapper.bit
loadhw -hw D:/ECG-Embedded_System/Wearable_ECG_EdgeAI/ecg_fpga_project/design_1_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source D:/ECG-Embedded_System/Wearable_ECG_EdgeAI/vitis_workspace_new/ecg_platform/export/ecg_platform/hw/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow D:/ECG-Embedded_System/Wearable_ECG_EdgeAI/vitis_workspace_new/ecg_app/build/ecg_app.elf
configparams force-mem-access 0
con
puts "CPU is running. Waiting 2 seconds for Neural Network to finish..."
after 2000
stop
puts "--- RAW MEMORY DUMP ---"
set logits [mrd -value &output_logits 2]
puts "Logits Array: $logits"
con
