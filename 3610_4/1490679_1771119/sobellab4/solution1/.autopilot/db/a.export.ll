; ModuleID = 'X:/Bureau/HDMI_3610/3610_4/1490679_1771119/sobellab4/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@sobel_filter_str = internal unnamed_addr constant [13 x i8] c"sobel_filter\00"
@mode3 = internal constant [10 x i8] c"s_axilite\00"
@mode = internal constant [10 x i8] c"s_axilite\00"
@bundle4 = internal constant [1 x i8] zeroinitializer
@bundle = internal constant [1 x i8] zeroinitializer
@OperatorLines_Operat = internal unnamed_addr constant [28 x i8] c"OperatorLines_OperatorRows1\00"
@p_str9 = private unnamed_addr constant [14 x i8] c"ZerosFirstRow\00", align 1
@p_str8 = private unnamed_addr constant [14 x i8] c"OperatorRows1\00", align 1
@p_str6 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1
@p_str5 = private unnamed_addr constant [6 x i8] c"gmem1\00", align 1
@p_str4 = private unnamed_addr constant [6 x i8] c"slave\00", align 1
@p_str3 = private unnamed_addr constant [6 x i8] c"gmem0\00", align 1
@p_str2 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1
@p_str13 = private unnamed_addr constant [4 x i8] c"IMG\00", align 1
@p_str12 = private unnamed_addr constant [14 x i8] c"ZerosLastLine\00", align 1
@p_str11 = private unnamed_addr constant [15 x i8] c"ZerosFirstLine\00", align 1
@p_str10 = private unnamed_addr constant [13 x i8] c"ZerosLastRow\00", align 1
@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

define void @sobel_filter(i8* %gmem0, i32* %gmem1, i32 %inter_pix, i32 %out_pix) {
  %out_pix_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %out_pix)
  %inter_pix_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %inter_pix)
  %out_pix3 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %out_pix_read, i32 2, i32 31)
  %tmp = zext i30 %out_pix3 to i64
  %tmp_cast1 = zext i30 %out_pix3 to i31
  %tmp_cast = zext i30 %out_pix3 to i33
  %gmem1_addr = getelementptr i32* %gmem1, i64 %tmp
  %tmp_5_cast = sext i32 %inter_pix_read to i34
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %gmem1), !map !22
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %gmem0), !map !28
  call void (...)* @_ssdm_op_SpecTopModule([13 x i8]* @sobel_filter_str) nounwind
  %superCache = alloca [7680 x i8], align 16
  call void (...)* @_ssdm_op_SpecInterface(i8* %gmem0, [6 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [6 x i8]* @p_str3, [6 x i8]* @p_str4, [1 x i8]* @p_str, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32 %inter_pix, [10 x i8]* @mode, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @bundle, [6 x i8]* @p_str4, [1 x i8]* @p_str, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %gmem1, [6 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [6 x i8]* @p_str5, [6 x i8]* @p_str4, [1 x i8]* @p_str, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32 %out_pix, [10 x i8]* @mode3, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @bundle4, [6 x i8]* @p_str4, [1 x i8]* @p_str, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str6, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  br label %1

; <label>:1                                       ; preds = %0, %ifBlock
  %indvar_flatten = phi i21 [ 0, %0 ], [ %indvar_flatten_next, %ifBlock ]
  %i = phi i11 [ 0, %0 ], [ %i_mid2, %ifBlock ]
  %j = phi i11 [ 0, %0 ], [ %j_1, %ifBlock ]
  %tmp_5 = trunc i11 %i to i2
  %tmp_1 = icmp ult i11 %i, 3
  %p_shl1 = call i22 @_ssdm_op_BitConcatenate.i22.i11.i11(i11 %i, i11 0)
  %p_shl1_cast = zext i22 %p_shl1 to i23
  %p_shl2 = call i18 @_ssdm_op_BitConcatenate.i18.i11.i7(i11 %i, i7 0)
  %p_shl2_cast = zext i18 %p_shl2 to i23
  %tmp_2 = sub i23 %p_shl1_cast, %p_shl2_cast
  %tmp_3 = icmp ugt i11 %i, 2
  %tmp_4 = icmp ult i11 %i, -968
  %or_cond = and i1 %tmp_3, %tmp_4
  %p_shl3 = call i13 @_ssdm_op_BitConcatenate.i13.i2.i11(i2 %tmp_5, i11 0)
  %p_shl3_cast = zext i13 %p_shl3 to i14
  %p_shl4 = call i9 @_ssdm_op_BitConcatenate.i9.i2.i7(i2 %tmp_5, i7 0)
  %p_shl4_cast = zext i9 %p_shl4 to i14
  %tmp_6 = sub i14 %p_shl3_cast, %p_shl4_cast
  %tmp_7_cast = xor i2 %tmp_5, -2
  %p_shl = call i13 @_ssdm_op_BitConcatenate.i13.i2.i11(i2 %tmp_7_cast, i11 0)
  %p_shl_cast = zext i13 %p_shl to i14
  %p_shl5 = call i9 @_ssdm_op_BitConcatenate.i9.i2.i7(i2 %tmp_7_cast, i7 0)
  %p_shl5_cast = zext i9 %p_shl5 to i14
  %tmp_9 = sub i14 %p_shl_cast, %p_shl5_cast
  %exitcond_flatten = icmp eq i21 %indvar_flatten, -21632
  %indvar_flatten_next = add i21 1, %indvar_flatten
  br i1 %exitcond_flatten, label %.preheader6.preheader, label %.reset

.preheader6.preheader:                            ; preds = %1
  %gmem1_addr_wr_req = call i1 @_ssdm_op_WriteReq.m_axi.i32P(i32* %gmem1_addr, i32 1920)
  br label %.preheader6

; <label>:2                                       ; preds = %.reset
  %tmp_11 = add i23 %tmp_2_mid2, %j_cast1
  %tmp_13_cast = sext i23 %tmp_11 to i32
  %tmp_12 = zext i32 %tmp_13_cast to i64
  %tmp_14_cast = zext i32 %tmp_13_cast to i34
  %inter_pix2_sum6 = add i34 %tmp_14_cast, %tmp_5_cast
  %inter_pix2_sum6_cast = sext i34 %inter_pix2_sum6 to i64
  %gmem0_addr = getelementptr i8* %gmem0, i64 %inter_pix2_sum6_cast
  %gmem0_load_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %gmem0_addr, i32 1)
  %gmem0_addr_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %gmem0_addr)
  %superCache_addr = getelementptr inbounds [7680 x i8]* %superCache, i64 0, i64 %tmp_12
  store i8 %gmem0_addr_read, i8* %superCache_addr, align 1
  br label %ifBlock

; <label>:3                                       ; preds = %.reset
  br i1 %or_cond_mid2, label %_ifconv, label %_ifconv11

_ifconv:                                          ; preds = %3
  %tmp_14 = add i23 %tmp_2_mid2, %j_cast1
  %tmp_16_cast = sext i23 %tmp_14 to i32
  %tmp_17_cast = zext i32 %tmp_16_cast to i34
  %inter_pix2_sum = add i34 %tmp_17_cast, %tmp_5_cast
  %inter_pix2_sum_cast = sext i34 %inter_pix2_sum to i64
  %gmem0_addr_1 = getelementptr i8* %gmem0, i64 %inter_pix2_sum_cast
  %gmem0_load_1_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %gmem0_addr_1, i32 1)
  %gmem0_addr_1_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %gmem0_addr_1)
  %tmp_15 = add i14 %tmp_6_mid2, %j_cast
  %tmp_18_cast = sext i14 %tmp_15 to i32
  %tmp_16 = zext i32 %tmp_18_cast to i64
  %superCache_addr_1 = getelementptr inbounds [7680 x i8]* %superCache, i64 0, i64 %tmp_16
  store i8 %gmem0_addr_1_read, i8* %superCache_addr_1, align 1
  %fullIndex_assign = add i14 %tmp_9_mid2, %j_cast
  %tmp_17 = call fastcc zeroext i8 @getVal(i14 %fullIndex_assign, i2 -1, i2 -1, [7680 x i8]* %superCache) nounwind
  %tmp_521_cast = zext i8 %tmp_17 to i9
  %tmp_18 = call fastcc zeroext i8 @getVal(i14 %fullIndex_assign, i2 -1, i2 0, [7680 x i8]* %superCache) nounwind
  %tmp_59_0_1 = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %tmp_18, i1 false)
  %tmp_59_0_1_cast = zext i9 %tmp_59_0_1 to i10
  %tmp_19 = call fastcc zeroext i8 @getVal(i14 %fullIndex_assign, i2 -1, i2 1, [7680 x i8]* %superCache) nounwind
  %tmp_52_0_2_cast = zext i8 %tmp_19 to i9
  %x_weight_0_2 = sub i9 %tmp_52_0_2_cast, %tmp_521_cast
  %x_weight_0_2_cast = sext i9 %x_weight_0_2 to i11
  %tmp_21 = call fastcc zeroext i8 @getVal(i14 %fullIndex_assign, i2 0, i2 -1, [7680 x i8]* %superCache) nounwind
  %p_shl6 = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %tmp_21, i1 false)
  %p_shl6_cast = zext i9 %p_shl6 to i11
  %x_weight_127_1 = sub i11 %x_weight_0_2_cast, %p_shl6_cast
  %tmp_23 = call fastcc zeroext i8 @getVal(i14 %fullIndex_assign, i2 0, i2 1, [7680 x i8]* %superCache) nounwind
  %tmp_55_1_2 = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %tmp_23, i1 false)
  %tmp_55_1_2_cast = zext i9 %tmp_55_1_2 to i11
  %x_weight_127_2 = add i11 %tmp_55_1_2_cast, %x_weight_127_1
  %tmp8 = add i9 %tmp_52_0_2_cast, %tmp_521_cast
  %tmp12_cast = zext i9 %tmp8 to i10
  %y_weight_130_2 = add i10 %tmp_59_0_1_cast, %tmp12_cast
  %y_weight_130_2_cast = zext i10 %y_weight_130_2 to i11
  %tmp_24 = call fastcc zeroext i8 @getVal(i14 %fullIndex_assign, i2 1, i2 -1, [7680 x i8]* %superCache) nounwind
  %tmp_52_2_cast = zext i8 %tmp_24 to i11
  %x_weight_2 = sub i11 %x_weight_127_2, %tmp_52_2_cast
  %y_weight_2 = sub i11 %y_weight_130_2_cast, %tmp_52_2_cast
  %tmp_27 = call fastcc zeroext i8 @getVal(i14 %fullIndex_assign, i2 1, i2 0, [7680 x i8]* %superCache) nounwind
  %p_shl7 = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %tmp_27, i1 false)
  %p_shl7_cast = zext i9 %p_shl7 to i11
  %y_weight_2_1 = sub i11 %y_weight_2, %p_shl7_cast
  %tmp_34 = call fastcc zeroext i8 @getVal(i14 %fullIndex_assign, i2 1, i2 1, [7680 x i8]* %superCache) nounwind
  %tmp_52_2_2_cast = zext i8 %tmp_34 to i11
  %tmp_36 = trunc i11 %x_weight_2 to i8
  %x_weight_2_2 = add i11 %tmp_52_2_2_cast, %x_weight_2
  %y_weight_2_2 = sub i11 %y_weight_2_1, %tmp_52_2_2_cast
  %tmp_22 = icmp sgt i11 %x_weight_2_2, 0
  %tmp_37 = add i8 %tmp_36, %tmp_34
  %tmp_40 = sub i8 0, %tmp_37
  %tmp_41 = select i1 %tmp_22, i8 %tmp_37, i8 %tmp_40
  %tmp_25 = icmp sgt i11 %y_weight_2_2, 0
  %tmp_42 = trunc i11 %y_weight_2_2 to i8
  %tmp_45 = sub i8 0, %tmp_42
  %tmp_46 = select i1 %tmp_25, i8 %tmp_42, i8 %tmp_45
  %tmp_28 = add i8 %tmp_41, %tmp_46
  %edge_val = xor i8 %tmp_28, -1
  %tmp_29 = icmp ult i8 %tmp_28, 55
  %tmp_43 = icmp ugt i8 %tmp_28, -101
  %p_i1 = select i1 %tmp_29, i8 -1, i8 0
  %tmp_49 = or i1 %tmp_29, %tmp_43
  %edge_val_1_i1 = select i1 %tmp_49, i8 %p_i1, i8 %edge_val
  %tmp_47 = zext i8 %edge_val_1_i1 to i32
  %tmp_48 = add i23 %tmp_mid2, %j_cast1
  %tmp_48_cast = sext i23 %tmp_48 to i32
  %tmp_49_cast = zext i32 %tmp_48_cast to i33
  %out_pix4_sum5 = add i33 %tmp_49_cast, %tmp_cast
  %out_pix4_sum5_cast = zext i33 %out_pix4_sum5 to i64
  %gmem1_addr_2 = getelementptr i32* %gmem1, i64 %out_pix4_sum5_cast
  %gmem1_addr_3_req = call i1 @_ssdm_op_WriteReq.m_axi.i32P(i32* %gmem1_addr_2, i32 1)
  call void @_ssdm_op_Write.m_axi.i32P(i32* %gmem1_addr_2, i32 %tmp_47, i4 -1)
  %gmem1_addr_3_resp = call i1 @_ssdm_op_WriteResp.m_axi.i32P(i32* %gmem1_addr_2)
  br label %4

_ifconv11:                                        ; preds = %3
  %fullIndex_assign_1 = add i14 %tmp_9_mid2, %j_cast
  %tmp_50 = call fastcc zeroext i8 @getVal(i14 %fullIndex_assign_1, i2 -1, i2 -1, [7680 x i8]* %superCache) nounwind
  %tmp_651_cast = zext i8 %tmp_50 to i9
  %tmp_51 = call fastcc zeroext i8 @getVal(i14 %fullIndex_assign_1, i2 -1, i2 0, [7680 x i8]* %superCache) nounwind
  %tmp_72_0_1 = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %tmp_51, i1 false)
  %tmp_72_0_1_cast = zext i9 %tmp_72_0_1 to i10
  %tmp_52 = call fastcc zeroext i8 @getVal(i14 %fullIndex_assign_1, i2 -1, i2 1, [7680 x i8]* %superCache) nounwind
  %tmp_65_0_2_cast = zext i8 %tmp_52 to i9
  %x_weight_1_0_2 = sub i9 %tmp_65_0_2_cast, %tmp_651_cast
  %x_weight_1_0_2_cast = sext i9 %x_weight_1_0_2 to i11
  %tmp_53 = call fastcc zeroext i8 @getVal(i14 %fullIndex_assign_1, i2 0, i2 -1, [7680 x i8]* %superCache) nounwind
  %p_shl8 = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %tmp_53, i1 false)
  %p_shl8_cast = zext i9 %p_shl8 to i11
  %x_weight_1_1_1 = sub i11 %x_weight_1_0_2_cast, %p_shl8_cast
  %tmp_54 = call fastcc zeroext i8 @getVal(i14 %fullIndex_assign_1, i2 0, i2 1, [7680 x i8]* %superCache) nounwind
  %tmp_68_1_2 = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %tmp_54, i1 false)
  %tmp_68_1_2_cast = zext i9 %tmp_68_1_2 to i11
  %x_weight_1_1_2 = add i11 %tmp_68_1_2_cast, %x_weight_1_1_1
  %tmp13 = add i9 %tmp_65_0_2_cast, %tmp_651_cast
  %tmp13_cast = zext i9 %tmp13 to i10
  %y_weight_1_1_2 = add i10 %tmp_72_0_1_cast, %tmp13_cast
  %y_weight_1_1_2_cast = zext i10 %y_weight_1_1_2 to i11
  %tmp_55 = call fastcc zeroext i8 @getVal(i14 %fullIndex_assign_1, i2 1, i2 -1, [7680 x i8]* %superCache) nounwind
  %tmp_65_2_cast = zext i8 %tmp_55 to i11
  %x_weight_1_2 = sub i11 %x_weight_1_1_2, %tmp_65_2_cast
  %y_weight_1_2 = sub i11 %y_weight_1_1_2_cast, %tmp_65_2_cast
  %tmp_56 = call fastcc zeroext i8 @getVal(i14 %fullIndex_assign_1, i2 1, i2 0, [7680 x i8]* %superCache) nounwind
  %p_shl9 = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %tmp_56, i1 false)
  %p_shl9_cast = zext i9 %p_shl9 to i11
  %y_weight_1_2_1 = sub i11 %y_weight_1_2, %p_shl9_cast
  %tmp_57 = call fastcc zeroext i8 @getVal(i14 %fullIndex_assign_1, i2 1, i2 1, [7680 x i8]* %superCache) nounwind
  %tmp_65_2_2_cast = zext i8 %tmp_57 to i11
  %tmp_58 = trunc i11 %x_weight_1_2 to i8
  %x_weight_1_2_2 = add i11 %tmp_65_2_2_cast, %x_weight_1_2
  %y_weight_1_2_2 = sub i11 %y_weight_1_2_1, %tmp_65_2_2_cast
  %tmp_32 = icmp sgt i11 %x_weight_1_2_2, 0
  %tmp_59 = add i8 %tmp_58, %tmp_57
  %tmp_62 = sub i8 0, %tmp_59
  %tmp_63 = select i1 %tmp_32, i8 %tmp_59, i8 %tmp_62
  %tmp_35 = icmp sgt i11 %y_weight_1_2_2, 0
  %tmp_64 = trunc i11 %y_weight_1_2_2 to i8
  %tmp_65 = sub i8 0, %tmp_64
  %tmp_66 = select i1 %tmp_35, i8 %tmp_64, i8 %tmp_65
  %tmp_38 = add i8 %tmp_63, %tmp_66
  %edge_val_1 = xor i8 %tmp_38, -1
  %tmp_39 = icmp ult i8 %tmp_38, 55
  %tmp_44 = icmp ugt i8 %tmp_38, -101
  %p_i = select i1 %tmp_39, i8 -1, i8 0
  %tmp_67 = or i1 %tmp_39, %tmp_44
  %edge_val_1_i = select i1 %tmp_67, i8 %p_i, i8 %edge_val_1
  %tmp_60 = zext i8 %edge_val_1_i to i32
  %tmp_61 = add i23 %tmp_mid2, %j_cast1
  %tmp_61_cast = sext i23 %tmp_61 to i32
  %tmp_62_cast = zext i32 %tmp_61_cast to i33
  %out_pix4_sum = add i33 %tmp_62_cast, %tmp_cast
  %out_pix4_sum_cast = zext i33 %out_pix4_sum to i64
  %gmem1_addr_3 = getelementptr i32* %gmem1, i64 %out_pix4_sum_cast
  %gmem1_addr_4_req = call i1 @_ssdm_op_WriteReq.m_axi.i32P(i32* %gmem1_addr_3, i32 1)
  call void @_ssdm_op_Write.m_axi.i32P(i32* %gmem1_addr_3, i32 %tmp_60, i4 -1)
  %gmem1_addr_4_resp = call i1 @_ssdm_op_WriteResp.m_axi.i32P(i32* %gmem1_addr_3)
  br label %4

; <label>:4                                       ; preds = %_ifconv11, %_ifconv
  br label %ifBlock

ifBlock:                                          ; preds = %4, %2
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([14 x i8]* @p_str8, i32 %tmp_8) nounwind
  %j_1 = add i11 %j_mid2, 1
  br label %1

.reset:                                           ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([28 x i8]* @OperatorLines_Operat)
  %tmp_s = icmp eq i11 %j, -128
  %j_mid2 = select i1 %tmp_s, i11 0, i11 %j
  %i_s = add i11 1, %i
  %tmp_7 = trunc i11 %i_s to i2
  %tmp_1_mid1 = icmp ult i11 %i_s, 3
  %tmp_1_mid2 = select i1 %tmp_s, i1 %tmp_1_mid1, i1 %tmp_1
  %p_shl1_mid1 = call i22 @_ssdm_op_BitConcatenate.i22.i11.i11(i11 %i_s, i11 0)
  %p_shl1_cast_mid1 = zext i22 %p_shl1_mid1 to i23
  %p_shl2_mid1 = call i18 @_ssdm_op_BitConcatenate.i18.i11.i7(i11 %i_s, i7 0)
  %p_shl2_cast_mid1 = zext i18 %p_shl2_mid1 to i23
  %tmp_2_mid1 = sub i23 %p_shl1_cast_mid1, %p_shl2_cast_mid1
  %tmp_2_mid2 = select i1 %tmp_s, i23 %tmp_2_mid1, i23 %tmp_2
  %tmp_3_mid1 = icmp ugt i11 %i_s, 2
  %tmp_4_mid1 = icmp ult i11 %i_s, -968
  %or_cond_mid1 = and i1 %tmp_3_mid1, %tmp_4_mid1
  %or_cond_mid2 = select i1 %tmp_s, i1 %or_cond_mid1, i1 %or_cond
  %p_shl3_mid1 = call i13 @_ssdm_op_BitConcatenate.i13.i2.i11(i2 %tmp_7, i11 0)
  %p_shl3_cast_mid1 = zext i13 %p_shl3_mid1 to i14
  %p_shl4_mid1 = call i9 @_ssdm_op_BitConcatenate.i9.i2.i7(i2 %tmp_7, i7 0)
  %p_shl4_cast_mid1 = zext i9 %p_shl4_mid1 to i14
  %tmp_6_mid1 = sub i14 %p_shl3_cast_mid1, %p_shl4_cast_mid1
  %tmp_6_mid2 = select i1 %tmp_s, i14 %tmp_6_mid1, i14 %tmp_6
  %tmp_7_cast_mid1 = xor i2 %tmp_7, -2
  %p_shl_mid1 = call i13 @_ssdm_op_BitConcatenate.i13.i2.i11(i2 %tmp_7_cast_mid1, i11 0)
  %p_shl_cast_mid1 = zext i13 %p_shl_mid1 to i14
  %p_shl5_mid1 = call i9 @_ssdm_op_BitConcatenate.i9.i2.i7(i2 %tmp_7_cast_mid1, i7 0)
  %p_shl5_cast_mid1 = zext i9 %p_shl5_mid1 to i14
  %tmp_9_mid1 = sub i14 %p_shl_cast_mid1, %p_shl5_cast_mid1
  %tmp_9_mid2 = select i1 %tmp_s, i14 %tmp_9_mid1, i14 %tmp_9
  %tmp_mid2 = add i23 -3840, %tmp_2_mid2
  %i_mid2 = select i1 %tmp_s, i11 %i_s, i11 %i
  %j_cast = zext i11 %j_mid2 to i14
  %j_cast1 = zext i11 %j_mid2 to i23
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @p_str8) nounwind
  %tmp_8 = call i32 (...)* @_ssdm_op_SpecRegionBegin([14 x i8]* @p_str8) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 25, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  br i1 %tmp_1_mid2, label %2, label %3

.preheader6:                                      ; preds = %.preheader6.preheader, %5
  %i1 = phi i11 [ %i_1, %5 ], [ 0, %.preheader6.preheader ]
  %tmp_10 = icmp eq i11 %i1, -128
  %empty_5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1920, i64 1920, i64 1920) nounwind
  %i_1 = add i11 %i1, 1
  br i1 %tmp_10, label %.preheader5.preheader, label %5

.preheader5.preheader:                            ; preds = %.preheader6
  %gmem1_addr_wr_resp = call i1 @_ssdm_op_WriteResp.m_axi.i32P(i32* %gmem1_addr)
  %out_pix4_sum8 = add i31 %tmp_cast1, 2071680
  %out_pix4_sum8_cast = zext i31 %out_pix4_sum8 to i64
  %gmem1_addr_1 = getelementptr i32* %gmem1, i64 %out_pix4_sum8_cast
  %gmem1_addr_1_wr_req = call i1 @_ssdm_op_WriteReq.m_axi.i32P(i32* %gmem1_addr_1, i32 1920)
  br label %.preheader5

; <label>:5                                       ; preds = %.preheader6
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @p_str9) nounwind
  %tmp_13 = call i32 (...)* @_ssdm_op_SpecRegionBegin([14 x i8]* @p_str9) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  call void @_ssdm_op_Write.m_axi.i32P(i32* %gmem1_addr, i32 0, i4 -1)
  %empty_6 = call i32 (...)* @_ssdm_op_SpecRegionEnd([14 x i8]* @p_str9, i32 %tmp_13) nounwind
  br label %.preheader6

.preheader5:                                      ; preds = %6, %.preheader5.preheader
  %i2 = phi i16 [ %i_2, %6 ], [ -25472, %.preheader5.preheader ]
  %exitcond2 = icmp eq i16 %i2, -23552
  %empty_7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1920, i64 1920, i64 1920) nounwind
  br i1 %exitcond2, label %.preheader4.preheader, label %6

.preheader4.preheader:                            ; preds = %.preheader5
  %gmem1_addr_1_wr_resp = call i1 @_ssdm_op_WriteResp.m_axi.i32P(i32* %gmem1_addr_1)
  br label %.preheader4

; <label>:6                                       ; preds = %.preheader5
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @p_str10) nounwind
  %tmp_26 = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str10) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  call void @_ssdm_op_Write.m_axi.i32P(i32* %gmem1_addr_1, i32 0, i4 -1)
  %empty_8 = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str10, i32 %tmp_26) nounwind
  %i_2 = add i16 %i2, 1
  br label %.preheader5

.preheader4:                                      ; preds = %.preheader4.preheader, %7
  %i3 = phi i21 [ %i_3, %7 ], [ 0, %.preheader4.preheader ]
  %tmp_20 = icmp ult i21 %i3, -23552
  %empty_9 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1080, i64 1080, i64 1080) nounwind
  br i1 %tmp_20, label %7, label %.preheader3.preheader

.preheader3.preheader:                            ; preds = %.preheader4
  br label %.preheader3

; <label>:7                                       ; preds = %.preheader4
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str11) nounwind
  %tmp_30 = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str11) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %tmp_21_cast = zext i21 %i3 to i31
  %out_pix4_sum1 = add i31 %tmp_21_cast, %tmp_cast1
  %out_pix4_sum1_cast = zext i31 %out_pix4_sum1 to i64
  %gmem1_addr_4 = getelementptr i32* %gmem1, i64 %out_pix4_sum1_cast
  %gmem1_addr_6_req = call i1 @_ssdm_op_WriteReq.m_axi.i32P(i32* %gmem1_addr_4, i32 1)
  call void @_ssdm_op_Write.m_axi.i32P(i32* %gmem1_addr_4, i32 0, i4 -1)
  %gmem1_addr_6_resp = call i1 @_ssdm_op_WriteResp.m_axi.i32P(i32* %gmem1_addr_4)
  %empty_10 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str11, i32 %tmp_30) nounwind
  %i_3 = add i21 %i3, 1920
  br label %.preheader4

.preheader3:                                      ; preds = %.preheader3.preheader, %8
  %i4 = phi i21 [ %i_4, %8 ], [ 1919, %.preheader3.preheader ]
  %tmp_31 = icmp ult i21 %i4, -23552
  %empty_11 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1080, i64 1080, i64 1080) nounwind
  br i1 %tmp_31, label %8, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader3
  %tmp_68 = zext i30 %out_pix3 to i64
  %gmem1_addr_6 = getelementptr i32* %gmem1, i64 %tmp_68
  %p_rd_req = call i1 @_ssdm_op_ReadReq.m_axi.i32P(i32* %gmem1_addr_6, i32 2073600)
  %p_wr_req = call i1 @_ssdm_op_WriteReq.m_axi.i32P(i32* %gmem1_addr_6, i32 2073600)
  br label %.preheader

; <label>:8                                       ; preds = %.preheader3
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @p_str12) nounwind
  %tmp_33 = call i32 (...)* @_ssdm_op_SpecRegionBegin([14 x i8]* @p_str12) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %tmp_34_cast = zext i21 %i4 to i31
  %out_pix4_sum2 = add i31 %tmp_34_cast, %tmp_cast1
  %out_pix4_sum2_cast = zext i31 %out_pix4_sum2 to i64
  %gmem1_addr_5 = getelementptr i32* %gmem1, i64 %out_pix4_sum2_cast
  %gmem1_addr_7_req = call i1 @_ssdm_op_WriteReq.m_axi.i32P(i32* %gmem1_addr_5, i32 1)
  call void @_ssdm_op_Write.m_axi.i32P(i32* %gmem1_addr_5, i32 0, i4 -1)
  %gmem1_addr_7_resp = call i1 @_ssdm_op_WriteResp.m_axi.i32P(i32* %gmem1_addr_5)
  %empty_12 = call i32 (...)* @_ssdm_op_SpecRegionEnd([14 x i8]* @p_str12, i32 %tmp_33) nounwind
  %i_4 = add i21 %i4, 1920
  br label %.preheader3

.preheader:                                       ; preds = %.preheader.preheader, %9
  %i5 = phi i21 [ %i_5, %9 ], [ 0, %.preheader.preheader ]
  %exitcond1 = icmp eq i21 %i5, -23552
  %empty_13 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2073600, i64 2073600, i64 2073600) nounwind
  %i_5 = add i21 %i5, 1
  br i1 %exitcond1, label %10, label %9

; <label>:9                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([4 x i8]* @p_str13) nounwind
  %tmp_69 = call i32 (...)* @_ssdm_op_SpecRegionBegin([4 x i8]* @p_str13) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %gmem1_addr_6_read = call i32 @_ssdm_op_Read.m_axi.i32P(i32* %gmem1_addr_6)
  %val = trunc i32 %gmem1_addr_6_read to i8
  %fourWide = call i32 @_ssdm_op_BitConcatenate.i32.i8.i8.i8.i8(i8 %val, i8 %val, i8 %val, i8 %val)
  call void @_ssdm_op_Write.m_axi.i32P(i32* %gmem1_addr_6, i32 %fourWide, i4 -1)
  %empty_14 = call i32 (...)* @_ssdm_op_SpecRegionEnd([4 x i8]* @p_str13, i32 %tmp_69) nounwind
  br label %.preheader

; <label>:10                                      ; preds = %.preheader
  %p_wr_resp = call i1 @_ssdm_op_WriteResp.m_axi.i32P(i32* %gmem1_addr_6)
  ret void
}

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define internal fastcc zeroext i8 @getVal(i14 %index, i2 %xDiff, i2 %yDiff, [7680 x i8]* nocapture %Y) readonly {
_ifconv:
  %yDiff_read = call i2 @_ssdm_op_Read.ap_auto.i2(i2 %yDiff)
  %xDiff_read = call i2 @_ssdm_op_Read.ap_auto.i2(i2 %xDiff)
  %index_read = call i14 @_ssdm_op_Read.ap_auto.i14(i14 %index)
  %p_shl = call i13 @_ssdm_op_BitConcatenate.i13.i2.i11(i2 %yDiff_read, i11 0)
  %p_shl2 = call i9 @_ssdm_op_BitConcatenate.i9.i2.i7(i2 %yDiff_read, i7 0)
  %p_shl2_cast = sext i9 %p_shl2 to i13
  %tmp = sub i13 %p_shl, %p_shl2_cast
  %xDiff_cast = sext i2 %xDiff_read to i13
  %tmp1 = add i13 %xDiff_cast, %tmp
  %tmp1_cast = sext i13 %tmp1 to i15
  %index_cast = sext i14 %index_read to i15
  %fullIndex = add i15 %index_cast, %tmp1_cast
  %tmp_71 = call i1 @_ssdm_op_BitSelect.i1.i15.i32(i15 %fullIndex, i32 14)
  %fullIndex_2 = add i15 %fullIndex, 7680
  %fullIndex_2_cast = zext i15 %fullIndex_2 to i16
  %tmp_s = icmp slt i15 %fullIndex, 7680
  %fullIndex_3 = add i15 %fullIndex, -7680
  %p_s = select i1 %tmp_s, i15 %fullIndex, i15 %fullIndex_3
  %p_cast = sext i15 %p_s to i16
  %fullIndex_1 = select i1 %tmp_71, i16 %fullIndex_2_cast, i16 %p_cast
  %fullIndex_1_cast = sext i16 %fullIndex_1 to i32
  %tmp_70 = zext i32 %fullIndex_1_cast to i64
  %Y_addr = getelementptr [7680 x i8]* %Y, i64 0, i64 %tmp_70
  %Y_load = load i8* %Y_addr, align 1
  ret i8 %Y_load
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

define weak i1 @_ssdm_op_ReadReq.m_axi.i8P(i8*, i32) {
entry:
  ret i1 true
}

define weak i1 @_ssdm_op_ReadReq.m_axi.i32P(i32*, i32) {
entry:
  ret i1 true
}

define weak i32 @_ssdm_op_Read.s_axilite.i32(i32) {
entry:
  ret i32 %0
}

define weak i8 @_ssdm_op_Read.m_axi.i8P(i8*) {
entry:
  %empty = load i8* %0
  ret i8 %empty
}

define weak i32 @_ssdm_op_Read.m_axi.i32P(i32*) {
entry:
  %empty = load i32* %0
  ret i32 %empty
}

define weak i2 @_ssdm_op_Read.ap_auto.i2(i2) {
entry:
  ret i2 %0
}

define weak i14 @_ssdm_op_Read.ap_auto.i14(i14) {
entry:
  ret i14 %0
}

declare i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i8 @_ssdm_op_PartSelect.i8.i11.i32.i32(i11, i32, i32) nounwind readnone

define weak i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_15 = trunc i32 %empty to i30
  ret i30 %empty_15
}

declare i2 @_ssdm_op_PartSelect.i2.i11.i32.i32(i11, i32, i32) nounwind readnone

define weak i1 @_ssdm_op_BitSelect.i1.i15.i32(i15, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i15
  %empty_16 = shl i15 1, %empty
  %empty_17 = and i15 %0, %empty_16
  %empty_18 = icmp ne i15 %empty_17, 0
  ret i1 %empty_18
}

define weak i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8, i1) nounwind readnone {
entry:
  %empty = zext i8 %0 to i9
  %empty_19 = zext i1 %1 to i9
  %empty_20 = shl i9 %empty, 1
  %empty_21 = or i9 %empty_20, %empty_19
  ret i9 %empty_21
}

define weak i9 @_ssdm_op_BitConcatenate.i9.i2.i7(i2, i7) nounwind readnone {
entry:
  %empty = zext i2 %0 to i9
  %empty_22 = zext i7 %1 to i9
  %empty_23 = shl i9 %empty, 7
  %empty_24 = or i9 %empty_23, %empty_22
  ret i9 %empty_24
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i8.i8.i8.i8(i8, i8, i8, i8) nounwind readnone {
entry:
  %empty = zext i8 %2 to i16
  %empty_25 = zext i8 %3 to i16
  %empty_26 = shl i16 %empty, 8
  %empty_27 = or i16 %empty_26, %empty_25
  %empty_28 = zext i8 %1 to i24
  %empty_29 = zext i16 %empty_27 to i24
  %empty_30 = shl i24 %empty_28, 16
  %empty_31 = or i24 %empty_30, %empty_29
  %empty_32 = zext i8 %0 to i32
  %empty_33 = zext i24 %empty_31 to i32
  %empty_34 = shl i32 %empty_32, 24
  %empty_35 = or i32 %empty_34, %empty_33
  ret i32 %empty_35
}

define weak i22 @_ssdm_op_BitConcatenate.i22.i11.i11(i11, i11) nounwind readnone {
entry:
  %empty = zext i11 %0 to i22
  %empty_36 = zext i11 %1 to i22
  %empty_37 = shl i22 %empty, 11
  %empty_38 = or i22 %empty_37, %empty_36
  ret i22 %empty_38
}

define weak i18 @_ssdm_op_BitConcatenate.i18.i11.i7(i11, i7) nounwind readnone {
entry:
  %empty = zext i11 %0 to i18
  %empty_39 = zext i7 %1 to i18
  %empty_40 = shl i18 %empty, 7
  %empty_41 = or i18 %empty_40, %empty_39
  ret i18 %empty_41
}

define weak i13 @_ssdm_op_BitConcatenate.i13.i2.i11(i2, i11) nounwind readnone {
entry:
  %empty = zext i2 %0 to i13
  %empty_42 = zext i11 %1 to i13
  %empty_43 = shl i13 %empty, 11
  %empty_44 = or i13 %empty_43, %empty_42
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
