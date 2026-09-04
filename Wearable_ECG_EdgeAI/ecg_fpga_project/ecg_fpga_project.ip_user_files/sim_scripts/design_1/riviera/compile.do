transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_vip_v1_1_23
vlib riviera/processing_system7_vip_v1_0_25
vlib riviera/xil_defaultlib
vlib riviera/proc_sys_reset_v5_0_17
vlib riviera/smartconnect_v1_0
vlib riviera/axi_register_slice_v2_1_37
vlib riviera/generic_baseblocks_v2_1_2
vlib riviera/fifo_generator_v13_2_15
vlib riviera/axi_data_fifo_v2_1_37
vlib riviera/axi_protocol_converter_v2_1_38
vlib riviera/axi_clock_converter_v2_1_36
vlib riviera/blk_mem_gen_v8_4_13
vlib riviera/axi_dwidth_converter_v2_1_38

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_23 riviera/axi_vip_v1_1_23
vmap processing_system7_vip_v1_0_25 riviera/processing_system7_vip_v1_0_25
vmap xil_defaultlib riviera/xil_defaultlib
vmap proc_sys_reset_v5_0_17 riviera/proc_sys_reset_v5_0_17
vmap smartconnect_v1_0 riviera/smartconnect_v1_0
vmap axi_register_slice_v2_1_37 riviera/axi_register_slice_v2_1_37
vmap generic_baseblocks_v2_1_2 riviera/generic_baseblocks_v2_1_2
vmap fifo_generator_v13_2_15 riviera/fifo_generator_v13_2_15
vmap axi_data_fifo_v2_1_37 riviera/axi_data_fifo_v2_1_37
vmap axi_protocol_converter_v2_1_38 riviera/axi_protocol_converter_v2_1_38
vmap axi_clock_converter_v2_1_36 riviera/axi_clock_converter_v2_1_36
vmap blk_mem_gen_v8_4_13 riviera/blk_mem_gen_v8_4_13
vmap axi_dwidth_converter_v2_1_38 riviera/axi_dwidth_converter_v2_1_38

vlog -work xilinx_vip  -incr "+incdir+D:/AMD/2026.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_23 -l processing_system7_vip_v1_0_25 -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_37 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_15 -l axi_data_fifo_v2_1_37 -l axi_protocol_converter_v2_1_38 -l axi_clock_converter_v2_1_36 -l blk_mem_gen_v8_4_13 -l axi_dwidth_converter_v2_1_38 \
"D:/AMD/2026.1/Vivado/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"D:/AMD/2026.1/Vivado/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"D:/AMD/2026.1/Vivado/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"D:/AMD/2026.1/Vivado/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"D:/AMD/2026.1/Vivado/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"D:/AMD/2026.1/Vivado/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"D:/AMD/2026.1/Vivado/data/xilinx_vip/hdl/axi_vip_if.sv" \
"D:/AMD/2026.1/Vivado/data/xilinx_vip/hdl/clk_vip_if.sv" \
"D:/AMD/2026.1/Vivado/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/df05/hdl" "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../AMD/2026.1/Vivado/data/rsb/busdef" "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ip/design_1_tiny_ecg_inference_0_0/drivers/tiny_ecg_inference_v1_0/src" "+incdir+D:/AMD/2026.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_23 -l processing_system7_vip_v1_0_25 -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_37 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_15 -l axi_data_fifo_v2_1_37 -l axi_protocol_converter_v2_1_38 -l axi_clock_converter_v2_1_36 -l blk_mem_gen_v8_4_13 -l axi_dwidth_converter_v2_1_38 \
"D:/AMD/2026.1/Vivado/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/AMD/2026.1/Vivado/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"D:/AMD/2026.1/Vivado/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"D:/AMD/2026.1/Vivado/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -incr -v2k5 "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/df05/hdl" "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../AMD/2026.1/Vivado/data/rsb/busdef" "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ip/design_1_tiny_ecg_inference_0_0/drivers/tiny_ecg_inference_v1_0/src" "+incdir+D:/AMD/2026.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_23 -l processing_system7_vip_v1_0_25 -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_37 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_15 -l axi_data_fifo_v2_1_37 -l axi_protocol_converter_v2_1_38 -l axi_clock_converter_v2_1_36 -l blk_mem_gen_v8_4_13 -l axi_dwidth_converter_v2_1_38 \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_23  -incr "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/df05/hdl" "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../AMD/2026.1/Vivado/data/rsb/busdef" "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ip/design_1_tiny_ecg_inference_0_0/drivers/tiny_ecg_inference_v1_0/src" "+incdir+D:/AMD/2026.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_23 -l processing_system7_vip_v1_0_25 -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_37 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_15 -l axi_data_fifo_v2_1_37 -l axi_protocol_converter_v2_1_38 -l axi_clock_converter_v2_1_36 -l blk_mem_gen_v8_4_13 -l axi_dwidth_converter_v2_1_38 \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/4d28/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_25  -incr "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/df05/hdl" "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../AMD/2026.1/Vivado/data/rsb/busdef" "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ip/design_1_tiny_ecg_inference_0_0/drivers/tiny_ecg_inference_v1_0/src" "+incdir+D:/AMD/2026.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_23 -l processing_system7_vip_v1_0_25 -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_37 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_15 -l axi_data_fifo_v2_1_37 -l axi_protocol_converter_v2_1_38 -l axi_clock_converter_v2_1_36 -l blk_mem_gen_v8_4_13 -l axi_dwidth_converter_v2_1_38 \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/df05/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/df05/hdl" "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../AMD/2026.1/Vivado/data/rsb/busdef" "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ip/design_1_tiny_ecg_inference_0_0/drivers/tiny_ecg_inference_v1_0/src" "+incdir+D:/AMD/2026.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_23 -l processing_system7_vip_v1_0_25 -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_37 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_15 -l axi_data_fifo_v2_1_37 -l axi_protocol_converter_v2_1_38 -l axi_clock_converter_v2_1_36 -l blk_mem_gen_v8_4_13 -l axi_dwidth_converter_v2_1_38 \
"../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_ama_addmuladd_7ns_7ns_7s_14s_15_4_1.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_buffer_c1_RAM_AUTO_1R1W.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_buffer_c2_RAM_AUTO_1R1W.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_buffer_c3_RAM_AUTO_1R1W.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_control_s_axi.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_CTRL_s_axi.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_DATA_IN_m_axi.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_DATA_OUT_m_axi.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_flatten_RAM_AUTO_1R1W.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_flow_control_loop_pipe_sequential_init.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_mac_muladd_7ns_3s_15s_15_4_1.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_mac_muladd_7ns_4s_14ns_15_4_1.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_mac_muladd_7ns_4s_14s_14_4_1.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_mac_muladd_7ns_5ns_15s_15_4_1.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_mac_muladd_7ns_5s_14s_14_4_1.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_mac_muladd_7ns_5s_15s_15_4_1.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_mac_muladd_7ns_5s_16s_16_4_1.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_mac_muladd_7ns_6s_14ns_15_4_1.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_mac_muladd_7ns_6s_14s_14_4_1.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_mac_muladd_7ns_6s_14s_15_4_1.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_mac_muladd_7ns_6s_15s_15_4_1.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_mac_muladd_7ns_6s_15s_16_4_1.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_mac_muladd_7ns_6s_16s_16_4_1.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_mac_muladd_7ns_6s_16s_17_4_1.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_mac_muladd_7s_7ns_13ns_15_4_1.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_mac_muladd_7s_7ns_13s_15_4_1.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_mac_muladd_7s_7ns_14ns_15_4_1.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_mac_muladd_7s_7ns_14s_14_4_1.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_mac_muladd_7s_7ns_14s_15_4_1.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_mac_muladd_7s_7ns_15s_15_4_1.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_mac_muladd_7s_7ns_15s_16_4_1.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_mac_muladd_7s_7ns_16s_16_4_1.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_mac_muladd_8s_7ns_13ns_15_4_1.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_mac_muladd_8s_7ns_13s_15_4_1.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_mac_muladd_8s_7ns_14ns_16_4_1.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_mac_muladd_8s_7ns_14s_15_4_1.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_mac_muladd_8s_7ns_14s_16_4_1.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_mac_muladd_8s_7ns_15s_15_4_1.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_mac_muladd_8s_7ns_15s_16_4_1.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_mac_muladd_8s_7ns_16s_17_4_1.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_mac_muladd_9s_8s_17s_17_4_1.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_mul_4s_7ns_10_1_1.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_mul_5ns_7ns_11_1_1.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_mul_5s_7ns_11_1_1.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_mul_6ns_8ns_13_1_1.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_mul_6s_7ns_12_1_1.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_mul_6s_7ns_13_1_1.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_mul_7ns_2s_13_1_1.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_mul_7ns_2s_14_1_1.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_mul_7ns_2s_15_1_1.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_mul_7ns_3s_12_1_1.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_mul_7ns_4s_14_1_1.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_mul_7ns_5ns_12_1_1.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_mul_7ns_5s_13_1_1.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_mul_7ns_5s_14_1_1.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_mul_7ns_6ns_12_1_1.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_mul_7ns_6ns_13_1_1.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_mul_7ns_6s_13_1_1.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_mul_7ns_6s_14_1_1.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_mul_7ns_7ns_13_1_1.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_mul_7ns_7ns_14_1_1.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_mul_7ns_7s_14_1_1.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_mul_7ns_8ns_14_1_1.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_mul_7ns_8ns_15_1_1.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_mul_7ns_8s_15_1_1.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_mul_7s_7ns_13_1_1.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_mul_7s_7ns_14_1_1.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_mul_8s_7ns_14_1_1.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_mul_8s_7ns_15_1_1.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_mul_9s_8s_17_1_1.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_mul_19s_30ns_49_2_1.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_mul_21s_30ns_51_2_1.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_mul_31s_21s_51_2_1.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_mul_64ns_66ns_129_5_1.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_sparsemux_7_2_7_1_1.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_sparsemux_11_3_7_1_1.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_sparsemux_33_4_7_1_1.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_61_2.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_61_2_conv1_bias_ROM_AUTO_1R.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_61_2_conv1_multiplier_ROM_AUTO_1R.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_61_2_conv1_shift_ROM_AUTO_1R.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_61_2_conv1_weight_ROM_AUTO_1R.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_conv2_bias_ROM_AUbkb.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_conv2_multiplier_wdI.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_conv2_shift_ROM_AxdS.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_p_ZL12conv2_weighcud.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_p_ZL12conv2_weighdEe.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_p_ZL12conv2_weigheOg.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_p_ZL12conv2_weighfYi.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_p_ZL12conv2_weighg8j.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_p_ZL12conv2_weighhbi.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_p_ZL12conv2_weighibs.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_p_ZL12conv2_weighjbC.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_p_ZL12conv2_weighkbM.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_p_ZL12conv2_weighlbW.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_p_ZL12conv2_weighmb6.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_p_ZL12conv2_weighncg.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_p_ZL12conv2_weighocq.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_p_ZL12conv2_weighpcA.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_p_ZL12conv2_weighqcK.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_p_ZL12conv2_weighrcU.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_p_ZL12conv2_weighsc4.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_p_ZL12conv2_weightde.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_p_ZL12conv2_weighudo.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_p_ZL12conv2_weighvdy.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_113_8_VITIS_LOOP_114_9.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_113_8_VITIS_LOOP_114_9_conv3_bias_ROM_yd2.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_113_8_VITIS_LOOP_114_9_conv3_multiplieXh4.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_113_8_VITIS_LOOP_114_9_conv3_shift_ROMYie.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_113_8_VITIS_LOOP_114_9_p_ZL12conv3_weiAem.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_113_8_VITIS_LOOP_114_9_p_ZL12conv3_weiBew.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_113_8_VITIS_LOOP_114_9_p_ZL12conv3_weiCeG.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_113_8_VITIS_LOOP_114_9_p_ZL12conv3_weiDeQ.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_113_8_VITIS_LOOP_114_9_p_ZL12conv3_weiEe0.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_113_8_VITIS_LOOP_114_9_p_ZL12conv3_weiFfa.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_113_8_VITIS_LOOP_114_9_p_ZL12conv3_weiGfk.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_113_8_VITIS_LOOP_114_9_p_ZL12conv3_weiHfu.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_113_8_VITIS_LOOP_114_9_p_ZL12conv3_weiIfE.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_113_8_VITIS_LOOP_114_9_p_ZL12conv3_weiJfO.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_113_8_VITIS_LOOP_114_9_p_ZL12conv3_weiKfY.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_113_8_VITIS_LOOP_114_9_p_ZL12conv3_weiLf8.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_113_8_VITIS_LOOP_114_9_p_ZL12conv3_weiMgi.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_113_8_VITIS_LOOP_114_9_p_ZL12conv3_weiNgs.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_113_8_VITIS_LOOP_114_9_p_ZL12conv3_weiOgC.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_113_8_VITIS_LOOP_114_9_p_ZL12conv3_weiPgM.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_113_8_VITIS_LOOP_114_9_p_ZL12conv3_weiQgW.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_113_8_VITIS_LOOP_114_9_p_ZL12conv3_weiRg6.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_113_8_VITIS_LOOP_114_9_p_ZL12conv3_weiShg.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_113_8_VITIS_LOOP_114_9_p_ZL12conv3_weiThq.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_113_8_VITIS_LOOP_114_9_p_ZL12conv3_weiUhA.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_113_8_VITIS_LOOP_114_9_p_ZL12conv3_weiVhK.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_113_8_VITIS_LOOP_114_9_p_ZL12conv3_weiWhU.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_113_8_VITIS_LOOP_114_9_p_ZL12conv3_weizec.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_138_12_VITIS_LOOP_139_13.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_148_14.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_urem_4ns_3ns_2_8_1.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_urem_5ns_3ns_2_9_1.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference_urem_5ns_4ns_3_9_1.v" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7bd4/hdl/verilog/tiny_ecg_inference.v" \
"../../../bd/design_1/ip/design_1_tiny_ecg_inference_0_0/sim/design_1_tiny_ecg_inference_0_0.v" \

vcom -work proc_sys_reset_v5_0_17 -93  -incr \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/9438/hdl/proc_sys_reset_v5_0_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_rst_ps7_0_50M_0/sim/design_1_rst_ps7_0_50M_0.vhd" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/df05/hdl" "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../AMD/2026.1/Vivado/data/rsb/busdef" "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ip/design_1_tiny_ecg_inference_0_0/drivers/tiny_ecg_inference_v1_0/src" "+incdir+D:/AMD/2026.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_23 -l processing_system7_vip_v1_0_25 -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_37 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_15 -l axi_data_fifo_v2_1_37 -l axi_protocol_converter_v2_1_38 -l axi_clock_converter_v2_1_36 -l blk_mem_gen_v8_4_13 -l axi_dwidth_converter_v2_1_38 \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \

vcom -work smartconnect_v1_0 -93  -incr \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/21d5/hdl/sc_ultralite_v1_0_rfs.vhd" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/df05/hdl" "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../AMD/2026.1/Vivado/data/rsb/busdef" "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ip/design_1_tiny_ecg_inference_0_0/drivers/tiny_ecg_inference_v1_0/src" "+incdir+D:/AMD/2026.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_23 -l processing_system7_vip_v1_0_25 -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_37 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_15 -l axi_data_fifo_v2_1_37 -l axi_protocol_converter_v2_1_38 -l axi_clock_converter_v2_1_36 -l blk_mem_gen_v8_4_13 -l axi_dwidth_converter_v2_1_38 \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/21d5/hdl/sc_ultralite_v1_0_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/df05/hdl" "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../AMD/2026.1/Vivado/data/rsb/busdef" "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ip/design_1_tiny_ecg_inference_0_0/drivers/tiny_ecg_inference_v1_0/src" "+incdir+D:/AMD/2026.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_23 -l processing_system7_vip_v1_0_25 -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_37 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_15 -l axi_data_fifo_v2_1_37 -l axi_protocol_converter_v2_1_38 -l axi_clock_converter_v2_1_36 -l blk_mem_gen_v8_4_13 -l axi_dwidth_converter_v2_1_38 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_0/sim/bd_afc3_sc_ul_0.sv" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/df05/hdl" "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../AMD/2026.1/Vivado/data/rsb/busdef" "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ip/design_1_tiny_ecg_inference_0_0/drivers/tiny_ecg_inference_v1_0/src" "+incdir+D:/AMD/2026.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_23 -l processing_system7_vip_v1_0_25 -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_37 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_15 -l axi_data_fifo_v2_1_37 -l axi_protocol_converter_v2_1_38 -l axi_clock_converter_v2_1_36 -l blk_mem_gen_v8_4_13 -l axi_dwidth_converter_v2_1_38 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/sim/bd_afc3.v" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/df05/hdl" "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../AMD/2026.1/Vivado/data/rsb/busdef" "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ip/design_1_tiny_ecg_inference_0_0/drivers/tiny_ecg_inference_v1_0/src" "+incdir+D:/AMD/2026.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_23 -l processing_system7_vip_v1_0_25 -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_37 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_15 -l axi_data_fifo_v2_1_37 -l axi_protocol_converter_v2_1_38 -l axi_clock_converter_v2_1_36 -l blk_mem_gen_v8_4_13 -l axi_dwidth_converter_v2_1_38 \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/3d9a/hdl/sc_mmu_v1_0_vl_rfs.sv" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/7785/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/3051/hdl/sc_si_converter_v1_0_vl_rfs.sv" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/00fe/hdl/sc_node_v1_0_vl_rfs.sv" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/0848/hdl/sc_switchboard_v1_0_vl_rfs.sv" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/852f/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/fca9/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/c7d2/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work axi_register_slice_v2_1_37  -incr -v2k5 "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/df05/hdl" "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../AMD/2026.1/Vivado/data/rsb/busdef" "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ip/design_1_tiny_ecg_inference_0_0/drivers/tiny_ecg_inference_v1_0/src" "+incdir+D:/AMD/2026.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_23 -l processing_system7_vip_v1_0_25 -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_37 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_15 -l axi_data_fifo_v2_1_37 -l axi_protocol_converter_v2_1_38 -l axi_clock_converter_v2_1_36 -l blk_mem_gen_v8_4_13 -l axi_dwidth_converter_v2_1_38 \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/8c55/hdl/axi_register_slice_v2_1_rfs.v" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/df05/hdl" "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../AMD/2026.1/Vivado/data/rsb/busdef" "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ip/design_1_tiny_ecg_inference_0_0/drivers/tiny_ecg_inference_v1_0/src" "+incdir+D:/AMD/2026.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_23 -l processing_system7_vip_v1_0_25 -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_37 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_15 -l axi_data_fifo_v2_1_37 -l axi_protocol_converter_v2_1_38 -l axi_clock_converter_v2_1_36 -l blk_mem_gen_v8_4_13 -l axi_dwidth_converter_v2_1_38 \
"../../../bd/design_1/ip/design_1_axi_smc_0/sim/design_1_axi_smc_0.sv" \

vlog -work generic_baseblocks_v2_1_2  -incr -v2k5 "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/df05/hdl" "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../AMD/2026.1/Vivado/data/rsb/busdef" "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ip/design_1_tiny_ecg_inference_0_0/drivers/tiny_ecg_inference_v1_0/src" "+incdir+D:/AMD/2026.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_23 -l processing_system7_vip_v1_0_25 -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_37 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_15 -l axi_data_fifo_v2_1_37 -l axi_protocol_converter_v2_1_38 -l axi_clock_converter_v2_1_36 -l blk_mem_gen_v8_4_13 -l axi_dwidth_converter_v2_1_38 \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/0c28/hdl/generic_baseblocks_v2_1_rfs.v" \

vlog -work fifo_generator_v13_2_15  -incr -v2k5 "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/df05/hdl" "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../AMD/2026.1/Vivado/data/rsb/busdef" "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ip/design_1_tiny_ecg_inference_0_0/drivers/tiny_ecg_inference_v1_0/src" "+incdir+D:/AMD/2026.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_23 -l processing_system7_vip_v1_0_25 -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_37 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_15 -l axi_data_fifo_v2_1_37 -l axi_protocol_converter_v2_1_38 -l axi_clock_converter_v2_1_36 -l blk_mem_gen_v8_4_13 -l axi_dwidth_converter_v2_1_38 \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/084a/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_15 -93  -incr \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/084a/hdl/fifo_generator_v13_2_vh_sim_rfs.vhd" \

vlog -work fifo_generator_v13_2_15  -incr -v2k5 "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/df05/hdl" "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../AMD/2026.1/Vivado/data/rsb/busdef" "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ip/design_1_tiny_ecg_inference_0_0/drivers/tiny_ecg_inference_v1_0/src" "+incdir+D:/AMD/2026.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_23 -l processing_system7_vip_v1_0_25 -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_37 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_15 -l axi_data_fifo_v2_1_37 -l axi_protocol_converter_v2_1_38 -l axi_clock_converter_v2_1_36 -l blk_mem_gen_v8_4_13 -l axi_dwidth_converter_v2_1_38 \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/084a/hdl/fifo_generator_v13_2_vl_sim_rfs.v" \

vlog -work axi_data_fifo_v2_1_37  -incr -v2k5 "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/df05/hdl" "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../AMD/2026.1/Vivado/data/rsb/busdef" "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ip/design_1_tiny_ecg_inference_0_0/drivers/tiny_ecg_inference_v1_0/src" "+incdir+D:/AMD/2026.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_23 -l processing_system7_vip_v1_0_25 -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_37 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_15 -l axi_data_fifo_v2_1_37 -l axi_protocol_converter_v2_1_38 -l axi_clock_converter_v2_1_36 -l blk_mem_gen_v8_4_13 -l axi_dwidth_converter_v2_1_38 \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/a62a/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_38  -incr -v2k5 "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/df05/hdl" "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../AMD/2026.1/Vivado/data/rsb/busdef" "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ip/design_1_tiny_ecg_inference_0_0/drivers/tiny_ecg_inference_v1_0/src" "+incdir+D:/AMD/2026.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_23 -l processing_system7_vip_v1_0_25 -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_37 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_15 -l axi_data_fifo_v2_1_37 -l axi_protocol_converter_v2_1_38 -l axi_clock_converter_v2_1_36 -l blk_mem_gen_v8_4_13 -l axi_dwidth_converter_v2_1_38 \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/b706/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/df05/hdl" "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../AMD/2026.1/Vivado/data/rsb/busdef" "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ip/design_1_tiny_ecg_inference_0_0/drivers/tiny_ecg_inference_v1_0/src" "+incdir+D:/AMD/2026.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_23 -l processing_system7_vip_v1_0_25 -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_37 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_15 -l axi_data_fifo_v2_1_37 -l axi_protocol_converter_v2_1_38 -l axi_clock_converter_v2_1_36 -l blk_mem_gen_v8_4_13 -l axi_dwidth_converter_v2_1_38 \
"../../../bd/design_1/ip/design_1_axi_mem_intercon_imp_auto_pc_0/sim/design_1_axi_mem_intercon_imp_auto_pc_0.v" \

vlog -work axi_clock_converter_v2_1_36  -incr -v2k5 "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/df05/hdl" "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../AMD/2026.1/Vivado/data/rsb/busdef" "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ip/design_1_tiny_ecg_inference_0_0/drivers/tiny_ecg_inference_v1_0/src" "+incdir+D:/AMD/2026.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_23 -l processing_system7_vip_v1_0_25 -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_37 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_15 -l axi_data_fifo_v2_1_37 -l axi_protocol_converter_v2_1_38 -l axi_clock_converter_v2_1_36 -l blk_mem_gen_v8_4_13 -l axi_dwidth_converter_v2_1_38 \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/efa9/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work blk_mem_gen_v8_4_13  -incr -v2k5 "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/df05/hdl" "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../AMD/2026.1/Vivado/data/rsb/busdef" "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ip/design_1_tiny_ecg_inference_0_0/drivers/tiny_ecg_inference_v1_0/src" "+incdir+D:/AMD/2026.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_23 -l processing_system7_vip_v1_0_25 -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_37 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_15 -l axi_data_fifo_v2_1_37 -l axi_protocol_converter_v2_1_38 -l axi_clock_converter_v2_1_36 -l blk_mem_gen_v8_4_13 -l axi_dwidth_converter_v2_1_38 \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/59f9/simulation/blk_mem_gen_v8_4.v" \

vlog -work axi_dwidth_converter_v2_1_38  -incr -v2k5 "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/df05/hdl" "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../AMD/2026.1/Vivado/data/rsb/busdef" "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ip/design_1_tiny_ecg_inference_0_0/drivers/tiny_ecg_inference_v1_0/src" "+incdir+D:/AMD/2026.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_23 -l processing_system7_vip_v1_0_25 -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_37 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_15 -l axi_data_fifo_v2_1_37 -l axi_protocol_converter_v2_1_38 -l axi_clock_converter_v2_1_36 -l blk_mem_gen_v8_4_13 -l axi_dwidth_converter_v2_1_38 \
"../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/8ebb/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/df05/hdl" "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../AMD/2026.1/Vivado/data/rsb/busdef" "+incdir+../../../../ecg_fpga_project.gen/sources_1/bd/design_1/ip/design_1_tiny_ecg_inference_0_0/drivers/tiny_ecg_inference_v1_0/src" "+incdir+D:/AMD/2026.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_23 -l processing_system7_vip_v1_0_25 -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_37 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_15 -l axi_data_fifo_v2_1_37 -l axi_protocol_converter_v2_1_38 -l axi_clock_converter_v2_1_36 -l blk_mem_gen_v8_4_13 -l axi_dwidth_converter_v2_1_38 \
"../../../bd/design_1/ip/design_1_axi_mem_intercon_imp_auto_us_0/sim/design_1_axi_mem_intercon_imp_auto_us_0.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

