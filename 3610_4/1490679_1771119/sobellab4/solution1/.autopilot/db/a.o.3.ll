; ModuleID = 'X:/Bureau/HDMI_3610/3610_4/1490679_1771119/sobellab4/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@sobel_filter_str = internal unnamed_addr constant [13 x i8] c"sobel_filter\00" ; [#uses=1 type=[13 x i8]*]
@mode3 = internal constant [10 x i8] c"s_axilite\00" ; [#uses=1 type=[10 x i8]*]
@mode = internal constant [10 x i8] c"s_axilite\00" ; [#uses=1 type=[10 x i8]*]
@bundle4 = internal constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@bundle = internal constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str9 = private unnamed_addr constant [14 x i8] c"FillCacheRows\00", align 1 ; [#uses=3 type=[14 x i8]*]
@p_str7 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]
@p_str6 = private unnamed_addr constant [6 x i8] c"gmem1\00", align 1 ; [#uses=1 type=[6 x i8]*]
@p_str5 = private unnamed_addr constant [6 x i8] c"slave\00", align 1 ; [#uses=4 type=[6 x i8]*]
@p_str4 = private unnamed_addr constant [6 x i8] c"gmem0\00", align 1 ; [#uses=1 type=[6 x i8]*]
@p_str3 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1 ; [#uses=2 type=[6 x i8]*]
@p_str12 = private unnamed_addr constant [11 x i8] c"FilterCols\00", align 1 ; [#uses=3 type=[11 x i8]*]
@p_str11 = private unnamed_addr constant [11 x i8] c"FilterRows\00", align 1 ; [#uses=3 type=[11 x i8]*]
@p_str10 = private unnamed_addr constant [14 x i8] c"FillCacheCols\00", align 1 ; [#uses=3 type=[14 x i8]*]
@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=24 type=[1 x i8]*]

; [#uses=0]
define void @sobel_filter(i8* %gmem0, i32* %gmem1, i32 %inter_pix, i32 %out_pix) {
  %out_pix_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %out_pix) ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %out_pix_read}, i64 0, metadata !17), !dbg !32 ; [debug line = 55:60] [debug variable = out_pix]
  %inter_pix_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %inter_pix) ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %inter_pix_read}, i64 0, metadata !33), !dbg !35 ; [debug line = 55:27] [debug variable = inter_pix]
  %tmp_1 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %out_pix_read, i32 2, i32 31) ; [#uses=1 type=i30]
  %tmp_1_cast = zext i30 %tmp_1 to i33            ; [#uses=1 type=i33]
  %tmp_27_cast = sext i32 %inter_pix_read to i34  ; [#uses=2 type=i34]
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %gmem1), !map !36
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %gmem0), !map !42
  call void (...)* @_ssdm_op_SpecTopModule([13 x i8]* @sobel_filter_str) nounwind
  %cache_0 = alloca [1920 x i8], align 1          ; [#uses=4 type=[1920 x i8]*]
  %cache_1 = alloca [1920 x i8], align 1          ; [#uses=4 type=[1920 x i8]*]
  %cache_2 = alloca [1920 x i8], align 1          ; [#uses=3 type=[1920 x i8]*]
  %cache_3 = alloca [1920 x i8], align 1          ; [#uses=3 type=[1920 x i8]*]
  call void @llvm.dbg.value(metadata !{i32 %inter_pix}, i64 0, metadata !33), !dbg !35 ; [debug line = 55:27] [debug variable = inter_pix]
  call void @llvm.dbg.value(metadata !{i32 %out_pix}, i64 0, metadata !17), !dbg !32 ; [debug line = 55:60] [debug variable = out_pix]
  call void (...)* @_ssdm_op_SpecInterface(i8* %gmem0, [6 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [6 x i8]* @p_str4, [6 x i8]* @p_str5, [1 x i8]* @p_str, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32 %inter_pix, [10 x i8]* @mode, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @bundle, [6 x i8]* @p_str5, [1 x i8]* @p_str, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %gmem1, [6 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [6 x i8]* @p_str6, [6 x i8]* @p_str5, [1 x i8]* @p_str, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32 %out_pix, [10 x i8]* @mode3, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @bundle4, [6 x i8]* @p_str5, [1 x i8]* @p_str, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str7, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind, !dbg !46 ; [debug line = 59:1]
  call void @llvm.dbg.declare(metadata !{[1920 x i8]* %cache_0}, metadata !48), !dbg !55 ; [debug line = 62:10] [debug variable = cache[0]]
  call void @llvm.dbg.declare(metadata !{[1920 x i8]* %cache_1}, metadata !56), !dbg !55 ; [debug line = 62:10] [debug variable = cache[1]]
  call void @llvm.dbg.declare(metadata !{[1920 x i8]* %cache_2}, metadata !57), !dbg !55 ; [debug line = 62:10] [debug variable = cache[2]]
  call void @llvm.dbg.declare(metadata !{[1920 x i8]* %cache_3}, metadata !58), !dbg !55 ; [debug line = 62:10] [debug variable = cache[3]]
  br label %1, !dbg !59                           ; [debug line = 67:40]

; <label>:1                                       ; preds = %6, %0
  %i = phi i2 [ 0, %0 ], [ %i_1, %6 ]             ; [#uses=4 type=i2]
  %tmp = icmp eq i2 %i, -2, !dbg !59              ; [#uses=1 type=i1] [debug line = 67:40]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2) nounwind ; [#uses=0 type=i32]
  %i_1 = add i2 %i, 1, !dbg !61                   ; [#uses=1 type=i2] [debug line = 67:49]
  br i1 %tmp, label %.preheader.preheader, label %2, !dbg !59 ; [debug line = 67:40]

.preheader.preheader:                             ; preds = %1
  br label %.preheader, !dbg !62                  ; [debug line = 13:34@85:12]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @p_str9) nounwind, !dbg !77 ; [debug line = 67:55]
  %tmp_3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([14 x i8]* @p_str9) nounwind, !dbg !77 ; [#uses=1 type=i32] [debug line = 67:55]
  %tmp_12 = trunc i2 %i to i1                     ; [#uses=2 type=i1]
  %p_shl = call i12 @_ssdm_op_BitConcatenate.i12.i1.i11(i1 %tmp_12, i11 0), !dbg !79 ; [#uses=1 type=i12] [debug line = 71:2]
  %p_shl_cast = zext i12 %p_shl to i13, !dbg !79  ; [#uses=1 type=i13] [debug line = 71:2]
  %p_shl9 = call i8 @_ssdm_op_BitConcatenate.i8.i1.i7(i1 %tmp_12, i7 0), !dbg !79 ; [#uses=1 type=i8] [debug line = 71:2]
  %p_shl9_cast = zext i8 %p_shl9 to i13, !dbg !79 ; [#uses=1 type=i13] [debug line = 71:2]
  %tmp_2 = sub i13 %p_shl_cast, %p_shl9_cast, !dbg !79 ; [#uses=1 type=i13] [debug line = 71:2]
  %cond = icmp eq i2 %i, 0, !dbg !79              ; [#uses=1 type=i1] [debug line = 71:2]
  %tmp_13 = sext i13 %tmp_2 to i32, !dbg !79      ; [#uses=1 type=i32] [debug line = 71:2]
  %tmp_29_cast = zext i32 %tmp_13 to i34          ; [#uses=1 type=i34]
  %inter_pix2_sum = add i34 %tmp_27_cast, %tmp_29_cast ; [#uses=1 type=i34]
  %inter_pix2_sum_cast = sext i34 %inter_pix2_sum to i64 ; [#uses=1 type=i64]
  %gmem0_addr = getelementptr i8* %gmem0, i64 %inter_pix2_sum_cast ; [#uses=2 type=i8*]
  %gmem0_addr_rd_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %gmem0_addr, i32 1920), !dbg !79 ; [#uses=0 type=i1] [debug line = 71:2]
  br label %3, !dbg !82                           ; [debug line = 68:41]

; <label>:3                                       ; preds = %5, %2
  %j = phi i11 [ 0, %2 ], [ %j_1, %5 ]            ; [#uses=3 type=i11]
  %tmp_5 = icmp eq i11 %j, -128, !dbg !82         ; [#uses=1 type=i1] [debug line = 68:41]
  %empty_5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1920, i64 1920, i64 1920) nounwind ; [#uses=0 type=i32]
  %j_1 = add i11 %j, 1, !dbg !83                  ; [#uses=1 type=i11] [debug line = 68:53]
  br i1 %tmp_5, label %6, label %4, !dbg !82      ; [debug line = 68:41]

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @p_str10) nounwind, !dbg !84 ; [debug line = 68:59]
  %tmp_20 = call i32 (...)* @_ssdm_op_SpecRegionBegin([14 x i8]* @p_str10) nounwind, !dbg !84 ; [#uses=1 type=i32] [debug line = 68:59]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind, !dbg !85 ; [debug line = 69:1]
  %gmem0_addr_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %gmem0_addr), !dbg !79 ; [#uses=2 type=i8] [debug line = 71:2]
  %tmp_15 = zext i11 %j to i64, !dbg !79          ; [#uses=2 type=i64] [debug line = 71:2]
  %cache_0_addr = getelementptr [1920 x i8]* %cache_0, i64 0, i64 %tmp_15, !dbg !79 ; [#uses=1 type=i8*] [debug line = 71:2]
  %cache_1_addr = getelementptr [1920 x i8]* %cache_1, i64 0, i64 %tmp_15, !dbg !79 ; [#uses=1 type=i8*] [debug line = 71:2]
  br i1 %cond, label %branch4, label %branch5, !dbg !79 ; [debug line = 71:2]

; <label>:5                                       ; preds = %branch5, %branch4
  %empty_6 = call i32 (...)* @_ssdm_op_SpecRegionEnd([14 x i8]* @p_str10, i32 %tmp_20) nounwind, !dbg !86 ; [#uses=0 type=i32] [debug line = 72:3]
  call void @llvm.dbg.value(metadata !{i11 %j_1}, i64 0, metadata !87), !dbg !83 ; [debug line = 68:53] [debug variable = j]
  br label %3, !dbg !83                           ; [debug line = 68:53]

; <label>:6                                       ; preds = %3
  %empty_7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([14 x i8]* @p_str9, i32 %tmp_3) nounwind, !dbg !88 ; [#uses=0 type=i32] [debug line = 73:2]
  call void @llvm.dbg.value(metadata !{i2 %i_1}, i64 0, metadata !89), !dbg !61 ; [debug line = 67:49] [debug variable = i]
  br label %1, !dbg !61                           ; [debug line = 67:49]

.preheader:                                       ; preds = %9, %.preheader.preheader
  %rows_assign = phi i11 [ %i_2, %9 ], [ 0, %.preheader.preheader ] ; [#uses=9 type=i11]
  call void @llvm.dbg.value(metadata !{i11 %rows_assign}, i64 0, metadata !90) nounwind, !dbg !62 ; [debug line = 13:34@85:12] [debug variable = rows]
  %tmp_4 = icmp eq i11 %rows_assign, -968, !dbg !91 ; [#uses=1 type=i1] [debug line = 76:38]
  %empty_8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1080, i64 1080, i64 1080) nounwind ; [#uses=0 type=i32]
  %i_2 = add i11 %rows_assign, 1, !dbg !92        ; [#uses=1 type=i11] [debug line = 76:50]
  br i1 %tmp_4, label %10, label %7, !dbg !91     ; [debug line = 76:38]

; <label>:7                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str11) nounwind, !dbg !93 ; [debug line = 76:56]
  %tmp_11 = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str11) nounwind, !dbg !93 ; [#uses=1 type=i32] [debug line = 76:56]
  %tmp_6 = icmp eq i11 %rows_assign, 0, !dbg !94  ; [#uses=1 type=i1] [debug line = 81:2]
  %tmp_7 = icmp eq i11 %rows_assign, -969, !dbg !94 ; [#uses=1 type=i1] [debug line = 81:2]
  %p_shl1 = call i22 @_ssdm_op_BitConcatenate.i22.i11.i11(i11 %rows_assign, i11 0), !dbg !95 ; [#uses=1 type=i22] [debug line = 90:5]
  %p_shl1_cast = zext i22 %p_shl1 to i23, !dbg !95 ; [#uses=1 type=i23] [debug line = 90:5]
  %p_shl2 = call i18 @_ssdm_op_BitConcatenate.i18.i11.i7(i11 %rows_assign, i7 0), !dbg !95 ; [#uses=1 type=i18] [debug line = 90:5]
  %p_shl2_cast = zext i18 %p_shl2 to i23, !dbg !95 ; [#uses=1 type=i23] [debug line = 90:5]
  %tmp_8 = sub i23 %p_shl1_cast, %p_shl2_cast, !dbg !95 ; [#uses=1 type=i23] [debug line = 90:5]
  %tmp_14 = trunc i11 %rows_assign to i2          ; [#uses=5 type=i2]
  %tmp_9 = add i11 2, %rows_assign, !dbg !96      ; [#uses=2 type=i11] [debug line = 92:5]
  %tmp_27 = icmp ult i11 %tmp_9, -968, !dbg !96   ; [#uses=1 type=i1] [debug line = 92:5]
  %tmp_28 = add i11 970, %rows_assign, !dbg !96   ; [#uses=1 type=i11] [debug line = 92:5]
  %tmp_s = select i1 %tmp_27, i11 %tmp_9, i11 %tmp_28, !dbg !96 ; [#uses=2 type=i11] [debug line = 92:5]
  %p_shl3 = call i22 @_ssdm_op_BitConcatenate.i22.i11.i11(i11 %tmp_s, i11 0), !dbg !96 ; [#uses=1 type=i22] [debug line = 92:5]
  %p_shl3_cast = zext i22 %p_shl3 to i23, !dbg !96 ; [#uses=1 type=i23] [debug line = 92:5]
  %p_shl4 = call i18 @_ssdm_op_BitConcatenate.i18.i11.i7(i11 %tmp_s, i7 0), !dbg !96 ; [#uses=1 type=i18] [debug line = 92:5]
  %p_shl4_cast = zext i18 %p_shl4 to i23, !dbg !96 ; [#uses=1 type=i23] [debug line = 92:5]
  %tmp_10 = sub i23 %p_shl3_cast, %p_shl4_cast, !dbg !96 ; [#uses=1 type=i23] [debug line = 92:5]
  %tmp_11_t = xor i2 %tmp_14, -2                  ; [#uses=1 type=i2]
  %tmp_34_0_0_t = add i2 -1, %tmp_14              ; [#uses=3 type=i2]
  %tmp_34_0_2_t = add i2 1, %tmp_14               ; [#uses=3 type=i2]
  %tmp_29 = sext i23 %tmp_8 to i32, !dbg !95      ; [#uses=1 type=i32] [debug line = 90:5]
  %tmp_35_cast = zext i32 %tmp_29 to i33, !dbg !96 ; [#uses=1 type=i33] [debug line = 92:5]
  %tmp_30 = sext i23 %tmp_10 to i32, !dbg !96     ; [#uses=1 type=i32] [debug line = 92:5]
  %tmp_46_cast = zext i32 %tmp_30 to i34          ; [#uses=1 type=i34]
  %out_pix4_sum = add i33 %tmp_1_cast, %tmp_35_cast ; [#uses=1 type=i33]
  %out_pix4_sum_cast = zext i33 %out_pix4_sum to i64 ; [#uses=1 type=i64]
  %gmem1_addr = getelementptr i32* %gmem1, i64 %out_pix4_sum_cast ; [#uses=3 type=i32*]
  %inter_pix2_sum6 = add i34 %tmp_27_cast, %tmp_46_cast ; [#uses=1 type=i34]
  %inter_pix2_sum6_cast = sext i34 %inter_pix2_sum6 to i64 ; [#uses=1 type=i64]
  %gmem0_addr_1 = getelementptr i8* %gmem0, i64 %inter_pix2_sum6_cast ; [#uses=2 type=i8*]
  %gmem1_addr_wr_req = call i1 @_ssdm_op_WriteReq.m_axi.i32P(i32* %gmem1_addr, i32 1920), !dbg !95 ; [#uses=0 type=i1] [debug line = 90:5]
  %gmem0_addr_1_rd_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %gmem0_addr_1, i32 1920), !dbg !96 ; [#uses=0 type=i1] [debug line = 92:5]
  br label %8, !dbg !97                           ; [debug line = 77:39]

; <label>:8                                       ; preds = %._crit_edge67, %7
  %cols_assign = phi i11 [ 0, %7 ], [ %j_2, %._crit_edge67 ] ; [#uses=6 type=i11]
  %cols_assign_cast = zext i11 %cols_assign to i12, !dbg !98 ; [#uses=1 type=i12] [debug line = 13:50@85:12]
  call void @llvm.dbg.value(metadata !{i11 %cols_assign}, i64 0, metadata !99) nounwind, !dbg !98 ; [debug line = 13:50@85:12] [debug variable = cols]
  %tmp_16 = icmp eq i11 %cols_assign, -128, !dbg !97 ; [#uses=1 type=i1] [debug line = 77:39]
  %empty_9 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1920, i64 1920, i64 1920) nounwind ; [#uses=0 type=i32]
  %j_2 = add i11 %cols_assign, 1, !dbg !100       ; [#uses=2 type=i11] [debug line = 34:4@85:12]
  br i1 %tmp_16, label %9, label %_ifconv, !dbg !97 ; [debug line = 77:39]

_ifconv:                                          ; preds = %8
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str12) nounwind, !dbg !106 ; [debug line = 77:57]
  %tmp_21 = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str12) nounwind, !dbg !106 ; [#uses=1 type=i32] [debug line = 77:57]
  call void (...)* @_ssdm_op_SpecPipeline(i32 2, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind, !dbg !107 ; [debug line = 78:1]
  %tmp_17 = icmp eq i11 %cols_assign, 0, !dbg !94 ; [#uses=1 type=i1] [debug line = 81:2]
  %tmp_18 = icmp eq i11 %cols_assign, -129, !dbg !94 ; [#uses=1 type=i1] [debug line = 81:2]
  %tmp15 = or i1 %tmp_18, %tmp_6, !dbg !94        ; [#uses=1 type=i1] [debug line = 81:2]
  %tmp16 = or i1 %tmp_17, %tmp_7, !dbg !94        ; [#uses=1 type=i1] [debug line = 81:2]
  %or_cond2 = or i1 %tmp16, %tmp15, !dbg !94      ; [#uses=2 type=i1] [debug line = 81:2]
  %tmp_23 = add i12 -1, %cols_assign_cast, !dbg !100 ; [#uses=1 type=i12] [debug line = 34:4@85:12]
  %tmp_23_cast = sext i12 %tmp_23 to i32, !dbg !100 ; [#uses=1 type=i32] [debug line = 34:4@85:12]
  %tmp_24 = zext i32 %tmp_23_cast to i64, !dbg !100 ; [#uses=4 type=i64] [debug line = 34:4@85:12]
  %cache_0_addr_1 = getelementptr [1920 x i8]* %cache_0, i64 0, i64 %tmp_24 ; [#uses=1 type=i8*]
  %cache_0_load = load i8* %cache_0_addr_1, align 1 ; [#uses=3 type=i8]
  %cache_1_addr_1 = getelementptr [1920 x i8]* %cache_1, i64 0, i64 %tmp_24 ; [#uses=1 type=i8*]
  %cache_1_load = load i8* %cache_1_addr_1, align 1 ; [#uses=3 type=i8]
  %cache_2_addr = getelementptr [1920 x i8]* %cache_2, i64 0, i64 %tmp_24 ; [#uses=1 type=i8*]
  %cache_2_load = load i8* %cache_2_addr, align 1 ; [#uses=3 type=i8]
  %cache_3_addr = getelementptr [1920 x i8]* %cache_3, i64 0, i64 %tmp_24 ; [#uses=1 type=i8*]
  %cache_3_load = load i8* %cache_3_addr, align 1 ; [#uses=3 type=i8]
  %tmp_32 = call i8 @_ssdm_op_Mux.ap_auto.4i8.i2(i8 %cache_0_load, i8 %cache_1_load, i8 %cache_2_load, i8 %cache_3_load, i2 %tmp_34_0_0_t) nounwind ; [#uses=2 type=i8]
  %tmp_361_cast1 = zext i8 %tmp_32 to i9          ; [#uses=1 type=i9]
  %tmp_361_cast = zext i8 %tmp_32 to i11          ; [#uses=1 type=i11]
  %tmp_33 = call i8 @_ssdm_op_Mux.ap_auto.4i8.i2(i8 %cache_0_load, i8 %cache_1_load, i8 %cache_2_load, i8 %cache_3_load, i2 %tmp_14) nounwind ; [#uses=1 type=i8]
  %p_shl5 = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %tmp_33, i1 false), !dbg !100 ; [#uses=1 type=i9] [debug line = 34:4@85:12]
  %p_shl5_cast = zext i9 %p_shl5 to i10, !dbg !100 ; [#uses=1 type=i10] [debug line = 34:4@85:12]
  %tmp_39_0_1 = sub i10 0, %p_shl5_cast, !dbg !100 ; [#uses=1 type=i10] [debug line = 34:4@85:12]
  %tmp_39_0_1_cast = sext i10 %tmp_39_0_1 to i11, !dbg !100 ; [#uses=1 type=i11] [debug line = 34:4@85:12]
  %x_weight_0_1 = sub i11 %tmp_39_0_1_cast, %tmp_361_cast, !dbg !100 ; [#uses=1 type=i11] [debug line = 34:4@85:12]
  %tmp_34 = call i8 @_ssdm_op_Mux.ap_auto.4i8.i2(i8 %cache_0_load, i8 %cache_1_load, i8 %cache_2_load, i8 %cache_3_load, i2 %tmp_34_0_2_t) nounwind ; [#uses=2 type=i8]
  %tmp_36_0_2_cast1 = zext i8 %tmp_34 to i9, !dbg !100 ; [#uses=1 type=i9] [debug line = 34:4@85:12]
  %tmp_36_0_2_cast = zext i8 %tmp_34 to i11, !dbg !100 ; [#uses=1 type=i11] [debug line = 34:4@85:12]
  %x_weight_0_2 = sub i11 %x_weight_0_1, %tmp_36_0_2_cast, !dbg !100 ; [#uses=2 type=i11] [debug line = 34:4@85:12]
  %y_weight_0_2 = sub i9 %tmp_361_cast1, %tmp_36_0_2_cast1, !dbg !108 ; [#uses=1 type=i9] [debug line = 37:4@85:12]
  %y_weight_0_2_cast = sext i9 %y_weight_0_2 to i11, !dbg !108 ; [#uses=1 type=i11] [debug line = 37:4@85:12]
  %tmp_29_1 = zext i11 %cols_assign to i64, !dbg !100 ; [#uses=4 type=i64] [debug line = 34:4@85:12]
  %cache_0_addr_2 = getelementptr [1920 x i8]* %cache_0, i64 0, i64 %tmp_29_1 ; [#uses=2 type=i8*]
  %cache_0_load_1 = load i8* %cache_0_addr_2, align 1 ; [#uses=2 type=i8]
  %cache_1_addr_2 = getelementptr [1920 x i8]* %cache_1, i64 0, i64 %tmp_29_1 ; [#uses=2 type=i8*]
  %cache_1_load_1 = load i8* %cache_1_addr_2, align 1 ; [#uses=2 type=i8]
  %cache_2_addr_1 = getelementptr [1920 x i8]* %cache_2, i64 0, i64 %tmp_29_1 ; [#uses=2 type=i8*]
  %cache_2_load_1 = load i8* %cache_2_addr_1, align 1 ; [#uses=2 type=i8]
  %cache_3_addr_1 = getelementptr [1920 x i8]* %cache_3, i64 0, i64 %tmp_29_1 ; [#uses=2 type=i8*]
  %cache_3_load_1 = load i8* %cache_3_addr_1, align 1 ; [#uses=2 type=i8]
  %tmp_35 = call i8 @_ssdm_op_Mux.ap_auto.4i8.i2(i8 %cache_0_load_1, i8 %cache_1_load_1, i8 %cache_2_load_1, i8 %cache_3_load_1, i2 %tmp_34_0_0_t) nounwind ; [#uses=1 type=i8]
  %tmp_41_1 = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %tmp_35, i1 false), !dbg !108 ; [#uses=1 type=i9] [debug line = 37:4@85:12]
  %tmp_41_1_cast = zext i9 %tmp_41_1 to i11, !dbg !108 ; [#uses=1 type=i11] [debug line = 37:4@85:12]
  %y_weight_1_1 = add i11 %y_weight_0_2_cast, %tmp_41_1_cast, !dbg !108 ; [#uses=1 type=i11] [debug line = 37:4@85:12]
  %tmp_36 = call i8 @_ssdm_op_Mux.ap_auto.4i8.i2(i8 %cache_0_load_1, i8 %cache_1_load_1, i8 %cache_2_load_1, i8 %cache_3_load_1, i2 %tmp_34_0_2_t) nounwind ; [#uses=1 type=i8]
  %p_shl6 = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %tmp_36, i1 false), !dbg !108 ; [#uses=1 type=i9] [debug line = 37:4@85:12]
  %p_shl6_cast = zext i9 %p_shl6 to i11, !dbg !108 ; [#uses=1 type=i11] [debug line = 37:4@85:12]
  %y_weight_1_2 = sub i11 %y_weight_1_1, %p_shl6_cast, !dbg !108 ; [#uses=1 type=i11] [debug line = 37:4@85:12]
  %tmp_29_2 = zext i11 %j_2 to i64, !dbg !100     ; [#uses=4 type=i64] [debug line = 34:4@85:12]
  %cache_0_addr_3 = getelementptr [1920 x i8]* %cache_0, i64 0, i64 %tmp_29_2 ; [#uses=1 type=i8*]
  %cache_0_load_2 = load i8* %cache_0_addr_3, align 1 ; [#uses=3 type=i8]
  %cache_1_addr_3 = getelementptr [1920 x i8]* %cache_1, i64 0, i64 %tmp_29_2 ; [#uses=1 type=i8*]
  %cache_1_load_2 = load i8* %cache_1_addr_3, align 1 ; [#uses=3 type=i8]
  %cache_2_addr_2 = getelementptr [1920 x i8]* %cache_2, i64 0, i64 %tmp_29_2 ; [#uses=1 type=i8*]
  %cache_2_load_2 = load i8* %cache_2_addr_2, align 1 ; [#uses=3 type=i8]
  %cache_3_addr_2 = getelementptr [1920 x i8]* %cache_3, i64 0, i64 %tmp_29_2 ; [#uses=1 type=i8*]
  %cache_3_load_2 = load i8* %cache_3_addr_2, align 1 ; [#uses=3 type=i8]
  %tmp_37 = call i8 @_ssdm_op_Mux.ap_auto.4i8.i2(i8 %cache_0_load_2, i8 %cache_1_load_2, i8 %cache_2_load_2, i8 %cache_3_load_2, i2 %tmp_34_0_0_t) nounwind ; [#uses=3 type=i8]
  %tmp_36_2_cast1 = zext i8 %tmp_37 to i9         ; [#uses=1 type=i9]
  %tmp_36_2_cast = zext i8 %tmp_37 to i11         ; [#uses=1 type=i11]
  %tmp_38 = trunc i11 %x_weight_0_2 to i8         ; [#uses=1 type=i8]
  %tmp_39 = call i8 @_ssdm_op_Mux.ap_auto.4i8.i2(i8 %cache_0_load_2, i8 %cache_1_load_2, i8 %cache_2_load_2, i8 %cache_3_load_2, i2 %tmp_14) nounwind ; [#uses=2 type=i8]
  %tmp_39_2_1 = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %tmp_39, i1 false), !dbg !100 ; [#uses=1 type=i9] [debug line = 34:4@85:12]
  %tmp_39_2_1_cast = zext i9 %tmp_39_2_1 to i11, !dbg !100 ; [#uses=1 type=i11] [debug line = 34:4@85:12]
  %tmp_42 = shl i8 %tmp_39, 1                     ; [#uses=1 type=i8]
  %y_weight_2_1 = add i11 %tmp_36_2_cast, %y_weight_1_2, !dbg !108 ; [#uses=1 type=i11] [debug line = 37:4@85:12]
  %tmp_43 = call i8 @_ssdm_op_Mux.ap_auto.4i8.i2(i8 %cache_0_load_2, i8 %cache_1_load_2, i8 %cache_2_load_2, i8 %cache_3_load_2, i2 %tmp_34_0_2_t) nounwind ; [#uses=3 type=i8]
  %tmp_36_2_2_cast1 = zext i8 %tmp_43 to i9, !dbg !100 ; [#uses=1 type=i9] [debug line = 34:4@85:12]
  %tmp_36_2_2_cast = zext i8 %tmp_43 to i11, !dbg !100 ; [#uses=1 type=i11] [debug line = 34:4@85:12]
  %tmp18 = add i11 %x_weight_0_2, %tmp_39_2_1_cast, !dbg !100 ; [#uses=1 type=i11] [debug line = 34:4@85:12]
  %tmp19 = add i9 %tmp_36_2_2_cast1, %tmp_36_2_cast1, !dbg !100 ; [#uses=1 type=i9] [debug line = 34:4@85:12]
  %tmp19_cast = zext i9 %tmp19 to i11, !dbg !100  ; [#uses=1 type=i11] [debug line = 34:4@85:12]
  %x_weight_2_2 = add i11 %tmp18, %tmp19_cast, !dbg !100 ; [#uses=1 type=i11] [debug line = 34:4@85:12]
  %y_weight_2_2 = sub i11 %y_weight_2_1, %tmp_36_2_2_cast, !dbg !108 ; [#uses=2 type=i11] [debug line = 37:4@85:12]
  %tmp_19 = icmp sgt i11 %x_weight_2_2, 0, !dbg !109 ; [#uses=1 type=i1] [debug line = 41:2@85:12]
  %tmp20 = add i8 %tmp_42, %tmp_37, !dbg !109     ; [#uses=1 type=i8] [debug line = 41:2@85:12]
  %tmp21 = add i8 %tmp_43, %tmp_38, !dbg !109     ; [#uses=1 type=i8] [debug line = 41:2@85:12]
  %tmp_40 = add i8 %tmp20, %tmp21, !dbg !109      ; [#uses=2 type=i8] [debug line = 41:2@85:12]
  %tmp_41 = sub i8 0, %tmp_40, !dbg !109          ; [#uses=1 type=i8] [debug line = 41:2@85:12]
  %tmp_44 = select i1 %tmp_19, i8 %tmp_40, i8 %tmp_41, !dbg !109 ; [#uses=1 type=i8] [debug line = 41:2@85:12]
  %tmp_22 = icmp sgt i11 %y_weight_2_2, 0, !dbg !109 ; [#uses=1 type=i1] [debug line = 41:2@85:12]
  %tmp_45 = trunc i11 %y_weight_2_2 to i8, !dbg !109 ; [#uses=2 type=i8] [debug line = 41:2@85:12]
  %tmp_46 = sub i8 0, %tmp_45, !dbg !109          ; [#uses=1 type=i8] [debug line = 41:2@85:12]
  %tmp_47 = select i1 %tmp_22, i8 %tmp_45, i8 %tmp_46, !dbg !109 ; [#uses=1 type=i8] [debug line = 41:2@85:12]
  %tmp_25 = add i8 %tmp_44, %tmp_47, !dbg !110    ; [#uses=3 type=i8] [debug line = 43:2@85:12]
  %edge_val = xor i8 %tmp_25, -1, !dbg !110       ; [#uses=1 type=i8] [debug line = 43:2@85:12]
  call void @llvm.dbg.value(metadata !{i8 %edge_val}, i64 0, metadata !111) nounwind, !dbg !110 ; [debug line = 43:2@85:12] [debug variable = edge_val]
  %tmp_26 = icmp ult i8 %tmp_25, 55, !dbg !112    ; [#uses=1 type=i1] [debug line = 46:2@85:12]
  %tmp_31 = icmp ugt i8 %tmp_25, -101, !dbg !113  ; [#uses=1 type=i1] [debug line = 48:7@85:12]
  %p_i = select i1 %tmp_31, i8 0, i8 %edge_val, !dbg !113 ; [#uses=1 type=i8] [debug line = 48:7@85:12]
  %sel_tmp1 = xor i1 %or_cond2, true, !dbg !94    ; [#uses=1 type=i1] [debug line = 81:2]
  %sel_tmp2 = and i1 %tmp_26, %sel_tmp1           ; [#uses=2 type=i1]
  %sel_tmp = select i1 %sel_tmp2, i8 -1, i8 0     ; [#uses=1 type=i8]
  %tmp_48 = or i1 %sel_tmp2, %or_cond2            ; [#uses=1 type=i1]
  %val = select i1 %tmp_48, i8 %sel_tmp, i8 %p_i  ; [#uses=4 type=i8]
  %fourWide = call i32 @_ssdm_op_BitConcatenate.i32.i8.i8.i8.i8(i8 %val, i8 %val, i8 %val, i8 %val), !dbg !114 ; [#uses=1 type=i32] [debug line = 89:6]
  call void @llvm.dbg.value(metadata !{i32 %fourWide}, i64 0, metadata !117), !dbg !114 ; [debug line = 89:6] [debug variable = fourWide]
  call void @_ssdm_op_Write.m_axi.i32P(i32* %gmem1_addr, i32 %fourWide, i4 -1), !dbg !95 ; [debug line = 90:5]
  %gmem0_addr_1_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %gmem0_addr_1), !dbg !96 ; [#uses=4 type=i8] [debug line = 92:5]
  switch i2 %tmp_11_t, label %branch3 [
    i2 0, label %branch0
    i2 1, label %branch1
    i2 -2, label %branch2
  ], !dbg !96                                     ; [debug line = 92:5]

._crit_edge67:                                    ; preds = %branch3, %branch2, %branch1, %branch0
  %empty_10 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str12, i32 %tmp_21) nounwind, !dbg !130 ; [#uses=0 type=i32] [debug line = 94:3]
  call void @llvm.dbg.value(metadata !{i11 %j_2}, i64 0, metadata !131), !dbg !132 ; [debug line = 77:51] [debug variable = j]
  br label %8, !dbg !132                          ; [debug line = 77:51]

; <label>:9                                       ; preds = %8
  %gmem1_addr_wr_resp = call i1 @_ssdm_op_WriteResp.m_axi.i32P(i32* %gmem1_addr), !dbg !95 ; [#uses=0 type=i1] [debug line = 90:5]
  %empty_11 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str11, i32 %tmp_11) nounwind, !dbg !133 ; [#uses=0 type=i32] [debug line = 95:2]
  call void @llvm.dbg.value(metadata !{i11 %i_2}, i64 0, metadata !134), !dbg !92 ; [debug line = 76:50] [debug variable = i]
  br label %.preheader, !dbg !92                  ; [debug line = 76:50]

; <label>:10                                      ; preds = %.preheader
  ret void, !dbg !135                             ; [debug line = 98:1]

branch0:                                          ; preds = %_ifconv
  store i8 %gmem0_addr_1_read, i8* %cache_0_addr_2, align 1, !dbg !96 ; [debug line = 92:5]
  br label %._crit_edge67, !dbg !96               ; [debug line = 92:5]

branch1:                                          ; preds = %_ifconv
  store i8 %gmem0_addr_1_read, i8* %cache_1_addr_2, align 1, !dbg !96 ; [debug line = 92:5]
  br label %._crit_edge67, !dbg !96               ; [debug line = 92:5]

branch2:                                          ; preds = %_ifconv
  store i8 %gmem0_addr_1_read, i8* %cache_2_addr_1, align 1, !dbg !96 ; [debug line = 92:5]
  br label %._crit_edge67, !dbg !96               ; [debug line = 92:5]

branch3:                                          ; preds = %_ifconv
  store i8 %gmem0_addr_1_read, i8* %cache_3_addr_1, align 1, !dbg !96 ; [debug line = 92:5]
  br label %._crit_edge67, !dbg !96               ; [debug line = 92:5]

branch4:                                          ; preds = %4
  store i8 %gmem0_addr_read, i8* %cache_0_addr, align 1, !dbg !79 ; [debug line = 71:2]
  br label %5, !dbg !79                           ; [debug line = 71:2]

branch5:                                          ; preds = %4
  store i8 %gmem0_addr_read, i8* %cache_1_addr, align 1, !dbg !79 ; [debug line = 71:2]
  br label %5, !dbg !79                           ; [debug line = 71:2]
}

; [#uses=1]
declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

; [#uses=12]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=4]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
define weak i1 @_ssdm_op_WriteResp.m_axi.i32P(i32*) {
entry:
  ret i1 true
}

; [#uses=1]
define weak i1 @_ssdm_op_WriteReq.m_axi.i32P(i32*, i32) {
entry:
  ret i1 true
}

; [#uses=1]
define weak void @_ssdm_op_Write.m_axi.i32P(i32*, i32, i4) {
entry:
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=4]
define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

; [#uses=4]
define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

; [#uses=2]
define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

; [#uses=4]
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

; [#uses=2]
define weak i1 @_ssdm_op_ReadReq.m_axi.i8P(i8*, i32) {
entry:
  ret i1 true
}

; [#uses=2]
define weak i32 @_ssdm_op_Read.s_axilite.i32(i32) {
entry:
  ret i32 %0
}

; [#uses=2]
define weak i8 @_ssdm_op_Read.m_axi.i8P(i8*) {
entry:
  %empty = load i8* %0                            ; [#uses=1 type=i8]
  ret i8 %empty
}

; [#uses=0]
declare i8 @_ssdm_op_PartSelect.i8.i11.i32.i32(i11, i32, i32) nounwind readnone

; [#uses=0]
declare i7 @_ssdm_op_PartSelect.i7.i8.i32.i32(i8, i32, i32) nounwind readnone

; [#uses=1]
define weak i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_12 = trunc i32 %empty to i30             ; [#uses=1 type=i30]
  ret i30 %empty_12
}

; [#uses=0]
declare i2 @_ssdm_op_PartSelect.i2.i11.i32.i32(i11, i32, i32) nounwind readnone

; [#uses=0]
declare i1 @_ssdm_op_PartSelect.i1.i2.i32.i32(i2, i32, i32) nounwind readnone

; [#uses=8]
define weak i8 @_ssdm_op_Mux.ap_auto.4i8.i2(i8, i8, i8, i8, i2) {
entry:
  switch i2 %4, label %case3 [
    i2 0, label %case0
    i2 1, label %case1
    i2 -2, label %case2
  ]

case0:                                            ; preds = %case3, %case2, %case1, %entry
  %merge = phi i8 [ %0, %entry ], [ %1, %case1 ], [ %2, %case2 ], [ %3, %case3 ] ; [#uses=1 type=i8]
  ret i8 %merge

case1:                                            ; preds = %entry
  br label %case0

case2:                                            ; preds = %entry
  br label %case0

case3:                                            ; preds = %entry
  br label %case0
}

; [#uses=4]
define weak i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8, i1) nounwind readnone {
entry:
  %empty = zext i8 %0 to i9                       ; [#uses=1 type=i9]
  %empty_13 = zext i1 %1 to i9                    ; [#uses=1 type=i9]
  %empty_14 = shl i9 %empty, 1                    ; [#uses=1 type=i9]
  %empty_15 = or i9 %empty_14, %empty_13          ; [#uses=1 type=i9]
  ret i9 %empty_15
}

; [#uses=0]
declare i8 @_ssdm_op_BitConcatenate.i8.i7.i1(i7, i1) nounwind readnone

; [#uses=1]
define weak i8 @_ssdm_op_BitConcatenate.i8.i1.i7(i1, i7) nounwind readnone {
entry:
  %empty = zext i1 %0 to i8                       ; [#uses=1 type=i8]
  %empty_16 = zext i7 %1 to i8                    ; [#uses=1 type=i8]
  %empty_17 = shl i8 %empty, 7                    ; [#uses=1 type=i8]
  %empty_18 = or i8 %empty_17, %empty_16          ; [#uses=1 type=i8]
  ret i8 %empty_18
}

; [#uses=1]
define weak i32 @_ssdm_op_BitConcatenate.i32.i8.i8.i8.i8(i8, i8, i8, i8) nounwind readnone {
entry:
  %empty = zext i8 %2 to i16                      ; [#uses=1 type=i16]
  %empty_19 = zext i8 %3 to i16                   ; [#uses=1 type=i16]
  %empty_20 = shl i16 %empty, 8                   ; [#uses=1 type=i16]
  %empty_21 = or i16 %empty_20, %empty_19         ; [#uses=1 type=i16]
  %empty_22 = zext i8 %1 to i24                   ; [#uses=1 type=i24]
  %empty_23 = zext i16 %empty_21 to i24           ; [#uses=1 type=i24]
  %empty_24 = shl i24 %empty_22, 16               ; [#uses=1 type=i24]
  %empty_25 = or i24 %empty_24, %empty_23         ; [#uses=1 type=i24]
  %empty_26 = zext i8 %0 to i32                   ; [#uses=1 type=i32]
  %empty_27 = zext i24 %empty_25 to i32           ; [#uses=1 type=i32]
  %empty_28 = shl i32 %empty_26, 24               ; [#uses=1 type=i32]
  %empty_29 = or i32 %empty_28, %empty_27         ; [#uses=1 type=i32]
  ret i32 %empty_29
}

; [#uses=2]
define weak i22 @_ssdm_op_BitConcatenate.i22.i11.i11(i11, i11) nounwind readnone {
entry:
  %empty = zext i11 %0 to i22                     ; [#uses=1 type=i22]
  %empty_30 = zext i11 %1 to i22                  ; [#uses=1 type=i22]
  %empty_31 = shl i22 %empty, 11                  ; [#uses=1 type=i22]
  %empty_32 = or i22 %empty_31, %empty_30         ; [#uses=1 type=i22]
  ret i22 %empty_32
}

; [#uses=2]
define weak i18 @_ssdm_op_BitConcatenate.i18.i11.i7(i11, i7) nounwind readnone {
entry:
  %empty = zext i11 %0 to i18                     ; [#uses=1 type=i18]
  %empty_33 = zext i7 %1 to i18                   ; [#uses=1 type=i18]
  %empty_34 = shl i18 %empty, 7                   ; [#uses=1 type=i18]
  %empty_35 = or i18 %empty_34, %empty_33         ; [#uses=1 type=i18]
  ret i18 %empty_35
}

; [#uses=1]
define weak i12 @_ssdm_op_BitConcatenate.i12.i1.i11(i1, i11) nounwind readnone {
entry:
  %empty = zext i1 %0 to i12                      ; [#uses=1 type=i12]
  %empty_36 = zext i11 %1 to i12                  ; [#uses=1 type=i12]
  %empty_37 = shl i12 %empty, 11                  ; [#uses=1 type=i12]
  %empty_38 = or i12 %empty_37, %empty_36         ; [#uses=1 type=i12]
  ret i12 %empty_38
}

!opencl.kernels = !{!0, !7}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}
!axi4.master.portmap = !{!13, !14}
!axi4.slave.bundlemap = !{!15, !16}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int", metadata !"uint8_t [1920]*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const", metadata !"const", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"rows", metadata !"cols", metadata !"image"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"uint8_t*", metadata !"uint*"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"inter_pix", metadata !"out_pix"}
!13 = metadata !{metadata !"gmem0", metadata !"inter_pix", metadata !"READONLY"}
!14 = metadata !{metadata !"gmem1", metadata !"out_pix", metadata !"WRITEONLY"}
!15 = metadata !{metadata !"inter_pix", metadata !""}
!16 = metadata !{metadata !"out_pix", metadata !""}
!17 = metadata !{i32 786689, metadata !18, metadata !"out_pix", null, i32 55, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!18 = metadata !{i32 786478, i32 0, metadata !19, metadata !"sobel_filter", metadata !"sobel_filter", metadata !"_Z12sobel_filterPhPj", metadata !19, i32 55, metadata !20, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !27, i32 56} ; [ DW_TAG_subprogram ]
!19 = metadata !{i32 786473, metadata !"sobellab4/Sobel.cpp", metadata !"X:\5CBureau\5CHDMI_3610\5C3610_4\5C1490679_1771119", null} ; [ DW_TAG_file_type ]
!20 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !21, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!21 = metadata !{null, metadata !22, metadata !25}
!22 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !23} ; [ DW_TAG_pointer_type ]
!23 = metadata !{i32 786454, null, metadata !"uint8_t", metadata !19, i32 36, i64 0, i64 0, i64 0, i32 0, metadata !24} ; [ DW_TAG_typedef ]
!24 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!25 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !26} ; [ DW_TAG_pointer_type ]
!26 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!27 = metadata !{metadata !28}
!28 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!29 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 66355200, i64 32, i32 0, i32 0, metadata !26, metadata !30, i32 0, i32 0} ; [ DW_TAG_array_type ]
!30 = metadata !{metadata !31}
!31 = metadata !{i32 786465, i64 0, i64 2073599}  ; [ DW_TAG_subrange_type ]
!32 = metadata !{i32 55, i32 60, metadata !18, null}
!33 = metadata !{i32 786689, metadata !18, metadata !"inter_pix", null, i32 55, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!34 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !23, metadata !30, i32 0, i32 0} ; [ DW_TAG_array_type ]
!35 = metadata !{i32 55, i32 27, metadata !18, null}
!36 = metadata !{metadata !37}
!37 = metadata !{i32 0, i32 31, metadata !38}
!38 = metadata !{metadata !39}
!39 = metadata !{metadata !"out_pix", metadata !40, metadata !"unsigned int", i32 0, i32 31}
!40 = metadata !{metadata !41}
!41 = metadata !{i32 0, i32 2073599, i32 1}
!42 = metadata !{metadata !43}
!43 = metadata !{i32 0, i32 7, metadata !44}
!44 = metadata !{metadata !45}
!45 = metadata !{metadata !"inter_pix", metadata !40, metadata !"unsigned char", i32 0, i32 7}
!46 = metadata !{i32 59, i32 1, metadata !47, null}
!47 = metadata !{i32 786443, metadata !18, i32 56, i32 1, metadata !19, i32 5} ; [ DW_TAG_lexical_block ]
!48 = metadata !{i32 790529, metadata !49, metadata !"cache[0]", null, i32 62, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!49 = metadata !{i32 786688, metadata !47, metadata !"cache", metadata !19, i32 62, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!50 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 61440, i64 8, i32 0, i32 0, metadata !23, metadata !51, i32 0, i32 0} ; [ DW_TAG_array_type ]
!51 = metadata !{metadata !52, metadata !53}
!52 = metadata !{i32 786465, i64 0, i64 3}        ; [ DW_TAG_subrange_type ]
!53 = metadata !{i32 786465, i64 0, i64 1919}     ; [ DW_TAG_subrange_type ]
!54 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 15360, i64 8, i32 0, i32 0, metadata !23, metadata !51, i32 0, i32 0} ; [ DW_TAG_array_type ]
!55 = metadata !{i32 62, i32 10, metadata !47, null}
!56 = metadata !{i32 790529, metadata !49, metadata !"cache[1]", null, i32 62, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!57 = metadata !{i32 790529, metadata !49, metadata !"cache[2]", null, i32 62, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!58 = metadata !{i32 790529, metadata !49, metadata !"cache[3]", null, i32 62, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!59 = metadata !{i32 67, i32 40, metadata !60, null}
!60 = metadata !{i32 786443, metadata !47, i32 67, i32 17, metadata !19, i32 6} ; [ DW_TAG_lexical_block ]
!61 = metadata !{i32 67, i32 49, metadata !60, null}
!62 = metadata !{i32 13, i32 34, metadata !63, metadata !71}
!63 = metadata !{i32 786478, i32 0, metadata !19, metadata !"sobel_operator", metadata !"sobel_operator", metadata !"_Z14sobel_operatoriiPA1920_h", metadata !19, i32 13, metadata !64, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !27, i32 14} ; [ DW_TAG_subprogram ]
!64 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !65, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!65 = metadata !{metadata !23, metadata !66, metadata !66, metadata !68}
!66 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !67} ; [ DW_TAG_const_type ]
!67 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!68 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !69} ; [ DW_TAG_pointer_type ]
!69 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 15360, i64 8, i32 0, i32 0, metadata !23, metadata !70, i32 0, i32 0} ; [ DW_TAG_array_type ]
!70 = metadata !{metadata !53}
!71 = metadata !{i32 85, i32 12, metadata !72, null}
!72 = metadata !{i32 786443, metadata !73, i32 84, i32 10, metadata !19, i32 15} ; [ DW_TAG_lexical_block ]
!73 = metadata !{i32 786443, metadata !74, i32 77, i32 56, metadata !19, i32 13} ; [ DW_TAG_lexical_block ]
!74 = metadata !{i32 786443, metadata !75, i32 77, i32 16, metadata !19, i32 12} ; [ DW_TAG_lexical_block ]
!75 = metadata !{i32 786443, metadata !76, i32 76, i32 55, metadata !19, i32 11} ; [ DW_TAG_lexical_block ]
!76 = metadata !{i32 786443, metadata !47, i32 76, i32 15, metadata !19, i32 10} ; [ DW_TAG_lexical_block ]
!77 = metadata !{i32 67, i32 55, metadata !78, null}
!78 = metadata !{i32 786443, metadata !60, i32 67, i32 54, metadata !19, i32 7} ; [ DW_TAG_lexical_block ]
!79 = metadata !{i32 71, i32 2, metadata !80, null}
!80 = metadata !{i32 786443, metadata !81, i32 68, i32 58, metadata !19, i32 9} ; [ DW_TAG_lexical_block ]
!81 = metadata !{i32 786443, metadata !78, i32 68, i32 18, metadata !19, i32 8} ; [ DW_TAG_lexical_block ]
!82 = metadata !{i32 68, i32 41, metadata !81, null}
!83 = metadata !{i32 68, i32 53, metadata !81, null}
!84 = metadata !{i32 68, i32 59, metadata !80, null}
!85 = metadata !{i32 69, i32 1, metadata !80, null}
!86 = metadata !{i32 72, i32 3, metadata !80, null}
!87 = metadata !{i32 786688, metadata !81, metadata !"j", metadata !19, i32 68, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!88 = metadata !{i32 73, i32 2, metadata !78, null}
!89 = metadata !{i32 786688, metadata !60, metadata !"i", metadata !19, i32 67, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!90 = metadata !{i32 786689, metadata !63, metadata !"rows", metadata !19, i32 16777229, metadata !66, i32 0, metadata !71} ; [ DW_TAG_arg_variable ]
!91 = metadata !{i32 76, i32 38, metadata !76, null}
!92 = metadata !{i32 76, i32 50, metadata !76, null}
!93 = metadata !{i32 76, i32 56, metadata !75, null}
!94 = metadata !{i32 81, i32 2, metadata !73, null}
!95 = metadata !{i32 90, i32 5, metadata !73, null}
!96 = metadata !{i32 92, i32 5, metadata !73, null}
!97 = metadata !{i32 77, i32 39, metadata !74, null}
!98 = metadata !{i32 13, i32 50, metadata !63, metadata !71}
!99 = metadata !{i32 786689, metadata !63, metadata !"cols", metadata !19, i32 33554445, metadata !66, i32 0, metadata !71} ; [ DW_TAG_arg_variable ]
!100 = metadata !{i32 34, i32 4, metadata !101, metadata !71}
!101 = metadata !{i32 786443, metadata !102, i32 32, i32 38, metadata !19, i32 4} ; [ DW_TAG_lexical_block ]
!102 = metadata !{i32 786443, metadata !103, i32 32, i32 11, metadata !19, i32 3} ; [ DW_TAG_lexical_block ]
!103 = metadata !{i32 786443, metadata !104, i32 31, i32 37, metadata !19, i32 2} ; [ DW_TAG_lexical_block ]
!104 = metadata !{i32 786443, metadata !105, i32 31, i32 10, metadata !19, i32 1} ; [ DW_TAG_lexical_block ]
!105 = metadata !{i32 786443, metadata !63, i32 14, i32 1, metadata !19, i32 0} ; [ DW_TAG_lexical_block ]
!106 = metadata !{i32 77, i32 57, metadata !73, null}
!107 = metadata !{i32 78, i32 1, metadata !73, null}
!108 = metadata !{i32 37, i32 4, metadata !101, metadata !71}
!109 = metadata !{i32 41, i32 2, metadata !105, metadata !71}
!110 = metadata !{i32 43, i32 2, metadata !105, metadata !71}
!111 = metadata !{i32 786688, metadata !105, metadata !"edge_val", metadata !19, i32 19, metadata !23, i32 0, metadata !71} ; [ DW_TAG_auto_variable ]
!112 = metadata !{i32 46, i32 2, metadata !105, metadata !71}
!113 = metadata !{i32 48, i32 7, metadata !105, metadata !71}
!114 = metadata !{i32 89, i32 6, metadata !115, null}
!115 = metadata !{i32 786443, metadata !116, i32 89, i32 6, metadata !19, i32 17} ; [ DW_TAG_lexical_block ]
!116 = metadata !{i32 786443, metadata !73, i32 88, i32 13, metadata !19, i32 16} ; [ DW_TAG_lexical_block ]
!117 = metadata !{i32 790529, metadata !118, metadata !"fourWide", null, i32 65, metadata !120, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!118 = metadata !{i32 786688, metadata !47, metadata !"fourWide", metadata !19, i32 65, metadata !119, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!119 = metadata !{i32 786454, null, metadata !"OneToFourPixels", metadata !19, i32 9, i64 0, i64 0, i64 0, i32 0, metadata !120} ; [ DW_TAG_typedef ]
!120 = metadata !{i32 786455, null, metadata !"", metadata !19, i32 6, i64 32, i64 32, i64 0, i32 0, null, metadata !121, i32 0, null} ; [ DW_TAG_union_type ]
!121 = metadata !{metadata !122, metadata !125, metadata !126}
!122 = metadata !{i32 786445, metadata !120, metadata !"pix", metadata !19, i32 7, i64 32, i64 8, i64 0, i32 0, metadata !123} ; [ DW_TAG_member ]
!123 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 32, i64 8, i32 0, i32 0, metadata !23, metadata !124, i32 0, i32 0} ; [ DW_TAG_array_type ]
!124 = metadata !{metadata !52}
!125 = metadata !{i32 786445, metadata !120, metadata !"full", metadata !19, i32 8, i64 32, i64 32, i64 0, i32 0, metadata !26} ; [ DW_TAG_member ]
!126 = metadata !{i32 786478, i32 0, metadata !120, metadata !"", metadata !"", metadata !"", metadata !19, i32 6, metadata !127, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !27, i32 6} ; [ DW_TAG_subprogram ]
!127 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !128, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!128 = metadata !{null, metadata !129}
!129 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !120} ; [ DW_TAG_pointer_type ]
!130 = metadata !{i32 94, i32 3, metadata !73, null}
!131 = metadata !{i32 786688, metadata !74, metadata !"j", metadata !19, i32 77, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!132 = metadata !{i32 77, i32 51, metadata !74, null}
!133 = metadata !{i32 95, i32 2, metadata !75, null}
!134 = metadata !{i32 786688, metadata !76, metadata !"i", metadata !19, i32 76, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!135 = metadata !{i32 98, i32 1, metadata !47, null}
