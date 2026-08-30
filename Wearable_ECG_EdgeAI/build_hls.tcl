# Create the physical workspace
open_project -reset Cardiac_1D_CNN_HLS

# Define the hardware entry point
set_top tiny_ecg_inference

# Attach the C++ engine and the static INT8 parameters
add_files cnn_hls.cpp
add_files weights.h

# Create a synthesis solution for Vivado routing
open_solution -reset "solution1" -flow_target vivado

# Hardwire the specific Zynq-7000 part (Bypassing the frozen database)
set_part {xc7z020clg400-1}

# Target 100MHz (10.0 ns clock)
create_clock -period 10.0 -name default

# Command the compiler to generate the physical Verilog/RTL logic
csynth_design

# Package the generated RTL into an IP catalog for Vivado integration
export_design -format ip_catalog

# Exit safely
exit