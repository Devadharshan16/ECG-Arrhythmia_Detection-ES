set SynModuleInfo {
  {SRCNAME tiny_ecg_inference_Pipeline_VITIS_LOOP_61_2 MODELNAME tiny_ecg_inference_Pipeline_VITIS_LOOP_61_2 RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_61_2
    SUBMODULES {
      {MODELNAME tiny_ecg_inference_mul_19s_30ns_49_2_1 RTLNAME tiny_ecg_inference_mul_19s_30ns_49_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_9s_8s_17_1_1 RTLNAME tiny_ecg_inference_mul_9s_8s_17_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mac_muladd_9s_8s_17s_17_4_1 RTLNAME tiny_ecg_inference_mac_muladd_9s_8s_17s_17_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_61_2_conv1_weight_ROM_AUTO_1R RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_61_2_conv1_weight_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_61_2_conv1_multiplier_ROM_AUTO_1R RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_61_2_conv1_multiplier_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_61_2_conv1_shift_ROM_AUTO_1R RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_61_2_conv1_shift_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_61_2_conv1_bias_ROM_AUTO_1R RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_61_2_conv1_bias_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_flow_control_loop_pipe_sequential_init RTLNAME tiny_ecg_inference_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME tiny_ecg_inference_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5 MODELNAME tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5 RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5
    SUBMODULES {
      {MODELNAME tiny_ecg_inference_mul_64ns_66ns_129_5_1 RTLNAME tiny_ecg_inference_mul_64ns_66ns_129_5_1 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_urem_5ns_3ns_2_9_1 RTLNAME tiny_ecg_inference_urem_5ns_3ns_2_9_1 BINDTYPE op TYPE urem IMPL auto LATENCY 8 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_urem_5ns_4ns_3_9_1 RTLNAME tiny_ecg_inference_urem_5ns_4ns_3_9_1 BINDTYPE op TYPE urem IMPL auto LATENCY 8 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_5ns_7ns_11_1_1 RTLNAME tiny_ecg_inference_mul_5ns_7ns_11_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_6ns_8ns_13_1_1 RTLNAME tiny_ecg_inference_mul_6ns_8ns_13_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_sparsemux_11_3_7_1_1 RTLNAME tiny_ecg_inference_sparsemux_11_3_7_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME tiny_ecg_inference_mul_7ns_8s_15_1_1 RTLNAME tiny_ecg_inference_mul_7ns_8s_15_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_8s_7ns_15_1_1 RTLNAME tiny_ecg_inference_mul_8s_7ns_15_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mac_muladd_8s_7ns_15s_16_4_1 RTLNAME tiny_ecg_inference_mac_muladd_8s_7ns_15s_16_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_8s_7ns_16s_17_4_1 RTLNAME tiny_ecg_inference_mac_muladd_8s_7ns_16s_17_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_conv2_bias_ROM_AUbkb RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_conv2_bias_ROM_AUbkb BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_p_ZL12conv2_weighcud RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_p_ZL12conv2_weighcud BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_p_ZL12conv2_weighdEe RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_p_ZL12conv2_weighdEe BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_p_ZL12conv2_weigheOg RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_p_ZL12conv2_weigheOg BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_p_ZL12conv2_weighfYi RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_p_ZL12conv2_weighfYi BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_p_ZL12conv2_weighg8j RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_p_ZL12conv2_weighg8j BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_p_ZL12conv2_weighhbi RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_p_ZL12conv2_weighhbi BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_p_ZL12conv2_weighibs RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_p_ZL12conv2_weighibs BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_p_ZL12conv2_weighjbC RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_p_ZL12conv2_weighjbC BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_p_ZL12conv2_weighkbM RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_p_ZL12conv2_weighkbM BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_p_ZL12conv2_weighlbW RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_p_ZL12conv2_weighlbW BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_p_ZL12conv2_weighmb6 RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_p_ZL12conv2_weighmb6 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_p_ZL12conv2_weighncg RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_p_ZL12conv2_weighncg BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_p_ZL12conv2_weighocq RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_p_ZL12conv2_weighocq BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_p_ZL12conv2_weighpcA RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_p_ZL12conv2_weighpcA BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_p_ZL12conv2_weighqcK RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_p_ZL12conv2_weighqcK BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_p_ZL12conv2_weighrcU RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_p_ZL12conv2_weighrcU BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_p_ZL12conv2_weighsc4 RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_p_ZL12conv2_weighsc4 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_p_ZL12conv2_weightde RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_p_ZL12conv2_weightde BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_p_ZL12conv2_weighudo RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_p_ZL12conv2_weighudo BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_p_ZL12conv2_weighvdy RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_p_ZL12conv2_weighvdy BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_conv2_multiplier_wdI RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_conv2_multiplier_wdI BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_conv2_shift_ROM_AxdS RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_conv2_shift_ROM_AxdS BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME tiny_ecg_inference_Pipeline_VITIS_LOOP_113_8_VITIS_LOOP_114_9 MODELNAME tiny_ecg_inference_Pipeline_VITIS_LOOP_113_8_VITIS_LOOP_114_9 RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_113_8_VITIS_LOOP_114_9
    SUBMODULES {
      {MODELNAME tiny_ecg_inference_urem_4ns_3ns_2_8_1 RTLNAME tiny_ecg_inference_urem_4ns_3ns_2_8_1 BINDTYPE op TYPE urem IMPL auto LATENCY 7 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_sparsemux_7_2_7_1_1 RTLNAME tiny_ecg_inference_sparsemux_7_2_7_1_1 BINDTYPE op TYPE sparsemux IMPL onehotencoding_realdef}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_113_8_VITIS_LOOP_114_9_conv3_bias_ROM_yd2 RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_113_8_VITIS_LOOP_114_9_conv3_bias_ROM_yd2 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_113_8_VITIS_LOOP_114_9_p_ZL12conv3_weizec RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_113_8_VITIS_LOOP_114_9_p_ZL12conv3_weizec BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_113_8_VITIS_LOOP_114_9_p_ZL12conv3_weiAem RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_113_8_VITIS_LOOP_114_9_p_ZL12conv3_weiAem BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_113_8_VITIS_LOOP_114_9_p_ZL12conv3_weiBew RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_113_8_VITIS_LOOP_114_9_p_ZL12conv3_weiBew BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_113_8_VITIS_LOOP_114_9_p_ZL12conv3_weiCeG RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_113_8_VITIS_LOOP_114_9_p_ZL12conv3_weiCeG BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_113_8_VITIS_LOOP_114_9_p_ZL12conv3_weiDeQ RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_113_8_VITIS_LOOP_114_9_p_ZL12conv3_weiDeQ BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_113_8_VITIS_LOOP_114_9_p_ZL12conv3_weiEe0 RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_113_8_VITIS_LOOP_114_9_p_ZL12conv3_weiEe0 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_113_8_VITIS_LOOP_114_9_p_ZL12conv3_weiFfa RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_113_8_VITIS_LOOP_114_9_p_ZL12conv3_weiFfa BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_113_8_VITIS_LOOP_114_9_p_ZL12conv3_weiGfk RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_113_8_VITIS_LOOP_114_9_p_ZL12conv3_weiGfk BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_113_8_VITIS_LOOP_114_9_p_ZL12conv3_weiHfu RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_113_8_VITIS_LOOP_114_9_p_ZL12conv3_weiHfu BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_113_8_VITIS_LOOP_114_9_p_ZL12conv3_weiIfE RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_113_8_VITIS_LOOP_114_9_p_ZL12conv3_weiIfE BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_113_8_VITIS_LOOP_114_9_p_ZL12conv3_weiJfO RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_113_8_VITIS_LOOP_114_9_p_ZL12conv3_weiJfO BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_113_8_VITIS_LOOP_114_9_p_ZL12conv3_weiKfY RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_113_8_VITIS_LOOP_114_9_p_ZL12conv3_weiKfY BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_113_8_VITIS_LOOP_114_9_p_ZL12conv3_weiLf8 RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_113_8_VITIS_LOOP_114_9_p_ZL12conv3_weiLf8 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_113_8_VITIS_LOOP_114_9_p_ZL12conv3_weiMgi RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_113_8_VITIS_LOOP_114_9_p_ZL12conv3_weiMgi BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_113_8_VITIS_LOOP_114_9_p_ZL12conv3_weiNgs RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_113_8_VITIS_LOOP_114_9_p_ZL12conv3_weiNgs BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_113_8_VITIS_LOOP_114_9_p_ZL12conv3_weiOgC RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_113_8_VITIS_LOOP_114_9_p_ZL12conv3_weiOgC BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_113_8_VITIS_LOOP_114_9_p_ZL12conv3_weiPgM RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_113_8_VITIS_LOOP_114_9_p_ZL12conv3_weiPgM BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_113_8_VITIS_LOOP_114_9_p_ZL12conv3_weiQgW RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_113_8_VITIS_LOOP_114_9_p_ZL12conv3_weiQgW BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_113_8_VITIS_LOOP_114_9_p_ZL12conv3_weiRg6 RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_113_8_VITIS_LOOP_114_9_p_ZL12conv3_weiRg6 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_113_8_VITIS_LOOP_114_9_p_ZL12conv3_weiShg RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_113_8_VITIS_LOOP_114_9_p_ZL12conv3_weiShg BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_113_8_VITIS_LOOP_114_9_p_ZL12conv3_weiThq RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_113_8_VITIS_LOOP_114_9_p_ZL12conv3_weiThq BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_113_8_VITIS_LOOP_114_9_p_ZL12conv3_weiUhA RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_113_8_VITIS_LOOP_114_9_p_ZL12conv3_weiUhA BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_113_8_VITIS_LOOP_114_9_p_ZL12conv3_weiVhK RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_113_8_VITIS_LOOP_114_9_p_ZL12conv3_weiVhK BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_113_8_VITIS_LOOP_114_9_p_ZL12conv3_weiWhU RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_113_8_VITIS_LOOP_114_9_p_ZL12conv3_weiWhU BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_113_8_VITIS_LOOP_114_9_conv3_multiplieXh4 RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_113_8_VITIS_LOOP_114_9_conv3_multiplieXh4 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_113_8_VITIS_LOOP_114_9_conv3_shift_ROMYie RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_113_8_VITIS_LOOP_114_9_conv3_shift_ROMYie BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME tiny_ecg_inference_Pipeline_VITIS_LOOP_138_12_VITIS_LOOP_139_13 MODELNAME tiny_ecg_inference_Pipeline_VITIS_LOOP_138_12_VITIS_LOOP_139_13 RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_138_12_VITIS_LOOP_139_13
    SUBMODULES {
      {MODELNAME tiny_ecg_inference_sparsemux_33_4_7_1_1 RTLNAME tiny_ecg_inference_sparsemux_33_4_7_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
    }
  }
  {SRCNAME tiny_ecg_inference_Pipeline_VITIS_LOOP_148_14 MODELNAME tiny_ecg_inference_Pipeline_VITIS_LOOP_148_14 RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_148_14
    SUBMODULES {
      {MODELNAME tiny_ecg_inference_mul_31s_21s_51_2_1 RTLNAME tiny_ecg_inference_mul_31s_21s_51_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_6s_7ns_12_1_1 RTLNAME tiny_ecg_inference_mul_6s_7ns_12_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_6s_7ns_13_1_1 RTLNAME tiny_ecg_inference_mul_6s_7ns_13_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_8s_7ns_14_1_1 RTLNAME tiny_ecg_inference_mul_8s_7ns_14_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_5s_7ns_11_1_1 RTLNAME tiny_ecg_inference_mul_5s_7ns_11_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_7s_7ns_14_1_1 RTLNAME tiny_ecg_inference_mul_7s_7ns_14_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_7ns_7ns_13_1_1 RTLNAME tiny_ecg_inference_mul_7ns_7ns_13_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_7s_7ns_13_1_1 RTLNAME tiny_ecg_inference_mul_7s_7ns_13_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_7ns_8ns_15_1_1 RTLNAME tiny_ecg_inference_mul_7ns_8ns_15_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_4s_7ns_10_1_1 RTLNAME tiny_ecg_inference_mul_4s_7ns_10_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_7ns_7s_14_1_1 RTLNAME tiny_ecg_inference_mul_7ns_7s_14_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_7ns_7ns_14_1_1 RTLNAME tiny_ecg_inference_mul_7ns_7ns_14_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_7ns_2s_13_1_1 RTLNAME tiny_ecg_inference_mul_7ns_2s_13_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_7ns_6s_13_1_1 RTLNAME tiny_ecg_inference_mul_7ns_6s_13_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_7ns_2s_15_1_1 RTLNAME tiny_ecg_inference_mul_7ns_2s_15_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_7ns_3s_12_1_1 RTLNAME tiny_ecg_inference_mul_7ns_3s_12_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_7ns_5ns_12_1_1 RTLNAME tiny_ecg_inference_mul_7ns_5ns_12_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_7ns_6s_14_1_1 RTLNAME tiny_ecg_inference_mul_7ns_6s_14_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_7ns_5s_14_1_1 RTLNAME tiny_ecg_inference_mul_7ns_5s_14_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_7ns_5s_13_1_1 RTLNAME tiny_ecg_inference_mul_7ns_5s_13_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_7ns_6ns_13_1_1 RTLNAME tiny_ecg_inference_mul_7ns_6ns_13_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_7ns_8ns_14_1_1 RTLNAME tiny_ecg_inference_mul_7ns_8ns_14_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_7ns_2s_14_1_1 RTLNAME tiny_ecg_inference_mul_7ns_2s_14_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_7ns_6ns_12_1_1 RTLNAME tiny_ecg_inference_mul_7ns_6ns_12_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_7ns_4s_14_1_1 RTLNAME tiny_ecg_inference_mul_7ns_4s_14_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mac_muladd_7s_7ns_15s_15_4_1 RTLNAME tiny_ecg_inference_mac_muladd_7s_7ns_15s_15_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_8s_7ns_15s_15_4_1 RTLNAME tiny_ecg_inference_mac_muladd_8s_7ns_15s_15_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_7ns_5s_14s_14_4_1 RTLNAME tiny_ecg_inference_mac_muladd_7ns_5s_14s_14_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_7s_7ns_13ns_15_4_1 RTLNAME tiny_ecg_inference_mac_muladd_7s_7ns_13ns_15_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_8s_7ns_14s_15_4_1 RTLNAME tiny_ecg_inference_mac_muladd_8s_7ns_14s_15_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_7s_7ns_14ns_15_4_1 RTLNAME tiny_ecg_inference_mac_muladd_7s_7ns_14ns_15_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_7ns_4s_14ns_15_4_1 RTLNAME tiny_ecg_inference_mac_muladd_7ns_4s_14ns_15_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_7ns_6s_14ns_15_4_1 RTLNAME tiny_ecg_inference_mac_muladd_7ns_6s_14ns_15_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_7ns_6s_15s_15_4_1 RTLNAME tiny_ecg_inference_mac_muladd_7ns_6s_15s_15_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_7s_7ns_14s_15_4_1 RTLNAME tiny_ecg_inference_mac_muladd_7s_7ns_14s_15_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_8s_7ns_13ns_15_4_1 RTLNAME tiny_ecg_inference_mac_muladd_8s_7ns_13ns_15_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_8s_7ns_13s_15_4_1 RTLNAME tiny_ecg_inference_mac_muladd_8s_7ns_13s_15_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_7s_7ns_15s_16_4_1 RTLNAME tiny_ecg_inference_mac_muladd_7s_7ns_15s_16_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_7ns_6s_15s_16_4_1 RTLNAME tiny_ecg_inference_mac_muladd_7ns_6s_15s_16_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_7ns_6s_14s_15_4_1 RTLNAME tiny_ecg_inference_mac_muladd_7ns_6s_14s_15_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_7ns_6s_16s_17_4_1 RTLNAME tiny_ecg_inference_mac_muladd_7ns_6s_16s_17_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_7ns_5s_16s_16_4_1 RTLNAME tiny_ecg_inference_mac_muladd_7ns_5s_16s_16_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_8s_7ns_14ns_16_4_1 RTLNAME tiny_ecg_inference_mac_muladd_8s_7ns_14ns_16_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_7ns_6s_14s_14_4_1 RTLNAME tiny_ecg_inference_mac_muladd_7ns_6s_14s_14_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_7ns_5ns_15s_15_4_1 RTLNAME tiny_ecg_inference_mac_muladd_7ns_5ns_15s_15_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_ama_addmuladd_7ns_7ns_7s_14s_15_4_1 RTLNAME tiny_ecg_inference_ama_addmuladd_7ns_7ns_7s_14s_15_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_7ns_5s_15s_15_4_1 RTLNAME tiny_ecg_inference_mac_muladd_7ns_5s_15s_15_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_7ns_6s_16s_16_4_1 RTLNAME tiny_ecg_inference_mac_muladd_7ns_6s_16s_16_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_7s_7ns_13s_15_4_1 RTLNAME tiny_ecg_inference_mac_muladd_7s_7ns_13s_15_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_7ns_3s_15s_15_4_1 RTLNAME tiny_ecg_inference_mac_muladd_7ns_3s_15s_15_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_7s_7ns_14s_14_4_1 RTLNAME tiny_ecg_inference_mac_muladd_7s_7ns_14s_14_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_7ns_4s_14s_14_4_1 RTLNAME tiny_ecg_inference_mac_muladd_7ns_4s_14s_14_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_7s_7ns_16s_16_4_1 RTLNAME tiny_ecg_inference_mac_muladd_7s_7ns_16s_16_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_8s_7ns_14s_16_4_1 RTLNAME tiny_ecg_inference_mac_muladd_8s_7ns_14s_16_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
    }
  }
  {SRCNAME tiny_ecg_inference MODELNAME tiny_ecg_inference RTLNAME tiny_ecg_inference IS_TOP 1
    SUBMODULES {
      {MODELNAME tiny_ecg_inference_mul_21s_30ns_51_2_1 RTLNAME tiny_ecg_inference_mul_21s_30ns_51_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_buffer_c1_RAM_AUTO_1R1W RTLNAME tiny_ecg_inference_buffer_c1_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_buffer_c2_RAM_AUTO_1R1W RTLNAME tiny_ecg_inference_buffer_c2_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_buffer_c3_RAM_AUTO_1R1W RTLNAME tiny_ecg_inference_buffer_c3_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_flatten_RAM_AUTO_1R1W RTLNAME tiny_ecg_inference_flatten_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_DATA_IN_m_axi RTLNAME tiny_ecg_inference_DATA_IN_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME tiny_ecg_inference_DATA_OUT_m_axi RTLNAME tiny_ecg_inference_DATA_OUT_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME tiny_ecg_inference_CTRL_s_axi RTLNAME tiny_ecg_inference_CTRL_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME tiny_ecg_inference_control_s_axi RTLNAME tiny_ecg_inference_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
