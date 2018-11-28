// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.1
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _getVal_HH_
#define _getVal_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct getVal : public sc_module {
    // Port declarations 56
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<23> > index;
    sc_in< sc_lv<2> > xDiff;
    sc_in< sc_lv<2> > yDiff;
    sc_out< sc_logic > m_axi_Y_AWVALID;
    sc_in< sc_logic > m_axi_Y_AWREADY;
    sc_out< sc_lv<32> > m_axi_Y_AWADDR;
    sc_out< sc_lv<1> > m_axi_Y_AWID;
    sc_out< sc_lv<32> > m_axi_Y_AWLEN;
    sc_out< sc_lv<3> > m_axi_Y_AWSIZE;
    sc_out< sc_lv<2> > m_axi_Y_AWBURST;
    sc_out< sc_lv<2> > m_axi_Y_AWLOCK;
    sc_out< sc_lv<4> > m_axi_Y_AWCACHE;
    sc_out< sc_lv<3> > m_axi_Y_AWPROT;
    sc_out< sc_lv<4> > m_axi_Y_AWQOS;
    sc_out< sc_lv<4> > m_axi_Y_AWREGION;
    sc_out< sc_lv<1> > m_axi_Y_AWUSER;
    sc_out< sc_logic > m_axi_Y_WVALID;
    sc_in< sc_logic > m_axi_Y_WREADY;
    sc_out< sc_lv<8> > m_axi_Y_WDATA;
    sc_out< sc_lv<1> > m_axi_Y_WSTRB;
    sc_out< sc_logic > m_axi_Y_WLAST;
    sc_out< sc_lv<1> > m_axi_Y_WID;
    sc_out< sc_lv<1> > m_axi_Y_WUSER;
    sc_out< sc_logic > m_axi_Y_ARVALID;
    sc_in< sc_logic > m_axi_Y_ARREADY;
    sc_out< sc_lv<32> > m_axi_Y_ARADDR;
    sc_out< sc_lv<1> > m_axi_Y_ARID;
    sc_out< sc_lv<32> > m_axi_Y_ARLEN;
    sc_out< sc_lv<3> > m_axi_Y_ARSIZE;
    sc_out< sc_lv<2> > m_axi_Y_ARBURST;
    sc_out< sc_lv<2> > m_axi_Y_ARLOCK;
    sc_out< sc_lv<4> > m_axi_Y_ARCACHE;
    sc_out< sc_lv<3> > m_axi_Y_ARPROT;
    sc_out< sc_lv<4> > m_axi_Y_ARQOS;
    sc_out< sc_lv<4> > m_axi_Y_ARREGION;
    sc_out< sc_lv<1> > m_axi_Y_ARUSER;
    sc_in< sc_logic > m_axi_Y_RVALID;
    sc_out< sc_logic > m_axi_Y_RREADY;
    sc_in< sc_lv<8> > m_axi_Y_RDATA;
    sc_in< sc_logic > m_axi_Y_RLAST;
    sc_in< sc_lv<1> > m_axi_Y_RID;
    sc_in< sc_lv<1> > m_axi_Y_RUSER;
    sc_in< sc_lv<2> > m_axi_Y_RRESP;
    sc_in< sc_logic > m_axi_Y_BVALID;
    sc_out< sc_logic > m_axi_Y_BREADY;
    sc_in< sc_lv<2> > m_axi_Y_BRESP;
    sc_in< sc_lv<1> > m_axi_Y_BID;
    sc_in< sc_lv<1> > m_axi_Y_BUSER;
    sc_in< sc_lv<32> > Y_offset;
    sc_out< sc_lv<8> > ap_return;


    // Module declarations
    getVal(sc_module_name name);
    SC_HAS_PROCESS(getVal);

    ~getVal();

    sc_trace_file* mVcdFile;

    sc_signal< sc_lv<9> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > Y_blk_n_AR;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_logic > Y_blk_n_R;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<32> > Y_addr_reg_150;
    sc_signal< sc_lv<64> > sum_cast_fu_140_p1;
    sc_signal< sc_logic > ap_reg_ioackin_m_axi_Y_ARREADY;
    sc_signal< sc_logic > ap_sig_ioackin_m_axi_Y_ARREADY;
    sc_signal< sc_lv<9> > p_shl2_fu_88_p3;
    sc_signal< sc_lv<13> > p_shl_fu_80_p3;
    sc_signal< sc_lv<13> > p_shl2_cast_fu_96_p1;
    sc_signal< sc_lv<13> > tmp_fu_100_p2;
    sc_signal< sc_lv<13> > xDiff_cast_fu_106_p1;
    sc_signal< sc_lv<13> > tmp1_fu_110_p2;
    sc_signal< sc_lv<23> > tmp1_cast_fu_116_p1;
    sc_signal< sc_lv<23> > tmp_33_fu_120_p2;
    sc_signal< sc_lv<33> > tmp_cast_fu_126_p1;
    sc_signal< sc_lv<33> > sext_cast_fu_130_p1;
    sc_signal< sc_lv<33> > sum_fu_134_p2;
    sc_signal< sc_lv<9> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<9> ap_ST_fsm_state1;
    static const sc_lv<9> ap_ST_fsm_state2;
    static const sc_lv<9> ap_ST_fsm_state3;
    static const sc_lv<9> ap_ST_fsm_state4;
    static const sc_lv<9> ap_ST_fsm_state5;
    static const sc_lv<9> ap_ST_fsm_state6;
    static const sc_lv<9> ap_ST_fsm_state7;
    static const sc_lv<9> ap_ST_fsm_state8;
    static const sc_lv<9> ap_ST_fsm_state9;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<11> ap_const_lv11_0;
    static const sc_lv<7> ap_const_lv7_0;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_Y_blk_n_AR();
    void thread_Y_blk_n_R();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state9();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_return();
    void thread_ap_sig_ioackin_m_axi_Y_ARREADY();
    void thread_m_axi_Y_ARADDR();
    void thread_m_axi_Y_ARBURST();
    void thread_m_axi_Y_ARCACHE();
    void thread_m_axi_Y_ARID();
    void thread_m_axi_Y_ARLEN();
    void thread_m_axi_Y_ARLOCK();
    void thread_m_axi_Y_ARPROT();
    void thread_m_axi_Y_ARQOS();
    void thread_m_axi_Y_ARREGION();
    void thread_m_axi_Y_ARSIZE();
    void thread_m_axi_Y_ARUSER();
    void thread_m_axi_Y_ARVALID();
    void thread_m_axi_Y_AWADDR();
    void thread_m_axi_Y_AWBURST();
    void thread_m_axi_Y_AWCACHE();
    void thread_m_axi_Y_AWID();
    void thread_m_axi_Y_AWLEN();
    void thread_m_axi_Y_AWLOCK();
    void thread_m_axi_Y_AWPROT();
    void thread_m_axi_Y_AWQOS();
    void thread_m_axi_Y_AWREGION();
    void thread_m_axi_Y_AWSIZE();
    void thread_m_axi_Y_AWUSER();
    void thread_m_axi_Y_AWVALID();
    void thread_m_axi_Y_BREADY();
    void thread_m_axi_Y_RREADY();
    void thread_m_axi_Y_WDATA();
    void thread_m_axi_Y_WID();
    void thread_m_axi_Y_WLAST();
    void thread_m_axi_Y_WSTRB();
    void thread_m_axi_Y_WUSER();
    void thread_m_axi_Y_WVALID();
    void thread_p_shl2_cast_fu_96_p1();
    void thread_p_shl2_fu_88_p3();
    void thread_p_shl_fu_80_p3();
    void thread_sext_cast_fu_130_p1();
    void thread_sum_cast_fu_140_p1();
    void thread_sum_fu_134_p2();
    void thread_tmp1_cast_fu_116_p1();
    void thread_tmp1_fu_110_p2();
    void thread_tmp_33_fu_120_p2();
    void thread_tmp_cast_fu_126_p1();
    void thread_tmp_fu_100_p2();
    void thread_xDiff_cast_fu_106_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif