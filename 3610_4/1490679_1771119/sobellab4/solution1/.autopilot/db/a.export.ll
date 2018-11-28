; ModuleID = 'X:/Bureau/HDMI_3610/3610_4/1490679_1771119/sobellab4/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@y_op = internal constant [9 x i3] [i3 1, i3 2, i3 1, i3 0, i3 0, i3 0, i3 -1, i3 -2, i3 -1]
@x_op = internal constant [9 x i3] [i3 -1, i3 0, i3 1, i3 -2, i3 0, i3 2, i3 -1, i3 0, i3 1]
@sobel_filter_str = internal unnamed_addr constant [13 x i8] c"sobel_filter\00"
@mode5 = internal constant [10 x i8] c"s_axilite\00"
@mode = internal constant [10 x i8] c"s_axilite\00"
@bundle6 = internal constant [1 x i8] zeroinitializer
@bundle = internal constant [1 x i8] zeroinitializer
@p_str9 = private unnamed_addr constant [14 x i8] c"ZerosLastLine\00", align 1
@p_str8 = private unnamed_addr constant [15 x i8] c"ZerosFirstLine\00", align 1
@p_str7 = private unnamed_addr constant [13 x i8] c"ZerosLastRow\00", align 1
@p_str6 = private unnamed_addr constant [14 x i8] c"ZerosFirstRow\00", align 1
@p_str5 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1
@p_str4 = private unnamed_addr constant [6 x i8] c"gmem1\00", align 1
@p_str3 = private unnamed_addr constant [6 x i8] c"slave\00", align 1
@p_str2 = private unnamed_addr constant [6 x i8] c"gmem0\00", align 1
@p_str13 = private unnamed_addr constant [7 x i8] c"OneTo4\00", align 1
@p_str12 = private unnamed_addr constant [4 x i8] c"IMG\00", align 1
@p_str11 = private unnamed_addr constant [13 x i8] c"OperatorRows\00", align 1
@p_str10 = private unnamed_addr constant [14 x i8] c"OperatorLines\00", align 1
@p_str1 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1
@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

define void @sobel_filter(i8* %gmem0, i32* %gmem1, i32 %inter_pix, i32 %out_pix) {
  %out_pix_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %out_pix)
  %inter_pix_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %inter_pix)
  %out_pix3 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %out_pix_read, i32 2, i32 31)
  %tmp_s = zext i30 %out_pix3 to i64
  %tmp_25_cast = zext i30 %out_pix3 to i33
  %tmp_25_cast1 = zext i30 %out_pix3 to i31
  %gmem1_addr = getelementptr i32* %gmem1, i64 %tmp_s
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %gmem1), !map !22
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %gmem0), !map !28
  call void (...)* @_ssdm_op_SpecTopModule([13 x i8]* @sobel_filter_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %gmem0, [6 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [6 x i8]* @p_str2, [6 x i8]* @p_str3, [1 x i8]* @p_str, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32 %inter_pix, [10 x i8]* @mode, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @bundle, [6 x i8]* @p_str3, [1 x i8]* @p_str, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %gmem1, [6 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [6 x i8]* @p_str4, [6 x i8]* @p_str3, [1 x i8]* @p_str, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32 %out_pix, [10 x i8]* @mode5, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @bundle6, [6 x i8]* @p_str3, [1 x i8]* @p_str, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str5, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  %gmem1_addr_wr_req = call i1 @_ssdm_op_WriteReq.m_axi.i32P(i32* %gmem1_addr, i32 1920)
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i11 [ 0, %0 ], [ %i_1, %2 ]
  %tmp = icmp eq i11 %i, -128
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1920, i64 1920, i64 1920) nounwind
  %i_1 = add i11 %i, 1
  br i1 %tmp, label %.preheader8.preheader, label %2

.preheader8.preheader:                            ; preds = %1
  %gmem1_addr_wr_resp = call i1 @_ssdm_op_WriteResp.m_axi.i32P(i32* %gmem1_addr)
  %out_pix4_sum6 = add i31 %tmp_25_cast1, 2071680
  %out_pix4_sum6_cast = zext i31 %out_pix4_sum6 to i64
  %gmem1_addr_1 = getelementptr i32* %gmem1, i64 %out_pix4_sum6_cast
  %gmem1_addr_1_wr_req = call i1 @_ssdm_op_WriteReq.m_axi.i32P(i32* %gmem1_addr_1, i32 1920)
  br label %.preheader8

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @p_str6) nounwind
  call void @_ssdm_op_Write.m_axi.i32P(i32* %gmem1_addr, i32 0, i4 -1)
  br label %1

.preheader8:                                      ; preds = %3, %.preheader8.preheader
  %i1 = phi i16 [ %i_2, %3 ], [ -25472, %.preheader8.preheader ]
  %exitcond4 = icmp eq i16 %i1, -23552
  %empty_5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1920, i64 1920, i64 1920) nounwind
  br i1 %exitcond4, label %.preheader7.preheader, label %3

.preheader7.preheader:                            ; preds = %.preheader8
  %gmem1_addr_1_wr_resp = call i1 @_ssdm_op_WriteResp.m_axi.i32P(i32* %gmem1_addr_1)
  br label %.preheader7

; <label>:3                                       ; preds = %.preheader8
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @p_str7) nounwind
  call void @_ssdm_op_Write.m_axi.i32P(i32* %gmem1_addr_1, i32 0, i4 -1)
  %i_2 = add i16 %i1, 1
  br label %.preheader8

.preheader7:                                      ; preds = %.preheader7.preheader, %4
  %i2 = phi i21 [ %i_3, %4 ], [ 0, %.preheader7.preheader ]
  %tmp_5 = icmp ult i21 %i2, -23552
  %empty_6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1080, i64 1080, i64 1080) nounwind
  br i1 %tmp_5, label %4, label %.preheader6.preheader

.preheader6.preheader:                            ; preds = %.preheader7
  br label %.preheader6

; <label>:4                                       ; preds = %.preheader7
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str8) nounwind
  %tmp_6_cast = zext i21 %i2 to i31
  %out_pix4_sum1 = add i31 %tmp_6_cast, %tmp_25_cast1
  %out_pix4_sum1_cast = zext i31 %out_pix4_sum1 to i64
  %gmem1_addr_2 = getelementptr i32* %gmem1, i64 %out_pix4_sum1_cast
  %gmem1_addr_4_req = call i1 @_ssdm_op_WriteReq.m_axi.i32P(i32* %gmem1_addr_2, i32 1)
  call void @_ssdm_op_Write.m_axi.i32P(i32* %gmem1_addr_2, i32 0, i4 -1)
  %gmem1_addr_4_resp = call i1 @_ssdm_op_WriteResp.m_axi.i32P(i32* %gmem1_addr_2)
  %i_3 = add i21 %i2, 1920
  br label %.preheader7

.preheader6:                                      ; preds = %.preheader6.preheader, %5
  %i3 = phi i21 [ %i_4, %5 ], [ 1919, %.preheader6.preheader ]
  %tmp_8 = icmp ult i21 %i3, -23552
  %empty_7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1080, i64 1080, i64 1080) nounwind
  br i1 %tmp_8, label %5, label %.preheader5.preheader

.preheader5.preheader:                            ; preds = %.preheader6
  br label %.preheader5

; <label>:5                                       ; preds = %.preheader6
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @p_str9) nounwind
  %tmp_9_cast = zext i21 %i3 to i31
  %out_pix4_sum2 = add i31 %tmp_9_cast, %tmp_25_cast1
  %out_pix4_sum2_cast = zext i31 %out_pix4_sum2 to i64
  %gmem1_addr_3 = getelementptr i32* %gmem1, i64 %out_pix4_sum2_cast
  %gmem1_addr_5_req = call i1 @_ssdm_op_WriteReq.m_axi.i32P(i32* %gmem1_addr_3, i32 1)
  call void @_ssdm_op_Write.m_axi.i32P(i32* %gmem1_addr_3, i32 0, i4 -1)
  %gmem1_addr_5_resp = call i1 @_ssdm_op_WriteResp.m_axi.i32P(i32* %gmem1_addr_3)
  %i_4 = add i21 %i3, 1920
  br label %.preheader6

.preheader5:                                      ; preds = %.preheader5.preheader, %10
  %i4 = phi i11 [ %i_5, %10 ], [ 1, %.preheader5.preheader ]
  %exitcond3 = icmp eq i11 %i4, -969
  %empty_8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1078, i64 1078, i64 1078) nounwind
  br i1 %exitcond3, label %.preheader.preheader, label %6

.preheader.preheader:                             ; preds = %.preheader5
  %fourWide = alloca i32
  %tmp_1 = zext i30 %out_pix3 to i64
  %gmem1_addr_4 = getelementptr i32* %gmem1, i64 %tmp_1
  %p_rd_req = call i1 @_ssdm_op_ReadReq.m_axi.i32P(i32* %gmem1_addr_4, i32 2073600)
  %p_wr_req = call i1 @_ssdm_op_WriteReq.m_axi.i32P(i32* %gmem1_addr_4, i32 2073600)
  br label %.preheader

; <label>:6                                       ; preds = %.preheader5
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @p_str10) nounwind
  %tmp_3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([14 x i8]* @p_str10) nounwind
  %p_shl = call i22 @_ssdm_op_BitConcatenate.i22.i11.i11(i11 %i4, i11 0)
  %p_shl_cast = zext i22 %p_shl to i23
  %p_shl1 = call i18 @_ssdm_op_BitConcatenate.i18.i11.i7(i11 %i4, i7 0)
  %p_shl1_cast = zext i18 %p_shl1 to i23
  %tmp_2 = sub i23 %p_shl_cast, %p_shl1_cast
  br label %7

; <label>:7                                       ; preds = %_ifconv, %6
  %j = phi i11 [ 1, %6 ], [ %j_2, %_ifconv ]
  %j_cast5 = zext i11 %j to i23
  %exitcond2 = icmp eq i11 %j, -129
  %empty_9 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1918, i64 1918, i64 1918) nounwind
  br i1 %exitcond2, label %10, label %8

; <label>:8                                       ; preds = %7
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @p_str11) nounwind
  %tmp_6 = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str11) nounwind
  %fullIndex = add i23 %j_cast5, %tmp_2
  %fullIndex_cast = sext i23 %fullIndex to i32
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %.preheader.i
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %8
  %y_weight_0_i = phi i32 [ 0, %8 ], [ %y_weight_1_i, %.loopexit.loopexit ]
  %x_weight_0_i = phi i32 [ 0, %8 ], [ %x_weight_1_i, %.loopexit.loopexit ]
  %i_0_i = phi i2 [ 0, %8 ], [ %i_7, %.loopexit.loopexit ]
  %exitcond1_i = icmp eq i2 %i_0_i, -1
  %empty_10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) nounwind
  %i_7 = add i2 %i_0_i, 1
  br i1 %exitcond1_i, label %_ifconv, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.loopexit
  %tmp_18 = add i2 %i_0_i, -1
  %tmp_19_cast = zext i2 %i_0_i to i5
  %tmp_34 = call i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2 %i_0_i, i2 0)
  %p_shl5_cast = zext i4 %tmp_34 to i5
  %tmp_35 = sub i5 %p_shl5_cast, %tmp_19_cast
  br label %.preheader.i

.preheader.i:                                     ; preds = %9, %.preheader.preheader.i
  %y_weight_1_i = phi i32 [ %y_weight, %9 ], [ %y_weight_0_i, %.preheader.preheader.i ]
  %x_weight_1_i = phi i32 [ %x_weight, %9 ], [ %x_weight_0_i, %.preheader.preheader.i ]
  %j_0_i = phi i2 [ %j_3, %9 ], [ 0, %.preheader.preheader.i ]
  %exitcond_i = icmp eq i2 %j_0_i, -1
  %empty_11 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) nounwind
  %j_3 = add i2 %j_0_i, 1
  br i1 %exitcond_i, label %.loopexit.loopexit, label %9

; <label>:9                                       ; preds = %.preheader.i
  %tmp_23 = add i2 %j_0_i, -1
  %tmp_36 = call fastcc zeroext i8 @getVal(i23 %fullIndex, i2 %tmp_18, i2 %tmp_23, i8* %gmem0, i32 %inter_pix_read)
  %tmp_25_cast_cast = zext i8 %tmp_36 to i12
  %tmp_26_cast = zext i2 %j_0_i to i5
  %tmp_37 = add i5 %tmp_35, %tmp_26_cast
  %tmp_37_cast = sext i5 %tmp_37 to i64
  %x_op_addr = getelementptr [9 x i3]* @x_op, i64 0, i64 %tmp_37_cast
  %y_op_addr = getelementptr [9 x i3]* @y_op, i64 0, i64 %tmp_37_cast
  %x_op_load = load i3* %x_op_addr, align 1
  %tmp_27_cast_cast = sext i3 %x_op_load to i12
  %tmp_28 = mul i12 %tmp_27_cast_cast, %tmp_25_cast_cast
  %tmp_28_cast = sext i12 %tmp_28 to i32
  %x_weight = add nsw i32 %x_weight_1_i, %tmp_28_cast
  %tmp_38 = call fastcc zeroext i8 @getVal(i23 %fullIndex, i2 %tmp_18, i2 %tmp_23, i8* %gmem0, i32 %inter_pix_read)
  %tmp_30_cast_cast = zext i8 %tmp_38 to i12
  %y_op_load = load i3* %y_op_addr, align 1
  %tmp_31_cast_cast = sext i3 %y_op_load to i12
  %tmp_32 = mul i12 %tmp_31_cast_cast, %tmp_30_cast_cast
  %tmp_32_cast = sext i12 %tmp_32 to i32
  %y_weight = add nsw i32 %y_weight_1_i, %tmp_32_cast
  br label %.preheader.i

_ifconv:                                          ; preds = %.loopexit
  %tmp_10 = icmp sgt i32 %x_weight_0_i, 0
  %tmp_50 = trunc i32 %x_weight_0_i to i8
  %tmp_24 = sub i8 0, %tmp_50
  %tmp_27 = select i1 %tmp_10, i8 %tmp_50, i8 %tmp_24
  %tmp_13 = icmp sgt i32 %y_weight_0_i, 0
  %tmp_51 = trunc i32 %y_weight_0_i to i8
  %tmp_30 = sub i8 0, %tmp_51
  %tmp_31 = select i1 %tmp_13, i8 %tmp_51, i8 %tmp_30
  %tmp_16 = add i8 %tmp_27, %tmp_31
  %edge_val = xor i8 %tmp_16, -1
  %tmp_17 = icmp ult i8 %tmp_16, 55
  %tmp_20 = icmp ugt i8 %tmp_16, -101
  %p_i = select i1 %tmp_17, i8 -1, i8 0
  %tmp_33 = or i1 %tmp_17, %tmp_20
  %edge_val_1_i = select i1 %tmp_33, i8 %p_i, i8 %edge_val
  %tmp_21 = zext i8 %edge_val_1_i to i32
  %tmp_22_cast = zext i32 %fullIndex_cast to i33
  %out_pix4_sum8 = add i33 %tmp_22_cast, %tmp_25_cast
  %out_pix4_sum8_cast = zext i33 %out_pix4_sum8 to i64
  %gmem1_addr_5 = getelementptr i32* %gmem1, i64 %out_pix4_sum8_cast
  %gmem1_addr_7_req = call i1 @_ssdm_op_WriteReq.m_axi.i32P(i32* %gmem1_addr_5, i32 1)
  call void @_ssdm_op_Write.m_axi.i32P(i32* %gmem1_addr_5, i32 %tmp_21, i4 -1)
  %gmem1_addr_7_resp = call i1 @_ssdm_op_WriteResp.m_axi.i32P(i32* %gmem1_addr_5)
  %empty_12 = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str11, i32 %tmp_6) nounwind
  %j_2 = add i11 1, %j
  br label %7

; <label>:10                                      ; preds = %7
  %empty_13 = call i32 (...)* @_ssdm_op_SpecRegionEnd([14 x i8]* @p_str10, i32 %tmp_3) nounwind
  %i_5 = add i11 %i4, 1
  br label %.preheader5

.preheader:                                       ; preds = %.preheader.preheader, %14
  %i5 = phi i21 [ 0, %.preheader.preheader ], [ %i_6, %14 ]
  %exitcond1 = icmp eq i21 %i5, -23552
  %empty_14 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2073600, i64 2073600, i64 2073600) nounwind
  %i_6 = add i21 %i5, 1
  br i1 %exitcond1, label %15, label %11

; <label>:11                                      ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([4 x i8]* @p_str12) nounwind
  %tmp_4 = call i32 (...)* @_ssdm_op_SpecRegionBegin([4 x i8]* @p_str12) nounwind
  %gmem1_addr_4_read = call i32 @_ssdm_op_Read.m_axi.i32P(i32* %gmem1_addr_4)
  %val = trunc i32 %gmem1_addr_4_read to i8
  br label %12

; <label>:12                                      ; preds = %13, %11
  %j6 = phi i3 [ 0, %11 ], [ %j_1, %13 ]
  %exitcond = icmp eq i3 %j6, -4
  %empty_15 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) nounwind
  %j_1 = add i3 %j6, 1
  br i1 %exitcond, label %14, label %13

; <label>:13                                      ; preds = %12
  %fourWide_load_1 = load i32* %fourWide
  call void (...)* @_ssdm_op_SpecLoopName([7 x i8]* @p_str13) nounwind
  %tmp_7 = trunc i3 %j6 to i2
  %start_pos = call i5 @_ssdm_op_BitConcatenate.i5.i2.i3(i2 %tmp_7, i3 0)
  %end_pos = or i5 %start_pos, 7
  %tmp_9 = icmp ugt i5 %start_pos, %end_pos
  %tmp_11 = zext i5 %start_pos to i6
  %tmp_12 = zext i5 %end_pos to i6
  %tmp_14 = zext i8 %val to i32
  %tmp_15 = xor i6 %tmp_11, 31
  %tmp_19 = select i1 %tmp_9, i6 %tmp_11, i6 %tmp_12
  %tmp_22 = select i1 %tmp_9, i6 %tmp_12, i6 %tmp_11
  %tmp_25 = select i1 %tmp_9, i6 %tmp_15, i6 %tmp_11
  %tmp_26 = xor i6 %tmp_19, 31
  %tmp_29 = zext i6 %tmp_25 to i32
  %tmp_39 = zext i6 %tmp_22 to i32
  %tmp_40 = zext i6 %tmp_26 to i32
  %tmp_41 = shl i32 %tmp_14, %tmp_29
  %tmp_42 = call i32 @llvm.part.select.i32(i32 %tmp_41, i32 31, i32 0)
  %tmp_43 = select i1 %tmp_9, i32 %tmp_42, i32 %tmp_41
  %tmp_44 = shl i32 -1, %tmp_39
  %tmp_45 = lshr i32 -1, %tmp_40
  %p_demorgan = and i32 %tmp_44, %tmp_45
  %tmp_46 = xor i32 %p_demorgan, -1
  %tmp_47 = and i32 %fourWide_load_1, %tmp_46
  %tmp_48 = and i32 %tmp_43, %p_demorgan
  %fourWide_1 = or i32 %tmp_47, %tmp_48
  store i32 %fourWide_1, i32* %fourWide
  br label %12

; <label>:14                                      ; preds = %12
  %fourWide_load = load i32* %fourWide
  call void @_ssdm_op_Write.m_axi.i32P(i32* %gmem1_addr_4, i32 %fourWide_load, i4 -1)
  %empty_16 = call i32 (...)* @_ssdm_op_SpecRegionEnd([4 x i8]* @p_str12, i32 %tmp_4) nounwind
  br label %.preheader

; <label>:15                                      ; preds = %.preheader
  %p_wr_resp = call i1 @_ssdm_op_WriteResp.m_axi.i32P(i32* %gmem1_addr_4)
  ret void
}

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define internal fastcc zeroext i8 @getVal(i23 %index, i2 %xDiff, i2 %yDiff, i8* %Y, i32 %Y_offset) {
  call void (...)* @_ssdm_op_SpecInterface(i8* %Y, [6 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [6 x i8]* @p_str2, [6 x i8]* @p_str3, [1 x i8]* @p_str, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %Y_offset_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %Y_offset)
  %yDiff_read = call i2 @_ssdm_op_Read.ap_auto.i2(i2 %yDiff)
  %xDiff_read = call i2 @_ssdm_op_Read.ap_auto.i2(i2 %xDiff)
  %index_read = call i23 @_ssdm_op_Read.ap_auto.i23(i23 %index)
  %p_shl = call i13 @_ssdm_op_BitConcatenate.i13.i2.i11(i2 %yDiff_read, i11 0)
  %p_shl2 = call i9 @_ssdm_op_BitConcatenate.i9.i2.i7(i2 %yDiff_read, i7 0)
  %p_shl2_cast = sext i9 %p_shl2 to i13
  %tmp = sub i13 %p_shl, %p_shl2_cast
  %xDiff_cast = sext i2 %xDiff_read to i13
  %tmp1 = add i13 %tmp, %xDiff_cast
  %tmp1_cast = sext i13 %tmp1 to i23
  %tmp_33 = add i23 %index_read, %tmp1_cast
  %tmp_cast = sext i23 %tmp_33 to i33
  %sext_cast = sext i32 %Y_offset_read to i33
  %sum = add i33 %tmp_cast, %sext_cast
  %sum_cast = sext i33 %sum to i64
  %Y_addr = getelementptr i8* %Y, i64 %sum_cast
  %Y_load_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %Y_addr, i32 1)
  %Y_addr_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %Y_addr)
  ret i8 %Y_addr_read
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

define weak i32 @_ssdm_op_Read.ap_auto.i32(i32) {
entry:
  ret i32 %0
}

define weak i23 @_ssdm_op_Read.ap_auto.i23(i23) {
entry:
  ret i23 %0
}

define weak i2 @_ssdm_op_Read.ap_auto.i2(i2) {
entry:
  ret i2 %0
}

declare i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_17 = trunc i32 %empty to i30
  ret i30 %empty_17
}

declare i2 @_ssdm_op_PartSelect.i2.i3.i32.i32(i3, i32, i32) nounwind readnone

define weak i9 @_ssdm_op_BitConcatenate.i9.i2.i7(i2, i7) nounwind readnone {
entry:
  %empty = zext i2 %0 to i9
  %empty_18 = zext i7 %1 to i9
  %empty_19 = shl i9 %empty, 7
  %empty_20 = or i9 %empty_19, %empty_18
  ret i9 %empty_20
}

define weak i5 @_ssdm_op_BitConcatenate.i5.i2.i3(i2, i3) nounwind readnone {
entry:
  %empty = zext i2 %0 to i5
  %empty_21 = zext i3 %1 to i5
  %empty_22 = shl i5 %empty, 3
  %empty_23 = or i5 %empty_22, %empty_21
  ret i5 %empty_23
}

define weak i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2, i2) nounwind readnone {
entry:
  %empty = zext i2 %0 to i4
  %empty_24 = zext i2 %1 to i4
  %empty_25 = shl i4 %empty, 2
  %empty_26 = or i4 %empty_25, %empty_24
  ret i4 %empty_26
}

define weak i22 @_ssdm_op_BitConcatenate.i22.i11.i11(i11, i11) nounwind readnone {
entry:
  %empty = zext i11 %0 to i22
  %empty_27 = zext i11 %1 to i22
  %empty_28 = shl i22 %empty, 11
  %empty_29 = or i22 %empty_28, %empty_27
  ret i22 %empty_29
}

define weak i18 @_ssdm_op_BitConcatenate.i18.i11.i7(i11, i7) nounwind readnone {
entry:
  %empty = zext i11 %0 to i18
  %empty_30 = zext i7 %1 to i18
  %empty_31 = shl i18 %empty, 7
  %empty_32 = or i18 %empty_31, %empty_30
  ret i18 %empty_32
}

define weak i13 @_ssdm_op_BitConcatenate.i13.i2.i11(i2, i11) nounwind readnone {
entry:
  %empty = zext i2 %0 to i13
  %empty_33 = zext i11 %1 to i13
  %empty_34 = shl i13 %empty, 11
  %empty_35 = or i13 %empty_34, %empty_33
  ret i13 %empty_35
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
