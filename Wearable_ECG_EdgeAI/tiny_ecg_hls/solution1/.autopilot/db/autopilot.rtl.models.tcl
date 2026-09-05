set SynModuleInfo {
  {SRCNAME tiny_ecg_inference_Pipeline_VITIS_LOOP_49_1 MODELNAME tiny_ecg_inference_Pipeline_VITIS_LOOP_49_1 RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_49_1
    SUBMODULES {
      {MODELNAME tiny_ecg_inference_flow_control_loop_pipe_sequential_init RTLNAME tiny_ecg_inference_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME tiny_ecg_inference_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME tiny_ecg_inference_Pipeline_VITIS_LOOP_68_2_VITIS_LOOP_69_3 MODELNAME tiny_ecg_inference_Pipeline_VITIS_LOOP_68_2_VITIS_LOOP_69_3 RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_68_2_VITIS_LOOP_69_3
    SUBMODULES {
      {MODELNAME tiny_ecg_inference_mul_19s_30ns_49_1_1 RTLNAME tiny_ecg_inference_mul_19s_30ns_49_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_64ns_66ns_129_1_1 RTLNAME tiny_ecg_inference_mul_64ns_66ns_129_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_urem_6ns_4ns_3_10_1 RTLNAME tiny_ecg_inference_urem_6ns_4ns_3_10_1 BINDTYPE op TYPE urem IMPL auto LATENCY 9 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_7ns_9ns_15_1_1 RTLNAME tiny_ecg_inference_mul_7ns_9ns_15_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_6ns_8ns_13_1_1 RTLNAME tiny_ecg_inference_mul_6ns_8ns_13_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_sparsemux_11_3_8_1_1 RTLNAME tiny_ecg_inference_sparsemux_11_3_8_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME tiny_ecg_inference_mul_9s_8s_17_1_1 RTLNAME tiny_ecg_inference_mul_9s_8s_17_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_ama_addmuladd_8s_8s_8s_17s_17_4_1 RTLNAME tiny_ecg_inference_ama_addmuladd_8s_8s_8s_17s_17_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_9s_8s_17s_17_4_1 RTLNAME tiny_ecg_inference_mac_muladd_9s_8s_17s_17_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_ama_addmuladd_8s_8s_8s_17s_18_4_1 RTLNAME tiny_ecg_inference_ama_addmuladd_8s_8s_8s_17s_18_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_68_2_VITIS_LOOP_69_3_conv1_bias_ROM_AUbkb RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_68_2_VITIS_LOOP_69_3_conv1_bias_ROM_AUbkb BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_68_2_VITIS_LOOP_69_3_p_ZL12conv1_weighcud RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_68_2_VITIS_LOOP_69_3_p_ZL12conv1_weighcud BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_68_2_VITIS_LOOP_69_3_p_ZL12conv1_weighdEe RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_68_2_VITIS_LOOP_69_3_p_ZL12conv1_weighdEe BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_68_2_VITIS_LOOP_69_3_p_ZL12conv1_weigheOg RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_68_2_VITIS_LOOP_69_3_p_ZL12conv1_weigheOg BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_68_2_VITIS_LOOP_69_3_p_ZL12conv1_weighfYi RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_68_2_VITIS_LOOP_69_3_p_ZL12conv1_weighfYi BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_68_2_VITIS_LOOP_69_3_p_ZL12conv1_weighg8j RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_68_2_VITIS_LOOP_69_3_p_ZL12conv1_weighg8j BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_68_2_VITIS_LOOP_69_3_conv1_multiplier_hbi RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_68_2_VITIS_LOOP_69_3_conv1_multiplier_hbi BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_68_2_VITIS_LOOP_69_3_conv1_shift_ROM_Aibs RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_68_2_VITIS_LOOP_69_3_conv1_shift_ROM_Aibs BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME tiny_ecg_inference_Pipeline_VITIS_LOOP_93_5_VITIS_LOOP_94_6 MODELNAME tiny_ecg_inference_Pipeline_VITIS_LOOP_93_5_VITIS_LOOP_94_6 RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_93_5_VITIS_LOOP_94_6
    SUBMODULES {
      {MODELNAME tiny_ecg_inference_mul_21s_30ns_51_1_1 RTLNAME tiny_ecg_inference_mul_21s_30ns_51_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_urem_5ns_3ns_2_9_1 RTLNAME tiny_ecg_inference_urem_5ns_3ns_2_9_1 BINDTYPE op TYPE urem IMPL auto LATENCY 8 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_urem_5ns_4ns_3_9_1 RTLNAME tiny_ecg_inference_urem_5ns_4ns_3_9_1 BINDTYPE op TYPE urem IMPL auto LATENCY 8 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_5ns_7ns_11_1_1 RTLNAME tiny_ecg_inference_mul_5ns_7ns_11_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_sparsemux_11_3_7_1_1 RTLNAME tiny_ecg_inference_sparsemux_11_3_7_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME tiny_ecg_inference_mul_7ns_8s_15_1_1 RTLNAME tiny_ecg_inference_mul_7ns_8s_15_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_8s_7ns_15_1_1 RTLNAME tiny_ecg_inference_mul_8s_7ns_15_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mac_muladd_8s_7ns_15s_16_4_1 RTLNAME tiny_ecg_inference_mac_muladd_8s_7ns_15s_16_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_8s_7ns_16s_17_4_1 RTLNAME tiny_ecg_inference_mac_muladd_8s_7ns_16s_17_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_93_5_VITIS_LOOP_94_6_conv2_bias_ROM_AUjbC RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_93_5_VITIS_LOOP_94_6_conv2_bias_ROM_AUjbC BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_93_5_VITIS_LOOP_94_6_p_ZL12conv2_weighkbM RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_93_5_VITIS_LOOP_94_6_p_ZL12conv2_weighkbM BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_93_5_VITIS_LOOP_94_6_p_ZL12conv2_weighlbW RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_93_5_VITIS_LOOP_94_6_p_ZL12conv2_weighlbW BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_93_5_VITIS_LOOP_94_6_p_ZL12conv2_weighmb6 RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_93_5_VITIS_LOOP_94_6_p_ZL12conv2_weighmb6 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_93_5_VITIS_LOOP_94_6_p_ZL12conv2_weighncg RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_93_5_VITIS_LOOP_94_6_p_ZL12conv2_weighncg BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_93_5_VITIS_LOOP_94_6_p_ZL12conv2_weighocq RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_93_5_VITIS_LOOP_94_6_p_ZL12conv2_weighocq BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_93_5_VITIS_LOOP_94_6_p_ZL12conv2_weighpcA RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_93_5_VITIS_LOOP_94_6_p_ZL12conv2_weighpcA BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_93_5_VITIS_LOOP_94_6_p_ZL12conv2_weighqcK RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_93_5_VITIS_LOOP_94_6_p_ZL12conv2_weighqcK BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_93_5_VITIS_LOOP_94_6_p_ZL12conv2_weighrcU RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_93_5_VITIS_LOOP_94_6_p_ZL12conv2_weighrcU BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_93_5_VITIS_LOOP_94_6_p_ZL12conv2_weighsc4 RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_93_5_VITIS_LOOP_94_6_p_ZL12conv2_weighsc4 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_93_5_VITIS_LOOP_94_6_p_ZL12conv2_weightde RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_93_5_VITIS_LOOP_94_6_p_ZL12conv2_weightde BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_93_5_VITIS_LOOP_94_6_p_ZL12conv2_weighudo RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_93_5_VITIS_LOOP_94_6_p_ZL12conv2_weighudo BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_93_5_VITIS_LOOP_94_6_p_ZL12conv2_weighvdy RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_93_5_VITIS_LOOP_94_6_p_ZL12conv2_weighvdy BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_93_5_VITIS_LOOP_94_6_p_ZL12conv2_weighwdI RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_93_5_VITIS_LOOP_94_6_p_ZL12conv2_weighwdI BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_93_5_VITIS_LOOP_94_6_p_ZL12conv2_weighxdS RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_93_5_VITIS_LOOP_94_6_p_ZL12conv2_weighxdS BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_93_5_VITIS_LOOP_94_6_p_ZL12conv2_weighyd2 RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_93_5_VITIS_LOOP_94_6_p_ZL12conv2_weighyd2 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_93_5_VITIS_LOOP_94_6_p_ZL12conv2_weighzec RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_93_5_VITIS_LOOP_94_6_p_ZL12conv2_weighzec BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_93_5_VITIS_LOOP_94_6_p_ZL12conv2_weighAem RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_93_5_VITIS_LOOP_94_6_p_ZL12conv2_weighAem BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_93_5_VITIS_LOOP_94_6_p_ZL12conv2_weighBew RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_93_5_VITIS_LOOP_94_6_p_ZL12conv2_weighBew BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_93_5_VITIS_LOOP_94_6_p_ZL12conv2_weighCeG RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_93_5_VITIS_LOOP_94_6_p_ZL12conv2_weighCeG BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_93_5_VITIS_LOOP_94_6_p_ZL12conv2_weighDeQ RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_93_5_VITIS_LOOP_94_6_p_ZL12conv2_weighDeQ BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_93_5_VITIS_LOOP_94_6_conv2_multiplier_Ee0 RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_93_5_VITIS_LOOP_94_6_conv2_multiplier_Ee0 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_93_5_VITIS_LOOP_94_6_conv2_shift_ROM_AFfa RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_93_5_VITIS_LOOP_94_6_conv2_shift_ROM_AFfa BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME tiny_ecg_inference_Pipeline_VITIS_LOOP_121_9_VITIS_LOOP_122_10 MODELNAME tiny_ecg_inference_Pipeline_VITIS_LOOP_121_9_VITIS_LOOP_122_10 RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_121_9_VITIS_LOOP_122_10
    SUBMODULES {
      {MODELNAME tiny_ecg_inference_urem_4ns_3ns_2_8_1 RTLNAME tiny_ecg_inference_urem_4ns_3ns_2_8_1 BINDTYPE op TYPE urem IMPL auto LATENCY 7 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_sparsemux_7_2_7_1_1 RTLNAME tiny_ecg_inference_sparsemux_7_2_7_1_1 BINDTYPE op TYPE sparsemux IMPL onehotencoding_realdef}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_121_9_VITIS_LOOP_122_10_conv3_bias_ROMGfk RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_121_9_VITIS_LOOP_122_10_conv3_bias_ROMGfk BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_121_9_VITIS_LOOP_122_10_p_ZL12conv3_weHfu RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_121_9_VITIS_LOOP_122_10_p_ZL12conv3_weHfu BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_121_9_VITIS_LOOP_122_10_p_ZL12conv3_weIfE RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_121_9_VITIS_LOOP_122_10_p_ZL12conv3_weIfE BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_121_9_VITIS_LOOP_122_10_p_ZL12conv3_weJfO RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_121_9_VITIS_LOOP_122_10_p_ZL12conv3_weJfO BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_121_9_VITIS_LOOP_122_10_p_ZL12conv3_weKfY RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_121_9_VITIS_LOOP_122_10_p_ZL12conv3_weKfY BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_121_9_VITIS_LOOP_122_10_p_ZL12conv3_weLf8 RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_121_9_VITIS_LOOP_122_10_p_ZL12conv3_weLf8 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_121_9_VITIS_LOOP_122_10_p_ZL12conv3_weMgi RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_121_9_VITIS_LOOP_122_10_p_ZL12conv3_weMgi BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_121_9_VITIS_LOOP_122_10_p_ZL12conv3_weNgs RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_121_9_VITIS_LOOP_122_10_p_ZL12conv3_weNgs BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_121_9_VITIS_LOOP_122_10_p_ZL12conv3_weOgC RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_121_9_VITIS_LOOP_122_10_p_ZL12conv3_weOgC BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_121_9_VITIS_LOOP_122_10_p_ZL12conv3_wePgM RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_121_9_VITIS_LOOP_122_10_p_ZL12conv3_wePgM BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_121_9_VITIS_LOOP_122_10_p_ZL12conv3_weQgW RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_121_9_VITIS_LOOP_122_10_p_ZL12conv3_weQgW BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_121_9_VITIS_LOOP_122_10_p_ZL12conv3_weRg6 RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_121_9_VITIS_LOOP_122_10_p_ZL12conv3_weRg6 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_121_9_VITIS_LOOP_122_10_p_ZL12conv3_weShg RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_121_9_VITIS_LOOP_122_10_p_ZL12conv3_weShg BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_121_9_VITIS_LOOP_122_10_p_ZL12conv3_weThq RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_121_9_VITIS_LOOP_122_10_p_ZL12conv3_weThq BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_121_9_VITIS_LOOP_122_10_p_ZL12conv3_weUhA RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_121_9_VITIS_LOOP_122_10_p_ZL12conv3_weUhA BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_121_9_VITIS_LOOP_122_10_p_ZL12conv3_weVhK RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_121_9_VITIS_LOOP_122_10_p_ZL12conv3_weVhK BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_121_9_VITIS_LOOP_122_10_p_ZL12conv3_weWhU RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_121_9_VITIS_LOOP_122_10_p_ZL12conv3_weWhU BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_121_9_VITIS_LOOP_122_10_p_ZL12conv3_weXh4 RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_121_9_VITIS_LOOP_122_10_p_ZL12conv3_weXh4 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_121_9_VITIS_LOOP_122_10_p_ZL12conv3_weYie RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_121_9_VITIS_LOOP_122_10_p_ZL12conv3_weYie BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_121_9_VITIS_LOOP_122_10_p_ZL12conv3_weZio RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_121_9_VITIS_LOOP_122_10_p_ZL12conv3_weZio BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_121_9_VITIS_LOOP_122_10_p_ZL12conv3_we0iy RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_121_9_VITIS_LOOP_122_10_p_ZL12conv3_we0iy BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_121_9_VITIS_LOOP_122_10_p_ZL12conv3_we1iI RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_121_9_VITIS_LOOP_122_10_p_ZL12conv3_we1iI BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_121_9_VITIS_LOOP_122_10_p_ZL12conv3_we2iS RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_121_9_VITIS_LOOP_122_10_p_ZL12conv3_we2iS BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_121_9_VITIS_LOOP_122_10_p_ZL12conv3_we3i2 RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_121_9_VITIS_LOOP_122_10_p_ZL12conv3_we3i2 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_121_9_VITIS_LOOP_122_10_p_ZL12conv3_we4jc RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_121_9_VITIS_LOOP_122_10_p_ZL12conv3_we4jc BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_121_9_VITIS_LOOP_122_10_conv3_multipli5jm RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_121_9_VITIS_LOOP_122_10_conv3_multipli5jm BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_121_9_VITIS_LOOP_122_10_conv3_shift_RO6jw RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_121_9_VITIS_LOOP_122_10_conv3_shift_RO6jw BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME tiny_ecg_inference_Pipeline_VITIS_LOOP_146_13_VITIS_LOOP_147_14 MODELNAME tiny_ecg_inference_Pipeline_VITIS_LOOP_146_13_VITIS_LOOP_147_14 RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_146_13_VITIS_LOOP_147_14
    SUBMODULES {
      {MODELNAME tiny_ecg_inference_sparsemux_33_4_7_1_1 RTLNAME tiny_ecg_inference_sparsemux_33_4_7_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
    }
  }
  {SRCNAME tiny_ecg_inference_Pipeline_VITIS_LOOP_156_15 MODELNAME tiny_ecg_inference_Pipeline_VITIS_LOOP_156_15 RTLNAME tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_156_15
    SUBMODULES {
      {MODELNAME tiny_ecg_inference_mul_31s_21s_51_1_1 RTLNAME tiny_ecg_inference_mul_31s_21s_51_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_7ns_2s_13_1_1 RTLNAME tiny_ecg_inference_mul_7ns_2s_13_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_7ns_6s_13_1_1 RTLNAME tiny_ecg_inference_mul_7ns_6s_13_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_7ns_2s_15_1_1 RTLNAME tiny_ecg_inference_mul_7ns_2s_15_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_7s_7ns_14_1_1 RTLNAME tiny_ecg_inference_mul_7s_7ns_14_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_7ns_7ns_13_1_1 RTLNAME tiny_ecg_inference_mul_7ns_7ns_13_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_7ns_8ns_15_1_1 RTLNAME tiny_ecg_inference_mul_7ns_8ns_15_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_8s_7ns_14_1_1 RTLNAME tiny_ecg_inference_mul_8s_7ns_14_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_7ns_5s_13_1_1 RTLNAME tiny_ecg_inference_mul_7ns_5s_13_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_7ns_6ns_13_1_1 RTLNAME tiny_ecg_inference_mul_7ns_6ns_13_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_7s_7ns_13_1_1 RTLNAME tiny_ecg_inference_mul_7s_7ns_13_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_7ns_6s_14_1_1 RTLNAME tiny_ecg_inference_mul_7ns_6s_14_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_7ns_7s_14_1_1 RTLNAME tiny_ecg_inference_mul_7ns_7s_14_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_7ns_8ns_14_1_1 RTLNAME tiny_ecg_inference_mul_7ns_8ns_14_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_7ns_6ns_12_1_1 RTLNAME tiny_ecg_inference_mul_7ns_6ns_12_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_7ns_7ns_14_1_1 RTLNAME tiny_ecg_inference_mul_7ns_7ns_14_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_7ns_5s_14_1_1 RTLNAME tiny_ecg_inference_mul_7ns_5s_14_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_6s_7ns_12_1_1 RTLNAME tiny_ecg_inference_mul_6s_7ns_12_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_5s_7ns_11_1_1 RTLNAME tiny_ecg_inference_mul_5s_7ns_11_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_7ns_3s_12_1_1 RTLNAME tiny_ecg_inference_mul_7ns_3s_12_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_7ns_5ns_12_1_1 RTLNAME tiny_ecg_inference_mul_7ns_5ns_12_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_6s_7ns_13_1_1 RTLNAME tiny_ecg_inference_mul_6s_7ns_13_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_7ns_4s_14_1_1 RTLNAME tiny_ecg_inference_mul_7ns_4s_14_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_4s_7ns_10_1_1 RTLNAME tiny_ecg_inference_mul_4s_7ns_10_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mul_7ns_2s_14_1_1 RTLNAME tiny_ecg_inference_mul_7ns_2s_14_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME tiny_ecg_inference_mac_muladd_8s_7ns_13s_15_4_1 RTLNAME tiny_ecg_inference_mac_muladd_8s_7ns_13s_15_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_7s_7ns_15s_16_4_1 RTLNAME tiny_ecg_inference_mac_muladd_7s_7ns_15s_16_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_7s_7ns_15s_15_4_1 RTLNAME tiny_ecg_inference_mac_muladd_7s_7ns_15s_15_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_7ns_6s_15s_16_4_1 RTLNAME tiny_ecg_inference_mac_muladd_7ns_6s_15s_16_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_7ns_6s_15s_15_4_1 RTLNAME tiny_ecg_inference_mac_muladd_7ns_6s_15s_15_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_7ns_6s_14s_15_4_1 RTLNAME tiny_ecg_inference_mac_muladd_7ns_6s_14s_15_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_8s_7ns_15s_15_4_1 RTLNAME tiny_ecg_inference_mac_muladd_8s_7ns_15s_15_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_7ns_5s_14s_14_4_1 RTLNAME tiny_ecg_inference_mac_muladd_7ns_5s_14s_14_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_7s_7ns_13ns_15_4_1 RTLNAME tiny_ecg_inference_mac_muladd_7s_7ns_13ns_15_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_7ns_4s_14ns_15_4_1 RTLNAME tiny_ecg_inference_mac_muladd_7ns_4s_14ns_15_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_7ns_4s_14s_14_4_1 RTLNAME tiny_ecg_inference_mac_muladd_7ns_4s_14s_14_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_7ns_6s_14ns_15_4_1 RTLNAME tiny_ecg_inference_mac_muladd_7ns_6s_14ns_15_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_8s_7ns_14ns_16_4_1 RTLNAME tiny_ecg_inference_mac_muladd_8s_7ns_14ns_16_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_7ns_6s_14s_14_4_1 RTLNAME tiny_ecg_inference_mac_muladd_7ns_6s_14s_14_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_7s_7ns_14s_15_4_1 RTLNAME tiny_ecg_inference_mac_muladd_7s_7ns_14s_15_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_8s_7ns_13ns_15_4_1 RTLNAME tiny_ecg_inference_mac_muladd_8s_7ns_13ns_15_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_ama_addmuladd_7ns_7ns_7s_14s_15_4_1 RTLNAME tiny_ecg_inference_ama_addmuladd_7ns_7ns_7s_14s_15_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_7ns_5s_15s_15_4_1 RTLNAME tiny_ecg_inference_mac_muladd_7ns_5s_15s_15_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_7ns_5s_16s_16_4_1 RTLNAME tiny_ecg_inference_mac_muladd_7ns_5s_16s_16_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_7ns_6s_16s_16_4_1 RTLNAME tiny_ecg_inference_mac_muladd_7ns_6s_16s_16_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_7s_7ns_13s_15_4_1 RTLNAME tiny_ecg_inference_mac_muladd_7s_7ns_13s_15_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_7ns_3s_15s_15_4_1 RTLNAME tiny_ecg_inference_mac_muladd_7ns_3s_15s_15_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_7s_7ns_14s_14_4_1 RTLNAME tiny_ecg_inference_mac_muladd_7s_7ns_14s_14_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_8s_7ns_14s_15_4_1 RTLNAME tiny_ecg_inference_mac_muladd_8s_7ns_14s_15_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_7ns_6s_16s_17_4_1 RTLNAME tiny_ecg_inference_mac_muladd_7ns_6s_16s_17_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_7s_7ns_14ns_15_4_1 RTLNAME tiny_ecg_inference_mac_muladd_7s_7ns_14ns_15_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_7s_7ns_16s_16_4_1 RTLNAME tiny_ecg_inference_mac_muladd_7s_7ns_16s_16_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_8s_7ns_14s_16_4_1 RTLNAME tiny_ecg_inference_mac_muladd_8s_7ns_14s_16_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME tiny_ecg_inference_mac_muladd_7ns_5ns_15s_15_4_1 RTLNAME tiny_ecg_inference_mac_muladd_7ns_5ns_15s_15_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
    }
  }
  {SRCNAME tiny_ecg_inference MODELNAME tiny_ecg_inference RTLNAME tiny_ecg_inference IS_TOP 1
    SUBMODULES {
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
