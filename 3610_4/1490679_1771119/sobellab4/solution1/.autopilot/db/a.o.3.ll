; ModuleID = '/home/gabriel/Documents/INF3610/HDMI_3610/3610_4/1490679_1771119/sobellab4/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sobel_filter_str = internal unnamed_addr constant [13 x i8] c"sobel_filter\00" ; [#uses=1 type=[13 x i8]*]
@mode3 = internal constant [10 x i8] c"s_axilite\00" ; [#uses=1 type=[10 x i8]*]
@mode = internal constant [10 x i8] c"s_axilite\00" ; [#uses=1 type=[10 x i8]*]
@lastLines_lastPixels = internal unnamed_addr constant [21 x i8] c"lastLines_lastPixels\00" ; [#uses=1 type=[21 x i8]*]
@bundle4 = internal constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@bundle = internal constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str9 = private unnamed_addr constant [14 x i8] c"OperatorLines\00", align 1 ; [#uses=3 type=[14 x i8]*]
@p_str8 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]
@p_str7 = private unnamed_addr constant [6 x i8] c"gmem1\00", align 1 ; [#uses=1 type=[6 x i8]*]
@p_str6 = private unnamed_addr constant [6 x i8] c"slave\00", align 1 ; [#uses=4 type=[6 x i8]*]
@p_str5 = private unnamed_addr constant [6 x i8] c"gmem0\00", align 1 ; [#uses=1 type=[6 x i8]*]
@p_str4 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1 ; [#uses=2 type=[6 x i8]*]
@p_str12 = private unnamed_addr constant [11 x i8] c"lastPixels\00", align 1 ; [#uses=3 type=[11 x i8]*]
@p_str10 = private unnamed_addr constant [13 x i8] c"OperatorRows\00", align 1 ; [#uses=3 type=[13 x i8]*]
@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=24 type=[1 x i8]*]

; [#uses=0]
define void @sobel_filter(i8* %gmem0, i32* %gmem1, i32 %inter_pix, i32 %out_pix) {
  %out_pix_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %out_pix) ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %out_pix_read}, i64 0, metadata !22), !dbg !38 ; [debug line = 99:60] [debug variable = out_pix]
  %tmp = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %out_pix_read, i32 2, i32 31) ; [#uses=1 type=i30]
  %tmp_3_cast = zext i30 %tmp to i33              ; [#uses=2 type=i33]
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %gmem1), !map !39
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %gmem0), !map !45
  call void (...)* @_ssdm_op_SpecTopModule([13 x i8]* @sobel_filter_str) nounwind
  call void @llvm.dbg.value(metadata !{i32 %inter_pix}, i64 0, metadata !49), !dbg !51 ; [debug line = 99:27] [debug variable = inter_pix]
  call void @llvm.dbg.value(metadata !{i32 %out_pix}, i64 0, metadata !22), !dbg !38 ; [debug line = 99:60] [debug variable = out_pix]
  call void (...)* @_ssdm_op_SpecInterface(i8* %gmem0, [6 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [6 x i8]* @p_str5, [6 x i8]* @p_str6, [1 x i8]* @p_str, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32 %inter_pix, [10 x i8]* @mode, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @bundle, [6 x i8]* @p_str6, [1 x i8]* @p_str, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %gmem1, [6 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [6 x i8]* @p_str7, [6 x i8]* @p_str6, [1 x i8]* @p_str, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32 %out_pix, [10 x i8]* @mode3, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @bundle4, [6 x i8]* @p_str6, [1 x i8]* @p_str, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str8, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind, !dbg !52 ; [debug line = 103:1]
  br label %1, !dbg !54                           ; [debug line = 171:40]

; <label>:1                                       ; preds = %4, %0
  %i = phi i11 [ 0, %0 ], [ %i_1, %4 ]            ; [#uses=4 type=i11]
  %tmp_1 = icmp eq i11 %i, -968, !dbg !54         ; [#uses=1 type=i1] [debug line = 171:40]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1080, i64 1080, i64 1080) nounwind ; [#uses=0 type=i32]
  %i_1 = add i11 %i, 1, !dbg !56                  ; [#uses=1 type=i11] [debug line = 182:7]
  br i1 %tmp_1, label %.preheader.preheader.preheader, label %2, !dbg !54 ; [debug line = 171:40]

.preheader.preheader.preheader:                   ; preds = %1
  br label %.preheader.preheader, !dbg !61        ; [debug line = 223:4]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @p_str9) nounwind, !dbg !66 ; [debug line = 171:58]
  %tmp_s = call i32 (...)* @_ssdm_op_SpecRegionBegin([14 x i8]* @p_str9) nounwind, !dbg !66 ; [#uses=1 type=i32] [debug line = 171:58]
  %p_shl1 = call i22 @_ssdm_op_BitConcatenate.i22.i11.i11(i11 %i, i11 0), !dbg !67 ; [#uses=1 type=i22] [debug line = 175:2]
  %p_shl1_cast = zext i22 %p_shl1 to i23, !dbg !67 ; [#uses=1 type=i23] [debug line = 175:2]
  %p_shl2 = call i18 @_ssdm_op_BitConcatenate.i18.i11.i7(i11 %i, i7 0), !dbg !67 ; [#uses=1 type=i18] [debug line = 175:2]
  %p_shl2_cast = zext i18 %p_shl2 to i23, !dbg !67 ; [#uses=1 type=i23] [debug line = 175:2]
  %tmp_2 = sub i23 %p_shl1_cast, %p_shl2_cast, !dbg !67 ; [#uses=1 type=i23] [debug line = 175:2]
  %tmp_4 = add i23 %tmp_2, -3840, !dbg !68        ; [#uses=1 type=i23] [debug line = 196:5]
  %tmp_6 = sext i23 %tmp_4 to i32, !dbg !68       ; [#uses=1 type=i32] [debug line = 196:5]
  %tmp_8_cast = zext i32 %tmp_6 to i33            ; [#uses=1 type=i33]
  %out_pix4_sum = add i33 %tmp_8_cast, %tmp_3_cast ; [#uses=1 type=i33]
  %out_pix4_sum_cast = zext i33 %out_pix4_sum to i64 ; [#uses=1 type=i64]
  %gmem1_addr = getelementptr i32* %gmem1, i64 %out_pix4_sum_cast ; [#uses=3 type=i32*]
  %gmem1_addr_wr_req = call i1 @_ssdm_op_WriteReq.m_axi.i32P(i32* %gmem1_addr, i32 1920), !dbg !68 ; [#uses=0 type=i1] [debug line = 196:5]
  br label %3, !dbg !69                           ; [debug line = 172:41]

; <label>:3                                       ; preds = %._crit_edge, %2
  %j = phi i11 [ 0, %2 ], [ %j_1, %._crit_edge ]  ; [#uses=2 type=i11]
  %tmp_5 = icmp eq i11 %j, -128, !dbg !69         ; [#uses=1 type=i1] [debug line = 172:41]
  %empty_13 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1920, i64 1920, i64 1920) nounwind ; [#uses=0 type=i32]
  %j_1 = add i11 %j, 1, !dbg !70                  ; [#uses=1 type=i11] [debug line = 172:53]
  br i1 %tmp_5, label %4, label %._crit_edge, !dbg !69 ; [debug line = 172:41]

._crit_edge:                                      ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @p_str10) nounwind, !dbg !71 ; [debug line = 172:59]
  %tmp_9 = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str10) nounwind, !dbg !71 ; [#uses=1 type=i32] [debug line = 172:59]
  call void (...)* @_ssdm_op_SpecPipeline(i32 2, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind, !dbg !72 ; [debug line = 173:1]
  call void @_ssdm_op_Write.m_axi.i32P(i32* %gmem1_addr, i32 0, i4 -1), !dbg !68 ; [debug line = 196:5]
  %empty_14 = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str10, i32 %tmp_9) nounwind, !dbg !73 ; [#uses=0 type=i32] [debug line = 199:5]
  call void @llvm.dbg.value(metadata !{i11 %j_1}, i64 0, metadata !74), !dbg !70 ; [debug line = 172:53] [debug variable = j]
  br label %3, !dbg !70                           ; [debug line = 172:53]

; <label>:4                                       ; preds = %3
  %gmem1_addr_wr_resp = call i1 @_ssdm_op_WriteResp.m_axi.i32P(i32* %gmem1_addr), !dbg !68 ; [#uses=0 type=i1] [debug line = 196:5]
  %empty_15 = call i32 (...)* @_ssdm_op_SpecRegionEnd([14 x i8]* @p_str9, i32 %tmp_s) nounwind, !dbg !75 ; [#uses=0 type=i32] [debug line = 200:4]
  call void @llvm.dbg.value(metadata !{i11 %i_1}, i64 0, metadata !76), !dbg !77 ; [debug line = 171:52] [debug variable = i]
  br label %1, !dbg !77                           ; [debug line = 171:52]

.preheader.preheader:                             ; preds = %BurstBB14, %.preheader.preheader.preheader
  %indvar_flatten = phi i13 [ %indvar_flatten_next, %BurstBB14 ], [ 0, %.preheader.preheader.preheader ] ; [#uses=3 type=i13]
  %i2 = phi i2 [ %i2_mid2, %BurstBB14 ], [ 0, %.preheader.preheader.preheader ] ; [#uses=4 type=i2]
  %j3 = phi i11 [ %j_2, %BurstBB14 ], [ 0, %.preheader.preheader.preheader ] ; [#uses=2 type=i11]
  %p_shl = call i13 @_ssdm_op_BitConcatenate.i13.i2.i11(i2 %i2, i11 0), !dbg !61 ; [#uses=1 type=i13] [debug line = 223:4]
  %p_shl_cast = zext i13 %p_shl to i14, !dbg !61  ; [#uses=1 type=i14] [debug line = 223:4]
  %p_shl3 = call i9 @_ssdm_op_BitConcatenate.i9.i2.i7(i2 %i2, i7 0), !dbg !61 ; [#uses=1 type=i9] [debug line = 223:4]
  %p_shl3_cast = zext i9 %p_shl3 to i14, !dbg !61 ; [#uses=1 type=i14] [debug line = 223:4]
  %tmp_7 = sub i14 %p_shl_cast, %p_shl3_cast, !dbg !61 ; [#uses=1 type=i14] [debug line = 223:4]
  %exitcond_flatten = icmp eq i13 %indvar_flatten, -2432 ; [#uses=1 type=i1]
  %indvar_flatten_next = add i13 %indvar_flatten, 1 ; [#uses=2 type=i13]
  br i1 %exitcond_flatten, label %5, label %.preheader

.preheader:                                       ; preds = %.preheader.preheader
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @lastLines_lastPixels)
  %empty_16 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 5760, i64 5760, i64 5760) nounwind ; [#uses=0 type=i32]
  %tmp_3 = icmp eq i11 %j3, -128, !dbg !78        ; [#uses=3 type=i1] [debug line = 203:38]
  %i_s = add i2 %i2, 1, !dbg !79                  ; [#uses=3 type=i2] [debug line = 209:5]
  %p_shl_mid1 = call i13 @_ssdm_op_BitConcatenate.i13.i2.i11(i2 %i_s, i11 0), !dbg !61 ; [#uses=1 type=i13] [debug line = 223:4]
  %p_shl_cast_mid1 = zext i13 %p_shl_mid1 to i14, !dbg !61 ; [#uses=1 type=i14] [debug line = 223:4]
  %p_shl3_mid1 = call i9 @_ssdm_op_BitConcatenate.i9.i2.i7(i2 %i_s, i7 0), !dbg !61 ; [#uses=1 type=i9] [debug line = 223:4]
  %p_shl3_cast_mid1 = zext i9 %p_shl3_mid1 to i14, !dbg !61 ; [#uses=1 type=i14] [debug line = 223:4]
  %tmp_7_mid1 = sub i14 %p_shl_cast_mid1, %p_shl3_cast_mid1, !dbg !61 ; [#uses=1 type=i14] [debug line = 223:4]
  %tmp_7_mid2 = select i1 %tmp_3, i14 %tmp_7_mid1, i14 %tmp_7, !dbg !61 ; [#uses=1 type=i14] [debug line = 223:4]
  %tmp_25_mid2_v_v = add i14 %tmp_7_mid2, -3840, !dbg !61 ; [#uses=1 type=i14] [debug line = 223:4]
  %tmp_25_mid2_v = sext i14 %tmp_25_mid2_v_v to i32, !dbg !61 ; [#uses=1 type=i32] [debug line = 223:4]
  %tmp_25_mid2_cast = zext i32 %tmp_25_mid2_v to i33 ; [#uses=1 type=i33]
  %i2_mid2 = select i1 %tmp_3, i2 %i_s, i2 %i2    ; [#uses=1 type=i2]
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str12) nounwind, !dbg !81 ; [debug line = 203:56]
  %tmp_8 = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str12) nounwind, !dbg !81 ; [#uses=1 type=i32] [debug line = 203:56]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind, !dbg !82 ; [debug line = 204:1]
  %out_pix4_sum7 = add i33 %tmp_25_mid2_cast, %tmp_3_cast ; [#uses=1 type=i33]
  %out_pix4_sum7_cast = zext i33 %out_pix4_sum7 to i64 ; [#uses=1 type=i64]
  %gmem1_addr_1 = getelementptr i32* %gmem1, i64 %out_pix4_sum7_cast ; [#uses=3 type=i32*]
  %tmp_10 = urem i13 %indvar_flatten, 1920        ; [#uses=1 type=i13]
  %tmp_11 = icmp eq i13 %tmp_10, 0                ; [#uses=1 type=i1]
  br i1 %tmp_11, label %ReqBB, label %BurstBB

ReqBB:                                            ; preds = %.preheader
  %gmem1_addr_2_wr_req = call i1 @_ssdm_op_WriteReq.m_axi.i32P(i32* %gmem1_addr_1, i32 1920), !dbg !61 ; [#uses=0 type=i1] [debug line = 223:4]
  br label %BurstBB

BurstBB:                                          ; preds = %ReqBB, %.preheader
  call void @_ssdm_op_Write.m_axi.i32P(i32* %gmem1_addr_1, i32 0, i4 -1), !dbg !61 ; [debug line = 223:4]
  %empty_17 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str12, i32 %tmp_8) nounwind, !dbg !83 ; [#uses=0 type=i32] [debug line = 225:3]
  %j3_op = add i11 %j3, 1, !dbg !84               ; [#uses=1 type=i11] [debug line = 203:50]
  %j_2 = select i1 %tmp_3, i11 1, i11 %j3_op, !dbg !84 ; [#uses=1 type=i11] [debug line = 203:50]
  call void @llvm.dbg.value(metadata !{i11 %j_2}, i64 0, metadata !85), !dbg !84 ; [debug line = 203:50] [debug variable = j]
  %tmp_12 = urem i13 %indvar_flatten_next, 1920   ; [#uses=1 type=i13]
  %tmp_13 = icmp eq i13 %tmp_12, 0                ; [#uses=1 type=i1]
  br i1 %tmp_13, label %RespBB, label %BurstBB14

RespBB:                                           ; preds = %BurstBB
  %gmem1_addr_2_wr_resp = call i1 @_ssdm_op_WriteResp.m_axi.i32P(i32* %gmem1_addr_1), !dbg !61 ; [#uses=0 type=i1] [debug line = 223:4]
  br label %BurstBB14

BurstBB14:                                        ; preds = %RespBB, %BurstBB
  br label %.preheader.preheader

; <label>:5                                       ; preds = %.preheader.preheader
  ret void, !dbg !86                              ; [debug line = 229:1]
}

; [#uses=1]
declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

; [#uses=6]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define i8 @aesl_mux_load_9i8P_i4(i8* nocapture %empty_0, i8* nocapture %empty_1, i8* nocapture %empty_2, i8* nocapture %empty_3, i8* nocapture %empty_4, i8* nocapture %empty_5, i8* nocapture %empty_6, i8* nocapture %empty_7, i8* nocapture %empty_8, i4 %empty) readonly {
entry_ifconv:
  %tmp = call i4 @_ssdm_op_Read.ap_auto.i4(i4 %empty) ; [#uses=8 type=i4]
  %tmp_14 = call i8 @_ssdm_op_Read.ap_auto.i8P(i8* %empty_8) ; [#uses=1 type=i8]
  %tmp_15 = call i8 @_ssdm_op_Read.ap_auto.i8P(i8* %empty_0) ; [#uses=1 type=i8]
  %tmp_16 = call i8 @_ssdm_op_Read.ap_auto.i8P(i8* %empty_1) ; [#uses=1 type=i8]
  %tmp_17 = call i8 @_ssdm_op_Read.ap_auto.i8P(i8* %empty_2) ; [#uses=1 type=i8]
  %tmp_18 = call i8 @_ssdm_op_Read.ap_auto.i8P(i8* %empty_3) ; [#uses=1 type=i8]
  %tmp_19 = call i8 @_ssdm_op_Read.ap_auto.i8P(i8* %empty_4) ; [#uses=1 type=i8]
  %tmp_20 = call i8 @_ssdm_op_Read.ap_auto.i8P(i8* %empty_5) ; [#uses=1 type=i8]
  %tmp_21 = call i8 @_ssdm_op_Read.ap_auto.i8P(i8* %empty_6) ; [#uses=1 type=i8]
  %tmp_22 = call i8 @_ssdm_op_Read.ap_auto.i8P(i8* %empty_7) ; [#uses=1 type=i8]
  %sel_tmp = icmp eq i4 %tmp, 0                   ; [#uses=1 type=i1]
  %sel_tmp2 = icmp eq i4 %tmp, 1                  ; [#uses=2 type=i1]
  %sel_tmp4 = icmp eq i4 %tmp, 2                  ; [#uses=1 type=i1]
  %sel_tmp6 = icmp eq i4 %tmp, 3                  ; [#uses=2 type=i1]
  %sel_tmp8 = icmp eq i4 %tmp, 4                  ; [#uses=1 type=i1]
  %sel_tmp1 = icmp eq i4 %tmp, 5                  ; [#uses=2 type=i1]
  %sel_tmp3 = icmp eq i4 %tmp, 6                  ; [#uses=1 type=i1]
  %sel_tmp5 = icmp eq i4 %tmp, 7                  ; [#uses=2 type=i1]
  %newSel = select i1 %sel_tmp5, i8 %tmp_22, i8 %tmp_21 ; [#uses=1 type=i8]
  %or_cond = or i1 %sel_tmp5, %sel_tmp3           ; [#uses=2 type=i1]
  %newSel1 = select i1 %sel_tmp1, i8 %tmp_20, i8 %tmp_19 ; [#uses=1 type=i8]
  %or_cond1 = or i1 %sel_tmp1, %sel_tmp8          ; [#uses=1 type=i1]
  %newSel2 = select i1 %sel_tmp6, i8 %tmp_18, i8 %tmp_17 ; [#uses=1 type=i8]
  %or_cond2 = or i1 %sel_tmp6, %sel_tmp4          ; [#uses=2 type=i1]
  %newSel3 = select i1 %sel_tmp2, i8 %tmp_16, i8 %tmp_15 ; [#uses=1 type=i8]
  %or_cond3 = or i1 %sel_tmp2, %sel_tmp           ; [#uses=1 type=i1]
  %newSel4 = select i1 %or_cond, i8 %newSel, i8 %newSel1 ; [#uses=1 type=i8]
  %or_cond4 = or i1 %or_cond, %or_cond1           ; [#uses=2 type=i1]
  %newSel5 = select i1 %or_cond2, i8 %newSel2, i8 %newSel3 ; [#uses=1 type=i8]
  %or_cond5 = or i1 %or_cond2, %or_cond3          ; [#uses=1 type=i1]
  %newSel6 = select i1 %or_cond4, i8 %newSel4, i8 %newSel5 ; [#uses=1 type=i8]
  %or_cond6 = or i1 %or_cond4, %or_cond5          ; [#uses=1 type=i1]
  %newSel7 = select i1 %or_cond6, i8 %newSel6, i8 %tmp_14 ; [#uses=1 type=i8]
  ret i8 %newSel7
}

; [#uses=2]
define weak i1 @_ssdm_op_WriteResp.m_axi.i32P(i32*) {
entry:
  ret i1 true
}

; [#uses=2]
define weak i1 @_ssdm_op_WriteReq.m_axi.i32P(i32*, i32) {
entry:
  ret i1 true
}

; [#uses=2]
define weak void @_ssdm_op_Write.m_axi.i32P(i32*, i32, i4) {
entry:
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=3]
define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

; [#uses=3]
define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

; [#uses=2]
define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

; [#uses=3]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=4]
define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

; [#uses=5]
define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

; [#uses=2]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=1]
define weak i32 @_ssdm_op_Read.s_axilite.i32(i32) {
entry:
  ret i32 %0
}

; [#uses=9]
define weak i8 @_ssdm_op_Read.ap_auto.i8P(i8*) {
entry:
  %empty = load i8* %0                            ; [#uses=1 type=i8]
  ret i8 %empty
}

; [#uses=1]
define weak i4 @_ssdm_op_Read.ap_auto.i4(i4) {
entry:
  ret i4 %0
}

; [#uses=1]
define weak i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_18 = trunc i32 %empty to i30             ; [#uses=1 type=i30]
  ret i30 %empty_18
}

; [#uses=2]
define weak i9 @_ssdm_op_BitConcatenate.i9.i2.i7(i2, i7) nounwind readnone {
entry:
  %empty = zext i2 %0 to i9                       ; [#uses=1 type=i9]
  %empty_19 = zext i7 %1 to i9                    ; [#uses=1 type=i9]
  %empty_20 = shl i9 %empty, 7                    ; [#uses=1 type=i9]
  %empty_21 = or i9 %empty_20, %empty_19          ; [#uses=1 type=i9]
  ret i9 %empty_21
}

; [#uses=1]
define weak i22 @_ssdm_op_BitConcatenate.i22.i11.i11(i11, i11) nounwind readnone {
entry:
  %empty = zext i11 %0 to i22                     ; [#uses=1 type=i22]
  %empty_22 = zext i11 %1 to i22                  ; [#uses=1 type=i22]
  %empty_23 = shl i22 %empty, 11                  ; [#uses=1 type=i22]
  %empty_24 = or i22 %empty_23, %empty_22         ; [#uses=1 type=i22]
  ret i22 %empty_24
}

; [#uses=1]
define weak i18 @_ssdm_op_BitConcatenate.i18.i11.i7(i11, i7) nounwind readnone {
entry:
  %empty = zext i11 %0 to i18                     ; [#uses=1 type=i18]
  %empty_25 = zext i7 %1 to i18                   ; [#uses=1 type=i18]
  %empty_26 = shl i18 %empty, 7                   ; [#uses=1 type=i18]
  %empty_27 = or i18 %empty_26, %empty_25         ; [#uses=1 type=i18]
  ret i18 %empty_27
}

; [#uses=2]
define weak i13 @_ssdm_op_BitConcatenate.i13.i2.i11(i2, i11) nounwind readnone {
entry:
  %empty = zext i2 %0 to i13                      ; [#uses=1 type=i13]
  %empty_28 = zext i11 %1 to i13                  ; [#uses=1 type=i13]
  %empty_29 = shl i13 %empty, 11                  ; [#uses=1 type=i13]
  %empty_30 = or i13 %empty_29, %empty_28         ; [#uses=1 type=i13]
  ret i13 %empty_30
}

; [#uses=0]
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
!22 = metadata !{i32 786689, metadata !23, metadata !"out_pix", null, i32 99, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!23 = metadata !{i32 786478, i32 0, metadata !24, metadata !"sobel_filter", metadata !"sobel_filter", metadata !"_Z12sobel_filterPhPj", metadata !24, i32 99, metadata !25, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !33, i32 100} ; [ DW_TAG_subprogram ]
!24 = metadata !{i32 786473, metadata !"sobellab4/Sobel.cpp", metadata !"/home/gabriel/Documents/INF3610/HDMI_3610/3610_4/1490679_1771119", null} ; [ DW_TAG_file_type ]
!25 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !26, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!26 = metadata !{null, metadata !27, metadata !31}
!27 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !28} ; [ DW_TAG_pointer_type ]
!28 = metadata !{i32 786454, null, metadata !"uint8_t", metadata !24, i32 24, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_typedef ]
!29 = metadata !{i32 786454, null, metadata !"__uint8_t", metadata !24, i32 37, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_typedef ]
!30 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!31 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !32} ; [ DW_TAG_pointer_type ]
!32 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!33 = metadata !{metadata !34}
!34 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!35 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 66355200, i64 32, i32 0, i32 0, metadata !32, metadata !36, i32 0, i32 0} ; [ DW_TAG_array_type ]
!36 = metadata !{metadata !37}
!37 = metadata !{i32 786465, i64 0, i64 2073599}  ; [ DW_TAG_subrange_type ]
!38 = metadata !{i32 99, i32 60, metadata !23, null}
!39 = metadata !{metadata !40}
!40 = metadata !{i32 0, i32 31, metadata !41}
!41 = metadata !{metadata !42}
!42 = metadata !{metadata !"out_pix", metadata !43, metadata !"unsigned int", i32 0, i32 31}
!43 = metadata !{metadata !44}
!44 = metadata !{i32 0, i32 2073599, i32 1}
!45 = metadata !{metadata !46}
!46 = metadata !{i32 0, i32 7, metadata !47}
!47 = metadata !{metadata !48}
!48 = metadata !{metadata !"inter_pix", metadata !43, metadata !"unsigned char", i32 0, i32 7}
!49 = metadata !{i32 786689, metadata !23, metadata !"inter_pix", null, i32 99, metadata !50, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!50 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !28, metadata !36, i32 0, i32 0} ; [ DW_TAG_array_type ]
!51 = metadata !{i32 99, i32 27, metadata !23, null}
!52 = metadata !{i32 103, i32 1, metadata !53, null}
!53 = metadata !{i32 786443, metadata !23, i32 100, i32 1, metadata !24, i32 7} ; [ DW_TAG_lexical_block ]
!54 = metadata !{i32 171, i32 40, metadata !55, null}
!55 = metadata !{i32 786443, metadata !53, i32 171, i32 17, metadata !24, i32 8} ; [ DW_TAG_lexical_block ]
!56 = metadata !{i32 182, i32 7, metadata !57, null}
!57 = metadata !{i32 786443, metadata !58, i32 181, i32 10, metadata !24, i32 13} ; [ DW_TAG_lexical_block ]
!58 = metadata !{i32 786443, metadata !59, i32 172, i32 58, metadata !24, i32 11} ; [ DW_TAG_lexical_block ]
!59 = metadata !{i32 786443, metadata !60, i32 172, i32 18, metadata !24, i32 10} ; [ DW_TAG_lexical_block ]
!60 = metadata !{i32 786443, metadata !55, i32 171, i32 57, metadata !24, i32 9} ; [ DW_TAG_lexical_block ]
!61 = metadata !{i32 223, i32 4, metadata !62, null}
!62 = metadata !{i32 786443, metadata !63, i32 203, i32 55, metadata !24, i32 18} ; [ DW_TAG_lexical_block ]
!63 = metadata !{i32 786443, metadata !64, i32 203, i32 15, metadata !24, i32 17} ; [ DW_TAG_lexical_block ]
!64 = metadata !{i32 786443, metadata !65, i32 202, i32 50, metadata !24, i32 16} ; [ DW_TAG_lexical_block ]
!65 = metadata !{i32 786443, metadata !53, i32 202, i32 13, metadata !24, i32 15} ; [ DW_TAG_lexical_block ]
!66 = metadata !{i32 171, i32 58, metadata !60, null}
!67 = metadata !{i32 175, i32 2, metadata !58, null}
!68 = metadata !{i32 196, i32 5, metadata !58, null}
!69 = metadata !{i32 172, i32 41, metadata !59, null}
!70 = metadata !{i32 172, i32 53, metadata !59, null}
!71 = metadata !{i32 172, i32 59, metadata !58, null}
!72 = metadata !{i32 173, i32 1, metadata !58, null}
!73 = metadata !{i32 199, i32 5, metadata !58, null}
!74 = metadata !{i32 786688, metadata !59, metadata !"j", metadata !24, i32 172, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!75 = metadata !{i32 200, i32 4, metadata !60, null}
!76 = metadata !{i32 786688, metadata !55, metadata !"i", metadata !24, i32 171, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!77 = metadata !{i32 171, i32 52, metadata !55, null}
!78 = metadata !{i32 203, i32 38, metadata !63, null}
!79 = metadata !{i32 209, i32 5, metadata !80, null}
!80 = metadata !{i32 786443, metadata !62, i32 208, i32 9, metadata !24, i32 20} ; [ DW_TAG_lexical_block ]
!81 = metadata !{i32 203, i32 56, metadata !62, null}
!82 = metadata !{i32 204, i32 1, metadata !62, null}
!83 = metadata !{i32 225, i32 3, metadata !62, null}
!84 = metadata !{i32 203, i32 50, metadata !63, null}
!85 = metadata !{i32 786688, metadata !63, metadata !"j", metadata !24, i32 203, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!86 = metadata !{i32 229, i32 1, metadata !53, null}
