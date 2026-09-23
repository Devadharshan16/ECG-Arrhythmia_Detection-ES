set SynModuleInfo {
  {SRCNAME tiny_ecg_inference_Pipeline_VITIS_LOOP_55_1 MODELNAME tiny_ecg_inference_Pipeline_VITIS_LOOP_55_1 RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_55_1
    SUBMODULES {
      {MODELNAME tiny_ecg_inference_flow_control_loop_pipe_sequential_init RTLNAME tiny_ecg_inference_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME tiny_ecg_inference_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME tiny_ecg_inference_Pipeline_VITIS_LOOP_77_2_VITIS_LOOP_78_3 MODELNAME tiny_ecg_inference_Pipeline_VITIS_LOOP_77_2_VITIS_LOOP_78_3 RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_77_2_VITIS_LOOP_78_3
    SUBMODULES {
      {MODELNAME tiny_ecg_inference_mul_18s_30ns_48_2_1 RTLNAME tiny_ecg_inference_mul_18s_30ns_48_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_urem_6ns_4ns_3_10_1 RTLNAME tiny_ecg_inference_urem_6ns_4ns_3_10_1 BINDTYPE op TYPE urem IMPL auto LATENCY 9 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_7ns_9ns_15_1_1 RTLNAME tiny_ecg_inference_mul_7ns_9ns_15_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_6ns_8ns_13_1_1 RTLNAME tiny_ecg_inference_mul_6ns_8ns_13_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_sparsemux_11_3_8_1_1 RTLNAME tiny_ecg_inference_sparsemux_11_3_8_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME tiny_ecg_inference_mul_9s_8s_17_1_1 RTLNAME tiny_ecg_inference_mul_9s_8s_17_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mac_muladd_9s_8s_17s_17_4_1 RTLNAME tiny_ecg_inference_mac_muladd_9s_8s_17s_17_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_77_2_VITIS_LOOP_78_3_conv1_bias_ROM_AUbkb RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_77_2_VITIS_LOOP_78_3_conv1_bias_ROM_AUbkb BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_77_2_VITIS_LOOP_78_3_p_ZL12conv1_weighcud RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_77_2_VITIS_LOOP_78_3_p_ZL12conv1_weighcud BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_77_2_VITIS_LOOP_78_3_p_ZL12conv1_weighdEe RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_77_2_VITIS_LOOP_78_3_p_ZL12conv1_weighdEe BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_77_2_VITIS_LOOP_78_3_p_ZL12conv1_weigheOg RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_77_2_VITIS_LOOP_78_3_p_ZL12conv1_weigheOg BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_77_2_VITIS_LOOP_78_3_p_ZL12conv1_weighfYi RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_77_2_VITIS_LOOP_78_3_p_ZL12conv1_weighfYi BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_77_2_VITIS_LOOP_78_3_p_ZL12conv1_weighg8j RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_77_2_VITIS_LOOP_78_3_p_ZL12conv1_weighg8j BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_77_2_VITIS_LOOP_78_3_conv1_multiplier_hbi RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_77_2_VITIS_LOOP_78_3_conv1_multiplier_hbi BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_77_2_VITIS_LOOP_78_3_conv1_shift_ROM_Aibs RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_77_2_VITIS_LOOP_78_3_conv1_shift_ROM_Aibs BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME tiny_ecg_inference_Pipeline_VITIS_LOOP_103_5_VITIS_LOOP_104_6 MODELNAME tiny_ecg_inference_Pipeline_VITIS_LOOP_103_5_VITIS_LOOP_104_6 RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_103_5_VITIS_LOOP_104_6
    SUBMODULES {
      {MODELNAME tiny_ecg_inference_urem_5ns_3ns_2_9_1 RTLNAME tiny_ecg_inference_urem_5ns_3ns_2_9_1 BINDTYPE op TYPE urem IMPL auto LATENCY 8 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_urem_5ns_4ns_3_9_1 RTLNAME tiny_ecg_inference_urem_5ns_4ns_3_9_1 BINDTYPE op TYPE urem IMPL auto LATENCY 8 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_5ns_7ns_11_1_1 RTLNAME tiny_ecg_inference_mul_5ns_7ns_11_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_8ns_8s_16_1_1 RTLNAME tiny_ecg_inference_mul_8ns_8s_16_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_8s_8ns_16_1_1 RTLNAME tiny_ecg_inference_mul_8s_8ns_16_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mac_muladd_8ns_8s_16s_17_4_1 RTLNAME tiny_ecg_inference_mac_muladd_8ns_8s_16s_17_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_8s_8ns_16s_17_4_1 RTLNAME tiny_ecg_inference_mac_muladd_8s_8ns_16s_17_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_8ns_8s_15s_17_4_1 RTLNAME tiny_ecg_inference_mac_muladd_8ns_8s_15s_17_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_8ns_8s_17s_18_4_1 RTLNAME tiny_ecg_inference_mac_muladd_8ns_8s_17s_18_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_8s_8ns_17s_18_4_1 RTLNAME tiny_ecg_inference_mac_muladd_8s_8ns_17s_18_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_103_5_VITIS_LOOP_104_6_conv2_bias_ROM_jbC RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_103_5_VITIS_LOOP_104_6_conv2_bias_ROM_jbC BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_103_5_VITIS_LOOP_104_6_p_ZL12conv2_weikbM RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_103_5_VITIS_LOOP_104_6_p_ZL12conv2_weikbM BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_103_5_VITIS_LOOP_104_6_p_ZL12conv2_weilbW RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_103_5_VITIS_LOOP_104_6_p_ZL12conv2_weilbW BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_103_5_VITIS_LOOP_104_6_p_ZL12conv2_weimb6 RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_103_5_VITIS_LOOP_104_6_p_ZL12conv2_weimb6 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_103_5_VITIS_LOOP_104_6_p_ZL12conv2_weincg RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_103_5_VITIS_LOOP_104_6_p_ZL12conv2_weincg BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_103_5_VITIS_LOOP_104_6_p_ZL12conv2_weiocq RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_103_5_VITIS_LOOP_104_6_p_ZL12conv2_weiocq BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_103_5_VITIS_LOOP_104_6_p_ZL12conv2_weipcA RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_103_5_VITIS_LOOP_104_6_p_ZL12conv2_weipcA BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_103_5_VITIS_LOOP_104_6_p_ZL12conv2_weiqcK RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_103_5_VITIS_LOOP_104_6_p_ZL12conv2_weiqcK BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_103_5_VITIS_LOOP_104_6_p_ZL12conv2_weircU RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_103_5_VITIS_LOOP_104_6_p_ZL12conv2_weircU BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_103_5_VITIS_LOOP_104_6_p_ZL12conv2_weisc4 RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_103_5_VITIS_LOOP_104_6_p_ZL12conv2_weisc4 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_103_5_VITIS_LOOP_104_6_p_ZL12conv2_weitde RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_103_5_VITIS_LOOP_104_6_p_ZL12conv2_weitde BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_103_5_VITIS_LOOP_104_6_p_ZL12conv2_weiudo RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_103_5_VITIS_LOOP_104_6_p_ZL12conv2_weiudo BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_103_5_VITIS_LOOP_104_6_p_ZL12conv2_weivdy RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_103_5_VITIS_LOOP_104_6_p_ZL12conv2_weivdy BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_103_5_VITIS_LOOP_104_6_p_ZL12conv2_weiwdI RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_103_5_VITIS_LOOP_104_6_p_ZL12conv2_weiwdI BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_103_5_VITIS_LOOP_104_6_p_ZL12conv2_weixdS RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_103_5_VITIS_LOOP_104_6_p_ZL12conv2_weixdS BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_103_5_VITIS_LOOP_104_6_p_ZL12conv2_weiyd2 RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_103_5_VITIS_LOOP_104_6_p_ZL12conv2_weiyd2 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_103_5_VITIS_LOOP_104_6_p_ZL12conv2_weizec RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_103_5_VITIS_LOOP_104_6_p_ZL12conv2_weizec BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_103_5_VITIS_LOOP_104_6_p_ZL12conv2_weiAem RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_103_5_VITIS_LOOP_104_6_p_ZL12conv2_weiAem BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_103_5_VITIS_LOOP_104_6_p_ZL12conv2_weiBew RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_103_5_VITIS_LOOP_104_6_p_ZL12conv2_weiBew BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_103_5_VITIS_LOOP_104_6_p_ZL12conv2_weiCeG RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_103_5_VITIS_LOOP_104_6_p_ZL12conv2_weiCeG BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_103_5_VITIS_LOOP_104_6_p_ZL12conv2_weiDeQ RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_103_5_VITIS_LOOP_104_6_p_ZL12conv2_weiDeQ BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_103_5_VITIS_LOOP_104_6_conv2_multiplieEe0 RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_103_5_VITIS_LOOP_104_6_conv2_multiplieEe0 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_103_5_VITIS_LOOP_104_6_conv2_shift_ROMFfa RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_103_5_VITIS_LOOP_104_6_conv2_shift_ROMFfa BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME tiny_ecg_inference_Pipeline_VITIS_LOOP_130_9_VITIS_LOOP_131_10 MODELNAME tiny_ecg_inference_Pipeline_VITIS_LOOP_130_9_VITIS_LOOP_131_10 RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_130_9_VITIS_LOOP_131_10
    SUBMODULES {
      {MODELNAME tiny_ecg_inference_urem_4ns_3ns_2_8_1 RTLNAME tiny_ecg_inference_urem_4ns_3ns_2_8_1 BINDTYPE op TYPE urem IMPL auto LATENCY 7 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_sparsemux_7_2_8_1_1 RTLNAME tiny_ecg_inference_sparsemux_7_2_8_1_1 BINDTYPE op TYPE sparsemux IMPL onehotencoding_realdef}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_130_9_VITIS_LOOP_131_10_conv3_bias_ROMGfk RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_130_9_VITIS_LOOP_131_10_conv3_bias_ROMGfk BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_130_9_VITIS_LOOP_131_10_p_ZL12conv3_weHfu RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_130_9_VITIS_LOOP_131_10_p_ZL12conv3_weHfu BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_130_9_VITIS_LOOP_131_10_p_ZL12conv3_weIfE RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_130_9_VITIS_LOOP_131_10_p_ZL12conv3_weIfE BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_130_9_VITIS_LOOP_131_10_p_ZL12conv3_weJfO RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_130_9_VITIS_LOOP_131_10_p_ZL12conv3_weJfO BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_130_9_VITIS_LOOP_131_10_p_ZL12conv3_weKfY RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_130_9_VITIS_LOOP_131_10_p_ZL12conv3_weKfY BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_130_9_VITIS_LOOP_131_10_p_ZL12conv3_weLf8 RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_130_9_VITIS_LOOP_131_10_p_ZL12conv3_weLf8 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_130_9_VITIS_LOOP_131_10_p_ZL12conv3_weMgi RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_130_9_VITIS_LOOP_131_10_p_ZL12conv3_weMgi BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_130_9_VITIS_LOOP_131_10_p_ZL12conv3_weNgs RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_130_9_VITIS_LOOP_131_10_p_ZL12conv3_weNgs BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_130_9_VITIS_LOOP_131_10_p_ZL12conv3_weOgC RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_130_9_VITIS_LOOP_131_10_p_ZL12conv3_weOgC BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_130_9_VITIS_LOOP_131_10_p_ZL12conv3_wePgM RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_130_9_VITIS_LOOP_131_10_p_ZL12conv3_wePgM BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_130_9_VITIS_LOOP_131_10_p_ZL12conv3_weQgW RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_130_9_VITIS_LOOP_131_10_p_ZL12conv3_weQgW BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_130_9_VITIS_LOOP_131_10_p_ZL12conv3_weRg6 RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_130_9_VITIS_LOOP_131_10_p_ZL12conv3_weRg6 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_130_9_VITIS_LOOP_131_10_p_ZL12conv3_weShg RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_130_9_VITIS_LOOP_131_10_p_ZL12conv3_weShg BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_130_9_VITIS_LOOP_131_10_p_ZL12conv3_weThq RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_130_9_VITIS_LOOP_131_10_p_ZL12conv3_weThq BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_130_9_VITIS_LOOP_131_10_p_ZL12conv3_weUhA RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_130_9_VITIS_LOOP_131_10_p_ZL12conv3_weUhA BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_130_9_VITIS_LOOP_131_10_p_ZL12conv3_weVhK RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_130_9_VITIS_LOOP_131_10_p_ZL12conv3_weVhK BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_130_9_VITIS_LOOP_131_10_p_ZL12conv3_weWhU RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_130_9_VITIS_LOOP_131_10_p_ZL12conv3_weWhU BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_130_9_VITIS_LOOP_131_10_p_ZL12conv3_weXh4 RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_130_9_VITIS_LOOP_131_10_p_ZL12conv3_weXh4 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_130_9_VITIS_LOOP_131_10_p_ZL12conv3_weYie RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_130_9_VITIS_LOOP_131_10_p_ZL12conv3_weYie BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_130_9_VITIS_LOOP_131_10_p_ZL12conv3_weZio RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_130_9_VITIS_LOOP_131_10_p_ZL12conv3_weZio BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_130_9_VITIS_LOOP_131_10_p_ZL12conv3_we0iy RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_130_9_VITIS_LOOP_131_10_p_ZL12conv3_we0iy BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_130_9_VITIS_LOOP_131_10_p_ZL12conv3_we1iI RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_130_9_VITIS_LOOP_131_10_p_ZL12conv3_we1iI BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_130_9_VITIS_LOOP_131_10_p_ZL12conv3_we2iS RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_130_9_VITIS_LOOP_131_10_p_ZL12conv3_we2iS BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_130_9_VITIS_LOOP_131_10_p_ZL12conv3_we3i2 RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_130_9_VITIS_LOOP_131_10_p_ZL12conv3_we3i2 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_130_9_VITIS_LOOP_131_10_p_ZL12conv3_we4jc RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_130_9_VITIS_LOOP_131_10_p_ZL12conv3_we4jc BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_130_9_VITIS_LOOP_131_10_conv3_multipli5jm RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_130_9_VITIS_LOOP_131_10_conv3_multipli5jm BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_130_9_VITIS_LOOP_131_10_conv3_shift_RO6jw RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_130_9_VITIS_LOOP_131_10_conv3_shift_RO6jw BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME tiny_ecg_inference_Pipeline_VITIS_LOOP_156_13_VITIS_LOOP_157_14 MODELNAME tiny_ecg_inference_Pipeline_VITIS_LOOP_156_13_VITIS_LOOP_157_14 RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_156_13_VITIS_LOOP_157_14
    SUBMODULES {
      {MODELNAME tiny_ecg_inference_sparsemux_33_4_8_1_1 RTLNAME tiny_ecg_inference_sparsemux_33_4_8_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
    }
  }
  {SRCNAME tiny_ecg_inference_Pipeline_6 MODELNAME tiny_ecg_inference_Pipeline_6 RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_6}
  {SRCNAME tiny_ecg_inference_Pipeline_VITIS_LOOP_167_15 MODELNAME tiny_ecg_inference_Pipeline_VITIS_LOOP_167_15 RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_167_15
    SUBMODULES {
      {MODELNAME tiny_ecg_inference_mul_31s_22s_52_2_1 RTLNAME tiny_ecg_inference_mul_31s_22s_52_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_8s_8ns_15_1_1 RTLNAME tiny_ecg_inference_mul_8s_8ns_15_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_6s_8ns_13_1_1 RTLNAME tiny_ecg_inference_mul_6s_8ns_13_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_5s_8ns_12_1_1 RTLNAME tiny_ecg_inference_mul_5s_8ns_12_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_8ns_7ns_14_1_1 RTLNAME tiny_ecg_inference_mul_8ns_7ns_14_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_6s_8ns_14_1_1 RTLNAME tiny_ecg_inference_mul_6s_8ns_14_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_7s_8ns_14_1_1 RTLNAME tiny_ecg_inference_mul_7s_8ns_14_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_8ns_7s_15_1_1 RTLNAME tiny_ecg_inference_mul_8ns_7s_15_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_8ns_7ns_15_1_1 RTLNAME tiny_ecg_inference_mul_8ns_7ns_15_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_7s_8ns_15_1_1 RTLNAME tiny_ecg_inference_mul_7s_8ns_15_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_8ns_2s_14_1_1 RTLNAME tiny_ecg_inference_mul_8ns_2s_14_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_8ns_6s_14_1_1 RTLNAME tiny_ecg_inference_mul_8ns_6s_14_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_8ns_2s_16_1_1 RTLNAME tiny_ecg_inference_mul_8ns_2s_16_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_8ns_8ns_16_1_1 RTLNAME tiny_ecg_inference_mul_8ns_8ns_16_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_4s_8ns_11_1_1 RTLNAME tiny_ecg_inference_mul_4s_8ns_11_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_8ns_5s_15_1_1 RTLNAME tiny_ecg_inference_mul_8ns_5s_15_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_8ns_5s_14_1_1 RTLNAME tiny_ecg_inference_mul_8ns_5s_14_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_8ns_6ns_14_1_1 RTLNAME tiny_ecg_inference_mul_8ns_6ns_14_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_8ns_6s_15_1_1 RTLNAME tiny_ecg_inference_mul_8ns_6s_15_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_8ns_8ns_15_1_1 RTLNAME tiny_ecg_inference_mul_8ns_8ns_15_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_8ns_2s_15_1_1 RTLNAME tiny_ecg_inference_mul_8ns_2s_15_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_8ns_6ns_13_1_1 RTLNAME tiny_ecg_inference_mul_8ns_6ns_13_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_8ns_4s_15_1_1 RTLNAME tiny_ecg_inference_mul_8ns_4s_15_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_8ns_3s_13_1_1 RTLNAME tiny_ecg_inference_mul_8ns_3s_13_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_8ns_5ns_13_1_1 RTLNAME tiny_ecg_inference_mul_8ns_5ns_13_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mac_muladd_8ns_7s_16s_16_4_1 RTLNAME tiny_ecg_inference_mac_muladd_8ns_7s_16s_16_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_8ns_7s_14ns_16_4_1 RTLNAME tiny_ecg_inference_mac_muladd_8ns_7s_14ns_16_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_8ns_4s_15ns_16_4_1 RTLNAME tiny_ecg_inference_mac_muladd_8ns_4s_15ns_16_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_8ns_6s_15ns_16_4_1 RTLNAME tiny_ecg_inference_mac_muladd_8ns_6s_15ns_16_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_8ns_6s_16s_16_4_1 RTLNAME tiny_ecg_inference_mac_muladd_8ns_6s_16s_16_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_8ns_7s_15s_16_4_1 RTLNAME tiny_ecg_inference_mac_muladd_8ns_7s_15s_16_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_8s_8ns_14ns_16_4_1 RTLNAME tiny_ecg_inference_mac_muladd_8s_8ns_14ns_16_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_8ns_5s_15s_15_4_1 RTLNAME tiny_ecg_inference_mac_muladd_8ns_5s_15s_15_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_8s_8ns_14s_16_4_1 RTLNAME tiny_ecg_inference_mac_muladd_8s_8ns_14s_16_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_8ns_7s_16s_17_4_1 RTLNAME tiny_ecg_inference_mac_muladd_8ns_7s_16s_17_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_8ns_6s_16s_17_4_1 RTLNAME tiny_ecg_inference_mac_muladd_8ns_6s_16s_17_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_8ns_6s_15s_16_4_1 RTLNAME tiny_ecg_inference_mac_muladd_8ns_6s_15s_16_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_8ns_7s_14s_16_4_1 RTLNAME tiny_ecg_inference_mac_muladd_8ns_7s_14s_16_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_8s_8ns_16s_16_4_1 RTLNAME tiny_ecg_inference_mac_muladd_8s_8ns_16s_16_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_8s_8ns_15s_16_4_1 RTLNAME tiny_ecg_inference_mac_muladd_8s_8ns_15s_16_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_8ns_7s_15ns_16_4_1 RTLNAME tiny_ecg_inference_mac_muladd_8ns_7s_15ns_16_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_8s_8ns_15ns_17_4_1 RTLNAME tiny_ecg_inference_mac_muladd_8s_8ns_15ns_17_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_8ns_6s_15s_15_4_1 RTLNAME tiny_ecg_inference_mac_muladd_8ns_6s_15s_15_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_8ns_5ns_16s_16_4_1 RTLNAME tiny_ecg_inference_mac_muladd_8ns_5ns_16s_16_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_8ns_5s_16s_16_4_1 RTLNAME tiny_ecg_inference_mac_muladd_8ns_5s_16s_16_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_8ns_5s_17s_17_4_1 RTLNAME tiny_ecg_inference_mac_muladd_8ns_5s_17s_17_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_8ns_6s_17s_17_4_1 RTLNAME tiny_ecg_inference_mac_muladd_8ns_6s_17s_17_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_8ns_3s_16s_16_4_1 RTLNAME tiny_ecg_inference_mac_muladd_8ns_3s_16s_16_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_8ns_6s_17s_18_4_1 RTLNAME tiny_ecg_inference_mac_muladd_8ns_6s_17s_18_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_8ns_4s_15s_15_4_1 RTLNAME tiny_ecg_inference_mac_muladd_8ns_4s_15s_15_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_8ns_7s_17s_18_4_1 RTLNAME tiny_ecg_inference_mac_muladd_8ns_7s_17s_18_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_8s_8ns_15s_17_4_1 RTLNAME tiny_ecg_inference_mac_muladd_8s_8ns_15s_17_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_8ns_7s_17s_17_4_1 RTLNAME tiny_ecg_inference_mac_muladd_8ns_7s_17s_17_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_ama_addmuladd_8ns_8ns_7s_15s_16_4_1 RTLNAME tiny_ecg_inference_ama_addmuladd_8ns_8ns_7s_15s_16_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_8ns_7s_15s_15_4_1 RTLNAME tiny_ecg_inference_mac_muladd_8ns_7s_15s_15_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
    }
  }
  {SRCNAME tiny_ecg_inference_Pipeline_VITIS_LOOP_181_17 MODELNAME tiny_ecg_inference_Pipeline_VITIS_LOOP_181_17 RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_181_17}
  {SRCNAME tiny_ecg_inference MODELNAME tiny_ecg_inference RTLNAME tiny_ecg_inference IS_TOP 1
    SUBMODULES {
      {MODELNAME tiny_ecg_inference_mul_64ns_66ns_129_5_1 RTLNAME tiny_ecg_inference_mul_64ns_66ns_129_5_1 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_22s_30ns_52_2_1 RTLNAME tiny_ecg_inference_mul_22s_30ns_52_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_local_ecg_RAM_AUTO_1R1W RTLNAME tiny_ecg_inference_local_ecg_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
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
