set moduleName getVal
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {getVal}
set C_modelType { int 8 }
set C_modelArgList {
	{ index int 23 regular  }
	{ xDiff int 2 regular  }
	{ yDiff int 2 regular  }
	{ Y int 8 regular {axi_master 0}  }
	{ Y_offset int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "index", "interface" : "wire", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "xDiff", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "yDiff", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "Y", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "Y_offset", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 8} ]}
# RTL Port declarations: 
set portNum 56
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ index sc_in sc_lv 23 signal 0 } 
	{ xDiff sc_in sc_lv 2 signal 1 } 
	{ yDiff sc_in sc_lv 2 signal 2 } 
	{ m_axi_Y_AWVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_Y_AWREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_Y_AWADDR sc_out sc_lv 32 signal 3 } 
	{ m_axi_Y_AWID sc_out sc_lv 1 signal 3 } 
	{ m_axi_Y_AWLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_Y_AWSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_Y_AWBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_Y_AWLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_Y_AWCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_Y_AWPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_Y_AWQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_Y_AWREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_Y_AWUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_Y_WVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_Y_WREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_Y_WDATA sc_out sc_lv 8 signal 3 } 
	{ m_axi_Y_WSTRB sc_out sc_lv 1 signal 3 } 
	{ m_axi_Y_WLAST sc_out sc_logic 1 signal 3 } 
	{ m_axi_Y_WID sc_out sc_lv 1 signal 3 } 
	{ m_axi_Y_WUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_Y_ARVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_Y_ARREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_Y_ARADDR sc_out sc_lv 32 signal 3 } 
	{ m_axi_Y_ARID sc_out sc_lv 1 signal 3 } 
	{ m_axi_Y_ARLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_Y_ARSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_Y_ARBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_Y_ARLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_Y_ARCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_Y_ARPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_Y_ARQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_Y_ARREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_Y_ARUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_Y_RVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_Y_RREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_Y_RDATA sc_in sc_lv 8 signal 3 } 
	{ m_axi_Y_RLAST sc_in sc_logic 1 signal 3 } 
	{ m_axi_Y_RID sc_in sc_lv 1 signal 3 } 
	{ m_axi_Y_RUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_Y_RRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_Y_BVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_Y_BREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_Y_BRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_Y_BID sc_in sc_lv 1 signal 3 } 
	{ m_axi_Y_BUSER sc_in sc_lv 1 signal 3 } 
	{ Y_offset sc_in sc_lv 32 signal 4 } 
	{ ap_return sc_out sc_lv 8 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "index", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "index", "role": "default" }} , 
 	{ "name": "xDiff", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "xDiff", "role": "default" }} , 
 	{ "name": "yDiff", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "yDiff", "role": "default" }} , 
 	{ "name": "m_axi_Y_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Y", "role": "AWVALID" }} , 
 	{ "name": "m_axi_Y_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Y", "role": "AWREADY" }} , 
 	{ "name": "m_axi_Y_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Y", "role": "AWADDR" }} , 
 	{ "name": "m_axi_Y_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Y", "role": "AWID" }} , 
 	{ "name": "m_axi_Y_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Y", "role": "AWLEN" }} , 
 	{ "name": "m_axi_Y_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "Y", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_Y_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "Y", "role": "AWBURST" }} , 
 	{ "name": "m_axi_Y_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "Y", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_Y_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "Y", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_Y_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "Y", "role": "AWPROT" }} , 
 	{ "name": "m_axi_Y_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "Y", "role": "AWQOS" }} , 
 	{ "name": "m_axi_Y_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "Y", "role": "AWREGION" }} , 
 	{ "name": "m_axi_Y_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Y", "role": "AWUSER" }} , 
 	{ "name": "m_axi_Y_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Y", "role": "WVALID" }} , 
 	{ "name": "m_axi_Y_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Y", "role": "WREADY" }} , 
 	{ "name": "m_axi_Y_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Y", "role": "WDATA" }} , 
 	{ "name": "m_axi_Y_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Y", "role": "WSTRB" }} , 
 	{ "name": "m_axi_Y_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Y", "role": "WLAST" }} , 
 	{ "name": "m_axi_Y_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Y", "role": "WID" }} , 
 	{ "name": "m_axi_Y_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Y", "role": "WUSER" }} , 
 	{ "name": "m_axi_Y_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Y", "role": "ARVALID" }} , 
 	{ "name": "m_axi_Y_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Y", "role": "ARREADY" }} , 
 	{ "name": "m_axi_Y_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Y", "role": "ARADDR" }} , 
 	{ "name": "m_axi_Y_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Y", "role": "ARID" }} , 
 	{ "name": "m_axi_Y_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Y", "role": "ARLEN" }} , 
 	{ "name": "m_axi_Y_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "Y", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_Y_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "Y", "role": "ARBURST" }} , 
 	{ "name": "m_axi_Y_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "Y", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_Y_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "Y", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_Y_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "Y", "role": "ARPROT" }} , 
 	{ "name": "m_axi_Y_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "Y", "role": "ARQOS" }} , 
 	{ "name": "m_axi_Y_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "Y", "role": "ARREGION" }} , 
 	{ "name": "m_axi_Y_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Y", "role": "ARUSER" }} , 
 	{ "name": "m_axi_Y_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Y", "role": "RVALID" }} , 
 	{ "name": "m_axi_Y_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Y", "role": "RREADY" }} , 
 	{ "name": "m_axi_Y_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Y", "role": "RDATA" }} , 
 	{ "name": "m_axi_Y_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Y", "role": "RLAST" }} , 
 	{ "name": "m_axi_Y_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Y", "role": "RID" }} , 
 	{ "name": "m_axi_Y_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Y", "role": "RUSER" }} , 
 	{ "name": "m_axi_Y_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "Y", "role": "RRESP" }} , 
 	{ "name": "m_axi_Y_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Y", "role": "BVALID" }} , 
 	{ "name": "m_axi_Y_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Y", "role": "BREADY" }} , 
 	{ "name": "m_axi_Y_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "Y", "role": "BRESP" }} , 
 	{ "name": "m_axi_Y_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Y", "role": "BID" }} , 
 	{ "name": "m_axi_Y_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Y", "role": "BUSER" }} , 
 	{ "name": "Y_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Y_offset", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "getVal",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "8", "EstimateLatencyMax" : "8",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"InDataflowNetwork" : "0",
		"Port" : [
			{"Name" : "index", "Type" : "None", "Direction" : "I"},
			{"Name" : "xDiff", "Type" : "None", "Direction" : "I"},
			{"Name" : "yDiff", "Type" : "None", "Direction" : "I"},
			{"Name" : "Y", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "Y_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "Y_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "Y_offset", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	getVal {
		index {Type I LastRead 0 FirstWrite -1}
		xDiff {Type I LastRead 0 FirstWrite -1}
		yDiff {Type I LastRead 0 FirstWrite -1}
		Y {Type I LastRead 8 FirstWrite -1}
		Y_offset {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "8", "Max" : "8"}
	, {"Name" : "Interval", "Min" : "8", "Max" : "8"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	index { ap_none {  { index in_data 0 23 } } }
	xDiff { ap_none {  { xDiff in_data 0 2 } } }
	yDiff { ap_none {  { yDiff in_data 0 2 } } }
	Y { m_axi {  { m_axi_Y_AWVALID VALID 1 1 }  { m_axi_Y_AWREADY READY 0 1 }  { m_axi_Y_AWADDR ADDR 1 32 }  { m_axi_Y_AWID ID 1 1 }  { m_axi_Y_AWLEN LEN 1 32 }  { m_axi_Y_AWSIZE SIZE 1 3 }  { m_axi_Y_AWBURST BURST 1 2 }  { m_axi_Y_AWLOCK LOCK 1 2 }  { m_axi_Y_AWCACHE CACHE 1 4 }  { m_axi_Y_AWPROT PROT 1 3 }  { m_axi_Y_AWQOS QOS 1 4 }  { m_axi_Y_AWREGION REGION 1 4 }  { m_axi_Y_AWUSER USER 1 1 }  { m_axi_Y_WVALID VALID 1 1 }  { m_axi_Y_WREADY READY 0 1 }  { m_axi_Y_WDATA DATA 1 8 }  { m_axi_Y_WSTRB STRB 1 1 }  { m_axi_Y_WLAST LAST 1 1 }  { m_axi_Y_WID ID 1 1 }  { m_axi_Y_WUSER USER 1 1 }  { m_axi_Y_ARVALID VALID 1 1 }  { m_axi_Y_ARREADY READY 0 1 }  { m_axi_Y_ARADDR ADDR 1 32 }  { m_axi_Y_ARID ID 1 1 }  { m_axi_Y_ARLEN LEN 1 32 }  { m_axi_Y_ARSIZE SIZE 1 3 }  { m_axi_Y_ARBURST BURST 1 2 }  { m_axi_Y_ARLOCK LOCK 1 2 }  { m_axi_Y_ARCACHE CACHE 1 4 }  { m_axi_Y_ARPROT PROT 1 3 }  { m_axi_Y_ARQOS QOS 1 4 }  { m_axi_Y_ARREGION REGION 1 4 }  { m_axi_Y_ARUSER USER 1 1 }  { m_axi_Y_RVALID VALID 0 1 }  { m_axi_Y_RREADY READY 1 1 }  { m_axi_Y_RDATA DATA 0 8 }  { m_axi_Y_RLAST LAST 0 1 }  { m_axi_Y_RID ID 0 1 }  { m_axi_Y_RUSER USER 0 1 }  { m_axi_Y_RRESP RESP 0 2 }  { m_axi_Y_BVALID VALID 0 1 }  { m_axi_Y_BREADY READY 1 1 }  { m_axi_Y_BRESP RESP 0 2 }  { m_axi_Y_BID ID 0 1 }  { m_axi_Y_BUSER USER 0 1 } } }
	Y_offset { ap_none {  { Y_offset in_data 0 32 } } }
}
