set moduleName tiny_ecg_inference_Pipeline_VITIS_LOOP_68_2_VITIS_LOOP_69_3
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set isPipelined_legacy 1
set pipeline_type loop_auto_rewind
set FunctionProtocol ap_ctrl_hs
set restart_counter_num 0
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 9
set C_modelName {tiny_ecg_inference_Pipeline_VITIS_LOOP_68_2_VITIS_LOOP_69_3}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict local_ecg { MEM_WIDTH 8 MEM_SIZE 18 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict local_ecg_1 { MEM_WIDTH 8 MEM_SIZE 18 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict local_ecg_2 { MEM_WIDTH 8 MEM_SIZE 18 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict local_ecg_3 { MEM_WIDTH 8 MEM_SIZE 18 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict local_ecg_4 { MEM_WIDTH 8 MEM_SIZE 18 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict buffer_c1 { MEM_WIDTH 7 MEM_SIZE 9 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict buffer_c1_1 { MEM_WIDTH 7 MEM_SIZE 9 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict buffer_c1_2 { MEM_WIDTH 7 MEM_SIZE 9 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict buffer_c1_3 { MEM_WIDTH 7 MEM_SIZE 9 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict buffer_c1_4 { MEM_WIDTH 7 MEM_SIZE 9 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict buffer_c1_5 { MEM_WIDTH 7 MEM_SIZE 9 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict buffer_c1_6 { MEM_WIDTH 7 MEM_SIZE 9 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict buffer_c1_7 { MEM_WIDTH 7 MEM_SIZE 9 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict buffer_c1_8 { MEM_WIDTH 7 MEM_SIZE 9 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict buffer_c1_9 { MEM_WIDTH 7 MEM_SIZE 9 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict buffer_c1_10 { MEM_WIDTH 7 MEM_SIZE 9 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict buffer_c1_11 { MEM_WIDTH 7 MEM_SIZE 9 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict buffer_c1_12 { MEM_WIDTH 7 MEM_SIZE 9 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict buffer_c1_13 { MEM_WIDTH 7 MEM_SIZE 9 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict buffer_c1_14 { MEM_WIDTH 7 MEM_SIZE 9 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict buffer_c1_15 { MEM_WIDTH 7 MEM_SIZE 9 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict buffer_c1_16 { MEM_WIDTH 7 MEM_SIZE 9 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict buffer_c1_17 { MEM_WIDTH 7 MEM_SIZE 9 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict buffer_c1_18 { MEM_WIDTH 7 MEM_SIZE 9 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict buffer_c1_19 { MEM_WIDTH 7 MEM_SIZE 9 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict buffer_c1_20 { MEM_WIDTH 7 MEM_SIZE 9 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict buffer_c1_21 { MEM_WIDTH 7 MEM_SIZE 9 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict buffer_c1_22 { MEM_WIDTH 7 MEM_SIZE 9 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict buffer_c1_23 { MEM_WIDTH 7 MEM_SIZE 9 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict buffer_c1_24 { MEM_WIDTH 7 MEM_SIZE 9 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict buffer_c1_25 { MEM_WIDTH 7 MEM_SIZE 9 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict buffer_c1_26 { MEM_WIDTH 7 MEM_SIZE 9 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict buffer_c1_27 { MEM_WIDTH 7 MEM_SIZE 9 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict buffer_c1_28 { MEM_WIDTH 7 MEM_SIZE 9 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict buffer_c1_29 { MEM_WIDTH 7 MEM_SIZE 9 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict buffer_c1_30 { MEM_WIDTH 7 MEM_SIZE 9 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict buffer_c1_31 { MEM_WIDTH 7 MEM_SIZE 9 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict buffer_c1_32 { MEM_WIDTH 7 MEM_SIZE 9 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict buffer_c1_33 { MEM_WIDTH 7 MEM_SIZE 9 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict buffer_c1_34 { MEM_WIDTH 7 MEM_SIZE 9 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict buffer_c1_35 { MEM_WIDTH 7 MEM_SIZE 9 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict buffer_c1_36 { MEM_WIDTH 7 MEM_SIZE 9 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict buffer_c1_37 { MEM_WIDTH 7 MEM_SIZE 9 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict buffer_c1_38 { MEM_WIDTH 7 MEM_SIZE 9 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict buffer_c1_39 { MEM_WIDTH 7 MEM_SIZE 9 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ local_ecg int 8 regular {array 18 { 1 3 } 1 1 }  }
	{ local_ecg_1 int 8 regular {array 18 { 1 3 } 1 1 }  }
	{ local_ecg_2 int 8 regular {array 18 { 1 3 } 1 1 }  }
	{ local_ecg_3 int 8 regular {array 18 { 1 3 } 1 1 }  }
	{ local_ecg_4 int 8 regular {array 18 { 1 3 } 1 1 }  }
	{ buffer_c1 int 7 regular {array 9 { 0 3 } 0 1 }  }
	{ buffer_c1_1 int 7 regular {array 9 { 0 3 } 0 1 }  }
	{ buffer_c1_2 int 7 regular {array 9 { 0 3 } 0 1 }  }
	{ buffer_c1_3 int 7 regular {array 9 { 0 3 } 0 1 }  }
	{ buffer_c1_4 int 7 regular {array 9 { 0 3 } 0 1 }  }
	{ buffer_c1_5 int 7 regular {array 9 { 0 3 } 0 1 }  }
	{ buffer_c1_6 int 7 regular {array 9 { 0 3 } 0 1 }  }
	{ buffer_c1_7 int 7 regular {array 9 { 0 3 } 0 1 }  }
	{ buffer_c1_8 int 7 regular {array 9 { 0 3 } 0 1 }  }
	{ buffer_c1_9 int 7 regular {array 9 { 0 3 } 0 1 }  }
	{ buffer_c1_10 int 7 regular {array 9 { 0 3 } 0 1 }  }
	{ buffer_c1_11 int 7 regular {array 9 { 0 3 } 0 1 }  }
	{ buffer_c1_12 int 7 regular {array 9 { 0 3 } 0 1 }  }
	{ buffer_c1_13 int 7 regular {array 9 { 0 3 } 0 1 }  }
	{ buffer_c1_14 int 7 regular {array 9 { 0 3 } 0 1 }  }
	{ buffer_c1_15 int 7 regular {array 9 { 0 3 } 0 1 }  }
	{ buffer_c1_16 int 7 regular {array 9 { 0 3 } 0 1 }  }
	{ buffer_c1_17 int 7 regular {array 9 { 0 3 } 0 1 }  }
	{ buffer_c1_18 int 7 regular {array 9 { 0 3 } 0 1 }  }
	{ buffer_c1_19 int 7 regular {array 9 { 0 3 } 0 1 }  }
	{ buffer_c1_20 int 7 regular {array 9 { 0 3 } 0 1 }  }
	{ buffer_c1_21 int 7 regular {array 9 { 0 3 } 0 1 }  }
	{ buffer_c1_22 int 7 regular {array 9 { 0 3 } 0 1 }  }
	{ buffer_c1_23 int 7 regular {array 9 { 0 3 } 0 1 }  }
	{ buffer_c1_24 int 7 regular {array 9 { 0 3 } 0 1 }  }
	{ buffer_c1_25 int 7 regular {array 9 { 0 3 } 0 1 }  }
	{ buffer_c1_26 int 7 regular {array 9 { 0 3 } 0 1 }  }
	{ buffer_c1_27 int 7 regular {array 9 { 0 3 } 0 1 }  }
	{ buffer_c1_28 int 7 regular {array 9 { 0 3 } 0 1 }  }
	{ buffer_c1_29 int 7 regular {array 9 { 0 3 } 0 1 }  }
	{ buffer_c1_30 int 7 regular {array 9 { 0 3 } 0 1 }  }
	{ buffer_c1_31 int 7 regular {array 9 { 0 3 } 0 1 }  }
	{ buffer_c1_32 int 7 regular {array 9 { 0 3 } 0 1 }  }
	{ buffer_c1_33 int 7 regular {array 9 { 0 3 } 0 1 }  }
	{ buffer_c1_34 int 7 regular {array 9 { 0 3 } 0 1 }  }
	{ buffer_c1_35 int 7 regular {array 9 { 0 3 } 0 1 }  }
	{ buffer_c1_36 int 7 regular {array 9 { 0 3 } 0 1 }  }
	{ buffer_c1_37 int 7 regular {array 9 { 0 3 } 0 1 }  }
	{ buffer_c1_38 int 7 regular {array 9 { 0 3 } 0 1 }  }
	{ buffer_c1_39 int 7 regular {array 9 { 0 3 } 0 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "local_ecg", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "local_ecg_1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "local_ecg_2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "local_ecg_3", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "local_ecg_4", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "buffer_c1", "interface" : "memory", "bitwidth" : 7, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buffer_c1_1", "interface" : "memory", "bitwidth" : 7, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buffer_c1_2", "interface" : "memory", "bitwidth" : 7, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buffer_c1_3", "interface" : "memory", "bitwidth" : 7, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buffer_c1_4", "interface" : "memory", "bitwidth" : 7, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buffer_c1_5", "interface" : "memory", "bitwidth" : 7, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buffer_c1_6", "interface" : "memory", "bitwidth" : 7, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buffer_c1_7", "interface" : "memory", "bitwidth" : 7, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buffer_c1_8", "interface" : "memory", "bitwidth" : 7, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buffer_c1_9", "interface" : "memory", "bitwidth" : 7, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buffer_c1_10", "interface" : "memory", "bitwidth" : 7, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buffer_c1_11", "interface" : "memory", "bitwidth" : 7, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buffer_c1_12", "interface" : "memory", "bitwidth" : 7, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buffer_c1_13", "interface" : "memory", "bitwidth" : 7, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buffer_c1_14", "interface" : "memory", "bitwidth" : 7, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buffer_c1_15", "interface" : "memory", "bitwidth" : 7, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buffer_c1_16", "interface" : "memory", "bitwidth" : 7, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buffer_c1_17", "interface" : "memory", "bitwidth" : 7, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buffer_c1_18", "interface" : "memory", "bitwidth" : 7, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buffer_c1_19", "interface" : "memory", "bitwidth" : 7, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buffer_c1_20", "interface" : "memory", "bitwidth" : 7, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buffer_c1_21", "interface" : "memory", "bitwidth" : 7, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buffer_c1_22", "interface" : "memory", "bitwidth" : 7, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buffer_c1_23", "interface" : "memory", "bitwidth" : 7, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buffer_c1_24", "interface" : "memory", "bitwidth" : 7, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buffer_c1_25", "interface" : "memory", "bitwidth" : 7, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buffer_c1_26", "interface" : "memory", "bitwidth" : 7, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buffer_c1_27", "interface" : "memory", "bitwidth" : 7, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buffer_c1_28", "interface" : "memory", "bitwidth" : 7, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buffer_c1_29", "interface" : "memory", "bitwidth" : 7, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buffer_c1_30", "interface" : "memory", "bitwidth" : 7, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buffer_c1_31", "interface" : "memory", "bitwidth" : 7, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buffer_c1_32", "interface" : "memory", "bitwidth" : 7, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buffer_c1_33", "interface" : "memory", "bitwidth" : 7, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buffer_c1_34", "interface" : "memory", "bitwidth" : 7, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buffer_c1_35", "interface" : "memory", "bitwidth" : 7, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buffer_c1_36", "interface" : "memory", "bitwidth" : 7, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buffer_c1_37", "interface" : "memory", "bitwidth" : 7, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buffer_c1_38", "interface" : "memory", "bitwidth" : 7, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buffer_c1_39", "interface" : "memory", "bitwidth" : 7, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 181
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ local_ecg_address0 sc_out sc_lv 5 signal 0 } 
	{ local_ecg_ce0 sc_out sc_logic 1 signal 0 } 
	{ local_ecg_q0 sc_in sc_lv 8 signal 0 } 
	{ local_ecg_1_address0 sc_out sc_lv 5 signal 1 } 
	{ local_ecg_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ local_ecg_1_q0 sc_in sc_lv 8 signal 1 } 
	{ local_ecg_2_address0 sc_out sc_lv 5 signal 2 } 
	{ local_ecg_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ local_ecg_2_q0 sc_in sc_lv 8 signal 2 } 
	{ local_ecg_3_address0 sc_out sc_lv 5 signal 3 } 
	{ local_ecg_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ local_ecg_3_q0 sc_in sc_lv 8 signal 3 } 
	{ local_ecg_4_address0 sc_out sc_lv 5 signal 4 } 
	{ local_ecg_4_ce0 sc_out sc_logic 1 signal 4 } 
	{ local_ecg_4_q0 sc_in sc_lv 8 signal 4 } 
	{ buffer_c1_address0 sc_out sc_lv 4 signal 5 } 
	{ buffer_c1_ce0 sc_out sc_logic 1 signal 5 } 
	{ buffer_c1_we0 sc_out sc_logic 1 signal 5 } 
	{ buffer_c1_d0 sc_out sc_lv 7 signal 5 } 
	{ buffer_c1_1_address0 sc_out sc_lv 4 signal 6 } 
	{ buffer_c1_1_ce0 sc_out sc_logic 1 signal 6 } 
	{ buffer_c1_1_we0 sc_out sc_logic 1 signal 6 } 
	{ buffer_c1_1_d0 sc_out sc_lv 7 signal 6 } 
	{ buffer_c1_2_address0 sc_out sc_lv 4 signal 7 } 
	{ buffer_c1_2_ce0 sc_out sc_logic 1 signal 7 } 
	{ buffer_c1_2_we0 sc_out sc_logic 1 signal 7 } 
	{ buffer_c1_2_d0 sc_out sc_lv 7 signal 7 } 
	{ buffer_c1_3_address0 sc_out sc_lv 4 signal 8 } 
	{ buffer_c1_3_ce0 sc_out sc_logic 1 signal 8 } 
	{ buffer_c1_3_we0 sc_out sc_logic 1 signal 8 } 
	{ buffer_c1_3_d0 sc_out sc_lv 7 signal 8 } 
	{ buffer_c1_4_address0 sc_out sc_lv 4 signal 9 } 
	{ buffer_c1_4_ce0 sc_out sc_logic 1 signal 9 } 
	{ buffer_c1_4_we0 sc_out sc_logic 1 signal 9 } 
	{ buffer_c1_4_d0 sc_out sc_lv 7 signal 9 } 
	{ buffer_c1_5_address0 sc_out sc_lv 4 signal 10 } 
	{ buffer_c1_5_ce0 sc_out sc_logic 1 signal 10 } 
	{ buffer_c1_5_we0 sc_out sc_logic 1 signal 10 } 
	{ buffer_c1_5_d0 sc_out sc_lv 7 signal 10 } 
	{ buffer_c1_6_address0 sc_out sc_lv 4 signal 11 } 
	{ buffer_c1_6_ce0 sc_out sc_logic 1 signal 11 } 
	{ buffer_c1_6_we0 sc_out sc_logic 1 signal 11 } 
	{ buffer_c1_6_d0 sc_out sc_lv 7 signal 11 } 
	{ buffer_c1_7_address0 sc_out sc_lv 4 signal 12 } 
	{ buffer_c1_7_ce0 sc_out sc_logic 1 signal 12 } 
	{ buffer_c1_7_we0 sc_out sc_logic 1 signal 12 } 
	{ buffer_c1_7_d0 sc_out sc_lv 7 signal 12 } 
	{ buffer_c1_8_address0 sc_out sc_lv 4 signal 13 } 
	{ buffer_c1_8_ce0 sc_out sc_logic 1 signal 13 } 
	{ buffer_c1_8_we0 sc_out sc_logic 1 signal 13 } 
	{ buffer_c1_8_d0 sc_out sc_lv 7 signal 13 } 
	{ buffer_c1_9_address0 sc_out sc_lv 4 signal 14 } 
	{ buffer_c1_9_ce0 sc_out sc_logic 1 signal 14 } 
	{ buffer_c1_9_we0 sc_out sc_logic 1 signal 14 } 
	{ buffer_c1_9_d0 sc_out sc_lv 7 signal 14 } 
	{ buffer_c1_10_address0 sc_out sc_lv 4 signal 15 } 
	{ buffer_c1_10_ce0 sc_out sc_logic 1 signal 15 } 
	{ buffer_c1_10_we0 sc_out sc_logic 1 signal 15 } 
	{ buffer_c1_10_d0 sc_out sc_lv 7 signal 15 } 
	{ buffer_c1_11_address0 sc_out sc_lv 4 signal 16 } 
	{ buffer_c1_11_ce0 sc_out sc_logic 1 signal 16 } 
	{ buffer_c1_11_we0 sc_out sc_logic 1 signal 16 } 
	{ buffer_c1_11_d0 sc_out sc_lv 7 signal 16 } 
	{ buffer_c1_12_address0 sc_out sc_lv 4 signal 17 } 
	{ buffer_c1_12_ce0 sc_out sc_logic 1 signal 17 } 
	{ buffer_c1_12_we0 sc_out sc_logic 1 signal 17 } 
	{ buffer_c1_12_d0 sc_out sc_lv 7 signal 17 } 
	{ buffer_c1_13_address0 sc_out sc_lv 4 signal 18 } 
	{ buffer_c1_13_ce0 sc_out sc_logic 1 signal 18 } 
	{ buffer_c1_13_we0 sc_out sc_logic 1 signal 18 } 
	{ buffer_c1_13_d0 sc_out sc_lv 7 signal 18 } 
	{ buffer_c1_14_address0 sc_out sc_lv 4 signal 19 } 
	{ buffer_c1_14_ce0 sc_out sc_logic 1 signal 19 } 
	{ buffer_c1_14_we0 sc_out sc_logic 1 signal 19 } 
	{ buffer_c1_14_d0 sc_out sc_lv 7 signal 19 } 
	{ buffer_c1_15_address0 sc_out sc_lv 4 signal 20 } 
	{ buffer_c1_15_ce0 sc_out sc_logic 1 signal 20 } 
	{ buffer_c1_15_we0 sc_out sc_logic 1 signal 20 } 
	{ buffer_c1_15_d0 sc_out sc_lv 7 signal 20 } 
	{ buffer_c1_16_address0 sc_out sc_lv 4 signal 21 } 
	{ buffer_c1_16_ce0 sc_out sc_logic 1 signal 21 } 
	{ buffer_c1_16_we0 sc_out sc_logic 1 signal 21 } 
	{ buffer_c1_16_d0 sc_out sc_lv 7 signal 21 } 
	{ buffer_c1_17_address0 sc_out sc_lv 4 signal 22 } 
	{ buffer_c1_17_ce0 sc_out sc_logic 1 signal 22 } 
	{ buffer_c1_17_we0 sc_out sc_logic 1 signal 22 } 
	{ buffer_c1_17_d0 sc_out sc_lv 7 signal 22 } 
	{ buffer_c1_18_address0 sc_out sc_lv 4 signal 23 } 
	{ buffer_c1_18_ce0 sc_out sc_logic 1 signal 23 } 
	{ buffer_c1_18_we0 sc_out sc_logic 1 signal 23 } 
	{ buffer_c1_18_d0 sc_out sc_lv 7 signal 23 } 
	{ buffer_c1_19_address0 sc_out sc_lv 4 signal 24 } 
	{ buffer_c1_19_ce0 sc_out sc_logic 1 signal 24 } 
	{ buffer_c1_19_we0 sc_out sc_logic 1 signal 24 } 
	{ buffer_c1_19_d0 sc_out sc_lv 7 signal 24 } 
	{ buffer_c1_20_address0 sc_out sc_lv 4 signal 25 } 
	{ buffer_c1_20_ce0 sc_out sc_logic 1 signal 25 } 
	{ buffer_c1_20_we0 sc_out sc_logic 1 signal 25 } 
	{ buffer_c1_20_d0 sc_out sc_lv 7 signal 25 } 
	{ buffer_c1_21_address0 sc_out sc_lv 4 signal 26 } 
	{ buffer_c1_21_ce0 sc_out sc_logic 1 signal 26 } 
	{ buffer_c1_21_we0 sc_out sc_logic 1 signal 26 } 
	{ buffer_c1_21_d0 sc_out sc_lv 7 signal 26 } 
	{ buffer_c1_22_address0 sc_out sc_lv 4 signal 27 } 
	{ buffer_c1_22_ce0 sc_out sc_logic 1 signal 27 } 
	{ buffer_c1_22_we0 sc_out sc_logic 1 signal 27 } 
	{ buffer_c1_22_d0 sc_out sc_lv 7 signal 27 } 
	{ buffer_c1_23_address0 sc_out sc_lv 4 signal 28 } 
	{ buffer_c1_23_ce0 sc_out sc_logic 1 signal 28 } 
	{ buffer_c1_23_we0 sc_out sc_logic 1 signal 28 } 
	{ buffer_c1_23_d0 sc_out sc_lv 7 signal 28 } 
	{ buffer_c1_24_address0 sc_out sc_lv 4 signal 29 } 
	{ buffer_c1_24_ce0 sc_out sc_logic 1 signal 29 } 
	{ buffer_c1_24_we0 sc_out sc_logic 1 signal 29 } 
	{ buffer_c1_24_d0 sc_out sc_lv 7 signal 29 } 
	{ buffer_c1_25_address0 sc_out sc_lv 4 signal 30 } 
	{ buffer_c1_25_ce0 sc_out sc_logic 1 signal 30 } 
	{ buffer_c1_25_we0 sc_out sc_logic 1 signal 30 } 
	{ buffer_c1_25_d0 sc_out sc_lv 7 signal 30 } 
	{ buffer_c1_26_address0 sc_out sc_lv 4 signal 31 } 
	{ buffer_c1_26_ce0 sc_out sc_logic 1 signal 31 } 
	{ buffer_c1_26_we0 sc_out sc_logic 1 signal 31 } 
	{ buffer_c1_26_d0 sc_out sc_lv 7 signal 31 } 
	{ buffer_c1_27_address0 sc_out sc_lv 4 signal 32 } 
	{ buffer_c1_27_ce0 sc_out sc_logic 1 signal 32 } 
	{ buffer_c1_27_we0 sc_out sc_logic 1 signal 32 } 
	{ buffer_c1_27_d0 sc_out sc_lv 7 signal 32 } 
	{ buffer_c1_28_address0 sc_out sc_lv 4 signal 33 } 
	{ buffer_c1_28_ce0 sc_out sc_logic 1 signal 33 } 
	{ buffer_c1_28_we0 sc_out sc_logic 1 signal 33 } 
	{ buffer_c1_28_d0 sc_out sc_lv 7 signal 33 } 
	{ buffer_c1_29_address0 sc_out sc_lv 4 signal 34 } 
	{ buffer_c1_29_ce0 sc_out sc_logic 1 signal 34 } 
	{ buffer_c1_29_we0 sc_out sc_logic 1 signal 34 } 
	{ buffer_c1_29_d0 sc_out sc_lv 7 signal 34 } 
	{ buffer_c1_30_address0 sc_out sc_lv 4 signal 35 } 
	{ buffer_c1_30_ce0 sc_out sc_logic 1 signal 35 } 
	{ buffer_c1_30_we0 sc_out sc_logic 1 signal 35 } 
	{ buffer_c1_30_d0 sc_out sc_lv 7 signal 35 } 
	{ buffer_c1_31_address0 sc_out sc_lv 4 signal 36 } 
	{ buffer_c1_31_ce0 sc_out sc_logic 1 signal 36 } 
	{ buffer_c1_31_we0 sc_out sc_logic 1 signal 36 } 
	{ buffer_c1_31_d0 sc_out sc_lv 7 signal 36 } 
	{ buffer_c1_32_address0 sc_out sc_lv 4 signal 37 } 
	{ buffer_c1_32_ce0 sc_out sc_logic 1 signal 37 } 
	{ buffer_c1_32_we0 sc_out sc_logic 1 signal 37 } 
	{ buffer_c1_32_d0 sc_out sc_lv 7 signal 37 } 
	{ buffer_c1_33_address0 sc_out sc_lv 4 signal 38 } 
	{ buffer_c1_33_ce0 sc_out sc_logic 1 signal 38 } 
	{ buffer_c1_33_we0 sc_out sc_logic 1 signal 38 } 
	{ buffer_c1_33_d0 sc_out sc_lv 7 signal 38 } 
	{ buffer_c1_34_address0 sc_out sc_lv 4 signal 39 } 
	{ buffer_c1_34_ce0 sc_out sc_logic 1 signal 39 } 
	{ buffer_c1_34_we0 sc_out sc_logic 1 signal 39 } 
	{ buffer_c1_34_d0 sc_out sc_lv 7 signal 39 } 
	{ buffer_c1_35_address0 sc_out sc_lv 4 signal 40 } 
	{ buffer_c1_35_ce0 sc_out sc_logic 1 signal 40 } 
	{ buffer_c1_35_we0 sc_out sc_logic 1 signal 40 } 
	{ buffer_c1_35_d0 sc_out sc_lv 7 signal 40 } 
	{ buffer_c1_36_address0 sc_out sc_lv 4 signal 41 } 
	{ buffer_c1_36_ce0 sc_out sc_logic 1 signal 41 } 
	{ buffer_c1_36_we0 sc_out sc_logic 1 signal 41 } 
	{ buffer_c1_36_d0 sc_out sc_lv 7 signal 41 } 
	{ buffer_c1_37_address0 sc_out sc_lv 4 signal 42 } 
	{ buffer_c1_37_ce0 sc_out sc_logic 1 signal 42 } 
	{ buffer_c1_37_we0 sc_out sc_logic 1 signal 42 } 
	{ buffer_c1_37_d0 sc_out sc_lv 7 signal 42 } 
	{ buffer_c1_38_address0 sc_out sc_lv 4 signal 43 } 
	{ buffer_c1_38_ce0 sc_out sc_logic 1 signal 43 } 
	{ buffer_c1_38_we0 sc_out sc_logic 1 signal 43 } 
	{ buffer_c1_38_d0 sc_out sc_lv 7 signal 43 } 
	{ buffer_c1_39_address0 sc_out sc_lv 4 signal 44 } 
	{ buffer_c1_39_ce0 sc_out sc_logic 1 signal 44 } 
	{ buffer_c1_39_we0 sc_out sc_logic 1 signal 44 } 
	{ buffer_c1_39_d0 sc_out sc_lv 7 signal 44 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "local_ecg_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "local_ecg", "role": "address0" }} , 
 	{ "name": "local_ecg_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_ecg", "role": "ce0" }} , 
 	{ "name": "local_ecg_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_ecg", "role": "q0" }} , 
 	{ "name": "local_ecg_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "local_ecg_1", "role": "address0" }} , 
 	{ "name": "local_ecg_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_ecg_1", "role": "ce0" }} , 
 	{ "name": "local_ecg_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_ecg_1", "role": "q0" }} , 
 	{ "name": "local_ecg_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "local_ecg_2", "role": "address0" }} , 
 	{ "name": "local_ecg_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_ecg_2", "role": "ce0" }} , 
 	{ "name": "local_ecg_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_ecg_2", "role": "q0" }} , 
 	{ "name": "local_ecg_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "local_ecg_3", "role": "address0" }} , 
 	{ "name": "local_ecg_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_ecg_3", "role": "ce0" }} , 
 	{ "name": "local_ecg_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_ecg_3", "role": "q0" }} , 
 	{ "name": "local_ecg_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "local_ecg_4", "role": "address0" }} , 
 	{ "name": "local_ecg_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_ecg_4", "role": "ce0" }} , 
 	{ "name": "local_ecg_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_ecg_4", "role": "q0" }} , 
 	{ "name": "buffer_c1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buffer_c1", "role": "address0" }} , 
 	{ "name": "buffer_c1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c1", "role": "ce0" }} , 
 	{ "name": "buffer_c1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c1", "role": "we0" }} , 
 	{ "name": "buffer_c1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "buffer_c1", "role": "d0" }} , 
 	{ "name": "buffer_c1_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buffer_c1_1", "role": "address0" }} , 
 	{ "name": "buffer_c1_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c1_1", "role": "ce0" }} , 
 	{ "name": "buffer_c1_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c1_1", "role": "we0" }} , 
 	{ "name": "buffer_c1_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "buffer_c1_1", "role": "d0" }} , 
 	{ "name": "buffer_c1_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buffer_c1_2", "role": "address0" }} , 
 	{ "name": "buffer_c1_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c1_2", "role": "ce0" }} , 
 	{ "name": "buffer_c1_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c1_2", "role": "we0" }} , 
 	{ "name": "buffer_c1_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "buffer_c1_2", "role": "d0" }} , 
 	{ "name": "buffer_c1_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buffer_c1_3", "role": "address0" }} , 
 	{ "name": "buffer_c1_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c1_3", "role": "ce0" }} , 
 	{ "name": "buffer_c1_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c1_3", "role": "we0" }} , 
 	{ "name": "buffer_c1_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "buffer_c1_3", "role": "d0" }} , 
 	{ "name": "buffer_c1_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buffer_c1_4", "role": "address0" }} , 
 	{ "name": "buffer_c1_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c1_4", "role": "ce0" }} , 
 	{ "name": "buffer_c1_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c1_4", "role": "we0" }} , 
 	{ "name": "buffer_c1_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "buffer_c1_4", "role": "d0" }} , 
 	{ "name": "buffer_c1_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buffer_c1_5", "role": "address0" }} , 
 	{ "name": "buffer_c1_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c1_5", "role": "ce0" }} , 
 	{ "name": "buffer_c1_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c1_5", "role": "we0" }} , 
 	{ "name": "buffer_c1_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "buffer_c1_5", "role": "d0" }} , 
 	{ "name": "buffer_c1_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buffer_c1_6", "role": "address0" }} , 
 	{ "name": "buffer_c1_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c1_6", "role": "ce0" }} , 
 	{ "name": "buffer_c1_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c1_6", "role": "we0" }} , 
 	{ "name": "buffer_c1_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "buffer_c1_6", "role": "d0" }} , 
 	{ "name": "buffer_c1_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buffer_c1_7", "role": "address0" }} , 
 	{ "name": "buffer_c1_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c1_7", "role": "ce0" }} , 
 	{ "name": "buffer_c1_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c1_7", "role": "we0" }} , 
 	{ "name": "buffer_c1_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "buffer_c1_7", "role": "d0" }} , 
 	{ "name": "buffer_c1_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buffer_c1_8", "role": "address0" }} , 
 	{ "name": "buffer_c1_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c1_8", "role": "ce0" }} , 
 	{ "name": "buffer_c1_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c1_8", "role": "we0" }} , 
 	{ "name": "buffer_c1_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "buffer_c1_8", "role": "d0" }} , 
 	{ "name": "buffer_c1_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buffer_c1_9", "role": "address0" }} , 
 	{ "name": "buffer_c1_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c1_9", "role": "ce0" }} , 
 	{ "name": "buffer_c1_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c1_9", "role": "we0" }} , 
 	{ "name": "buffer_c1_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "buffer_c1_9", "role": "d0" }} , 
 	{ "name": "buffer_c1_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buffer_c1_10", "role": "address0" }} , 
 	{ "name": "buffer_c1_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c1_10", "role": "ce0" }} , 
 	{ "name": "buffer_c1_10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c1_10", "role": "we0" }} , 
 	{ "name": "buffer_c1_10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "buffer_c1_10", "role": "d0" }} , 
 	{ "name": "buffer_c1_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buffer_c1_11", "role": "address0" }} , 
 	{ "name": "buffer_c1_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c1_11", "role": "ce0" }} , 
 	{ "name": "buffer_c1_11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c1_11", "role": "we0" }} , 
 	{ "name": "buffer_c1_11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "buffer_c1_11", "role": "d0" }} , 
 	{ "name": "buffer_c1_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buffer_c1_12", "role": "address0" }} , 
 	{ "name": "buffer_c1_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c1_12", "role": "ce0" }} , 
 	{ "name": "buffer_c1_12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c1_12", "role": "we0" }} , 
 	{ "name": "buffer_c1_12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "buffer_c1_12", "role": "d0" }} , 
 	{ "name": "buffer_c1_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buffer_c1_13", "role": "address0" }} , 
 	{ "name": "buffer_c1_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c1_13", "role": "ce0" }} , 
 	{ "name": "buffer_c1_13_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c1_13", "role": "we0" }} , 
 	{ "name": "buffer_c1_13_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "buffer_c1_13", "role": "d0" }} , 
 	{ "name": "buffer_c1_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buffer_c1_14", "role": "address0" }} , 
 	{ "name": "buffer_c1_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c1_14", "role": "ce0" }} , 
 	{ "name": "buffer_c1_14_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c1_14", "role": "we0" }} , 
 	{ "name": "buffer_c1_14_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "buffer_c1_14", "role": "d0" }} , 
 	{ "name": "buffer_c1_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buffer_c1_15", "role": "address0" }} , 
 	{ "name": "buffer_c1_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c1_15", "role": "ce0" }} , 
 	{ "name": "buffer_c1_15_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c1_15", "role": "we0" }} , 
 	{ "name": "buffer_c1_15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "buffer_c1_15", "role": "d0" }} , 
 	{ "name": "buffer_c1_16_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buffer_c1_16", "role": "address0" }} , 
 	{ "name": "buffer_c1_16_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c1_16", "role": "ce0" }} , 
 	{ "name": "buffer_c1_16_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c1_16", "role": "we0" }} , 
 	{ "name": "buffer_c1_16_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "buffer_c1_16", "role": "d0" }} , 
 	{ "name": "buffer_c1_17_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buffer_c1_17", "role": "address0" }} , 
 	{ "name": "buffer_c1_17_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c1_17", "role": "ce0" }} , 
 	{ "name": "buffer_c1_17_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c1_17", "role": "we0" }} , 
 	{ "name": "buffer_c1_17_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "buffer_c1_17", "role": "d0" }} , 
 	{ "name": "buffer_c1_18_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buffer_c1_18", "role": "address0" }} , 
 	{ "name": "buffer_c1_18_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c1_18", "role": "ce0" }} , 
 	{ "name": "buffer_c1_18_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c1_18", "role": "we0" }} , 
 	{ "name": "buffer_c1_18_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "buffer_c1_18", "role": "d0" }} , 
 	{ "name": "buffer_c1_19_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buffer_c1_19", "role": "address0" }} , 
 	{ "name": "buffer_c1_19_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c1_19", "role": "ce0" }} , 
 	{ "name": "buffer_c1_19_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c1_19", "role": "we0" }} , 
 	{ "name": "buffer_c1_19_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "buffer_c1_19", "role": "d0" }} , 
 	{ "name": "buffer_c1_20_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buffer_c1_20", "role": "address0" }} , 
 	{ "name": "buffer_c1_20_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c1_20", "role": "ce0" }} , 
 	{ "name": "buffer_c1_20_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c1_20", "role": "we0" }} , 
 	{ "name": "buffer_c1_20_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "buffer_c1_20", "role": "d0" }} , 
 	{ "name": "buffer_c1_21_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buffer_c1_21", "role": "address0" }} , 
 	{ "name": "buffer_c1_21_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c1_21", "role": "ce0" }} , 
 	{ "name": "buffer_c1_21_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c1_21", "role": "we0" }} , 
 	{ "name": "buffer_c1_21_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "buffer_c1_21", "role": "d0" }} , 
 	{ "name": "buffer_c1_22_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buffer_c1_22", "role": "address0" }} , 
 	{ "name": "buffer_c1_22_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c1_22", "role": "ce0" }} , 
 	{ "name": "buffer_c1_22_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c1_22", "role": "we0" }} , 
 	{ "name": "buffer_c1_22_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "buffer_c1_22", "role": "d0" }} , 
 	{ "name": "buffer_c1_23_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buffer_c1_23", "role": "address0" }} , 
 	{ "name": "buffer_c1_23_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c1_23", "role": "ce0" }} , 
 	{ "name": "buffer_c1_23_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c1_23", "role": "we0" }} , 
 	{ "name": "buffer_c1_23_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "buffer_c1_23", "role": "d0" }} , 
 	{ "name": "buffer_c1_24_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buffer_c1_24", "role": "address0" }} , 
 	{ "name": "buffer_c1_24_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c1_24", "role": "ce0" }} , 
 	{ "name": "buffer_c1_24_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c1_24", "role": "we0" }} , 
 	{ "name": "buffer_c1_24_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "buffer_c1_24", "role": "d0" }} , 
 	{ "name": "buffer_c1_25_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buffer_c1_25", "role": "address0" }} , 
 	{ "name": "buffer_c1_25_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c1_25", "role": "ce0" }} , 
 	{ "name": "buffer_c1_25_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c1_25", "role": "we0" }} , 
 	{ "name": "buffer_c1_25_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "buffer_c1_25", "role": "d0" }} , 
 	{ "name": "buffer_c1_26_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buffer_c1_26", "role": "address0" }} , 
 	{ "name": "buffer_c1_26_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c1_26", "role": "ce0" }} , 
 	{ "name": "buffer_c1_26_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c1_26", "role": "we0" }} , 
 	{ "name": "buffer_c1_26_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "buffer_c1_26", "role": "d0" }} , 
 	{ "name": "buffer_c1_27_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buffer_c1_27", "role": "address0" }} , 
 	{ "name": "buffer_c1_27_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c1_27", "role": "ce0" }} , 
 	{ "name": "buffer_c1_27_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c1_27", "role": "we0" }} , 
 	{ "name": "buffer_c1_27_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "buffer_c1_27", "role": "d0" }} , 
 	{ "name": "buffer_c1_28_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buffer_c1_28", "role": "address0" }} , 
 	{ "name": "buffer_c1_28_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c1_28", "role": "ce0" }} , 
 	{ "name": "buffer_c1_28_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c1_28", "role": "we0" }} , 
 	{ "name": "buffer_c1_28_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "buffer_c1_28", "role": "d0" }} , 
 	{ "name": "buffer_c1_29_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buffer_c1_29", "role": "address0" }} , 
 	{ "name": "buffer_c1_29_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c1_29", "role": "ce0" }} , 
 	{ "name": "buffer_c1_29_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c1_29", "role": "we0" }} , 
 	{ "name": "buffer_c1_29_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "buffer_c1_29", "role": "d0" }} , 
 	{ "name": "buffer_c1_30_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buffer_c1_30", "role": "address0" }} , 
 	{ "name": "buffer_c1_30_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c1_30", "role": "ce0" }} , 
 	{ "name": "buffer_c1_30_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c1_30", "role": "we0" }} , 
 	{ "name": "buffer_c1_30_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "buffer_c1_30", "role": "d0" }} , 
 	{ "name": "buffer_c1_31_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buffer_c1_31", "role": "address0" }} , 
 	{ "name": "buffer_c1_31_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c1_31", "role": "ce0" }} , 
 	{ "name": "buffer_c1_31_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c1_31", "role": "we0" }} , 
 	{ "name": "buffer_c1_31_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "buffer_c1_31", "role": "d0" }} , 
 	{ "name": "buffer_c1_32_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buffer_c1_32", "role": "address0" }} , 
 	{ "name": "buffer_c1_32_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c1_32", "role": "ce0" }} , 
 	{ "name": "buffer_c1_32_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c1_32", "role": "we0" }} , 
 	{ "name": "buffer_c1_32_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "buffer_c1_32", "role": "d0" }} , 
 	{ "name": "buffer_c1_33_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buffer_c1_33", "role": "address0" }} , 
 	{ "name": "buffer_c1_33_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c1_33", "role": "ce0" }} , 
 	{ "name": "buffer_c1_33_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c1_33", "role": "we0" }} , 
 	{ "name": "buffer_c1_33_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "buffer_c1_33", "role": "d0" }} , 
 	{ "name": "buffer_c1_34_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buffer_c1_34", "role": "address0" }} , 
 	{ "name": "buffer_c1_34_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c1_34", "role": "ce0" }} , 
 	{ "name": "buffer_c1_34_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c1_34", "role": "we0" }} , 
 	{ "name": "buffer_c1_34_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "buffer_c1_34", "role": "d0" }} , 
 	{ "name": "buffer_c1_35_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buffer_c1_35", "role": "address0" }} , 
 	{ "name": "buffer_c1_35_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c1_35", "role": "ce0" }} , 
 	{ "name": "buffer_c1_35_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c1_35", "role": "we0" }} , 
 	{ "name": "buffer_c1_35_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "buffer_c1_35", "role": "d0" }} , 
 	{ "name": "buffer_c1_36_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buffer_c1_36", "role": "address0" }} , 
 	{ "name": "buffer_c1_36_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c1_36", "role": "ce0" }} , 
 	{ "name": "buffer_c1_36_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c1_36", "role": "we0" }} , 
 	{ "name": "buffer_c1_36_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "buffer_c1_36", "role": "d0" }} , 
 	{ "name": "buffer_c1_37_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buffer_c1_37", "role": "address0" }} , 
 	{ "name": "buffer_c1_37_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c1_37", "role": "ce0" }} , 
 	{ "name": "buffer_c1_37_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c1_37", "role": "we0" }} , 
 	{ "name": "buffer_c1_37_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "buffer_c1_37", "role": "d0" }} , 
 	{ "name": "buffer_c1_38_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buffer_c1_38", "role": "address0" }} , 
 	{ "name": "buffer_c1_38_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c1_38", "role": "ce0" }} , 
 	{ "name": "buffer_c1_38_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c1_38", "role": "we0" }} , 
 	{ "name": "buffer_c1_38_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "buffer_c1_38", "role": "d0" }} , 
 	{ "name": "buffer_c1_39_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buffer_c1_39", "role": "address0" }} , 
 	{ "name": "buffer_c1_39_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c1_39", "role": "ce0" }} , 
 	{ "name": "buffer_c1_39_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c1_39", "role": "we0" }} , 
 	{ "name": "buffer_c1_39_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "buffer_c1_39", "role": "d0" }}  ]}

set ArgLastReadFirstWriteLatency {
	tiny_ecg_inference_Pipeline_VITIS_LOOP_68_2_VITIS_LOOP_69_3 {
		local_ecg {Type I LastRead 10 FirstWrite -1}
		local_ecg_1 {Type I LastRead 10 FirstWrite -1}
		local_ecg_2 {Type I LastRead 10 FirstWrite -1}
		local_ecg_3 {Type I LastRead 10 FirstWrite -1}
		local_ecg_4 {Type I LastRead 10 FirstWrite -1}
		buffer_c1 {Type O LastRead -1 FirstWrite 15}
		buffer_c1_1 {Type O LastRead -1 FirstWrite 15}
		buffer_c1_2 {Type O LastRead -1 FirstWrite 15}
		buffer_c1_3 {Type O LastRead -1 FirstWrite 15}
		buffer_c1_4 {Type O LastRead -1 FirstWrite 15}
		buffer_c1_5 {Type O LastRead -1 FirstWrite 15}
		buffer_c1_6 {Type O LastRead -1 FirstWrite 15}
		buffer_c1_7 {Type O LastRead -1 FirstWrite 15}
		buffer_c1_8 {Type O LastRead -1 FirstWrite 15}
		buffer_c1_9 {Type O LastRead -1 FirstWrite 15}
		buffer_c1_10 {Type O LastRead -1 FirstWrite 15}
		buffer_c1_11 {Type O LastRead -1 FirstWrite 15}
		buffer_c1_12 {Type O LastRead -1 FirstWrite 15}
		buffer_c1_13 {Type O LastRead -1 FirstWrite 15}
		buffer_c1_14 {Type O LastRead -1 FirstWrite 15}
		buffer_c1_15 {Type O LastRead -1 FirstWrite 15}
		buffer_c1_16 {Type O LastRead -1 FirstWrite 15}
		buffer_c1_17 {Type O LastRead -1 FirstWrite 15}
		buffer_c1_18 {Type O LastRead -1 FirstWrite 15}
		buffer_c1_19 {Type O LastRead -1 FirstWrite 15}
		buffer_c1_20 {Type O LastRead -1 FirstWrite 15}
		buffer_c1_21 {Type O LastRead -1 FirstWrite 15}
		buffer_c1_22 {Type O LastRead -1 FirstWrite 15}
		buffer_c1_23 {Type O LastRead -1 FirstWrite 15}
		buffer_c1_24 {Type O LastRead -1 FirstWrite 15}
		buffer_c1_25 {Type O LastRead -1 FirstWrite 15}
		buffer_c1_26 {Type O LastRead -1 FirstWrite 15}
		buffer_c1_27 {Type O LastRead -1 FirstWrite 15}
		buffer_c1_28 {Type O LastRead -1 FirstWrite 15}
		buffer_c1_29 {Type O LastRead -1 FirstWrite 15}
		buffer_c1_30 {Type O LastRead -1 FirstWrite 15}
		buffer_c1_31 {Type O LastRead -1 FirstWrite 15}
		buffer_c1_32 {Type O LastRead -1 FirstWrite 15}
		buffer_c1_33 {Type O LastRead -1 FirstWrite 15}
		buffer_c1_34 {Type O LastRead -1 FirstWrite 15}
		buffer_c1_35 {Type O LastRead -1 FirstWrite 15}
		buffer_c1_36 {Type O LastRead -1 FirstWrite 15}
		buffer_c1_37 {Type O LastRead -1 FirstWrite 15}
		buffer_c1_38 {Type O LastRead -1 FirstWrite 15}
		buffer_c1_39 {Type O LastRead -1 FirstWrite 15}
		conv1_bias {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv1_weight_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv1_weight_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv1_weight_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv1_weight_3 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv1_weight_4 {Type I LastRead -1 FirstWrite -1}
		conv1_multiplier {Type I LastRead -1 FirstWrite -1}
		conv1_shift {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "376", "Max" : "376"}
	, {"Name" : "Interval", "Min" : "361", "Max" : "361"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	local_ecg { ap_memory {  { local_ecg_address0 mem_address 1 5 }  { local_ecg_ce0 mem_ce 1 1 }  { local_ecg_q0 mem_dout 0 8 } } }
	local_ecg_1 { ap_memory {  { local_ecg_1_address0 mem_address 1 5 }  { local_ecg_1_ce0 mem_ce 1 1 }  { local_ecg_1_q0 mem_dout 0 8 } } }
	local_ecg_2 { ap_memory {  { local_ecg_2_address0 mem_address 1 5 }  { local_ecg_2_ce0 mem_ce 1 1 }  { local_ecg_2_q0 mem_dout 0 8 } } }
	local_ecg_3 { ap_memory {  { local_ecg_3_address0 mem_address 1 5 }  { local_ecg_3_ce0 mem_ce 1 1 }  { local_ecg_3_q0 mem_dout 0 8 } } }
	local_ecg_4 { ap_memory {  { local_ecg_4_address0 mem_address 1 5 }  { local_ecg_4_ce0 mem_ce 1 1 }  { local_ecg_4_q0 mem_dout 0 8 } } }
	buffer_c1 { ap_memory {  { buffer_c1_address0 mem_address 1 4 }  { buffer_c1_ce0 mem_ce 1 1 }  { buffer_c1_we0 mem_we 1 1 }  { buffer_c1_d0 mem_din 1 7 } } }
	buffer_c1_1 { ap_memory {  { buffer_c1_1_address0 mem_address 1 4 }  { buffer_c1_1_ce0 mem_ce 1 1 }  { buffer_c1_1_we0 mem_we 1 1 }  { buffer_c1_1_d0 mem_din 1 7 } } }
	buffer_c1_2 { ap_memory {  { buffer_c1_2_address0 mem_address 1 4 }  { buffer_c1_2_ce0 mem_ce 1 1 }  { buffer_c1_2_we0 mem_we 1 1 }  { buffer_c1_2_d0 mem_din 1 7 } } }
	buffer_c1_3 { ap_memory {  { buffer_c1_3_address0 mem_address 1 4 }  { buffer_c1_3_ce0 mem_ce 1 1 }  { buffer_c1_3_we0 mem_we 1 1 }  { buffer_c1_3_d0 mem_din 1 7 } } }
	buffer_c1_4 { ap_memory {  { buffer_c1_4_address0 mem_address 1 4 }  { buffer_c1_4_ce0 mem_ce 1 1 }  { buffer_c1_4_we0 mem_we 1 1 }  { buffer_c1_4_d0 mem_din 1 7 } } }
	buffer_c1_5 { ap_memory {  { buffer_c1_5_address0 mem_address 1 4 }  { buffer_c1_5_ce0 mem_ce 1 1 }  { buffer_c1_5_we0 mem_we 1 1 }  { buffer_c1_5_d0 mem_din 1 7 } } }
	buffer_c1_6 { ap_memory {  { buffer_c1_6_address0 mem_address 1 4 }  { buffer_c1_6_ce0 mem_ce 1 1 }  { buffer_c1_6_we0 mem_we 1 1 }  { buffer_c1_6_d0 mem_din 1 7 } } }
	buffer_c1_7 { ap_memory {  { buffer_c1_7_address0 mem_address 1 4 }  { buffer_c1_7_ce0 mem_ce 1 1 }  { buffer_c1_7_we0 mem_we 1 1 }  { buffer_c1_7_d0 mem_din 1 7 } } }
	buffer_c1_8 { ap_memory {  { buffer_c1_8_address0 mem_address 1 4 }  { buffer_c1_8_ce0 mem_ce 1 1 }  { buffer_c1_8_we0 mem_we 1 1 }  { buffer_c1_8_d0 mem_din 1 7 } } }
	buffer_c1_9 { ap_memory {  { buffer_c1_9_address0 mem_address 1 4 }  { buffer_c1_9_ce0 mem_ce 1 1 }  { buffer_c1_9_we0 mem_we 1 1 }  { buffer_c1_9_d0 mem_din 1 7 } } }
	buffer_c1_10 { ap_memory {  { buffer_c1_10_address0 mem_address 1 4 }  { buffer_c1_10_ce0 mem_ce 1 1 }  { buffer_c1_10_we0 mem_we 1 1 }  { buffer_c1_10_d0 mem_din 1 7 } } }
	buffer_c1_11 { ap_memory {  { buffer_c1_11_address0 mem_address 1 4 }  { buffer_c1_11_ce0 mem_ce 1 1 }  { buffer_c1_11_we0 mem_we 1 1 }  { buffer_c1_11_d0 mem_din 1 7 } } }
	buffer_c1_12 { ap_memory {  { buffer_c1_12_address0 mem_address 1 4 }  { buffer_c1_12_ce0 mem_ce 1 1 }  { buffer_c1_12_we0 mem_we 1 1 }  { buffer_c1_12_d0 mem_din 1 7 } } }
	buffer_c1_13 { ap_memory {  { buffer_c1_13_address0 mem_address 1 4 }  { buffer_c1_13_ce0 mem_ce 1 1 }  { buffer_c1_13_we0 mem_we 1 1 }  { buffer_c1_13_d0 mem_din 1 7 } } }
	buffer_c1_14 { ap_memory {  { buffer_c1_14_address0 mem_address 1 4 }  { buffer_c1_14_ce0 mem_ce 1 1 }  { buffer_c1_14_we0 mem_we 1 1 }  { buffer_c1_14_d0 mem_din 1 7 } } }
	buffer_c1_15 { ap_memory {  { buffer_c1_15_address0 mem_address 1 4 }  { buffer_c1_15_ce0 mem_ce 1 1 }  { buffer_c1_15_we0 mem_we 1 1 }  { buffer_c1_15_d0 mem_din 1 7 } } }
	buffer_c1_16 { ap_memory {  { buffer_c1_16_address0 mem_address 1 4 }  { buffer_c1_16_ce0 mem_ce 1 1 }  { buffer_c1_16_we0 mem_we 1 1 }  { buffer_c1_16_d0 mem_din 1 7 } } }
	buffer_c1_17 { ap_memory {  { buffer_c1_17_address0 mem_address 1 4 }  { buffer_c1_17_ce0 mem_ce 1 1 }  { buffer_c1_17_we0 mem_we 1 1 }  { buffer_c1_17_d0 mem_din 1 7 } } }
	buffer_c1_18 { ap_memory {  { buffer_c1_18_address0 mem_address 1 4 }  { buffer_c1_18_ce0 mem_ce 1 1 }  { buffer_c1_18_we0 mem_we 1 1 }  { buffer_c1_18_d0 mem_din 1 7 } } }
	buffer_c1_19 { ap_memory {  { buffer_c1_19_address0 mem_address 1 4 }  { buffer_c1_19_ce0 mem_ce 1 1 }  { buffer_c1_19_we0 mem_we 1 1 }  { buffer_c1_19_d0 mem_din 1 7 } } }
	buffer_c1_20 { ap_memory {  { buffer_c1_20_address0 mem_address 1 4 }  { buffer_c1_20_ce0 mem_ce 1 1 }  { buffer_c1_20_we0 mem_we 1 1 }  { buffer_c1_20_d0 mem_din 1 7 } } }
	buffer_c1_21 { ap_memory {  { buffer_c1_21_address0 mem_address 1 4 }  { buffer_c1_21_ce0 mem_ce 1 1 }  { buffer_c1_21_we0 mem_we 1 1 }  { buffer_c1_21_d0 mem_din 1 7 } } }
	buffer_c1_22 { ap_memory {  { buffer_c1_22_address0 mem_address 1 4 }  { buffer_c1_22_ce0 mem_ce 1 1 }  { buffer_c1_22_we0 mem_we 1 1 }  { buffer_c1_22_d0 mem_din 1 7 } } }
	buffer_c1_23 { ap_memory {  { buffer_c1_23_address0 mem_address 1 4 }  { buffer_c1_23_ce0 mem_ce 1 1 }  { buffer_c1_23_we0 mem_we 1 1 }  { buffer_c1_23_d0 mem_din 1 7 } } }
	buffer_c1_24 { ap_memory {  { buffer_c1_24_address0 mem_address 1 4 }  { buffer_c1_24_ce0 mem_ce 1 1 }  { buffer_c1_24_we0 mem_we 1 1 }  { buffer_c1_24_d0 mem_din 1 7 } } }
	buffer_c1_25 { ap_memory {  { buffer_c1_25_address0 mem_address 1 4 }  { buffer_c1_25_ce0 mem_ce 1 1 }  { buffer_c1_25_we0 mem_we 1 1 }  { buffer_c1_25_d0 mem_din 1 7 } } }
	buffer_c1_26 { ap_memory {  { buffer_c1_26_address0 mem_address 1 4 }  { buffer_c1_26_ce0 mem_ce 1 1 }  { buffer_c1_26_we0 mem_we 1 1 }  { buffer_c1_26_d0 mem_din 1 7 } } }
	buffer_c1_27 { ap_memory {  { buffer_c1_27_address0 mem_address 1 4 }  { buffer_c1_27_ce0 mem_ce 1 1 }  { buffer_c1_27_we0 mem_we 1 1 }  { buffer_c1_27_d0 mem_din 1 7 } } }
	buffer_c1_28 { ap_memory {  { buffer_c1_28_address0 mem_address 1 4 }  { buffer_c1_28_ce0 mem_ce 1 1 }  { buffer_c1_28_we0 mem_we 1 1 }  { buffer_c1_28_d0 mem_din 1 7 } } }
	buffer_c1_29 { ap_memory {  { buffer_c1_29_address0 mem_address 1 4 }  { buffer_c1_29_ce0 mem_ce 1 1 }  { buffer_c1_29_we0 mem_we 1 1 }  { buffer_c1_29_d0 mem_din 1 7 } } }
	buffer_c1_30 { ap_memory {  { buffer_c1_30_address0 mem_address 1 4 }  { buffer_c1_30_ce0 mem_ce 1 1 }  { buffer_c1_30_we0 mem_we 1 1 }  { buffer_c1_30_d0 mem_din 1 7 } } }
	buffer_c1_31 { ap_memory {  { buffer_c1_31_address0 mem_address 1 4 }  { buffer_c1_31_ce0 mem_ce 1 1 }  { buffer_c1_31_we0 mem_we 1 1 }  { buffer_c1_31_d0 mem_din 1 7 } } }
	buffer_c1_32 { ap_memory {  { buffer_c1_32_address0 mem_address 1 4 }  { buffer_c1_32_ce0 mem_ce 1 1 }  { buffer_c1_32_we0 mem_we 1 1 }  { buffer_c1_32_d0 mem_din 1 7 } } }
	buffer_c1_33 { ap_memory {  { buffer_c1_33_address0 mem_address 1 4 }  { buffer_c1_33_ce0 mem_ce 1 1 }  { buffer_c1_33_we0 mem_we 1 1 }  { buffer_c1_33_d0 mem_din 1 7 } } }
	buffer_c1_34 { ap_memory {  { buffer_c1_34_address0 mem_address 1 4 }  { buffer_c1_34_ce0 mem_ce 1 1 }  { buffer_c1_34_we0 mem_we 1 1 }  { buffer_c1_34_d0 mem_din 1 7 } } }
	buffer_c1_35 { ap_memory {  { buffer_c1_35_address0 mem_address 1 4 }  { buffer_c1_35_ce0 mem_ce 1 1 }  { buffer_c1_35_we0 mem_we 1 1 }  { buffer_c1_35_d0 mem_din 1 7 } } }
	buffer_c1_36 { ap_memory {  { buffer_c1_36_address0 mem_address 1 4 }  { buffer_c1_36_ce0 mem_ce 1 1 }  { buffer_c1_36_we0 mem_we 1 1 }  { buffer_c1_36_d0 mem_din 1 7 } } }
	buffer_c1_37 { ap_memory {  { buffer_c1_37_address0 mem_address 1 4 }  { buffer_c1_37_ce0 mem_ce 1 1 }  { buffer_c1_37_we0 mem_we 1 1 }  { buffer_c1_37_d0 mem_din 1 7 } } }
	buffer_c1_38 { ap_memory {  { buffer_c1_38_address0 mem_address 1 4 }  { buffer_c1_38_ce0 mem_ce 1 1 }  { buffer_c1_38_we0 mem_we 1 1 }  { buffer_c1_38_d0 mem_din 1 7 } } }
	buffer_c1_39 { ap_memory {  { buffer_c1_39_address0 mem_address 1 4 }  { buffer_c1_39_ce0 mem_ce 1 1 }  { buffer_c1_39_we0 mem_we 1 1 }  { buffer_c1_39_d0 mem_din 1 7 } } }
}
