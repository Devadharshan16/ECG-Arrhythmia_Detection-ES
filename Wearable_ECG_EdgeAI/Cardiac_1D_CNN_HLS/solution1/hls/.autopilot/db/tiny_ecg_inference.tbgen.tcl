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
set cdfgNum 11
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
		DATA_IN {Type I LastRead 1 FirstWrite -1}
		DATA_OUT {Type O LastRead 119 FirstWrite 2}
		input_ecg {Type I LastRead 0 FirstWrite -1}
		output_logits {Type I LastRead 0 FirstWrite -1}
		conv1_bias {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv1_weight_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv1_weight_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv1_weight_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv1_weight_3 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv1_weight_4 {Type I LastRead -1 FirstWrite -1}
		conv1_multiplier {Type I LastRead -1 FirstWrite -1}
		conv1_shift {Type I LastRead -1 FirstWrite -1}
		conv2_bias {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_5 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_10 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_15 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_6 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_11 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_16 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_7 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_12 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_17 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_3 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_8 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_13 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_18 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_4 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_9 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_14 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_19 {Type I LastRead -1 FirstWrite -1}
		conv2_multiplier {Type I LastRead -1 FirstWrite -1}
		conv2_shift {Type I LastRead -1 FirstWrite -1}
		conv3_bias {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_3 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_6 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_9 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_12 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_15 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_18 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_21 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_4 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_7 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_10 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_13 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_16 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_19 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_22 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_5 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_8 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_11 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_14 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_17 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_20 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_23 {Type I LastRead -1 FirstWrite -1}
		conv3_multiplier {Type I LastRead -1 FirstWrite -1}
		conv3_shift {Type I LastRead -1 FirstWrite -1}}
	tiny_ecg_inference_Pipeline_VITIS_LOOP_55_1 {
		DATA_IN {Type I LastRead 1 FirstWrite -1}
		input_ecg {Type I LastRead 0 FirstWrite -1}
		local_ecg_4 {Type O LastRead -1 FirstWrite 2}
		local_ecg_3 {Type O LastRead -1 FirstWrite 2}
		local_ecg_2 {Type O LastRead -1 FirstWrite 2}
		local_ecg_1 {Type O LastRead -1 FirstWrite 2}
		local_ecg {Type O LastRead -1 FirstWrite 2}}
	tiny_ecg_inference_Pipeline_6 {
		local_out {Type O LastRead -1 FirstWrite 0}}
	tiny_ecg_inference_Pipeline_VITIS_LOOP_77_2_VITIS_LOOP_78_3 {
		local_ecg {Type I LastRead 12 FirstWrite -1}
		local_ecg_1 {Type I LastRead 12 FirstWrite -1}
		local_ecg_2 {Type I LastRead 12 FirstWrite -1}
		local_ecg_3 {Type I LastRead 12 FirstWrite -1}
		local_ecg_4 {Type I LastRead 12 FirstWrite -1}
		buffer_c1 {Type O LastRead -1 FirstWrite 22}
		buffer_c1_1 {Type O LastRead -1 FirstWrite 22}
		buffer_c1_2 {Type O LastRead -1 FirstWrite 22}
		buffer_c1_3 {Type O LastRead -1 FirstWrite 22}
		buffer_c1_4 {Type O LastRead -1 FirstWrite 22}
		buffer_c1_5 {Type O LastRead -1 FirstWrite 22}
		buffer_c1_6 {Type O LastRead -1 FirstWrite 22}
		buffer_c1_7 {Type O LastRead -1 FirstWrite 22}
		buffer_c1_8 {Type O LastRead -1 FirstWrite 22}
		buffer_c1_9 {Type O LastRead -1 FirstWrite 22}
		buffer_c1_10 {Type O LastRead -1 FirstWrite 22}
		buffer_c1_11 {Type O LastRead -1 FirstWrite 22}
		buffer_c1_12 {Type O LastRead -1 FirstWrite 22}
		buffer_c1_13 {Type O LastRead -1 FirstWrite 22}
		buffer_c1_14 {Type O LastRead -1 FirstWrite 22}
		buffer_c1_15 {Type O LastRead -1 FirstWrite 22}
		buffer_c1_16 {Type O LastRead -1 FirstWrite 22}
		buffer_c1_17 {Type O LastRead -1 FirstWrite 22}
		buffer_c1_18 {Type O LastRead -1 FirstWrite 22}
		buffer_c1_19 {Type O LastRead -1 FirstWrite 22}
		buffer_c1_20 {Type O LastRead -1 FirstWrite 22}
		buffer_c1_21 {Type O LastRead -1 FirstWrite 22}
		buffer_c1_22 {Type O LastRead -1 FirstWrite 22}
		buffer_c1_23 {Type O LastRead -1 FirstWrite 22}
		buffer_c1_24 {Type O LastRead -1 FirstWrite 22}
		buffer_c1_25 {Type O LastRead -1 FirstWrite 22}
		buffer_c1_26 {Type O LastRead -1 FirstWrite 22}
		buffer_c1_27 {Type O LastRead -1 FirstWrite 22}
		buffer_c1_28 {Type O LastRead -1 FirstWrite 22}
		buffer_c1_29 {Type O LastRead -1 FirstWrite 22}
		buffer_c1_30 {Type O LastRead -1 FirstWrite 22}
		buffer_c1_31 {Type O LastRead -1 FirstWrite 22}
		buffer_c1_32 {Type O LastRead -1 FirstWrite 22}
		buffer_c1_33 {Type O LastRead -1 FirstWrite 22}
		buffer_c1_34 {Type O LastRead -1 FirstWrite 22}
		buffer_c1_35 {Type O LastRead -1 FirstWrite 22}
		buffer_c1_36 {Type O LastRead -1 FirstWrite 22}
		buffer_c1_37 {Type O LastRead -1 FirstWrite 22}
		buffer_c1_38 {Type O LastRead -1 FirstWrite 22}
		buffer_c1_39 {Type O LastRead -1 FirstWrite 22}
		conv1_bias {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv1_weight_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv1_weight_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv1_weight_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv1_weight_3 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv1_weight_4 {Type I LastRead -1 FirstWrite -1}
		conv1_multiplier {Type I LastRead -1 FirstWrite -1}
		conv1_shift {Type I LastRead -1 FirstWrite -1}}
	tiny_ecg_inference_Pipeline_VITIS_LOOP_103_5_VITIS_LOOP_104_6 {
		buffer_c1 {Type I LastRead 10 FirstWrite -1}
		buffer_c1_1 {Type I LastRead 10 FirstWrite -1}
		buffer_c1_2 {Type I LastRead 10 FirstWrite -1}
		buffer_c1_3 {Type I LastRead 10 FirstWrite -1}
		buffer_c1_4 {Type I LastRead 10 FirstWrite -1}
		buffer_c1_5 {Type I LastRead 10 FirstWrite -1}
		buffer_c1_6 {Type I LastRead 10 FirstWrite -1}
		buffer_c1_7 {Type I LastRead 10 FirstWrite -1}
		buffer_c1_8 {Type I LastRead 10 FirstWrite -1}
		buffer_c1_9 {Type I LastRead 10 FirstWrite -1}
		buffer_c1_10 {Type I LastRead 10 FirstWrite -1}
		buffer_c1_11 {Type I LastRead 10 FirstWrite -1}
		buffer_c1_12 {Type I LastRead 10 FirstWrite -1}
		buffer_c1_13 {Type I LastRead 10 FirstWrite -1}
		buffer_c1_14 {Type I LastRead 10 FirstWrite -1}
		buffer_c1_15 {Type I LastRead 10 FirstWrite -1}
		buffer_c1_16 {Type I LastRead 10 FirstWrite -1}
		buffer_c1_17 {Type I LastRead 10 FirstWrite -1}
		buffer_c1_18 {Type I LastRead 10 FirstWrite -1}
		buffer_c1_19 {Type I LastRead 10 FirstWrite -1}
		buffer_c1_20 {Type I LastRead 10 FirstWrite -1}
		buffer_c1_21 {Type I LastRead 10 FirstWrite -1}
		buffer_c1_22 {Type I LastRead 10 FirstWrite -1}
		buffer_c1_23 {Type I LastRead 10 FirstWrite -1}
		buffer_c1_24 {Type I LastRead 10 FirstWrite -1}
		buffer_c1_25 {Type I LastRead 10 FirstWrite -1}
		buffer_c1_26 {Type I LastRead 10 FirstWrite -1}
		buffer_c1_27 {Type I LastRead 10 FirstWrite -1}
		buffer_c1_28 {Type I LastRead 10 FirstWrite -1}
		buffer_c1_29 {Type I LastRead 10 FirstWrite -1}
		buffer_c1_30 {Type I LastRead 10 FirstWrite -1}
		buffer_c1_31 {Type I LastRead 10 FirstWrite -1}
		buffer_c1_32 {Type I LastRead 10 FirstWrite -1}
		buffer_c1_33 {Type I LastRead 10 FirstWrite -1}
		buffer_c1_34 {Type I LastRead 10 FirstWrite -1}
		buffer_c1_35 {Type I LastRead 10 FirstWrite -1}
		buffer_c1_36 {Type I LastRead 10 FirstWrite -1}
		buffer_c1_37 {Type I LastRead 10 FirstWrite -1}
		buffer_c1_38 {Type I LastRead 10 FirstWrite -1}
		buffer_c1_39 {Type I LastRead 10 FirstWrite -1}
		buffer_c2 {Type O LastRead -1 FirstWrite 20}
		buffer_c2_1 {Type O LastRead -1 FirstWrite 20}
		buffer_c2_2 {Type O LastRead -1 FirstWrite 20}
		buffer_c2_3 {Type O LastRead -1 FirstWrite 20}
		buffer_c2_4 {Type O LastRead -1 FirstWrite 20}
		buffer_c2_5 {Type O LastRead -1 FirstWrite 20}
		buffer_c2_6 {Type O LastRead -1 FirstWrite 20}
		buffer_c2_7 {Type O LastRead -1 FirstWrite 20}
		buffer_c2_8 {Type O LastRead -1 FirstWrite 20}
		buffer_c2_9 {Type O LastRead -1 FirstWrite 20}
		buffer_c2_10 {Type O LastRead -1 FirstWrite 20}
		buffer_c2_11 {Type O LastRead -1 FirstWrite 20}
		buffer_c2_12 {Type O LastRead -1 FirstWrite 20}
		buffer_c2_13 {Type O LastRead -1 FirstWrite 20}
		buffer_c2_14 {Type O LastRead -1 FirstWrite 20}
		buffer_c2_15 {Type O LastRead -1 FirstWrite 20}
		buffer_c2_16 {Type O LastRead -1 FirstWrite 20}
		buffer_c2_17 {Type O LastRead -1 FirstWrite 20}
		buffer_c2_18 {Type O LastRead -1 FirstWrite 20}
		buffer_c2_19 {Type O LastRead -1 FirstWrite 20}
		buffer_c2_20 {Type O LastRead -1 FirstWrite 20}
		buffer_c2_21 {Type O LastRead -1 FirstWrite 20}
		buffer_c2_22 {Type O LastRead -1 FirstWrite 20}
		buffer_c2_23 {Type O LastRead -1 FirstWrite 20}
		buffer_c2_24 {Type O LastRead -1 FirstWrite 20}
		buffer_c2_25 {Type O LastRead -1 FirstWrite 20}
		buffer_c2_26 {Type O LastRead -1 FirstWrite 20}
		buffer_c2_27 {Type O LastRead -1 FirstWrite 20}
		buffer_c2_28 {Type O LastRead -1 FirstWrite 20}
		buffer_c2_29 {Type O LastRead -1 FirstWrite 20}
		buffer_c2_30 {Type O LastRead -1 FirstWrite 20}
		buffer_c2_31 {Type O LastRead -1 FirstWrite 20}
		buffer_c2_32 {Type O LastRead -1 FirstWrite 20}
		buffer_c2_33 {Type O LastRead -1 FirstWrite 20}
		buffer_c2_34 {Type O LastRead -1 FirstWrite 20}
		buffer_c2_35 {Type O LastRead -1 FirstWrite 20}
		buffer_c2_36 {Type O LastRead -1 FirstWrite 20}
		buffer_c2_37 {Type O LastRead -1 FirstWrite 20}
		buffer_c2_38 {Type O LastRead -1 FirstWrite 20}
		buffer_c2_39 {Type O LastRead -1 FirstWrite 20}
		buffer_c2_40 {Type O LastRead -1 FirstWrite 20}
		buffer_c2_41 {Type O LastRead -1 FirstWrite 20}
		buffer_c2_42 {Type O LastRead -1 FirstWrite 20}
		buffer_c2_43 {Type O LastRead -1 FirstWrite 20}
		buffer_c2_44 {Type O LastRead -1 FirstWrite 20}
		buffer_c2_45 {Type O LastRead -1 FirstWrite 20}
		buffer_c2_46 {Type O LastRead -1 FirstWrite 20}
		buffer_c2_47 {Type O LastRead -1 FirstWrite 20}
		conv2_bias {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_5 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_10 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_15 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_6 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_11 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_16 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_7 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_12 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_17 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_3 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_8 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_13 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_18 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_4 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_9 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_14 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_19 {Type I LastRead -1 FirstWrite -1}
		conv2_multiplier {Type I LastRead -1 FirstWrite -1}
		conv2_shift {Type I LastRead -1 FirstWrite -1}}
	tiny_ecg_inference_Pipeline_VITIS_LOOP_130_9_VITIS_LOOP_131_10 {
		buffer_c2 {Type I LastRead 9 FirstWrite -1}
		buffer_c2_1 {Type I LastRead 9 FirstWrite -1}
		buffer_c2_2 {Type I LastRead 9 FirstWrite -1}
		buffer_c2_3 {Type I LastRead 9 FirstWrite -1}
		buffer_c2_4 {Type I LastRead 9 FirstWrite -1}
		buffer_c2_5 {Type I LastRead 9 FirstWrite -1}
		buffer_c2_6 {Type I LastRead 9 FirstWrite -1}
		buffer_c2_7 {Type I LastRead 9 FirstWrite -1}
		buffer_c2_8 {Type I LastRead 9 FirstWrite -1}
		buffer_c2_9 {Type I LastRead 9 FirstWrite -1}
		buffer_c2_10 {Type I LastRead 9 FirstWrite -1}
		buffer_c2_11 {Type I LastRead 9 FirstWrite -1}
		buffer_c2_12 {Type I LastRead 9 FirstWrite -1}
		buffer_c2_13 {Type I LastRead 9 FirstWrite -1}
		buffer_c2_14 {Type I LastRead 9 FirstWrite -1}
		buffer_c2_15 {Type I LastRead 9 FirstWrite -1}
		buffer_c2_16 {Type I LastRead 9 FirstWrite -1}
		buffer_c2_17 {Type I LastRead 9 FirstWrite -1}
		buffer_c2_18 {Type I LastRead 9 FirstWrite -1}
		buffer_c2_19 {Type I LastRead 9 FirstWrite -1}
		buffer_c2_20 {Type I LastRead 9 FirstWrite -1}
		buffer_c2_21 {Type I LastRead 9 FirstWrite -1}
		buffer_c2_22 {Type I LastRead 9 FirstWrite -1}
		buffer_c2_23 {Type I LastRead 9 FirstWrite -1}
		buffer_c2_24 {Type I LastRead 9 FirstWrite -1}
		buffer_c2_25 {Type I LastRead 9 FirstWrite -1}
		buffer_c2_26 {Type I LastRead 9 FirstWrite -1}
		buffer_c2_27 {Type I LastRead 9 FirstWrite -1}
		buffer_c2_28 {Type I LastRead 9 FirstWrite -1}
		buffer_c2_29 {Type I LastRead 9 FirstWrite -1}
		buffer_c2_30 {Type I LastRead 9 FirstWrite -1}
		buffer_c2_31 {Type I LastRead 9 FirstWrite -1}
		buffer_c2_32 {Type I LastRead 9 FirstWrite -1}
		buffer_c2_33 {Type I LastRead 9 FirstWrite -1}
		buffer_c2_34 {Type I LastRead 9 FirstWrite -1}
		buffer_c2_35 {Type I LastRead 9 FirstWrite -1}
		buffer_c2_36 {Type I LastRead 9 FirstWrite -1}
		buffer_c2_37 {Type I LastRead 9 FirstWrite -1}
		buffer_c2_38 {Type I LastRead 9 FirstWrite -1}
		buffer_c2_39 {Type I LastRead 9 FirstWrite -1}
		buffer_c2_40 {Type I LastRead 9 FirstWrite -1}
		buffer_c2_41 {Type I LastRead 9 FirstWrite -1}
		buffer_c2_42 {Type I LastRead 9 FirstWrite -1}
		buffer_c2_43 {Type I LastRead 9 FirstWrite -1}
		buffer_c2_44 {Type I LastRead 9 FirstWrite -1}
		buffer_c2_45 {Type I LastRead 9 FirstWrite -1}
		buffer_c2_46 {Type I LastRead 9 FirstWrite -1}
		buffer_c2_47 {Type I LastRead 9 FirstWrite -1}
		buffer_c3 {Type O LastRead -1 FirstWrite 19}
		buffer_c3_1 {Type O LastRead -1 FirstWrite 19}
		buffer_c3_2 {Type O LastRead -1 FirstWrite 19}
		buffer_c3_3 {Type O LastRead -1 FirstWrite 19}
		buffer_c3_4 {Type O LastRead -1 FirstWrite 19}
		buffer_c3_5 {Type O LastRead -1 FirstWrite 19}
		buffer_c3_6 {Type O LastRead -1 FirstWrite 19}
		buffer_c3_7 {Type O LastRead -1 FirstWrite 19}
		buffer_c3_8 {Type O LastRead -1 FirstWrite 19}
		buffer_c3_9 {Type O LastRead -1 FirstWrite 19}
		buffer_c3_10 {Type O LastRead -1 FirstWrite 19}
		buffer_c3_11 {Type O LastRead -1 FirstWrite 19}
		buffer_c3_12 {Type O LastRead -1 FirstWrite 19}
		buffer_c3_13 {Type O LastRead -1 FirstWrite 19}
		buffer_c3_14 {Type O LastRead -1 FirstWrite 19}
		buffer_c3_15 {Type O LastRead -1 FirstWrite 19}
		conv3_bias {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_3 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_6 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_9 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_12 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_15 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_18 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_21 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_4 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_7 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_10 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_13 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_16 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_19 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_22 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_5 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_8 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_11 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_14 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_17 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_20 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv3_weight_23 {Type I LastRead -1 FirstWrite -1}
		conv3_multiplier {Type I LastRead -1 FirstWrite -1}
		conv3_shift {Type I LastRead -1 FirstWrite -1}}
	tiny_ecg_inference_Pipeline_VITIS_LOOP_156_13_VITIS_LOOP_157_14 {
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
		buffer_c3_12 {Type I LastRead 1 FirstWrite -1}
		buffer_c3_13 {Type I LastRead 1 FirstWrite -1}
		buffer_c3_14 {Type I LastRead 1 FirstWrite -1}
		buffer_c3_15 {Type I LastRead 1 FirstWrite -1}
		flatten {Type O LastRead -1 FirstWrite 3}}
	tiny_ecg_inference_Pipeline_VITIS_LOOP_167_15 {
		zext_ln173_128 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_127 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_126 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_125 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_124 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_123 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_122 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_121 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_120 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_119 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_118 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_117 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_116 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_115 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_114 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_113 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_112 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_111 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_110 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_109 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_108 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_107 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_106 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_105 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_104 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_103 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_102 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_101 {Type I LastRead 0 FirstWrite -1}
		x_483 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_100 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_99 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_98 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_97 {Type I LastRead 0 FirstWrite -1}
		x_479 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_96 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_95 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_94 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_93 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_92 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_91 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_90 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_89 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_88 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_87 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_86 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_85 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_84 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_83 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_82 {Type I LastRead 0 FirstWrite -1}
		x_464 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_81 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_80 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_79 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_78 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_77 {Type I LastRead 0 FirstWrite -1}
		x_459 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_76 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_75 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_74 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_73 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_72 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_71 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_70 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_69 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_68 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_67 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_66 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_65 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_63 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_62 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_61 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_60 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_59 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_58 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_57 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_56 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_55 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_54 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_53 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_52 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_51 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_50 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_49 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_48 {Type I LastRead 0 FirstWrite -1}
		x_429 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_47 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_46 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_45 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_44 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_43 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_42 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_41 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_40 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_39 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_38 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_37 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_36 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_35 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_34 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_33 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_32 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_31 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_30 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_29 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_28 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_27 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_26 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_25 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_24 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_23 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_22 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_21 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_20 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_19 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_18 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_17 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_16 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_15 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_14 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_13 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_12 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_11 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_10 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_9 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_8 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_7 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_6 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_5 {Type I LastRead 0 FirstWrite -1}
		x_387 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_4 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_3 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_2 {Type I LastRead 0 FirstWrite -1}
		x_383 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_1 {Type I LastRead 0 FirstWrite -1}
		zext_ln173 {Type I LastRead 0 FirstWrite -1}
		zext_ln167 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_190 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_189 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_188 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_187 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_186 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_185 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_184 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_183 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_182 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_181 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_180 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_179 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_178 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_177 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_176 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_175 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_174 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_173 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_172 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_171 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_170 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_169 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_168 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_167 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_166 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_165 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_164 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_163 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_162 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_161 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_160 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_159 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_158 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_157 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_156 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_155 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_154 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_153 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_152 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_151 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_150 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_149 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_148 {Type I LastRead 0 FirstWrite -1}
		x_529 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_147 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_146 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_145 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_144 {Type I LastRead 0 FirstWrite -1}
		x_525 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_143 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_142 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_141 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_140 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_139 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_138 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_137 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_136 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_135 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_134 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_133 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_132 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_131 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_130 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_129 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_191 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_64 {Type I LastRead 0 FirstWrite -1}
		local_out {Type O LastRead -1 FirstWrite 12}}
	tiny_ecg_inference_Pipeline_VITIS_LOOP_181_17 {
		DATA_OUT {Type O LastRead -1 FirstWrite 2}
		output_logits {Type I LastRead 0 FirstWrite -1}
		local_out {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1428", "Max" : "1428"}
	, {"Name" : "Interval", "Min" : "1429", "Max" : "1429"}
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
