set moduleName tiny_ecg_inference_Pipeline_VITIS_LOOP_146_13_VITIS_LOOP_147_14
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
set C_modelName {tiny_ecg_inference_Pipeline_VITIS_LOOP_146_13_VITIS_LOOP_147_14}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict buffer_c3 { MEM_WIDTH 7 MEM_SIZE 12 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict buffer_c3_1 { MEM_WIDTH 7 MEM_SIZE 12 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict buffer_c3_2 { MEM_WIDTH 7 MEM_SIZE 12 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict buffer_c3_3 { MEM_WIDTH 7 MEM_SIZE 12 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict buffer_c3_4 { MEM_WIDTH 7 MEM_SIZE 12 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict buffer_c3_5 { MEM_WIDTH 7 MEM_SIZE 12 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict buffer_c3_6 { MEM_WIDTH 7 MEM_SIZE 12 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict buffer_c3_7 { MEM_WIDTH 7 MEM_SIZE 12 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict buffer_c3_8 { MEM_WIDTH 7 MEM_SIZE 12 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict buffer_c3_9 { MEM_WIDTH 7 MEM_SIZE 12 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict buffer_c3_10 { MEM_WIDTH 7 MEM_SIZE 12 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict buffer_c3_11 { MEM_WIDTH 7 MEM_SIZE 12 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict buffer_c3_12 { MEM_WIDTH 7 MEM_SIZE 12 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict buffer_c3_13 { MEM_WIDTH 7 MEM_SIZE 12 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict buffer_c3_14 { MEM_WIDTH 7 MEM_SIZE 12 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict buffer_c3_15 { MEM_WIDTH 7 MEM_SIZE 12 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict flatten { MEM_WIDTH 7 MEM_SIZE 192 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ buffer_c3 int 7 regular {array 12 { 1 3 } 1 1 }  }
	{ buffer_c3_1 int 7 regular {array 12 { 1 3 } 1 1 }  }
	{ buffer_c3_2 int 7 regular {array 12 { 1 3 } 1 1 }  }
	{ buffer_c3_3 int 7 regular {array 12 { 1 3 } 1 1 }  }
	{ buffer_c3_4 int 7 regular {array 12 { 1 3 } 1 1 }  }
	{ buffer_c3_5 int 7 regular {array 12 { 1 3 } 1 1 }  }
	{ buffer_c3_6 int 7 regular {array 12 { 1 3 } 1 1 }  }
	{ buffer_c3_7 int 7 regular {array 12 { 1 3 } 1 1 }  }
	{ buffer_c3_8 int 7 regular {array 12 { 1 3 } 1 1 }  }
	{ buffer_c3_9 int 7 regular {array 12 { 1 3 } 1 1 }  }
	{ buffer_c3_10 int 7 regular {array 12 { 1 3 } 1 1 }  }
	{ buffer_c3_11 int 7 regular {array 12 { 1 3 } 1 1 }  }
	{ buffer_c3_12 int 7 regular {array 12 { 1 3 } 1 1 }  }
	{ buffer_c3_13 int 7 regular {array 12 { 1 3 } 1 1 }  }
	{ buffer_c3_14 int 7 regular {array 12 { 1 3 } 1 1 }  }
	{ buffer_c3_15 int 7 regular {array 12 { 1 3 } 1 1 }  }
	{ flatten int 7 regular {array 192 { 0 3 } 0 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "buffer_c3", "interface" : "memory", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "buffer_c3_1", "interface" : "memory", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "buffer_c3_2", "interface" : "memory", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "buffer_c3_3", "interface" : "memory", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "buffer_c3_4", "interface" : "memory", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "buffer_c3_5", "interface" : "memory", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "buffer_c3_6", "interface" : "memory", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "buffer_c3_7", "interface" : "memory", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "buffer_c3_8", "interface" : "memory", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "buffer_c3_9", "interface" : "memory", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "buffer_c3_10", "interface" : "memory", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "buffer_c3_11", "interface" : "memory", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "buffer_c3_12", "interface" : "memory", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "buffer_c3_13", "interface" : "memory", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "buffer_c3_14", "interface" : "memory", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "buffer_c3_15", "interface" : "memory", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "flatten", "interface" : "memory", "bitwidth" : 7, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 58
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ buffer_c3_address0 sc_out sc_lv 4 signal 0 } 
	{ buffer_c3_ce0 sc_out sc_logic 1 signal 0 } 
	{ buffer_c3_q0 sc_in sc_lv 7 signal 0 } 
	{ buffer_c3_1_address0 sc_out sc_lv 4 signal 1 } 
	{ buffer_c3_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ buffer_c3_1_q0 sc_in sc_lv 7 signal 1 } 
	{ buffer_c3_2_address0 sc_out sc_lv 4 signal 2 } 
	{ buffer_c3_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ buffer_c3_2_q0 sc_in sc_lv 7 signal 2 } 
	{ buffer_c3_3_address0 sc_out sc_lv 4 signal 3 } 
	{ buffer_c3_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ buffer_c3_3_q0 sc_in sc_lv 7 signal 3 } 
	{ buffer_c3_4_address0 sc_out sc_lv 4 signal 4 } 
	{ buffer_c3_4_ce0 sc_out sc_logic 1 signal 4 } 
	{ buffer_c3_4_q0 sc_in sc_lv 7 signal 4 } 
	{ buffer_c3_5_address0 sc_out sc_lv 4 signal 5 } 
	{ buffer_c3_5_ce0 sc_out sc_logic 1 signal 5 } 
	{ buffer_c3_5_q0 sc_in sc_lv 7 signal 5 } 
	{ buffer_c3_6_address0 sc_out sc_lv 4 signal 6 } 
	{ buffer_c3_6_ce0 sc_out sc_logic 1 signal 6 } 
	{ buffer_c3_6_q0 sc_in sc_lv 7 signal 6 } 
	{ buffer_c3_7_address0 sc_out sc_lv 4 signal 7 } 
	{ buffer_c3_7_ce0 sc_out sc_logic 1 signal 7 } 
	{ buffer_c3_7_q0 sc_in sc_lv 7 signal 7 } 
	{ buffer_c3_8_address0 sc_out sc_lv 4 signal 8 } 
	{ buffer_c3_8_ce0 sc_out sc_logic 1 signal 8 } 
	{ buffer_c3_8_q0 sc_in sc_lv 7 signal 8 } 
	{ buffer_c3_9_address0 sc_out sc_lv 4 signal 9 } 
	{ buffer_c3_9_ce0 sc_out sc_logic 1 signal 9 } 
	{ buffer_c3_9_q0 sc_in sc_lv 7 signal 9 } 
	{ buffer_c3_10_address0 sc_out sc_lv 4 signal 10 } 
	{ buffer_c3_10_ce0 sc_out sc_logic 1 signal 10 } 
	{ buffer_c3_10_q0 sc_in sc_lv 7 signal 10 } 
	{ buffer_c3_11_address0 sc_out sc_lv 4 signal 11 } 
	{ buffer_c3_11_ce0 sc_out sc_logic 1 signal 11 } 
	{ buffer_c3_11_q0 sc_in sc_lv 7 signal 11 } 
	{ buffer_c3_12_address0 sc_out sc_lv 4 signal 12 } 
	{ buffer_c3_12_ce0 sc_out sc_logic 1 signal 12 } 
	{ buffer_c3_12_q0 sc_in sc_lv 7 signal 12 } 
	{ buffer_c3_13_address0 sc_out sc_lv 4 signal 13 } 
	{ buffer_c3_13_ce0 sc_out sc_logic 1 signal 13 } 
	{ buffer_c3_13_q0 sc_in sc_lv 7 signal 13 } 
	{ buffer_c3_14_address0 sc_out sc_lv 4 signal 14 } 
	{ buffer_c3_14_ce0 sc_out sc_logic 1 signal 14 } 
	{ buffer_c3_14_q0 sc_in sc_lv 7 signal 14 } 
	{ buffer_c3_15_address0 sc_out sc_lv 4 signal 15 } 
	{ buffer_c3_15_ce0 sc_out sc_logic 1 signal 15 } 
	{ buffer_c3_15_q0 sc_in sc_lv 7 signal 15 } 
	{ flatten_address0 sc_out sc_lv 8 signal 16 } 
	{ flatten_ce0 sc_out sc_logic 1 signal 16 } 
	{ flatten_we0 sc_out sc_logic 1 signal 16 } 
	{ flatten_d0 sc_out sc_lv 7 signal 16 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "buffer_c3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buffer_c3", "role": "address0" }} , 
 	{ "name": "buffer_c3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c3", "role": "ce0" }} , 
 	{ "name": "buffer_c3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "buffer_c3", "role": "q0" }} , 
 	{ "name": "buffer_c3_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buffer_c3_1", "role": "address0" }} , 
 	{ "name": "buffer_c3_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c3_1", "role": "ce0" }} , 
 	{ "name": "buffer_c3_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "buffer_c3_1", "role": "q0" }} , 
 	{ "name": "buffer_c3_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buffer_c3_2", "role": "address0" }} , 
 	{ "name": "buffer_c3_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c3_2", "role": "ce0" }} , 
 	{ "name": "buffer_c3_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "buffer_c3_2", "role": "q0" }} , 
 	{ "name": "buffer_c3_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buffer_c3_3", "role": "address0" }} , 
 	{ "name": "buffer_c3_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c3_3", "role": "ce0" }} , 
 	{ "name": "buffer_c3_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "buffer_c3_3", "role": "q0" }} , 
 	{ "name": "buffer_c3_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buffer_c3_4", "role": "address0" }} , 
 	{ "name": "buffer_c3_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c3_4", "role": "ce0" }} , 
 	{ "name": "buffer_c3_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "buffer_c3_4", "role": "q0" }} , 
 	{ "name": "buffer_c3_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buffer_c3_5", "role": "address0" }} , 
 	{ "name": "buffer_c3_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c3_5", "role": "ce0" }} , 
 	{ "name": "buffer_c3_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "buffer_c3_5", "role": "q0" }} , 
 	{ "name": "buffer_c3_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buffer_c3_6", "role": "address0" }} , 
 	{ "name": "buffer_c3_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c3_6", "role": "ce0" }} , 
 	{ "name": "buffer_c3_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "buffer_c3_6", "role": "q0" }} , 
 	{ "name": "buffer_c3_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buffer_c3_7", "role": "address0" }} , 
 	{ "name": "buffer_c3_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c3_7", "role": "ce0" }} , 
 	{ "name": "buffer_c3_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "buffer_c3_7", "role": "q0" }} , 
 	{ "name": "buffer_c3_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buffer_c3_8", "role": "address0" }} , 
 	{ "name": "buffer_c3_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c3_8", "role": "ce0" }} , 
 	{ "name": "buffer_c3_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "buffer_c3_8", "role": "q0" }} , 
 	{ "name": "buffer_c3_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buffer_c3_9", "role": "address0" }} , 
 	{ "name": "buffer_c3_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c3_9", "role": "ce0" }} , 
 	{ "name": "buffer_c3_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "buffer_c3_9", "role": "q0" }} , 
 	{ "name": "buffer_c3_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buffer_c3_10", "role": "address0" }} , 
 	{ "name": "buffer_c3_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c3_10", "role": "ce0" }} , 
 	{ "name": "buffer_c3_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "buffer_c3_10", "role": "q0" }} , 
 	{ "name": "buffer_c3_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buffer_c3_11", "role": "address0" }} , 
 	{ "name": "buffer_c3_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c3_11", "role": "ce0" }} , 
 	{ "name": "buffer_c3_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "buffer_c3_11", "role": "q0" }} , 
 	{ "name": "buffer_c3_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buffer_c3_12", "role": "address0" }} , 
 	{ "name": "buffer_c3_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c3_12", "role": "ce0" }} , 
 	{ "name": "buffer_c3_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "buffer_c3_12", "role": "q0" }} , 
 	{ "name": "buffer_c3_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buffer_c3_13", "role": "address0" }} , 
 	{ "name": "buffer_c3_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c3_13", "role": "ce0" }} , 
 	{ "name": "buffer_c3_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "buffer_c3_13", "role": "q0" }} , 
 	{ "name": "buffer_c3_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buffer_c3_14", "role": "address0" }} , 
 	{ "name": "buffer_c3_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c3_14", "role": "ce0" }} , 
 	{ "name": "buffer_c3_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "buffer_c3_14", "role": "q0" }} , 
 	{ "name": "buffer_c3_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buffer_c3_15", "role": "address0" }} , 
 	{ "name": "buffer_c3_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_c3_15", "role": "ce0" }} , 
 	{ "name": "buffer_c3_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "buffer_c3_15", "role": "q0" }} , 
 	{ "name": "flatten_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "flatten", "role": "address0" }} , 
 	{ "name": "flatten_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flatten", "role": "ce0" }} , 
 	{ "name": "flatten_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flatten", "role": "we0" }} , 
 	{ "name": "flatten_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "flatten", "role": "d0" }}  ]}

set ArgLastReadFirstWriteLatency {
	tiny_ecg_inference_Pipeline_VITIS_LOOP_146_13_VITIS_LOOP_147_14 {
		buffer_c3 {Type I LastRead 0 FirstWrite -1}
		buffer_c3_1 {Type I LastRead 0 FirstWrite -1}
		buffer_c3_2 {Type I LastRead 0 FirstWrite -1}
		buffer_c3_3 {Type I LastRead 0 FirstWrite -1}
		buffer_c3_4 {Type I LastRead 0 FirstWrite -1}
		buffer_c3_5 {Type I LastRead 0 FirstWrite -1}
		buffer_c3_6 {Type I LastRead 0 FirstWrite -1}
		buffer_c3_7 {Type I LastRead 0 FirstWrite -1}
		buffer_c3_8 {Type I LastRead 0 FirstWrite -1}
		buffer_c3_9 {Type I LastRead 0 FirstWrite -1}
		buffer_c3_10 {Type I LastRead 0 FirstWrite -1}
		buffer_c3_11 {Type I LastRead 0 FirstWrite -1}
		buffer_c3_12 {Type I LastRead 0 FirstWrite -1}
		buffer_c3_13 {Type I LastRead 0 FirstWrite -1}
		buffer_c3_14 {Type I LastRead 0 FirstWrite -1}
		buffer_c3_15 {Type I LastRead 0 FirstWrite -1}
		flatten {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "194", "Max" : "194"}
	, {"Name" : "Interval", "Min" : "193", "Max" : "193"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	buffer_c3 { ap_memory {  { buffer_c3_address0 mem_address 1 4 }  { buffer_c3_ce0 mem_ce 1 1 }  { buffer_c3_q0 mem_dout 0 7 } } }
	buffer_c3_1 { ap_memory {  { buffer_c3_1_address0 mem_address 1 4 }  { buffer_c3_1_ce0 mem_ce 1 1 }  { buffer_c3_1_q0 mem_dout 0 7 } } }
	buffer_c3_2 { ap_memory {  { buffer_c3_2_address0 mem_address 1 4 }  { buffer_c3_2_ce0 mem_ce 1 1 }  { buffer_c3_2_q0 mem_dout 0 7 } } }
	buffer_c3_3 { ap_memory {  { buffer_c3_3_address0 mem_address 1 4 }  { buffer_c3_3_ce0 mem_ce 1 1 }  { buffer_c3_3_q0 mem_dout 0 7 } } }
	buffer_c3_4 { ap_memory {  { buffer_c3_4_address0 mem_address 1 4 }  { buffer_c3_4_ce0 mem_ce 1 1 }  { buffer_c3_4_q0 mem_dout 0 7 } } }
	buffer_c3_5 { ap_memory {  { buffer_c3_5_address0 mem_address 1 4 }  { buffer_c3_5_ce0 mem_ce 1 1 }  { buffer_c3_5_q0 mem_dout 0 7 } } }
	buffer_c3_6 { ap_memory {  { buffer_c3_6_address0 mem_address 1 4 }  { buffer_c3_6_ce0 mem_ce 1 1 }  { buffer_c3_6_q0 mem_dout 0 7 } } }
	buffer_c3_7 { ap_memory {  { buffer_c3_7_address0 mem_address 1 4 }  { buffer_c3_7_ce0 mem_ce 1 1 }  { buffer_c3_7_q0 mem_dout 0 7 } } }
	buffer_c3_8 { ap_memory {  { buffer_c3_8_address0 mem_address 1 4 }  { buffer_c3_8_ce0 mem_ce 1 1 }  { buffer_c3_8_q0 mem_dout 0 7 } } }
	buffer_c3_9 { ap_memory {  { buffer_c3_9_address0 mem_address 1 4 }  { buffer_c3_9_ce0 mem_ce 1 1 }  { buffer_c3_9_q0 mem_dout 0 7 } } }
	buffer_c3_10 { ap_memory {  { buffer_c3_10_address0 mem_address 1 4 }  { buffer_c3_10_ce0 mem_ce 1 1 }  { buffer_c3_10_q0 mem_dout 0 7 } } }
	buffer_c3_11 { ap_memory {  { buffer_c3_11_address0 mem_address 1 4 }  { buffer_c3_11_ce0 mem_ce 1 1 }  { buffer_c3_11_q0 mem_dout 0 7 } } }
	buffer_c3_12 { ap_memory {  { buffer_c3_12_address0 mem_address 1 4 }  { buffer_c3_12_ce0 mem_ce 1 1 }  { buffer_c3_12_q0 mem_dout 0 7 } } }
	buffer_c3_13 { ap_memory {  { buffer_c3_13_address0 mem_address 1 4 }  { buffer_c3_13_ce0 mem_ce 1 1 }  { buffer_c3_13_q0 mem_dout 0 7 } } }
	buffer_c3_14 { ap_memory {  { buffer_c3_14_address0 mem_address 1 4 }  { buffer_c3_14_ce0 mem_ce 1 1 }  { buffer_c3_14_q0 mem_dout 0 7 } } }
	buffer_c3_15 { ap_memory {  { buffer_c3_15_address0 mem_address 1 4 }  { buffer_c3_15_ce0 mem_ce 1 1 }  { buffer_c3_15_q0 mem_dout 0 7 } } }
	flatten { ap_memory {  { flatten_address0 mem_address 1 8 }  { flatten_ce0 mem_ce 1 1 }  { flatten_we0 mem_we 1 1 }  { flatten_d0 mem_din 1 7 } } }
}
