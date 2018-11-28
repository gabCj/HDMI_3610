# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1 \
    name index \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_index \
    op interface \
    ports { index { I 23 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2 \
    name xDiff \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_xDiff \
    op interface \
    ports { xDiff { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3 \
    name yDiff \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_yDiff \
    op interface \
    ports { yDiff { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4 \
    name Y \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Y \
    op interface \
    ports { m_axi_Y_AWVALID { O 1 bit } m_axi_Y_AWREADY { I 1 bit } m_axi_Y_AWADDR { O 32 vector } m_axi_Y_AWID { O 1 vector } m_axi_Y_AWLEN { O 32 vector } m_axi_Y_AWSIZE { O 3 vector } m_axi_Y_AWBURST { O 2 vector } m_axi_Y_AWLOCK { O 2 vector } m_axi_Y_AWCACHE { O 4 vector } m_axi_Y_AWPROT { O 3 vector } m_axi_Y_AWQOS { O 4 vector } m_axi_Y_AWREGION { O 4 vector } m_axi_Y_AWUSER { O 1 vector } m_axi_Y_WVALID { O 1 bit } m_axi_Y_WREADY { I 1 bit } m_axi_Y_WDATA { O 8 vector } m_axi_Y_WSTRB { O 1 vector } m_axi_Y_WLAST { O 1 bit } m_axi_Y_WID { O 1 vector } m_axi_Y_WUSER { O 1 vector } m_axi_Y_ARVALID { O 1 bit } m_axi_Y_ARREADY { I 1 bit } m_axi_Y_ARADDR { O 32 vector } m_axi_Y_ARID { O 1 vector } m_axi_Y_ARLEN { O 32 vector } m_axi_Y_ARSIZE { O 3 vector } m_axi_Y_ARBURST { O 2 vector } m_axi_Y_ARLOCK { O 2 vector } m_axi_Y_ARCACHE { O 4 vector } m_axi_Y_ARPROT { O 3 vector } m_axi_Y_ARQOS { O 4 vector } m_axi_Y_ARREGION { O 4 vector } m_axi_Y_ARUSER { O 1 vector } m_axi_Y_RVALID { I 1 bit } m_axi_Y_RREADY { O 1 bit } m_axi_Y_RDATA { I 8 vector } m_axi_Y_RLAST { I 1 bit } m_axi_Y_RID { I 1 vector } m_axi_Y_RUSER { I 1 vector } m_axi_Y_RRESP { I 2 vector } m_axi_Y_BVALID { I 1 bit } m_axi_Y_BREADY { O 1 bit } m_axi_Y_BRESP { I 2 vector } m_axi_Y_BID { I 1 vector } m_axi_Y_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5 \
    name Y_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Y_offset \
    op interface \
    ports { Y_offset { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -2 \
    name ap_return \
    type ap_return \
    reset_level 1 \
    sync_rst true \
    corename ap_return \
    op interface \
    ports { ap_return { O 8 vector } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -4 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


