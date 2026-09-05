# Inferred from syn.array_partition.complete_threshold=4
set_directive_array_partition tiny_ecg_inference/fc_bias -dim=1 -type=complete fc_bias
set_directive_array_partition tiny_ecg_inference/fc_multiplier -dim=1 -type=complete fc_multiplier
set_directive_array_partition tiny_ecg_inference/fc_shift -dim=1 -type=complete fc_shift
# Inferred from performance & pipeline pragmas/directives
set_directive_array_partition tiny_ecg_inference/conv1_weight -dim=1 -type=cyclic -factor=5 conv1_weight
set_directive_array_partition tiny_ecg_inference/local_ecg -dim=1 -type=cyclic -factor=5 local_ecg
set_directive_loop_flatten tiny_ecg_inference/VITIS_LOOP_69_3
set_directive_array_partition tiny_ecg_inference/conv2_weight -dim=1 -type=cyclic -factor=20 conv2_weight
set_directive_array_partition tiny_ecg_inference/buffer_c1_0 -dim=1 -type=cyclic -factor=5 buffer_c1_0
set_directive_loop_flatten tiny_ecg_inference/VITIS_LOOP_94_6
set_directive_array_partition tiny_ecg_inference/conv3_weight -dim=1 -type=cyclic -factor=24 conv3_weight
set_directive_array_partition tiny_ecg_inference/buffer_c2_0 -dim=1 -type=cyclic -factor=3 buffer_c2_0
set_directive_loop_flatten tiny_ecg_inference/VITIS_LOOP_122_10
set_directive_loop_flatten tiny_ecg_inference/VITIS_LOOP_147_14
set_directive_array_partition tiny_ecg_inference/fc_weight -dim=1 -type=complete fc_weight
