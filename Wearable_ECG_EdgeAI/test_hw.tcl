connect
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 1000
targets -set -nocase -filter {name =~"APU*"}
fpga -f D:/ECG-Embedded_System/Wearable_ECG_EdgeAI/ecg_fpga_project/design_1_wrapper.bit
loadhw -hw D:/ECG-Embedded_System/Wearable_ECG_EdgeAI/ecg_fpga_project/design_1_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
source D:/ECG-Embedded_System/Wearable_ECG_EdgeAI/vitis_workspace_new/ecg_platform/export/ecg_platform/hw/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
after 1000
mwr 0xF8000240 0x00000000
puts "OLED GPIO:"
puts [mrd -value 0x40020000 1]
con
