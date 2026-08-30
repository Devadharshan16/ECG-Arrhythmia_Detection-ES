set moduleName tiny_ecg_inference
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set isPipelined_legacy 0
set pipeline_type none
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
set C_modelName {tiny_ecg_inference}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ DATA_IN int 8 regular {axi_master 0}  }
	{ DATA_OUT int 8 regular {axi_master 1}  }
	{ input_ecg int 64 regular {axi_slave 0}  }
	{ output_logits int 64 regular {axi_slave 0}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "DATA_IN", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "id_num" : 1, "bitSlice":[ {"cElement": [{"cName": "input_ecg","offset": { "type": "dynamic","port_name": "input_ecg","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "DATA_OUT", "interface" : "axi_master", "bitwidth" : 8, "direction" : "WRITEONLY", "id_num" : 1, "bitSlice":[ {"cElement": [{"cName": "output_logits","offset": { "type": "dynamic","port_name": "output_logits","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "input_ecg", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "output_logits", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":28}, "offset_end" : {"in":39}} ]}
# RTL Port declarations: 
set portNum 127
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_DATA_IN_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_DATA_IN_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_DATA_IN_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_DATA_IN_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_DATA_IN_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_DATA_IN_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_DATA_IN_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_DATA_IN_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_DATA_IN_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_DATA_IN_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_DATA_IN_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_DATA_IN_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_DATA_IN_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_DATA_IN_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_DATA_IN_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_DATA_IN_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_DATA_IN_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_DATA_IN_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_DATA_IN_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_DATA_IN_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_DATA_IN_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_DATA_IN_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_DATA_IN_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_DATA_IN_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_DATA_IN_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_DATA_IN_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_DATA_IN_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_DATA_IN_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_DATA_IN_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_DATA_IN_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_DATA_IN_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_DATA_IN_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_DATA_IN_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_DATA_IN_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_DATA_IN_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_DATA_IN_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_DATA_IN_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_DATA_IN_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_DATA_IN_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_DATA_IN_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_DATA_IN_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_DATA_IN_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_DATA_IN_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_DATA_IN_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_DATA_IN_BUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_DATA_OUT_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_DATA_OUT_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_DATA_OUT_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_DATA_OUT_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_DATA_OUT_AWLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_DATA_OUT_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_DATA_OUT_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_DATA_OUT_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_DATA_OUT_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_DATA_OUT_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_DATA_OUT_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_DATA_OUT_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_DATA_OUT_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_DATA_OUT_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_DATA_OUT_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_DATA_OUT_WDATA sc_out sc_lv 32 signal 1 } 
	{ m_axi_DATA_OUT_WSTRB sc_out sc_lv 4 signal 1 } 
	{ m_axi_DATA_OUT_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_DATA_OUT_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_DATA_OUT_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_DATA_OUT_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_DATA_OUT_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_DATA_OUT_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_DATA_OUT_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_DATA_OUT_ARLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_DATA_OUT_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_DATA_OUT_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_DATA_OUT_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_DATA_OUT_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_DATA_OUT_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_DATA_OUT_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_DATA_OUT_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_DATA_OUT_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_DATA_OUT_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_DATA_OUT_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_DATA_OUT_RDATA sc_in sc_lv 32 signal 1 } 
	{ m_axi_DATA_OUT_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_DATA_OUT_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_DATA_OUT_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_DATA_OUT_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_DATA_OUT_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_DATA_OUT_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_DATA_OUT_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_DATA_OUT_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_DATA_OUT_BUSER sc_in sc_lv 1 signal 1 } 
	{ s_axi_CTRL_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_AWADDR sc_in sc_lv 4 signal -1 } 
	{ s_axi_CTRL_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_CTRL_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_CTRL_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_ARADDR sc_in sc_lv 4 signal -1 } 
	{ s_axi_CTRL_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_CTRL_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_CTRL_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_CTRL_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CTRL", "role": "AWADDR" },"address":[{"name":"tiny_ecg_inference","role":"start","value":"0","valid_bit":"0"},{"name":"tiny_ecg_inference","role":"continue","value":"0","valid_bit":"4"},{"name":"tiny_ecg_inference","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_CTRL_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "AWVALID" } },
	{ "name": "s_axi_CTRL_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "AWREADY" } },
	{ "name": "s_axi_CTRL_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "WVALID" } },
	{ "name": "s_axi_CTRL_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "WREADY" } },
	{ "name": "s_axi_CTRL_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL", "role": "WDATA" } },
	{ "name": "s_axi_CTRL_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CTRL", "role": "WSTRB" } },
	{ "name": "s_axi_CTRL_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CTRL", "role": "ARADDR" },"address":[{"name":"tiny_ecg_inference","role":"start","value":"0","valid_bit":"0"},{"name":"tiny_ecg_inference","role":"done","value":"0","valid_bit":"1"},{"name":"tiny_ecg_inference","role":"idle","value":"0","valid_bit":"2"},{"name":"tiny_ecg_inference","role":"ready","value":"0","valid_bit":"3"},{"name":"tiny_ecg_inference","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_CTRL_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "ARVALID" } },
	{ "name": "s_axi_CTRL_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "ARREADY" } },
	{ "name": "s_axi_CTRL_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "RVALID" } },
	{ "name": "s_axi_CTRL_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "RREADY" } },
	{ "name": "s_axi_CTRL_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL", "role": "RDATA" } },
	{ "name": "s_axi_CTRL_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL", "role": "RRESP" } },
	{ "name": "s_axi_CTRL_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "BVALID" } },
	{ "name": "s_axi_CTRL_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "BREADY" } },
	{ "name": "s_axi_CTRL_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "interrupt" } },
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"input_ecg","role":"data","value":"16"},{"name":"output_logits","role":"data","value":"28"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_DATA_IN_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_IN", "role": "AWVALID" }} , 
 	{ "name": "m_axi_DATA_IN_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_IN", "role": "AWREADY" }} , 
 	{ "name": "m_axi_DATA_IN_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "DATA_IN", "role": "AWADDR" }} , 
 	{ "name": "m_axi_DATA_IN_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_IN", "role": "AWID" }} , 
 	{ "name": "m_axi_DATA_IN_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "DATA_IN", "role": "AWLEN" }} , 
 	{ "name": "m_axi_DATA_IN_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "DATA_IN", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_DATA_IN_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA_IN", "role": "AWBURST" }} , 
 	{ "name": "m_axi_DATA_IN_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA_IN", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_DATA_IN_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_IN", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_DATA_IN_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "DATA_IN", "role": "AWPROT" }} , 
 	{ "name": "m_axi_DATA_IN_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_IN", "role": "AWQOS" }} , 
 	{ "name": "m_axi_DATA_IN_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_IN", "role": "AWREGION" }} , 
 	{ "name": "m_axi_DATA_IN_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_IN", "role": "AWUSER" }} , 
 	{ "name": "m_axi_DATA_IN_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_IN", "role": "WVALID" }} , 
 	{ "name": "m_axi_DATA_IN_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_IN", "role": "WREADY" }} , 
 	{ "name": "m_axi_DATA_IN_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "DATA_IN", "role": "WDATA" }} , 
 	{ "name": "m_axi_DATA_IN_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_IN", "role": "WSTRB" }} , 
 	{ "name": "m_axi_DATA_IN_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_IN", "role": "WLAST" }} , 
 	{ "name": "m_axi_DATA_IN_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_IN", "role": "WID" }} , 
 	{ "name": "m_axi_DATA_IN_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_IN", "role": "WUSER" }} , 
 	{ "name": "m_axi_DATA_IN_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_IN", "role": "ARVALID" }} , 
 	{ "name": "m_axi_DATA_IN_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_IN", "role": "ARREADY" }} , 
 	{ "name": "m_axi_DATA_IN_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "DATA_IN", "role": "ARADDR" }} , 
 	{ "name": "m_axi_DATA_IN_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_IN", "role": "ARID" }} , 
 	{ "name": "m_axi_DATA_IN_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "DATA_IN", "role": "ARLEN" }} , 
 	{ "name": "m_axi_DATA_IN_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "DATA_IN", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_DATA_IN_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA_IN", "role": "ARBURST" }} , 
 	{ "name": "m_axi_DATA_IN_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA_IN", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_DATA_IN_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_IN", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_DATA_IN_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "DATA_IN", "role": "ARPROT" }} , 
 	{ "name": "m_axi_DATA_IN_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_IN", "role": "ARQOS" }} , 
 	{ "name": "m_axi_DATA_IN_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_IN", "role": "ARREGION" }} , 
 	{ "name": "m_axi_DATA_IN_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_IN", "role": "ARUSER" }} , 
 	{ "name": "m_axi_DATA_IN_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_IN", "role": "RVALID" }} , 
 	{ "name": "m_axi_DATA_IN_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_IN", "role": "RREADY" }} , 
 	{ "name": "m_axi_DATA_IN_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "DATA_IN", "role": "RDATA" }} , 
 	{ "name": "m_axi_DATA_IN_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_IN", "role": "RLAST" }} , 
 	{ "name": "m_axi_DATA_IN_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_IN", "role": "RID" }} , 
 	{ "name": "m_axi_DATA_IN_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_IN", "role": "RUSER" }} , 
 	{ "name": "m_axi_DATA_IN_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA_IN", "role": "RRESP" }} , 
 	{ "name": "m_axi_DATA_IN_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_IN", "role": "BVALID" }} , 
 	{ "name": "m_axi_DATA_IN_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_IN", "role": "BREADY" }} , 
 	{ "name": "m_axi_DATA_IN_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA_IN", "role": "BRESP" }} , 
 	{ "name": "m_axi_DATA_IN_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_IN", "role": "BID" }} , 
 	{ "name": "m_axi_DATA_IN_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_IN", "role": "BUSER" }} , 
 	{ "name": "m_axi_DATA_OUT_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_OUT", "role": "AWVALID" }} , 
 	{ "name": "m_axi_DATA_OUT_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_OUT", "role": "AWREADY" }} , 
 	{ "name": "m_axi_DATA_OUT_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "DATA_OUT", "role": "AWADDR" }} , 
 	{ "name": "m_axi_DATA_OUT_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_OUT", "role": "AWID" }} , 
 	{ "name": "m_axi_DATA_OUT_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "DATA_OUT", "role": "AWLEN" }} , 
 	{ "name": "m_axi_DATA_OUT_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "DATA_OUT", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_DATA_OUT_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA_OUT", "role": "AWBURST" }} , 
 	{ "name": "m_axi_DATA_OUT_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA_OUT", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_DATA_OUT_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_OUT", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_DATA_OUT_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "DATA_OUT", "role": "AWPROT" }} , 
 	{ "name": "m_axi_DATA_OUT_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_OUT", "role": "AWQOS" }} , 
 	{ "name": "m_axi_DATA_OUT_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_OUT", "role": "AWREGION" }} , 
 	{ "name": "m_axi_DATA_OUT_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_OUT", "role": "AWUSER" }} , 
 	{ "name": "m_axi_DATA_OUT_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_OUT", "role": "WVALID" }} , 
 	{ "name": "m_axi_DATA_OUT_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_OUT", "role": "WREADY" }} , 
 	{ "name": "m_axi_DATA_OUT_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "DATA_OUT", "role": "WDATA" }} , 
 	{ "name": "m_axi_DATA_OUT_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_OUT", "role": "WSTRB" }} , 
 	{ "name": "m_axi_DATA_OUT_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_OUT", "role": "WLAST" }} , 
 	{ "name": "m_axi_DATA_OUT_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_OUT", "role": "WID" }} , 
 	{ "name": "m_axi_DATA_OUT_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_OUT", "role": "WUSER" }} , 
 	{ "name": "m_axi_DATA_OUT_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_OUT", "role": "ARVALID" }} , 
 	{ "name": "m_axi_DATA_OUT_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_OUT", "role": "ARREADY" }} , 
 	{ "name": "m_axi_DATA_OUT_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "DATA_OUT", "role": "ARADDR" }} , 
 	{ "name": "m_axi_DATA_OUT_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_OUT", "role": "ARID" }} , 
 	{ "name": "m_axi_DATA_OUT_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "DATA_OUT", "role": "ARLEN" }} , 
 	{ "name": "m_axi_DATA_OUT_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "DATA_OUT", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_DATA_OUT_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA_OUT", "role": "ARBURST" }} , 
 	{ "name": "m_axi_DATA_OUT_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA_OUT", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_DATA_OUT_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_OUT", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_DATA_OUT_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "DATA_OUT", "role": "ARPROT" }} , 
 	{ "name": "m_axi_DATA_OUT_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_OUT", "role": "ARQOS" }} , 
 	{ "name": "m_axi_DATA_OUT_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_OUT", "role": "ARREGION" }} , 
 	{ "name": "m_axi_DATA_OUT_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_OUT", "role": "ARUSER" }} , 
 	{ "name": "m_axi_DATA_OUT_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_OUT", "role": "RVALID" }} , 
 	{ "name": "m_axi_DATA_OUT_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_OUT", "role": "RREADY" }} , 
 	{ "name": "m_axi_DATA_OUT_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "DATA_OUT", "role": "RDATA" }} , 
 	{ "name": "m_axi_DATA_OUT_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_OUT", "role": "RLAST" }} , 
 	{ "name": "m_axi_DATA_OUT_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_OUT", "role": "RID" }} , 
 	{ "name": "m_axi_DATA_OUT_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_OUT", "role": "RUSER" }} , 
 	{ "name": "m_axi_DATA_OUT_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA_OUT", "role": "RRESP" }} , 
 	{ "name": "m_axi_DATA_OUT_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_OUT", "role": "BVALID" }} , 
 	{ "name": "m_axi_DATA_OUT_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_OUT", "role": "BREADY" }} , 
 	{ "name": "m_axi_DATA_OUT_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA_OUT", "role": "BRESP" }} , 
 	{ "name": "m_axi_DATA_OUT_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_OUT", "role": "BID" }} , 
 	{ "name": "m_axi_DATA_OUT_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_OUT", "role": "BUSER" }}  ]}

set ArgLastReadFirstWriteLatency {
	tiny_ecg_inference {
		DATA_IN {Type I LastRead 98 FirstWrite -1}
		DATA_OUT {Type O LastRead 204 FirstWrite 9}
		input_ecg {Type I LastRead 0 FirstWrite -1}
		output_logits {Type I LastRead 0 FirstWrite -1}
		conv1_bias {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv1_weight_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv1_weight_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv1_weight_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv1_weight_3 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv1_weight_4 {Type I LastRead -1 FirstWrite -1}
		conv2_bias {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_3 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_4 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_5 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_6 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_7 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_8 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_9 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_10 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_11 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_12 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_13 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_14 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_15 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_16 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_17 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_18 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_19 {Type I LastRead -1 FirstWrite -1}
		conv3_bias {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_3 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_4 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_5 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_6 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_7 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_8 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_9 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_10 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_11 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_12 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_13 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_14 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_15 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_16 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_17 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_18 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_19 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_20 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_21 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_22 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_23 {Type I LastRead -1 FirstWrite -1}}
	tiny_ecg_inference_Pipeline_VITIS_LOOP_33_1 {
		sext_ln48_2 {Type I LastRead 0 FirstWrite -1}
		sext_ln48_1 {Type I LastRead 0 FirstWrite -1}
		sext_ln48 {Type I LastRead 0 FirstWrite -1}
		sext_ln48_4 {Type I LastRead 0 FirstWrite -1}
		sext_ln48_3 {Type I LastRead 0 FirstWrite -1}
		sext_ln48_6 {Type I LastRead 0 FirstWrite -1}
		sext_ln48_5 {Type I LastRead 0 FirstWrite -1}
		sext_ln48_8 {Type I LastRead 0 FirstWrite -1}
		sext_ln48_7 {Type I LastRead 0 FirstWrite -1}
		sext_ln48_10 {Type I LastRead 0 FirstWrite -1}
		sext_ln48_9 {Type I LastRead 0 FirstWrite -1}
		sext_ln48_12 {Type I LastRead 0 FirstWrite -1}
		sext_ln48_11 {Type I LastRead 0 FirstWrite -1}
		sext_ln48_14 {Type I LastRead 0 FirstWrite -1}
		sext_ln48_13 {Type I LastRead 0 FirstWrite -1}
		sext_ln48_16 {Type I LastRead 0 FirstWrite -1}
		sext_ln48_15 {Type I LastRead 0 FirstWrite -1}
		sext_ln48_18 {Type I LastRead 0 FirstWrite -1}
		sext_ln48_17 {Type I LastRead 0 FirstWrite -1}
		sext_ln48_20 {Type I LastRead 0 FirstWrite -1}
		sext_ln48_19 {Type I LastRead 0 FirstWrite -1}
		sext_ln48_22 {Type I LastRead 0 FirstWrite -1}
		sext_ln48_21 {Type I LastRead 0 FirstWrite -1}
		sext_ln48_24 {Type I LastRead 0 FirstWrite -1}
		sext_ln48_23 {Type I LastRead 0 FirstWrite -1}
		sext_ln48_26 {Type I LastRead 0 FirstWrite -1}
		sext_ln48_25 {Type I LastRead 0 FirstWrite -1}
		sext_ln48_28 {Type I LastRead 0 FirstWrite -1}
		sext_ln48_27 {Type I LastRead 0 FirstWrite -1}
		sext_ln48_30 {Type I LastRead 0 FirstWrite -1}
		sext_ln48_29 {Type I LastRead 0 FirstWrite -1}
		sext_ln48_32 {Type I LastRead 0 FirstWrite -1}
		sext_ln48_31 {Type I LastRead 0 FirstWrite -1}
		sext_ln48_34 {Type I LastRead 0 FirstWrite -1}
		sext_ln48_33 {Type I LastRead 0 FirstWrite -1}
		sext_ln48_36 {Type I LastRead 0 FirstWrite -1}
		sext_ln48_35 {Type I LastRead 0 FirstWrite -1}
		sext_ln48_38 {Type I LastRead 0 FirstWrite -1}
		sext_ln48_37 {Type I LastRead 0 FirstWrite -1}
		sext_ln48_40 {Type I LastRead 0 FirstWrite -1}
		sext_ln48_39 {Type I LastRead 0 FirstWrite -1}
		sext_ln48_42 {Type I LastRead 0 FirstWrite -1}
		sext_ln48_41 {Type I LastRead 0 FirstWrite -1}
		sext_ln48_44 {Type I LastRead 0 FirstWrite -1}
		sext_ln48_43 {Type I LastRead 0 FirstWrite -1}
		sext_ln48_46 {Type I LastRead 0 FirstWrite -1}
		sext_ln48_45 {Type I LastRead 0 FirstWrite -1}
		sext_ln48_48 {Type I LastRead 0 FirstWrite -1}
		sext_ln48_47 {Type I LastRead 0 FirstWrite -1}
		sext_ln48_50 {Type I LastRead 0 FirstWrite -1}
		sext_ln48_49 {Type I LastRead 0 FirstWrite -1}
		sext_ln48_52 {Type I LastRead 0 FirstWrite -1}
		sext_ln48_51 {Type I LastRead 0 FirstWrite -1}
		sext_ln48_54 {Type I LastRead 0 FirstWrite -1}
		sext_ln48_53 {Type I LastRead 0 FirstWrite -1}
		sext_ln48_56 {Type I LastRead 0 FirstWrite -1}
		sext_ln48_55 {Type I LastRead 0 FirstWrite -1}
		sext_ln48_58 {Type I LastRead 0 FirstWrite -1}
		sext_ln48_57 {Type I LastRead 0 FirstWrite -1}
		sext_ln48_60 {Type I LastRead 0 FirstWrite -1}
		sext_ln48_59 {Type I LastRead 0 FirstWrite -1}
		sext_ln48_62 {Type I LastRead 0 FirstWrite -1}
		sext_ln48_61 {Type I LastRead 0 FirstWrite -1}
		sext_ln48_64 {Type I LastRead 0 FirstWrite -1}
		sext_ln48_63 {Type I LastRead 0 FirstWrite -1}
		sext_ln48_66 {Type I LastRead 0 FirstWrite -1}
		sext_ln48_65 {Type I LastRead 0 FirstWrite -1}
		sext_ln48_68 {Type I LastRead 0 FirstWrite -1}
		sext_ln48_67 {Type I LastRead 0 FirstWrite -1}
		sext_ln48_70 {Type I LastRead 0 FirstWrite -1}
		sext_ln48_69 {Type I LastRead 0 FirstWrite -1}
		sext_ln48_72 {Type I LastRead 0 FirstWrite -1}
		sext_ln48_71 {Type I LastRead 0 FirstWrite -1}
		sext_ln48_74 {Type I LastRead 0 FirstWrite -1}
		sext_ln48_73 {Type I LastRead 0 FirstWrite -1}
		sext_ln48_76 {Type I LastRead 0 FirstWrite -1}
		sext_ln48_75 {Type I LastRead 0 FirstWrite -1}
		sext_ln48_78 {Type I LastRead 0 FirstWrite -1}
		sext_ln48_77 {Type I LastRead 0 FirstWrite -1}
		sext_ln48_80 {Type I LastRead 0 FirstWrite -1}
		sext_ln48_79 {Type I LastRead 0 FirstWrite -1}
		sext_ln48_82 {Type I LastRead 0 FirstWrite -1}
		sext_ln48_81 {Type I LastRead 0 FirstWrite -1}
		sext_ln48_84 {Type I LastRead 0 FirstWrite -1}
		sext_ln48_83 {Type I LastRead 0 FirstWrite -1}
		sext_ln48_86 {Type I LastRead 0 FirstWrite -1}
		sext_ln48_85 {Type I LastRead 0 FirstWrite -1}
		sext_ln48_88 {Type I LastRead 0 FirstWrite -1}
		sext_ln48_87 {Type I LastRead 0 FirstWrite -1}
		sext_ln33 {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 5}
		p_out1 {Type O LastRead -1 FirstWrite 5}
		p_out2 {Type O LastRead -1 FirstWrite 5}
		p_out3 {Type O LastRead -1 FirstWrite 5}
		p_out4 {Type O LastRead -1 FirstWrite 5}
		p_out5 {Type O LastRead -1 FirstWrite 5}
		p_out6 {Type O LastRead -1 FirstWrite 5}
		p_out7 {Type O LastRead -1 FirstWrite 5}
		p_out8 {Type O LastRead -1 FirstWrite 5}
		p_out9 {Type O LastRead -1 FirstWrite 5}
		p_out10 {Type O LastRead -1 FirstWrite 5}
		p_out11 {Type O LastRead -1 FirstWrite 5}
		p_out12 {Type O LastRead -1 FirstWrite 5}
		p_out13 {Type O LastRead -1 FirstWrite 5}
		p_out14 {Type O LastRead -1 FirstWrite 5}
		p_out15 {Type O LastRead -1 FirstWrite 5}
		p_out16 {Type O LastRead -1 FirstWrite 5}
		p_out17 {Type O LastRead -1 FirstWrite 5}
		p_out18 {Type O LastRead -1 FirstWrite 5}
		p_out19 {Type O LastRead -1 FirstWrite 5}
		p_out20 {Type O LastRead -1 FirstWrite 5}
		p_out21 {Type O LastRead -1 FirstWrite 5}
		p_out22 {Type O LastRead -1 FirstWrite 5}
		p_out23 {Type O LastRead -1 FirstWrite 5}
		p_out24 {Type O LastRead -1 FirstWrite 5}
		p_out25 {Type O LastRead -1 FirstWrite 5}
		p_out26 {Type O LastRead -1 FirstWrite 5}
		p_out27 {Type O LastRead -1 FirstWrite 5}
		p_out28 {Type O LastRead -1 FirstWrite 5}
		p_out29 {Type O LastRead -1 FirstWrite 5}
		p_out30 {Type O LastRead -1 FirstWrite 5}
		p_out31 {Type O LastRead -1 FirstWrite 5}
		p_out32 {Type O LastRead -1 FirstWrite 5}
		p_out33 {Type O LastRead -1 FirstWrite 5}
		p_out34 {Type O LastRead -1 FirstWrite 5}
		p_out35 {Type O LastRead -1 FirstWrite 5}
		p_out36 {Type O LastRead -1 FirstWrite 5}
		p_out37 {Type O LastRead -1 FirstWrite 5}
		p_out38 {Type O LastRead -1 FirstWrite 5}
		p_out39 {Type O LastRead -1 FirstWrite 5}
		p_out40 {Type O LastRead -1 FirstWrite 5}
		p_out41 {Type O LastRead -1 FirstWrite 5}
		p_out42 {Type O LastRead -1 FirstWrite 5}
		p_out43 {Type O LastRead -1 FirstWrite 5}
		p_out44 {Type O LastRead -1 FirstWrite 5}
		p_out45 {Type O LastRead -1 FirstWrite 5}
		p_out46 {Type O LastRead -1 FirstWrite 5}
		p_out47 {Type O LastRead -1 FirstWrite 5}
		p_out48 {Type O LastRead -1 FirstWrite 5}
		p_out49 {Type O LastRead -1 FirstWrite 5}
		p_out50 {Type O LastRead -1 FirstWrite 5}
		p_out51 {Type O LastRead -1 FirstWrite 5}
		p_out52 {Type O LastRead -1 FirstWrite 5}
		p_out53 {Type O LastRead -1 FirstWrite 5}
		p_out54 {Type O LastRead -1 FirstWrite 5}
		p_out55 {Type O LastRead -1 FirstWrite 5}
		p_out56 {Type O LastRead -1 FirstWrite 5}
		p_out57 {Type O LastRead -1 FirstWrite 5}
		p_out58 {Type O LastRead -1 FirstWrite 5}
		p_out59 {Type O LastRead -1 FirstWrite 5}
		p_out60 {Type O LastRead -1 FirstWrite 5}
		p_out61 {Type O LastRead -1 FirstWrite 5}
		p_out62 {Type O LastRead -1 FirstWrite 5}
		p_out63 {Type O LastRead -1 FirstWrite 5}
		p_out64 {Type O LastRead -1 FirstWrite 5}
		p_out65 {Type O LastRead -1 FirstWrite 5}
		p_out66 {Type O LastRead -1 FirstWrite 5}
		p_out67 {Type O LastRead -1 FirstWrite 5}
		p_out68 {Type O LastRead -1 FirstWrite 5}
		p_out69 {Type O LastRead -1 FirstWrite 5}
		p_out70 {Type O LastRead -1 FirstWrite 5}
		p_out71 {Type O LastRead -1 FirstWrite 5}
		p_out72 {Type O LastRead -1 FirstWrite 5}
		p_out73 {Type O LastRead -1 FirstWrite 5}
		p_out74 {Type O LastRead -1 FirstWrite 5}
		p_out75 {Type O LastRead -1 FirstWrite 5}
		p_out76 {Type O LastRead -1 FirstWrite 5}
		p_out77 {Type O LastRead -1 FirstWrite 5}
		p_out78 {Type O LastRead -1 FirstWrite 5}
		p_out79 {Type O LastRead -1 FirstWrite 5}
		p_out80 {Type O LastRead -1 FirstWrite 5}
		p_out81 {Type O LastRead -1 FirstWrite 5}
		p_out82 {Type O LastRead -1 FirstWrite 5}
		p_out83 {Type O LastRead -1 FirstWrite 5}
		p_out84 {Type O LastRead -1 FirstWrite 5}
		p_out85 {Type O LastRead -1 FirstWrite 5}
		p_out86 {Type O LastRead -1 FirstWrite 5}
		p_out87 {Type O LastRead -1 FirstWrite 5}
		p_out88 {Type O LastRead -1 FirstWrite 5}
		p_out89 {Type O LastRead -1 FirstWrite 5}
		p_out90 {Type O LastRead -1 FirstWrite 5}
		p_out91 {Type O LastRead -1 FirstWrite 5}
		p_out92 {Type O LastRead -1 FirstWrite 5}
		p_out93 {Type O LastRead -1 FirstWrite 5}
		p_out94 {Type O LastRead -1 FirstWrite 5}
		p_out95 {Type O LastRead -1 FirstWrite 5}
		p_out96 {Type O LastRead -1 FirstWrite 5}
		p_out97 {Type O LastRead -1 FirstWrite 5}
		p_out98 {Type O LastRead -1 FirstWrite 5}
		p_out99 {Type O LastRead -1 FirstWrite 5}
		p_out100 {Type O LastRead -1 FirstWrite 5}
		p_out101 {Type O LastRead -1 FirstWrite 5}
		p_out102 {Type O LastRead -1 FirstWrite 5}
		p_out103 {Type O LastRead -1 FirstWrite 5}
		p_out104 {Type O LastRead -1 FirstWrite 5}
		p_out105 {Type O LastRead -1 FirstWrite 5}
		p_out106 {Type O LastRead -1 FirstWrite 5}
		p_out107 {Type O LastRead -1 FirstWrite 5}
		p_out108 {Type O LastRead -1 FirstWrite 5}
		p_out109 {Type O LastRead -1 FirstWrite 5}
		p_out110 {Type O LastRead -1 FirstWrite 5}
		p_out111 {Type O LastRead -1 FirstWrite 5}
		p_out112 {Type O LastRead -1 FirstWrite 5}
		p_out113 {Type O LastRead -1 FirstWrite 5}
		p_out114 {Type O LastRead -1 FirstWrite 5}
		p_out115 {Type O LastRead -1 FirstWrite 5}
		p_out116 {Type O LastRead -1 FirstWrite 5}
		p_out117 {Type O LastRead -1 FirstWrite 5}
		p_out118 {Type O LastRead -1 FirstWrite 5}
		p_out119 {Type O LastRead -1 FirstWrite 5}
		p_out120 {Type O LastRead -1 FirstWrite 5}
		p_out121 {Type O LastRead -1 FirstWrite 5}
		p_out122 {Type O LastRead -1 FirstWrite 5}
		p_out123 {Type O LastRead -1 FirstWrite 5}
		p_out124 {Type O LastRead -1 FirstWrite 5}
		p_out125 {Type O LastRead -1 FirstWrite 5}
		p_out126 {Type O LastRead -1 FirstWrite 5}
		p_out127 {Type O LastRead -1 FirstWrite 5}
		p_out128 {Type O LastRead -1 FirstWrite 5}
		p_out129 {Type O LastRead -1 FirstWrite 5}
		p_out130 {Type O LastRead -1 FirstWrite 5}
		p_out131 {Type O LastRead -1 FirstWrite 5}
		p_out132 {Type O LastRead -1 FirstWrite 5}
		p_out133 {Type O LastRead -1 FirstWrite 5}
		p_out134 {Type O LastRead -1 FirstWrite 5}
		p_out135 {Type O LastRead -1 FirstWrite 5}
		p_out136 {Type O LastRead -1 FirstWrite 5}
		p_out137 {Type O LastRead -1 FirstWrite 5}
		p_out138 {Type O LastRead -1 FirstWrite 5}
		p_out139 {Type O LastRead -1 FirstWrite 5}
		p_out140 {Type O LastRead -1 FirstWrite 5}
		p_out141 {Type O LastRead -1 FirstWrite 5}
		p_out142 {Type O LastRead -1 FirstWrite 5}
		p_out143 {Type O LastRead -1 FirstWrite 5}
		p_out144 {Type O LastRead -1 FirstWrite 5}
		p_out145 {Type O LastRead -1 FirstWrite 5}
		p_out146 {Type O LastRead -1 FirstWrite 5}
		p_out147 {Type O LastRead -1 FirstWrite 5}
		p_out148 {Type O LastRead -1 FirstWrite 5}
		p_out149 {Type O LastRead -1 FirstWrite 5}
		p_out150 {Type O LastRead -1 FirstWrite 5}
		p_out151 {Type O LastRead -1 FirstWrite 5}
		p_out152 {Type O LastRead -1 FirstWrite 5}
		p_out153 {Type O LastRead -1 FirstWrite 5}
		p_out154 {Type O LastRead -1 FirstWrite 5}
		p_out155 {Type O LastRead -1 FirstWrite 5}
		p_out156 {Type O LastRead -1 FirstWrite 5}
		p_out157 {Type O LastRead -1 FirstWrite 5}
		p_out158 {Type O LastRead -1 FirstWrite 5}
		p_out159 {Type O LastRead -1 FirstWrite 5}
		p_out160 {Type O LastRead -1 FirstWrite 5}
		p_out161 {Type O LastRead -1 FirstWrite 5}
		p_out162 {Type O LastRead -1 FirstWrite 5}
		p_out163 {Type O LastRead -1 FirstWrite 5}
		p_out164 {Type O LastRead -1 FirstWrite 5}
		p_out165 {Type O LastRead -1 FirstWrite 5}
		p_out166 {Type O LastRead -1 FirstWrite 5}
		p_out167 {Type O LastRead -1 FirstWrite 5}
		p_out168 {Type O LastRead -1 FirstWrite 5}
		p_out169 {Type O LastRead -1 FirstWrite 5}
		p_out170 {Type O LastRead -1 FirstWrite 5}
		p_out171 {Type O LastRead -1 FirstWrite 5}
		p_out172 {Type O LastRead -1 FirstWrite 5}
		p_out173 {Type O LastRead -1 FirstWrite 5}
		p_out174 {Type O LastRead -1 FirstWrite 5}
		p_out175 {Type O LastRead -1 FirstWrite 5}
		p_out176 {Type O LastRead -1 FirstWrite 5}
		p_out177 {Type O LastRead -1 FirstWrite 5}
		p_out178 {Type O LastRead -1 FirstWrite 5}
		p_out179 {Type O LastRead -1 FirstWrite 5}
		p_out180 {Type O LastRead -1 FirstWrite 5}
		p_out181 {Type O LastRead -1 FirstWrite 5}
		p_out182 {Type O LastRead -1 FirstWrite 5}
		p_out183 {Type O LastRead -1 FirstWrite 5}
		p_out184 {Type O LastRead -1 FirstWrite 5}
		p_out185 {Type O LastRead -1 FirstWrite 5}
		p_out186 {Type O LastRead -1 FirstWrite 5}
		p_out187 {Type O LastRead -1 FirstWrite 5}
		p_out188 {Type O LastRead -1 FirstWrite 5}
		p_out189 {Type O LastRead -1 FirstWrite 5}
		p_out190 {Type O LastRead -1 FirstWrite 5}
		p_out191 {Type O LastRead -1 FirstWrite 5}
		p_out192 {Type O LastRead -1 FirstWrite 5}
		p_out193 {Type O LastRead -1 FirstWrite 5}
		p_out194 {Type O LastRead -1 FirstWrite 5}
		p_out195 {Type O LastRead -1 FirstWrite 5}
		p_out196 {Type O LastRead -1 FirstWrite 5}
		p_out197 {Type O LastRead -1 FirstWrite 5}
		p_out198 {Type O LastRead -1 FirstWrite 5}
		p_out199 {Type O LastRead -1 FirstWrite 5}
		p_out200 {Type O LastRead -1 FirstWrite 5}
		p_out201 {Type O LastRead -1 FirstWrite 5}
		p_out202 {Type O LastRead -1 FirstWrite 5}
		p_out203 {Type O LastRead -1 FirstWrite 5}
		p_out204 {Type O LastRead -1 FirstWrite 5}
		p_out205 {Type O LastRead -1 FirstWrite 5}
		p_out206 {Type O LastRead -1 FirstWrite 5}
		p_out207 {Type O LastRead -1 FirstWrite 5}
		p_out208 {Type O LastRead -1 FirstWrite 5}
		p_out209 {Type O LastRead -1 FirstWrite 5}
		p_out210 {Type O LastRead -1 FirstWrite 5}
		p_out211 {Type O LastRead -1 FirstWrite 5}
		p_out212 {Type O LastRead -1 FirstWrite 5}
		p_out213 {Type O LastRead -1 FirstWrite 5}
		p_out214 {Type O LastRead -1 FirstWrite 5}
		p_out215 {Type O LastRead -1 FirstWrite 5}
		p_out216 {Type O LastRead -1 FirstWrite 5}
		p_out217 {Type O LastRead -1 FirstWrite 5}
		p_out218 {Type O LastRead -1 FirstWrite 5}
		p_out219 {Type O LastRead -1 FirstWrite 5}
		p_out220 {Type O LastRead -1 FirstWrite 5}
		p_out221 {Type O LastRead -1 FirstWrite 5}
		p_out222 {Type O LastRead -1 FirstWrite 5}
		p_out223 {Type O LastRead -1 FirstWrite 5}
		p_out224 {Type O LastRead -1 FirstWrite 5}
		p_out225 {Type O LastRead -1 FirstWrite 5}
		p_out226 {Type O LastRead -1 FirstWrite 5}
		p_out227 {Type O LastRead -1 FirstWrite 5}
		p_out228 {Type O LastRead -1 FirstWrite 5}
		p_out229 {Type O LastRead -1 FirstWrite 5}
		p_out230 {Type O LastRead -1 FirstWrite 5}
		p_out231 {Type O LastRead -1 FirstWrite 5}
		p_out232 {Type O LastRead -1 FirstWrite 5}
		p_out233 {Type O LastRead -1 FirstWrite 5}
		p_out234 {Type O LastRead -1 FirstWrite 5}
		p_out235 {Type O LastRead -1 FirstWrite 5}
		p_out236 {Type O LastRead -1 FirstWrite 5}
		p_out237 {Type O LastRead -1 FirstWrite 5}
		p_out238 {Type O LastRead -1 FirstWrite 5}
		p_out239 {Type O LastRead -1 FirstWrite 5}
		p_out240 {Type O LastRead -1 FirstWrite 5}
		x_208_out {Type O LastRead -1 FirstWrite 5}
		p_out241 {Type O LastRead -1 FirstWrite 5}
		p_out242 {Type O LastRead -1 FirstWrite 5}
		x_205_out {Type O LastRead -1 FirstWrite 5}
		x_204_out {Type O LastRead -1 FirstWrite 5}
		x_203_out {Type O LastRead -1 FirstWrite 5}
		x_202_out {Type O LastRead -1 FirstWrite 5}
		x_201_out {Type O LastRead -1 FirstWrite 5}
		x_200_out {Type O LastRead -1 FirstWrite 5}
		x_199_out {Type O LastRead -1 FirstWrite 5}
		x_198_out {Type O LastRead -1 FirstWrite 5}
		x_197_out {Type O LastRead -1 FirstWrite 5}
		x_196_out {Type O LastRead -1 FirstWrite 5}
		x_195_out {Type O LastRead -1 FirstWrite 5}
		x_194_out {Type O LastRead -1 FirstWrite 5}
		x_193_out {Type O LastRead -1 FirstWrite 5}
		x_192_out {Type O LastRead -1 FirstWrite 5}
		p_out243 {Type O LastRead -1 FirstWrite 5}
		p_out244 {Type O LastRead -1 FirstWrite 5}
		x_189_out {Type O LastRead -1 FirstWrite 5}
		x_188_out {Type O LastRead -1 FirstWrite 5}
		x_187_out {Type O LastRead -1 FirstWrite 5}
		x_186_out {Type O LastRead -1 FirstWrite 5}
		x_185_out {Type O LastRead -1 FirstWrite 5}
		x_184_out {Type O LastRead -1 FirstWrite 5}
		x_183_out {Type O LastRead -1 FirstWrite 5}
		x_182_out {Type O LastRead -1 FirstWrite 5}
		x_181_out {Type O LastRead -1 FirstWrite 5}
		x_180_out {Type O LastRead -1 FirstWrite 5}
		x_179_out {Type O LastRead -1 FirstWrite 5}
		x_178_out {Type O LastRead -1 FirstWrite 5}
		x_177_out {Type O LastRead -1 FirstWrite 5}
		x_176_out {Type O LastRead -1 FirstWrite 5}
		p_out245 {Type O LastRead -1 FirstWrite 5}
		p_out246 {Type O LastRead -1 FirstWrite 5}
		x_173_out {Type O LastRead -1 FirstWrite 5}
		x_172_out {Type O LastRead -1 FirstWrite 5}
		x_171_out {Type O LastRead -1 FirstWrite 5}
		x_170_out {Type O LastRead -1 FirstWrite 5}
		x_169_out {Type O LastRead -1 FirstWrite 5}
		x_168_out {Type O LastRead -1 FirstWrite 5}
		x_167_out {Type O LastRead -1 FirstWrite 5}
		x_166_out {Type O LastRead -1 FirstWrite 5}
		x_165_out {Type O LastRead -1 FirstWrite 5}
		x_164_out {Type O LastRead -1 FirstWrite 5}
		x_163_out {Type O LastRead -1 FirstWrite 5}
		x_162_out {Type O LastRead -1 FirstWrite 5}
		x_161_out {Type O LastRead -1 FirstWrite 5}
		x_160_out {Type O LastRead -1 FirstWrite 5}
		p_out247 {Type O LastRead -1 FirstWrite 5}
		p_out248 {Type O LastRead -1 FirstWrite 5}
		x_157_out {Type O LastRead -1 FirstWrite 5}
		x_156_out {Type O LastRead -1 FirstWrite 5}
		x_155_out {Type O LastRead -1 FirstWrite 5}
		x_154_out {Type O LastRead -1 FirstWrite 5}
		x_153_out {Type O LastRead -1 FirstWrite 5}
		x_152_out {Type O LastRead -1 FirstWrite 5}
		x_151_out {Type O LastRead -1 FirstWrite 5}
		x_150_out {Type O LastRead -1 FirstWrite 5}
		x_149_out {Type O LastRead -1 FirstWrite 5}
		x_148_out {Type O LastRead -1 FirstWrite 5}
		x_147_out {Type O LastRead -1 FirstWrite 5}
		x_146_out {Type O LastRead -1 FirstWrite 5}
		x_145_out {Type O LastRead -1 FirstWrite 5}
		x_144_out {Type O LastRead -1 FirstWrite 5}
		p_out249 {Type O LastRead -1 FirstWrite 5}
		p_out250 {Type O LastRead -1 FirstWrite 5}
		x_141_out {Type O LastRead -1 FirstWrite 5}
		x_140_out {Type O LastRead -1 FirstWrite 5}
		x_139_out {Type O LastRead -1 FirstWrite 5}
		x_138_out {Type O LastRead -1 FirstWrite 5}
		x_137_out {Type O LastRead -1 FirstWrite 5}
		x_136_out {Type O LastRead -1 FirstWrite 5}
		x_135_out {Type O LastRead -1 FirstWrite 5}
		x_134_out {Type O LastRead -1 FirstWrite 5}
		x_133_out {Type O LastRead -1 FirstWrite 5}
		x_132_out {Type O LastRead -1 FirstWrite 5}
		x_131_out {Type O LastRead -1 FirstWrite 5}
		x_130_out {Type O LastRead -1 FirstWrite 5}
		x_129_out {Type O LastRead -1 FirstWrite 5}
		x_128_out {Type O LastRead -1 FirstWrite 5}
		p_out251 {Type O LastRead -1 FirstWrite 5}
		p_out252 {Type O LastRead -1 FirstWrite 5}
		x_125_out {Type O LastRead -1 FirstWrite 5}
		x_124_out {Type O LastRead -1 FirstWrite 5}
		x_123_out {Type O LastRead -1 FirstWrite 5}
		x_122_out {Type O LastRead -1 FirstWrite 5}
		x_121_out {Type O LastRead -1 FirstWrite 5}
		x_120_out {Type O LastRead -1 FirstWrite 5}
		x_119_out {Type O LastRead -1 FirstWrite 5}
		x_118_out {Type O LastRead -1 FirstWrite 5}
		x_117_out {Type O LastRead -1 FirstWrite 5}
		x_116_out {Type O LastRead -1 FirstWrite 5}
		x_115_out {Type O LastRead -1 FirstWrite 5}
		x_114_out {Type O LastRead -1 FirstWrite 5}
		x_113_out {Type O LastRead -1 FirstWrite 5}
		x_112_out {Type O LastRead -1 FirstWrite 5}
		x_111_out {Type O LastRead -1 FirstWrite 5}
		p_out253 {Type O LastRead -1 FirstWrite 5}
		p_out254 {Type O LastRead -1 FirstWrite 5}
		p_out255 {Type O LastRead -1 FirstWrite 5}
		x_107_out {Type O LastRead -1 FirstWrite 5}
		x_106_out {Type O LastRead -1 FirstWrite 5}
		x_105_out {Type O LastRead -1 FirstWrite 5}
		x_104_out {Type O LastRead -1 FirstWrite 5}
		x_103_out {Type O LastRead -1 FirstWrite 5}
		x_102_out {Type O LastRead -1 FirstWrite 5}
		x_101_out {Type O LastRead -1 FirstWrite 5}
		x_100_out {Type O LastRead -1 FirstWrite 5}
		x_99_out {Type O LastRead -1 FirstWrite 5}
		x_98_out {Type O LastRead -1 FirstWrite 5}
		x_97_out {Type O LastRead -1 FirstWrite 5}
		x_96_out {Type O LastRead -1 FirstWrite 5}
		x_95_out {Type O LastRead -1 FirstWrite 5}
		x_94_out {Type O LastRead -1 FirstWrite 5}
		x_93_out {Type O LastRead -1 FirstWrite 5}
		x_92_out {Type O LastRead -1 FirstWrite 5}
		x_91_out {Type O LastRead -1 FirstWrite 5}
		x_90_out {Type O LastRead -1 FirstWrite 5}
		conv1_bias {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv1_weight_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv1_weight_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv1_weight_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv1_weight_3 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv1_weight_4 {Type I LastRead -1 FirstWrite -1}}
	relu_i8 {
		value_r {Type I LastRead 0 FirstWrite -1}}
	relu_i8 {
		value_r {Type I LastRead 0 FirstWrite -1}}
	relu_i8 {
		value_r {Type I LastRead 0 FirstWrite -1}}
	relu_i8 {
		value_r {Type I LastRead 0 FirstWrite -1}}
	relu_i8 {
		value_r {Type I LastRead 0 FirstWrite -1}}
	relu_i8 {
		value_r {Type I LastRead 0 FirstWrite -1}}
	relu_i8 {
		value_r {Type I LastRead 0 FirstWrite -1}}
	relu_i8 {
		value_r {Type I LastRead 0 FirstWrite -1}}
	relu_i8 {
		value_r {Type I LastRead 0 FirstWrite -1}}
	relu_i8 {
		value_r {Type I LastRead 0 FirstWrite -1}}
	relu_i8 {
		value_r {Type I LastRead 0 FirstWrite -1}}
	relu_i8 {
		value_r {Type I LastRead 0 FirstWrite -1}}
	relu_i8 {
		value_r {Type I LastRead 0 FirstWrite -1}}
	relu_i8 {
		value_r {Type I LastRead 0 FirstWrite -1}}
	relu_i8 {
		value_r {Type I LastRead 0 FirstWrite -1}}
	relu_i8 {
		value_r {Type I LastRead 0 FirstWrite -1}}
	relu_i8 {
		value_r {Type I LastRead 0 FirstWrite -1}}
	relu_i8 {
		value_r {Type I LastRead 0 FirstWrite -1}}
	relu_i8 {
		value_r {Type I LastRead 0 FirstWrite -1}}
	relu_i8 {
		value_r {Type I LastRead 0 FirstWrite -1}}
	relu_i8 {
		value_r {Type I LastRead 0 FirstWrite -1}}
	relu_i8 {
		value_r {Type I LastRead 0 FirstWrite -1}}
	tiny_ecg_inference_Pipeline_VITIS_LOOP_59_4 {
		sext_ln76_16 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_15 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_14 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_13 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_12 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_11 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_10 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_9 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_8 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_7 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_6 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_5 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_4 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_3 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_2 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_1 {Type I LastRead 0 FirstWrite -1}
		sext_ln76 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_23 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_22 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_21 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_20 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_19 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_18 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_17 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_29 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_28 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_27 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_26 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_25 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_24 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_39 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_38 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_37 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_36 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_35 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_34 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_33 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_32 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_31 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_30 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_45 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_44 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_43 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_42 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_41 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_40 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_55 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_54 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_53 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_52 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_51 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_50 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_49 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_48 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_47 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_46 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_61 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_60 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_59 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_58 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_57 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_56 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_71 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_70 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_69 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_68 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_67 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_66 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_65 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_64 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_63 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_62 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_77 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_76 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_75 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_74 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_73 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_72 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_87 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_86 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_85 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_84 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_83 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_82 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_81 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_80 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_79 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_78 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_93 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_92 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_91 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_90 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_89 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_88 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_103 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_102 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_101 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_100 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_99 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_98 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_97 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_96 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_95 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_94 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_109 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_108 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_107 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_106 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_105 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_104 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_119 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_118 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_117 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_116 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_115 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_114 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_113 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_112 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_111 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_110 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_125 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_124 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_123 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_122 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_121 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_120 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_135 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_134 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_133 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_132 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_131 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_130 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_129 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_128 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_127 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_126 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_141 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_140 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_139 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_138 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_137 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_136 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_151 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_150 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_149 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_148 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_147 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_146 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_145 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_144 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_143 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_142 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_157 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_156 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_155 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_154 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_153 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_152 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_167 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_166 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_165 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_164 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_163 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_162 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_161 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_160 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_159 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_158 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_173 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_172 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_171 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_170 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_169 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_168 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_183 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_182 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_181 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_180 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_179 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_178 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_177 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_176 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_175 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_174 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_189 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_188 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_187 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_186 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_185 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_184 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_199 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_198 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_197 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_196 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_195 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_194 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_193 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_192 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_191 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_190 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_205 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_204 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_203 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_202 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_201 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_200 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_215 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_214 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_213 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_212 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_211 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_210 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_209 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_208 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_207 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_206 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_221 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_220 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_219 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_218 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_217 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_216 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_231 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_230 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_229 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_228 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_227 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_226 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_225 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_224 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_223 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_222 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_237 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_236 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_235 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_234 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_233 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_232 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_247 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_246 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_245 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_244 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_243 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_242 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_241 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_240 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_239 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_238 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_253 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_252 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_251 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_250 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_249 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_248 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_263 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_262 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_261 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_260 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_259 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_258 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_257 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_256 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_255 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_254 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_269 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_268 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_267 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_266 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_265 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_264 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_279 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_278 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_277 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_276 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_275 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_274 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_273 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_272 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_271 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_270 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_285 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_284 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_283 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_282 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_281 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_280 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_295 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_294 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_293 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_292 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_291 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_290 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_289 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_288 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_287 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_286 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_301 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_300 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_299 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_298 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_297 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_296 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_311 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_310 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_309 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_308 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_307 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_306 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_305 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_304 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_303 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_302 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_317 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_316 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_315 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_314 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_313 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_312 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_327 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_326 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_325 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_324 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_323 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_322 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_321 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_320 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_319 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_318 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_333 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_332 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_331 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_330 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_329 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_328 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_343 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_342 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_341 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_340 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_339 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_338 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_337 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_336 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_335 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_334 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_349 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_348 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_347 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_346 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_345 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_344 {Type I LastRead 0 FirstWrite -1}
		sext_ln59 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_358 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_357 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_356 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_355 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_354 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_353 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_352 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_351 {Type I LastRead 0 FirstWrite -1}
		sext_ln76_350 {Type I LastRead 0 FirstWrite -1}
		buffer_c2_367_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_366_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_365_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_364_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_363_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_362_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_361_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_360_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_359_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_358_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_357_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_356_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_355_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_354_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_353_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_352_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_351_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_350_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_349_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_348_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_347_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_346_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_345_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_344_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_343_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_342_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_341_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_340_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_339_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_338_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_337_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_336_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_335_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_334_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_333_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_332_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_331_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_330_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_329_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_328_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_327_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_326_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_325_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_324_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_323_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_322_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_321_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_320_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_319_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_318_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_317_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_316_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_315_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_314_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_313_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_312_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_311_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_310_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_309_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_308_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_307_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_306_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_305_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_304_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_303_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_302_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_301_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_300_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_299_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_298_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_297_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_296_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_295_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_294_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_293_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_292_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_291_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_290_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_289_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_288_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_287_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_286_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_285_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_284_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_283_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_282_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_281_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_280_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_279_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_278_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_277_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_276_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_275_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_274_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_273_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_272_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_271_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_270_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_269_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_268_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_267_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_266_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_265_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_264_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_263_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_262_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_261_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_260_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_259_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_258_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_257_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_256_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_255_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_254_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_253_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_252_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_251_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_250_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_249_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_248_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_247_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_246_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_245_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_244_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_243_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_242_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_241_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_240_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_239_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_238_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_237_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_236_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_235_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_234_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_233_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_232_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_231_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_230_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_229_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_228_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_227_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_226_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_225_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_224_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_223_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_222_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_221_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_220_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_219_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_218_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_217_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_216_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_215_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_214_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_213_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_212_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_211_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_210_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_209_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_208_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_207_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_206_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_205_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_204_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_203_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_202_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_201_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_200_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_199_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_198_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_197_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_196_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_195_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_194_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_193_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_192_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_191_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_190_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_189_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_188_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_187_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_186_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_185_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_184_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_183_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_182_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_181_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_180_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_179_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_178_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_177_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_176_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_175_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_174_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_173_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_172_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_171_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_170_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_169_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_168_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_167_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_166_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_165_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_164_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_163_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_162_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_161_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_160_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_159_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_158_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_157_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_156_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_155_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_154_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_153_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_152_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_151_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_150_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_149_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_148_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_147_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_146_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_145_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_144_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_143_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_142_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_141_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_140_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_139_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_138_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_137_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_136_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_135_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_134_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_133_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_132_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_131_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_130_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_129_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_128_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_127_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_126_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_125_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_124_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_123_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_122_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_121_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_120_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_119_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_118_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_117_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_116_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_115_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_114_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_113_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_112_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_111_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_110_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_109_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_108_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_107_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_106_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_105_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_104_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_103_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_102_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_101_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_100_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_99_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_98_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_97_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_96_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_95_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_94_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_93_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_92_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_91_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_90_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_89_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_88_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_87_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_86_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_85_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_84_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_83_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_82_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_81_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_80_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_79_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_78_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_77_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_76_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_75_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_74_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_73_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_72_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_71_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_70_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_69_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_68_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_67_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_66_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_65_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_64_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_63_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_62_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_61_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_60_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_59_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_58_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_57_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_56_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_55_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_54_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_53_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_52_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_51_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_50_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_49_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_48_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_47_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_46_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_45_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_44_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_43_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_42_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_41_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_40_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_39_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_38_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_37_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_36_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_35_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_34_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_33_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_32_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_31_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_30_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_29_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_28_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_27_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_26_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_25_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_24_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_23_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_22_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_21_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_20_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_19_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_18_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_17_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_16_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_15_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_14_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_13_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_12_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_11_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_10_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_9_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_8_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_7_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_6_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_5_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_4_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_3_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_2_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_1_out {Type O LastRead -1 FirstWrite 5}
		buffer_c2_out {Type O LastRead -1 FirstWrite 5}
		conv2_bias {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_3 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_4 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_5 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_6 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_7 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_8 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_9 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_10 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_11 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_12 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_13 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_14 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_15 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_16 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_17 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_18 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_19 {Type I LastRead -1 FirstWrite -1}}
	tiny_ecg_inference_Pipeline_VITIS_LOOP_88_8 {
		buffer_c3_11 {Type O LastRead -1 FirstWrite 7}
		buffer_c3_10 {Type O LastRead -1 FirstWrite 7}
		buffer_c3_9 {Type O LastRead -1 FirstWrite 7}
		buffer_c3_8 {Type O LastRead -1 FirstWrite 7}
		buffer_c3_7 {Type O LastRead -1 FirstWrite 7}
		buffer_c3_6 {Type O LastRead -1 FirstWrite 7}
		buffer_c3_5 {Type O LastRead -1 FirstWrite 7}
		buffer_c3_4 {Type O LastRead -1 FirstWrite 7}
		buffer_c3_3 {Type O LastRead -1 FirstWrite 7}
		buffer_c3_2 {Type O LastRead -1 FirstWrite 7}
		buffer_c3_1 {Type O LastRead -1 FirstWrite 7}
		buffer_c3 {Type O LastRead -1 FirstWrite 7}
		sext_ln105 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_31 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_30 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_29 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_28 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_27 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_26 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_25 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_24 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_23 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_22 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_21 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_20 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_19 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_18 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_17 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_16 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_15 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_14 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_13 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_12 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_11 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_10 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_9 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_8 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_7 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_6 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_5 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_4 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_3 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_2 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_1 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_53 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_52 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_51 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_50 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_49 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_48 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_47 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_46 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_45 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_44 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_43 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_42 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_41 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_40 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_39 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_38 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_37 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_36 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_35 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_34 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_33 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_32 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_63 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_62 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_61 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_60 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_59 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_58 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_57 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_56 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_55 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_54 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_85 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_84 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_83 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_82 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_81 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_80 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_79 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_78 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_77 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_76 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_75 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_74 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_73 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_72 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_71 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_70 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_69 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_68 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_67 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_66 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_65 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_64 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_95 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_94 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_93 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_92 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_91 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_90 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_89 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_88 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_87 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_86 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_117 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_116 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_115 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_114 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_113 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_112 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_111 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_110 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_109 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_108 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_107 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_106 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_105 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_104 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_103 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_102 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_101 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_100 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_99 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_98 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_97 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_96 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_127 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_126 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_125 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_124 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_123 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_122 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_121 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_120 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_119 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_118 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_149 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_148 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_147 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_146 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_145 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_144 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_143 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_142 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_141 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_140 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_139 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_138 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_137 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_136 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_135 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_134 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_133 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_132 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_131 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_130 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_129 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_128 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_159 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_158 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_157 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_156 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_155 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_154 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_153 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_152 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_151 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_150 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_181 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_180 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_179 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_178 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_177 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_176 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_175 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_174 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_173 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_172 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_171 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_170 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_169 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_168 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_167 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_166 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_165 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_164 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_163 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_162 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_161 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_160 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_191 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_190 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_189 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_188 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_187 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_186 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_185 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_184 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_183 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_182 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_213 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_212 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_211 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_210 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_209 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_208 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_207 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_206 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_205 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_204 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_203 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_202 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_201 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_200 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_199 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_198 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_197 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_196 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_195 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_194 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_193 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_192 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_223 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_222 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_221 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_220 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_219 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_218 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_217 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_216 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_215 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_214 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_245 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_244 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_243 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_242 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_241 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_240 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_239 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_238 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_237 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_236 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_235 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_234 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_233 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_232 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_231 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_230 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_229 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_228 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_227 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_226 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_225 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_224 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_255 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_254 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_253 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_252 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_251 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_250 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_249 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_248 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_247 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_246 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_277 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_276 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_275 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_274 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_273 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_272 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_271 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_270 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_269 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_268 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_267 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_266 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_265 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_264 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_263 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_262 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_261 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_260 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_259 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_258 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_257 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_256 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_287 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_286 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_285 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_284 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_283 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_282 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_281 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_280 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_279 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_278 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_309 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_308 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_307 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_306 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_305 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_304 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_303 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_302 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_301 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_300 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_299 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_298 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_297 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_296 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_295 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_294 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_293 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_292 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_291 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_290 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_289 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_288 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_319 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_318 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_317 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_316 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_315 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_314 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_313 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_312 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_311 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_310 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_341 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_340 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_339 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_338 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_337 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_336 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_335 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_334 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_333 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_332 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_331 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_330 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_329 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_328 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_327 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_326 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_325 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_324 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_323 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_322 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_321 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_320 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_351 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_350 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_349 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_348 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_347 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_346 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_345 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_344 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_343 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_342 {Type I LastRead 0 FirstWrite -1}
		sext_ln88 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_366 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_365 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_364 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_363 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_362 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_361 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_360 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_359 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_358 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_357 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_356 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_355 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_354 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_353 {Type I LastRead 0 FirstWrite -1}
		sext_ln105_352 {Type I LastRead 0 FirstWrite -1}
		conv3_bias {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_3 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_4 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_5 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_6 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_7 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_8 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_9 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_10 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_11 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_12 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_13 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_14 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_15 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_16 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_17 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_18 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_19 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_20 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_21 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_22 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_23 {Type I LastRead -1 FirstWrite -1}}
	tiny_ecg_inference_Pipeline_VITIS_LOOP_116_12_VITIS_LOOP_117_13 {
		buffer_c3 {Type I LastRead 1 FirstWrite -1}
		buffer_c3_1 {Type I LastRead 1 FirstWrite -1}
		buffer_c3_2 {Type I LastRead 1 FirstWrite -1}
		buffer_c3_3 {Type I LastRead 1 FirstWrite -1}
		buffer_c3_4 {Type I LastRead 1 FirstWrite -1}
		buffer_c3_5 {Type I LastRead 1 FirstWrite -1}
		buffer_c3_6 {Type I LastRead 1 FirstWrite -1}
		buffer_c3_7 {Type I LastRead 1 FirstWrite -1}
		buffer_c3_8 {Type I LastRead 1 FirstWrite -1}
		buffer_c3_9 {Type I LastRead 1 FirstWrite -1}
		buffer_c3_10 {Type I LastRead 1 FirstWrite -1}
		buffer_c3_11 {Type I LastRead 1 FirstWrite -1}
		flatten {Type O LastRead -1 FirstWrite 3}}
	tiny_ecg_inference_Pipeline_VITIS_LOOP_126_14 {
		DATA_OUT {Type O LastRead -1 FirstWrite 9}
		output_logits {Type I LastRead 0 FirstWrite -1}
		zext_ln132_126 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_125 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_124 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_123 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_122 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_121 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_120 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_119 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_118 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_117 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_116 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_115 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_114 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_113 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_112 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_111 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_110 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_109 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_108 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_107 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_106 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_105 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_104 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_103 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_102 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_101 {Type I LastRead 0 FirstWrite -1}
		flatten_load_101 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_100 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_99 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_98 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_97 {Type I LastRead 0 FirstWrite -1}
		flatten_load_97 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_96 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_95 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_94 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_93 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_92 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_91 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_90 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_89 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_88 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_87 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_86 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_85 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_84 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_83 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_82 {Type I LastRead 0 FirstWrite -1}
		flatten_load_82 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_81 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_80 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_79 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_78 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_77 {Type I LastRead 0 FirstWrite -1}
		flatten_load_77 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_76 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_75 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_74 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_73 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_72 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_71 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_70 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_69 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_68 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_67 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_66 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_65 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_63 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_62 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_61 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_60 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_59 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_58 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_57 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_56 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_55 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_54 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_53 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_52 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_51 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_50 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_49 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_48 {Type I LastRead 0 FirstWrite -1}
		flatten_load_47 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_47 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_46 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_45 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_44 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_43 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_42 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_41 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_40 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_39 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_38 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_37 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_36 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_35 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_34 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_33 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_32 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_31 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_30 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_29 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_28 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_27 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_26 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_25 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_24 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_23 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_22 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_21 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_20 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_19 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_18 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_17 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_16 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_15 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_14 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_13 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_12 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_11 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_10 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_9 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_8 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_7 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_6 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_5 {Type I LastRead 0 FirstWrite -1}
		flatten_load_5 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_4 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_3 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_2 {Type I LastRead 0 FirstWrite -1}
		flatten_load_1 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_1 {Type I LastRead 0 FirstWrite -1}
		zext_ln132 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_190 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_189 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_188 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_187 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_186 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_185 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_184 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_183 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_182 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_181 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_180 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_179 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_178 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_177 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_176 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_175 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_174 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_173 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_172 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_171 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_170 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_169 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_168 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_167 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_166 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_165 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_164 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_163 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_162 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_161 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_160 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_159 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_158 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_157 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_156 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_155 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_154 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_153 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_152 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_151 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_150 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_149 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_148 {Type I LastRead 0 FirstWrite -1}
		flatten_load_147 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_147 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_146 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_145 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_144 {Type I LastRead 0 FirstWrite -1}
		flatten_load_143 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_143 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_142 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_141 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_140 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_139 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_138 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_137 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_136 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_135 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_134 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_133 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_132 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_131 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_130 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_129 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_128 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_127 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_191 {Type I LastRead 0 FirstWrite -1}
		zext_ln132_64 {Type I LastRead 0 FirstWrite -1}
		zext_ln126 {Type I LastRead 0 FirstWrite -1}}
	relu_i8 {
		value_r {Type I LastRead 0 FirstWrite -1}}
	relu_i8 {
		value_r {Type I LastRead 0 FirstWrite -1}}
	relu_i8 {
		value_r {Type I LastRead 0 FirstWrite -1}}
	relu_i8 {
		value_r {Type I LastRead 0 FirstWrite -1}}
	relu_i8 {
		value_r {Type I LastRead 0 FirstWrite -1}}
	relu_i8 {
		value_r {Type I LastRead 0 FirstWrite -1}}
	relu_i8 {
		value_r {Type I LastRead 0 FirstWrite -1}}
	relu_i8 {
		value_r {Type I LastRead 0 FirstWrite -1}}
	relu_i8 {
		value_r {Type I LastRead 0 FirstWrite -1}}
	relu_i8 {
		value_r {Type I LastRead 0 FirstWrite -1}}
	relu_i8 {
		value_r {Type I LastRead 0 FirstWrite -1}}
	relu_i8 {
		value_r {Type I LastRead 0 FirstWrite -1}}
	relu_i8 {
		value_r {Type I LastRead 0 FirstWrite -1}}
	relu_i8 {
		value_r {Type I LastRead 0 FirstWrite -1}}
	relu_i8 {
		value_r {Type I LastRead 0 FirstWrite -1}}
	relu_i8 {
		value_r {Type I LastRead 0 FirstWrite -1}}
	relu_i8 {
		value_r {Type I LastRead 0 FirstWrite -1}}
	relu_i8 {
		value_r {Type I LastRead 0 FirstWrite -1}}
	relu_i8 {
		value_r {Type I LastRead 0 FirstWrite -1}}
	relu_i8 {
		value_r {Type I LastRead 0 FirstWrite -1}}
	relu_i8 {
		value_r {Type I LastRead 0 FirstWrite -1}}
	relu_i8 {
		value_r {Type I LastRead 0 FirstWrite -1}}
	relu_i8 {
		value_r {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "478", "Max" : "478"}
	, {"Name" : "Interval", "Min" : "479", "Max" : "479"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	DATA_IN { m_axi {  { m_axi_DATA_IN_AWVALID VALID 1 1 }  { m_axi_DATA_IN_AWREADY READY 0 1 }  { m_axi_DATA_IN_AWADDR ADDR 1 64 }  { m_axi_DATA_IN_AWID ID 1 1 }  { m_axi_DATA_IN_AWLEN SIZE 1 8 }  { m_axi_DATA_IN_AWSIZE BURST 1 3 }  { m_axi_DATA_IN_AWBURST LOCK 1 2 }  { m_axi_DATA_IN_AWLOCK CACHE 1 2 }  { m_axi_DATA_IN_AWCACHE PROT 1 4 }  { m_axi_DATA_IN_AWPROT QOS 1 3 }  { m_axi_DATA_IN_AWQOS REGION 1 4 }  { m_axi_DATA_IN_AWREGION USER 1 4 }  { m_axi_DATA_IN_AWUSER DATA 1 1 }  { m_axi_DATA_IN_WVALID VALID 1 1 }  { m_axi_DATA_IN_WREADY READY 0 1 }  { m_axi_DATA_IN_WDATA FIFONUM 1 32 }  { m_axi_DATA_IN_WSTRB STRB 1 4 }  { m_axi_DATA_IN_WLAST LAST 1 1 }  { m_axi_DATA_IN_WID ID 1 1 }  { m_axi_DATA_IN_WUSER DATA 1 1 }  { m_axi_DATA_IN_ARVALID VALID 1 1 }  { m_axi_DATA_IN_ARREADY READY 0 1 }  { m_axi_DATA_IN_ARADDR ADDR 1 64 }  { m_axi_DATA_IN_ARID ID 1 1 }  { m_axi_DATA_IN_ARLEN SIZE 1 8 }  { m_axi_DATA_IN_ARSIZE BURST 1 3 }  { m_axi_DATA_IN_ARBURST LOCK 1 2 }  { m_axi_DATA_IN_ARLOCK CACHE 1 2 }  { m_axi_DATA_IN_ARCACHE PROT 1 4 }  { m_axi_DATA_IN_ARPROT QOS 1 3 }  { m_axi_DATA_IN_ARQOS REGION 1 4 }  { m_axi_DATA_IN_ARREGION USER 1 4 }  { m_axi_DATA_IN_ARUSER DATA 1 1 }  { m_axi_DATA_IN_RVALID VALID 0 1 }  { m_axi_DATA_IN_RREADY READY 1 1 }  { m_axi_DATA_IN_RDATA FIFONUM 0 32 }  { m_axi_DATA_IN_RLAST LAST 0 1 }  { m_axi_DATA_IN_RID ID 0 1 }  { m_axi_DATA_IN_RUSER DATA 0 1 }  { m_axi_DATA_IN_RRESP RESP 0 2 }  { m_axi_DATA_IN_BVALID VALID 0 1 }  { m_axi_DATA_IN_BREADY READY 1 1 }  { m_axi_DATA_IN_BRESP RESP 0 2 }  { m_axi_DATA_IN_BID ID 0 1 }  { m_axi_DATA_IN_BUSER DATA 0 1 } } }
	DATA_OUT { m_axi {  { m_axi_DATA_OUT_AWVALID VALID 1 1 }  { m_axi_DATA_OUT_AWREADY READY 0 1 }  { m_axi_DATA_OUT_AWADDR ADDR 1 64 }  { m_axi_DATA_OUT_AWID ID 1 1 }  { m_axi_DATA_OUT_AWLEN SIZE 1 8 }  { m_axi_DATA_OUT_AWSIZE BURST 1 3 }  { m_axi_DATA_OUT_AWBURST LOCK 1 2 }  { m_axi_DATA_OUT_AWLOCK CACHE 1 2 }  { m_axi_DATA_OUT_AWCACHE PROT 1 4 }  { m_axi_DATA_OUT_AWPROT QOS 1 3 }  { m_axi_DATA_OUT_AWQOS REGION 1 4 }  { m_axi_DATA_OUT_AWREGION USER 1 4 }  { m_axi_DATA_OUT_AWUSER DATA 1 1 }  { m_axi_DATA_OUT_WVALID VALID 1 1 }  { m_axi_DATA_OUT_WREADY READY 0 1 }  { m_axi_DATA_OUT_WDATA FIFONUM 1 32 }  { m_axi_DATA_OUT_WSTRB STRB 1 4 }  { m_axi_DATA_OUT_WLAST LAST 1 1 }  { m_axi_DATA_OUT_WID ID 1 1 }  { m_axi_DATA_OUT_WUSER DATA 1 1 }  { m_axi_DATA_OUT_ARVALID VALID 1 1 }  { m_axi_DATA_OUT_ARREADY READY 0 1 }  { m_axi_DATA_OUT_ARADDR ADDR 1 64 }  { m_axi_DATA_OUT_ARID ID 1 1 }  { m_axi_DATA_OUT_ARLEN SIZE 1 8 }  { m_axi_DATA_OUT_ARSIZE BURST 1 3 }  { m_axi_DATA_OUT_ARBURST LOCK 1 2 }  { m_axi_DATA_OUT_ARLOCK CACHE 1 2 }  { m_axi_DATA_OUT_ARCACHE PROT 1 4 }  { m_axi_DATA_OUT_ARPROT QOS 1 3 }  { m_axi_DATA_OUT_ARQOS REGION 1 4 }  { m_axi_DATA_OUT_ARREGION USER 1 4 }  { m_axi_DATA_OUT_ARUSER DATA 1 1 }  { m_axi_DATA_OUT_RVALID VALID 0 1 }  { m_axi_DATA_OUT_RREADY READY 1 1 }  { m_axi_DATA_OUT_RDATA FIFONUM 0 32 }  { m_axi_DATA_OUT_RLAST LAST 0 1 }  { m_axi_DATA_OUT_RID ID 0 1 }  { m_axi_DATA_OUT_RUSER DATA 0 1 }  { m_axi_DATA_OUT_RRESP RESP 0 2 }  { m_axi_DATA_OUT_BVALID VALID 0 1 }  { m_axi_DATA_OUT_BREADY READY 1 1 }  { m_axi_DATA_OUT_BRESP RESP 0 2 }  { m_axi_DATA_OUT_BID ID 0 1 }  { m_axi_DATA_OUT_BUSER DATA 0 1 } } }
}

set maxi_interface_dict [dict create]
dict set maxi_interface_dict DATA_IN { CHANNEL_NUM 0 BUNDLE DATA_IN NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict DATA_OUT { CHANNEL_NUM 0 BUNDLE DATA_OUT NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE WRITE_ONLY}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ DATA_IN 1 }
	{ DATA_OUT 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ DATA_IN 1 }
	{ DATA_OUT 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
