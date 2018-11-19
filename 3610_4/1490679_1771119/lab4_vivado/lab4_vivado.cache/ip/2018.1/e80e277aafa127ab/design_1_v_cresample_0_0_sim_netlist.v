// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Fri Nov 16 12:19:39 2018
// Host        : L3712-22 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_v_cresample_0_0_sim_netlist.v
// Design      : design_1_v_cresample_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ap_ST_fsm_pp0_stage0 = "4'b0100" *) (* ap_ST_fsm_state1 = "4'b0001" *) (* ap_ST_fsm_state2 = "4'b0010" *) 
(* ap_ST_fsm_state6 = "4'b1000" *) (* hls_module = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_CrappyButFreeChromaResampler
   (ap_clk,
    ap_rst_n,
    video_in_TDATA,
    video_in_TVALID,
    video_in_TREADY,
    video_in_TKEEP,
    video_in_TSTRB,
    video_in_TUSER,
    video_in_TLAST,
    video_out_TDATA,
    video_out_TVALID,
    video_out_TREADY,
    video_out_TKEEP,
    video_out_TSTRB,
    video_out_TUSER,
    video_out_TLAST);
  input ap_clk;
  input ap_rst_n;
  input [23:0]video_in_TDATA;
  input video_in_TVALID;
  output video_in_TREADY;
  input [2:0]video_in_TKEEP;
  input [2:0]video_in_TSTRB;
  input [0:0]video_in_TUSER;
  input [0:0]video_in_TLAST;
  output [15:0]video_out_TDATA;
  output video_out_TVALID;
  input video_out_TREADY;
  output [1:0]video_out_TKEEP;
  output [1:0]video_out_TSTRB;
  output [0:0]video_out_TUSER;
  output [0:0]video_out_TLAST;

  wire \ap_CS_fsm[2]_i_4_n_2 ;
  wire \ap_CS_fsm[2]_i_5_n_2 ;
  wire \ap_CS_fsm[2]_i_6_n_2 ;
  wire \ap_CS_fsm[2]_i_7_n_2 ;
  wire \ap_CS_fsm[2]_i_8_n_2 ;
  wire \ap_CS_fsm[2]_i_9_n_2 ;
  wire ap_CS_fsm_pp0_stage0;
  wire ap_CS_fsm_state1;
  wire ap_CS_fsm_state2;
  wire [2:1]ap_NS_fsm;
  wire ap_block_pp0_stage0_flag00011011;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter0_i_1_n_2;
  wire ap_enable_reg_pp0_iter1_i_1_n_2;
  wire ap_enable_reg_pp0_iter1_reg_n_2;
  wire ap_enable_reg_pp0_iter2_i_1_n_2;
  wire ap_enable_reg_pp0_iter2_reg_n_2;
  wire ap_reg_pp0_iter1_exitcond_reg_237;
  wire \ap_reg_pp0_iter1_exitcond_reg_237[0]_i_1_n_2 ;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire exitcond_fu_133_p2;
  wire \exitcond_reg_237[0]_i_1_n_2 ;
  wire \exitcond_reg_237_reg_n_2_[0] ;
  wire i_reg_117;
  wire i_reg_1170;
  wire \i_reg_117[0]_i_4_n_2 ;
  wire [0:0]i_reg_117_reg;
  wire \i_reg_117_reg[0]_i_3_n_2 ;
  wire \i_reg_117_reg[0]_i_3_n_3 ;
  wire \i_reg_117_reg[0]_i_3_n_4 ;
  wire \i_reg_117_reg[0]_i_3_n_5 ;
  wire \i_reg_117_reg[0]_i_3_n_6 ;
  wire \i_reg_117_reg[0]_i_3_n_7 ;
  wire \i_reg_117_reg[0]_i_3_n_8 ;
  wire \i_reg_117_reg[0]_i_3_n_9 ;
  wire \i_reg_117_reg[12]_i_1_n_2 ;
  wire \i_reg_117_reg[12]_i_1_n_3 ;
  wire \i_reg_117_reg[12]_i_1_n_4 ;
  wire \i_reg_117_reg[12]_i_1_n_5 ;
  wire \i_reg_117_reg[12]_i_1_n_6 ;
  wire \i_reg_117_reg[12]_i_1_n_7 ;
  wire \i_reg_117_reg[12]_i_1_n_8 ;
  wire \i_reg_117_reg[12]_i_1_n_9 ;
  wire \i_reg_117_reg[16]_i_1_n_2 ;
  wire \i_reg_117_reg[16]_i_1_n_3 ;
  wire \i_reg_117_reg[16]_i_1_n_4 ;
  wire \i_reg_117_reg[16]_i_1_n_5 ;
  wire \i_reg_117_reg[16]_i_1_n_6 ;
  wire \i_reg_117_reg[16]_i_1_n_7 ;
  wire \i_reg_117_reg[16]_i_1_n_8 ;
  wire \i_reg_117_reg[16]_i_1_n_9 ;
  wire \i_reg_117_reg[20]_i_1_n_9 ;
  wire \i_reg_117_reg[4]_i_1_n_2 ;
  wire \i_reg_117_reg[4]_i_1_n_3 ;
  wire \i_reg_117_reg[4]_i_1_n_4 ;
  wire \i_reg_117_reg[4]_i_1_n_5 ;
  wire \i_reg_117_reg[4]_i_1_n_6 ;
  wire \i_reg_117_reg[4]_i_1_n_7 ;
  wire \i_reg_117_reg[4]_i_1_n_8 ;
  wire \i_reg_117_reg[4]_i_1_n_9 ;
  wire \i_reg_117_reg[8]_i_1_n_2 ;
  wire \i_reg_117_reg[8]_i_1_n_3 ;
  wire \i_reg_117_reg[8]_i_1_n_4 ;
  wire \i_reg_117_reg[8]_i_1_n_5 ;
  wire \i_reg_117_reg[8]_i_1_n_6 ;
  wire \i_reg_117_reg[8]_i_1_n_7 ;
  wire \i_reg_117_reg[8]_i_1_n_8 ;
  wire \i_reg_117_reg[8]_i_1_n_9 ;
  wire [20:1]i_reg_117_reg__0;
  wire [7:0]leftover_V_fu_80;
  wire \leftover_V_fu_80[7]_i_1_n_2 ;
  wire p_150_in;
  wire [7:0]p_1_in;
  wire [15:8]pixOut_3_fu_207_p3;
  wire tmp_reg_246;
  wire \tmp_reg_246[0]_i_1_n_2 ;
  wire [23:0]video_in_TDATA;
  wire [2:0]video_in_TKEEP;
  wire [0:0]video_in_TLAST;
  wire video_in_TREADY;
  wire [2:0]video_in_TSTRB;
  wire [0:0]video_in_TUSER;
  wire video_in_TVALID;
  wire video_in_V_data_V_0_ack_in;
  wire video_in_V_data_V_0_load_A;
  wire video_in_V_data_V_0_load_B;
  wire [23:0]video_in_V_data_V_0_payload_A;
  wire [23:0]video_in_V_data_V_0_payload_B;
  wire video_in_V_data_V_0_sel;
  wire video_in_V_data_V_0_sel_rd_i_1_n_2;
  wire video_in_V_data_V_0_sel_wr;
  wire video_in_V_data_V_0_sel_wr_i_1_n_2;
  wire [1:1]video_in_V_data_V_0_state;
  wire \video_in_V_data_V_0_state[0]_i_1_n_2 ;
  wire \video_in_V_data_V_0_state_reg_n_2_[0] ;
  wire video_in_V_keep_V_0_ack_in;
  wire [1:0]video_in_V_keep_V_0_payload_A;
  wire \video_in_V_keep_V_0_payload_A[0]_i_1_n_2 ;
  wire \video_in_V_keep_V_0_payload_A[1]_i_1_n_2 ;
  wire [1:0]video_in_V_keep_V_0_payload_B;
  wire \video_in_V_keep_V_0_payload_B[0]_i_1_n_2 ;
  wire \video_in_V_keep_V_0_payload_B[1]_i_1_n_2 ;
  wire video_in_V_keep_V_0_sel;
  wire video_in_V_keep_V_0_sel_rd_i_1_n_2;
  wire video_in_V_keep_V_0_sel_wr;
  wire video_in_V_keep_V_0_sel_wr_i_1_n_2;
  wire [1:1]video_in_V_keep_V_0_state;
  wire \video_in_V_keep_V_0_state[0]_i_1_n_2 ;
  wire \video_in_V_keep_V_0_state_reg_n_2_[0] ;
  wire video_in_V_last_V_0_payload_A;
  wire \video_in_V_last_V_0_payload_A[0]_i_1_n_2 ;
  wire video_in_V_last_V_0_payload_B;
  wire \video_in_V_last_V_0_payload_B[0]_i_1_n_2 ;
  wire video_in_V_last_V_0_sel;
  wire video_in_V_last_V_0_sel_rd_i_1_n_2;
  wire video_in_V_last_V_0_sel_wr;
  wire video_in_V_last_V_0_sel_wr_i_1_n_2;
  wire [1:1]video_in_V_last_V_0_state;
  wire \video_in_V_last_V_0_state[0]_i_1_n_2 ;
  wire \video_in_V_last_V_0_state_reg_n_2_[0] ;
  wire video_in_V_strb_V_0_ack_in;
  wire [1:0]video_in_V_strb_V_0_payload_A;
  wire \video_in_V_strb_V_0_payload_A[0]_i_1_n_2 ;
  wire \video_in_V_strb_V_0_payload_A[1]_i_1_n_2 ;
  wire [1:0]video_in_V_strb_V_0_payload_B;
  wire \video_in_V_strb_V_0_payload_B[0]_i_1_n_2 ;
  wire \video_in_V_strb_V_0_payload_B[1]_i_1_n_2 ;
  wire video_in_V_strb_V_0_sel;
  wire video_in_V_strb_V_0_sel_rd_i_1_n_2;
  wire video_in_V_strb_V_0_sel_wr;
  wire video_in_V_strb_V_0_sel_wr_i_1_n_2;
  wire [1:1]video_in_V_strb_V_0_state;
  wire \video_in_V_strb_V_0_state[0]_i_1_n_2 ;
  wire \video_in_V_strb_V_0_state_reg_n_2_[0] ;
  wire video_in_V_user_V_0_ack_in;
  wire video_in_V_user_V_0_payload_A;
  wire \video_in_V_user_V_0_payload_A[0]_i_1_n_2 ;
  wire video_in_V_user_V_0_payload_B;
  wire \video_in_V_user_V_0_payload_B[0]_i_1_n_2 ;
  wire video_in_V_user_V_0_sel;
  wire video_in_V_user_V_0_sel_rd_i_1_n_2;
  wire video_in_V_user_V_0_sel_wr;
  wire video_in_V_user_V_0_sel_wr_i_1_n_2;
  wire [1:1]video_in_V_user_V_0_state;
  wire \video_in_V_user_V_0_state[0]_i_1_n_2 ;
  wire \video_in_V_user_V_0_state_reg_n_2_[0] ;
  wire [15:0]video_out_TDATA;
  wire [1:0]video_out_TKEEP;
  wire [0:0]video_out_TLAST;
  wire video_out_TREADY;
  wire [1:0]video_out_TSTRB;
  wire [0:0]video_out_TUSER;
  wire video_out_TVALID;
  wire video_out_V_data_V_1_ack_in;
  wire video_out_V_data_V_1_load_A;
  wire video_out_V_data_V_1_load_B;
  wire [15:0]video_out_V_data_V_1_payload_A;
  wire \video_out_V_data_V_1_payload_A[0]_i_1_n_2 ;
  wire \video_out_V_data_V_1_payload_A[1]_i_1_n_2 ;
  wire \video_out_V_data_V_1_payload_A[2]_i_1_n_2 ;
  wire \video_out_V_data_V_1_payload_A[3]_i_1_n_2 ;
  wire \video_out_V_data_V_1_payload_A[4]_i_1_n_2 ;
  wire \video_out_V_data_V_1_payload_A[5]_i_1_n_2 ;
  wire \video_out_V_data_V_1_payload_A[6]_i_1_n_2 ;
  wire \video_out_V_data_V_1_payload_A[7]_i_1_n_2 ;
  wire [15:0]video_out_V_data_V_1_payload_B;
  wire video_out_V_data_V_1_sel;
  wire video_out_V_data_V_1_sel_rd_i_1_n_2;
  wire video_out_V_data_V_1_sel_wr;
  wire video_out_V_data_V_1_sel_wr_i_1_n_2;
  wire \video_out_V_data_V_1_state[0]_i_1_n_2 ;
  wire \video_out_V_data_V_1_state[1]_i_1_n_2 ;
  wire \video_out_V_data_V_1_state_reg_n_2_[0] ;
  wire video_out_V_keep_V_1_ack_in;
  wire [1:0]video_out_V_keep_V_1_payload_A;
  wire \video_out_V_keep_V_1_payload_A[0]_i_1_n_2 ;
  wire \video_out_V_keep_V_1_payload_A[1]_i_1_n_2 ;
  wire \video_out_V_keep_V_1_payload_A[1]_i_2_n_2 ;
  wire [1:0]video_out_V_keep_V_1_payload_B;
  wire \video_out_V_keep_V_1_payload_B[0]_i_1_n_2 ;
  wire \video_out_V_keep_V_1_payload_B[1]_i_1_n_2 ;
  wire video_out_V_keep_V_1_sel;
  wire video_out_V_keep_V_1_sel_rd_i_1_n_2;
  wire video_out_V_keep_V_1_sel_wr;
  wire video_out_V_keep_V_1_sel_wr_i_1_n_2;
  wire \video_out_V_keep_V_1_state[0]_i_1_n_2 ;
  wire \video_out_V_keep_V_1_state[1]_i_1_n_2 ;
  wire \video_out_V_keep_V_1_state_reg_n_2_[0] ;
  wire video_out_V_last_V_1_ack_in;
  wire video_out_V_last_V_1_payload_A;
  wire \video_out_V_last_V_1_payload_A[0]_i_1_n_2 ;
  wire \video_out_V_last_V_1_payload_A[0]_i_2_n_2 ;
  wire video_out_V_last_V_1_payload_B;
  wire \video_out_V_last_V_1_payload_B[0]_i_1_n_2 ;
  wire video_out_V_last_V_1_sel;
  wire video_out_V_last_V_1_sel_rd_i_1_n_2;
  wire video_out_V_last_V_1_sel_wr;
  wire video_out_V_last_V_1_sel_wr_i_1_n_2;
  wire \video_out_V_last_V_1_state[0]_i_1_n_2 ;
  wire \video_out_V_last_V_1_state[1]_i_1_n_2 ;
  wire video_out_V_strb_V_1_ack_in;
  wire [1:0]video_out_V_strb_V_1_payload_A;
  wire \video_out_V_strb_V_1_payload_A[0]_i_1_n_2 ;
  wire \video_out_V_strb_V_1_payload_A[1]_i_1_n_2 ;
  wire \video_out_V_strb_V_1_payload_A[1]_i_2_n_2 ;
  wire [1:0]video_out_V_strb_V_1_payload_B;
  wire \video_out_V_strb_V_1_payload_B[0]_i_1_n_2 ;
  wire \video_out_V_strb_V_1_payload_B[1]_i_1_n_2 ;
  wire video_out_V_strb_V_1_sel;
  wire video_out_V_strb_V_1_sel_rd_i_1_n_2;
  wire video_out_V_strb_V_1_sel_wr;
  wire video_out_V_strb_V_1_sel_wr_i_1_n_2;
  wire \video_out_V_strb_V_1_state[0]_i_1_n_2 ;
  wire \video_out_V_strb_V_1_state[1]_i_1_n_2 ;
  wire \video_out_V_strb_V_1_state_reg_n_2_[0] ;
  wire video_out_V_user_V_1_ack_in;
  wire video_out_V_user_V_1_payload_A;
  wire \video_out_V_user_V_1_payload_A[0]_i_1_n_2 ;
  wire \video_out_V_user_V_1_payload_A[0]_i_2_n_2 ;
  wire video_out_V_user_V_1_payload_B;
  wire \video_out_V_user_V_1_payload_B[0]_i_1_n_2 ;
  wire video_out_V_user_V_1_sel;
  wire video_out_V_user_V_1_sel_rd_i_1_n_2;
  wire video_out_V_user_V_1_sel_wr;
  wire video_out_V_user_V_1_sel_wr_i_1_n_2;
  wire \video_out_V_user_V_1_state[0]_i_1_n_2 ;
  wire \video_out_V_user_V_1_state[1]_i_1_n_2 ;
  wire \video_out_V_user_V_1_state_reg_n_2_[0] ;
  wire [3:0]\NLW_i_reg_117_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_i_reg_117_reg[20]_i_1_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(ap_CS_fsm_state2),
        .I1(ap_CS_fsm_pp0_stage0),
        .O(ap_NS_fsm[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFBF0000)) 
    \ap_CS_fsm[2]_i_1 
       (.I0(ap_enable_reg_pp0_iter1_reg_n_2),
        .I1(ap_enable_reg_pp0_iter0),
        .I2(exitcond_fu_133_p2),
        .I3(ap_block_pp0_stage0_flag00011011),
        .I4(\ap_CS_fsm[2]_i_4_n_2 ),
        .I5(ap_CS_fsm_state2),
        .O(ap_NS_fsm[2]));
  LUT5 #(
    .INIT(32'h00008000)) 
    \ap_CS_fsm[2]_i_2 
       (.I0(\ap_CS_fsm[2]_i_5_n_2 ),
        .I1(\ap_CS_fsm[2]_i_6_n_2 ),
        .I2(\ap_CS_fsm[2]_i_7_n_2 ),
        .I3(\ap_CS_fsm[2]_i_8_n_2 ),
        .I4(\ap_CS_fsm[2]_i_9_n_2 ),
        .O(exitcond_fu_133_p2));
  LUT6 #(
    .INIT(64'h040404040FFF0404)) 
    \ap_CS_fsm[2]_i_3 
       (.I0(ap_reg_pp0_iter1_exitcond_reg_237),
        .I1(ap_enable_reg_pp0_iter2_reg_n_2),
        .I2(video_out_V_data_V_1_ack_in),
        .I3(\video_in_V_data_V_0_state_reg_n_2_[0] ),
        .I4(ap_enable_reg_pp0_iter1_reg_n_2),
        .I5(\exitcond_reg_237_reg_n_2_[0] ),
        .O(ap_block_pp0_stage0_flag00011011));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \ap_CS_fsm[2]_i_4 
       (.I0(ap_block_pp0_stage0_flag00011011),
        .I1(ap_enable_reg_pp0_iter1_reg_n_2),
        .I2(ap_enable_reg_pp0_iter2_reg_n_2),
        .I3(ap_CS_fsm_pp0_stage0),
        .O(\ap_CS_fsm[2]_i_4_n_2 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \ap_CS_fsm[2]_i_5 
       (.I0(i_reg_117_reg__0[19]),
        .I1(i_reg_117_reg__0[18]),
        .I2(i_reg_117_reg__0[17]),
        .I3(i_reg_117_reg__0[16]),
        .O(\ap_CS_fsm[2]_i_5_n_2 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \ap_CS_fsm[2]_i_6 
       (.I0(i_reg_117_reg__0[14]),
        .I1(i_reg_117_reg__0[15]),
        .I2(i_reg_117_reg__0[12]),
        .I3(i_reg_117_reg__0[13]),
        .O(\ap_CS_fsm[2]_i_6_n_2 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \ap_CS_fsm[2]_i_7 
       (.I0(i_reg_117_reg__0[4]),
        .I1(i_reg_117_reg__0[3]),
        .I2(i_reg_117_reg__0[6]),
        .I3(i_reg_117_reg__0[5]),
        .O(\ap_CS_fsm[2]_i_7_n_2 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \ap_CS_fsm[2]_i_8 
       (.I0(i_reg_117_reg__0[11]),
        .I1(i_reg_117_reg__0[10]),
        .I2(i_reg_117_reg__0[9]),
        .I3(i_reg_117_reg__0[8]),
        .O(\ap_CS_fsm[2]_i_8_n_2 ));
  LUT5 #(
    .INIT(32'hFFFFFFFD)) 
    \ap_CS_fsm[2]_i_9 
       (.I0(i_reg_117_reg__0[20]),
        .I1(i_reg_117_reg__0[7]),
        .I2(i_reg_117_reg),
        .I3(i_reg_117_reg__0[2]),
        .I4(i_reg_117_reg__0[1]),
        .O(\ap_CS_fsm[2]_i_9_n_2 ));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(ap_CS_fsm_state1),
        .S(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_state2),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(ap_CS_fsm_pp0_stage0),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hA8A800A8A8A8A8A8)) 
    ap_enable_reg_pp0_iter0_i_1
       (.I0(ap_rst_n),
        .I1(ap_CS_fsm_state2),
        .I2(ap_enable_reg_pp0_iter0),
        .I3(exitcond_fu_133_p2),
        .I4(ap_block_pp0_stage0_flag00011011),
        .I5(ap_CS_fsm_pp0_stage0),
        .O(ap_enable_reg_pp0_iter0_i_1_n_2));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter0_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter0_i_1_n_2),
        .Q(ap_enable_reg_pp0_iter0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h888800A0)) 
    ap_enable_reg_pp0_iter1_i_1
       (.I0(ap_rst_n),
        .I1(ap_enable_reg_pp0_iter1_reg_n_2),
        .I2(ap_enable_reg_pp0_iter0),
        .I3(exitcond_fu_133_p2),
        .I4(ap_block_pp0_stage0_flag00011011),
        .O(ap_enable_reg_pp0_iter1_i_1_n_2));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter1_i_1_n_2),
        .Q(ap_enable_reg_pp0_iter1_reg_n_2),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00A088A0)) 
    ap_enable_reg_pp0_iter2_i_1
       (.I0(ap_rst_n),
        .I1(ap_enable_reg_pp0_iter2_reg_n_2),
        .I2(ap_enable_reg_pp0_iter1_reg_n_2),
        .I3(ap_block_pp0_stage0_flag00011011),
        .I4(ap_CS_fsm_state2),
        .O(ap_enable_reg_pp0_iter2_i_1_n_2));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter2_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter2_i_1_n_2),
        .Q(ap_enable_reg_pp0_iter2_reg_n_2),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \ap_reg_pp0_iter1_exitcond_reg_237[0]_i_1 
       (.I0(\exitcond_reg_237_reg_n_2_[0] ),
        .I1(ap_CS_fsm_pp0_stage0),
        .I2(ap_block_pp0_stage0_flag00011011),
        .I3(ap_reg_pp0_iter1_exitcond_reg_237),
        .O(\ap_reg_pp0_iter1_exitcond_reg_237[0]_i_1_n_2 ));
  FDRE \ap_reg_pp0_iter1_exitcond_reg_237_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_reg_pp0_iter1_exitcond_reg_237[0]_i_1_n_2 ),
        .Q(ap_reg_pp0_iter1_exitcond_reg_237),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \exitcond_reg_237[0]_i_1 
       (.I0(exitcond_fu_133_p2),
        .I1(ap_CS_fsm_pp0_stage0),
        .I2(ap_block_pp0_stage0_flag00011011),
        .I3(\exitcond_reg_237_reg_n_2_[0] ),
        .O(\exitcond_reg_237[0]_i_1_n_2 ));
  FDRE \exitcond_reg_237_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\exitcond_reg_237[0]_i_1_n_2 ),
        .Q(\exitcond_reg_237_reg_n_2_[0] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFF70000)) 
    \i_reg_117[0]_i_1 
       (.I0(ap_enable_reg_pp0_iter0),
        .I1(ap_CS_fsm_pp0_stage0),
        .I2(ap_block_pp0_stage0_flag00011011),
        .I3(exitcond_fu_133_p2),
        .I4(ap_CS_fsm_state2),
        .O(i_reg_117));
  LUT4 #(
    .INIT(16'h0008)) 
    \i_reg_117[0]_i_2 
       (.I0(ap_enable_reg_pp0_iter0),
        .I1(ap_CS_fsm_pp0_stage0),
        .I2(ap_block_pp0_stage0_flag00011011),
        .I3(exitcond_fu_133_p2),
        .O(i_reg_1170));
  LUT1 #(
    .INIT(2'h1)) 
    \i_reg_117[0]_i_4 
       (.I0(i_reg_117_reg),
        .O(\i_reg_117[0]_i_4_n_2 ));
  FDRE \i_reg_117_reg[0] 
       (.C(ap_clk),
        .CE(i_reg_1170),
        .D(\i_reg_117_reg[0]_i_3_n_9 ),
        .Q(i_reg_117_reg),
        .R(i_reg_117));
  CARRY4 \i_reg_117_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\i_reg_117_reg[0]_i_3_n_2 ,\i_reg_117_reg[0]_i_3_n_3 ,\i_reg_117_reg[0]_i_3_n_4 ,\i_reg_117_reg[0]_i_3_n_5 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\i_reg_117_reg[0]_i_3_n_6 ,\i_reg_117_reg[0]_i_3_n_7 ,\i_reg_117_reg[0]_i_3_n_8 ,\i_reg_117_reg[0]_i_3_n_9 }),
        .S({i_reg_117_reg__0[3:1],\i_reg_117[0]_i_4_n_2 }));
  FDRE \i_reg_117_reg[10] 
       (.C(ap_clk),
        .CE(i_reg_1170),
        .D(\i_reg_117_reg[8]_i_1_n_7 ),
        .Q(i_reg_117_reg__0[10]),
        .R(i_reg_117));
  FDRE \i_reg_117_reg[11] 
       (.C(ap_clk),
        .CE(i_reg_1170),
        .D(\i_reg_117_reg[8]_i_1_n_6 ),
        .Q(i_reg_117_reg__0[11]),
        .R(i_reg_117));
  FDRE \i_reg_117_reg[12] 
       (.C(ap_clk),
        .CE(i_reg_1170),
        .D(\i_reg_117_reg[12]_i_1_n_9 ),
        .Q(i_reg_117_reg__0[12]),
        .R(i_reg_117));
  CARRY4 \i_reg_117_reg[12]_i_1 
       (.CI(\i_reg_117_reg[8]_i_1_n_2 ),
        .CO({\i_reg_117_reg[12]_i_1_n_2 ,\i_reg_117_reg[12]_i_1_n_3 ,\i_reg_117_reg[12]_i_1_n_4 ,\i_reg_117_reg[12]_i_1_n_5 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_reg_117_reg[12]_i_1_n_6 ,\i_reg_117_reg[12]_i_1_n_7 ,\i_reg_117_reg[12]_i_1_n_8 ,\i_reg_117_reg[12]_i_1_n_9 }),
        .S(i_reg_117_reg__0[15:12]));
  FDRE \i_reg_117_reg[13] 
       (.C(ap_clk),
        .CE(i_reg_1170),
        .D(\i_reg_117_reg[12]_i_1_n_8 ),
        .Q(i_reg_117_reg__0[13]),
        .R(i_reg_117));
  FDRE \i_reg_117_reg[14] 
       (.C(ap_clk),
        .CE(i_reg_1170),
        .D(\i_reg_117_reg[12]_i_1_n_7 ),
        .Q(i_reg_117_reg__0[14]),
        .R(i_reg_117));
  FDRE \i_reg_117_reg[15] 
       (.C(ap_clk),
        .CE(i_reg_1170),
        .D(\i_reg_117_reg[12]_i_1_n_6 ),
        .Q(i_reg_117_reg__0[15]),
        .R(i_reg_117));
  FDRE \i_reg_117_reg[16] 
       (.C(ap_clk),
        .CE(i_reg_1170),
        .D(\i_reg_117_reg[16]_i_1_n_9 ),
        .Q(i_reg_117_reg__0[16]),
        .R(i_reg_117));
  CARRY4 \i_reg_117_reg[16]_i_1 
       (.CI(\i_reg_117_reg[12]_i_1_n_2 ),
        .CO({\i_reg_117_reg[16]_i_1_n_2 ,\i_reg_117_reg[16]_i_1_n_3 ,\i_reg_117_reg[16]_i_1_n_4 ,\i_reg_117_reg[16]_i_1_n_5 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_reg_117_reg[16]_i_1_n_6 ,\i_reg_117_reg[16]_i_1_n_7 ,\i_reg_117_reg[16]_i_1_n_8 ,\i_reg_117_reg[16]_i_1_n_9 }),
        .S(i_reg_117_reg__0[19:16]));
  FDRE \i_reg_117_reg[17] 
       (.C(ap_clk),
        .CE(i_reg_1170),
        .D(\i_reg_117_reg[16]_i_1_n_8 ),
        .Q(i_reg_117_reg__0[17]),
        .R(i_reg_117));
  FDRE \i_reg_117_reg[18] 
       (.C(ap_clk),
        .CE(i_reg_1170),
        .D(\i_reg_117_reg[16]_i_1_n_7 ),
        .Q(i_reg_117_reg__0[18]),
        .R(i_reg_117));
  FDRE \i_reg_117_reg[19] 
       (.C(ap_clk),
        .CE(i_reg_1170),
        .D(\i_reg_117_reg[16]_i_1_n_6 ),
        .Q(i_reg_117_reg__0[19]),
        .R(i_reg_117));
  FDRE \i_reg_117_reg[1] 
       (.C(ap_clk),
        .CE(i_reg_1170),
        .D(\i_reg_117_reg[0]_i_3_n_8 ),
        .Q(i_reg_117_reg__0[1]),
        .R(i_reg_117));
  FDRE \i_reg_117_reg[20] 
       (.C(ap_clk),
        .CE(i_reg_1170),
        .D(\i_reg_117_reg[20]_i_1_n_9 ),
        .Q(i_reg_117_reg__0[20]),
        .R(i_reg_117));
  CARRY4 \i_reg_117_reg[20]_i_1 
       (.CI(\i_reg_117_reg[16]_i_1_n_2 ),
        .CO(\NLW_i_reg_117_reg[20]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_i_reg_117_reg[20]_i_1_O_UNCONNECTED [3:1],\i_reg_117_reg[20]_i_1_n_9 }),
        .S({1'b0,1'b0,1'b0,i_reg_117_reg__0[20]}));
  FDRE \i_reg_117_reg[2] 
       (.C(ap_clk),
        .CE(i_reg_1170),
        .D(\i_reg_117_reg[0]_i_3_n_7 ),
        .Q(i_reg_117_reg__0[2]),
        .R(i_reg_117));
  FDRE \i_reg_117_reg[3] 
       (.C(ap_clk),
        .CE(i_reg_1170),
        .D(\i_reg_117_reg[0]_i_3_n_6 ),
        .Q(i_reg_117_reg__0[3]),
        .R(i_reg_117));
  FDRE \i_reg_117_reg[4] 
       (.C(ap_clk),
        .CE(i_reg_1170),
        .D(\i_reg_117_reg[4]_i_1_n_9 ),
        .Q(i_reg_117_reg__0[4]),
        .R(i_reg_117));
  CARRY4 \i_reg_117_reg[4]_i_1 
       (.CI(\i_reg_117_reg[0]_i_3_n_2 ),
        .CO({\i_reg_117_reg[4]_i_1_n_2 ,\i_reg_117_reg[4]_i_1_n_3 ,\i_reg_117_reg[4]_i_1_n_4 ,\i_reg_117_reg[4]_i_1_n_5 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_reg_117_reg[4]_i_1_n_6 ,\i_reg_117_reg[4]_i_1_n_7 ,\i_reg_117_reg[4]_i_1_n_8 ,\i_reg_117_reg[4]_i_1_n_9 }),
        .S(i_reg_117_reg__0[7:4]));
  FDRE \i_reg_117_reg[5] 
       (.C(ap_clk),
        .CE(i_reg_1170),
        .D(\i_reg_117_reg[4]_i_1_n_8 ),
        .Q(i_reg_117_reg__0[5]),
        .R(i_reg_117));
  FDRE \i_reg_117_reg[6] 
       (.C(ap_clk),
        .CE(i_reg_1170),
        .D(\i_reg_117_reg[4]_i_1_n_7 ),
        .Q(i_reg_117_reg__0[6]),
        .R(i_reg_117));
  FDRE \i_reg_117_reg[7] 
       (.C(ap_clk),
        .CE(i_reg_1170),
        .D(\i_reg_117_reg[4]_i_1_n_6 ),
        .Q(i_reg_117_reg__0[7]),
        .R(i_reg_117));
  FDRE \i_reg_117_reg[8] 
       (.C(ap_clk),
        .CE(i_reg_1170),
        .D(\i_reg_117_reg[8]_i_1_n_9 ),
        .Q(i_reg_117_reg__0[8]),
        .R(i_reg_117));
  CARRY4 \i_reg_117_reg[8]_i_1 
       (.CI(\i_reg_117_reg[4]_i_1_n_2 ),
        .CO({\i_reg_117_reg[8]_i_1_n_2 ,\i_reg_117_reg[8]_i_1_n_3 ,\i_reg_117_reg[8]_i_1_n_4 ,\i_reg_117_reg[8]_i_1_n_5 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_reg_117_reg[8]_i_1_n_6 ,\i_reg_117_reg[8]_i_1_n_7 ,\i_reg_117_reg[8]_i_1_n_8 ,\i_reg_117_reg[8]_i_1_n_9 }),
        .S(i_reg_117_reg__0[11:8]));
  FDRE \i_reg_117_reg[9] 
       (.C(ap_clk),
        .CE(i_reg_1170),
        .D(\i_reg_117_reg[8]_i_1_n_8 ),
        .Q(i_reg_117_reg__0[9]),
        .R(i_reg_117));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \leftover_V_fu_80[0]_i_1 
       (.I0(video_in_V_data_V_0_payload_B[16]),
        .I1(video_in_V_data_V_0_payload_A[16]),
        .I2(p_150_in),
        .I3(video_in_V_data_V_0_sel),
        .O(p_1_in[0]));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \leftover_V_fu_80[1]_i_1 
       (.I0(video_in_V_data_V_0_payload_B[17]),
        .I1(video_in_V_data_V_0_payload_A[17]),
        .I2(p_150_in),
        .I3(video_in_V_data_V_0_sel),
        .O(p_1_in[1]));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \leftover_V_fu_80[2]_i_1 
       (.I0(video_in_V_data_V_0_payload_B[18]),
        .I1(video_in_V_data_V_0_payload_A[18]),
        .I2(p_150_in),
        .I3(video_in_V_data_V_0_sel),
        .O(p_1_in[2]));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \leftover_V_fu_80[3]_i_1 
       (.I0(video_in_V_data_V_0_payload_B[19]),
        .I1(video_in_V_data_V_0_payload_A[19]),
        .I2(p_150_in),
        .I3(video_in_V_data_V_0_sel),
        .O(p_1_in[3]));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \leftover_V_fu_80[4]_i_1 
       (.I0(video_in_V_data_V_0_payload_B[20]),
        .I1(video_in_V_data_V_0_payload_A[20]),
        .I2(p_150_in),
        .I3(video_in_V_data_V_0_sel),
        .O(p_1_in[4]));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \leftover_V_fu_80[5]_i_1 
       (.I0(video_in_V_data_V_0_payload_B[21]),
        .I1(video_in_V_data_V_0_payload_A[21]),
        .I2(p_150_in),
        .I3(video_in_V_data_V_0_sel),
        .O(p_1_in[5]));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \leftover_V_fu_80[6]_i_1 
       (.I0(video_in_V_data_V_0_payload_B[22]),
        .I1(video_in_V_data_V_0_payload_A[22]),
        .I2(p_150_in),
        .I3(video_in_V_data_V_0_sel),
        .O(p_1_in[6]));
  LUT3 #(
    .INIT(8'h74)) 
    \leftover_V_fu_80[7]_i_1 
       (.I0(tmp_reg_246),
        .I1(p_150_in),
        .I2(ap_CS_fsm_state1),
        .O(\leftover_V_fu_80[7]_i_1_n_2 ));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \leftover_V_fu_80[7]_i_2 
       (.I0(video_in_V_data_V_0_payload_B[23]),
        .I1(video_in_V_data_V_0_payload_A[23]),
        .I2(p_150_in),
        .I3(video_in_V_data_V_0_sel),
        .O(p_1_in[7]));
  FDRE \leftover_V_fu_80_reg[0] 
       (.C(ap_clk),
        .CE(\leftover_V_fu_80[7]_i_1_n_2 ),
        .D(p_1_in[0]),
        .Q(leftover_V_fu_80[0]),
        .R(1'b0));
  FDRE \leftover_V_fu_80_reg[1] 
       (.C(ap_clk),
        .CE(\leftover_V_fu_80[7]_i_1_n_2 ),
        .D(p_1_in[1]),
        .Q(leftover_V_fu_80[1]),
        .R(1'b0));
  FDRE \leftover_V_fu_80_reg[2] 
       (.C(ap_clk),
        .CE(\leftover_V_fu_80[7]_i_1_n_2 ),
        .D(p_1_in[2]),
        .Q(leftover_V_fu_80[2]),
        .R(1'b0));
  FDRE \leftover_V_fu_80_reg[3] 
       (.C(ap_clk),
        .CE(\leftover_V_fu_80[7]_i_1_n_2 ),
        .D(p_1_in[3]),
        .Q(leftover_V_fu_80[3]),
        .R(1'b0));
  FDRE \leftover_V_fu_80_reg[4] 
       (.C(ap_clk),
        .CE(\leftover_V_fu_80[7]_i_1_n_2 ),
        .D(p_1_in[4]),
        .Q(leftover_V_fu_80[4]),
        .R(1'b0));
  FDRE \leftover_V_fu_80_reg[5] 
       (.C(ap_clk),
        .CE(\leftover_V_fu_80[7]_i_1_n_2 ),
        .D(p_1_in[5]),
        .Q(leftover_V_fu_80[5]),
        .R(1'b0));
  FDRE \leftover_V_fu_80_reg[6] 
       (.C(ap_clk),
        .CE(\leftover_V_fu_80[7]_i_1_n_2 ),
        .D(p_1_in[6]),
        .Q(leftover_V_fu_80[6]),
        .R(1'b0));
  FDRE \leftover_V_fu_80_reg[7] 
       (.C(ap_clk),
        .CE(\leftover_V_fu_80[7]_i_1_n_2 ),
        .D(p_1_in[7]),
        .Q(leftover_V_fu_80[7]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAAAEAAA2)) 
    \tmp_reg_246[0]_i_1 
       (.I0(tmp_reg_246),
        .I1(ap_CS_fsm_pp0_stage0),
        .I2(ap_block_pp0_stage0_flag00011011),
        .I3(exitcond_fu_133_p2),
        .I4(i_reg_117_reg),
        .O(\tmp_reg_246[0]_i_1_n_2 ));
  FDRE \tmp_reg_246_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_reg_246[0]_i_1_n_2 ),
        .Q(tmp_reg_246),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h0D)) 
    \video_in_V_data_V_0_payload_A[23]_i_1 
       (.I0(\video_in_V_data_V_0_state_reg_n_2_[0] ),
        .I1(video_in_V_data_V_0_ack_in),
        .I2(video_in_V_data_V_0_sel_wr),
        .O(video_in_V_data_V_0_load_A));
  FDRE \video_in_V_data_V_0_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(video_in_V_data_V_0_load_A),
        .D(video_in_TDATA[0]),
        .Q(video_in_V_data_V_0_payload_A[0]),
        .R(1'b0));
  FDRE \video_in_V_data_V_0_payload_A_reg[10] 
       (.C(ap_clk),
        .CE(video_in_V_data_V_0_load_A),
        .D(video_in_TDATA[10]),
        .Q(video_in_V_data_V_0_payload_A[10]),
        .R(1'b0));
  FDRE \video_in_V_data_V_0_payload_A_reg[11] 
       (.C(ap_clk),
        .CE(video_in_V_data_V_0_load_A),
        .D(video_in_TDATA[11]),
        .Q(video_in_V_data_V_0_payload_A[11]),
        .R(1'b0));
  FDRE \video_in_V_data_V_0_payload_A_reg[12] 
       (.C(ap_clk),
        .CE(video_in_V_data_V_0_load_A),
        .D(video_in_TDATA[12]),
        .Q(video_in_V_data_V_0_payload_A[12]),
        .R(1'b0));
  FDRE \video_in_V_data_V_0_payload_A_reg[13] 
       (.C(ap_clk),
        .CE(video_in_V_data_V_0_load_A),
        .D(video_in_TDATA[13]),
        .Q(video_in_V_data_V_0_payload_A[13]),
        .R(1'b0));
  FDRE \video_in_V_data_V_0_payload_A_reg[14] 
       (.C(ap_clk),
        .CE(video_in_V_data_V_0_load_A),
        .D(video_in_TDATA[14]),
        .Q(video_in_V_data_V_0_payload_A[14]),
        .R(1'b0));
  FDRE \video_in_V_data_V_0_payload_A_reg[15] 
       (.C(ap_clk),
        .CE(video_in_V_data_V_0_load_A),
        .D(video_in_TDATA[15]),
        .Q(video_in_V_data_V_0_payload_A[15]),
        .R(1'b0));
  FDRE \video_in_V_data_V_0_payload_A_reg[16] 
       (.C(ap_clk),
        .CE(video_in_V_data_V_0_load_A),
        .D(video_in_TDATA[16]),
        .Q(video_in_V_data_V_0_payload_A[16]),
        .R(1'b0));
  FDRE \video_in_V_data_V_0_payload_A_reg[17] 
       (.C(ap_clk),
        .CE(video_in_V_data_V_0_load_A),
        .D(video_in_TDATA[17]),
        .Q(video_in_V_data_V_0_payload_A[17]),
        .R(1'b0));
  FDRE \video_in_V_data_V_0_payload_A_reg[18] 
       (.C(ap_clk),
        .CE(video_in_V_data_V_0_load_A),
        .D(video_in_TDATA[18]),
        .Q(video_in_V_data_V_0_payload_A[18]),
        .R(1'b0));
  FDRE \video_in_V_data_V_0_payload_A_reg[19] 
       (.C(ap_clk),
        .CE(video_in_V_data_V_0_load_A),
        .D(video_in_TDATA[19]),
        .Q(video_in_V_data_V_0_payload_A[19]),
        .R(1'b0));
  FDRE \video_in_V_data_V_0_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(video_in_V_data_V_0_load_A),
        .D(video_in_TDATA[1]),
        .Q(video_in_V_data_V_0_payload_A[1]),
        .R(1'b0));
  FDRE \video_in_V_data_V_0_payload_A_reg[20] 
       (.C(ap_clk),
        .CE(video_in_V_data_V_0_load_A),
        .D(video_in_TDATA[20]),
        .Q(video_in_V_data_V_0_payload_A[20]),
        .R(1'b0));
  FDRE \video_in_V_data_V_0_payload_A_reg[21] 
       (.C(ap_clk),
        .CE(video_in_V_data_V_0_load_A),
        .D(video_in_TDATA[21]),
        .Q(video_in_V_data_V_0_payload_A[21]),
        .R(1'b0));
  FDRE \video_in_V_data_V_0_payload_A_reg[22] 
       (.C(ap_clk),
        .CE(video_in_V_data_V_0_load_A),
        .D(video_in_TDATA[22]),
        .Q(video_in_V_data_V_0_payload_A[22]),
        .R(1'b0));
  FDRE \video_in_V_data_V_0_payload_A_reg[23] 
       (.C(ap_clk),
        .CE(video_in_V_data_V_0_load_A),
        .D(video_in_TDATA[23]),
        .Q(video_in_V_data_V_0_payload_A[23]),
        .R(1'b0));
  FDRE \video_in_V_data_V_0_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(video_in_V_data_V_0_load_A),
        .D(video_in_TDATA[2]),
        .Q(video_in_V_data_V_0_payload_A[2]),
        .R(1'b0));
  FDRE \video_in_V_data_V_0_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(video_in_V_data_V_0_load_A),
        .D(video_in_TDATA[3]),
        .Q(video_in_V_data_V_0_payload_A[3]),
        .R(1'b0));
  FDRE \video_in_V_data_V_0_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(video_in_V_data_V_0_load_A),
        .D(video_in_TDATA[4]),
        .Q(video_in_V_data_V_0_payload_A[4]),
        .R(1'b0));
  FDRE \video_in_V_data_V_0_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(video_in_V_data_V_0_load_A),
        .D(video_in_TDATA[5]),
        .Q(video_in_V_data_V_0_payload_A[5]),
        .R(1'b0));
  FDRE \video_in_V_data_V_0_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(video_in_V_data_V_0_load_A),
        .D(video_in_TDATA[6]),
        .Q(video_in_V_data_V_0_payload_A[6]),
        .R(1'b0));
  FDRE \video_in_V_data_V_0_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(video_in_V_data_V_0_load_A),
        .D(video_in_TDATA[7]),
        .Q(video_in_V_data_V_0_payload_A[7]),
        .R(1'b0));
  FDRE \video_in_V_data_V_0_payload_A_reg[8] 
       (.C(ap_clk),
        .CE(video_in_V_data_V_0_load_A),
        .D(video_in_TDATA[8]),
        .Q(video_in_V_data_V_0_payload_A[8]),
        .R(1'b0));
  FDRE \video_in_V_data_V_0_payload_A_reg[9] 
       (.C(ap_clk),
        .CE(video_in_V_data_V_0_load_A),
        .D(video_in_TDATA[9]),
        .Q(video_in_V_data_V_0_payload_A[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hD0)) 
    \video_in_V_data_V_0_payload_B[23]_i_1 
       (.I0(\video_in_V_data_V_0_state_reg_n_2_[0] ),
        .I1(video_in_V_data_V_0_ack_in),
        .I2(video_in_V_data_V_0_sel_wr),
        .O(video_in_V_data_V_0_load_B));
  FDRE \video_in_V_data_V_0_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(video_in_V_data_V_0_load_B),
        .D(video_in_TDATA[0]),
        .Q(video_in_V_data_V_0_payload_B[0]),
        .R(1'b0));
  FDRE \video_in_V_data_V_0_payload_B_reg[10] 
       (.C(ap_clk),
        .CE(video_in_V_data_V_0_load_B),
        .D(video_in_TDATA[10]),
        .Q(video_in_V_data_V_0_payload_B[10]),
        .R(1'b0));
  FDRE \video_in_V_data_V_0_payload_B_reg[11] 
       (.C(ap_clk),
        .CE(video_in_V_data_V_0_load_B),
        .D(video_in_TDATA[11]),
        .Q(video_in_V_data_V_0_payload_B[11]),
        .R(1'b0));
  FDRE \video_in_V_data_V_0_payload_B_reg[12] 
       (.C(ap_clk),
        .CE(video_in_V_data_V_0_load_B),
        .D(video_in_TDATA[12]),
        .Q(video_in_V_data_V_0_payload_B[12]),
        .R(1'b0));
  FDRE \video_in_V_data_V_0_payload_B_reg[13] 
       (.C(ap_clk),
        .CE(video_in_V_data_V_0_load_B),
        .D(video_in_TDATA[13]),
        .Q(video_in_V_data_V_0_payload_B[13]),
        .R(1'b0));
  FDRE \video_in_V_data_V_0_payload_B_reg[14] 
       (.C(ap_clk),
        .CE(video_in_V_data_V_0_load_B),
        .D(video_in_TDATA[14]),
        .Q(video_in_V_data_V_0_payload_B[14]),
        .R(1'b0));
  FDRE \video_in_V_data_V_0_payload_B_reg[15] 
       (.C(ap_clk),
        .CE(video_in_V_data_V_0_load_B),
        .D(video_in_TDATA[15]),
        .Q(video_in_V_data_V_0_payload_B[15]),
        .R(1'b0));
  FDRE \video_in_V_data_V_0_payload_B_reg[16] 
       (.C(ap_clk),
        .CE(video_in_V_data_V_0_load_B),
        .D(video_in_TDATA[16]),
        .Q(video_in_V_data_V_0_payload_B[16]),
        .R(1'b0));
  FDRE \video_in_V_data_V_0_payload_B_reg[17] 
       (.C(ap_clk),
        .CE(video_in_V_data_V_0_load_B),
        .D(video_in_TDATA[17]),
        .Q(video_in_V_data_V_0_payload_B[17]),
        .R(1'b0));
  FDRE \video_in_V_data_V_0_payload_B_reg[18] 
       (.C(ap_clk),
        .CE(video_in_V_data_V_0_load_B),
        .D(video_in_TDATA[18]),
        .Q(video_in_V_data_V_0_payload_B[18]),
        .R(1'b0));
  FDRE \video_in_V_data_V_0_payload_B_reg[19] 
       (.C(ap_clk),
        .CE(video_in_V_data_V_0_load_B),
        .D(video_in_TDATA[19]),
        .Q(video_in_V_data_V_0_payload_B[19]),
        .R(1'b0));
  FDRE \video_in_V_data_V_0_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(video_in_V_data_V_0_load_B),
        .D(video_in_TDATA[1]),
        .Q(video_in_V_data_V_0_payload_B[1]),
        .R(1'b0));
  FDRE \video_in_V_data_V_0_payload_B_reg[20] 
       (.C(ap_clk),
        .CE(video_in_V_data_V_0_load_B),
        .D(video_in_TDATA[20]),
        .Q(video_in_V_data_V_0_payload_B[20]),
        .R(1'b0));
  FDRE \video_in_V_data_V_0_payload_B_reg[21] 
       (.C(ap_clk),
        .CE(video_in_V_data_V_0_load_B),
        .D(video_in_TDATA[21]),
        .Q(video_in_V_data_V_0_payload_B[21]),
        .R(1'b0));
  FDRE \video_in_V_data_V_0_payload_B_reg[22] 
       (.C(ap_clk),
        .CE(video_in_V_data_V_0_load_B),
        .D(video_in_TDATA[22]),
        .Q(video_in_V_data_V_0_payload_B[22]),
        .R(1'b0));
  FDRE \video_in_V_data_V_0_payload_B_reg[23] 
       (.C(ap_clk),
        .CE(video_in_V_data_V_0_load_B),
        .D(video_in_TDATA[23]),
        .Q(video_in_V_data_V_0_payload_B[23]),
        .R(1'b0));
  FDRE \video_in_V_data_V_0_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(video_in_V_data_V_0_load_B),
        .D(video_in_TDATA[2]),
        .Q(video_in_V_data_V_0_payload_B[2]),
        .R(1'b0));
  FDRE \video_in_V_data_V_0_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(video_in_V_data_V_0_load_B),
        .D(video_in_TDATA[3]),
        .Q(video_in_V_data_V_0_payload_B[3]),
        .R(1'b0));
  FDRE \video_in_V_data_V_0_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(video_in_V_data_V_0_load_B),
        .D(video_in_TDATA[4]),
        .Q(video_in_V_data_V_0_payload_B[4]),
        .R(1'b0));
  FDRE \video_in_V_data_V_0_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(video_in_V_data_V_0_load_B),
        .D(video_in_TDATA[5]),
        .Q(video_in_V_data_V_0_payload_B[5]),
        .R(1'b0));
  FDRE \video_in_V_data_V_0_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(video_in_V_data_V_0_load_B),
        .D(video_in_TDATA[6]),
        .Q(video_in_V_data_V_0_payload_B[6]),
        .R(1'b0));
  FDRE \video_in_V_data_V_0_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(video_in_V_data_V_0_load_B),
        .D(video_in_TDATA[7]),
        .Q(video_in_V_data_V_0_payload_B[7]),
        .R(1'b0));
  FDRE \video_in_V_data_V_0_payload_B_reg[8] 
       (.C(ap_clk),
        .CE(video_in_V_data_V_0_load_B),
        .D(video_in_TDATA[8]),
        .Q(video_in_V_data_V_0_payload_B[8]),
        .R(1'b0));
  FDRE \video_in_V_data_V_0_payload_B_reg[9] 
       (.C(ap_clk),
        .CE(video_in_V_data_V_0_load_B),
        .D(video_in_TDATA[9]),
        .Q(video_in_V_data_V_0_payload_B[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h78)) 
    video_in_V_data_V_0_sel_rd_i_1
       (.I0(p_150_in),
        .I1(\video_in_V_data_V_0_state_reg_n_2_[0] ),
        .I2(video_in_V_data_V_0_sel),
        .O(video_in_V_data_V_0_sel_rd_i_1_n_2));
  FDRE #(
    .INIT(1'b0)) 
    video_in_V_data_V_0_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(video_in_V_data_V_0_sel_rd_i_1_n_2),
        .Q(video_in_V_data_V_0_sel),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h78)) 
    video_in_V_data_V_0_sel_wr_i_1
       (.I0(video_in_TVALID),
        .I1(video_in_V_data_V_0_ack_in),
        .I2(video_in_V_data_V_0_sel_wr),
        .O(video_in_V_data_V_0_sel_wr_i_1_n_2));
  FDRE #(
    .INIT(1'b0)) 
    video_in_V_data_V_0_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(video_in_V_data_V_0_sel_wr_i_1_n_2),
        .Q(video_in_V_data_V_0_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hFC4C0000)) 
    \video_in_V_data_V_0_state[0]_i_1 
       (.I0(p_150_in),
        .I1(\video_in_V_data_V_0_state_reg_n_2_[0] ),
        .I2(video_in_V_data_V_0_ack_in),
        .I3(video_in_TVALID),
        .I4(ap_rst_n),
        .O(\video_in_V_data_V_0_state[0]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFF2F)) 
    \video_in_V_data_V_0_state[1]_i_1 
       (.I0(video_in_V_data_V_0_ack_in),
        .I1(video_in_TVALID),
        .I2(\video_in_V_data_V_0_state_reg_n_2_[0] ),
        .I3(p_150_in),
        .O(video_in_V_data_V_0_state));
  FDRE #(
    .INIT(1'b0)) 
    \video_in_V_data_V_0_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\video_in_V_data_V_0_state[0]_i_1_n_2 ),
        .Q(\video_in_V_data_V_0_state_reg_n_2_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \video_in_V_data_V_0_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(video_in_V_data_V_0_state),
        .Q(video_in_V_data_V_0_ack_in),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hFFAE00A2)) 
    \video_in_V_keep_V_0_payload_A[0]_i_1 
       (.I0(video_in_TKEEP[0]),
        .I1(\video_in_V_keep_V_0_state_reg_n_2_[0] ),
        .I2(video_in_V_keep_V_0_ack_in),
        .I3(video_in_V_keep_V_0_sel_wr),
        .I4(video_in_V_keep_V_0_payload_A[0]),
        .O(\video_in_V_keep_V_0_payload_A[0]_i_1_n_2 ));
  LUT5 #(
    .INIT(32'hFFAE00A2)) 
    \video_in_V_keep_V_0_payload_A[1]_i_1 
       (.I0(video_in_TKEEP[1]),
        .I1(\video_in_V_keep_V_0_state_reg_n_2_[0] ),
        .I2(video_in_V_keep_V_0_ack_in),
        .I3(video_in_V_keep_V_0_sel_wr),
        .I4(video_in_V_keep_V_0_payload_A[1]),
        .O(\video_in_V_keep_V_0_payload_A[1]_i_1_n_2 ));
  FDRE \video_in_V_keep_V_0_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\video_in_V_keep_V_0_payload_A[0]_i_1_n_2 ),
        .Q(video_in_V_keep_V_0_payload_A[0]),
        .R(1'b0));
  FDRE \video_in_V_keep_V_0_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\video_in_V_keep_V_0_payload_A[1]_i_1_n_2 ),
        .Q(video_in_V_keep_V_0_payload_A[1]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAEFFA200)) 
    \video_in_V_keep_V_0_payload_B[0]_i_1 
       (.I0(video_in_TKEEP[0]),
        .I1(\video_in_V_keep_V_0_state_reg_n_2_[0] ),
        .I2(video_in_V_keep_V_0_ack_in),
        .I3(video_in_V_keep_V_0_sel_wr),
        .I4(video_in_V_keep_V_0_payload_B[0]),
        .O(\video_in_V_keep_V_0_payload_B[0]_i_1_n_2 ));
  LUT5 #(
    .INIT(32'hAEFFA200)) 
    \video_in_V_keep_V_0_payload_B[1]_i_1 
       (.I0(video_in_TKEEP[1]),
        .I1(\video_in_V_keep_V_0_state_reg_n_2_[0] ),
        .I2(video_in_V_keep_V_0_ack_in),
        .I3(video_in_V_keep_V_0_sel_wr),
        .I4(video_in_V_keep_V_0_payload_B[1]),
        .O(\video_in_V_keep_V_0_payload_B[1]_i_1_n_2 ));
  FDRE \video_in_V_keep_V_0_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\video_in_V_keep_V_0_payload_B[0]_i_1_n_2 ),
        .Q(video_in_V_keep_V_0_payload_B[0]),
        .R(1'b0));
  FDRE \video_in_V_keep_V_0_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\video_in_V_keep_V_0_payload_B[1]_i_1_n_2 ),
        .Q(video_in_V_keep_V_0_payload_B[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h78)) 
    video_in_V_keep_V_0_sel_rd_i_1
       (.I0(p_150_in),
        .I1(\video_in_V_keep_V_0_state_reg_n_2_[0] ),
        .I2(video_in_V_keep_V_0_sel),
        .O(video_in_V_keep_V_0_sel_rd_i_1_n_2));
  FDRE #(
    .INIT(1'b0)) 
    video_in_V_keep_V_0_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(video_in_V_keep_V_0_sel_rd_i_1_n_2),
        .Q(video_in_V_keep_V_0_sel),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h78)) 
    video_in_V_keep_V_0_sel_wr_i_1
       (.I0(video_in_TVALID),
        .I1(video_in_V_keep_V_0_ack_in),
        .I2(video_in_V_keep_V_0_sel_wr),
        .O(video_in_V_keep_V_0_sel_wr_i_1_n_2));
  FDRE #(
    .INIT(1'b0)) 
    video_in_V_keep_V_0_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(video_in_V_keep_V_0_sel_wr_i_1_n_2),
        .Q(video_in_V_keep_V_0_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hFC4C0000)) 
    \video_in_V_keep_V_0_state[0]_i_1 
       (.I0(p_150_in),
        .I1(\video_in_V_keep_V_0_state_reg_n_2_[0] ),
        .I2(video_in_V_keep_V_0_ack_in),
        .I3(video_in_TVALID),
        .I4(ap_rst_n),
        .O(\video_in_V_keep_V_0_state[0]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFF2F)) 
    \video_in_V_keep_V_0_state[1]_i_1 
       (.I0(video_in_V_keep_V_0_ack_in),
        .I1(video_in_TVALID),
        .I2(\video_in_V_keep_V_0_state_reg_n_2_[0] ),
        .I3(p_150_in),
        .O(video_in_V_keep_V_0_state));
  FDRE #(
    .INIT(1'b0)) 
    \video_in_V_keep_V_0_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\video_in_V_keep_V_0_state[0]_i_1_n_2 ),
        .Q(\video_in_V_keep_V_0_state_reg_n_2_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \video_in_V_keep_V_0_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(video_in_V_keep_V_0_state),
        .Q(video_in_V_keep_V_0_ack_in),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hFFAE00A2)) 
    \video_in_V_last_V_0_payload_A[0]_i_1 
       (.I0(video_in_TLAST),
        .I1(\video_in_V_last_V_0_state_reg_n_2_[0] ),
        .I2(video_in_TREADY),
        .I3(video_in_V_last_V_0_sel_wr),
        .I4(video_in_V_last_V_0_payload_A),
        .O(\video_in_V_last_V_0_payload_A[0]_i_1_n_2 ));
  FDRE \video_in_V_last_V_0_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\video_in_V_last_V_0_payload_A[0]_i_1_n_2 ),
        .Q(video_in_V_last_V_0_payload_A),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAEFFA200)) 
    \video_in_V_last_V_0_payload_B[0]_i_1 
       (.I0(video_in_TLAST),
        .I1(\video_in_V_last_V_0_state_reg_n_2_[0] ),
        .I2(video_in_TREADY),
        .I3(video_in_V_last_V_0_sel_wr),
        .I4(video_in_V_last_V_0_payload_B),
        .O(\video_in_V_last_V_0_payload_B[0]_i_1_n_2 ));
  FDRE \video_in_V_last_V_0_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\video_in_V_last_V_0_payload_B[0]_i_1_n_2 ),
        .Q(video_in_V_last_V_0_payload_B),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h78)) 
    video_in_V_last_V_0_sel_rd_i_1
       (.I0(p_150_in),
        .I1(\video_in_V_last_V_0_state_reg_n_2_[0] ),
        .I2(video_in_V_last_V_0_sel),
        .O(video_in_V_last_V_0_sel_rd_i_1_n_2));
  FDRE #(
    .INIT(1'b0)) 
    video_in_V_last_V_0_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(video_in_V_last_V_0_sel_rd_i_1_n_2),
        .Q(video_in_V_last_V_0_sel),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    video_in_V_last_V_0_sel_wr_i_1
       (.I0(video_in_TVALID),
        .I1(video_in_TREADY),
        .I2(video_in_V_last_V_0_sel_wr),
        .O(video_in_V_last_V_0_sel_wr_i_1_n_2));
  FDRE #(
    .INIT(1'b0)) 
    video_in_V_last_V_0_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(video_in_V_last_V_0_sel_wr_i_1_n_2),
        .Q(video_in_V_last_V_0_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hFC4C0000)) 
    \video_in_V_last_V_0_state[0]_i_1 
       (.I0(p_150_in),
        .I1(\video_in_V_last_V_0_state_reg_n_2_[0] ),
        .I2(video_in_TREADY),
        .I3(video_in_TVALID),
        .I4(ap_rst_n),
        .O(\video_in_V_last_V_0_state[0]_i_1_n_2 ));
  LUT1 #(
    .INIT(2'h1)) 
    \video_in_V_last_V_0_state[1]_i_1 
       (.I0(ap_rst_n),
        .O(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFF2F)) 
    \video_in_V_last_V_0_state[1]_i_2 
       (.I0(video_in_TREADY),
        .I1(video_in_TVALID),
        .I2(\video_in_V_last_V_0_state_reg_n_2_[0] ),
        .I3(p_150_in),
        .O(video_in_V_last_V_0_state));
  LUT4 #(
    .INIT(16'h0040)) 
    \video_in_V_last_V_0_state[1]_i_3 
       (.I0(\exitcond_reg_237_reg_n_2_[0] ),
        .I1(ap_enable_reg_pp0_iter1_reg_n_2),
        .I2(ap_CS_fsm_pp0_stage0),
        .I3(ap_block_pp0_stage0_flag00011011),
        .O(p_150_in));
  FDRE #(
    .INIT(1'b0)) 
    \video_in_V_last_V_0_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\video_in_V_last_V_0_state[0]_i_1_n_2 ),
        .Q(\video_in_V_last_V_0_state_reg_n_2_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \video_in_V_last_V_0_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(video_in_V_last_V_0_state),
        .Q(video_in_TREADY),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hFFAE00A2)) 
    \video_in_V_strb_V_0_payload_A[0]_i_1 
       (.I0(video_in_TSTRB[0]),
        .I1(\video_in_V_strb_V_0_state_reg_n_2_[0] ),
        .I2(video_in_V_strb_V_0_ack_in),
        .I3(video_in_V_strb_V_0_sel_wr),
        .I4(video_in_V_strb_V_0_payload_A[0]),
        .O(\video_in_V_strb_V_0_payload_A[0]_i_1_n_2 ));
  LUT5 #(
    .INIT(32'hFFAE00A2)) 
    \video_in_V_strb_V_0_payload_A[1]_i_1 
       (.I0(video_in_TSTRB[1]),
        .I1(\video_in_V_strb_V_0_state_reg_n_2_[0] ),
        .I2(video_in_V_strb_V_0_ack_in),
        .I3(video_in_V_strb_V_0_sel_wr),
        .I4(video_in_V_strb_V_0_payload_A[1]),
        .O(\video_in_V_strb_V_0_payload_A[1]_i_1_n_2 ));
  FDRE \video_in_V_strb_V_0_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\video_in_V_strb_V_0_payload_A[0]_i_1_n_2 ),
        .Q(video_in_V_strb_V_0_payload_A[0]),
        .R(1'b0));
  FDRE \video_in_V_strb_V_0_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\video_in_V_strb_V_0_payload_A[1]_i_1_n_2 ),
        .Q(video_in_V_strb_V_0_payload_A[1]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAEFFA200)) 
    \video_in_V_strb_V_0_payload_B[0]_i_1 
       (.I0(video_in_TSTRB[0]),
        .I1(\video_in_V_strb_V_0_state_reg_n_2_[0] ),
        .I2(video_in_V_strb_V_0_ack_in),
        .I3(video_in_V_strb_V_0_sel_wr),
        .I4(video_in_V_strb_V_0_payload_B[0]),
        .O(\video_in_V_strb_V_0_payload_B[0]_i_1_n_2 ));
  LUT5 #(
    .INIT(32'hAEFFA200)) 
    \video_in_V_strb_V_0_payload_B[1]_i_1 
       (.I0(video_in_TSTRB[1]),
        .I1(\video_in_V_strb_V_0_state_reg_n_2_[0] ),
        .I2(video_in_V_strb_V_0_ack_in),
        .I3(video_in_V_strb_V_0_sel_wr),
        .I4(video_in_V_strb_V_0_payload_B[1]),
        .O(\video_in_V_strb_V_0_payload_B[1]_i_1_n_2 ));
  FDRE \video_in_V_strb_V_0_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\video_in_V_strb_V_0_payload_B[0]_i_1_n_2 ),
        .Q(video_in_V_strb_V_0_payload_B[0]),
        .R(1'b0));
  FDRE \video_in_V_strb_V_0_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\video_in_V_strb_V_0_payload_B[1]_i_1_n_2 ),
        .Q(video_in_V_strb_V_0_payload_B[1]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h78)) 
    video_in_V_strb_V_0_sel_rd_i_1
       (.I0(p_150_in),
        .I1(\video_in_V_strb_V_0_state_reg_n_2_[0] ),
        .I2(video_in_V_strb_V_0_sel),
        .O(video_in_V_strb_V_0_sel_rd_i_1_n_2));
  FDRE #(
    .INIT(1'b0)) 
    video_in_V_strb_V_0_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(video_in_V_strb_V_0_sel_rd_i_1_n_2),
        .Q(video_in_V_strb_V_0_sel),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h78)) 
    video_in_V_strb_V_0_sel_wr_i_1
       (.I0(video_in_TVALID),
        .I1(video_in_V_strb_V_0_ack_in),
        .I2(video_in_V_strb_V_0_sel_wr),
        .O(video_in_V_strb_V_0_sel_wr_i_1_n_2));
  FDRE #(
    .INIT(1'b0)) 
    video_in_V_strb_V_0_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(video_in_V_strb_V_0_sel_wr_i_1_n_2),
        .Q(video_in_V_strb_V_0_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hFC4C0000)) 
    \video_in_V_strb_V_0_state[0]_i_1 
       (.I0(p_150_in),
        .I1(\video_in_V_strb_V_0_state_reg_n_2_[0] ),
        .I2(video_in_V_strb_V_0_ack_in),
        .I3(video_in_TVALID),
        .I4(ap_rst_n),
        .O(\video_in_V_strb_V_0_state[0]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFF2F)) 
    \video_in_V_strb_V_0_state[1]_i_1 
       (.I0(video_in_V_strb_V_0_ack_in),
        .I1(video_in_TVALID),
        .I2(\video_in_V_strb_V_0_state_reg_n_2_[0] ),
        .I3(p_150_in),
        .O(video_in_V_strb_V_0_state));
  FDRE #(
    .INIT(1'b0)) 
    \video_in_V_strb_V_0_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\video_in_V_strb_V_0_state[0]_i_1_n_2 ),
        .Q(\video_in_V_strb_V_0_state_reg_n_2_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \video_in_V_strb_V_0_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(video_in_V_strb_V_0_state),
        .Q(video_in_V_strb_V_0_ack_in),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hFFAE00A2)) 
    \video_in_V_user_V_0_payload_A[0]_i_1 
       (.I0(video_in_TUSER),
        .I1(\video_in_V_user_V_0_state_reg_n_2_[0] ),
        .I2(video_in_V_user_V_0_ack_in),
        .I3(video_in_V_user_V_0_sel_wr),
        .I4(video_in_V_user_V_0_payload_A),
        .O(\video_in_V_user_V_0_payload_A[0]_i_1_n_2 ));
  FDRE \video_in_V_user_V_0_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\video_in_V_user_V_0_payload_A[0]_i_1_n_2 ),
        .Q(video_in_V_user_V_0_payload_A),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAEFFA200)) 
    \video_in_V_user_V_0_payload_B[0]_i_1 
       (.I0(video_in_TUSER),
        .I1(\video_in_V_user_V_0_state_reg_n_2_[0] ),
        .I2(video_in_V_user_V_0_ack_in),
        .I3(video_in_V_user_V_0_sel_wr),
        .I4(video_in_V_user_V_0_payload_B),
        .O(\video_in_V_user_V_0_payload_B[0]_i_1_n_2 ));
  FDRE \video_in_V_user_V_0_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\video_in_V_user_V_0_payload_B[0]_i_1_n_2 ),
        .Q(video_in_V_user_V_0_payload_B),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h78)) 
    video_in_V_user_V_0_sel_rd_i_1
       (.I0(p_150_in),
        .I1(\video_in_V_user_V_0_state_reg_n_2_[0] ),
        .I2(video_in_V_user_V_0_sel),
        .O(video_in_V_user_V_0_sel_rd_i_1_n_2));
  FDRE #(
    .INIT(1'b0)) 
    video_in_V_user_V_0_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(video_in_V_user_V_0_sel_rd_i_1_n_2),
        .Q(video_in_V_user_V_0_sel),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h78)) 
    video_in_V_user_V_0_sel_wr_i_1
       (.I0(video_in_TVALID),
        .I1(video_in_V_user_V_0_ack_in),
        .I2(video_in_V_user_V_0_sel_wr),
        .O(video_in_V_user_V_0_sel_wr_i_1_n_2));
  FDRE #(
    .INIT(1'b0)) 
    video_in_V_user_V_0_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(video_in_V_user_V_0_sel_wr_i_1_n_2),
        .Q(video_in_V_user_V_0_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hFC4C0000)) 
    \video_in_V_user_V_0_state[0]_i_1 
       (.I0(p_150_in),
        .I1(\video_in_V_user_V_0_state_reg_n_2_[0] ),
        .I2(video_in_V_user_V_0_ack_in),
        .I3(video_in_TVALID),
        .I4(ap_rst_n),
        .O(\video_in_V_user_V_0_state[0]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hFF2F)) 
    \video_in_V_user_V_0_state[1]_i_1 
       (.I0(video_in_V_user_V_0_ack_in),
        .I1(video_in_TVALID),
        .I2(\video_in_V_user_V_0_state_reg_n_2_[0] ),
        .I3(p_150_in),
        .O(video_in_V_user_V_0_state));
  FDRE #(
    .INIT(1'b0)) 
    \video_in_V_user_V_0_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\video_in_V_user_V_0_state[0]_i_1_n_2 ),
        .Q(\video_in_V_user_V_0_state_reg_n_2_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \video_in_V_user_V_0_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(video_in_V_user_V_0_state),
        .Q(video_in_V_user_V_0_ack_in),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \video_out_TDATA[0]_INST_0 
       (.I0(video_out_V_data_V_1_payload_B[0]),
        .I1(video_out_V_data_V_1_payload_A[0]),
        .I2(video_out_V_data_V_1_sel),
        .O(video_out_TDATA[0]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \video_out_TDATA[10]_INST_0 
       (.I0(video_out_V_data_V_1_payload_B[10]),
        .I1(video_out_V_data_V_1_payload_A[10]),
        .I2(video_out_V_data_V_1_sel),
        .O(video_out_TDATA[10]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \video_out_TDATA[11]_INST_0 
       (.I0(video_out_V_data_V_1_payload_B[11]),
        .I1(video_out_V_data_V_1_payload_A[11]),
        .I2(video_out_V_data_V_1_sel),
        .O(video_out_TDATA[11]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \video_out_TDATA[12]_INST_0 
       (.I0(video_out_V_data_V_1_payload_B[12]),
        .I1(video_out_V_data_V_1_payload_A[12]),
        .I2(video_out_V_data_V_1_sel),
        .O(video_out_TDATA[12]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \video_out_TDATA[13]_INST_0 
       (.I0(video_out_V_data_V_1_payload_B[13]),
        .I1(video_out_V_data_V_1_payload_A[13]),
        .I2(video_out_V_data_V_1_sel),
        .O(video_out_TDATA[13]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \video_out_TDATA[14]_INST_0 
       (.I0(video_out_V_data_V_1_payload_B[14]),
        .I1(video_out_V_data_V_1_payload_A[14]),
        .I2(video_out_V_data_V_1_sel),
        .O(video_out_TDATA[14]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \video_out_TDATA[15]_INST_0 
       (.I0(video_out_V_data_V_1_payload_B[15]),
        .I1(video_out_V_data_V_1_payload_A[15]),
        .I2(video_out_V_data_V_1_sel),
        .O(video_out_TDATA[15]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \video_out_TDATA[1]_INST_0 
       (.I0(video_out_V_data_V_1_payload_B[1]),
        .I1(video_out_V_data_V_1_payload_A[1]),
        .I2(video_out_V_data_V_1_sel),
        .O(video_out_TDATA[1]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \video_out_TDATA[2]_INST_0 
       (.I0(video_out_V_data_V_1_payload_B[2]),
        .I1(video_out_V_data_V_1_payload_A[2]),
        .I2(video_out_V_data_V_1_sel),
        .O(video_out_TDATA[2]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \video_out_TDATA[3]_INST_0 
       (.I0(video_out_V_data_V_1_payload_B[3]),
        .I1(video_out_V_data_V_1_payload_A[3]),
        .I2(video_out_V_data_V_1_sel),
        .O(video_out_TDATA[3]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \video_out_TDATA[4]_INST_0 
       (.I0(video_out_V_data_V_1_payload_B[4]),
        .I1(video_out_V_data_V_1_payload_A[4]),
        .I2(video_out_V_data_V_1_sel),
        .O(video_out_TDATA[4]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \video_out_TDATA[5]_INST_0 
       (.I0(video_out_V_data_V_1_payload_B[5]),
        .I1(video_out_V_data_V_1_payload_A[5]),
        .I2(video_out_V_data_V_1_sel),
        .O(video_out_TDATA[5]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \video_out_TDATA[6]_INST_0 
       (.I0(video_out_V_data_V_1_payload_B[6]),
        .I1(video_out_V_data_V_1_payload_A[6]),
        .I2(video_out_V_data_V_1_sel),
        .O(video_out_TDATA[6]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \video_out_TDATA[7]_INST_0 
       (.I0(video_out_V_data_V_1_payload_B[7]),
        .I1(video_out_V_data_V_1_payload_A[7]),
        .I2(video_out_V_data_V_1_sel),
        .O(video_out_TDATA[7]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \video_out_TDATA[8]_INST_0 
       (.I0(video_out_V_data_V_1_payload_B[8]),
        .I1(video_out_V_data_V_1_payload_A[8]),
        .I2(video_out_V_data_V_1_sel),
        .O(video_out_TDATA[8]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \video_out_TDATA[9]_INST_0 
       (.I0(video_out_V_data_V_1_payload_B[9]),
        .I1(video_out_V_data_V_1_payload_A[9]),
        .I2(video_out_V_data_V_1_sel),
        .O(video_out_TDATA[9]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \video_out_TKEEP[0]_INST_0 
       (.I0(video_out_V_keep_V_1_payload_B[0]),
        .I1(video_out_V_keep_V_1_sel),
        .I2(video_out_V_keep_V_1_payload_A[0]),
        .O(video_out_TKEEP[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \video_out_TKEEP[1]_INST_0 
       (.I0(video_out_V_keep_V_1_payload_B[1]),
        .I1(video_out_V_keep_V_1_sel),
        .I2(video_out_V_keep_V_1_payload_A[1]),
        .O(video_out_TKEEP[1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \video_out_TLAST[0]_INST_0 
       (.I0(video_out_V_last_V_1_payload_B),
        .I1(video_out_V_last_V_1_sel),
        .I2(video_out_V_last_V_1_payload_A),
        .O(video_out_TLAST));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \video_out_TSTRB[0]_INST_0 
       (.I0(video_out_V_strb_V_1_payload_B[0]),
        .I1(video_out_V_strb_V_1_sel),
        .I2(video_out_V_strb_V_1_payload_A[0]),
        .O(video_out_TSTRB[0]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \video_out_TSTRB[1]_INST_0 
       (.I0(video_out_V_strb_V_1_payload_B[1]),
        .I1(video_out_V_strb_V_1_sel),
        .I2(video_out_V_strb_V_1_payload_A[1]),
        .O(video_out_TSTRB[1]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \video_out_TUSER[0]_INST_0 
       (.I0(video_out_V_user_V_1_payload_B),
        .I1(video_out_V_user_V_1_sel),
        .I2(video_out_V_user_V_1_payload_A),
        .O(video_out_TUSER));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \video_out_V_data_V_1_payload_A[0]_i_1 
       (.I0(video_in_V_data_V_0_payload_B[0]),
        .I1(video_in_V_data_V_0_sel),
        .I2(video_in_V_data_V_0_payload_A[0]),
        .O(\video_out_V_data_V_1_payload_A[0]_i_1_n_2 ));
  LUT5 #(
    .INIT(32'hFFE400E4)) 
    \video_out_V_data_V_1_payload_A[10]_i_1 
       (.I0(video_in_V_data_V_0_sel),
        .I1(video_in_V_data_V_0_payload_A[10]),
        .I2(video_in_V_data_V_0_payload_B[10]),
        .I3(tmp_reg_246),
        .I4(leftover_V_fu_80[2]),
        .O(pixOut_3_fu_207_p3[10]));
  LUT5 #(
    .INIT(32'hFFE400E4)) 
    \video_out_V_data_V_1_payload_A[11]_i_1 
       (.I0(video_in_V_data_V_0_sel),
        .I1(video_in_V_data_V_0_payload_A[11]),
        .I2(video_in_V_data_V_0_payload_B[11]),
        .I3(tmp_reg_246),
        .I4(leftover_V_fu_80[3]),
        .O(pixOut_3_fu_207_p3[11]));
  LUT5 #(
    .INIT(32'hFFE400E4)) 
    \video_out_V_data_V_1_payload_A[12]_i_1 
       (.I0(video_in_V_data_V_0_sel),
        .I1(video_in_V_data_V_0_payload_A[12]),
        .I2(video_in_V_data_V_0_payload_B[12]),
        .I3(tmp_reg_246),
        .I4(leftover_V_fu_80[4]),
        .O(pixOut_3_fu_207_p3[12]));
  LUT5 #(
    .INIT(32'hFFE400E4)) 
    \video_out_V_data_V_1_payload_A[13]_i_1 
       (.I0(video_in_V_data_V_0_sel),
        .I1(video_in_V_data_V_0_payload_A[13]),
        .I2(video_in_V_data_V_0_payload_B[13]),
        .I3(tmp_reg_246),
        .I4(leftover_V_fu_80[5]),
        .O(pixOut_3_fu_207_p3[13]));
  LUT5 #(
    .INIT(32'hFFE400E4)) 
    \video_out_V_data_V_1_payload_A[14]_i_1 
       (.I0(video_in_V_data_V_0_sel),
        .I1(video_in_V_data_V_0_payload_A[14]),
        .I2(video_in_V_data_V_0_payload_B[14]),
        .I3(tmp_reg_246),
        .I4(leftover_V_fu_80[6]),
        .O(pixOut_3_fu_207_p3[14]));
  LUT3 #(
    .INIT(8'h0D)) 
    \video_out_V_data_V_1_payload_A[15]_i_1 
       (.I0(\video_out_V_data_V_1_state_reg_n_2_[0] ),
        .I1(video_out_V_data_V_1_ack_in),
        .I2(video_out_V_data_V_1_sel_wr),
        .O(video_out_V_data_V_1_load_A));
  LUT5 #(
    .INIT(32'hFFE400E4)) 
    \video_out_V_data_V_1_payload_A[15]_i_2 
       (.I0(video_in_V_data_V_0_sel),
        .I1(video_in_V_data_V_0_payload_A[15]),
        .I2(video_in_V_data_V_0_payload_B[15]),
        .I3(tmp_reg_246),
        .I4(leftover_V_fu_80[7]),
        .O(pixOut_3_fu_207_p3[15]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \video_out_V_data_V_1_payload_A[1]_i_1 
       (.I0(video_in_V_data_V_0_payload_B[1]),
        .I1(video_in_V_data_V_0_sel),
        .I2(video_in_V_data_V_0_payload_A[1]),
        .O(\video_out_V_data_V_1_payload_A[1]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \video_out_V_data_V_1_payload_A[2]_i_1 
       (.I0(video_in_V_data_V_0_payload_B[2]),
        .I1(video_in_V_data_V_0_sel),
        .I2(video_in_V_data_V_0_payload_A[2]),
        .O(\video_out_V_data_V_1_payload_A[2]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \video_out_V_data_V_1_payload_A[3]_i_1 
       (.I0(video_in_V_data_V_0_payload_B[3]),
        .I1(video_in_V_data_V_0_sel),
        .I2(video_in_V_data_V_0_payload_A[3]),
        .O(\video_out_V_data_V_1_payload_A[3]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \video_out_V_data_V_1_payload_A[4]_i_1 
       (.I0(video_in_V_data_V_0_payload_B[4]),
        .I1(video_in_V_data_V_0_sel),
        .I2(video_in_V_data_V_0_payload_A[4]),
        .O(\video_out_V_data_V_1_payload_A[4]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \video_out_V_data_V_1_payload_A[5]_i_1 
       (.I0(video_in_V_data_V_0_payload_B[5]),
        .I1(video_in_V_data_V_0_sel),
        .I2(video_in_V_data_V_0_payload_A[5]),
        .O(\video_out_V_data_V_1_payload_A[5]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \video_out_V_data_V_1_payload_A[6]_i_1 
       (.I0(video_in_V_data_V_0_payload_B[6]),
        .I1(video_in_V_data_V_0_sel),
        .I2(video_in_V_data_V_0_payload_A[6]),
        .O(\video_out_V_data_V_1_payload_A[6]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \video_out_V_data_V_1_payload_A[7]_i_1 
       (.I0(video_in_V_data_V_0_payload_B[7]),
        .I1(video_in_V_data_V_0_sel),
        .I2(video_in_V_data_V_0_payload_A[7]),
        .O(\video_out_V_data_V_1_payload_A[7]_i_1_n_2 ));
  LUT5 #(
    .INIT(32'hFFE400E4)) 
    \video_out_V_data_V_1_payload_A[8]_i_1 
       (.I0(video_in_V_data_V_0_sel),
        .I1(video_in_V_data_V_0_payload_A[8]),
        .I2(video_in_V_data_V_0_payload_B[8]),
        .I3(tmp_reg_246),
        .I4(leftover_V_fu_80[0]),
        .O(pixOut_3_fu_207_p3[8]));
  LUT5 #(
    .INIT(32'hFFE400E4)) 
    \video_out_V_data_V_1_payload_A[9]_i_1 
       (.I0(video_in_V_data_V_0_sel),
        .I1(video_in_V_data_V_0_payload_A[9]),
        .I2(video_in_V_data_V_0_payload_B[9]),
        .I3(tmp_reg_246),
        .I4(leftover_V_fu_80[1]),
        .O(pixOut_3_fu_207_p3[9]));
  FDRE \video_out_V_data_V_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(video_out_V_data_V_1_load_A),
        .D(\video_out_V_data_V_1_payload_A[0]_i_1_n_2 ),
        .Q(video_out_V_data_V_1_payload_A[0]),
        .R(1'b0));
  FDRE \video_out_V_data_V_1_payload_A_reg[10] 
       (.C(ap_clk),
        .CE(video_out_V_data_V_1_load_A),
        .D(pixOut_3_fu_207_p3[10]),
        .Q(video_out_V_data_V_1_payload_A[10]),
        .R(1'b0));
  FDRE \video_out_V_data_V_1_payload_A_reg[11] 
       (.C(ap_clk),
        .CE(video_out_V_data_V_1_load_A),
        .D(pixOut_3_fu_207_p3[11]),
        .Q(video_out_V_data_V_1_payload_A[11]),
        .R(1'b0));
  FDRE \video_out_V_data_V_1_payload_A_reg[12] 
       (.C(ap_clk),
        .CE(video_out_V_data_V_1_load_A),
        .D(pixOut_3_fu_207_p3[12]),
        .Q(video_out_V_data_V_1_payload_A[12]),
        .R(1'b0));
  FDRE \video_out_V_data_V_1_payload_A_reg[13] 
       (.C(ap_clk),
        .CE(video_out_V_data_V_1_load_A),
        .D(pixOut_3_fu_207_p3[13]),
        .Q(video_out_V_data_V_1_payload_A[13]),
        .R(1'b0));
  FDRE \video_out_V_data_V_1_payload_A_reg[14] 
       (.C(ap_clk),
        .CE(video_out_V_data_V_1_load_A),
        .D(pixOut_3_fu_207_p3[14]),
        .Q(video_out_V_data_V_1_payload_A[14]),
        .R(1'b0));
  FDRE \video_out_V_data_V_1_payload_A_reg[15] 
       (.C(ap_clk),
        .CE(video_out_V_data_V_1_load_A),
        .D(pixOut_3_fu_207_p3[15]),
        .Q(video_out_V_data_V_1_payload_A[15]),
        .R(1'b0));
  FDRE \video_out_V_data_V_1_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(video_out_V_data_V_1_load_A),
        .D(\video_out_V_data_V_1_payload_A[1]_i_1_n_2 ),
        .Q(video_out_V_data_V_1_payload_A[1]),
        .R(1'b0));
  FDRE \video_out_V_data_V_1_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(video_out_V_data_V_1_load_A),
        .D(\video_out_V_data_V_1_payload_A[2]_i_1_n_2 ),
        .Q(video_out_V_data_V_1_payload_A[2]),
        .R(1'b0));
  FDRE \video_out_V_data_V_1_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(video_out_V_data_V_1_load_A),
        .D(\video_out_V_data_V_1_payload_A[3]_i_1_n_2 ),
        .Q(video_out_V_data_V_1_payload_A[3]),
        .R(1'b0));
  FDRE \video_out_V_data_V_1_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(video_out_V_data_V_1_load_A),
        .D(\video_out_V_data_V_1_payload_A[4]_i_1_n_2 ),
        .Q(video_out_V_data_V_1_payload_A[4]),
        .R(1'b0));
  FDRE \video_out_V_data_V_1_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(video_out_V_data_V_1_load_A),
        .D(\video_out_V_data_V_1_payload_A[5]_i_1_n_2 ),
        .Q(video_out_V_data_V_1_payload_A[5]),
        .R(1'b0));
  FDRE \video_out_V_data_V_1_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(video_out_V_data_V_1_load_A),
        .D(\video_out_V_data_V_1_payload_A[6]_i_1_n_2 ),
        .Q(video_out_V_data_V_1_payload_A[6]),
        .R(1'b0));
  FDRE \video_out_V_data_V_1_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(video_out_V_data_V_1_load_A),
        .D(\video_out_V_data_V_1_payload_A[7]_i_1_n_2 ),
        .Q(video_out_V_data_V_1_payload_A[7]),
        .R(1'b0));
  FDRE \video_out_V_data_V_1_payload_A_reg[8] 
       (.C(ap_clk),
        .CE(video_out_V_data_V_1_load_A),
        .D(pixOut_3_fu_207_p3[8]),
        .Q(video_out_V_data_V_1_payload_A[8]),
        .R(1'b0));
  FDRE \video_out_V_data_V_1_payload_A_reg[9] 
       (.C(ap_clk),
        .CE(video_out_V_data_V_1_load_A),
        .D(pixOut_3_fu_207_p3[9]),
        .Q(video_out_V_data_V_1_payload_A[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hD0)) 
    \video_out_V_data_V_1_payload_B[15]_i_1 
       (.I0(\video_out_V_data_V_1_state_reg_n_2_[0] ),
        .I1(video_out_V_data_V_1_ack_in),
        .I2(video_out_V_data_V_1_sel_wr),
        .O(video_out_V_data_V_1_load_B));
  FDRE \video_out_V_data_V_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(video_out_V_data_V_1_load_B),
        .D(\video_out_V_data_V_1_payload_A[0]_i_1_n_2 ),
        .Q(video_out_V_data_V_1_payload_B[0]),
        .R(1'b0));
  FDRE \video_out_V_data_V_1_payload_B_reg[10] 
       (.C(ap_clk),
        .CE(video_out_V_data_V_1_load_B),
        .D(pixOut_3_fu_207_p3[10]),
        .Q(video_out_V_data_V_1_payload_B[10]),
        .R(1'b0));
  FDRE \video_out_V_data_V_1_payload_B_reg[11] 
       (.C(ap_clk),
        .CE(video_out_V_data_V_1_load_B),
        .D(pixOut_3_fu_207_p3[11]),
        .Q(video_out_V_data_V_1_payload_B[11]),
        .R(1'b0));
  FDRE \video_out_V_data_V_1_payload_B_reg[12] 
       (.C(ap_clk),
        .CE(video_out_V_data_V_1_load_B),
        .D(pixOut_3_fu_207_p3[12]),
        .Q(video_out_V_data_V_1_payload_B[12]),
        .R(1'b0));
  FDRE \video_out_V_data_V_1_payload_B_reg[13] 
       (.C(ap_clk),
        .CE(video_out_V_data_V_1_load_B),
        .D(pixOut_3_fu_207_p3[13]),
        .Q(video_out_V_data_V_1_payload_B[13]),
        .R(1'b0));
  FDRE \video_out_V_data_V_1_payload_B_reg[14] 
       (.C(ap_clk),
        .CE(video_out_V_data_V_1_load_B),
        .D(pixOut_3_fu_207_p3[14]),
        .Q(video_out_V_data_V_1_payload_B[14]),
        .R(1'b0));
  FDRE \video_out_V_data_V_1_payload_B_reg[15] 
       (.C(ap_clk),
        .CE(video_out_V_data_V_1_load_B),
        .D(pixOut_3_fu_207_p3[15]),
        .Q(video_out_V_data_V_1_payload_B[15]),
        .R(1'b0));
  FDRE \video_out_V_data_V_1_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(video_out_V_data_V_1_load_B),
        .D(\video_out_V_data_V_1_payload_A[1]_i_1_n_2 ),
        .Q(video_out_V_data_V_1_payload_B[1]),
        .R(1'b0));
  FDRE \video_out_V_data_V_1_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(video_out_V_data_V_1_load_B),
        .D(\video_out_V_data_V_1_payload_A[2]_i_1_n_2 ),
        .Q(video_out_V_data_V_1_payload_B[2]),
        .R(1'b0));
  FDRE \video_out_V_data_V_1_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(video_out_V_data_V_1_load_B),
        .D(\video_out_V_data_V_1_payload_A[3]_i_1_n_2 ),
        .Q(video_out_V_data_V_1_payload_B[3]),
        .R(1'b0));
  FDRE \video_out_V_data_V_1_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(video_out_V_data_V_1_load_B),
        .D(\video_out_V_data_V_1_payload_A[4]_i_1_n_2 ),
        .Q(video_out_V_data_V_1_payload_B[4]),
        .R(1'b0));
  FDRE \video_out_V_data_V_1_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(video_out_V_data_V_1_load_B),
        .D(\video_out_V_data_V_1_payload_A[5]_i_1_n_2 ),
        .Q(video_out_V_data_V_1_payload_B[5]),
        .R(1'b0));
  FDRE \video_out_V_data_V_1_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(video_out_V_data_V_1_load_B),
        .D(\video_out_V_data_V_1_payload_A[6]_i_1_n_2 ),
        .Q(video_out_V_data_V_1_payload_B[6]),
        .R(1'b0));
  FDRE \video_out_V_data_V_1_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(video_out_V_data_V_1_load_B),
        .D(\video_out_V_data_V_1_payload_A[7]_i_1_n_2 ),
        .Q(video_out_V_data_V_1_payload_B[7]),
        .R(1'b0));
  FDRE \video_out_V_data_V_1_payload_B_reg[8] 
       (.C(ap_clk),
        .CE(video_out_V_data_V_1_load_B),
        .D(pixOut_3_fu_207_p3[8]),
        .Q(video_out_V_data_V_1_payload_B[8]),
        .R(1'b0));
  FDRE \video_out_V_data_V_1_payload_B_reg[9] 
       (.C(ap_clk),
        .CE(video_out_V_data_V_1_load_B),
        .D(pixOut_3_fu_207_p3[9]),
        .Q(video_out_V_data_V_1_payload_B[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h78)) 
    video_out_V_data_V_1_sel_rd_i_1
       (.I0(video_out_TREADY),
        .I1(\video_out_V_data_V_1_state_reg_n_2_[0] ),
        .I2(video_out_V_data_V_1_sel),
        .O(video_out_V_data_V_1_sel_rd_i_1_n_2));
  FDRE #(
    .INIT(1'b0)) 
    video_out_V_data_V_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(video_out_V_data_V_1_sel_rd_i_1_n_2),
        .Q(video_out_V_data_V_1_sel),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h78)) 
    video_out_V_data_V_1_sel_wr_i_1
       (.I0(p_150_in),
        .I1(video_out_V_data_V_1_ack_in),
        .I2(video_out_V_data_V_1_sel_wr),
        .O(video_out_V_data_V_1_sel_wr_i_1_n_2));
  FDRE #(
    .INIT(1'b0)) 
    video_out_V_data_V_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(video_out_V_data_V_1_sel_wr_i_1_n_2),
        .Q(video_out_V_data_V_1_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hDFC00000)) 
    \video_out_V_data_V_1_state[0]_i_1 
       (.I0(video_out_TREADY),
        .I1(p_150_in),
        .I2(video_out_V_data_V_1_ack_in),
        .I3(\video_out_V_data_V_1_state_reg_n_2_[0] ),
        .I4(ap_rst_n),
        .O(\video_out_V_data_V_1_state[0]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFF4F)) 
    \video_out_V_data_V_1_state[1]_i_1 
       (.I0(p_150_in),
        .I1(video_out_V_data_V_1_ack_in),
        .I2(\video_out_V_data_V_1_state_reg_n_2_[0] ),
        .I3(video_out_TREADY),
        .O(\video_out_V_data_V_1_state[1]_i_1_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \video_out_V_data_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\video_out_V_data_V_1_state[0]_i_1_n_2 ),
        .Q(\video_out_V_data_V_1_state_reg_n_2_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \video_out_V_data_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\video_out_V_data_V_1_state[1]_i_1_n_2 ),
        .Q(video_out_V_data_V_1_ack_in),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFFFB8FF0000B800)) 
    \video_out_V_keep_V_1_payload_A[0]_i_1 
       (.I0(video_in_V_keep_V_0_payload_B[0]),
        .I1(video_in_V_keep_V_0_sel),
        .I2(video_in_V_keep_V_0_payload_A[0]),
        .I3(\video_out_V_keep_V_1_payload_A[1]_i_2_n_2 ),
        .I4(video_out_V_keep_V_1_sel_wr),
        .I5(video_out_V_keep_V_1_payload_A[0]),
        .O(\video_out_V_keep_V_1_payload_A[0]_i_1_n_2 ));
  LUT6 #(
    .INIT(64'hFFFFB8FF0000B800)) 
    \video_out_V_keep_V_1_payload_A[1]_i_1 
       (.I0(video_in_V_keep_V_0_payload_B[1]),
        .I1(video_in_V_keep_V_0_sel),
        .I2(video_in_V_keep_V_0_payload_A[1]),
        .I3(\video_out_V_keep_V_1_payload_A[1]_i_2_n_2 ),
        .I4(video_out_V_keep_V_1_sel_wr),
        .I5(video_out_V_keep_V_1_payload_A[1]),
        .O(\video_out_V_keep_V_1_payload_A[1]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \video_out_V_keep_V_1_payload_A[1]_i_2 
       (.I0(video_out_V_keep_V_1_ack_in),
        .I1(\video_out_V_keep_V_1_state_reg_n_2_[0] ),
        .O(\video_out_V_keep_V_1_payload_A[1]_i_2_n_2 ));
  FDRE \video_out_V_keep_V_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\video_out_V_keep_V_1_payload_A[0]_i_1_n_2 ),
        .Q(video_out_V_keep_V_1_payload_A[0]),
        .R(1'b0));
  FDRE \video_out_V_keep_V_1_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\video_out_V_keep_V_1_payload_A[1]_i_1_n_2 ),
        .Q(video_out_V_keep_V_1_payload_A[1]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \video_out_V_keep_V_1_payload_B[0]_i_1 
       (.I0(video_in_V_keep_V_0_payload_B[0]),
        .I1(video_in_V_keep_V_0_sel),
        .I2(video_in_V_keep_V_0_payload_A[0]),
        .I3(\video_out_V_keep_V_1_payload_A[1]_i_2_n_2 ),
        .I4(video_out_V_keep_V_1_sel_wr),
        .I5(video_out_V_keep_V_1_payload_B[0]),
        .O(\video_out_V_keep_V_1_payload_B[0]_i_1_n_2 ));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \video_out_V_keep_V_1_payload_B[1]_i_1 
       (.I0(video_in_V_keep_V_0_payload_B[1]),
        .I1(video_in_V_keep_V_0_sel),
        .I2(video_in_V_keep_V_0_payload_A[1]),
        .I3(\video_out_V_keep_V_1_payload_A[1]_i_2_n_2 ),
        .I4(video_out_V_keep_V_1_sel_wr),
        .I5(video_out_V_keep_V_1_payload_B[1]),
        .O(\video_out_V_keep_V_1_payload_B[1]_i_1_n_2 ));
  FDRE \video_out_V_keep_V_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\video_out_V_keep_V_1_payload_B[0]_i_1_n_2 ),
        .Q(video_out_V_keep_V_1_payload_B[0]),
        .R(1'b0));
  FDRE \video_out_V_keep_V_1_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\video_out_V_keep_V_1_payload_B[1]_i_1_n_2 ),
        .Q(video_out_V_keep_V_1_payload_B[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h78)) 
    video_out_V_keep_V_1_sel_rd_i_1
       (.I0(video_out_TREADY),
        .I1(\video_out_V_keep_V_1_state_reg_n_2_[0] ),
        .I2(video_out_V_keep_V_1_sel),
        .O(video_out_V_keep_V_1_sel_rd_i_1_n_2));
  FDRE #(
    .INIT(1'b0)) 
    video_out_V_keep_V_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(video_out_V_keep_V_1_sel_rd_i_1_n_2),
        .Q(video_out_V_keep_V_1_sel),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h78)) 
    video_out_V_keep_V_1_sel_wr_i_1
       (.I0(p_150_in),
        .I1(video_out_V_keep_V_1_ack_in),
        .I2(video_out_V_keep_V_1_sel_wr),
        .O(video_out_V_keep_V_1_sel_wr_i_1_n_2));
  FDRE #(
    .INIT(1'b0)) 
    video_out_V_keep_V_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(video_out_V_keep_V_1_sel_wr_i_1_n_2),
        .Q(video_out_V_keep_V_1_sel_wr),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hDFC00000)) 
    \video_out_V_keep_V_1_state[0]_i_1 
       (.I0(video_out_TREADY),
        .I1(p_150_in),
        .I2(video_out_V_keep_V_1_ack_in),
        .I3(\video_out_V_keep_V_1_state_reg_n_2_[0] ),
        .I4(ap_rst_n),
        .O(\video_out_V_keep_V_1_state[0]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFF4F)) 
    \video_out_V_keep_V_1_state[1]_i_1 
       (.I0(p_150_in),
        .I1(video_out_V_keep_V_1_ack_in),
        .I2(\video_out_V_keep_V_1_state_reg_n_2_[0] ),
        .I3(video_out_TREADY),
        .O(\video_out_V_keep_V_1_state[1]_i_1_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \video_out_V_keep_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\video_out_V_keep_V_1_state[0]_i_1_n_2 ),
        .Q(\video_out_V_keep_V_1_state_reg_n_2_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \video_out_V_keep_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\video_out_V_keep_V_1_state[1]_i_1_n_2 ),
        .Q(video_out_V_keep_V_1_ack_in),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFFFB8FF0000B800)) 
    \video_out_V_last_V_1_payload_A[0]_i_1 
       (.I0(video_in_V_last_V_0_payload_B),
        .I1(video_in_V_last_V_0_sel),
        .I2(video_in_V_last_V_0_payload_A),
        .I3(\video_out_V_last_V_1_payload_A[0]_i_2_n_2 ),
        .I4(video_out_V_last_V_1_sel_wr),
        .I5(video_out_V_last_V_1_payload_A),
        .O(\video_out_V_last_V_1_payload_A[0]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \video_out_V_last_V_1_payload_A[0]_i_2 
       (.I0(video_out_V_last_V_1_ack_in),
        .I1(video_out_TVALID),
        .O(\video_out_V_last_V_1_payload_A[0]_i_2_n_2 ));
  FDRE \video_out_V_last_V_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\video_out_V_last_V_1_payload_A[0]_i_1_n_2 ),
        .Q(video_out_V_last_V_1_payload_A),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \video_out_V_last_V_1_payload_B[0]_i_1 
       (.I0(video_in_V_last_V_0_payload_B),
        .I1(video_in_V_last_V_0_sel),
        .I2(video_in_V_last_V_0_payload_A),
        .I3(\video_out_V_last_V_1_payload_A[0]_i_2_n_2 ),
        .I4(video_out_V_last_V_1_sel_wr),
        .I5(video_out_V_last_V_1_payload_B),
        .O(\video_out_V_last_V_1_payload_B[0]_i_1_n_2 ));
  FDRE \video_out_V_last_V_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\video_out_V_last_V_1_payload_B[0]_i_1_n_2 ),
        .Q(video_out_V_last_V_1_payload_B),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h78)) 
    video_out_V_last_V_1_sel_rd_i_1
       (.I0(video_out_TREADY),
        .I1(video_out_TVALID),
        .I2(video_out_V_last_V_1_sel),
        .O(video_out_V_last_V_1_sel_rd_i_1_n_2));
  FDRE #(
    .INIT(1'b0)) 
    video_out_V_last_V_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(video_out_V_last_V_1_sel_rd_i_1_n_2),
        .Q(video_out_V_last_V_1_sel),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h78)) 
    video_out_V_last_V_1_sel_wr_i_1
       (.I0(p_150_in),
        .I1(video_out_V_last_V_1_ack_in),
        .I2(video_out_V_last_V_1_sel_wr),
        .O(video_out_V_last_V_1_sel_wr_i_1_n_2));
  FDRE #(
    .INIT(1'b0)) 
    video_out_V_last_V_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(video_out_V_last_V_1_sel_wr_i_1_n_2),
        .Q(video_out_V_last_V_1_sel_wr),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hDFC00000)) 
    \video_out_V_last_V_1_state[0]_i_1 
       (.I0(video_out_TREADY),
        .I1(p_150_in),
        .I2(video_out_V_last_V_1_ack_in),
        .I3(video_out_TVALID),
        .I4(ap_rst_n),
        .O(\video_out_V_last_V_1_state[0]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFF4F)) 
    \video_out_V_last_V_1_state[1]_i_1 
       (.I0(p_150_in),
        .I1(video_out_V_last_V_1_ack_in),
        .I2(video_out_TVALID),
        .I3(video_out_TREADY),
        .O(\video_out_V_last_V_1_state[1]_i_1_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \video_out_V_last_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\video_out_V_last_V_1_state[0]_i_1_n_2 ),
        .Q(video_out_TVALID),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \video_out_V_last_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\video_out_V_last_V_1_state[1]_i_1_n_2 ),
        .Q(video_out_V_last_V_1_ack_in),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFFFB8FF0000B800)) 
    \video_out_V_strb_V_1_payload_A[0]_i_1 
       (.I0(video_in_V_strb_V_0_payload_B[0]),
        .I1(video_in_V_strb_V_0_sel),
        .I2(video_in_V_strb_V_0_payload_A[0]),
        .I3(\video_out_V_strb_V_1_payload_A[1]_i_2_n_2 ),
        .I4(video_out_V_strb_V_1_sel_wr),
        .I5(video_out_V_strb_V_1_payload_A[0]),
        .O(\video_out_V_strb_V_1_payload_A[0]_i_1_n_2 ));
  LUT6 #(
    .INIT(64'hFFFFB8FF0000B800)) 
    \video_out_V_strb_V_1_payload_A[1]_i_1 
       (.I0(video_in_V_strb_V_0_payload_B[1]),
        .I1(video_in_V_strb_V_0_sel),
        .I2(video_in_V_strb_V_0_payload_A[1]),
        .I3(\video_out_V_strb_V_1_payload_A[1]_i_2_n_2 ),
        .I4(video_out_V_strb_V_1_sel_wr),
        .I5(video_out_V_strb_V_1_payload_A[1]),
        .O(\video_out_V_strb_V_1_payload_A[1]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \video_out_V_strb_V_1_payload_A[1]_i_2 
       (.I0(video_out_V_strb_V_1_ack_in),
        .I1(\video_out_V_strb_V_1_state_reg_n_2_[0] ),
        .O(\video_out_V_strb_V_1_payload_A[1]_i_2_n_2 ));
  FDRE \video_out_V_strb_V_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\video_out_V_strb_V_1_payload_A[0]_i_1_n_2 ),
        .Q(video_out_V_strb_V_1_payload_A[0]),
        .R(1'b0));
  FDRE \video_out_V_strb_V_1_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\video_out_V_strb_V_1_payload_A[1]_i_1_n_2 ),
        .Q(video_out_V_strb_V_1_payload_A[1]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \video_out_V_strb_V_1_payload_B[0]_i_1 
       (.I0(video_in_V_strb_V_0_payload_B[0]),
        .I1(video_in_V_strb_V_0_sel),
        .I2(video_in_V_strb_V_0_payload_A[0]),
        .I3(\video_out_V_strb_V_1_payload_A[1]_i_2_n_2 ),
        .I4(video_out_V_strb_V_1_sel_wr),
        .I5(video_out_V_strb_V_1_payload_B[0]),
        .O(\video_out_V_strb_V_1_payload_B[0]_i_1_n_2 ));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \video_out_V_strb_V_1_payload_B[1]_i_1 
       (.I0(video_in_V_strb_V_0_payload_B[1]),
        .I1(video_in_V_strb_V_0_sel),
        .I2(video_in_V_strb_V_0_payload_A[1]),
        .I3(\video_out_V_strb_V_1_payload_A[1]_i_2_n_2 ),
        .I4(video_out_V_strb_V_1_sel_wr),
        .I5(video_out_V_strb_V_1_payload_B[1]),
        .O(\video_out_V_strb_V_1_payload_B[1]_i_1_n_2 ));
  FDRE \video_out_V_strb_V_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\video_out_V_strb_V_1_payload_B[0]_i_1_n_2 ),
        .Q(video_out_V_strb_V_1_payload_B[0]),
        .R(1'b0));
  FDRE \video_out_V_strb_V_1_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\video_out_V_strb_V_1_payload_B[1]_i_1_n_2 ),
        .Q(video_out_V_strb_V_1_payload_B[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h78)) 
    video_out_V_strb_V_1_sel_rd_i_1
       (.I0(video_out_TREADY),
        .I1(\video_out_V_strb_V_1_state_reg_n_2_[0] ),
        .I2(video_out_V_strb_V_1_sel),
        .O(video_out_V_strb_V_1_sel_rd_i_1_n_2));
  FDRE #(
    .INIT(1'b0)) 
    video_out_V_strb_V_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(video_out_V_strb_V_1_sel_rd_i_1_n_2),
        .Q(video_out_V_strb_V_1_sel),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h78)) 
    video_out_V_strb_V_1_sel_wr_i_1
       (.I0(p_150_in),
        .I1(video_out_V_strb_V_1_ack_in),
        .I2(video_out_V_strb_V_1_sel_wr),
        .O(video_out_V_strb_V_1_sel_wr_i_1_n_2));
  FDRE #(
    .INIT(1'b0)) 
    video_out_V_strb_V_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(video_out_V_strb_V_1_sel_wr_i_1_n_2),
        .Q(video_out_V_strb_V_1_sel_wr),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hDFC00000)) 
    \video_out_V_strb_V_1_state[0]_i_1 
       (.I0(video_out_TREADY),
        .I1(p_150_in),
        .I2(video_out_V_strb_V_1_ack_in),
        .I3(\video_out_V_strb_V_1_state_reg_n_2_[0] ),
        .I4(ap_rst_n),
        .O(\video_out_V_strb_V_1_state[0]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hFF4F)) 
    \video_out_V_strb_V_1_state[1]_i_1 
       (.I0(p_150_in),
        .I1(video_out_V_strb_V_1_ack_in),
        .I2(\video_out_V_strb_V_1_state_reg_n_2_[0] ),
        .I3(video_out_TREADY),
        .O(\video_out_V_strb_V_1_state[1]_i_1_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \video_out_V_strb_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\video_out_V_strb_V_1_state[0]_i_1_n_2 ),
        .Q(\video_out_V_strb_V_1_state_reg_n_2_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \video_out_V_strb_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\video_out_V_strb_V_1_state[1]_i_1_n_2 ),
        .Q(video_out_V_strb_V_1_ack_in),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFFFB8FF0000B800)) 
    \video_out_V_user_V_1_payload_A[0]_i_1 
       (.I0(video_in_V_user_V_0_payload_B),
        .I1(video_in_V_user_V_0_sel),
        .I2(video_in_V_user_V_0_payload_A),
        .I3(\video_out_V_user_V_1_payload_A[0]_i_2_n_2 ),
        .I4(video_out_V_user_V_1_sel_wr),
        .I5(video_out_V_user_V_1_payload_A),
        .O(\video_out_V_user_V_1_payload_A[0]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \video_out_V_user_V_1_payload_A[0]_i_2 
       (.I0(video_out_V_user_V_1_ack_in),
        .I1(\video_out_V_user_V_1_state_reg_n_2_[0] ),
        .O(\video_out_V_user_V_1_payload_A[0]_i_2_n_2 ));
  FDRE \video_out_V_user_V_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\video_out_V_user_V_1_payload_A[0]_i_1_n_2 ),
        .Q(video_out_V_user_V_1_payload_A),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \video_out_V_user_V_1_payload_B[0]_i_1 
       (.I0(video_in_V_user_V_0_payload_B),
        .I1(video_in_V_user_V_0_sel),
        .I2(video_in_V_user_V_0_payload_A),
        .I3(\video_out_V_user_V_1_payload_A[0]_i_2_n_2 ),
        .I4(video_out_V_user_V_1_sel_wr),
        .I5(video_out_V_user_V_1_payload_B),
        .O(\video_out_V_user_V_1_payload_B[0]_i_1_n_2 ));
  FDRE \video_out_V_user_V_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\video_out_V_user_V_1_payload_B[0]_i_1_n_2 ),
        .Q(video_out_V_user_V_1_payload_B),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h78)) 
    video_out_V_user_V_1_sel_rd_i_1
       (.I0(video_out_TREADY),
        .I1(\video_out_V_user_V_1_state_reg_n_2_[0] ),
        .I2(video_out_V_user_V_1_sel),
        .O(video_out_V_user_V_1_sel_rd_i_1_n_2));
  FDRE #(
    .INIT(1'b0)) 
    video_out_V_user_V_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(video_out_V_user_V_1_sel_rd_i_1_n_2),
        .Q(video_out_V_user_V_1_sel),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h78)) 
    video_out_V_user_V_1_sel_wr_i_1
       (.I0(p_150_in),
        .I1(video_out_V_user_V_1_ack_in),
        .I2(video_out_V_user_V_1_sel_wr),
        .O(video_out_V_user_V_1_sel_wr_i_1_n_2));
  FDRE #(
    .INIT(1'b0)) 
    video_out_V_user_V_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(video_out_V_user_V_1_sel_wr_i_1_n_2),
        .Q(video_out_V_user_V_1_sel_wr),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hDFC00000)) 
    \video_out_V_user_V_1_state[0]_i_1 
       (.I0(video_out_TREADY),
        .I1(p_150_in),
        .I2(video_out_V_user_V_1_ack_in),
        .I3(\video_out_V_user_V_1_state_reg_n_2_[0] ),
        .I4(ap_rst_n),
        .O(\video_out_V_user_V_1_state[0]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hFF4F)) 
    \video_out_V_user_V_1_state[1]_i_1 
       (.I0(p_150_in),
        .I1(video_out_V_user_V_1_ack_in),
        .I2(\video_out_V_user_V_1_state_reg_n_2_[0] ),
        .I3(video_out_TREADY),
        .O(\video_out_V_user_V_1_state[1]_i_1_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \video_out_V_user_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\video_out_V_user_V_1_state[0]_i_1_n_2 ),
        .Q(\video_out_V_user_V_1_state_reg_n_2_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \video_out_V_user_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\video_out_V_user_V_1_state[1]_i_1_n_2 ),
        .Q(video_out_V_user_V_1_ack_in),
        .R(ap_rst_n_inv));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_v_cresample_0_0,CrappyButFreeChromaResampler,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "CrappyButFreeChromaResampler,Vivado 2018.1" *) 
(* hls_module = "yes" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (ap_clk,
    ap_rst_n,
    video_in_TVALID,
    video_in_TREADY,
    video_in_TDATA,
    video_in_TLAST,
    video_in_TKEEP,
    video_in_TSTRB,
    video_in_TUSER,
    video_out_TVALID,
    video_out_TREADY,
    video_out_TDATA,
    video_out_TLAST,
    video_out_TKEEP,
    video_out_TSTRB,
    video_out_TUSER);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF video_in:video_out, ASSOCIATED_RESET ap_rst_n, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 142857132, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK1" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RST {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_in TVALID" *) input video_in_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_in TREADY" *) output video_in_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_in TDATA" *) input [23:0]video_in_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_in TLAST" *) input [0:0]video_in_TLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_in TKEEP" *) input [2:0]video_in_TKEEP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_in TSTRB" *) input [2:0]video_in_TSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_in TUSER" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME video_in, SIGNAL_SET 10011111, TDATA_NUM_BYTES 3, TUSER_WIDTH 1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value xilinx.com:video:Y_U_V_444:1.0} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value rows} size {attribs {resolve_type generated dependency active_rows format long minimum {} maximum {}} value 1} stride {attribs {resolve_type generated dependency active_rows_stride format long minimum {} maximum {}} value 24} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value cols} size {attribs {resolve_type generated dependency active_cols format long minimum {} maximum {}} value 1} stride {attribs {resolve_type generated dependency active_cols_stride format long minimum {} maximum {}} value 24} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {field_Y {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value Y} enabled {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency video_data_width format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}} field_U {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value U} enabled {attribs {resolve_type generated dependency video_comp1_enabled format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency video_data_width format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type generated dependency video_comp1_offset format long minimum {} maximum {}} value 8} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}} field_V {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value V} enabled {attribs {resolve_type generated dependency video_comp2_enabled format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency video_data_width format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type generated dependency video_comp2_offset format long minimum {} maximum {}} value 16} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}}}}}} TDATA_WIDTH 24}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 142857132, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK1" *) input [0:0]video_in_TUSER;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_out TVALID" *) output video_out_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_out TREADY" *) input video_out_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_out TDATA" *) output [15:0]video_out_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_out TLAST" *) output [0:0]video_out_TLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_out TKEEP" *) output [1:0]video_out_TKEEP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_out TSTRB" *) output [1:0]video_out_TSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_out TUSER" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME video_out, SIGNAL_SET 10011111, TDATA_NUM_BYTES 2, TUSER_WIDTH 1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 16 TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TUSER_WIDTH 1}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 142857132, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK1" *) output [0:0]video_out_TUSER;

  wire ap_clk;
  wire ap_rst_n;
  wire [23:0]video_in_TDATA;
  wire [2:0]video_in_TKEEP;
  wire [0:0]video_in_TLAST;
  wire video_in_TREADY;
  wire [2:0]video_in_TSTRB;
  wire [0:0]video_in_TUSER;
  wire video_in_TVALID;
  wire [15:0]video_out_TDATA;
  wire [1:0]video_out_TKEEP;
  wire [0:0]video_out_TLAST;
  wire video_out_TREADY;
  wire [1:0]video_out_TSTRB;
  wire [0:0]video_out_TUSER;
  wire video_out_TVALID;

  (* ap_ST_fsm_pp0_stage0 = "4'b0100" *) 
  (* ap_ST_fsm_state1 = "4'b0001" *) 
  (* ap_ST_fsm_state2 = "4'b0010" *) 
  (* ap_ST_fsm_state6 = "4'b1000" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_CrappyButFreeChromaResampler inst
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .video_in_TDATA(video_in_TDATA),
        .video_in_TKEEP(video_in_TKEEP),
        .video_in_TLAST(video_in_TLAST),
        .video_in_TREADY(video_in_TREADY),
        .video_in_TSTRB(video_in_TSTRB),
        .video_in_TUSER(video_in_TUSER),
        .video_in_TVALID(video_in_TVALID),
        .video_out_TDATA(video_out_TDATA),
        .video_out_TKEEP(video_out_TKEEP),
        .video_out_TLAST(video_out_TLAST),
        .video_out_TREADY(video_out_TREADY),
        .video_out_TSTRB(video_out_TSTRB),
        .video_out_TUSER(video_out_TUSER),
        .video_out_TVALID(video_out_TVALID));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
