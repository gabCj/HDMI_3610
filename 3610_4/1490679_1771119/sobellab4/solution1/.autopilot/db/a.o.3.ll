; ModuleID = 'X:/Bureau/HDMI_3610/3610_4/1490679_1771119/sobellab4/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@sobel_filter_str = internal unnamed_addr constant [13 x i8] c"sobel_filter\00" ; [#uses=1 type=[13 x i8]*]
@mode3 = internal constant [10 x i8] c"s_axilite\00" ; [#uses=1 type=[10 x i8]*]
@mode = internal constant [10 x i8] c"s_axilite\00" ; [#uses=1 type=[10 x i8]*]
@bundle4 = internal constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@bundle = internal constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@OperatorLines_Operat = internal unnamed_addr constant [28 x i8] c"OperatorLines_OperatorRows1\00" ; [#uses=1 type=[28 x i8]*]
@p_str9 = private unnamed_addr constant [14 x i8] c"ZerosFirstRow\00", align 1 ; [#uses=3 type=[14 x i8]*]
@p_str8 = private unnamed_addr constant [14 x i8] c"OperatorRows1\00", align 1 ; [#uses=3 type=[14 x i8]*]
@p_str6 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]
@p_str5 = private unnamed_addr constant [6 x i8] c"gmem1\00", align 1 ; [#uses=1 type=[6 x i8]*]
@p_str4 = private unnamed_addr constant [6 x i8] c"slave\00", align 1 ; [#uses=4 type=[6 x i8]*]
@p_str3 = private unnamed_addr constant [6 x i8] c"gmem0\00", align 1 ; [#uses=1 type=[6 x i8]*]
@p_str2 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1 ; [#uses=2 type=[6 x i8]*]
@p_str13 = private unnamed_addr constant [4 x i8] c"IMG\00", align 1 ; [#uses=3 type=[4 x i8]*]
@p_str12 = private unnamed_addr constant [14 x i8] c"ZerosLastLine\00", align 1 ; [#uses=3 type=[14 x i8]*]
@p_str11 = private unnamed_addr constant [15 x i8] c"ZerosFirstLine\00", align 1 ; [#uses=3 type=[15 x i8]*]
@p_str10 = private unnamed_addr constant [13 x i8] c"ZerosLastRow\00", align 1 ; [#uses=3 type=[13 x i8]*]
@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=28 type=[1 x i8]*]

; [#uses=0]
define void @sobel_filter(i8* %gmem0, i32* %gmem1, i32 %inter_pix, i32 %out_pix) {
  %out_pix_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %out_pix) ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %out_pix_read}, i64 0, metadata !22), !dbg !37 ; [debug line = 88:60] [debug variable = out_pix]
  %inter_pix_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %inter_pix) ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %inter_pix_read}, i64 0, metadata !38), !dbg !40 ; [debug line = 88:27] [debug variable = inter_pix]
  %out_pix3 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %out_pix_read, i32 2, i32 31) ; [#uses=4 type=i30]
  %tmp = zext i30 %out_pix3 to i64                ; [#uses=1 type=i64]
  %tmp_cast1 = zext i30 %out_pix3 to i31          ; [#uses=3 type=i31]
  %tmp_cast = zext i30 %out_pix3 to i33           ; [#uses=2 type=i33]
  %gmem1_addr = getelementptr i32* %gmem1, i64 %tmp ; [#uses=3 type=i32*]
  %tmp_5_cast = sext i32 %inter_pix_read to i34   ; [#uses=2 type=i34]
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %gmem1), !map !41
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %gmem0), !map !47
  call void (...)* @_ssdm_op_SpecTopModule([13 x i8]* @sobel_filter_str) nounwind
  %superCache = alloca [7680 x i8], align 16      ; [#uses=18 type=[7680 x i8]*]
  call void @llvm.dbg.value(metadata !{i32 %inter_pix}, i64 0, metadata !38), !dbg !40 ; [debug line = 88:27] [debug variable = inter_pix]
  call void @llvm.dbg.value(metadata !{i32 %out_pix}, i64 0, metadata !22), !dbg !37 ; [debug line = 88:60] [debug variable = out_pix]
  call void (...)* @_ssdm_op_SpecInterface(i8* %gmem0, [6 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [6 x i8]* @p_str3, [6 x i8]* @p_str4, [1 x i8]* @p_str, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32 %inter_pix, [10 x i8]* @mode, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @bundle, [6 x i8]* @p_str4, [1 x i8]* @p_str, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %gmem1, [6 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [6 x i8]* @p_str5, [6 x i8]* @p_str4, [1 x i8]* @p_str, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32 %out_pix, [10 x i8]* @mode3, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @bundle4, [6 x i8]* @p_str4, [1 x i8]* @p_str, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str6, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind, !dbg !51 ; [debug line = 99:1]
  call void @llvm.dbg.declare(metadata !{[7680 x i8]* %superCache}, metadata !53), !dbg !57 ; [debug line = 103:10] [debug variable = superCache]
  br label %1, !dbg !58                           ; [debug line = 120:40]

; <label>:1                                       ; preds = %ifBlock, %0
  %indvar_flatten = phi i21 [ 0, %0 ], [ %indvar_flatten_next, %ifBlock ] ; [#uses=2 type=i21]
  %i = phi i11 [ 0, %0 ], [ %i_mid2, %ifBlock ]   ; [#uses=8 type=i11]
  %j = phi i11 [ 0, %0 ], [ %j_1, %ifBlock ]      ; [#uses=2 type=i11]
  %tmp_5 = trunc i11 %i to i2, !dbg !58           ; [#uses=3 type=i2] [debug line = 120:40]
  %tmp_1 = icmp ult i11 %i, 3, !dbg !60           ; [#uses=1 type=i1] [debug line = 123:2]
  %p_shl1 = call i22 @_ssdm_op_BitConcatenate.i22.i11.i11(i11 %i, i11 0), !dbg !64 ; [#uses=1 type=i22] [debug line = 124:5]
  %p_shl1_cast = zext i22 %p_shl1 to i23, !dbg !64 ; [#uses=1 type=i23] [debug line = 124:5]
  %p_shl2 = call i18 @_ssdm_op_BitConcatenate.i18.i11.i7(i11 %i, i7 0), !dbg !64 ; [#uses=1 type=i18] [debug line = 124:5]
  %p_shl2_cast = zext i18 %p_shl2 to i23, !dbg !64 ; [#uses=1 type=i23] [debug line = 124:5]
  %tmp_2 = sub i23 %p_shl1_cast, %p_shl2_cast, !dbg !64 ; [#uses=1 type=i23] [debug line = 124:5]
  %tmp_3 = icmp ugt i11 %i, 2, !dbg !66           ; [#uses=1 type=i1] [debug line = 126:9]
  %tmp_4 = icmp ult i11 %i, -968, !dbg !66        ; [#uses=1 type=i1] [debug line = 126:9]
  %or_cond = and i1 %tmp_3, %tmp_4, !dbg !66      ; [#uses=1 type=i1] [debug line = 126:9]
  %p_shl3 = call i13 @_ssdm_op_BitConcatenate.i13.i2.i11(i2 %tmp_5, i11 0), !dbg !67 ; [#uses=1 type=i13] [debug line = 127:5]
  %p_shl3_cast = zext i13 %p_shl3 to i14, !dbg !67 ; [#uses=1 type=i14] [debug line = 127:5]
  %p_shl4 = call i9 @_ssdm_op_BitConcatenate.i9.i2.i7(i2 %tmp_5, i7 0), !dbg !67 ; [#uses=1 type=i9] [debug line = 127:5]
  %p_shl4_cast = zext i9 %p_shl4 to i14, !dbg !67 ; [#uses=1 type=i14] [debug line = 127:5]
  %tmp_6 = sub i14 %p_shl3_cast, %p_shl4_cast, !dbg !67 ; [#uses=1 type=i14] [debug line = 127:5]
  %tmp_7_cast = xor i2 %tmp_5, -2, !dbg !69       ; [#uses=2 type=i2] [debug line = 128:31]
  %p_shl = call i13 @_ssdm_op_BitConcatenate.i13.i2.i11(i2 %tmp_7_cast, i11 0), !dbg !69 ; [#uses=1 type=i13] [debug line = 128:31]
  %p_shl_cast = zext i13 %p_shl to i14, !dbg !69  ; [#uses=1 type=i14] [debug line = 128:31]
  %p_shl5 = call i9 @_ssdm_op_BitConcatenate.i9.i2.i7(i2 %tmp_7_cast, i7 0), !dbg !69 ; [#uses=1 type=i9] [debug line = 128:31]
  %p_shl5_cast = zext i9 %p_shl5 to i14, !dbg !69 ; [#uses=1 type=i14] [debug line = 128:31]
  %tmp_9 = sub i14 %p_shl_cast, %p_shl5_cast, !dbg !69 ; [#uses=1 type=i14] [debug line = 128:31]
  %exitcond_flatten = icmp eq i21 %indvar_flatten, -21632 ; [#uses=1 type=i1]
  %indvar_flatten_next = add i21 1, %indvar_flatten ; [#uses=1 type=i21]
  br i1 %exitcond_flatten, label %.preheader6.preheader, label %.reset

.preheader6.preheader:                            ; preds = %1
  %gmem1_addr_wr_req = call i1 @_ssdm_op_WriteReq.m_axi.i32P(i32* %gmem1_addr, i32 1920), !dbg !70 ; [#uses=0 type=i1] [debug line = 180:2]
  br label %.preheader6, !dbg !73                 ; [debug line = 178:40]

; <label>:2                                       ; preds = %.reset
  %tmp_11 = add i23 %tmp_2_mid2, %j_cast1, !dbg !64 ; [#uses=1 type=i23] [debug line = 124:5]
  %tmp_13_cast = sext i23 %tmp_11 to i32, !dbg !64 ; [#uses=2 type=i32] [debug line = 124:5]
  %tmp_12 = zext i32 %tmp_13_cast to i64, !dbg !64 ; [#uses=1 type=i64] [debug line = 124:5]
  %tmp_14_cast = zext i32 %tmp_13_cast to i34     ; [#uses=1 type=i34]
  %inter_pix2_sum6 = add i34 %tmp_14_cast, %tmp_5_cast ; [#uses=1 type=i34]
  %inter_pix2_sum6_cast = sext i34 %inter_pix2_sum6 to i64 ; [#uses=1 type=i64]
  %gmem0_addr = getelementptr i8* %gmem0, i64 %inter_pix2_sum6_cast ; [#uses=2 type=i8*]
  %gmem0_load_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %gmem0_addr, i32 1), !dbg !64 ; [#uses=0 type=i1] [debug line = 124:5]
  %gmem0_addr_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %gmem0_addr), !dbg !64 ; [#uses=1 type=i8] [debug line = 124:5]
  %superCache_addr = getelementptr inbounds [7680 x i8]* %superCache, i64 0, i64 %tmp_12, !dbg !64 ; [#uses=1 type=i8*] [debug line = 124:5]
  store i8 %gmem0_addr_read, i8* %superCache_addr, align 1, !dbg !64 ; [debug line = 124:5]
  br label %ifBlock, !dbg !74                     ; [debug line = 125:4]

; <label>:3                                       ; preds = %.reset
  br i1 %or_cond_mid2, label %_ifconv, label %_ifconv11, !dbg !66 ; [debug line = 126:9]

_ifconv:                                          ; preds = %3
  %tmp_14 = add i23 %tmp_2_mid2, %j_cast1, !dbg !67 ; [#uses=1 type=i23] [debug line = 127:5]
  %tmp_16_cast = sext i23 %tmp_14 to i32, !dbg !67 ; [#uses=1 type=i32] [debug line = 127:5]
  %tmp_17_cast = zext i32 %tmp_16_cast to i34     ; [#uses=1 type=i34]
  %inter_pix2_sum = add i34 %tmp_17_cast, %tmp_5_cast ; [#uses=1 type=i34]
  %inter_pix2_sum_cast = sext i34 %inter_pix2_sum to i64 ; [#uses=1 type=i64]
  %gmem0_addr_1 = getelementptr i8* %gmem0, i64 %inter_pix2_sum_cast ; [#uses=2 type=i8*]
  %gmem0_load_1_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %gmem0_addr_1, i32 1), !dbg !67 ; [#uses=0 type=i1] [debug line = 127:5]
  %gmem0_addr_1_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %gmem0_addr_1), !dbg !67 ; [#uses=1 type=i8] [debug line = 127:5]
  %tmp_15 = add i14 %tmp_6_mid2, %j_cast, !dbg !67 ; [#uses=1 type=i14] [debug line = 127:5]
  %tmp_18_cast = sext i14 %tmp_15 to i32, !dbg !67 ; [#uses=1 type=i32] [debug line = 127:5]
  %tmp_16 = zext i32 %tmp_18_cast to i64, !dbg !67 ; [#uses=1 type=i64] [debug line = 127:5]
  %superCache_addr_1 = getelementptr inbounds [7680 x i8]* %superCache, i64 0, i64 %tmp_16, !dbg !67 ; [#uses=1 type=i8*] [debug line = 127:5]
  store i8 %gmem0_addr_1_read, i8* %superCache_addr_1, align 1, !dbg !67 ; [debug line = 127:5]
  %fullIndex_assign = add i14 %tmp_9_mid2, %j_cast, !dbg !69 ; [#uses=8 type=i14] [debug line = 128:31]
  call void @llvm.dbg.value(metadata !{i14 %fullIndex_assign}, i64 0, metadata !75) nounwind, !dbg !81 ; [debug line = 30:34@128:31] [debug variable = fullIndex]
  %tmp_17 = call fastcc zeroext i8 @getVal(i14 %fullIndex_assign, i2 -1, i2 -1, [7680 x i8]* %superCache) nounwind, !dbg !82 ; [#uses=1 type=i8] [debug line = 67:26@128:31]
  %tmp_521_cast = zext i8 %tmp_17 to i9, !dbg !82 ; [#uses=2 type=i9] [debug line = 67:26@128:31]
  %tmp_18 = call fastcc zeroext i8 @getVal(i14 %fullIndex_assign, i2 -1, i2 0, [7680 x i8]* %superCache) nounwind, !dbg !82 ; [#uses=1 type=i8] [debug line = 67:26@128:31]
  %tmp_59_0_1 = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %tmp_18, i1 false), !dbg !88 ; [#uses=1 type=i9] [debug line = 70:26@128:31]
  %tmp_59_0_1_cast = zext i9 %tmp_59_0_1 to i10, !dbg !88 ; [#uses=1 type=i10] [debug line = 70:26@128:31]
  %tmp_19 = call fastcc zeroext i8 @getVal(i14 %fullIndex_assign, i2 -1, i2 1, [7680 x i8]* %superCache) nounwind, !dbg !82 ; [#uses=1 type=i8] [debug line = 67:26@128:31]
  %tmp_52_0_2_cast = zext i8 %tmp_19 to i9, !dbg !82 ; [#uses=2 type=i9] [debug line = 67:26@128:31]
  %x_weight_0_2 = sub i9 %tmp_52_0_2_cast, %tmp_521_cast, !dbg !82 ; [#uses=1 type=i9] [debug line = 67:26@128:31]
  %x_weight_0_2_cast = sext i9 %x_weight_0_2 to i11, !dbg !82 ; [#uses=1 type=i11] [debug line = 67:26@128:31]
  %tmp_21 = call fastcc zeroext i8 @getVal(i14 %fullIndex_assign, i2 0, i2 -1, [7680 x i8]* %superCache) nounwind, !dbg !82 ; [#uses=1 type=i8] [debug line = 67:26@128:31]
  %p_shl6 = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %tmp_21, i1 false), !dbg !82 ; [#uses=1 type=i9] [debug line = 67:26@128:31]
  %p_shl6_cast = zext i9 %p_shl6 to i11, !dbg !82 ; [#uses=1 type=i11] [debug line = 67:26@128:31]
  %x_weight_127_1 = sub i11 %x_weight_0_2_cast, %p_shl6_cast, !dbg !82 ; [#uses=1 type=i11] [debug line = 67:26@128:31]
  %tmp_23 = call fastcc zeroext i8 @getVal(i14 %fullIndex_assign, i2 0, i2 1, [7680 x i8]* %superCache) nounwind, !dbg !82 ; [#uses=1 type=i8] [debug line = 67:26@128:31]
  %tmp_55_1_2 = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %tmp_23, i1 false), !dbg !82 ; [#uses=1 type=i9] [debug line = 67:26@128:31]
  %tmp_55_1_2_cast = zext i9 %tmp_55_1_2 to i11, !dbg !82 ; [#uses=1 type=i11] [debug line = 67:26@128:31]
  %x_weight_127_2 = add i11 %tmp_55_1_2_cast, %x_weight_127_1, !dbg !82 ; [#uses=1 type=i11] [debug line = 67:26@128:31]
  %tmp8 = add i9 %tmp_52_0_2_cast, %tmp_521_cast, !dbg !88 ; [#uses=1 type=i9] [debug line = 70:26@128:31]
  %tmp12_cast = zext i9 %tmp8 to i10, !dbg !88    ; [#uses=1 type=i10] [debug line = 70:26@128:31]
  %y_weight_130_2 = add i10 %tmp_59_0_1_cast, %tmp12_cast, !dbg !88 ; [#uses=1 type=i10] [debug line = 70:26@128:31]
  %y_weight_130_2_cast = zext i10 %y_weight_130_2 to i11, !dbg !88 ; [#uses=1 type=i11] [debug line = 70:26@128:31]
  %tmp_24 = call fastcc zeroext i8 @getVal(i14 %fullIndex_assign, i2 1, i2 -1, [7680 x i8]* %superCache) nounwind, !dbg !82 ; [#uses=1 type=i8] [debug line = 67:26@128:31]
  %tmp_52_2_cast = zext i8 %tmp_24 to i11, !dbg !82 ; [#uses=2 type=i11] [debug line = 67:26@128:31]
  %x_weight_2 = sub i11 %x_weight_127_2, %tmp_52_2_cast, !dbg !82 ; [#uses=2 type=i11] [debug line = 67:26@128:31]
  %y_weight_2 = sub i11 %y_weight_130_2_cast, %tmp_52_2_cast, !dbg !88 ; [#uses=1 type=i11] [debug line = 70:26@128:31]
  %tmp_27 = call fastcc zeroext i8 @getVal(i14 %fullIndex_assign, i2 1, i2 0, [7680 x i8]* %superCache) nounwind, !dbg !82 ; [#uses=1 type=i8] [debug line = 67:26@128:31]
  %p_shl7 = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %tmp_27, i1 false), !dbg !88 ; [#uses=1 type=i9] [debug line = 70:26@128:31]
  %p_shl7_cast = zext i9 %p_shl7 to i11, !dbg !88 ; [#uses=1 type=i11] [debug line = 70:26@128:31]
  %y_weight_2_1 = sub i11 %y_weight_2, %p_shl7_cast, !dbg !88 ; [#uses=1 type=i11] [debug line = 70:26@128:31]
  %tmp_34 = call fastcc zeroext i8 @getVal(i14 %fullIndex_assign, i2 1, i2 1, [7680 x i8]* %superCache) nounwind, !dbg !82 ; [#uses=2 type=i8] [debug line = 67:26@128:31]
  %tmp_52_2_2_cast = zext i8 %tmp_34 to i11       ; [#uses=2 type=i11]
  %tmp_36 = trunc i11 %x_weight_2 to i8           ; [#uses=1 type=i8]
  %x_weight_2_2 = add i11 %tmp_52_2_2_cast, %x_weight_2, !dbg !82 ; [#uses=1 type=i11] [debug line = 67:26@128:31]
  %y_weight_2_2 = sub i11 %y_weight_2_1, %tmp_52_2_2_cast, !dbg !88 ; [#uses=2 type=i11] [debug line = 70:26@128:31]
  %tmp_22 = icmp sgt i11 %x_weight_2_2, 0, !dbg !89 ; [#uses=1 type=i1] [debug line = 74:2@128:31]
  %tmp_37 = add i8 %tmp_36, %tmp_34, !dbg !89     ; [#uses=2 type=i8] [debug line = 74:2@128:31]
  %tmp_40 = sub i8 0, %tmp_37, !dbg !89           ; [#uses=1 type=i8] [debug line = 74:2@128:31]
  %tmp_41 = select i1 %tmp_22, i8 %tmp_37, i8 %tmp_40, !dbg !89 ; [#uses=1 type=i8] [debug line = 74:2@128:31]
  %tmp_25 = icmp sgt i11 %y_weight_2_2, 0, !dbg !89 ; [#uses=1 type=i1] [debug line = 74:2@128:31]
  %tmp_42 = trunc i11 %y_weight_2_2 to i8, !dbg !89 ; [#uses=2 type=i8] [debug line = 74:2@128:31]
  %tmp_45 = sub i8 0, %tmp_42, !dbg !89           ; [#uses=1 type=i8] [debug line = 74:2@128:31]
  %tmp_46 = select i1 %tmp_25, i8 %tmp_42, i8 %tmp_45, !dbg !89 ; [#uses=1 type=i8] [debug line = 74:2@128:31]
  %tmp_28 = add i8 %tmp_41, %tmp_46, !dbg !90     ; [#uses=3 type=i8] [debug line = 76:2@128:31]
  %edge_val = xor i8 %tmp_28, -1, !dbg !90        ; [#uses=1 type=i8] [debug line = 76:2@128:31]
  call void @llvm.dbg.value(metadata !{i8 %edge_val}, i64 0, metadata !91) nounwind, !dbg !90 ; [debug line = 76:2@128:31] [debug variable = edge_val]
  %tmp_29 = icmp ult i8 %tmp_28, 55, !dbg !92     ; [#uses=2 type=i1] [debug line = 79:2@128:31]
  %tmp_43 = icmp ugt i8 %tmp_28, -101, !dbg !93   ; [#uses=1 type=i1] [debug line = 81:7@128:31]
  %p_i1 = select i1 %tmp_29, i8 -1, i8 0          ; [#uses=1 type=i8]
  %tmp_49 = or i1 %tmp_29, %tmp_43                ; [#uses=1 type=i1]
  %edge_val_1_i1 = select i1 %tmp_49, i8 %p_i1, i8 %edge_val ; [#uses=1 type=i8]
  %tmp_47 = zext i8 %edge_val_1_i1 to i32, !dbg !69 ; [#uses=1 type=i32] [debug line = 128:31]
  %tmp_48 = add i23 %tmp_mid2, %j_cast1, !dbg !69 ; [#uses=1 type=i23] [debug line = 128:31]
  %tmp_48_cast = sext i23 %tmp_48 to i32, !dbg !69 ; [#uses=1 type=i32] [debug line = 128:31]
  %tmp_49_cast = zext i32 %tmp_48_cast to i33     ; [#uses=1 type=i33]
  %out_pix4_sum5 = add i33 %tmp_49_cast, %tmp_cast ; [#uses=1 type=i33]
  %out_pix4_sum5_cast = zext i33 %out_pix4_sum5 to i64 ; [#uses=1 type=i64]
  %gmem1_addr_2 = getelementptr i32* %gmem1, i64 %out_pix4_sum5_cast ; [#uses=3 type=i32*]
  %gmem1_addr_3_req = call i1 @_ssdm_op_WriteReq.m_axi.i32P(i32* %gmem1_addr_2, i32 1), !dbg !69 ; [#uses=0 type=i1] [debug line = 128:31]
  call void @_ssdm_op_Write.m_axi.i32P(i32* %gmem1_addr_2, i32 %tmp_47, i4 -1), !dbg !69 ; [debug line = 128:31]
  %gmem1_addr_3_resp = call i1 @_ssdm_op_WriteResp.m_axi.i32P(i32* %gmem1_addr_2), !dbg !69 ; [#uses=0 type=i1] [debug line = 128:31]
  br label %4, !dbg !94                           ; [debug line = 129:4]

_ifconv11:                                        ; preds = %3
  %fullIndex_assign_1 = add i14 %tmp_9_mid2, %j_cast, !dbg !95 ; [#uses=8 type=i14] [debug line = 131:31]
  call void @llvm.dbg.value(metadata !{i14 %fullIndex_assign_1}, i64 0, metadata !97) nounwind, !dbg !98 ; [debug line = 30:34@131:31] [debug variable = fullIndex]
  %tmp_50 = call fastcc zeroext i8 @getVal(i14 %fullIndex_assign_1, i2 -1, i2 -1, [7680 x i8]* %superCache) nounwind, !dbg !99 ; [#uses=1 type=i8] [debug line = 67:26@131:31]
  %tmp_651_cast = zext i8 %tmp_50 to i9, !dbg !99 ; [#uses=2 type=i9] [debug line = 67:26@131:31]
  %tmp_51 = call fastcc zeroext i8 @getVal(i14 %fullIndex_assign_1, i2 -1, i2 0, [7680 x i8]* %superCache) nounwind, !dbg !99 ; [#uses=1 type=i8] [debug line = 67:26@131:31]
  %tmp_72_0_1 = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %tmp_51, i1 false), !dbg !100 ; [#uses=1 type=i9] [debug line = 70:26@131:31]
  %tmp_72_0_1_cast = zext i9 %tmp_72_0_1 to i10, !dbg !100 ; [#uses=1 type=i10] [debug line = 70:26@131:31]
  %tmp_52 = call fastcc zeroext i8 @getVal(i14 %fullIndex_assign_1, i2 -1, i2 1, [7680 x i8]* %superCache) nounwind, !dbg !99 ; [#uses=1 type=i8] [debug line = 67:26@131:31]
  %tmp_65_0_2_cast = zext i8 %tmp_52 to i9, !dbg !99 ; [#uses=2 type=i9] [debug line = 67:26@131:31]
  %x_weight_1_0_2 = sub i9 %tmp_65_0_2_cast, %tmp_651_cast, !dbg !99 ; [#uses=1 type=i9] [debug line = 67:26@131:31]
  %x_weight_1_0_2_cast = sext i9 %x_weight_1_0_2 to i11, !dbg !99 ; [#uses=1 type=i11] [debug line = 67:26@131:31]
  %tmp_53 = call fastcc zeroext i8 @getVal(i14 %fullIndex_assign_1, i2 0, i2 -1, [7680 x i8]* %superCache) nounwind, !dbg !99 ; [#uses=1 type=i8] [debug line = 67:26@131:31]
  %p_shl8 = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %tmp_53, i1 false), !dbg !99 ; [#uses=1 type=i9] [debug line = 67:26@131:31]
  %p_shl8_cast = zext i9 %p_shl8 to i11, !dbg !99 ; [#uses=1 type=i11] [debug line = 67:26@131:31]
  %x_weight_1_1_1 = sub i11 %x_weight_1_0_2_cast, %p_shl8_cast, !dbg !99 ; [#uses=1 type=i11] [debug line = 67:26@131:31]
  %tmp_54 = call fastcc zeroext i8 @getVal(i14 %fullIndex_assign_1, i2 0, i2 1, [7680 x i8]* %superCache) nounwind, !dbg !99 ; [#uses=1 type=i8] [debug line = 67:26@131:31]
  %tmp_68_1_2 = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %tmp_54, i1 false), !dbg !99 ; [#uses=1 type=i9] [debug line = 67:26@131:31]
  %tmp_68_1_2_cast = zext i9 %tmp_68_1_2 to i11, !dbg !99 ; [#uses=1 type=i11] [debug line = 67:26@131:31]
  %x_weight_1_1_2 = add i11 %tmp_68_1_2_cast, %x_weight_1_1_1, !dbg !99 ; [#uses=1 type=i11] [debug line = 67:26@131:31]
  %tmp13 = add i9 %tmp_65_0_2_cast, %tmp_651_cast, !dbg !100 ; [#uses=1 type=i9] [debug line = 70:26@131:31]
  %tmp13_cast = zext i9 %tmp13 to i10, !dbg !100  ; [#uses=1 type=i10] [debug line = 70:26@131:31]
  %y_weight_1_1_2 = add i10 %tmp_72_0_1_cast, %tmp13_cast, !dbg !100 ; [#uses=1 type=i10] [debug line = 70:26@131:31]
  %y_weight_1_1_2_cast = zext i10 %y_weight_1_1_2 to i11, !dbg !100 ; [#uses=1 type=i11] [debug line = 70:26@131:31]
  %tmp_55 = call fastcc zeroext i8 @getVal(i14 %fullIndex_assign_1, i2 1, i2 -1, [7680 x i8]* %superCache) nounwind, !dbg !99 ; [#uses=1 type=i8] [debug line = 67:26@131:31]
  %tmp_65_2_cast = zext i8 %tmp_55 to i11, !dbg !99 ; [#uses=2 type=i11] [debug line = 67:26@131:31]
  %x_weight_1_2 = sub i11 %x_weight_1_1_2, %tmp_65_2_cast, !dbg !99 ; [#uses=2 type=i11] [debug line = 67:26@131:31]
  %y_weight_1_2 = sub i11 %y_weight_1_1_2_cast, %tmp_65_2_cast, !dbg !100 ; [#uses=1 type=i11] [debug line = 70:26@131:31]
  %tmp_56 = call fastcc zeroext i8 @getVal(i14 %fullIndex_assign_1, i2 1, i2 0, [7680 x i8]* %superCache) nounwind, !dbg !99 ; [#uses=1 type=i8] [debug line = 67:26@131:31]
  %p_shl9 = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %tmp_56, i1 false), !dbg !100 ; [#uses=1 type=i9] [debug line = 70:26@131:31]
  %p_shl9_cast = zext i9 %p_shl9 to i11, !dbg !100 ; [#uses=1 type=i11] [debug line = 70:26@131:31]
  %y_weight_1_2_1 = sub i11 %y_weight_1_2, %p_shl9_cast, !dbg !100 ; [#uses=1 type=i11] [debug line = 70:26@131:31]
  %tmp_57 = call fastcc zeroext i8 @getVal(i14 %fullIndex_assign_1, i2 1, i2 1, [7680 x i8]* %superCache) nounwind, !dbg !99 ; [#uses=2 type=i8] [debug line = 67:26@131:31]
  %tmp_65_2_2_cast = zext i8 %tmp_57 to i11       ; [#uses=2 type=i11]
  %tmp_58 = trunc i11 %x_weight_1_2 to i8         ; [#uses=1 type=i8]
  %x_weight_1_2_2 = add i11 %tmp_65_2_2_cast, %x_weight_1_2, !dbg !99 ; [#uses=1 type=i11] [debug line = 67:26@131:31]
  %y_weight_1_2_2 = sub i11 %y_weight_1_2_1, %tmp_65_2_2_cast, !dbg !100 ; [#uses=2 type=i11] [debug line = 70:26@131:31]
  %tmp_32 = icmp sgt i11 %x_weight_1_2_2, 0, !dbg !101 ; [#uses=1 type=i1] [debug line = 74:2@131:31]
  %tmp_59 = add i8 %tmp_58, %tmp_57, !dbg !101    ; [#uses=2 type=i8] [debug line = 74:2@131:31]
  %tmp_62 = sub i8 0, %tmp_59, !dbg !101          ; [#uses=1 type=i8] [debug line = 74:2@131:31]
  %tmp_63 = select i1 %tmp_32, i8 %tmp_59, i8 %tmp_62, !dbg !101 ; [#uses=1 type=i8] [debug line = 74:2@131:31]
  %tmp_35 = icmp sgt i11 %y_weight_1_2_2, 0, !dbg !101 ; [#uses=1 type=i1] [debug line = 74:2@131:31]
  %tmp_64 = trunc i11 %y_weight_1_2_2 to i8, !dbg !101 ; [#uses=2 type=i8] [debug line = 74:2@131:31]
  %tmp_65 = sub i8 0, %tmp_64, !dbg !101          ; [#uses=1 type=i8] [debug line = 74:2@131:31]
  %tmp_66 = select i1 %tmp_35, i8 %tmp_64, i8 %tmp_65, !dbg !101 ; [#uses=1 type=i8] [debug line = 74:2@131:31]
  %tmp_38 = add i8 %tmp_63, %tmp_66, !dbg !102    ; [#uses=3 type=i8] [debug line = 76:2@131:31]
  %edge_val_1 = xor i8 %tmp_38, -1, !dbg !102     ; [#uses=1 type=i8] [debug line = 76:2@131:31]
  call void @llvm.dbg.value(metadata !{i8 %edge_val_1}, i64 0, metadata !103) nounwind, !dbg !102 ; [debug line = 76:2@131:31] [debug variable = edge_val]
  %tmp_39 = icmp ult i8 %tmp_38, 55, !dbg !104    ; [#uses=2 type=i1] [debug line = 79:2@131:31]
  %tmp_44 = icmp ugt i8 %tmp_38, -101, !dbg !105  ; [#uses=1 type=i1] [debug line = 81:7@131:31]
  %p_i = select i1 %tmp_39, i8 -1, i8 0           ; [#uses=1 type=i8]
  %tmp_67 = or i1 %tmp_39, %tmp_44                ; [#uses=1 type=i1]
  %edge_val_1_i = select i1 %tmp_67, i8 %p_i, i8 %edge_val_1 ; [#uses=1 type=i8]
  %tmp_60 = zext i8 %edge_val_1_i to i32, !dbg !95 ; [#uses=1 type=i32] [debug line = 131:31]
  %tmp_61 = add i23 %tmp_mid2, %j_cast1, !dbg !95 ; [#uses=1 type=i23] [debug line = 131:31]
  %tmp_61_cast = sext i23 %tmp_61 to i32, !dbg !95 ; [#uses=1 type=i32] [debug line = 131:31]
  %tmp_62_cast = zext i32 %tmp_61_cast to i33     ; [#uses=1 type=i33]
  %out_pix4_sum = add i33 %tmp_62_cast, %tmp_cast ; [#uses=1 type=i33]
  %out_pix4_sum_cast = zext i33 %out_pix4_sum to i64 ; [#uses=1 type=i64]
  %gmem1_addr_3 = getelementptr i32* %gmem1, i64 %out_pix4_sum_cast ; [#uses=3 type=i32*]
  %gmem1_addr_4_req = call i1 @_ssdm_op_WriteReq.m_axi.i32P(i32* %gmem1_addr_3, i32 1), !dbg !95 ; [#uses=0 type=i1] [debug line = 131:31]
  call void @_ssdm_op_Write.m_axi.i32P(i32* %gmem1_addr_3, i32 %tmp_60, i4 -1), !dbg !95 ; [debug line = 131:31]
  %gmem1_addr_4_resp = call i1 @_ssdm_op_WriteResp.m_axi.i32P(i32* %gmem1_addr_3), !dbg !95 ; [#uses=0 type=i1] [debug line = 131:31]
  br label %4

; <label>:4                                       ; preds = %_ifconv11, %_ifconv
  br label %ifBlock

ifBlock:                                          ; preds = %4, %2
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([14 x i8]* @p_str8, i32 %tmp_8) nounwind, !dbg !106 ; [#uses=0 type=i32] [debug line = 133:3]
  %j_1 = add i11 %j_mid2, 1, !dbg !107            ; [#uses=1 type=i11] [debug line = 121:53]
  call void @llvm.dbg.value(metadata !{i11 %j_1}, i64 0, metadata !108), !dbg !107 ; [debug line = 121:53] [debug variable = j]
  br label %1

.reset:                                           ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([28 x i8]* @OperatorLines_Operat)
  %tmp_s = icmp eq i11 %j, -128, !dbg !109        ; [#uses=7 type=i1] [debug line = 121:41]
  %j_mid2 = select i1 %tmp_s, i11 0, i11 %j       ; [#uses=3 type=i11]
  %i_s = add i11 1, %i, !dbg !110                 ; [#uses=7 type=i11] [debug line = 120:56]
  %tmp_7 = trunc i11 %i_s to i2, !dbg !58         ; [#uses=3 type=i2] [debug line = 120:40]
  %tmp_1_mid1 = icmp ult i11 %i_s, 3, !dbg !60    ; [#uses=1 type=i1] [debug line = 123:2]
  %tmp_1_mid2 = select i1 %tmp_s, i1 %tmp_1_mid1, i1 %tmp_1, !dbg !60 ; [#uses=1 type=i1] [debug line = 123:2]
  %p_shl1_mid1 = call i22 @_ssdm_op_BitConcatenate.i22.i11.i11(i11 %i_s, i11 0), !dbg !64 ; [#uses=1 type=i22] [debug line = 124:5]
  %p_shl1_cast_mid1 = zext i22 %p_shl1_mid1 to i23, !dbg !64 ; [#uses=1 type=i23] [debug line = 124:5]
  %p_shl2_mid1 = call i18 @_ssdm_op_BitConcatenate.i18.i11.i7(i11 %i_s, i7 0), !dbg !64 ; [#uses=1 type=i18] [debug line = 124:5]
  %p_shl2_cast_mid1 = zext i18 %p_shl2_mid1 to i23, !dbg !64 ; [#uses=1 type=i23] [debug line = 124:5]
  %tmp_2_mid1 = sub i23 %p_shl1_cast_mid1, %p_shl2_cast_mid1, !dbg !64 ; [#uses=1 type=i23] [debug line = 124:5]
  %tmp_2_mid2 = select i1 %tmp_s, i23 %tmp_2_mid1, i23 %tmp_2, !dbg !64 ; [#uses=3 type=i23] [debug line = 124:5]
  %tmp_3_mid1 = icmp ugt i11 %i_s, 2, !dbg !66    ; [#uses=1 type=i1] [debug line = 126:9]
  %tmp_4_mid1 = icmp ult i11 %i_s, -968, !dbg !66 ; [#uses=1 type=i1] [debug line = 126:9]
  %or_cond_mid1 = and i1 %tmp_3_mid1, %tmp_4_mid1, !dbg !66 ; [#uses=1 type=i1] [debug line = 126:9]
  %or_cond_mid2 = select i1 %tmp_s, i1 %or_cond_mid1, i1 %or_cond, !dbg !66 ; [#uses=1 type=i1] [debug line = 126:9]
  %p_shl3_mid1 = call i13 @_ssdm_op_BitConcatenate.i13.i2.i11(i2 %tmp_7, i11 0), !dbg !67 ; [#uses=1 type=i13] [debug line = 127:5]
  %p_shl3_cast_mid1 = zext i13 %p_shl3_mid1 to i14, !dbg !67 ; [#uses=1 type=i14] [debug line = 127:5]
  %p_shl4_mid1 = call i9 @_ssdm_op_BitConcatenate.i9.i2.i7(i2 %tmp_7, i7 0), !dbg !67 ; [#uses=1 type=i9] [debug line = 127:5]
  %p_shl4_cast_mid1 = zext i9 %p_shl4_mid1 to i14, !dbg !67 ; [#uses=1 type=i14] [debug line = 127:5]
  %tmp_6_mid1 = sub i14 %p_shl3_cast_mid1, %p_shl4_cast_mid1, !dbg !67 ; [#uses=1 type=i14] [debug line = 127:5]
  %tmp_6_mid2 = select i1 %tmp_s, i14 %tmp_6_mid1, i14 %tmp_6, !dbg !67 ; [#uses=1 type=i14] [debug line = 127:5]
  %tmp_7_cast_mid1 = xor i2 %tmp_7, -2, !dbg !69  ; [#uses=2 type=i2] [debug line = 128:31]
  %p_shl_mid1 = call i13 @_ssdm_op_BitConcatenate.i13.i2.i11(i2 %tmp_7_cast_mid1, i11 0), !dbg !69 ; [#uses=1 type=i13] [debug line = 128:31]
  %p_shl_cast_mid1 = zext i13 %p_shl_mid1 to i14, !dbg !69 ; [#uses=1 type=i14] [debug line = 128:31]
  %p_shl5_mid1 = call i9 @_ssdm_op_BitConcatenate.i9.i2.i7(i2 %tmp_7_cast_mid1, i7 0), !dbg !69 ; [#uses=1 type=i9] [debug line = 128:31]
  %p_shl5_cast_mid1 = zext i9 %p_shl5_mid1 to i14, !dbg !69 ; [#uses=1 type=i14] [debug line = 128:31]
  %tmp_9_mid1 = sub i14 %p_shl_cast_mid1, %p_shl5_cast_mid1, !dbg !69 ; [#uses=1 type=i14] [debug line = 128:31]
  %tmp_9_mid2 = select i1 %tmp_s, i14 %tmp_9_mid1, i14 %tmp_9, !dbg !69 ; [#uses=2 type=i14] [debug line = 128:31]
  %tmp_mid2 = add i23 -3840, %tmp_2_mid2, !dbg !69 ; [#uses=2 type=i23] [debug line = 128:31]
  %i_mid2 = select i1 %tmp_s, i11 %i_s, i11 %i    ; [#uses=1 type=i11]
  %j_cast = zext i11 %j_mid2 to i14, !dbg !109    ; [#uses=3 type=i14] [debug line = 121:41]
  %j_cast1 = zext i11 %j_mid2 to i23, !dbg !109   ; [#uses=4 type=i23] [debug line = 121:41]
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @p_str8) nounwind, !dbg !111 ; [debug line = 121:59]
  %tmp_8 = call i32 (...)* @_ssdm_op_SpecRegionBegin([14 x i8]* @p_str8) nounwind, !dbg !111 ; [#uses=1 type=i32] [debug line = 121:59]
  call void (...)* @_ssdm_op_SpecPipeline(i32 25, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind, !dbg !112 ; [debug line = 122:1]
  br i1 %tmp_1_mid2, label %2, label %3, !dbg !60 ; [debug line = 123:2]

.preheader6:                                      ; preds = %5, %.preheader6.preheader
  %i1 = phi i11 [ %i_1, %5 ], [ 0, %.preheader6.preheader ] ; [#uses=2 type=i11]
  %tmp_10 = icmp eq i11 %i1, -128, !dbg !73       ; [#uses=1 type=i1] [debug line = 178:40]
  %empty_5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1920, i64 1920, i64 1920) nounwind ; [#uses=0 type=i32]
  %i_1 = add i11 %i1, 1, !dbg !113                ; [#uses=1 type=i11] [debug line = 178:52]
  br i1 %tmp_10, label %.preheader5.preheader, label %5, !dbg !73 ; [debug line = 178:40]

.preheader5.preheader:                            ; preds = %.preheader6
  %gmem1_addr_wr_resp = call i1 @_ssdm_op_WriteResp.m_axi.i32P(i32* %gmem1_addr), !dbg !70 ; [#uses=0 type=i1] [debug line = 180:2]
  %out_pix4_sum8 = add i31 %tmp_cast1, 2071680    ; [#uses=1 type=i31]
  %out_pix4_sum8_cast = zext i31 %out_pix4_sum8 to i64 ; [#uses=1 type=i64]
  %gmem1_addr_1 = getelementptr i32* %gmem1, i64 %out_pix4_sum8_cast ; [#uses=3 type=i32*]
  %gmem1_addr_1_wr_req = call i1 @_ssdm_op_WriteReq.m_axi.i32P(i32* %gmem1_addr_1, i32 1920), !dbg !114 ; [#uses=0 type=i1] [debug line = 183:2]
  br label %.preheader5, !dbg !117                ; [debug line = 181:58]

; <label>:5                                       ; preds = %.preheader6
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @p_str9) nounwind, !dbg !118 ; [debug line = 180:3]
  %tmp_13 = call i32 (...)* @_ssdm_op_SpecRegionBegin([14 x i8]* @p_str9) nounwind, !dbg !118 ; [#uses=1 type=i32] [debug line = 180:3]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind, !dbg !119 ; [debug line = 179:1]
  call void @_ssdm_op_Write.m_axi.i32P(i32* %gmem1_addr, i32 0, i4 -1), !dbg !70 ; [debug line = 180:2]
  %empty_6 = call i32 (...)* @_ssdm_op_SpecRegionEnd([14 x i8]* @p_str9, i32 %tmp_13) nounwind, !dbg !120 ; [#uses=0 type=i32] [debug line = 180:15]
  call void @llvm.dbg.value(metadata !{i11 %i_1}, i64 0, metadata !121), !dbg !113 ; [debug line = 178:52] [debug variable = i]
  br label %.preheader6, !dbg !113                ; [debug line = 178:52]

.preheader5:                                      ; preds = %6, %.preheader5.preheader
  %i2 = phi i16 [ %i_2, %6 ], [ -25472, %.preheader5.preheader ] ; [#uses=2 type=i16]
  %exitcond2 = icmp eq i16 %i2, -23552, !dbg !117 ; [#uses=1 type=i1] [debug line = 181:58]
  %empty_7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1920, i64 1920, i64 1920) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond2, label %.preheader4.preheader, label %6, !dbg !117 ; [debug line = 181:58]

.preheader4.preheader:                            ; preds = %.preheader5
  %gmem1_addr_1_wr_resp = call i1 @_ssdm_op_WriteResp.m_axi.i32P(i32* %gmem1_addr_1), !dbg !114 ; [#uses=0 type=i1] [debug line = 183:2]
  br label %.preheader4, !dbg !122                ; [debug line = 184:41]

; <label>:6                                       ; preds = %.preheader5
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @p_str10) nounwind, !dbg !124 ; [debug line = 183:3]
  %tmp_26 = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str10) nounwind, !dbg !124 ; [#uses=1 type=i32] [debug line = 183:3]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind, !dbg !125 ; [debug line = 182:1]
  call void @_ssdm_op_Write.m_axi.i32P(i32* %gmem1_addr_1, i32 0, i4 -1), !dbg !114 ; [debug line = 183:2]
  %empty_8 = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str10, i32 %tmp_26) nounwind, !dbg !126 ; [#uses=0 type=i32] [debug line = 183:15]
  %i_2 = add i16 %i2, 1, !dbg !127                ; [#uses=1 type=i16] [debug line = 181:79]
  call void @llvm.dbg.value(metadata !{i16 %i_2}, i64 0, metadata !128), !dbg !127 ; [debug line = 181:79] [debug variable = i]
  br label %.preheader5, !dbg !127                ; [debug line = 181:79]

.preheader4:                                      ; preds = %7, %.preheader4.preheader
  %i3 = phi i21 [ %i_3, %7 ], [ 0, %.preheader4.preheader ] ; [#uses=3 type=i21]
  %tmp_20 = icmp ult i21 %i3, -23552, !dbg !122   ; [#uses=1 type=i1] [debug line = 184:41]
  %empty_9 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1080, i64 1080, i64 1080) nounwind ; [#uses=0 type=i32]
  br i1 %tmp_20, label %7, label %.preheader3.preheader, !dbg !122 ; [debug line = 184:41]

.preheader3.preheader:                            ; preds = %.preheader4
  br label %.preheader3, !dbg !129                ; [debug line = 187:47]

; <label>:7                                       ; preds = %.preheader4
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str11) nounwind, !dbg !131 ; [debug line = 186:3]
  %tmp_30 = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str11) nounwind, !dbg !131 ; [#uses=1 type=i32] [debug line = 186:3]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind, !dbg !133 ; [debug line = 185:1]
  %tmp_21_cast = zext i21 %i3 to i31              ; [#uses=1 type=i31]
  %out_pix4_sum1 = add i31 %tmp_21_cast, %tmp_cast1 ; [#uses=1 type=i31]
  %out_pix4_sum1_cast = zext i31 %out_pix4_sum1 to i64 ; [#uses=1 type=i64]
  %gmem1_addr_4 = getelementptr i32* %gmem1, i64 %out_pix4_sum1_cast ; [#uses=3 type=i32*]
  %gmem1_addr_6_req = call i1 @_ssdm_op_WriteReq.m_axi.i32P(i32* %gmem1_addr_4, i32 1), !dbg !134 ; [#uses=0 type=i1] [debug line = 186:2]
  call void @_ssdm_op_Write.m_axi.i32P(i32* %gmem1_addr_4, i32 0, i4 -1), !dbg !134 ; [debug line = 186:2]
  %gmem1_addr_6_resp = call i1 @_ssdm_op_WriteResp.m_axi.i32P(i32* %gmem1_addr_4), !dbg !134 ; [#uses=0 type=i1] [debug line = 186:2]
  %empty_10 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str11, i32 %tmp_30) nounwind, !dbg !135 ; [#uses=0 type=i32] [debug line = 186:15]
  %i_3 = add i21 %i3, 1920, !dbg !136             ; [#uses=1 type=i21] [debug line = 184:62]
  call void @llvm.dbg.value(metadata !{i21 %i_3}, i64 0, metadata !137), !dbg !136 ; [debug line = 184:62] [debug variable = i]
  br label %.preheader4, !dbg !136                ; [debug line = 184:62]

.preheader3:                                      ; preds = %8, %.preheader3.preheader
  %i4 = phi i21 [ %i_4, %8 ], [ 1919, %.preheader3.preheader ] ; [#uses=3 type=i21]
  %tmp_31 = icmp ult i21 %i4, -23552, !dbg !129   ; [#uses=1 type=i1] [debug line = 187:47]
  %empty_11 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1080, i64 1080, i64 1080) nounwind ; [#uses=0 type=i32]
  br i1 %tmp_31, label %8, label %.preheader.preheader, !dbg !129 ; [debug line = 187:47]

.preheader.preheader:                             ; preds = %.preheader3
  %tmp_68 = zext i30 %out_pix3 to i64             ; [#uses=1 type=i64]
  %gmem1_addr_6 = getelementptr i32* %gmem1, i64 %tmp_68 ; [#uses=5 type=i32*]
  %p_rd_req = call i1 @_ssdm_op_ReadReq.m_axi.i32P(i32* %gmem1_addr_6, i32 2073600), !dbg !138 ; [#uses=0 type=i1] [debug line = 194:26]
  %p_wr_req = call i1 @_ssdm_op_WriteReq.m_axi.i32P(i32* %gmem1_addr_6, i32 2073600), !dbg !141 ; [#uses=0 type=i1] [debug line = 198:4]
  br label %.preheader, !dbg !142                 ; [debug line = 191:21]

; <label>:8                                       ; preds = %.preheader3
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @p_str12) nounwind, !dbg !143 ; [debug line = 189:3]
  %tmp_33 = call i32 (...)* @_ssdm_op_SpecRegionBegin([14 x i8]* @p_str12) nounwind, !dbg !143 ; [#uses=1 type=i32] [debug line = 189:3]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind, !dbg !145 ; [debug line = 188:1]
  %tmp_34_cast = zext i21 %i4 to i31              ; [#uses=1 type=i31]
  %out_pix4_sum2 = add i31 %tmp_34_cast, %tmp_cast1 ; [#uses=1 type=i31]
  %out_pix4_sum2_cast = zext i31 %out_pix4_sum2 to i64 ; [#uses=1 type=i64]
  %gmem1_addr_5 = getelementptr i32* %gmem1, i64 %out_pix4_sum2_cast ; [#uses=3 type=i32*]
  %gmem1_addr_7_req = call i1 @_ssdm_op_WriteReq.m_axi.i32P(i32* %gmem1_addr_5, i32 1), !dbg !146 ; [#uses=0 type=i1] [debug line = 189:2]
  call void @_ssdm_op_Write.m_axi.i32P(i32* %gmem1_addr_5, i32 0, i4 -1), !dbg !146 ; [debug line = 189:2]
  %gmem1_addr_7_resp = call i1 @_ssdm_op_WriteResp.m_axi.i32P(i32* %gmem1_addr_5), !dbg !146 ; [#uses=0 type=i1] [debug line = 189:2]
  %empty_12 = call i32 (...)* @_ssdm_op_SpecRegionEnd([14 x i8]* @p_str12, i32 %tmp_33) nounwind, !dbg !147 ; [#uses=0 type=i32] [debug line = 189:15]
  %i_4 = add i21 %i4, 1920, !dbg !148             ; [#uses=1 type=i21] [debug line = 187:68]
  call void @llvm.dbg.value(metadata !{i21 %i_4}, i64 0, metadata !149), !dbg !148 ; [debug line = 187:68] [debug variable = i]
  br label %.preheader3, !dbg !148                ; [debug line = 187:68]

.preheader:                                       ; preds = %9, %.preheader.preheader
  %i5 = phi i21 [ %i_5, %9 ], [ 0, %.preheader.preheader ] ; [#uses=2 type=i21]
  %exitcond1 = icmp eq i21 %i5, -23552, !dbg !142 ; [#uses=1 type=i1] [debug line = 191:21]
  %empty_13 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2073600, i64 2073600, i64 2073600) nounwind ; [#uses=0 type=i32]
  %i_5 = add i21 %i5, 1, !dbg !150                ; [#uses=1 type=i21] [debug line = 191:40]
  br i1 %exitcond1, label %10, label %9, !dbg !142 ; [debug line = 191:21]

; <label>:9                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([4 x i8]* @p_str13) nounwind, !dbg !151 ; [debug line = 191:46]
  %tmp_69 = call i32 (...)* @_ssdm_op_SpecRegionBegin([4 x i8]* @p_str13) nounwind, !dbg !151 ; [#uses=1 type=i32] [debug line = 191:46]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind, !dbg !152 ; [debug line = 192:1]
  %gmem1_addr_6_read = call i32 @_ssdm_op_Read.m_axi.i32P(i32* %gmem1_addr_6), !dbg !138 ; [#uses=1 type=i32] [debug line = 194:26]
  %val = trunc i32 %gmem1_addr_6_read to i8, !dbg !138 ; [#uses=4 type=i8] [debug line = 194:26]
  call void @llvm.dbg.value(metadata !{i8 %val}, i64 0, metadata !153), !dbg !138 ; [debug line = 194:26] [debug variable = val]
  %fourWide = call i32 @_ssdm_op_BitConcatenate.i32.i8.i8.i8.i8(i8 %val, i8 %val, i8 %val, i8 %val), !dbg !154 ; [#uses=1 type=i32] [debug line = 197:5]
  call void @llvm.dbg.value(metadata !{i32 %fourWide}, i64 0, metadata !157), !dbg !154 ; [debug line = 197:5] [debug variable = fourWide]
  call void @_ssdm_op_Write.m_axi.i32P(i32* %gmem1_addr_6, i32 %fourWide, i4 -1), !dbg !141 ; [debug line = 198:4]
  %empty_14 = call i32 (...)* @_ssdm_op_SpecRegionEnd([4 x i8]* @p_str13, i32 %tmp_69) nounwind, !dbg !171 ; [#uses=0 type=i32] [debug line = 199:3]
  call void @llvm.dbg.value(metadata !{i21 %i_5}, i64 0, metadata !172), !dbg !150 ; [debug line = 191:40] [debug variable = i]
  br label %.preheader, !dbg !150                 ; [debug line = 191:40]

; <label>:10                                      ; preds = %.preheader
  %p_wr_resp = call i1 @_ssdm_op_WriteResp.m_axi.i32P(i32* %gmem1_addr_6), !dbg !141 ; [#uses=0 type=i1] [debug line = 198:4]
  ret void, !dbg !173                             ; [debug line = 201:1]
}

; [#uses=1]
declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

; [#uses=26]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=16]
define internal fastcc zeroext i8 @getVal(i14 %index, i2 %xDiff, i2 %yDiff, [7680 x i8]* nocapture %Y) readonly {
_ifconv:
  %yDiff_read = call i2 @_ssdm_op_Read.ap_auto.i2(i2 %yDiff) ; [#uses=2 type=i2]
  call void @llvm.dbg.value(metadata !{i2 %yDiff_read}, i64 0, metadata !174), !dbg !178 ; [debug line = 11:56] [debug variable = yDiff]
  %xDiff_read = call i2 @_ssdm_op_Read.ap_auto.i2(i2 %xDiff) ; [#uses=1 type=i2]
  call void @llvm.dbg.value(metadata !{i2 %xDiff_read}, i64 0, metadata !179), !dbg !180 ; [debug line = 11:45] [debug variable = xDiff]
  %index_read = call i14 @_ssdm_op_Read.ap_auto.i14(i14 %index) ; [#uses=1 type=i14]
  call void @llvm.dbg.value(metadata !{i14 %index_read}, i64 0, metadata !181), !dbg !182 ; [debug line = 11:34] [debug variable = index]
  call void @llvm.dbg.value(metadata !{i14 %index}, i64 0, metadata !181), !dbg !182 ; [debug line = 11:34] [debug variable = index]
  call void @llvm.dbg.value(metadata !{i2 %xDiff}, i64 0, metadata !179), !dbg !180 ; [debug line = 11:45] [debug variable = xDiff]
  call void @llvm.dbg.value(metadata !{i2 %yDiff}, i64 0, metadata !174), !dbg !178 ; [debug line = 11:56] [debug variable = yDiff]
  call void @llvm.dbg.value(metadata !{[7680 x i8]* %Y}, i64 0, metadata !183), !dbg !185 ; [debug line = 11:88] [debug variable = Y]
  %p_shl = call i13 @_ssdm_op_BitConcatenate.i13.i2.i11(i2 %yDiff_read, i11 0), !dbg !186 ; [#uses=1 type=i13] [debug line = 13:55]
  %p_shl2 = call i9 @_ssdm_op_BitConcatenate.i9.i2.i7(i2 %yDiff_read, i7 0), !dbg !186 ; [#uses=1 type=i9] [debug line = 13:55]
  %p_shl2_cast = sext i9 %p_shl2 to i13, !dbg !186 ; [#uses=1 type=i13] [debug line = 13:55]
  %tmp = sub i13 %p_shl, %p_shl2_cast, !dbg !186  ; [#uses=1 type=i13] [debug line = 13:55]
  %xDiff_cast = sext i2 %xDiff_read to i13, !dbg !186 ; [#uses=1 type=i13] [debug line = 13:55]
  %tmp1 = add i13 %xDiff_cast, %tmp, !dbg !186    ; [#uses=1 type=i13] [debug line = 13:55]
  %tmp1_cast = sext i13 %tmp1 to i15, !dbg !186   ; [#uses=1 type=i15] [debug line = 13:55]
  %index_cast = sext i14 %index_read to i15, !dbg !186 ; [#uses=1 type=i15] [debug line = 13:55]
  %fullIndex = add i15 %index_cast, %tmp1_cast, !dbg !186 ; [#uses=5 type=i15] [debug line = 13:55]
  call void @llvm.dbg.value(metadata !{i15 %fullIndex}, i64 0, metadata !188), !dbg !186 ; [debug line = 13:55] [debug variable = fullIndex]
  %tmp_71 = call i1 @_ssdm_op_BitSelect.i1.i15.i32(i15 %fullIndex, i32 14), !dbg !189 ; [#uses=1 type=i1] [debug line = 14:2]
  %fullIndex_2 = add i15 %fullIndex, 7680, !dbg !190 ; [#uses=1 type=i15] [debug line = 17:3]
  %fullIndex_2_cast = zext i15 %fullIndex_2 to i16, !dbg !190 ; [#uses=1 type=i16] [debug line = 17:3]
  call void @llvm.dbg.value(metadata !{i15 %fullIndex_2}, i64 0, metadata !188), !dbg !190 ; [debug line = 17:3] [debug variable = fullIndex]
  %tmp_s = icmp slt i15 %fullIndex, 7680, !dbg !192 ; [#uses=1 type=i1] [debug line = 19:7]
  %fullIndex_3 = add i15 %fullIndex, -7680, !dbg !193 ; [#uses=1 type=i15] [debug line = 22:3]
  call void @llvm.dbg.value(metadata !{i15 %fullIndex_3}, i64 0, metadata !188), !dbg !193 ; [debug line = 22:3] [debug variable = fullIndex]
  %p_s = select i1 %tmp_s, i15 %fullIndex, i15 %fullIndex_3, !dbg !192 ; [#uses=1 type=i15] [debug line = 19:7]
  %p_cast = sext i15 %p_s to i16, !dbg !192       ; [#uses=1 type=i16] [debug line = 19:7]
  %fullIndex_1 = select i1 %tmp_71, i16 %fullIndex_2_cast, i16 %p_cast ; [#uses=1 type=i16]
  %fullIndex_1_cast = sext i16 %fullIndex_1 to i32 ; [#uses=1 type=i32]
  %tmp_70 = zext i32 %fullIndex_1_cast to i64, !dbg !195 ; [#uses=1 type=i64] [debug line = 25:2]
  %Y_addr = getelementptr [7680 x i8]* %Y, i64 0, i64 %tmp_70, !dbg !195 ; [#uses=1 type=i8*] [debug line = 25:2]
  %Y_load = load i8* %Y_addr, align 1, !dbg !195  ; [#uses=1 type=i8] [debug line = 25:2]
  ret i8 %Y_load, !dbg !195                       ; [debug line = 25:2]
}

; [#uses=7]
define weak i1 @_ssdm_op_WriteResp.m_axi.i32P(i32*) {
entry:
  ret i1 true
}

; [#uses=7]
define weak i1 @_ssdm_op_WriteReq.m_axi.i32P(i32*, i32) {
entry:
  ret i1 true
}

; [#uses=7]
define weak void @_ssdm_op_Write.m_axi.i32P(i32*, i32, i4) {
entry:
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=6]
define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

; [#uses=6]
define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

; [#uses=6]
define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

; [#uses=5]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=7]
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

; [#uses=1]
define weak i1 @_ssdm_op_ReadReq.m_axi.i32P(i32*, i32) {
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

; [#uses=1]
define weak i32 @_ssdm_op_Read.m_axi.i32P(i32*) {
entry:
  %empty = load i32* %0                           ; [#uses=1 type=i32]
  ret i32 %empty
}

; [#uses=2]
define weak i2 @_ssdm_op_Read.ap_auto.i2(i2) {
entry:
  ret i2 %0
}

; [#uses=1]
define weak i14 @_ssdm_op_Read.ap_auto.i14(i14) {
entry:
  ret i14 %0
}

; [#uses=0]
declare i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=0]
declare i8 @_ssdm_op_PartSelect.i8.i11.i32.i32(i11, i32, i32) nounwind readnone

; [#uses=1]
define weak i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_15 = trunc i32 %empty to i30             ; [#uses=1 type=i30]
  ret i30 %empty_15
}

; [#uses=0]
declare i2 @_ssdm_op_PartSelect.i2.i11.i32.i32(i11, i32, i32) nounwind readnone

; [#uses=1]
define weak i1 @_ssdm_op_BitSelect.i1.i15.i32(i15, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i15                    ; [#uses=1 type=i15]
  %empty_16 = shl i15 1, %empty                   ; [#uses=1 type=i15]
  %empty_17 = and i15 %0, %empty_16               ; [#uses=1 type=i15]
  %empty_18 = icmp ne i15 %empty_17, 0            ; [#uses=1 type=i1]
  ret i1 %empty_18
}

; [#uses=8]
define weak i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8, i1) nounwind readnone {
entry:
  %empty = zext i8 %0 to i9                       ; [#uses=1 type=i9]
  %empty_19 = zext i1 %1 to i9                    ; [#uses=1 type=i9]
  %empty_20 = shl i9 %empty, 1                    ; [#uses=1 type=i9]
  %empty_21 = or i9 %empty_20, %empty_19          ; [#uses=1 type=i9]
  ret i9 %empty_21
}

; [#uses=5]
define weak i9 @_ssdm_op_BitConcatenate.i9.i2.i7(i2, i7) nounwind readnone {
entry:
  %empty = zext i2 %0 to i9                       ; [#uses=1 type=i9]
  %empty_22 = zext i7 %1 to i9                    ; [#uses=1 type=i9]
  %empty_23 = shl i9 %empty, 7                    ; [#uses=1 type=i9]
  %empty_24 = or i9 %empty_23, %empty_22          ; [#uses=1 type=i9]
  ret i9 %empty_24
}

; [#uses=1]
define weak i32 @_ssdm_op_BitConcatenate.i32.i8.i8.i8.i8(i8, i8, i8, i8) nounwind readnone {
entry:
  %empty = zext i8 %2 to i16                      ; [#uses=1 type=i16]
  %empty_25 = zext i8 %3 to i16                   ; [#uses=1 type=i16]
  %empty_26 = shl i16 %empty, 8                   ; [#uses=1 type=i16]
  %empty_27 = or i16 %empty_26, %empty_25         ; [#uses=1 type=i16]
  %empty_28 = zext i8 %1 to i24                   ; [#uses=1 type=i24]
  %empty_29 = zext i16 %empty_27 to i24           ; [#uses=1 type=i24]
  %empty_30 = shl i24 %empty_28, 16               ; [#uses=1 type=i24]
  %empty_31 = or i24 %empty_30, %empty_29         ; [#uses=1 type=i24]
  %empty_32 = zext i8 %0 to i32                   ; [#uses=1 type=i32]
  %empty_33 = zext i24 %empty_31 to i32           ; [#uses=1 type=i32]
  %empty_34 = shl i32 %empty_32, 24               ; [#uses=1 type=i32]
  %empty_35 = or i32 %empty_34, %empty_33         ; [#uses=1 type=i32]
  ret i32 %empty_35
}

; [#uses=2]
define weak i22 @_ssdm_op_BitConcatenate.i22.i11.i11(i11, i11) nounwind readnone {
entry:
  %empty = zext i11 %0 to i22                     ; [#uses=1 type=i22]
  %empty_36 = zext i11 %1 to i22                  ; [#uses=1 type=i22]
  %empty_37 = shl i22 %empty, 11                  ; [#uses=1 type=i22]
  %empty_38 = or i22 %empty_37, %empty_36         ; [#uses=1 type=i22]
  ret i22 %empty_38
}

; [#uses=2]
define weak i18 @_ssdm_op_BitConcatenate.i18.i11.i7(i11, i7) nounwind readnone {
entry:
  %empty = zext i11 %0 to i18                     ; [#uses=1 type=i18]
  %empty_39 = zext i7 %1 to i18                   ; [#uses=1 type=i18]
  %empty_40 = shl i18 %empty, 7                   ; [#uses=1 type=i18]
  %empty_41 = or i18 %empty_40, %empty_39         ; [#uses=1 type=i18]
  ret i18 %empty_41
}

; [#uses=5]
define weak i13 @_ssdm_op_BitConcatenate.i13.i2.i11(i2, i11) nounwind readnone {
entry:
  %empty = zext i2 %0 to i13                      ; [#uses=1 type=i13]
  %empty_42 = zext i11 %1 to i13                  ; [#uses=1 type=i13]
  %empty_43 = shl i13 %empty, 11                  ; [#uses=1 type=i13]
  %empty_44 = or i13 %empty_43, %empty_42         ; [#uses=1 type=i13]
  ret i13 %empty_44
}

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
!18 = metadata !{metadata !"gmem0", metadata !"inter_pix", metadata !"READONLY"}
!19 = metadata !{metadata !"gmem1", metadata !"out_pix", metadata !"READWRITE"}
!20 = metadata !{metadata !"inter_pix", metadata !""}
!21 = metadata !{metadata !"out_pix", metadata !""}
!22 = metadata !{i32 786689, metadata !23, metadata !"out_pix", null, i32 88, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!23 = metadata !{i32 786478, i32 0, metadata !24, metadata !"sobel_filter", metadata !"sobel_filter", metadata !"_Z12sobel_filterPhPj", metadata !24, i32 88, metadata !25, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !32, i32 89} ; [ DW_TAG_subprogram ]
!24 = metadata !{i32 786473, metadata !"SobelLab4/Sobel.cpp", metadata !"X:\5CBureau\5CHDMI_3610\5C3610_4\5C1490679_1771119", null} ; [ DW_TAG_file_type ]
!25 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !26, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!26 = metadata !{null, metadata !27, metadata !30}
!27 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !28} ; [ DW_TAG_pointer_type ]
!28 = metadata !{i32 786454, null, metadata !"uint8_t", metadata !24, i32 36, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_typedef ]
!29 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!30 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !31} ; [ DW_TAG_pointer_type ]
!31 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!32 = metadata !{metadata !33}
!33 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!34 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 66355200, i64 32, i32 0, i32 0, metadata !31, metadata !35, i32 0, i32 0} ; [ DW_TAG_array_type ]
!35 = metadata !{metadata !36}
!36 = metadata !{i32 786465, i64 0, i64 2073599}  ; [ DW_TAG_subrange_type ]
!37 = metadata !{i32 88, i32 60, metadata !23, null}
!38 = metadata !{i32 786689, metadata !23, metadata !"inter_pix", null, i32 88, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!39 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !28, metadata !35, i32 0, i32 0} ; [ DW_TAG_array_type ]
!40 = metadata !{i32 88, i32 27, metadata !23, null}
!41 = metadata !{metadata !42}
!42 = metadata !{i32 0, i32 31, metadata !43}
!43 = metadata !{metadata !44}
!44 = metadata !{metadata !"out_pix", metadata !45, metadata !"unsigned int", i32 0, i32 31}
!45 = metadata !{metadata !46}
!46 = metadata !{i32 0, i32 2073599, i32 1}
!47 = metadata !{metadata !48}
!48 = metadata !{i32 0, i32 7, metadata !49}
!49 = metadata !{metadata !50}
!50 = metadata !{metadata !"inter_pix", metadata !45, metadata !"unsigned char", i32 0, i32 7}
!51 = metadata !{i32 99, i32 1, metadata !52, null}
!52 = metadata !{i32 786443, metadata !23, i32 89, i32 1, metadata !24, i32 5} ; [ DW_TAG_lexical_block ]
!53 = metadata !{i32 786688, metadata !52, metadata !"superCache", metadata !24, i32 103, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!54 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 61440, i64 8, i32 0, i32 0, metadata !28, metadata !55, i32 0, i32 0} ; [ DW_TAG_array_type ]
!55 = metadata !{metadata !56}
!56 = metadata !{i32 786465, i64 0, i64 7679}     ; [ DW_TAG_subrange_type ]
!57 = metadata !{i32 103, i32 10, metadata !52, null}
!58 = metadata !{i32 120, i32 40, metadata !59, null}
!59 = metadata !{i32 786443, metadata !52, i32 120, i32 17, metadata !24, i32 6} ; [ DW_TAG_lexical_block ]
!60 = metadata !{i32 123, i32 2, metadata !61, null}
!61 = metadata !{i32 786443, metadata !62, i32 121, i32 58, metadata !24, i32 9} ; [ DW_TAG_lexical_block ]
!62 = metadata !{i32 786443, metadata !63, i32 121, i32 18, metadata !24, i32 8} ; [ DW_TAG_lexical_block ]
!63 = metadata !{i32 786443, metadata !59, i32 120, i32 61, metadata !24, i32 7} ; [ DW_TAG_lexical_block ]
!64 = metadata !{i32 124, i32 5, metadata !65, null}
!65 = metadata !{i32 786443, metadata !61, i32 123, i32 13, metadata !24, i32 10} ; [ DW_TAG_lexical_block ]
!66 = metadata !{i32 126, i32 9, metadata !61, null}
!67 = metadata !{i32 127, i32 5, metadata !68, null}
!68 = metadata !{i32 786443, metadata !61, i32 126, i32 33, metadata !24, i32 11} ; [ DW_TAG_lexical_block ]
!69 = metadata !{i32 128, i32 31, metadata !68, null}
!70 = metadata !{i32 180, i32 2, metadata !71, null}
!71 = metadata !{i32 786443, metadata !72, i32 180, i32 2, metadata !24, i32 14} ; [ DW_TAG_lexical_block ]
!72 = metadata !{i32 786443, metadata !52, i32 178, i32 17, metadata !24, i32 13} ; [ DW_TAG_lexical_block ]
!73 = metadata !{i32 178, i32 40, metadata !72, null}
!74 = metadata !{i32 125, i32 4, metadata !65, null}
!75 = metadata !{i32 786689, metadata !76, metadata !"fullIndex", metadata !24, i32 16777246, metadata !79, i32 0, metadata !69} ; [ DW_TAG_arg_variable ]
!76 = metadata !{i32 786478, i32 0, metadata !24, metadata !"sobel_operator", metadata !"sobel_operator", metadata !"_Z14sobel_operatoriPh", metadata !24, i32 30, metadata !77, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !32, i32 31} ; [ DW_TAG_subprogram ]
!77 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !78, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!78 = metadata !{metadata !28, metadata !79, metadata !27}
!79 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !80} ; [ DW_TAG_const_type ]
!80 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!81 = metadata !{i32 30, i32 34, metadata !76, metadata !69}
!82 = metadata !{i32 67, i32 26, metadata !83, metadata !69}
!83 = metadata !{i32 786443, metadata !84, i32 65, i32 30, metadata !24, i32 4} ; [ DW_TAG_lexical_block ]
!84 = metadata !{i32 786443, metadata !85, i32 65, i32 2, metadata !24, i32 3} ; [ DW_TAG_lexical_block ]
!85 = metadata !{i32 786443, metadata !86, i32 63, i32 30, metadata !24, i32 2} ; [ DW_TAG_lexical_block ]
!86 = metadata !{i32 786443, metadata !87, i32 63, i32 2, metadata !24, i32 1} ; [ DW_TAG_lexical_block ]
!87 = metadata !{i32 786443, metadata !76, i32 31, i32 1, metadata !24, i32 0} ; [ DW_TAG_lexical_block ]
!88 = metadata !{i32 70, i32 26, metadata !83, metadata !69}
!89 = metadata !{i32 74, i32 2, metadata !87, metadata !69}
!90 = metadata !{i32 76, i32 2, metadata !87, metadata !69}
!91 = metadata !{i32 786688, metadata !87, metadata !"edge_val", metadata !24, i32 50, metadata !28, i32 0, metadata !69} ; [ DW_TAG_auto_variable ]
!92 = metadata !{i32 79, i32 2, metadata !87, metadata !69}
!93 = metadata !{i32 81, i32 7, metadata !87, metadata !69}
!94 = metadata !{i32 129, i32 4, metadata !68, null}
!95 = metadata !{i32 131, i32 31, metadata !96, null}
!96 = metadata !{i32 786443, metadata !61, i32 130, i32 9, metadata !24, i32 12} ; [ DW_TAG_lexical_block ]
!97 = metadata !{i32 786689, metadata !76, metadata !"fullIndex", metadata !24, i32 16777246, metadata !79, i32 0, metadata !95} ; [ DW_TAG_arg_variable ]
!98 = metadata !{i32 30, i32 34, metadata !76, metadata !95}
!99 = metadata !{i32 67, i32 26, metadata !83, metadata !95}
!100 = metadata !{i32 70, i32 26, metadata !83, metadata !95}
!101 = metadata !{i32 74, i32 2, metadata !87, metadata !95}
!102 = metadata !{i32 76, i32 2, metadata !87, metadata !95}
!103 = metadata !{i32 786688, metadata !87, metadata !"edge_val", metadata !24, i32 50, metadata !28, i32 0, metadata !95} ; [ DW_TAG_auto_variable ]
!104 = metadata !{i32 79, i32 2, metadata !87, metadata !95}
!105 = metadata !{i32 81, i32 7, metadata !87, metadata !95}
!106 = metadata !{i32 133, i32 3, metadata !61, null}
!107 = metadata !{i32 121, i32 53, metadata !62, null}
!108 = metadata !{i32 786688, metadata !62, metadata !"j", metadata !24, i32 121, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!109 = metadata !{i32 121, i32 41, metadata !62, null}
!110 = metadata !{i32 120, i32 56, metadata !59, null}
!111 = metadata !{i32 121, i32 59, metadata !61, null}
!112 = metadata !{i32 122, i32 1, metadata !61, null}
!113 = metadata !{i32 178, i32 52, metadata !72, null}
!114 = metadata !{i32 183, i32 2, metadata !115, null}
!115 = metadata !{i32 786443, metadata !116, i32 183, i32 2, metadata !24, i32 16} ; [ DW_TAG_lexical_block ]
!116 = metadata !{i32 786443, metadata !52, i32 181, i32 16, metadata !24, i32 15} ; [ DW_TAG_lexical_block ]
!117 = metadata !{i32 181, i32 58, metadata !116, null}
!118 = metadata !{i32 180, i32 3, metadata !71, null}
!119 = metadata !{i32 179, i32 1, metadata !71, null}
!120 = metadata !{i32 180, i32 15, metadata !71, null}
!121 = metadata !{i32 786688, metadata !72, metadata !"i", metadata !24, i32 178, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!122 = metadata !{i32 184, i32 41, metadata !123, null}
!123 = metadata !{i32 786443, metadata !52, i32 184, i32 18, metadata !24, i32 17} ; [ DW_TAG_lexical_block ]
!124 = metadata !{i32 183, i32 3, metadata !115, null}
!125 = metadata !{i32 182, i32 1, metadata !115, null}
!126 = metadata !{i32 183, i32 15, metadata !115, null}
!127 = metadata !{i32 181, i32 79, metadata !116, null}
!128 = metadata !{i32 786688, metadata !116, metadata !"i", metadata !24, i32 181, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!129 = metadata !{i32 187, i32 47, metadata !130, null}
!130 = metadata !{i32 786443, metadata !52, i32 187, i32 17, metadata !24, i32 19} ; [ DW_TAG_lexical_block ]
!131 = metadata !{i32 186, i32 3, metadata !132, null}
!132 = metadata !{i32 786443, metadata !123, i32 186, i32 2, metadata !24, i32 18} ; [ DW_TAG_lexical_block ]
!133 = metadata !{i32 185, i32 1, metadata !132, null}
!134 = metadata !{i32 186, i32 2, metadata !132, null}
!135 = metadata !{i32 186, i32 15, metadata !132, null}
!136 = metadata !{i32 184, i32 62, metadata !123, null}
!137 = metadata !{i32 786688, metadata !123, metadata !"i", metadata !24, i32 184, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!138 = metadata !{i32 194, i32 26, metadata !139, null}
!139 = metadata !{i32 786443, metadata !140, i32 191, i32 45, metadata !24, i32 22} ; [ DW_TAG_lexical_block ]
!140 = metadata !{i32 786443, metadata !52, i32 191, i32 7, metadata !24, i32 21} ; [ DW_TAG_lexical_block ]
!141 = metadata !{i32 198, i32 4, metadata !139, null}
!142 = metadata !{i32 191, i32 21, metadata !140, null}
!143 = metadata !{i32 189, i32 3, metadata !144, null}
!144 = metadata !{i32 786443, metadata !130, i32 189, i32 2, metadata !24, i32 20} ; [ DW_TAG_lexical_block ]
!145 = metadata !{i32 188, i32 1, metadata !144, null}
!146 = metadata !{i32 189, i32 2, metadata !144, null}
!147 = metadata !{i32 189, i32 15, metadata !144, null}
!148 = metadata !{i32 187, i32 68, metadata !130, null}
!149 = metadata !{i32 786688, metadata !130, metadata !"i", metadata !24, i32 187, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!150 = metadata !{i32 191, i32 40, metadata !140, null}
!151 = metadata !{i32 191, i32 46, metadata !139, null}
!152 = metadata !{i32 192, i32 1, metadata !139, null}
!153 = metadata !{i32 786688, metadata !139, metadata !"val", metadata !24, i32 194, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!154 = metadata !{i32 197, i32 5, metadata !155, null}
!155 = metadata !{i32 786443, metadata !156, i32 197, i32 5, metadata !24, i32 24} ; [ DW_TAG_lexical_block ]
!156 = metadata !{i32 786443, metadata !139, i32 196, i32 10, metadata !24, i32 23} ; [ DW_TAG_lexical_block ]
!157 = metadata !{i32 790529, metadata !158, metadata !"fourWide", null, i32 195, metadata !160, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!158 = metadata !{i32 786688, metadata !139, metadata !"fourWide", metadata !24, i32 195, metadata !159, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!159 = metadata !{i32 786454, null, metadata !"OneToFourPixels", metadata !24, i32 9, i64 0, i64 0, i64 0, i32 0, metadata !160} ; [ DW_TAG_typedef ]
!160 = metadata !{i32 786455, null, metadata !"", metadata !24, i32 6, i64 32, i64 32, i64 0, i32 0, null, metadata !161, i32 0, null} ; [ DW_TAG_union_type ]
!161 = metadata !{metadata !162, metadata !166, metadata !167}
!162 = metadata !{i32 786445, metadata !160, metadata !"pix", metadata !24, i32 7, i64 32, i64 8, i64 0, i32 0, metadata !163} ; [ DW_TAG_member ]
!163 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 32, i64 8, i32 0, i32 0, metadata !28, metadata !164, i32 0, i32 0} ; [ DW_TAG_array_type ]
!164 = metadata !{metadata !165}
!165 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ]
!166 = metadata !{i32 786445, metadata !160, metadata !"full", metadata !24, i32 8, i64 32, i64 32, i64 0, i32 0, metadata !31} ; [ DW_TAG_member ]
!167 = metadata !{i32 786478, i32 0, metadata !160, metadata !"", metadata !"", metadata !"", metadata !24, i32 6, metadata !168, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !32, i32 6} ; [ DW_TAG_subprogram ]
!168 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !169, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!169 = metadata !{null, metadata !170}
!170 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !160} ; [ DW_TAG_pointer_type ]
!171 = metadata !{i32 199, i32 3, metadata !139, null}
!172 = metadata !{i32 786688, metadata !140, metadata !"i", metadata !24, i32 191, metadata !80, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!173 = metadata !{i32 201, i32 1, metadata !52, null}
!174 = metadata !{i32 786689, metadata !175, metadata !"yDiff", metadata !24, i32 50331659, metadata !80, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!175 = metadata !{i32 786478, i32 0, metadata !24, metadata !"getVal", metadata !"getVal", metadata !"_ZL6getValiiiiPh", metadata !24, i32 11, metadata !176, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !32, i32 12} ; [ DW_TAG_subprogram ]
!176 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !177, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!177 = metadata !{metadata !28, metadata !80, metadata !80, metadata !80, metadata !80, metadata !27}
!178 = metadata !{i32 11, i32 56, metadata !175, null}
!179 = metadata !{i32 786689, metadata !175, metadata !"xDiff", metadata !24, i32 33554443, metadata !80, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!180 = metadata !{i32 11, i32 45, metadata !175, null}
!181 = metadata !{i32 786689, metadata !175, metadata !"index", metadata !24, i32 16777227, metadata !80, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!182 = metadata !{i32 11, i32 34, metadata !175, null}
!183 = metadata !{i32 786689, metadata !175, metadata !"Y", null, i32 11, metadata !184, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!184 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !28, metadata !55, i32 0, i32 0} ; [ DW_TAG_array_type ]
!185 = metadata !{i32 11, i32 88, metadata !175, null}
!186 = metadata !{i32 13, i32 55, metadata !187, null}
!187 = metadata !{i32 786443, metadata !175, i32 12, i32 1, metadata !24, i32 25} ; [ DW_TAG_lexical_block ]
!188 = metadata !{i32 786688, metadata !187, metadata !"fullIndex", metadata !24, i32 13, metadata !80, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!189 = metadata !{i32 14, i32 2, metadata !187, null}
!190 = metadata !{i32 17, i32 3, metadata !191, null}
!191 = metadata !{i32 786443, metadata !187, i32 15, i32 2, metadata !24, i32 26} ; [ DW_TAG_lexical_block ]
!192 = metadata !{i32 19, i32 7, metadata !187, null}
!193 = metadata !{i32 22, i32 3, metadata !194, null}
!194 = metadata !{i32 786443, metadata !187, i32 20, i32 2, metadata !24, i32 27} ; [ DW_TAG_lexical_block ]
!195 = metadata !{i32 25, i32 2, metadata !187, null}
