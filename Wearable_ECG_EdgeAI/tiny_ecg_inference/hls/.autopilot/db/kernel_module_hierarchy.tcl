set ModuleHierarchy {[{
"Name" : "tiny_ecg_inference", "RefName" : "tiny_ecg_inference","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_fu_2616", "RefName" : "tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5","ID" : "1","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_85_4_VITIS_LOOP_86_5","RefName" : "VITIS_LOOP_85_4_VITIS_LOOP_86_5","ID" : "2","Type" : "pipeline"},]},
	{"Name" : "grp_tiny_ecg_inference_Pipeline_VITIS_LOOP_113_8_VITIS_LOOP_114_9_fu_2816", "RefName" : "tiny_ecg_inference_Pipeline_VITIS_LOOP_113_8_VITIS_LOOP_114_9","ID" : "3","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_113_8_VITIS_LOOP_114_9","RefName" : "VITIS_LOOP_113_8_VITIS_LOOP_114_9","ID" : "4","Type" : "pipeline"},]},
	{"Name" : "grp_tiny_ecg_inference_Pipeline_VITIS_LOOP_138_12_VITIS_LOOP_139_13_fu_2938", "RefName" : "tiny_ecg_inference_Pipeline_VITIS_LOOP_138_12_VITIS_LOOP_139_13","ID" : "5","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_138_12_VITIS_LOOP_139_13","RefName" : "VITIS_LOOP_138_12_VITIS_LOOP_139_13","ID" : "6","Type" : "pipeline"},]},
	{"Name" : "grp_tiny_ecg_inference_Pipeline_VITIS_LOOP_148_14_fu_2959", "RefName" : "tiny_ecg_inference_Pipeline_VITIS_LOOP_148_14","ID" : "7","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_148_14","RefName" : "VITIS_LOOP_148_14","ID" : "8","Type" : "pipeline"},]},],
"SubLoops" : [
	{"Name" : "VITIS_LOOP_60_1","RefName" : "VITIS_LOOP_60_1","ID" : "9","Type" : "no",
	"SubInsts" : [
	{"Name" : "grp_tiny_ecg_inference_Pipeline_VITIS_LOOP_61_2_fu_2754", "RefName" : "tiny_ecg_inference_Pipeline_VITIS_LOOP_61_2","ID" : "10","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_61_2","RefName" : "VITIS_LOOP_61_2","ID" : "11","Type" : "pipeline"},]},]},]
}]}