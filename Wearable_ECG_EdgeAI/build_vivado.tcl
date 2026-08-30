# Vivado batch script for Zynq-7000 ECG accelerator block design
# Target: xc7z020clg400-1

set project_name "ecg_arrhythmia_zynq"
set project_dir "[file normalize [file dirname [info script]]]/vivado_project"
set ip_repo "[file normalize [file dirname [info script]]]/Cardiac_1D_CNN_HLS/solution1/impl/ip"

create_project -in_memory -part xc7z020clg400-1 $project_name

set_property ip_repo_paths $ip_repo [current_project]
update_ip_catalog

create_bd_design "ecg_zynq_bd"
current_bd_design "ecg_zynq_bd"

# Create and configure the Zynq PS
create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 processing_system7_0
apply_bd_automation -rule xilinx.com:bd_rule:processing_system7 -config {make_external "FIXED_IO, DDR" apply_board_preset "1" Master "Disable"} [get_bd_cells processing_system7_0]

# Configure the Zynq PS to use the required AXI ports
set_property -dict [list \
  CONFIG.PCW_USE_S_AXI_HP0 {1} \
  CONFIG.PCW_USE_M_AXI_GP0 {1} \
  CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ {100} \
  CONFIG.PCW_EN_CLK0_PORT {1} \
] [get_bd_cells processing_system7_0]

# Instantiate the generated HLS IP
create_bd_cell -type ip -vlnv xilinx.com:hls:tiny_ecg_inference:1.0 tiny_ecg_inference_0

# Connect the HLS control interface to PS GP0 via AXI interconnect automation
startgroup
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_0
set_property -dict [list CONFIG.NUM_MI {1}] [get_bd_cells axi_interconnect_0]
connect_bd_intf_net [get_bd_intf_pins processing_system7_0/M_AXI_GP0] [get_bd_intf_pins axi_interconnect_0/S00_AXI]
connect_bd_intf_net [get_bd_intf_pins tiny_ecg_inference_0/s_axi_CTRL] [get_bd_intf_pins axi_interconnect_0/M00_AXI]
endgroup

# Connect HLS AXI master ports to PS HP0
startgroup
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_1
set_property -dict [list CONFIG.NUM_MI {1} CONFIG.NUM_SI {2}] [get_bd_cells axi_interconnect_1]
connect_bd_intf_net [get_bd_intf_pins axi_interconnect_1/M00_AXI] [get_bd_intf_pins processing_system7_0/S_AXI_HP0]
connect_bd_intf_net [get_bd_intf_pins tiny_ecg_inference_0/m_axi_DATA_IN] [get_bd_intf_pins axi_interconnect_1/S00_AXI]
connect_bd_intf_net [get_bd_intf_pins tiny_ecg_inference_0/m_axi_DATA_OUT] [get_bd_intf_pins axi_interconnect_1/S01_AXI]
endgroup

# Connect clocks and resets
connect_bd_net [get_bd_pins processing_system7_0/FCLK_CLK0] [get_bd_pins tiny_ecg_inference_0/ap_clk]
connect_bd_net [get_bd_pins processing_system7_0/FCLK_CLK0] [get_bd_pins axi_interconnect_0/ACLK]
connect_bd_net [get_bd_pins processing_system7_0/FCLK_CLK0] [get_bd_pins axi_interconnect_0/S00_ACLK]
connect_bd_net [get_bd_pins processing_system7_0/FCLK_CLK0] [get_bd_pins axi_interconnect_0/M00_ACLK]
connect_bd_net [get_bd_pins processing_system7_0/FCLK_CLK0] [get_bd_pins axi_interconnect_1/ACLK]
connect_bd_net [get_bd_pins processing_system7_0/FCLK_CLK0] [get_bd_pins axi_interconnect_1/S00_ACLK]
connect_bd_net [get_bd_pins processing_system7_0/FCLK_CLK0] [get_bd_pins axi_interconnect_1/S01_ACLK]
connect_bd_net [get_bd_pins processing_system7_0/FCLK_CLK0] [get_bd_pins axi_interconnect_1/M00_ACLK]

connect_bd_net [get_bd_pins processing_system7_0/FCLK_RESET0_N] [get_bd_pins tiny_ecg_inference_0/ap_rst_n]
connect_bd_net [get_bd_pins processing_system7_0/FCLK_RESET0_N] [get_bd_pins axi_interconnect_0/ARESETN]
connect_bd_net [get_bd_pins processing_system7_0/FCLK_RESET0_N] [get_bd_pins axi_interconnect_0/S00_ARESETN]
connect_bd_net [get_bd_pins processing_system7_0/FCLK_RESET0_N] [get_bd_pins axi_interconnect_0/M00_ARESETN]
connect_bd_net [get_bd_pins processing_system7_0/FCLK_RESET0_N] [get_bd_pins axi_interconnect_1/ARESETN]
connect_bd_net [get_bd_pins processing_system7_0/FCLK_RESET0_N] [get_bd_pins axi_interconnect_1/S00_ARESETN]
connect_bd_net [get_bd_pins processing_system7_0/FCLK_RESET0_N] [get_bd_pins axi_interconnect_1/S01_ARESETN]
connect_bd_net [get_bd_pins processing_system7_0/FCLK_RESET0_N] [get_bd_pins axi_interconnect_1/M00_ARESETN]

# Validate and create wrapper
connect_bd_net [get_bd_pins processing_system7_0/FCLK_CLK0] [get_bd_pins processing_system7_0/M_AXI_GP0_ACLK]
connect_bd_net [get_bd_pins processing_system7_0/FCLK_CLK0] [get_bd_pins processing_system7_0/S_AXI_HP0_ACLK]
assign_bd_address
validate_bd_design
save_bd_design
set bd_file [get_files *ecg_zynq_bd.bd]
set wrapper_path [make_wrapper -files $bd_file -top]
add_files -norecurse $wrapper_path

set_property top ecg_zynq_bd_wrapper [current_fileset]
update_compile_order -fileset sources_1

# Synthesis and bitstream
save_project_as ecg_hw_project ./ecg_hw_project -force
launch_runs impl_1 -to_step write_bitstream -jobs 4
wait_on_runs impl_1

# Export hardware platform for Vitis/SDK use
write_hw_platform -fixed -include_bit -force -file ./ecg_arrhythmia_zynq.xsa

exit
