open_project D:/ECG-Embedded_System/Wearable_ECG_EdgeAI/ecg_fpga_project/ecg_fpga_project.xpr
open_bd_design D:/ECG-Embedded_System/Wearable_ECG_EdgeAI/ecg_fpga_project/ecg_fpga_project.srcs/sources_1/bd/design_1/design_1.bd

# The cell is already created from the previous failed run!
# Let's check if it exists, if not create it
if {[llength [get_bd_cells axi_gpio_0]] == 0} {
    create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_0
    set_property -dict [list \
        CONFIG.C_ALL_OUTPUTS {1} \
        CONFIG.C_GPIO_WIDTH {6} \
        CONFIG.C_IS_DUAL {1} \
        CONFIG.C_ALL_OUTPUTS_2 {1} \
        CONFIG.C_GPIO2_WIDTH {1} \
    ] [get_bd_cells axi_gpio_0]
    apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config { Clk_master {Auto} Clk_slave {Auto} Clk_xbar {Auto} Master {/processing_system7_0/M_AXI_GP0} Slave {/axi_gpio_0/S_AXI} ddr_seg {Auto} intc_ip {New AXI Interconnect} master_apm {0}}  [get_bd_intf_pins axi_gpio_0/S_AXI]
    make_bd_intf_pins_external  [get_bd_intf_pins axi_gpio_0/GPIO]
    make_bd_intf_pins_external  [get_bd_intf_pins axi_gpio_0/GPIO2]
}

# Rename them correctly
set_property name oled_pins [get_bd_intf_ports GPIO_0]
set_property name buzzer_pin [get_bd_intf_ports GPIO2_0]

save_bd_design
puts "OLED AND BUZZER GPIO ADDED"
