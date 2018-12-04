; ModuleID = 'X:/Bureau/HDMI_3610/3610_4/1490679_1771119/sobellab4/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@sobel_filter_str = internal unnamed_addr constant [13 x i8] c"sobel_filter\00"
@mode3 = internal constant [10 x i8] c"s_axilite\00"
@mode = internal constant [10 x i8] c"s_axilite\00"
@bundle4 = internal constant [1 x i8] zeroinitializer
@bundle = internal constant [1 x i8] zeroinitializer
@p_str9 = private unnamed_addr constant [14 x i8] c"FillCacheRows\00", align 1
@p_str7 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1
@p_str6 = private unnamed_addr constant [6 x i8] c"gmem1\00", align 1
@p_str5 = private unnamed_addr constant [6 x i8] c"slave\00", align 1
@p_str4 = private unnamed_addr constant [6 x i8] c"gmem0\00", align 1
@p_str3 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1
@p_str12 = private unnamed_addr constant [11 x i8] c"FilterCols\00", align 1
@p_str11 = private unnamed_addr constant [11 x i8] c"FilterRows\00", align 1
@p_str10 = private unnamed_addr constant [14 x i8] c"FillCacheCols\00", align 1
@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

define void @sobel_filter(i8* %gmem0, i32* %gmem1, i32 %inter_pix, i32 %out_pix) {
  %out_pix_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %out_pix)
  %inter_pix_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %inter_pix)
  %tmp_1 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %out_pix_read, i32 2, i32 31)
  %tmp_1_cast = zext i30 %tmp_1 to i33
  %tmp_27_cast = sext i32 %inter_pix_read to i34
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %gmem1), !map !17
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %gmem0), !map !23
  call void (...)* @_ssdm_op_SpecTopModule([13 x i8]* @sobel_filter_str) nounwind
  %cache_0 = alloca [1920 x i8], align 1
  %cache_1 = alloca [1920 x i8], align 1
  %cache_2 = alloca [1920 x i8], align 1
  %cache_3 = alloca [1920 x i8], align 1
  call void (...)* @_ssdm_op_SpecInterface(i8* %gmem0, [6 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [6 x i8]* @p_str4, [6 x i8]* @p_str5, [1 x i8]* @p_str, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32 %inter_pix, [10 x i8]* @mode, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @bundle, [6 x i8]* @p_str5, [1 x i8]* @p_str, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %gmem1, [6 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [6 x i8]* @p_str6, [6 x i8]* @p_str5, [1 x i8]* @p_str, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32 %out_pix, [10 x i8]* @mode3, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @bundle4, [6 x i8]* @p_str5, [1 x i8]* @p_str, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str7, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  br label %1

; <label>:1                                       ; preds = %6, %0
  %i = phi i2 [ 0, %0 ], [ %i_1, %6 ]
  %tmp = icmp eq i2 %i, -2
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2) nounwind
  %i_1 = add i2 %i, 1
  br i1 %tmp, label %.preheader.preheader, label %2

.preheader.preheader:                             ; preds = %1
  br label %.preheader

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @p_str9) nounwind
  %tmp_3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([14 x i8]* @p_str9) nounwind
  %tmp_12 = trunc i2 %i to i1
  %p_shl = call i12 @_ssdm_op_BitConcatenate.i12.i1.i11(i1 %tmp_12, i11 0)
  %p_shl_cast = zext i12 %p_shl to i13
  %p_shl9 = call i8 @_ssdm_op_BitConcatenate.i8.i1.i7(i1 %tmp_12, i7 0)
  %p_shl9_cast = zext i8 %p_shl9 to i13
  %tmp_2 = sub i13 %p_shl_cast, %p_shl9_cast
  %cond = icmp eq i2 %i, 0
  %tmp_13 = sext i13 %tmp_2 to i32
  %tmp_29_cast = zext i32 %tmp_13 to i34
  %inter_pix2_sum = add i34 %tmp_27_cast, %tmp_29_cast
  %inter_pix2_sum_cast = sext i34 %inter_pix2_sum to i64
  %gmem0_addr = getelementptr i8* %gmem0, i64 %inter_pix2_sum_cast
  %gmem0_addr_rd_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %gmem0_addr, i32 1920)
  br label %3

; <label>:3                                       ; preds = %5, %2
  %j = phi i11 [ 0, %2 ], [ %j_1, %5 ]
  %tmp_5 = icmp eq i11 %j, -128
  %empty_5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1920, i64 1920, i64 1920) nounwind
  %j_1 = add i11 %j, 1
  br i1 %tmp_5, label %6, label %4

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @p_str10) nounwind
  %tmp_20 = call i32 (...)* @_ssdm_op_SpecRegionBegin([14 x i8]* @p_str10) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %gmem0_addr_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %gmem0_addr)
  %tmp_15 = zext i11 %j to i64
  %cache_0_addr = getelementptr [1920 x i8]* %cache_0, i64 0, i64 %tmp_15
  %cache_1_addr = getelementptr [1920 x i8]* %cache_1, i64 0, i64 %tmp_15
  br i1 %cond, label %branch4, label %branch5

; <label>:5                                       ; preds = %branch5, %branch4
  %empty_6 = call i32 (...)* @_ssdm_op_SpecRegionEnd([14 x i8]* @p_str10, i32 %tmp_20) nounwind
  br label %3

; <label>:6                                       ; preds = %3
  %empty_7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([14 x i8]* @p_str9, i32 %tmp_3) nounwind
  br label %1

.preheader:                                       ; preds = %.preheader.preheader, %9
  %rows_assign = phi i11 [ %i_2, %9 ], [ 0, %.preheader.preheader ]
  %tmp_4 = icmp eq i11 %rows_assign, -968
  %empty_8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1080, i64 1080, i64 1080) nounwind
  %i_2 = add i11 %rows_assign, 1
  br i1 %tmp_4, label %10, label %7

; <label>:7                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str11) nounwind
  %tmp_11 = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str11) nounwind
  %tmp_6 = icmp eq i11 %rows_assign, 0
  %tmp_7 = icmp eq i11 %rows_assign, -969
  %p_shl1 = call i22 @_ssdm_op_BitConcatenate.i22.i11.i11(i11 %rows_assign, i11 0)
  %p_shl1_cast = zext i22 %p_shl1 to i23
  %p_shl2 = call i18 @_ssdm_op_BitConcatenate.i18.i11.i7(i11 %rows_assign, i7 0)
  %p_shl2_cast = zext i18 %p_shl2 to i23
  %tmp_8 = sub i23 %p_shl1_cast, %p_shl2_cast
  %tmp_14 = trunc i11 %rows_assign to i2
  %tmp_9 = add i11 2, %rows_assign
  %tmp_27 = icmp ult i11 %tmp_9, -968
  %tmp_28 = add i11 970, %rows_assign
  %tmp_s = select i1 %tmp_27, i11 %tmp_9, i11 %tmp_28
  %p_shl3 = call i22 @_ssdm_op_BitConcatenate.i22.i11.i11(i11 %tmp_s, i11 0)
  %p_shl3_cast = zext i22 %p_shl3 to i23
  %p_shl4 = call i18 @_ssdm_op_BitConcatenate.i18.i11.i7(i11 %tmp_s, i7 0)
  %p_shl4_cast = zext i18 %p_shl4 to i23
  %tmp_10 = sub i23 %p_shl3_cast, %p_shl4_cast
  %tmp_11_t = xor i2 %tmp_14, -2
  %tmp_34_0_0_t = add i2 -1, %tmp_14
  %tmp_34_0_2_t = add i2 1, %tmp_14
  %tmp_29 = sext i23 %tmp_8 to i32
  %tmp_35_cast = zext i32 %tmp_29 to i33
  %tmp_30 = sext i23 %tmp_10 to i32
  %tmp_46_cast = zext i32 %tmp_30 to i34
  %out_pix4_sum = add i33 %tmp_1_cast, %tmp_35_cast
  %out_pix4_sum_cast = zext i33 %out_pix4_sum to i64
  %gmem1_addr = getelementptr i32* %gmem1, i64 %out_pix4_sum_cast
  %inter_pix2_sum6 = add i34 %tmp_27_cast, %tmp_46_cast
  %inter_pix2_sum6_cast = sext i34 %inter_pix2_sum6 to i64
  %gmem0_addr_1 = getelementptr i8* %gmem0, i64 %inter_pix2_sum6_cast
  %gmem1_addr_wr_req = call i1 @_ssdm_op_WriteReq.m_axi.i32P(i32* %gmem1_addr, i32 1920)
  %gmem0_addr_1_rd_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %gmem0_addr_1, i32 1920)
  br label %8

; <label>:8                                       ; preds = %._crit_edge67, %7
  %cols_assign = phi i11 [ 0, %7 ], [ %j_2, %._crit_edge67 ]
  %cols_assign_cast = zext i11 %cols_assign to i12
  %tmp_16 = icmp eq i11 %cols_assign, -128
  %empty_9 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1920, i64 1920, i64 1920) nounwind
  %j_2 = add i11 %cols_assign, 1
  br i1 %tmp_16, label %9, label %_ifconv

_ifconv:                                          ; preds = %8
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str12) nounwind
  %tmp_21 = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str12) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 2, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %tmp_17 = icmp eq i11 %cols_assign, 0
  %tmp_18 = icmp eq i11 %cols_assign, -129
  %tmp15 = or i1 %tmp_18, %tmp_6
  %tmp16 = or i1 %tmp_17, %tmp_7
  %or_cond2 = or i1 %tmp16, %tmp15
  %tmp_23 = add i12 -1, %cols_assign_cast
  %tmp_23_cast = sext i12 %tmp_23 to i32
  %tmp_24 = zext i32 %tmp_23_cast to i64
  %cache_0_addr_1 = getelementptr [1920 x i8]* %cache_0, i64 0, i64 %tmp_24
  %cache_0_load = load i8* %cache_0_addr_1, align 1
  %cache_1_addr_1 = getelementptr [1920 x i8]* %cache_1, i64 0, i64 %tmp_24
  %cache_1_load = load i8* %cache_1_addr_1, align 1
  %cache_2_addr = getelementptr [1920 x i8]* %cache_2, i64 0, i64 %tmp_24
  %cache_2_load = load i8* %cache_2_addr, align 1
  %cache_3_addr = getelementptr [1920 x i8]* %cache_3, i64 0, i64 %tmp_24
  %cache_3_load = load i8* %cache_3_addr, align 1
  %tmp_32 = call i8 @_ssdm_op_Mux.ap_auto.4i8.i2(i8 %cache_0_load, i8 %cache_1_load, i8 %cache_2_load, i8 %cache_3_load, i2 %tmp_34_0_0_t) nounwind
  %tmp_361_cast1 = zext i8 %tmp_32 to i9
  %tmp_361_cast = zext i8 %tmp_32 to i11
  %tmp_33 = call i8 @_ssdm_op_Mux.ap_auto.4i8.i2(i8 %cache_0_load, i8 %cache_1_load, i8 %cache_2_load, i8 %cache_3_load, i2 %tmp_14) nounwind
  %p_shl5 = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %tmp_33, i1 false)
  %p_shl5_cast = zext i9 %p_shl5 to i10
  %tmp_39_0_1 = sub i10 0, %p_shl5_cast
  %tmp_39_0_1_cast = sext i10 %tmp_39_0_1 to i11
  %x_weight_0_1 = sub i11 %tmp_39_0_1_cast, %tmp_361_cast
  %tmp_34 = call i8 @_ssdm_op_Mux.ap_auto.4i8.i2(i8 %cache_0_load, i8 %cache_1_load, i8 %cache_2_load, i8 %cache_3_load, i2 %tmp_34_0_2_t) nounwind
  %tmp_36_0_2_cast1 = zext i8 %tmp_34 to i9
  %tmp_36_0_2_cast = zext i8 %tmp_34 to i11
  %x_weight_0_2 = sub i11 %x_weight_0_1, %tmp_36_0_2_cast
  %y_weight_0_2 = sub i9 %tmp_361_cast1, %tmp_36_0_2_cast1
  %y_weight_0_2_cast = sext i9 %y_weight_0_2 to i11
  %tmp_29_1 = zext i11 %cols_assign to i64
  %cache_0_addr_2 = getelementptr [1920 x i8]* %cache_0, i64 0, i64 %tmp_29_1
  %cache_0_load_1 = load i8* %cache_0_addr_2, align 1
  %cache_1_addr_2 = getelementptr [1920 x i8]* %cache_1, i64 0, i64 %tmp_29_1
  %cache_1_load_1 = load i8* %cache_1_addr_2, align 1
  %cache_2_addr_1 = getelementptr [1920 x i8]* %cache_2, i64 0, i64 %tmp_29_1
  %cache_2_load_1 = load i8* %cache_2_addr_1, align 1
  %cache_3_addr_1 = getelementptr [1920 x i8]* %cache_3, i64 0, i64 %tmp_29_1
  %cache_3_load_1 = load i8* %cache_3_addr_1, align 1
  %tmp_35 = call i8 @_ssdm_op_Mux.ap_auto.4i8.i2(i8 %cache_0_load_1, i8 %cache_1_load_1, i8 %cache_2_load_1, i8 %cache_3_load_1, i2 %tmp_34_0_0_t) nounwind
  %tmp_41_1 = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %tmp_35, i1 false)
  %tmp_41_1_cast = zext i9 %tmp_41_1 to i11
  %y_weight_1_1 = add i11 %y_weight_0_2_cast, %tmp_41_1_cast
  %tmp_36 = call i8 @_ssdm_op_Mux.ap_auto.4i8.i2(i8 %cache_0_load_1, i8 %cache_1_load_1, i8 %cache_2_load_1, i8 %cache_3_load_1, i2 %tmp_34_0_2_t) nounwind
  %p_shl6 = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %tmp_36, i1 false)
  %p_shl6_cast = zext i9 %p_shl6 to i11
  %y_weight_1_2 = sub i11 %y_weight_1_1, %p_shl6_cast
  %tmp_29_2 = zext i11 %j_2 to i64
  %cache_0_addr_3 = getelementptr [1920 x i8]* %cache_0, i64 0, i64 %tmp_29_2
  %cache_0_load_2 = load i8* %cache_0_addr_3, align 1
  %cache_1_addr_3 = getelementptr [1920 x i8]* %cache_1, i64 0, i64 %tmp_29_2
  %cache_1_load_2 = load i8* %cache_1_addr_3, align 1
  %cache_2_addr_2 = getelementptr [1920 x i8]* %cache_2, i64 0, i64 %tmp_29_2
  %cache_2_load_2 = load i8* %cache_2_addr_2, align 1
  %cache_3_addr_2 = getelementptr [1920 x i8]* %cache_3, i64 0, i64 %tmp_29_2
  %cache_3_load_2 = load i8* %cache_3_addr_2, align 1
  %tmp_37 = call i8 @_ssdm_op_Mux.ap_auto.4i8.i2(i8 %cache_0_load_2, i8 %cache_1_load_2, i8 %cache_2_load_2, i8 %cache_3_load_2, i2 %tmp_34_0_0_t) nounwind
  %tmp_36_2_cast1 = zext i8 %tmp_37 to i9
  %tmp_36_2_cast = zext i8 %tmp_37 to i11
  %tmp_38 = trunc i11 %x_weight_0_2 to i8
  %tmp_39 = call i8 @_ssdm_op_Mux.ap_auto.4i8.i2(i8 %cache_0_load_2, i8 %cache_1_load_2, i8 %cache_2_load_2, i8 %cache_3_load_2, i2 %tmp_14) nounwind
  %tmp_39_2_1 = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %tmp_39, i1 false)
  %tmp_39_2_1_cast = zext i9 %tmp_39_2_1 to i11
  %tmp_42 = shl i8 %tmp_39, 1
  %y_weight_2_1 = add i11 %tmp_36_2_cast, %y_weight_1_2
  %tmp_43 = call i8 @_ssdm_op_Mux.ap_auto.4i8.i2(i8 %cache_0_load_2, i8 %cache_1_load_2, i8 %cache_2_load_2, i8 %cache_3_load_2, i2 %tmp_34_0_2_t) nounwind
  %tmp_36_2_2_cast1 = zext i8 %tmp_43 to i9
  %tmp_36_2_2_cast = zext i8 %tmp_43 to i11
  %tmp18 = add i11 %x_weight_0_2, %tmp_39_2_1_cast
  %tmp19 = add i9 %tmp_36_2_2_cast1, %tmp_36_2_cast1
  %tmp19_cast = zext i9 %tmp19 to i11
  %x_weight_2_2 = add i11 %tmp18, %tmp19_cast
  %y_weight_2_2 = sub i11 %y_weight_2_1, %tmp_36_2_2_cast
  %tmp_19 = icmp sgt i11 %x_weight_2_2, 0
  %tmp20 = add i8 %tmp_42, %tmp_37
  %tmp21 = add i8 %tmp_43, %tmp_38
  %tmp_40 = add i8 %tmp20, %tmp21
  %tmp_41 = sub i8 0, %tmp_40
  %tmp_44 = select i1 %tmp_19, i8 %tmp_40, i8 %tmp_41
  %tmp_22 = icmp sgt i11 %y_weight_2_2, 0
  %tmp_45 = trunc i11 %y_weight_2_2 to i8
  %tmp_46 = sub i8 0, %tmp_45
  %tmp_47 = select i1 %tmp_22, i8 %tmp_45, i8 %tmp_46
  %tmp_25 = add i8 %tmp_44, %tmp_47
  %edge_val = xor i8 %tmp_25, -1
  %tmp_26 = icmp ult i8 %tmp_25, 55
  %tmp_31 = icmp ugt i8 %tmp_25, -101
  %p_i = select i1 %tmp_31, i8 0, i8 %edge_val
  %sel_tmp1 = xor i1 %or_cond2, true
  %sel_tmp2 = and i1 %tmp_26, %sel_tmp1
  %sel_tmp = select i1 %sel_tmp2, i8 -1, i8 0
  %tmp_48 = or i1 %sel_tmp2, %or_cond2
  %val = select i1 %tmp_48, i8 %sel_tmp, i8 %p_i
  %fourWide = call i32 @_ssdm_op_BitConcatenate.i32.i8.i8.i8.i8(i8 %val, i8 %val, i8 %val, i8 %val)
  call void @_ssdm_op_Write.m_axi.i32P(i32* %gmem1_addr, i32 %fourWide, i4 -1)
  %gmem0_addr_1_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %gmem0_addr_1)
  switch i2 %tmp_11_t, label %branch3 [
    i2 0, label %branch0
    i2 1, label %branch1
    i2 -2, label %branch2
  ]

._crit_edge67:                                    ; preds = %branch3, %branch2, %branch1, %branch0
  %empty_10 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str12, i32 %tmp_21) nounwind
  br label %8

; <label>:9                                       ; preds = %8
  %gmem1_addr_wr_resp = call i1 @_ssdm_op_WriteResp.m_axi.i32P(i32* %gmem1_addr)
  %empty_11 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str11, i32 %tmp_11) nounwind
  br label %.preheader

; <label>:10                                      ; preds = %.preheader
  ret void

branch0:                                          ; preds = %_ifconv
  store i8 %gmem0_addr_1_read, i8* %cache_0_addr_2, align 1
  br label %._crit_edge67

branch1:                                          ; preds = %_ifconv
  store i8 %gmem0_addr_1_read, i8* %cache_1_addr_2, align 1
  br label %._crit_edge67

branch2:                                          ; preds = %_ifconv
  store i8 %gmem0_addr_1_read, i8* %cache_2_addr_1, align 1
  br label %._crit_edge67

branch3:                                          ; preds = %_ifconv
  store i8 %gmem0_addr_1_read, i8* %cache_3_addr_1, align 1
  br label %._crit_edge67

branch4:                                          ; preds = %4
  store i8 %gmem0_addr_read, i8* %cache_0_addr, align 1
  br label %5

branch5:                                          ; preds = %4
  store i8 %gmem0_addr_read, i8* %cache_1_addr, align 1
  br label %5
}

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

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

define weak i32 @_ssdm_op_Read.s_axilite.i32(i32) {
entry:
  ret i32 %0
}

define weak i8 @_ssdm_op_Read.m_axi.i8P(i8*) {
entry:
  %empty = load i8* %0
  ret i8 %empty
}

declare i8 @_ssdm_op_PartSelect.i8.i11.i32.i32(i11, i32, i32) nounwind readnone

declare i7 @_ssdm_op_PartSelect.i7.i8.i32.i32(i8, i32, i32) nounwind readnone

define weak i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_12 = trunc i32 %empty to i30
  ret i30 %empty_12
}

declare i2 @_ssdm_op_PartSelect.i2.i11.i32.i32(i11, i32, i32) nounwind readnone

declare i1 @_ssdm_op_PartSelect.i1.i2.i32.i32(i2, i32, i32) nounwind readnone

define weak i8 @_ssdm_op_Mux.ap_auto.4i8.i2(i8, i8, i8, i8, i2) {
entry:
  switch i2 %4, label %case3 [
    i2 0, label %case0
    i2 1, label %case1
    i2 -2, label %case2
  ]

case0:                                            ; preds = %case3, %case2, %case1, %entry
  %merge = phi i8 [ %0, %entry ], [ %1, %case1 ], [ %2, %case2 ], [ %3, %case3 ]
  ret i8 %merge

case1:                                            ; preds = %entry
  br label %case0

case2:                                            ; preds = %entry
  br label %case0

case3:                                            ; preds = %entry
  br label %case0
}

define weak i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8, i1) nounwind readnone {
entry:
  %empty = zext i8 %0 to i9
  %empty_13 = zext i1 %1 to i9
  %empty_14 = shl i9 %empty, 1
  %empty_15 = or i9 %empty_14, %empty_13
  ret i9 %empty_15
}

declare i8 @_ssdm_op_BitConcatenate.i8.i7.i1(i7, i1) nounwind readnone

define weak i8 @_ssdm_op_BitConcatenate.i8.i1.i7(i1, i7) nounwind readnone {
entry:
  %empty = zext i1 %0 to i8
  %empty_16 = zext i7 %1 to i8
  %empty_17 = shl i8 %empty, 7
  %empty_18 = or i8 %empty_17, %empty_16
  ret i8 %empty_18
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i8.i8.i8.i8(i8, i8, i8, i8) nounwind readnone {
entry:
  %empty = zext i8 %2 to i16
  %empty_19 = zext i8 %3 to i16
  %empty_20 = shl i16 %empty, 8
  %empty_21 = or i16 %empty_20, %empty_19
  %empty_22 = zext i8 %1 to i24
  %empty_23 = zext i16 %empty_21 to i24
  %empty_24 = shl i24 %empty_22, 16
  %empty_25 = or i24 %empty_24, %empty_23
  %empty_26 = zext i8 %0 to i32
  %empty_27 = zext i24 %empty_25 to i32
  %empty_28 = shl i32 %empty_26, 24
  %empty_29 = or i32 %empty_28, %empty_27
  ret i32 %empty_29
}

define weak i22 @_ssdm_op_BitConcatenate.i22.i11.i11(i11, i11) nounwind readnone {
entry:
  %empty = zext i11 %0 to i22
  %empty_30 = zext i11 %1 to i22
  %empty_31 = shl i22 %empty, 11
  %empty_32 = or i22 %empty_31, %empty_30
  ret i22 %empty_32
}

define weak i18 @_ssdm_op_BitConcatenate.i18.i11.i7(i11, i7) nounwind readnone {
entry:
  %empty = zext i11 %0 to i18
  %empty_33 = zext i7 %1 to i18
  %empty_34 = shl i18 %empty, 7
  %empty_35 = or i18 %empty_34, %empty_33
  ret i18 %empty_35
}

define weak i12 @_ssdm_op_BitConcatenate.i12.i1.i11(i1, i11) nounwind readnone {
entry:
  %empty = zext i1 %0 to i12
  %empty_36 = zext i11 %1 to i12
  %empty_37 = shl i12 %empty, 11
  %empty_38 = or i12 %empty_37, %empty_36
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
!17 = metadata !{metadata !18}
!18 = metadata !{i32 0, i32 31, metadata !19}
!19 = metadata !{metadata !20}
!20 = metadata !{metadata !"out_pix", metadata !21, metadata !"unsigned int", i32 0, i32 31}
!21 = metadata !{metadata !22}
!22 = metadata !{i32 0, i32 2073599, i32 1}
!23 = metadata !{metadata !24}
!24 = metadata !{i32 0, i32 7, metadata !25}
!25 = metadata !{metadata !26}
!26 = metadata !{metadata !"inter_pix", metadata !21, metadata !"unsigned char", i32 0, i32 7}
