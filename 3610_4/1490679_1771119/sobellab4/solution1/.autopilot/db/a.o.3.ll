; ModuleID = 'X:/Bureau/HDMI_3610/3610_4/1490679_1771119/sobellab4/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@y_op = internal constant [9 x i3] [i3 1, i3 2, i3 1, i3 0, i3 0, i3 0, i3 -1, i3 -2, i3 -1] ; [#uses=1 type=[9 x i3]*]
@x_op = internal constant [9 x i3] [i3 -1, i3 0, i3 1, i3 -2, i3 0, i3 2, i3 -1, i3 0, i3 1] ; [#uses=1 type=[9 x i3]*]
@sobel_filter_str = internal unnamed_addr constant [13 x i8] c"sobel_filter\00" ; [#uses=1 type=[13 x i8]*]
@mode5 = internal constant [10 x i8] c"s_axilite\00" ; [#uses=1 type=[10 x i8]*]
@mode = internal constant [10 x i8] c"s_axilite\00" ; [#uses=1 type=[10 x i8]*]
@bundle6 = internal constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@bundle = internal constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str9 = private unnamed_addr constant [14 x i8] c"ZerosLastLine\00", align 1 ; [#uses=1 type=[14 x i8]*]
@p_str8 = private unnamed_addr constant [15 x i8] c"ZerosFirstLine\00", align 1 ; [#uses=1 type=[15 x i8]*]
@p_str7 = private unnamed_addr constant [13 x i8] c"ZerosLastRow\00", align 1 ; [#uses=1 type=[13 x i8]*]
@p_str6 = private unnamed_addr constant [14 x i8] c"ZerosFirstRow\00", align 1 ; [#uses=1 type=[14 x i8]*]
@p_str5 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]
@p_str4 = private unnamed_addr constant [6 x i8] c"gmem1\00", align 1 ; [#uses=1 type=[6 x i8]*]
@p_str3 = private unnamed_addr constant [6 x i8] c"slave\00", align 1 ; [#uses=5 type=[6 x i8]*]
@p_str2 = private unnamed_addr constant [6 x i8] c"gmem0\00", align 1 ; [#uses=2 type=[6 x i8]*]
@p_str13 = private unnamed_addr constant [7 x i8] c"OneTo4\00", align 1 ; [#uses=1 type=[7 x i8]*]
@p_str12 = private unnamed_addr constant [4 x i8] c"IMG\00", align 1 ; [#uses=3 type=[4 x i8]*]
@p_str11 = private unnamed_addr constant [13 x i8] c"OperatorRows\00", align 1 ; [#uses=3 type=[13 x i8]*]
@p_str10 = private unnamed_addr constant [14 x i8] c"OperatorLines\00", align 1 ; [#uses=3 type=[14 x i8]*]
@p_str1 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1 ; [#uses=3 type=[6 x i8]*]
@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=26 type=[1 x i8]*]

; [#uses=0]
define void @sobel_filter(i8* %gmem0, i32* %gmem1, i32 %inter_pix, i32 %out_pix) {
  %out_pix_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %out_pix) ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %out_pix_read}, i64 0, metadata !22), !dbg !37 ; [debug line = 71:60] [debug variable = out_pix]
  %inter_pix_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %inter_pix) ; [#uses=2 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %inter_pix_read}, i64 0, metadata !38), !dbg !40 ; [debug line = 71:27] [debug variable = inter_pix]
  call void @llvm.dbg.value(metadata !{i32 %inter_pix_read}, i64 0, metadata !41), !dbg !47 ; [debug line = 16:55@100:25] [debug variable = image]
  %out_pix3 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %out_pix_read, i32 2, i32 31) ; [#uses=4 type=i30]
  %tmp_s = zext i30 %out_pix3 to i64              ; [#uses=1 type=i64]
  %tmp_25_cast = zext i30 %out_pix3 to i33        ; [#uses=1 type=i33]
  %tmp_25_cast1 = zext i30 %out_pix3 to i31       ; [#uses=3 type=i31]
  %gmem1_addr = getelementptr i32* %gmem1, i64 %tmp_s ; [#uses=3 type=i32*]
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %gmem1), !map !54
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %gmem0), !map !60
  call void (...)* @_ssdm_op_SpecTopModule([13 x i8]* @sobel_filter_str) nounwind
  call void @llvm.dbg.value(metadata !{i32 %inter_pix}, i64 0, metadata !38), !dbg !40 ; [debug line = 71:27] [debug variable = inter_pix]
  call void @llvm.dbg.value(metadata !{i32 %out_pix}, i64 0, metadata !22), !dbg !37 ; [debug line = 71:60] [debug variable = out_pix]
  call void (...)* @_ssdm_op_SpecInterface(i8* %gmem0, [6 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [6 x i8]* @p_str2, [6 x i8]* @p_str3, [1 x i8]* @p_str, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32 %inter_pix, [10 x i8]* @mode, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @bundle, [6 x i8]* @p_str3, [1 x i8]* @p_str, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %gmem1, [6 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [6 x i8]* @p_str4, [6 x i8]* @p_str3, [1 x i8]* @p_str, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32 %out_pix, [10 x i8]* @mode5, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @bundle6, [6 x i8]* @p_str3, [1 x i8]* @p_str, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str5, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind, !dbg !64 ; [debug line = 82:1]
  %gmem1_addr_wr_req = call i1 @_ssdm_op_WriteReq.m_axi.i32P(i32* %gmem1_addr, i32 1920), !dbg !65 ; [#uses=0 type=i1] [debug line = 88:3]
  br label %1, !dbg !68                           ; [debug line = 87:40]

; <label>:1                                       ; preds = %2, %0
  %i = phi i11 [ 0, %0 ], [ %i_1, %2 ]            ; [#uses=2 type=i11]
  %tmp = icmp eq i11 %i, -128, !dbg !68           ; [#uses=1 type=i1] [debug line = 87:40]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1920, i64 1920, i64 1920) nounwind ; [#uses=0 type=i32]
  %i_1 = add i11 %i, 1, !dbg !69                  ; [#uses=1 type=i11] [debug line = 87:52]
  br i1 %tmp, label %.preheader8.preheader, label %2, !dbg !68 ; [debug line = 87:40]

.preheader8.preheader:                            ; preds = %1
  %gmem1_addr_wr_resp = call i1 @_ssdm_op_WriteResp.m_axi.i32P(i32* %gmem1_addr), !dbg !65 ; [#uses=0 type=i1] [debug line = 88:3]
  %out_pix4_sum6 = add i31 %tmp_25_cast1, 2071680 ; [#uses=1 type=i31]
  %out_pix4_sum6_cast = zext i31 %out_pix4_sum6 to i64 ; [#uses=1 type=i64]
  %gmem1_addr_1 = getelementptr i32* %gmem1, i64 %out_pix4_sum6_cast ; [#uses=3 type=i32*]
  %gmem1_addr_1_wr_req = call i1 @_ssdm_op_WriteReq.m_axi.i32P(i32* %gmem1_addr_1, i32 1920), !dbg !70 ; [#uses=0 type=i1] [debug line = 90:3]
  br label %.preheader8, !dbg !73                 ; [debug line = 89:58]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @p_str6) nounwind, !dbg !65 ; [debug line = 88:3]
  call void @_ssdm_op_Write.m_axi.i32P(i32* %gmem1_addr, i32 0, i4 -1), !dbg !65 ; [debug line = 88:3]
  call void @llvm.dbg.value(metadata !{i11 %i_1}, i64 0, metadata !74), !dbg !69 ; [debug line = 87:52] [debug variable = i]
  br label %1, !dbg !69                           ; [debug line = 87:52]

.preheader8:                                      ; preds = %3, %.preheader8.preheader
  %i1 = phi i16 [ %i_2, %3 ], [ -25472, %.preheader8.preheader ] ; [#uses=2 type=i16]
  %exitcond4 = icmp eq i16 %i1, -23552, !dbg !73  ; [#uses=1 type=i1] [debug line = 89:58]
  %empty_5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1920, i64 1920, i64 1920) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond4, label %.preheader7.preheader, label %3, !dbg !73 ; [debug line = 89:58]

.preheader7.preheader:                            ; preds = %.preheader8
  %gmem1_addr_1_wr_resp = call i1 @_ssdm_op_WriteResp.m_axi.i32P(i32* %gmem1_addr_1), !dbg !70 ; [#uses=0 type=i1] [debug line = 90:3]
  br label %.preheader7, !dbg !75                 ; [debug line = 91:41]

; <label>:3                                       ; preds = %.preheader8
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @p_str7) nounwind, !dbg !70 ; [debug line = 90:3]
  call void @_ssdm_op_Write.m_axi.i32P(i32* %gmem1_addr_1, i32 0, i4 -1), !dbg !70 ; [debug line = 90:3]
  %i_2 = add i16 %i1, 1, !dbg !77                 ; [#uses=1 type=i16] [debug line = 89:79]
  call void @llvm.dbg.value(metadata !{i16 %i_2}, i64 0, metadata !78), !dbg !77 ; [debug line = 89:79] [debug variable = i]
  br label %.preheader8, !dbg !77                 ; [debug line = 89:79]

.preheader7:                                      ; preds = %4, %.preheader7.preheader
  %i2 = phi i21 [ %i_3, %4 ], [ 0, %.preheader7.preheader ] ; [#uses=3 type=i21]
  %tmp_5 = icmp ult i21 %i2, -23552, !dbg !75     ; [#uses=1 type=i1] [debug line = 91:41]
  %empty_6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1080, i64 1080, i64 1080) nounwind ; [#uses=0 type=i32]
  br i1 %tmp_5, label %4, label %.preheader6.preheader, !dbg !75 ; [debug line = 91:41]

.preheader6.preheader:                            ; preds = %.preheader7
  br label %.preheader6, !dbg !79                 ; [debug line = 93:47]

; <label>:4                                       ; preds = %.preheader7
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str8) nounwind, !dbg !81 ; [debug line = 92:3]
  %tmp_6_cast = zext i21 %i2 to i31               ; [#uses=1 type=i31]
  %out_pix4_sum1 = add i31 %tmp_6_cast, %tmp_25_cast1 ; [#uses=1 type=i31]
  %out_pix4_sum1_cast = zext i31 %out_pix4_sum1 to i64 ; [#uses=1 type=i64]
  %gmem1_addr_2 = getelementptr i32* %gmem1, i64 %out_pix4_sum1_cast ; [#uses=3 type=i32*]
  %gmem1_addr_4_req = call i1 @_ssdm_op_WriteReq.m_axi.i32P(i32* %gmem1_addr_2, i32 1), !dbg !81 ; [#uses=0 type=i1] [debug line = 92:3]
  call void @_ssdm_op_Write.m_axi.i32P(i32* %gmem1_addr_2, i32 0, i4 -1), !dbg !81 ; [debug line = 92:3]
  %gmem1_addr_4_resp = call i1 @_ssdm_op_WriteResp.m_axi.i32P(i32* %gmem1_addr_2), !dbg !81 ; [#uses=0 type=i1] [debug line = 92:3]
  %i_3 = add i21 %i2, 1920, !dbg !83              ; [#uses=1 type=i21] [debug line = 91:62]
  call void @llvm.dbg.value(metadata !{i21 %i_3}, i64 0, metadata !84), !dbg !83 ; [debug line = 91:62] [debug variable = i]
  br label %.preheader7, !dbg !83                 ; [debug line = 91:62]

.preheader6:                                      ; preds = %5, %.preheader6.preheader
  %i3 = phi i21 [ %i_4, %5 ], [ 1919, %.preheader6.preheader ] ; [#uses=3 type=i21]
  %tmp_8 = icmp ult i21 %i3, -23552, !dbg !79     ; [#uses=1 type=i1] [debug line = 93:47]
  %empty_7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1080, i64 1080, i64 1080) nounwind ; [#uses=0 type=i32]
  br i1 %tmp_8, label %5, label %.preheader5.preheader, !dbg !79 ; [debug line = 93:47]

.preheader5.preheader:                            ; preds = %.preheader6
  br label %.preheader5, !dbg !85                 ; [debug line = 97:40]

; <label>:5                                       ; preds = %.preheader6
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @p_str9) nounwind, !dbg !86 ; [debug line = 94:3]
  %tmp_9_cast = zext i21 %i3 to i31               ; [#uses=1 type=i31]
  %out_pix4_sum2 = add i31 %tmp_9_cast, %tmp_25_cast1 ; [#uses=1 type=i31]
  %out_pix4_sum2_cast = zext i31 %out_pix4_sum2 to i64 ; [#uses=1 type=i64]
  %gmem1_addr_3 = getelementptr i32* %gmem1, i64 %out_pix4_sum2_cast ; [#uses=3 type=i32*]
  %gmem1_addr_5_req = call i1 @_ssdm_op_WriteReq.m_axi.i32P(i32* %gmem1_addr_3, i32 1), !dbg !86 ; [#uses=0 type=i1] [debug line = 94:3]
  call void @_ssdm_op_Write.m_axi.i32P(i32* %gmem1_addr_3, i32 0, i4 -1), !dbg !86 ; [debug line = 94:3]
  %gmem1_addr_5_resp = call i1 @_ssdm_op_WriteResp.m_axi.i32P(i32* %gmem1_addr_3), !dbg !86 ; [#uses=0 type=i1] [debug line = 94:3]
  %i_4 = add i21 %i3, 1920, !dbg !88              ; [#uses=1 type=i21] [debug line = 93:68]
  call void @llvm.dbg.value(metadata !{i21 %i_4}, i64 0, metadata !89), !dbg !88 ; [debug line = 93:68] [debug variable = i]
  br label %.preheader6, !dbg !88                 ; [debug line = 93:68]

.preheader5:                                      ; preds = %10, %.preheader5.preheader
  %i4 = phi i11 [ %i_5, %10 ], [ 1, %.preheader5.preheader ] ; [#uses=4 type=i11]
  %exitcond3 = icmp eq i11 %i4, -969, !dbg !85    ; [#uses=1 type=i1] [debug line = 97:40]
  %empty_8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1078, i64 1078, i64 1078) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond3, label %.preheader.preheader, label %6, !dbg !85 ; [debug line = 97:40]

.preheader.preheader:                             ; preds = %.preheader5
  %fourWide = alloca i32                          ; [#uses=3 type=i32*]
  call void @llvm.dbg.declare(metadata !{i32* %fourWide}, metadata !90) ; [debug variable = fourWide]
  %tmp_1 = zext i30 %out_pix3 to i64              ; [#uses=1 type=i64]
  %gmem1_addr_4 = getelementptr i32* %gmem1, i64 %tmp_1 ; [#uses=5 type=i32*]
  %p_rd_req = call i1 @_ssdm_op_ReadReq.m_axi.i32P(i32* %gmem1_addr_4, i32 2073600), !dbg !106 ; [#uses=0 type=i1] [debug line = 105:27]
  %p_wr_req = call i1 @_ssdm_op_WriteReq.m_axi.i32P(i32* %gmem1_addr_4, i32 2073600), !dbg !107 ; [#uses=0 type=i1] [debug line = 109:3]
  br label %.preheader, !dbg !108                 ; [debug line = 104:20]

; <label>:6                                       ; preds = %.preheader5
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @p_str10) nounwind, !dbg !109 ; [debug line = 97:62]
  %tmp_3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([14 x i8]* @p_str10) nounwind, !dbg !109 ; [#uses=1 type=i32] [debug line = 97:62]
  %p_shl = call i22 @_ssdm_op_BitConcatenate.i22.i11.i11(i11 %i4, i11 0), !dbg !110 ; [#uses=1 type=i22] [debug line = 99:32]
  %p_shl_cast = zext i22 %p_shl to i23, !dbg !110 ; [#uses=1 type=i23] [debug line = 99:32]
  %p_shl1 = call i18 @_ssdm_op_BitConcatenate.i18.i11.i7(i11 %i4, i7 0), !dbg !110 ; [#uses=1 type=i18] [debug line = 99:32]
  %p_shl1_cast = zext i18 %p_shl1 to i23, !dbg !110 ; [#uses=1 type=i23] [debug line = 99:32]
  %tmp_2 = sub i23 %p_shl_cast, %p_shl1_cast, !dbg !110 ; [#uses=1 type=i23] [debug line = 99:32]
  br label %7, !dbg !111                          ; [debug line = 98:40]

; <label>:7                                       ; preds = %_ifconv, %6
  %j = phi i11 [ 1, %6 ], [ %j_2, %_ifconv ]      ; [#uses=3 type=i11]
  %j_cast5 = zext i11 %j to i23, !dbg !111        ; [#uses=1 type=i23] [debug line = 98:40]
  %exitcond2 = icmp eq i11 %j, -129, !dbg !111    ; [#uses=1 type=i1] [debug line = 98:40]
  %empty_9 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1918, i64 1918, i64 1918) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond2, label %10, label %8, !dbg !111 ; [debug line = 98:40]

; <label>:8                                       ; preds = %7
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @p_str11) nounwind, !dbg !112 ; [debug line = 98:62]
  %tmp_6 = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str11) nounwind, !dbg !112 ; [#uses=1 type=i32] [debug line = 98:62]
  %fullIndex = add i23 %j_cast5, %tmp_2, !dbg !110 ; [#uses=3 type=i23] [debug line = 99:32]
  %fullIndex_cast = sext i23 %fullIndex to i32, !dbg !110 ; [#uses=1 type=i32] [debug line = 99:32]
  call void @llvm.dbg.value(metadata !{i23 %fullIndex}, i64 0, metadata !113), !dbg !110 ; [debug line = 99:32] [debug variable = fullIndex]
  call void @llvm.dbg.value(metadata !{i23 %fullIndex}, i64 0, metadata !114) nounwind, !dbg !115 ; [debug line = 16:34@100:25] [debug variable = fullIndex]
  call void @llvm.dbg.value(metadata !{i32 %inter_pix}, i64 0, metadata !41), !dbg !47 ; [debug line = 16:55@100:25] [debug variable = image]
  br label %.loopexit, !dbg !116                  ; [debug line = 47:16@100:25]

.loopexit.loopexit:                               ; preds = %.preheader.i
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %8
  %y_weight_0_i = phi i32 [ 0, %8 ], [ %y_weight_1_i, %.loopexit.loopexit ] ; [#uses=3 type=i32]
  %x_weight_0_i = phi i32 [ 0, %8 ], [ %x_weight_1_i, %.loopexit.loopexit ] ; [#uses=3 type=i32]
  %i_0_i = phi i2 [ 0, %8 ], [ %i_7, %.loopexit.loopexit ] ; [#uses=5 type=i2]
  %exitcond1_i = icmp eq i2 %i_0_i, -1, !dbg !116 ; [#uses=1 type=i1] [debug line = 47:16@100:25]
  %empty_10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) nounwind ; [#uses=0 type=i32]
  %i_7 = add i2 %i_0_i, 1, !dbg !119              ; [#uses=1 type=i2] [debug line = 47:25@100:25]
  call void @llvm.dbg.value(metadata !{i2 %i_7}, i64 0, metadata !120) nounwind, !dbg !119 ; [debug line = 47:25@100:25] [debug variable = i]
  br i1 %exitcond1_i, label %_ifconv, label %.preheader.preheader.i, !dbg !116 ; [debug line = 47:16@100:25]

.preheader.preheader.i:                           ; preds = %.loopexit
  %tmp_18 = add i2 %i_0_i, -1, !dbg !121          ; [#uses=2 type=i2] [debug line = 50:26@100:25]
  %tmp_19_cast = zext i2 %i_0_i to i5             ; [#uses=1 type=i5]
  %tmp_34 = call i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2 %i_0_i, i2 0) ; [#uses=1 type=i4]
  %p_shl5_cast = zext i4 %tmp_34 to i5, !dbg !121 ; [#uses=1 type=i5] [debug line = 50:26@100:25]
  %tmp_35 = sub i5 %p_shl5_cast, %tmp_19_cast, !dbg !121 ; [#uses=1 type=i5] [debug line = 50:26@100:25]
  br label %.preheader.i, !dbg !125               ; [debug line = 48:17@100:25]

.preheader.i:                                     ; preds = %9, %.preheader.preheader.i
  %y_weight_1_i = phi i32 [ %y_weight, %9 ], [ %y_weight_0_i, %.preheader.preheader.i ] ; [#uses=2 type=i32]
  %x_weight_1_i = phi i32 [ %x_weight, %9 ], [ %x_weight_0_i, %.preheader.preheader.i ] ; [#uses=2 type=i32]
  %j_0_i = phi i2 [ %j_3, %9 ], [ 0, %.preheader.preheader.i ] ; [#uses=4 type=i2]
  %exitcond_i = icmp eq i2 %j_0_i, -1, !dbg !125  ; [#uses=1 type=i1] [debug line = 48:17@100:25]
  %empty_11 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) nounwind ; [#uses=0 type=i32]
  %j_3 = add i2 %j_0_i, 1, !dbg !126              ; [#uses=1 type=i2] [debug line = 48:26@100:25]
  br i1 %exitcond_i, label %.loopexit.loopexit, label %9, !dbg !125 ; [debug line = 48:17@100:25]

; <label>:9                                       ; preds = %.preheader.i
  %tmp_23 = add i2 %j_0_i, -1, !dbg !121          ; [#uses=2 type=i2] [debug line = 50:26@100:25]
  %tmp_36 = call fastcc zeroext i8 @getVal(i23 %fullIndex, i2 %tmp_18, i2 %tmp_23, i8* %gmem0, i32 %inter_pix_read), !dbg !121 ; [#uses=1 type=i8] [debug line = 50:26@100:25]
  %tmp_25_cast_cast = zext i8 %tmp_36 to i12, !dbg !121 ; [#uses=1 type=i12] [debug line = 50:26@100:25]
  %tmp_26_cast = zext i2 %j_0_i to i5, !dbg !121  ; [#uses=1 type=i5] [debug line = 50:26@100:25]
  %tmp_37 = add i5 %tmp_35, %tmp_26_cast, !dbg !121 ; [#uses=1 type=i5] [debug line = 50:26@100:25]
  %tmp_37_cast = sext i5 %tmp_37 to i64, !dbg !121 ; [#uses=2 type=i64] [debug line = 50:26@100:25]
  %x_op_addr = getelementptr [9 x i3]* @x_op, i64 0, i64 %tmp_37_cast, !dbg !121 ; [#uses=1 type=i3*] [debug line = 50:26@100:25]
  %y_op_addr = getelementptr [9 x i3]* @y_op, i64 0, i64 %tmp_37_cast, !dbg !127 ; [#uses=1 type=i3*] [debug line = 53:26@100:25]
  %x_op_load = load i3* %x_op_addr, align 1, !dbg !121 ; [#uses=1 type=i3] [debug line = 50:26@100:25]
  %tmp_27_cast_cast = sext i3 %x_op_load to i12, !dbg !121 ; [#uses=1 type=i12] [debug line = 50:26@100:25]
  %tmp_28 = mul i12 %tmp_27_cast_cast, %tmp_25_cast_cast, !dbg !121 ; [#uses=1 type=i12] [debug line = 50:26@100:25]
  %tmp_28_cast = sext i12 %tmp_28 to i32, !dbg !121 ; [#uses=1 type=i32] [debug line = 50:26@100:25]
  %x_weight = add nsw i32 %x_weight_1_i, %tmp_28_cast, !dbg !121 ; [#uses=1 type=i32] [debug line = 50:26@100:25]
  call void @llvm.dbg.value(metadata !{i32 %x_weight}, i64 0, metadata !128) nounwind, !dbg !121 ; [debug line = 50:26@100:25] [debug variable = x_weight]
  %tmp_38 = call fastcc zeroext i8 @getVal(i23 %fullIndex, i2 %tmp_18, i2 %tmp_23, i8* %gmem0, i32 %inter_pix_read), !dbg !127 ; [#uses=1 type=i8] [debug line = 53:26@100:25]
  %tmp_30_cast_cast = zext i8 %tmp_38 to i12, !dbg !127 ; [#uses=1 type=i12] [debug line = 53:26@100:25]
  %y_op_load = load i3* %y_op_addr, align 1, !dbg !127 ; [#uses=1 type=i3] [debug line = 53:26@100:25]
  %tmp_31_cast_cast = sext i3 %y_op_load to i12, !dbg !127 ; [#uses=1 type=i12] [debug line = 53:26@100:25]
  %tmp_32 = mul i12 %tmp_31_cast_cast, %tmp_30_cast_cast, !dbg !127 ; [#uses=1 type=i12] [debug line = 53:26@100:25]
  %tmp_32_cast = sext i12 %tmp_32 to i32, !dbg !127 ; [#uses=1 type=i32] [debug line = 53:26@100:25]
  %y_weight = add nsw i32 %y_weight_1_i, %tmp_32_cast, !dbg !127 ; [#uses=1 type=i32] [debug line = 53:26@100:25]
  call void @llvm.dbg.value(metadata !{i32 %y_weight}, i64 0, metadata !129) nounwind, !dbg !127 ; [debug line = 53:26@100:25] [debug variable = y_weight]
  call void @llvm.dbg.value(metadata !{i2 %j_3}, i64 0, metadata !130) nounwind, !dbg !126 ; [debug line = 48:26@100:25] [debug variable = j]
  br label %.preheader.i, !dbg !126               ; [debug line = 48:26@100:25]

_ifconv:                                          ; preds = %.loopexit
  %tmp_10 = icmp sgt i32 %x_weight_0_i, 0, !dbg !131 ; [#uses=1 type=i1] [debug line = 57:2@100:25]
  %tmp_50 = trunc i32 %x_weight_0_i to i8, !dbg !131 ; [#uses=2 type=i8] [debug line = 57:2@100:25]
  %tmp_24 = sub i8 0, %tmp_50, !dbg !131          ; [#uses=1 type=i8] [debug line = 57:2@100:25]
  %tmp_27 = select i1 %tmp_10, i8 %tmp_50, i8 %tmp_24, !dbg !131 ; [#uses=1 type=i8] [debug line = 57:2@100:25]
  %tmp_13 = icmp sgt i32 %y_weight_0_i, 0, !dbg !131 ; [#uses=1 type=i1] [debug line = 57:2@100:25]
  %tmp_51 = trunc i32 %y_weight_0_i to i8, !dbg !131 ; [#uses=2 type=i8] [debug line = 57:2@100:25]
  %tmp_30 = sub i8 0, %tmp_51, !dbg !131          ; [#uses=1 type=i8] [debug line = 57:2@100:25]
  %tmp_31 = select i1 %tmp_13, i8 %tmp_51, i8 %tmp_30, !dbg !131 ; [#uses=1 type=i8] [debug line = 57:2@100:25]
  %tmp_16 = add i8 %tmp_27, %tmp_31, !dbg !132    ; [#uses=3 type=i8] [debug line = 59:2@100:25]
  %edge_val = xor i8 %tmp_16, -1, !dbg !132       ; [#uses=1 type=i8] [debug line = 59:2@100:25]
  call void @llvm.dbg.value(metadata !{i8 %edge_val}, i64 0, metadata !133) nounwind, !dbg !132 ; [debug line = 59:2@100:25] [debug variable = edge_val]
  %tmp_17 = icmp ult i8 %tmp_16, 55, !dbg !134    ; [#uses=2 type=i1] [debug line = 62:2@100:25]
  %tmp_20 = icmp ugt i8 %tmp_16, -101, !dbg !135  ; [#uses=1 type=i1] [debug line = 64:7@100:25]
  %p_i = select i1 %tmp_17, i8 -1, i8 0           ; [#uses=1 type=i8]
  %tmp_33 = or i1 %tmp_17, %tmp_20                ; [#uses=1 type=i1]
  %edge_val_1_i = select i1 %tmp_33, i8 %p_i, i8 %edge_val ; [#uses=1 type=i8]
  %tmp_21 = zext i8 %edge_val_1_i to i32, !dbg !48 ; [#uses=1 type=i32] [debug line = 100:25]
  %tmp_22_cast = zext i32 %fullIndex_cast to i33  ; [#uses=1 type=i33]
  %out_pix4_sum8 = add i33 %tmp_22_cast, %tmp_25_cast ; [#uses=1 type=i33]
  %out_pix4_sum8_cast = zext i33 %out_pix4_sum8 to i64 ; [#uses=1 type=i64]
  %gmem1_addr_5 = getelementptr i32* %gmem1, i64 %out_pix4_sum8_cast ; [#uses=3 type=i32*]
  %gmem1_addr_7_req = call i1 @_ssdm_op_WriteReq.m_axi.i32P(i32* %gmem1_addr_5, i32 1), !dbg !48 ; [#uses=0 type=i1] [debug line = 100:25]
  call void @_ssdm_op_Write.m_axi.i32P(i32* %gmem1_addr_5, i32 %tmp_21, i4 -1), !dbg !48 ; [debug line = 100:25]
  %gmem1_addr_7_resp = call i1 @_ssdm_op_WriteResp.m_axi.i32P(i32* %gmem1_addr_5), !dbg !48 ; [#uses=0 type=i1] [debug line = 100:25]
  %empty_12 = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str11, i32 %tmp_6) nounwind, !dbg !136 ; [#uses=0 type=i32] [debug line = 101:3]
  %j_2 = add i11 1, %j, !dbg !137                 ; [#uses=1 type=i11] [debug line = 98:56]
  call void @llvm.dbg.value(metadata !{i11 %j_2}, i64 0, metadata !138), !dbg !137 ; [debug line = 98:56] [debug variable = j]
  br label %7, !dbg !137                          ; [debug line = 98:56]

; <label>:10                                      ; preds = %7
  %empty_13 = call i32 (...)* @_ssdm_op_SpecRegionEnd([14 x i8]* @p_str10, i32 %tmp_3) nounwind, !dbg !139 ; [#uses=0 type=i32] [debug line = 102:2]
  %i_5 = add i11 %i4, 1, !dbg !140                ; [#uses=1 type=i11] [debug line = 97:56]
  call void @llvm.dbg.value(metadata !{i11 %i_5}, i64 0, metadata !141), !dbg !140 ; [debug line = 97:56] [debug variable = i]
  br label %.preheader5, !dbg !140                ; [debug line = 97:56]

.preheader:                                       ; preds = %14, %.preheader.preheader
  %i5 = phi i21 [ 0, %.preheader.preheader ], [ %i_6, %14 ] ; [#uses=2 type=i21]
  %exitcond1 = icmp eq i21 %i5, -23552, !dbg !108 ; [#uses=1 type=i1] [debug line = 104:20]
  %empty_14 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2073600, i64 2073600, i64 2073600) nounwind ; [#uses=0 type=i32]
  %i_6 = add i21 %i5, 1, !dbg !142                ; [#uses=1 type=i21] [debug line = 104:39]
  br i1 %exitcond1, label %15, label %11, !dbg !108 ; [debug line = 104:20]

; <label>:11                                      ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([4 x i8]* @p_str12) nounwind, !dbg !143 ; [debug line = 104:45]
  %tmp_4 = call i32 (...)* @_ssdm_op_SpecRegionBegin([4 x i8]* @p_str12) nounwind, !dbg !143 ; [#uses=1 type=i32] [debug line = 104:45]
  %gmem1_addr_4_read = call i32 @_ssdm_op_Read.m_axi.i32P(i32* %gmem1_addr_4), !dbg !106 ; [#uses=1 type=i32] [debug line = 105:27]
  %val = trunc i32 %gmem1_addr_4_read to i8, !dbg !106 ; [#uses=1 type=i8] [debug line = 105:27]
  call void @llvm.dbg.value(metadata !{i8 %val}, i64 0, metadata !144), !dbg !106 ; [debug line = 105:27] [debug variable = val]
  br label %12, !dbg !145                         ; [debug line = 107:23]

; <label>:12                                      ; preds = %13, %11
  %j6 = phi i3 [ 0, %11 ], [ %j_1, %13 ]          ; [#uses=3 type=i3]
  %exitcond = icmp eq i3 %j6, -4, !dbg !145       ; [#uses=1 type=i1] [debug line = 107:23]
  %empty_15 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) nounwind ; [#uses=0 type=i32]
  %j_1 = add i3 %j6, 1, !dbg !147                 ; [#uses=1 type=i3] [debug line = 107:32]
  br i1 %exitcond, label %14, label %13, !dbg !145 ; [debug line = 107:23]

; <label>:13                                      ; preds = %12
  %fourWide_load_1 = load i32* %fourWide          ; [#uses=1 type=i32]
  call void (...)* @_ssdm_op_SpecLoopName([7 x i8]* @p_str13) nounwind, !dbg !148 ; [debug line = 108:4]
  %tmp_7 = trunc i3 %j6 to i2                     ; [#uses=1 type=i2]
  %start_pos = call i5 @_ssdm_op_BitConcatenate.i5.i2.i3(i2 %tmp_7, i3 0) ; [#uses=3 type=i5]
  %end_pos = or i5 %start_pos, 7                  ; [#uses=2 type=i5]
  %tmp_9 = icmp ugt i5 %start_pos, %end_pos       ; [#uses=4 type=i1]
  %tmp_11 = zext i5 %start_pos to i6              ; [#uses=4 type=i6]
  %tmp_12 = zext i5 %end_pos to i6                ; [#uses=2 type=i6]
  %tmp_14 = zext i8 %val to i32                   ; [#uses=1 type=i32]
  %tmp_15 = xor i6 %tmp_11, 31                    ; [#uses=1 type=i6]
  %tmp_19 = select i1 %tmp_9, i6 %tmp_11, i6 %tmp_12 ; [#uses=1 type=i6]
  %tmp_22 = select i1 %tmp_9, i6 %tmp_12, i6 %tmp_11 ; [#uses=1 type=i6]
  %tmp_25 = select i1 %tmp_9, i6 %tmp_15, i6 %tmp_11 ; [#uses=1 type=i6]
  %tmp_26 = xor i6 %tmp_19, 31                    ; [#uses=1 type=i6]
  %tmp_29 = zext i6 %tmp_25 to i32                ; [#uses=1 type=i32]
  %tmp_39 = zext i6 %tmp_22 to i32                ; [#uses=1 type=i32]
  %tmp_40 = zext i6 %tmp_26 to i32                ; [#uses=1 type=i32]
  %tmp_41 = shl i32 %tmp_14, %tmp_29              ; [#uses=2 type=i32]
  %tmp_42 = call i32 @llvm.part.select.i32(i32 %tmp_41, i32 31, i32 0) ; [#uses=1 type=i32]
  %tmp_43 = select i1 %tmp_9, i32 %tmp_42, i32 %tmp_41 ; [#uses=1 type=i32]
  %tmp_44 = shl i32 -1, %tmp_39                   ; [#uses=1 type=i32]
  %tmp_45 = lshr i32 -1, %tmp_40                  ; [#uses=1 type=i32]
  %p_demorgan = and i32 %tmp_44, %tmp_45          ; [#uses=2 type=i32]
  %tmp_46 = xor i32 %p_demorgan, -1               ; [#uses=1 type=i32]
  %tmp_47 = and i32 %fourWide_load_1, %tmp_46     ; [#uses=1 type=i32]
  %tmp_48 = and i32 %tmp_43, %p_demorgan          ; [#uses=1 type=i32]
  %fourWide_1 = or i32 %tmp_47, %tmp_48           ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %fourWide_1}, i64 0, metadata !90), !dbg !150 ; [debug line = 106:19] [debug variable = fourWide]
  call void @llvm.dbg.value(metadata !{i3 %j_1}, i64 0, metadata !151), !dbg !147 ; [debug line = 107:32] [debug variable = j]
  store i32 %fourWide_1, i32* %fourWide, !dbg !150 ; [debug line = 106:19]
  br label %12, !dbg !147                         ; [debug line = 107:32]

; <label>:14                                      ; preds = %12
  %fourWide_load = load i32* %fourWide, !dbg !107 ; [#uses=1 type=i32] [debug line = 109:3]
  call void @_ssdm_op_Write.m_axi.i32P(i32* %gmem1_addr_4, i32 %fourWide_load, i4 -1), !dbg !107 ; [debug line = 109:3]
  %empty_16 = call i32 (...)* @_ssdm_op_SpecRegionEnd([4 x i8]* @p_str12, i32 %tmp_4) nounwind, !dbg !152 ; [#uses=0 type=i32] [debug line = 110:2]
  call void @llvm.dbg.value(metadata !{i21 %i_6}, i64 0, metadata !153), !dbg !142 ; [debug line = 104:39] [debug variable = i]
  br label %.preheader, !dbg !142                 ; [debug line = 104:39]

; <label>:15                                      ; preds = %.preheader
  %p_wr_resp = call i1 @_ssdm_op_WriteResp.m_axi.i32P(i32* %gmem1_addr_4), !dbg !107 ; [#uses=0 type=i1] [debug line = 109:3]
  ret void, !dbg !154                             ; [debug line = 111:1]
}

; [#uses=2]
declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

; [#uses=30]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=2]
define internal fastcc zeroext i8 @getVal(i23 %index, i2 %xDiff, i2 %yDiff, i8* %Y, i32 %Y_offset) {
  call void (...)* @_ssdm_op_SpecInterface(i8* %Y, [6 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [6 x i8]* @p_str2, [6 x i8]* @p_str3, [1 x i8]* @p_str, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %Y_offset_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %Y_offset) ; [#uses=1 type=i32]
  %yDiff_read = call i2 @_ssdm_op_Read.ap_auto.i2(i2 %yDiff) ; [#uses=2 type=i2]
  call void @llvm.dbg.value(metadata !{i2 %yDiff_read}, i64 0, metadata !155), !dbg !159 ; [debug line = 11:56] [debug variable = yDiff]
  %xDiff_read = call i2 @_ssdm_op_Read.ap_auto.i2(i2 %xDiff) ; [#uses=1 type=i2]
  call void @llvm.dbg.value(metadata !{i2 %xDiff_read}, i64 0, metadata !160), !dbg !161 ; [debug line = 11:45] [debug variable = xDiff]
  %index_read = call i23 @_ssdm_op_Read.ap_auto.i23(i23 %index) ; [#uses=1 type=i23]
  call void @llvm.dbg.value(metadata !{i23 %index_read}, i64 0, metadata !162), !dbg !163 ; [debug line = 11:34] [debug variable = index]
  call void @llvm.dbg.value(metadata !{i23 %index}, i64 0, metadata !162), !dbg !163 ; [debug line = 11:34] [debug variable = index]
  call void @llvm.dbg.value(metadata !{i2 %xDiff}, i64 0, metadata !160), !dbg !161 ; [debug line = 11:45] [debug variable = xDiff]
  call void @llvm.dbg.value(metadata !{i2 %yDiff}, i64 0, metadata !155), !dbg !159 ; [debug line = 11:56] [debug variable = yDiff]
  call void @llvm.dbg.value(metadata !{i8* %Y}, i64 0, metadata !164), !dbg !165 ; [debug line = 11:88] [debug variable = Y]
  %p_shl = call i13 @_ssdm_op_BitConcatenate.i13.i2.i11(i2 %yDiff_read, i11 0), !dbg !166 ; [#uses=1 type=i13] [debug line = 13:2]
  %p_shl2 = call i9 @_ssdm_op_BitConcatenate.i9.i2.i7(i2 %yDiff_read, i7 0), !dbg !166 ; [#uses=1 type=i9] [debug line = 13:2]
  %p_shl2_cast = sext i9 %p_shl2 to i13, !dbg !166 ; [#uses=1 type=i13] [debug line = 13:2]
  %tmp = sub i13 %p_shl, %p_shl2_cast, !dbg !166  ; [#uses=1 type=i13] [debug line = 13:2]
  %xDiff_cast = sext i2 %xDiff_read to i13, !dbg !166 ; [#uses=1 type=i13] [debug line = 13:2]
  %tmp1 = add i13 %tmp, %xDiff_cast, !dbg !166    ; [#uses=1 type=i13] [debug line = 13:2]
  %tmp1_cast = sext i13 %tmp1 to i23, !dbg !166   ; [#uses=1 type=i23] [debug line = 13:2]
  %tmp_33 = add i23 %index_read, %tmp1_cast, !dbg !166 ; [#uses=1 type=i23] [debug line = 13:2]
  %tmp_cast = sext i23 %tmp_33 to i33             ; [#uses=1 type=i33]
  %sext_cast = sext i32 %Y_offset_read to i33     ; [#uses=1 type=i33]
  %sum = add i33 %tmp_cast, %sext_cast            ; [#uses=1 type=i33]
  %sum_cast = sext i33 %sum to i64                ; [#uses=1 type=i64]
  %Y_addr = getelementptr i8* %Y, i64 %sum_cast   ; [#uses=2 type=i8*]
  %Y_load_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %Y_addr, i32 1), !dbg !166 ; [#uses=0 type=i1] [debug line = 13:2]
  %Y_addr_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %Y_addr), !dbg !166 ; [#uses=1 type=i8] [debug line = 13:2]
  ret i8 %Y_addr_read, !dbg !166                  ; [debug line = 13:2]
}

; [#uses=6]
define weak i1 @_ssdm_op_WriteResp.m_axi.i32P(i32*) {
entry:
  ret i1 true
}

; [#uses=6]
define weak i1 @_ssdm_op_WriteReq.m_axi.i32P(i32*, i32) {
entry:
  ret i1 true
}

; [#uses=6]
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

; [#uses=10]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=8]
define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

; [#uses=6]
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

; [#uses=1]
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

; [#uses=1]
define weak i32 @_ssdm_op_Read.ap_auto.i32(i32) {
entry:
  ret i32 %0
}

; [#uses=1]
define weak i23 @_ssdm_op_Read.ap_auto.i23(i23) {
entry:
  ret i23 %0
}

; [#uses=2]
define weak i2 @_ssdm_op_Read.ap_auto.i2(i2) {
entry:
  ret i2 %0
}

; [#uses=0]
declare i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=1]
define weak i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_17 = trunc i32 %empty to i30             ; [#uses=1 type=i30]
  ret i30 %empty_17
}

; [#uses=0]
declare i2 @_ssdm_op_PartSelect.i2.i3.i32.i32(i3, i32, i32) nounwind readnone

; [#uses=1]
define weak i9 @_ssdm_op_BitConcatenate.i9.i2.i7(i2, i7) nounwind readnone {
entry:
  %empty = zext i2 %0 to i9                       ; [#uses=1 type=i9]
  %empty_18 = zext i7 %1 to i9                    ; [#uses=1 type=i9]
  %empty_19 = shl i9 %empty, 7                    ; [#uses=1 type=i9]
  %empty_20 = or i9 %empty_19, %empty_18          ; [#uses=1 type=i9]
  ret i9 %empty_20
}

; [#uses=1]
define weak i5 @_ssdm_op_BitConcatenate.i5.i2.i3(i2, i3) nounwind readnone {
entry:
  %empty = zext i2 %0 to i5                       ; [#uses=1 type=i5]
  %empty_21 = zext i3 %1 to i5                    ; [#uses=1 type=i5]
  %empty_22 = shl i5 %empty, 3                    ; [#uses=1 type=i5]
  %empty_23 = or i5 %empty_22, %empty_21          ; [#uses=1 type=i5]
  ret i5 %empty_23
}

; [#uses=1]
define weak i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2, i2) nounwind readnone {
entry:
  %empty = zext i2 %0 to i4                       ; [#uses=1 type=i4]
  %empty_24 = zext i2 %1 to i4                    ; [#uses=1 type=i4]
  %empty_25 = shl i4 %empty, 2                    ; [#uses=1 type=i4]
  %empty_26 = or i4 %empty_25, %empty_24          ; [#uses=1 type=i4]
  ret i4 %empty_26
}

; [#uses=1]
define weak i22 @_ssdm_op_BitConcatenate.i22.i11.i11(i11, i11) nounwind readnone {
entry:
  %empty = zext i11 %0 to i22                     ; [#uses=1 type=i22]
  %empty_27 = zext i11 %1 to i22                  ; [#uses=1 type=i22]
  %empty_28 = shl i22 %empty, 11                  ; [#uses=1 type=i22]
  %empty_29 = or i22 %empty_28, %empty_27         ; [#uses=1 type=i22]
  ret i22 %empty_29
}

; [#uses=1]
define weak i18 @_ssdm_op_BitConcatenate.i18.i11.i7(i11, i7) nounwind readnone {
entry:
  %empty = zext i11 %0 to i18                     ; [#uses=1 type=i18]
  %empty_30 = zext i7 %1 to i18                   ; [#uses=1 type=i18]
  %empty_31 = shl i18 %empty, 7                   ; [#uses=1 type=i18]
  %empty_32 = or i18 %empty_31, %empty_30         ; [#uses=1 type=i18]
  ret i18 %empty_32
}

; [#uses=1]
define weak i13 @_ssdm_op_BitConcatenate.i13.i2.i11(i2, i11) nounwind readnone {
entry:
  %empty = zext i2 %0 to i13                      ; [#uses=1 type=i13]
  %empty_33 = zext i11 %1 to i13                  ; [#uses=1 type=i13]
  %empty_34 = shl i13 %empty, 11                  ; [#uses=1 type=i13]
  %empty_35 = or i13 %empty_34, %empty_33         ; [#uses=1 type=i13]
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
!22 = metadata !{i32 786689, metadata !23, metadata !"out_pix", null, i32 71, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!23 = metadata !{i32 786478, i32 0, metadata !24, metadata !"sobel_filter", metadata !"sobel_filter", metadata !"_Z12sobel_filterPhPj", metadata !24, i32 71, metadata !25, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !32, i32 72} ; [ DW_TAG_subprogram ]
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
!37 = metadata !{i32 71, i32 60, metadata !23, null}
!38 = metadata !{i32 786689, metadata !23, metadata !"inter_pix", null, i32 71, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!39 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !28, metadata !35, i32 0, i32 0} ; [ DW_TAG_array_type ]
!40 = metadata !{i32 71, i32 27, metadata !23, null}
!41 = metadata !{i32 786689, metadata !42, metadata !"image", null, i32 16, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!42 = metadata !{i32 786478, i32 0, metadata !24, metadata !"sobel_operator", metadata !"sobel_operator", metadata !"_Z14sobel_operatoriPh", metadata !24, i32 16, metadata !43, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !32, i32 17} ; [ DW_TAG_subprogram ]
!43 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !44, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!44 = metadata !{metadata !28, metadata !45, metadata !27}
!45 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !46} ; [ DW_TAG_const_type ]
!46 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!47 = metadata !{i32 16, i32 55, metadata !42, metadata !48}
!48 = metadata !{i32 100, i32 25, metadata !49, null}
!49 = metadata !{i32 786443, metadata !50, i32 98, i32 61, metadata !24, i32 17} ; [ DW_TAG_lexical_block ]
!50 = metadata !{i32 786443, metadata !51, i32 98, i32 17, metadata !24, i32 16} ; [ DW_TAG_lexical_block ]
!51 = metadata !{i32 786443, metadata !52, i32 97, i32 61, metadata !24, i32 15} ; [ DW_TAG_lexical_block ]
!52 = metadata !{i32 786443, metadata !53, i32 97, i32 17, metadata !24, i32 14} ; [ DW_TAG_lexical_block ]
!53 = metadata !{i32 786443, metadata !23, i32 72, i32 1, metadata !24, i32 5} ; [ DW_TAG_lexical_block ]
!54 = metadata !{metadata !55}
!55 = metadata !{i32 0, i32 31, metadata !56}
!56 = metadata !{metadata !57}
!57 = metadata !{metadata !"out_pix", metadata !58, metadata !"unsigned int", i32 0, i32 31}
!58 = metadata !{metadata !59}
!59 = metadata !{i32 0, i32 2073599, i32 1}
!60 = metadata !{metadata !61}
!61 = metadata !{i32 0, i32 7, metadata !62}
!62 = metadata !{metadata !63}
!63 = metadata !{metadata !"inter_pix", metadata !58, metadata !"unsigned char", i32 0, i32 7}
!64 = metadata !{i32 82, i32 1, metadata !53, null}
!65 = metadata !{i32 88, i32 3, metadata !66, null}
!66 = metadata !{i32 786443, metadata !67, i32 88, i32 3, metadata !24, i32 7} ; [ DW_TAG_lexical_block ]
!67 = metadata !{i32 786443, metadata !53, i32 87, i32 17, metadata !24, i32 6} ; [ DW_TAG_lexical_block ]
!68 = metadata !{i32 87, i32 40, metadata !67, null}
!69 = metadata !{i32 87, i32 52, metadata !67, null}
!70 = metadata !{i32 90, i32 3, metadata !71, null}
!71 = metadata !{i32 786443, metadata !72, i32 90, i32 3, metadata !24, i32 9} ; [ DW_TAG_lexical_block ]
!72 = metadata !{i32 786443, metadata !53, i32 89, i32 16, metadata !24, i32 8} ; [ DW_TAG_lexical_block ]
!73 = metadata !{i32 89, i32 58, metadata !72, null}
!74 = metadata !{i32 786688, metadata !67, metadata !"i", metadata !24, i32 87, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!75 = metadata !{i32 91, i32 41, metadata !76, null}
!76 = metadata !{i32 786443, metadata !53, i32 91, i32 18, metadata !24, i32 10} ; [ DW_TAG_lexical_block ]
!77 = metadata !{i32 89, i32 79, metadata !72, null}
!78 = metadata !{i32 786688, metadata !72, metadata !"i", metadata !24, i32 89, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!79 = metadata !{i32 93, i32 47, metadata !80, null}
!80 = metadata !{i32 786443, metadata !53, i32 93, i32 17, metadata !24, i32 12} ; [ DW_TAG_lexical_block ]
!81 = metadata !{i32 92, i32 3, metadata !82, null}
!82 = metadata !{i32 786443, metadata !76, i32 92, i32 3, metadata !24, i32 11} ; [ DW_TAG_lexical_block ]
!83 = metadata !{i32 91, i32 62, metadata !76, null}
!84 = metadata !{i32 786688, metadata !76, metadata !"i", metadata !24, i32 91, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!85 = metadata !{i32 97, i32 40, metadata !52, null}
!86 = metadata !{i32 94, i32 3, metadata !87, null}
!87 = metadata !{i32 786443, metadata !80, i32 94, i32 3, metadata !24, i32 13} ; [ DW_TAG_lexical_block ]
!88 = metadata !{i32 93, i32 68, metadata !80, null}
!89 = metadata !{i32 786688, metadata !80, metadata !"i", metadata !24, i32 93, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!90 = metadata !{i32 790529, metadata !91, metadata !"fourWide", null, i32 106, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!91 = metadata !{i32 786688, metadata !92, metadata !"fourWide", metadata !24, i32 106, metadata !94, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!92 = metadata !{i32 786443, metadata !93, i32 104, i32 44, metadata !24, i32 19} ; [ DW_TAG_lexical_block ]
!93 = metadata !{i32 786443, metadata !53, i32 104, i32 6, metadata !24, i32 18} ; [ DW_TAG_lexical_block ]
!94 = metadata !{i32 786454, null, metadata !"OneToFourPixels", metadata !24, i32 9, i64 0, i64 0, i64 0, i32 0, metadata !95} ; [ DW_TAG_typedef ]
!95 = metadata !{i32 786455, null, metadata !"", metadata !24, i32 6, i64 32, i64 32, i64 0, i32 0, null, metadata !96, i32 0, null} ; [ DW_TAG_union_type ]
!96 = metadata !{metadata !97, metadata !101, metadata !102}
!97 = metadata !{i32 786445, metadata !95, metadata !"pix", metadata !24, i32 7, i64 32, i64 8, i64 0, i32 0, metadata !98} ; [ DW_TAG_member ]
!98 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 32, i64 8, i32 0, i32 0, metadata !28, metadata !99, i32 0, i32 0} ; [ DW_TAG_array_type ]
!99 = metadata !{metadata !100}
!100 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ]
!101 = metadata !{i32 786445, metadata !95, metadata !"full", metadata !24, i32 8, i64 32, i64 32, i64 0, i32 0, metadata !31} ; [ DW_TAG_member ]
!102 = metadata !{i32 786478, i32 0, metadata !95, metadata !"", metadata !"", metadata !"", metadata !24, i32 6, metadata !103, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !32, i32 6} ; [ DW_TAG_subprogram ]
!103 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !104, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!104 = metadata !{null, metadata !105}
!105 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !95} ; [ DW_TAG_pointer_type ]
!106 = metadata !{i32 105, i32 27, metadata !92, null}
!107 = metadata !{i32 109, i32 3, metadata !92, null}
!108 = metadata !{i32 104, i32 20, metadata !93, null}
!109 = metadata !{i32 97, i32 62, metadata !51, null}
!110 = metadata !{i32 99, i32 32, metadata !49, null}
!111 = metadata !{i32 98, i32 40, metadata !50, null}
!112 = metadata !{i32 98, i32 62, metadata !49, null}
!113 = metadata !{i32 786688, metadata !49, metadata !"fullIndex", metadata !24, i32 99, metadata !46, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!114 = metadata !{i32 786689, metadata !42, metadata !"fullIndex", metadata !24, i32 16777232, metadata !45, i32 0, metadata !48} ; [ DW_TAG_arg_variable ]
!115 = metadata !{i32 16, i32 34, metadata !42, metadata !48}
!116 = metadata !{i32 47, i32 16, metadata !117, metadata !48}
!117 = metadata !{i32 786443, metadata !118, i32 47, i32 2, metadata !24, i32 1} ; [ DW_TAG_lexical_block ]
!118 = metadata !{i32 786443, metadata !42, i32 17, i32 1, metadata !24, i32 0} ; [ DW_TAG_lexical_block ]
!119 = metadata !{i32 47, i32 25, metadata !117, metadata !48}
!120 = metadata !{i32 786688, metadata !117, metadata !"i", metadata !24, i32 47, metadata !46, i32 0, metadata !48} ; [ DW_TAG_auto_variable ]
!121 = metadata !{i32 50, i32 26, metadata !122, metadata !48}
!122 = metadata !{i32 786443, metadata !123, i32 48, i32 31, metadata !24, i32 4} ; [ DW_TAG_lexical_block ]
!123 = metadata !{i32 786443, metadata !124, i32 48, i32 3, metadata !24, i32 3} ; [ DW_TAG_lexical_block ]
!124 = metadata !{i32 786443, metadata !117, i32 47, i32 30, metadata !24, i32 2} ; [ DW_TAG_lexical_block ]
!125 = metadata !{i32 48, i32 17, metadata !123, metadata !48}
!126 = metadata !{i32 48, i32 26, metadata !123, metadata !48}
!127 = metadata !{i32 53, i32 26, metadata !122, metadata !48}
!128 = metadata !{i32 786688, metadata !118, metadata !"x_weight", metadata !24, i32 32, metadata !46, i32 0, metadata !48} ; [ DW_TAG_auto_variable ]
!129 = metadata !{i32 786688, metadata !118, metadata !"y_weight", metadata !24, i32 33, metadata !46, i32 0, metadata !48} ; [ DW_TAG_auto_variable ]
!130 = metadata !{i32 786688, metadata !123, metadata !"j", metadata !24, i32 48, metadata !46, i32 0, metadata !48} ; [ DW_TAG_auto_variable ]
!131 = metadata !{i32 57, i32 2, metadata !118, metadata !48}
!132 = metadata !{i32 59, i32 2, metadata !118, metadata !48}
!133 = metadata !{i32 786688, metadata !118, metadata !"edge_val", metadata !24, i32 36, metadata !28, i32 0, metadata !48} ; [ DW_TAG_auto_variable ]
!134 = metadata !{i32 62, i32 2, metadata !118, metadata !48}
!135 = metadata !{i32 64, i32 7, metadata !118, metadata !48}
!136 = metadata !{i32 101, i32 3, metadata !49, null}
!137 = metadata !{i32 98, i32 56, metadata !50, null}
!138 = metadata !{i32 786688, metadata !50, metadata !"j", metadata !24, i32 98, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!139 = metadata !{i32 102, i32 2, metadata !51, null}
!140 = metadata !{i32 97, i32 56, metadata !52, null}
!141 = metadata !{i32 786688, metadata !52, metadata !"i", metadata !24, i32 97, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!142 = metadata !{i32 104, i32 39, metadata !93, null}
!143 = metadata !{i32 104, i32 45, metadata !92, null}
!144 = metadata !{i32 786688, metadata !92, metadata !"val", metadata !24, i32 105, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!145 = metadata !{i32 107, i32 23, metadata !146, null}
!146 = metadata !{i32 786443, metadata !92, i32 107, i32 9, metadata !24, i32 20} ; [ DW_TAG_lexical_block ]
!147 = metadata !{i32 107, i32 32, metadata !146, null}
!148 = metadata !{i32 108, i32 4, metadata !149, null}
!149 = metadata !{i32 786443, metadata !146, i32 108, i32 4, metadata !24, i32 21} ; [ DW_TAG_lexical_block ]
!150 = metadata !{i32 106, i32 19, metadata !92, null}
!151 = metadata !{i32 786688, metadata !146, metadata !"j", metadata !24, i32 107, metadata !46, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!152 = metadata !{i32 110, i32 2, metadata !92, null}
!153 = metadata !{i32 786688, metadata !93, metadata !"i", metadata !24, i32 104, metadata !46, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!154 = metadata !{i32 111, i32 1, metadata !53, null}
!155 = metadata !{i32 786689, metadata !156, metadata !"yDiff", metadata !24, i32 50331659, metadata !46, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!156 = metadata !{i32 786478, i32 0, metadata !24, metadata !"getVal", metadata !"getVal", metadata !"_ZL6getValiiiiPh", metadata !24, i32 11, metadata !157, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !32, i32 12} ; [ DW_TAG_subprogram ]
!157 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !158, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!158 = metadata !{metadata !28, metadata !46, metadata !46, metadata !46, metadata !46, metadata !27}
!159 = metadata !{i32 11, i32 56, metadata !156, null}
!160 = metadata !{i32 786689, metadata !156, metadata !"xDiff", metadata !24, i32 33554443, metadata !46, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!161 = metadata !{i32 11, i32 45, metadata !156, null}
!162 = metadata !{i32 786689, metadata !156, metadata !"index", metadata !24, i32 16777227, metadata !46, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!163 = metadata !{i32 11, i32 34, metadata !156, null}
!164 = metadata !{i32 786689, metadata !156, metadata !"Y", null, i32 11, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!165 = metadata !{i32 11, i32 88, metadata !156, null}
!166 = metadata !{i32 13, i32 2, metadata !167, null}
!167 = metadata !{i32 786443, metadata !156, i32 12, i32 1, metadata !24, i32 22} ; [ DW_TAG_lexical_block ]
