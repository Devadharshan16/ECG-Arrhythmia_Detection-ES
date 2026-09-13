open_project Cardiac_1D_CNN_HLS
set_top tiny_ecg_inference
add_files ../cnn_hls.cpp
add_files -tb ../tb_tiny_ecg_inference.cpp
open_solution "solution1"
cosim_design
exit