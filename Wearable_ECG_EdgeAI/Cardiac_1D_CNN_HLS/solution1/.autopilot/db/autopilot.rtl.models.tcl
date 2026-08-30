set SynModuleInfo {
  {SRCNAME relu_i8 MODELNAME relu_i8 RTLNAME tiny_ecg_inference_relu_i8}
  {SRCNAME tiny_ecg_inference_Pipeline_VITIS_LOOP_33_1 MODELNAME tiny_ecg_inference_Pipeline_VITIS_LOOP_33_1 RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_33_1
    SUBMODULES {
      {MODELNAME tiny_ecg_inference_mul_8s_8s_16_1_1 RTLNAME tiny_ecg_inference_mul_8s_8s_16_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mac_muladd_8s_8s_16s_17_4_1 RTLNAME tiny_ecg_inference_mac_muladd_8s_8s_16s_17_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_8s_8s_13s_16_4_1 RTLNAME tiny_ecg_inference_mac_muladd_8s_8s_13s_16_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_8s_8s_17s_17_4_1 RTLNAME tiny_ecg_inference_mac_muladd_8s_8s_17s_17_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_33_1_conv1_bias_ROM_AUTO_1R RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_33_1_conv1_bias_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_33_1_p_ZL12conv1_weight_0_ROM_AUTO_1R RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_33_1_p_ZL12conv1_weight_0_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_33_1_p_ZL12conv1_weight_1_ROM_AUTO_1R RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_33_1_p_ZL12conv1_weight_1_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_33_1_p_ZL12conv1_weight_2_ROM_AUTO_1R RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_33_1_p_ZL12conv1_weight_2_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_33_1_p_ZL12conv1_weight_3_ROM_AUTO_1R RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_33_1_p_ZL12conv1_weight_3_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_33_1_p_ZL12conv1_weight_4_ROM_AUTO_1R RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_33_1_p_ZL12conv1_weight_4_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_flow_control_loop_pipe_sequential_init RTLNAME tiny_ecg_inference_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME tiny_ecg_inference_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME tiny_ecg_inference_Pipeline_VITIS_LOOP_59_4 MODELNAME tiny_ecg_inference_Pipeline_VITIS_LOOP_59_4 RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_59_4
    SUBMODULES {
      {MODELNAME tiny_ecg_inference_mac_muladd_8s_8s_16s_16_4_1 RTLNAME tiny_ecg_inference_mac_muladd_8s_8s_16s_16_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_8s_8s_15s_16_4_1 RTLNAME tiny_ecg_inference_mac_muladd_8s_8s_15s_16_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_59_4_conv2_bias_ROM_AUTO_1R RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_59_4_conv2_bias_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_59_4_p_ZL12conv2_weight_0_ROM_AUTO_1R RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_59_4_p_ZL12conv2_weight_0_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_59_4_p_ZL12conv2_weight_1_ROM_AUTO_1R RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_59_4_p_ZL12conv2_weight_1_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_59_4_p_ZL12conv2_weight_2_ROM_AUTO_1R RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_59_4_p_ZL12conv2_weight_2_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_59_4_p_ZL12conv2_weight_3_ROM_AUTO_1R RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_59_4_p_ZL12conv2_weight_3_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_59_4_p_ZL12conv2_weight_4_ROM_AUTO_1R RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_59_4_p_ZL12conv2_weight_4_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_59_4_p_ZL12conv2_weight_5_ROM_AUTO_1R RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_59_4_p_ZL12conv2_weight_5_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_59_4_p_ZL12conv2_weight_6_ROM_AUTO_1R RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_59_4_p_ZL12conv2_weight_6_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_59_4_p_ZL12conv2_weight_7_ROM_AUTO_1R RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_59_4_p_ZL12conv2_weight_7_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_59_4_p_ZL12conv2_weight_8_ROM_AUTO_1R RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_59_4_p_ZL12conv2_weight_8_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_59_4_p_ZL12conv2_weight_9_ROM_AUTO_1R RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_59_4_p_ZL12conv2_weight_9_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_59_4_p_ZL12conv2_weight_10_ROM_AUTO_1R RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_59_4_p_ZL12conv2_weight_10_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_59_4_p_ZL12conv2_weight_11_ROM_AUTO_1R RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_59_4_p_ZL12conv2_weight_11_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_59_4_p_ZL12conv2_weight_12_ROM_AUTO_1R RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_59_4_p_ZL12conv2_weight_12_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_59_4_p_ZL12conv2_weight_13_ROM_AUTO_1R RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_59_4_p_ZL12conv2_weight_13_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_59_4_p_ZL12conv2_weight_14_ROM_AUTO_1R RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_59_4_p_ZL12conv2_weight_14_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_59_4_p_ZL12conv2_weight_15_ROM_AUTO_1R RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_59_4_p_ZL12conv2_weight_15_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_59_4_p_ZL12conv2_weight_16_ROM_AUTO_1R RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_59_4_p_ZL12conv2_weight_16_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_59_4_p_ZL12conv2_weight_17_ROM_AUTO_1R RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_59_4_p_ZL12conv2_weight_17_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_59_4_p_ZL12conv2_weight_18_ROM_AUTO_1R RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_59_4_p_ZL12conv2_weight_18_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_59_4_p_ZL12conv2_weight_19_ROM_AUTO_1R RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_59_4_p_ZL12conv2_weight_19_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME tiny_ecg_inference_Pipeline_VITIS_LOOP_88_8 MODELNAME tiny_ecg_inference_Pipeline_VITIS_LOOP_88_8 RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_88_8
    SUBMODULES {
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_88_8_conv3_bias_ROM_AUTO_1R RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_88_8_conv3_bias_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_88_8_p_ZL12conv3_weight_0_ROM_AUTO_1R RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_88_8_p_ZL12conv3_weight_0_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_88_8_p_ZL12conv3_weight_1_ROM_AUTO_1R RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_88_8_p_ZL12conv3_weight_1_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_88_8_p_ZL12conv3_weight_2_ROM_AUTO_1R RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_88_8_p_ZL12conv3_weight_2_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_88_8_p_ZL12conv3_weight_3_ROM_AUTO_1R RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_88_8_p_ZL12conv3_weight_3_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_88_8_p_ZL12conv3_weight_4_ROM_AUTO_1R RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_88_8_p_ZL12conv3_weight_4_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_88_8_p_ZL12conv3_weight_5_ROM_AUTO_1R RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_88_8_p_ZL12conv3_weight_5_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_88_8_p_ZL12conv3_weight_6_ROM_AUTO_1R RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_88_8_p_ZL12conv3_weight_6_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_88_8_p_ZL12conv3_weight_7_ROM_AUTO_1R RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_88_8_p_ZL12conv3_weight_7_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_88_8_p_ZL12conv3_weight_8_ROM_AUTO_1R RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_88_8_p_ZL12conv3_weight_8_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_88_8_p_ZL12conv3_weight_9_ROM_AUTO_1R RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_88_8_p_ZL12conv3_weight_9_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_88_8_p_ZL12conv3_weight_10_ROM_AUTO_1R RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_88_8_p_ZL12conv3_weight_10_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_88_8_p_ZL12conv3_weight_11_ROM_AUTO_1R RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_88_8_p_ZL12conv3_weight_11_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_88_8_p_ZL12conv3_weight_12_ROM_AUTO_1R RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_88_8_p_ZL12conv3_weight_12_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_88_8_p_ZL12conv3_weight_13_ROM_AUTO_1R RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_88_8_p_ZL12conv3_weight_13_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_88_8_p_ZL12conv3_weight_14_ROM_AUTO_1R RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_88_8_p_ZL12conv3_weight_14_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_88_8_p_ZL12conv3_weight_15_ROM_AUTO_1R RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_88_8_p_ZL12conv3_weight_15_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_88_8_p_ZL12conv3_weight_16_ROM_AUTO_1R RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_88_8_p_ZL12conv3_weight_16_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_88_8_p_ZL12conv3_weight_17_ROM_AUTO_1R RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_88_8_p_ZL12conv3_weight_17_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_88_8_p_ZL12conv3_weight_18_ROM_AUTO_1R RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_88_8_p_ZL12conv3_weight_18_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_88_8_p_ZL12conv3_weight_19_ROM_AUTO_1R RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_88_8_p_ZL12conv3_weight_19_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_88_8_p_ZL12conv3_weight_20_ROM_AUTO_1R RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_88_8_p_ZL12conv3_weight_20_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_88_8_p_ZL12conv3_weight_21_ROM_AUTO_1R RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_88_8_p_ZL12conv3_weight_21_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_88_8_p_ZL12conv3_weight_22_ROM_AUTO_1R RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_88_8_p_ZL12conv3_weight_22_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_88_8_p_ZL12conv3_weight_23_ROM_AUTO_1R RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_88_8_p_ZL12conv3_weight_23_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME tiny_ecg_inference_Pipeline_VITIS_LOOP_116_12_VITIS_LOOP_117_13 MODELNAME tiny_ecg_inference_Pipeline_VITIS_LOOP_116_12_VITIS_LOOP_117_13 RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_116_12_VITIS_LOOP_117_13
    SUBMODULES {
      {MODELNAME tiny_ecg_inference_sparsemux_25_4_7_1_1 RTLNAME tiny_ecg_inference_sparsemux_25_4_7_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
    }
  }
  {SRCNAME tiny_ecg_inference_Pipeline_VITIS_LOOP_126_14 MODELNAME tiny_ecg_inference_Pipeline_VITIS_LOOP_126_14 RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_126_14
    SUBMODULES {
      {MODELNAME tiny_ecg_inference_mul_8s_7ns_15_1_1 RTLNAME tiny_ecg_inference_mul_8s_7ns_15_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_6s_7ns_13_1_1 RTLNAME tiny_ecg_inference_mul_6s_7ns_13_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_7s_7ns_14_1_1 RTLNAME tiny_ecg_inference_mul_7s_7ns_14_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_7s_7ns_13_1_1 RTLNAME tiny_ecg_inference_mul_7s_7ns_13_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_7ns_7ns_13_1_1 RTLNAME tiny_ecg_inference_mul_7ns_7ns_13_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_8s_7ns_14_1_1 RTLNAME tiny_ecg_inference_mul_8s_7ns_14_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_6s_7ns_12_1_1 RTLNAME tiny_ecg_inference_mul_6s_7ns_12_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_7ns_8ns_15_1_1 RTLNAME tiny_ecg_inference_mul_7ns_8ns_15_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_7ns_8s_15_1_1 RTLNAME tiny_ecg_inference_mul_7ns_8s_15_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_4s_7ns_10_1_1 RTLNAME tiny_ecg_inference_mul_4s_7ns_10_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_7ns_7ns_14_1_1 RTLNAME tiny_ecg_inference_mul_7ns_7ns_14_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_7ns_7s_14_1_1 RTLNAME tiny_ecg_inference_mul_7ns_7s_14_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_5s_7ns_11_1_1 RTLNAME tiny_ecg_inference_mul_5s_7ns_11_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_7ns_4s_14_1_1 RTLNAME tiny_ecg_inference_mul_7ns_4s_14_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_7ns_5s_14_1_1 RTLNAME tiny_ecg_inference_mul_7ns_5s_14_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_7ns_6ns_12_1_1 RTLNAME tiny_ecg_inference_mul_7ns_6ns_12_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_7ns_2s_13_1_1 RTLNAME tiny_ecg_inference_mul_7ns_2s_13_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_7ns_6s_13_1_1 RTLNAME tiny_ecg_inference_mul_7ns_6s_13_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_7ns_2s_15_1_1 RTLNAME tiny_ecg_inference_mul_7ns_2s_15_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_7ns_6s_14_1_1 RTLNAME tiny_ecg_inference_mul_7ns_6s_14_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_7ns_3s_12_1_1 RTLNAME tiny_ecg_inference_mul_7ns_3s_12_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_7ns_5ns_12_1_1 RTLNAME tiny_ecg_inference_mul_7ns_5ns_12_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_7ns_8ns_14_1_1 RTLNAME tiny_ecg_inference_mul_7ns_8ns_14_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_7ns_2s_14_1_1 RTLNAME tiny_ecg_inference_mul_7ns_2s_14_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_7ns_5s_13_1_1 RTLNAME tiny_ecg_inference_mul_7ns_5s_13_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_7ns_6ns_13_1_1 RTLNAME tiny_ecg_inference_mul_7ns_6ns_13_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mac_muladd_7ns_6s_13s_14_4_1 RTLNAME tiny_ecg_inference_mac_muladd_7ns_6s_13s_14_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_7ns_6s_15s_15_4_1 RTLNAME tiny_ecg_inference_mac_muladd_7ns_6s_15s_15_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_7ns_6s_14s_15_4_1 RTLNAME tiny_ecg_inference_mac_muladd_7ns_6s_14s_15_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_7s_7ns_13ns_14_4_1 RTLNAME tiny_ecg_inference_mac_muladd_7s_7ns_13ns_14_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_7s_7ns_12s_14_4_1 RTLNAME tiny_ecg_inference_mac_muladd_7s_7ns_12s_14_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_7ns_5s_15s_15_4_1 RTLNAME tiny_ecg_inference_mac_muladd_7ns_5s_15s_15_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_8s_7ns_15s_16_4_1 RTLNAME tiny_ecg_inference_mac_muladd_8s_7ns_15s_16_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_7ns_4s_15s_15_4_1 RTLNAME tiny_ecg_inference_mac_muladd_7ns_4s_15s_15_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_7s_7ns_14s_15_4_1 RTLNAME tiny_ecg_inference_mac_muladd_7s_7ns_14s_15_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_8s_7ns_13ns_16_4_1 RTLNAME tiny_ecg_inference_mac_muladd_8s_7ns_13ns_16_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_7ns_6s_14s_14_4_1 RTLNAME tiny_ecg_inference_mac_muladd_7ns_6s_14s_14_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_7ns_5ns_14s_14_4_1 RTLNAME tiny_ecg_inference_mac_muladd_7ns_5ns_14s_14_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_8s_7ns_14s_15_4_1 RTLNAME tiny_ecg_inference_mac_muladd_8s_7ns_14s_15_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_ama_addmuladd_7ns_7ns_7s_15s_16_4_1 RTLNAME tiny_ecg_inference_ama_addmuladd_7ns_7ns_7s_15s_16_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_8s_7ns_15s_15_4_1 RTLNAME tiny_ecg_inference_mac_muladd_8s_7ns_15s_15_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_8s_7ns_14s_16_4_1 RTLNAME tiny_ecg_inference_mac_muladd_8s_7ns_14s_16_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_8s_7ns_14ns_15_4_1 RTLNAME tiny_ecg_inference_mac_muladd_8s_7ns_14ns_15_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_7ns_3s_15s_15_4_1 RTLNAME tiny_ecg_inference_mac_muladd_7ns_3s_15s_15_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_7s_7ns_15s_15_4_1 RTLNAME tiny_ecg_inference_mac_muladd_7s_7ns_15s_15_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_7s_7ns_16s_16_4_1 RTLNAME tiny_ecg_inference_mac_muladd_7s_7ns_16s_16_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_7ns_6s_15s_16_4_1 RTLNAME tiny_ecg_inference_mac_muladd_7ns_6s_15s_16_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_8s_7ns_15ns_16_4_1 RTLNAME tiny_ecg_inference_mac_muladd_8s_7ns_15ns_16_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_7s_7ns_15s_16_4_1 RTLNAME tiny_ecg_inference_mac_muladd_7s_7ns_15s_16_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_7ns_6s_14ns_15_4_1 RTLNAME tiny_ecg_inference_mac_muladd_7ns_6s_14ns_15_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_7ns_6s_14ns_16_4_1 RTLNAME tiny_ecg_inference_mac_muladd_7ns_6s_14ns_16_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_8s_7ns_14ns_16_4_1 RTLNAME tiny_ecg_inference_mac_muladd_8s_7ns_14ns_16_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_7ns_5s_14ns_15_4_1 RTLNAME tiny_ecg_inference_mac_muladd_7ns_5s_14ns_15_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_8s_7ns_12s_15_4_1 RTLNAME tiny_ecg_inference_mac_muladd_8s_7ns_12s_15_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_8s_7ns_16s_17_4_1 RTLNAME tiny_ecg_inference_mac_muladd_8s_7ns_16s_17_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_8s_7ns_16s_16_4_1 RTLNAME tiny_ecg_inference_mac_muladd_8s_7ns_16s_16_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
    }
  }
  {SRCNAME tiny_ecg_inference MODELNAME tiny_ecg_inference RTLNAME tiny_ecg_inference IS_TOP 1
    SUBMODULES {
      {MODELNAME tiny_ecg_inference_buffer_c3_RAM_AUTO_1R1W RTLNAME tiny_ecg_inference_buffer_c3_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_flatten_RAM_AUTO_1R1W RTLNAME tiny_ecg_inference_flatten_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_DATA_IN_m_axi RTLNAME tiny_ecg_inference_DATA_IN_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME tiny_ecg_inference_DATA_OUT_m_axi RTLNAME tiny_ecg_inference_DATA_OUT_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME tiny_ecg_inference_CTRL_s_axi RTLNAME tiny_ecg_inference_CTRL_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME tiny_ecg_inference_control_s_axi RTLNAME tiny_ecg_inference_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
