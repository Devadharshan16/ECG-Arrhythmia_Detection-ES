# Inferred from syn.array_partition.complete_threshold=4
set_directive_array_partition tiny_ecg_inference/fc_bias -dim=1 -type=complete fc_bias
set_directive_array_partition tiny_ecg_inference/fc_multiplier -dim=1 -type=complete fc_multiplier
set_directive_array_partition tiny_ecg_inference/fc_shift -dim=1 -type=complete fc_shift
# Inferred from performance & pipeline pragmas/directives
set_directive_loop_flatten tiny_ecg_inference/VITIS_LOOP_60_1 -off
set_directive_array_partition tiny_ecg_inference/conv2_weight -dim=1 -type=cyclic -factor=20 conv2_weight
set_directive_array_partition tiny_ecg_inference/buffer_c1_0 -dim=1 -type=cyclic -factor=5 buffer_c1_0
set_directive_loop_flatten tiny_ecg_inference/VITIS_LOOP_86_5
set_directive_array_partition tiny_ecg_inference/conv3_weight -dim=1 -type=cyclic -factor=24 conv3_weight
set_directive_array_partition tiny_ecg_inference/buffer_c2_0 -dim=1 -type=cyclic -factor=3 buffer_c2_0
set_directive_loop_flatten tiny_ecg_inference/VITIS_LOOP_114_9
set_directive_loop_flatten tiny_ecg_inference/VITIS_LOOP_139_13
set_directive_array_partition tiny_ecg_inference/fc_weight -dim=1 -type=complete fc_weight
