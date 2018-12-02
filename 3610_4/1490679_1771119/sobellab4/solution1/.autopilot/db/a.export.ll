; ModuleID = '/home/gabriel/Documents/INF3610/HDMI_3610/3610_4/1490679_1771119/sobellab4/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sobel_filter_str = internal unnamed_addr constant [13 x i8] c"sobel_filter\00"
@mode3 = internal constant [10 x i8] c"s_axilite\00"
@mode = internal constant [10 x i8] c"s_axilite\00"
@lastLines_lastPixels = internal unnamed_addr constant [21 x i8] c"lastLines_lastPixels\00"
@bundle4 = internal constant [1 x i8] zeroinitializer
@bundle = internal constant [1 x i8] zeroinitializer
@p_str9 = private unnamed_addr constant [14 x i8] c"OperatorLines\00", align 1
@p_str8 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1
@p_str7 = private unnamed_addr constant [6 x i8] c"gmem1\00", align 1
@p_str6 = private unnamed_addr constant [6 x i8] c"slave\00", align 1
@p_str5 = private unnamed_addr constant [6 x i8] c"gmem0\00", align 1
@p_str4 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1
@p_str12 = private unnamed_addr constant [11 x i8] c"lastPixels\00", align 1
@p_str10 = private unnamed_addr constant [13 x i8] c"OperatorRows\00", align 1
@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

define void @sobel_filter(i8* %gmem0, i32* %gmem1, i32 %inter_pix, i32 %out_pix) {
  %out_pix_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %out_pix)
  %tmp = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %out_pix_read, i32 2, i32 31)
  %tmp_3_cast = zext i30 %tmp to i33
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %gmem1), !map !22
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %gmem0), !map !28
  call void (...)* @_ssdm_op_SpecTopModule([13 x i8]* @sobel_filter_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %gmem0, [6 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [6 x i8]* @p_str5, [6 x i8]* @p_str6, [1 x i8]* @p_str, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32 %inter_pix, [10 x i8]* @mode, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @bundle, [6 x i8]* @p_str6, [1 x i8]* @p_str, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %gmem1, [6 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [6 x i8]* @p_str7, [6 x i8]* @p_str6, [1 x i8]* @p_str, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32 %out_pix, [10 x i8]* @mode3, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @bundle4, [6 x i8]* @p_str6, [1 x i8]* @p_str, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str8, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  br label %1

; <label>:1                                       ; preds = %4, %0
  %i = phi i11 [ 0, %0 ], [ %i_1, %4 ]
  %tmp_1 = icmp eq i11 %i, -968
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1080, i64 1080, i64 1080) nounwind
  %i_1 = add i11 %i, 1
  br i1 %tmp_1, label %.preheader.preheader.preheader, label %2

.preheader.preheader.preheader:                   ; preds = %1
  br label %.preheader.preheader

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @p_str9) nounwind
  %tmp_s = call i32 (...)* @_ssdm_op_SpecRegionBegin([14 x i8]* @p_str9) nounwind
  %p_shl1 = call i22 @_ssdm_op_BitConcatenate.i22.i11.i11(i11 %i, i11 0)
  %p_shl1_cast = zext i22 %p_shl1 to i23
  %p_shl2 = call i18 @_ssdm_op_BitConcatenate.i18.i11.i7(i11 %i, i7 0)
  %p_shl2_cast = zext i18 %p_shl2 to i23
  %tmp_2 = sub i23 %p_shl1_cast, %p_shl2_cast
  %tmp_4 = add i23 %tmp_2, -3840
  %tmp_6 = sext i23 %tmp_4 to i32
  %tmp_8_cast = zext i32 %tmp_6 to i33
  %out_pix4_sum = add i33 %tmp_8_cast, %tmp_3_cast
  %out_pix4_sum_cast = zext i33 %out_pix4_sum to i64
  %gmem1_addr = getelementptr i32* %gmem1, i64 %out_pix4_sum_cast
  %gmem1_addr_wr_req = call i1 @_ssdm_op_WriteReq.m_axi.i32P(i32* %gmem1_addr, i32 1920)
  br label %3

; <label>:3                                       ; preds = %._crit_edge, %2
  %j = phi i11 [ 0, %2 ], [ %j_1, %._crit_edge ]
  %tmp_5 = icmp eq i11 %j, -128
  %empty_13 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1920, i64 1920, i64 1920) nounwind
  %j_1 = add i11 %j, 1
  br i1 %tmp_5, label %4, label %._crit_edge

._crit_edge:                                      ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @p_str10) nounwind
  %tmp_9 = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str10) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 2, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  call void @_ssdm_op_Write.m_axi.i32P(i32* %gmem1_addr, i32 0, i4 -1)
  %empty_14 = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str10, i32 %tmp_9) nounwind
  br label %3

; <label>:4                                       ; preds = %3
  %gmem1_addr_wr_resp = call i1 @_ssdm_op_WriteResp.m_axi.i32P(i32* %gmem1_addr)
  %empty_15 = call i32 (...)* @_ssdm_op_SpecRegionEnd([14 x i8]* @p_str9, i32 %tmp_s) nounwind
  br label %1

.preheader.preheader:                             ; preds = %.preheader.preheader.preheader, %BurstBB14
  %indvar_flatten = phi i13 [ %indvar_flatten_next, %BurstBB14 ], [ 0, %.preheader.preheader.preheader ]
  %i2 = phi i2 [ %i2_mid2, %BurstBB14 ], [ 0, %.preheader.preheader.preheader ]
  %j3 = phi i11 [ %j_2, %BurstBB14 ], [ 0, %.preheader.preheader.preheader ]
  %p_shl = call i13 @_ssdm_op_BitConcatenate.i13.i2.i11(i2 %i2, i11 0)
  %p_shl_cast = zext i13 %p_shl to i14
  %p_shl3 = call i9 @_ssdm_op_BitConcatenate.i9.i2.i7(i2 %i2, i7 0)
  %p_shl3_cast = zext i9 %p_shl3 to i14
  %tmp_7 = sub i14 %p_shl_cast, %p_shl3_cast
  %exitcond_flatten = icmp eq i13 %indvar_flatten, -2432
  %indvar_flatten_next = add i13 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %5, label %.preheader

.preheader:                                       ; preds = %.preheader.preheader
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @lastLines_lastPixels)
  %empty_16 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 5760, i64 5760, i64 5760) nounwind
  %tmp_3 = icmp eq i11 %j3, -128
  %i_s = add i2 %i2, 1
  %p_shl_mid1 = call i13 @_ssdm_op_BitConcatenate.i13.i2.i11(i2 %i_s, i11 0)
  %p_shl_cast_mid1 = zext i13 %p_shl_mid1 to i14
  %p_shl3_mid1 = call i9 @_ssdm_op_BitConcatenate.i9.i2.i7(i2 %i_s, i7 0)
  %p_shl3_cast_mid1 = zext i9 %p_shl3_mid1 to i14
  %tmp_7_mid1 = sub i14 %p_shl_cast_mid1, %p_shl3_cast_mid1
  %tmp_7_mid2 = select i1 %tmp_3, i14 %tmp_7_mid1, i14 %tmp_7
  %tmp_25_mid2_v_v = add i14 %tmp_7_mid2, -3840
  %tmp_25_mid2_v = sext i14 %tmp_25_mid2_v_v to i32
  %tmp_25_mid2_cast = zext i32 %tmp_25_mid2_v to i33
  %i2_mid2 = select i1 %tmp_3, i2 %i_s, i2 %i2
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str12) nounwind
  %tmp_8 = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str12) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %out_pix4_sum7 = add i33 %tmp_25_mid2_cast, %tmp_3_cast
  %out_pix4_sum7_cast = zext i33 %out_pix4_sum7 to i64
  %gmem1_addr_1 = getelementptr i32* %gmem1, i64 %out_pix4_sum7_cast
  %tmp_10 = urem i13 %indvar_flatten, 1920
  %tmp_11 = icmp eq i13 %tmp_10, 0
  br i1 %tmp_11, label %ReqBB, label %BurstBB

ReqBB:                                            ; preds = %.preheader
  %gmem1_addr_2_wr_req = call i1 @_ssdm_op_WriteReq.m_axi.i32P(i32* %gmem1_addr_1, i32 1920)
  br label %BurstBB

BurstBB:                                          ; preds = %ReqBB, %.preheader
  call void @_ssdm_op_Write.m_axi.i32P(i32* %gmem1_addr_1, i32 0, i4 -1)
  %empty_17 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str12, i32 %tmp_8) nounwind
  %j3_op = add i11 %j3, 1
  %j_2 = select i1 %tmp_3, i11 1, i11 %j3_op
  %tmp_12 = urem i13 %indvar_flatten_next, 1920
  %tmp_13 = icmp eq i13 %tmp_12, 0
  br i1 %tmp_13, label %RespBB, label %BurstBB14

RespBB:                                           ; preds = %BurstBB
  %gmem1_addr_2_wr_resp = call i1 @_ssdm_op_WriteResp.m_axi.i32P(i32* %gmem1_addr_1)
  br label %BurstBB14

BurstBB14:                                        ; preds = %RespBB, %BurstBB
  br label %.preheader.preheader

; <label>:5                                       ; preds = %.preheader.preheader
  ret void
}

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define i8 @aesl_mux_load_9i8P_i4(i8* nocapture %empty_0, i8* nocapture %empty_1, i8* nocapture %empty_2, i8* nocapture %empty_3, i8* nocapture %empty_4, i8* nocapture %empty_5, i8* nocapture %empty_6, i8* nocapture %empty_7, i8* nocapture %empty_8, i4 %empty) readonly {
entry_ifconv:
  %tmp = call i4 @_ssdm_op_Read.ap_auto.i4(i4 %empty)
  %tmp_14 = call i8 @_ssdm_op_Read.ap_auto.i8P(i8* %empty_8)
  %tmp_15 = call i8 @_ssdm_op_Read.ap_auto.i8P(i8* %empty_0)
  %tmp_16 = call i8 @_ssdm_op_Read.ap_auto.i8P(i8* %empty_1)
  %tmp_17 = call i8 @_ssdm_op_Read.ap_auto.i8P(i8* %empty_2)
  %tmp_18 = call i8 @_ssdm_op_Read.ap_auto.i8P(i8* %empty_3)
  %tmp_19 = call i8 @_ssdm_op_Read.ap_auto.i8P(i8* %empty_4)
  %tmp_20 = call i8 @_ssdm_op_Read.ap_auto.i8P(i8* %empty_5)
  %tmp_21 = call i8 @_ssdm_op_Read.ap_auto.i8P(i8* %empty_6)
  %tmp_22 = call i8 @_ssdm_op_Read.ap_auto.i8P(i8* %empty_7)
  %sel_tmp = icmp eq i4 %tmp, 0
  %sel_tmp2 = icmp eq i4 %tmp, 1
  %sel_tmp4 = icmp eq i4 %tmp, 2
  %sel_tmp6 = icmp eq i4 %tmp, 3
  %sel_tmp8 = icmp eq i4 %tmp, 4
  %sel_tmp1 = icmp eq i4 %tmp, 5
  %sel_tmp3 = icmp eq i4 %tmp, 6
  %sel_tmp5 = icmp eq i4 %tmp, 7
  %newSel = select i1 %sel_tmp5, i8 %tmp_22, i8 %tmp_21
  %or_cond = or i1 %sel_tmp5, %sel_tmp3
  %newSel1 = select i1 %sel_tmp1, i8 %tmp_20, i8 %tmp_19
  %or_cond1 = or i1 %sel_tmp1, %sel_tmp8
  %newSel2 = select i1 %sel_tmp6, i8 %tmp_18, i8 %tmp_17
  %or_cond2 = or i1 %sel_tmp6, %sel_tmp4
  %newSel3 = select i1 %sel_tmp2, i8 %tmp_16, i8 %tmp_15
  %or_cond3 = or i1 %sel_tmp2, %sel_tmp
  %newSel4 = select i1 %or_cond, i8 %newSel, i8 %newSel1
  %or_cond4 = or i1 %or_cond, %or_cond1
  %newSel5 = select i1 %or_cond2, i8 %newSel2, i8 %newSel3
  %or_cond5 = or i1 %or_cond2, %or_cond3
  %newSel6 = select i1 %or_cond4, i8 %newSel4, i8 %newSel5
  %or_cond6 = or i1 %or_cond4, %or_cond5
  %newSel7 = select i1 %or_cond6, i8 %newSel6, i8 %tmp_14
  ret i8 %newSel7
}

define weak i1 @_ssdm_op_WriteResp.m_axi.i32P(i32*) {
entry:
  ret i1 true
}

define weak i1 @_ssdm_op_WriteReq.m_axi.i32P(i32*, i32) {
entry:
  ret i1 true
}

define weak void @_ssdm_op_Write.m_axi.i32P(i32*, i32, i4) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_Read.s_axilite.i32(i32) {
entry:
  ret i32 %0
}

define weak i8 @_ssdm_op_Read.ap_auto.i8P(i8*) {
entry:
  %empty = load i8* %0
  ret i8 %empty
}

define weak i4 @_ssdm_op_Read.ap_auto.i4(i4) {
entry:
  ret i4 %0
}

define weak i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_18 = trunc i32 %empty to i30
  ret i30 %empty_18
}

define weak i9 @_ssdm_op_BitConcatenate.i9.i2.i7(i2, i7) nounwind readnone {
entry:
  %empty = zext i2 %0 to i9
  %empty_19 = zext i7 %1 to i9
  %empty_20 = shl i9 %empty, 7
  %empty_21 = or i9 %empty_20, %empty_19
  ret i9 %empty_21
}

define weak i22 @_ssdm_op_BitConcatenate.i22.i11.i11(i11, i11) nounwind readnone {
entry:
  %empty = zext i11 %0 to i22
  %empty_22 = zext i11 %1 to i22
  %empty_23 = shl i22 %empty, 11
  %empty_24 = or i22 %empty_23, %empty_22
  ret i22 %empty_24
}

define weak i18 @_ssdm_op_BitConcatenate.i18.i11.i7(i11, i7) nounwind readnone {
entry:
  %empty = zext i11 %0 to i18
  %empty_25 = zext i7 %1 to i18
  %empty_26 = shl i18 %empty, 7
  %empty_27 = or i18 %empty_26, %empty_25
  ret i18 %empty_27
}

define weak i13 @_ssdm_op_BitConcatenate.i13.i2.i11(i2, i11) nounwind readnone {
entry:
  %empty = zext i2 %0 to i13
  %empty_28 = zext i11 %1 to i13
  %empty_29 = shl i13 %empty, 11
  %empty_30 = or i13 %empty_29, %empty_28
  ret i13 %empty_30
}

declare void @_ssdm_SpecMemSelectRead(...)

!opencl.kernels = !{!0, !7, !12}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}
!axi4.master.portmap = !{!18, !19}
!axi4.slave.bundlemap = !{!20, !21}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"uint8_t*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"fullIndex", metadata !"image"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !2, metadata !9, metadata !10, metadata !11, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!9 = metadata !{metadata !"kernel_arg_type", metadata !"uint8_t*", metadata !"uint*"}
!10 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!11 = metadata !{metadata !"kernel_arg_name", metadata !"inter_pix", metadata !"out_pix"}
!12 = metadata !{null, metadata !13, metadata !14, metadata !15, metadata !16, metadata !17, metadata !6}
!13 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 1}
!14 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!15 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"uint8_t*"}
!16 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!17 = metadata !{metadata !"kernel_arg_name", metadata !"index", metadata !"xDiff", metadata !"yDiff", metadata !"img_width", metadata !"Y"}
!18 = metadata !{metadata !"gmem0", metadata !"inter_pix", metadata !""}
!19 = metadata !{metadata !"gmem1", metadata !"out_pix", metadata !"WRITEONLY"}
!20 = metadata !{metadata !"inter_pix", metadata !""}
!21 = metadata !{metadata !"out_pix", metadata !""}
!22 = metadata !{metadata !23}
!23 = metadata !{i32 0, i32 31, metadata !24}
!24 = metadata !{metadata !25}
!25 = metadata !{metadata !"out_pix", metadata !26, metadata !"unsigned int", i32 0, i32 31}
!26 = metadata !{metadata !27}
!27 = metadata !{i32 0, i32 2073599, i32 1}
!28 = metadata !{metadata !29}
!29 = metadata !{i32 0, i32 7, metadata !30}
!30 = metadata !{metadata !31}
!31 = metadata !{metadata !"inter_pix", metadata !26, metadata !"unsigned char", i32 0, i32 7}
