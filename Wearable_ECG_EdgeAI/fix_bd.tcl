open_project D:/ECG-Embedded_System/Wearable_ECG_EdgeAI/ecg_fpga_project/ecg_fpga_project.xpr
open_bd_design {D:/ECG-Embedded_System/Wearable_ECG_EdgeAI/ecg_fpga_project/ecg_fpga_project.srcs/sources_1/bd/design_1/design_1.bd}

# Set the interconnect to have 2 slave ports
set_property -dict [list CONFIG.NUM_SI {2}] [get_bd_cells axi_mem_intercon]

# Run connection automation for the second port
apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config { Clk_master {/processing_system7_0/FCLK_CLK0 (50 MHz)} Clk_slave {/processing_system7_0/FCLK_CLK0 (50 MHz)} Clk_xbar {/processing_system7_0/FCLK_CLK0 (50 MHz)} Master {/tiny_ecg_inference_0/m_axi_DATA_OUT} Slave {/processing_system7_0/S_AXI_HP0} ddr_seg {Auto} intc_ip {/axi_mem_intercon} master_apm {0}}  [get_bd_intf_pins tiny_ecg_inference_0/m_axi_DATA_OUT]

save_bd_design
reset_run synth_1
reset_run impl_1
launch_runs impl_1 -to_step write_bitstream -jobs 8
wait_on_run impl_1
write_hw_platform -fixed -include_bit -force -file D:/ECG-Embedded_System/Wearable_ECG_EdgeAI/ecg_fpga_project/design_1_wrapper.xsa
puts "DONE!"
