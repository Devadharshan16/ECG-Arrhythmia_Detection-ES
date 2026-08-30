# Inferred from syn.array_partition.complete_threshold=4
set_directive_array_partition tiny_ecg_inference/fc_bias -dim=1 -type=complete fc_bias
# Inferred from performance & pipeline pragmas/directives
set_directive_array_partition tiny_ecg_inference/conv1_weight -dim=1 -type=cyclic -factor=5 conv1_weight
set_directive_array_partition tiny_ecg_inference/conv2_weight -dim=1 -type=cyclic -factor=20 conv2_weight
set_directive_array_partition tiny_ecg_inference/conv3_weight -dim=1 -type=cyclic -factor=24 conv3_weight
set_directive_array_partition tiny_ecg_inference/buffer_c3 -dim=2 -type=complete buffer_c3
set_directive_loop_flatten tiny_ecg_inference/VITIS_LOOP_117_13
set_directive_array_partition tiny_ecg_inference/fc_weight -dim=1 -type=complete fc_weight
