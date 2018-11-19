// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Fri Nov 16 12:19:39 2018
// Host        : L3712-22 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_v_cresample_0_0_stub.v
// Design      : design_1_v_cresample_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "CrappyButFreeChromaResampler,Vivado 2018.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(ap_clk, ap_rst_n, video_in_TVALID, 
  video_in_TREADY, video_in_TDATA, video_in_TLAST, video_in_TKEEP, video_in_TSTRB, 
  video_in_TUSER, video_out_TVALID, video_out_TREADY, video_out_TDATA, video_out_TLAST, 
  video_out_TKEEP, video_out_TSTRB, video_out_TUSER)
/* synthesis syn_black_box black_box_pad_pin="ap_clk,ap_rst_n,video_in_TVALID,video_in_TREADY,video_in_TDATA[23:0],video_in_TLAST[0:0],video_in_TKEEP[2:0],video_in_TSTRB[2:0],video_in_TUSER[0:0],video_out_TVALID,video_out_TREADY,video_out_TDATA[15:0],video_out_TLAST[0:0],video_out_TKEEP[1:0],video_out_TSTRB[1:0],video_out_TUSER[0:0]" */;
  input ap_clk;
  input ap_rst_n;
  input video_in_TVALID;
  output video_in_TREADY;
  input [23:0]video_in_TDATA;
  input [0:0]video_in_TLAST;
  input [2:0]video_in_TKEEP;
  input [2:0]video_in_TSTRB;
  input [0:0]video_in_TUSER;
  output video_out_TVALID;
  input video_out_TREADY;
  output [15:0]video_out_TDATA;
  output [0:0]video_out_TLAST;
  output [1:0]video_out_TKEEP;
  output [1:0]video_out_TSTRB;
  output [0:0]video_out_TUSER;
endmodule
