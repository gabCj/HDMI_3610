; ModuleID = 'X:/Bureau/HDMI_3610/3610_4/1490679_1771119/sobellab4/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@y_op = internal unnamed_addr constant [3 x [3 x i8]] [[3 x i8] c"\01\02\01", [3 x i8] zeroinitializer, [3 x i8] c"\FF\FE\FF"], align 1 ; [#uses=1 type=[3 x [3 x i8]]*]
@x_op = internal unnamed_addr constant [3 x [3 x i8]] [[3 x i8] c"\FF\00\01", [3 x i8] c"\FE\00\02", [3 x i8] c"\FF\00\01"], align 1 ; [#uses=1 type=[3 x [3 x i8]]*]
@sobel_filter.str = internal unnamed_addr constant [13 x i8] c"sobel_filter\00" ; [#uses=1 type=[13 x i8]*]
@.str9 = private unnamed_addr constant [14 x i8] c"ZerosLastLine\00", align 1 ; [#uses=1 type=[14 x i8]*]
@.str8 = private unnamed_addr constant [15 x i8] c"ZerosFirstLine\00", align 1 ; [#uses=1 type=[15 x i8]*]
@.str7 = private unnamed_addr constant [13 x i8] c"ZerosLastRow\00", align 1 ; [#uses=1 type=[13 x i8]*]
@.str6 = private unnamed_addr constant [14 x i8] c"ZerosFirstRow\00", align 1 ; [#uses=1 type=[14 x i8]*]
@.str5 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]
@.str4 = private unnamed_addr constant [6 x i8] c"gmem1\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str3 = private unnamed_addr constant [6 x i8] c"slave\00", align 1 ; [#uses=3 type=[6 x i8]*]
@.str2 = private unnamed_addr constant [6 x i8] c"gmem0\00", align 1 ; [#uses=2 type=[6 x i8]*]
@.str13 = private unnamed_addr constant [7 x i8] c"OneTo4\00", align 1 ; [#uses=1 type=[7 x i8]*]
@.str12 = private unnamed_addr constant [4 x i8] c"IMG\00", align 1 ; [#uses=3 type=[4 x i8]*]
@.str11 = private unnamed_addr constant [13 x i8] c"OperatorRows\00", align 1 ; [#uses=3 type=[13 x i8]*]
@.str10 = private unnamed_addr constant [14 x i8] c"OperatorLines\00", align 1 ; [#uses=3 type=[14 x i8]*]
@.str1 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1 ; [#uses=3 type=[6 x i8]*]
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=18 type=[1 x i8]*]

; [#uses=0]
define void @sobel_filter([2073600 x i8]* %inter_pix, [2073600 x i32]* %out_pix) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([2073600 x i8]* %inter_pix) nounwind, !map !39
  call void (...)* @_ssdm_op_SpecBitsMap([2073600 x i32]* %out_pix) nounwind, !map !45
  call void (...)* @_ssdm_op_SpecTopModule([13 x i8]* @sobel_filter.str) nounwind
  %fourWide = alloca i32, align 4                 ; [#uses=2 type=i32*]
  call void @llvm.dbg.value(metadata !{[2073600 x i8]* %inter_pix}, i64 0, metadata !49), !dbg !58 ; [debug line = 71:27] [debug variable = inter_pix]
  call void @llvm.dbg.value(metadata !{[2073600 x i32]* %out_pix}, i64 0, metadata !59), !dbg !61 ; [debug line = 71:60] [debug variable = out_pix]
  call void (...)* @_ssdm_op_SpecInterface([2073600 x i8]* %inter_pix, [6 x i8]* @.str1, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [6 x i8]* @.str2, [6 x i8]* @.str3, [1 x i8]* @.str, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str) nounwind
  call void (...)* @_ssdm_op_SpecInterface([2073600 x i32]* %out_pix, [6 x i8]* @.str1, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [6 x i8]* @.str4, [6 x i8]* @.str3, [1 x i8]* @.str, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @.str5, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str) nounwind, !dbg !62 ; [debug line = 82:1]
  %tmp.25 = zext i11 0 to i64, !dbg !64           ; [#uses=1 type=i64] [debug line = 88:3]
  br label %1, !dbg !67                           ; [debug line = 87:40]

; <label>:1                                       ; preds = %3, %0
  %i = phi i11 [ 0, %0 ], [ %i.1, %3 ]            ; [#uses=3 type=i11]
  %tmp = icmp eq i11 %i, -128, !dbg !67           ; [#uses=1 type=i1] [debug line = 87:40]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1920, i64 1920, i64 1920) nounwind ; [#uses=0 type=i32]
  br i1 %tmp, label %.preheader8.preheader, label %3, !dbg !67 ; [debug line = 87:40]

.preheader8.preheader:                            ; preds = %1
  %tmp.27 = zext i21 -25472 to i64, !dbg !68      ; [#uses=1 type=i64] [debug line = 90:3]
  br label %.preheader8, !dbg !71                 ; [debug line = 89:58]

; <label>:3                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @.str6) nounwind, !dbg !64 ; [debug line = 88:3]
  %tmp.1 = zext i11 %i to i64, !dbg !64           ; [#uses=1 type=i64] [debug line = 88:3]
  %out_pix.addr = getelementptr [2073600 x i32]* %out_pix, i64 0, i64 %tmp.1, !dbg !64 ; [#uses=1 type=i32*] [debug line = 88:3]
  %out_pix.addr.6 = getelementptr [2073600 x i32]* %out_pix, i64 0, i64 %tmp.25, !dbg !64 ; [#uses=1 type=i32*] [debug line = 88:3]
  %tmp.30 = zext i11 -128 to i32                  ; [#uses=1 type=i32]
  %4 = call i32 (...)* @_ssdm_op_SpecBurst(i32* %out_pix.addr.6, i32 0, i32 %tmp.30, i32 1) ; [#uses=0 type=i32]
  store i32 0, i32* %out_pix.addr, align 4, !dbg !64 ; [debug line = 88:3]
  %i.1 = add i11 %i, 1, !dbg !72                  ; [#uses=1 type=i11] [debug line = 87:52]
  call void @llvm.dbg.value(metadata !{i11 %i.1}, i64 0, metadata !73), !dbg !72 ; [debug line = 87:52] [debug variable = i]
  br label %1, !dbg !72                           ; [debug line = 87:52]

.preheader8:                                      ; preds = %6, %.preheader8.preheader
  %i1 = phi i21 [ %i.2, %6 ], [ -25472, %.preheader8.preheader ] ; [#uses=3 type=i21]
  %exitcond4 = icmp eq i21 %i1, -23552, !dbg !71  ; [#uses=1 type=i1] [debug line = 89:58]
  %5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1920, i64 1920, i64 1920) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond4, label %.preheader7.preheader, label %6, !dbg !71 ; [debug line = 89:58]

.preheader7.preheader:                            ; preds = %.preheader8
  br label %.preheader7, !dbg !74                 ; [debug line = 91:41]

; <label>:6                                       ; preds = %.preheader8
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @.str7) nounwind, !dbg !68 ; [debug line = 90:3]
  %tmp.3 = zext i21 %i1 to i64, !dbg !68          ; [#uses=1 type=i64] [debug line = 90:3]
  %out_pix.addr.1 = getelementptr [2073600 x i32]* %out_pix, i64 0, i64 %tmp.3, !dbg !68 ; [#uses=1 type=i32*] [debug line = 90:3]
  %out_pix.addr.7 = getelementptr [2073600 x i32]* %out_pix, i64 0, i64 %tmp.27, !dbg !68 ; [#uses=1 type=i32*] [debug line = 90:3]
  %tmp.31 = zext i21 1920 to i32                  ; [#uses=1 type=i32]
  %7 = call i32 (...)* @_ssdm_op_SpecBurst(i32* %out_pix.addr.7, i32 0, i32 %tmp.31, i32 1) ; [#uses=0 type=i32]
  store i32 0, i32* %out_pix.addr.1, align 4, !dbg !68 ; [debug line = 90:3]
  %i.2 = add i21 %i1, 1, !dbg !76                 ; [#uses=1 type=i21] [debug line = 89:79]
  call void @llvm.dbg.value(metadata !{i21 %i.2}, i64 0, metadata !77), !dbg !76 ; [debug line = 89:79] [debug variable = i]
  br label %.preheader8, !dbg !76                 ; [debug line = 89:79]

.preheader7:                                      ; preds = %9, %.preheader7.preheader
  %i2 = phi i21 [ %i.3, %9 ], [ 0, %.preheader7.preheader ] ; [#uses=3 type=i21]
  %tmp.5 = icmp ult i21 %i2, -23552, !dbg !74     ; [#uses=1 type=i1] [debug line = 91:41]
  %8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1080, i64 1080, i64 1080) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.5, label %9, label %.preheader6.preheader, !dbg !74 ; [debug line = 91:41]

.preheader6.preheader:                            ; preds = %.preheader7
  br label %.preheader6, !dbg !78                 ; [debug line = 93:47]

; <label>:9                                       ; preds = %.preheader7
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @.str8) nounwind, !dbg !80 ; [debug line = 92:3]
  %tmp.6 = zext i21 %i2 to i64, !dbg !80          ; [#uses=1 type=i64] [debug line = 92:3]
  %out_pix.addr.2 = getelementptr [2073600 x i32]* %out_pix, i64 0, i64 %tmp.6, !dbg !80 ; [#uses=1 type=i32*] [debug line = 92:3]
  store i32 0, i32* %out_pix.addr.2, align 4, !dbg !80 ; [debug line = 92:3]
  %i.3 = add i21 %i2, 1920, !dbg !82              ; [#uses=1 type=i21] [debug line = 91:62]
  call void @llvm.dbg.value(metadata !{i21 %i.3}, i64 0, metadata !83), !dbg !82 ; [debug line = 91:62] [debug variable = i]
  br label %.preheader7, !dbg !82                 ; [debug line = 91:62]

.preheader6:                                      ; preds = %11, %.preheader6.preheader
  %i3 = phi i21 [ %i.4, %11 ], [ 1919, %.preheader6.preheader ] ; [#uses=3 type=i21]
  %tmp.8 = icmp ult i21 %i3, -23552, !dbg !78     ; [#uses=1 type=i1] [debug line = 93:47]
  %10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1080, i64 1080, i64 1080) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.8, label %11, label %.preheader5.preheader, !dbg !78 ; [debug line = 93:47]

.preheader5.preheader:                            ; preds = %.preheader6
  br label %.preheader5, !dbg !84                 ; [debug line = 97:40]

; <label>:11                                      ; preds = %.preheader6
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @.str9) nounwind, !dbg !86 ; [debug line = 94:3]
  %tmp.9 = zext i21 %i3 to i64, !dbg !86          ; [#uses=1 type=i64] [debug line = 94:3]
  %out_pix.addr.3 = getelementptr [2073600 x i32]* %out_pix, i64 0, i64 %tmp.9, !dbg !86 ; [#uses=1 type=i32*] [debug line = 94:3]
  store i32 0, i32* %out_pix.addr.3, align 4, !dbg !86 ; [debug line = 94:3]
  %i.4 = add i21 %i3, 1920, !dbg !88              ; [#uses=1 type=i21] [debug line = 93:68]
  call void @llvm.dbg.value(metadata !{i21 %i.4}, i64 0, metadata !89), !dbg !88 ; [debug line = 93:68] [debug variable = i]
  br label %.preheader6, !dbg !88                 ; [debug line = 93:68]

.preheader5:                                      ; preds = %23, %.preheader5.preheader
  %i4 = phi i11 [ %i.5, %23 ], [ 1, %.preheader5.preheader ] ; [#uses=4 type=i11]
  %i4.cast7 = zext i11 %i4 to i18, !dbg !84       ; [#uses=1 type=i18] [debug line = 97:40]
  %i4.cast6 = zext i11 %i4 to i22, !dbg !84       ; [#uses=1 type=i22] [debug line = 97:40]
  %exitcond3 = icmp eq i11 %i4, -969, !dbg !84    ; [#uses=1 type=i1] [debug line = 97:40]
  %12 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1078, i64 1078, i64 1078) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond3, label %.preheader.preheader, label %13, !dbg !84 ; [debug line = 97:40]

.preheader.preheader:                             ; preds = %.preheader5
  %tmp. = bitcast i32* %fourWide to [4 x i8]*, !dbg !90 ; [#uses=1 type=[4 x i8]*] [debug line = 108:4]
  br label %.preheader, !dbg !95                  ; [debug line = 104:20]

; <label>:13                                      ; preds = %.preheader5
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @.str10) nounwind, !dbg !96 ; [debug line = 97:62]
  %tmp.11 = call i32 (...)* @_ssdm_op_SpecRegionBegin([14 x i8]* @.str10) nounwind, !dbg !96 ; [#uses=1 type=i32] [debug line = 97:62]
  %_shl = shl nuw i22 %i4.cast6, 11, !dbg !98     ; [#uses=1 type=i22] [debug line = 99:32]
  %_shl.cast = zext i22 %_shl to i23, !dbg !98    ; [#uses=1 type=i23] [debug line = 99:32]
  %_shl1 = shl nuw i18 %i4.cast7, 7, !dbg !98     ; [#uses=1 type=i18] [debug line = 99:32]
  %_shl1.cast = zext i18 %_shl1 to i23, !dbg !98  ; [#uses=1 type=i23] [debug line = 99:32]
  %tmp.2 = sub i23 %_shl.cast, %_shl1.cast, !dbg !98 ; [#uses=1 type=i23] [debug line = 99:32]
  br label %14, !dbg !101                         ; [debug line = 98:40]

; <label>:14                                      ; preds = %_ifconv, %13
  %j = phi i11 [ 1, %13 ], [ %j.2, %_ifconv ]     ; [#uses=3 type=i11]
  %j.cast5 = zext i11 %j to i23, !dbg !101        ; [#uses=1 type=i23] [debug line = 98:40]
  %exitcond2 = icmp eq i11 %j, -129, !dbg !101    ; [#uses=1 type=i1] [debug line = 98:40]
  %15 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1918, i64 1918, i64 1918) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond2, label %23, label %16, !dbg !101 ; [debug line = 98:40]

; <label>:16                                      ; preds = %14
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @.str11) nounwind, !dbg !102 ; [debug line = 98:62]
  %tmp.14 = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @.str11) nounwind, !dbg !102 ; [#uses=1 type=i32] [debug line = 98:62]
  %fullIndex = add i23 %tmp.2, %j.cast5, !dbg !98 ; [#uses=3 type=i23] [debug line = 99:32]
  %fullIndex.cast = sext i23 %fullIndex to i32, !dbg !98 ; [#uses=1 type=i32] [debug line = 99:32]
  call void @llvm.dbg.value(metadata !{i23 %fullIndex}, i64 0, metadata !103), !dbg !98 ; [debug line = 99:32] [debug variable = fullIndex]
  call void @llvm.dbg.value(metadata !{i23 %fullIndex}, i64 0, metadata !104) nounwind, !dbg !106 ; [debug line = 16:34@100:25] [debug variable = fullIndex]
  call void @llvm.dbg.value(metadata !{[2073600 x i8]* %inter_pix}, i64 0, metadata !107), !dbg !108 ; [debug line = 16:55@100:25] [debug variable = image]
  br label %17, !dbg !109                         ; [debug line = 47:16@100:25]

; <label>:17                                      ; preds = %21, %16
  %y_weight.0.i = phi i32 [ 0, %16 ], [ %y_weight.1.i.lcssa, %21 ] ; [#uses=2 type=i32]
  %x_weight.0.i = phi i32 [ 0, %16 ], [ %x_weight.1.i.lcssa, %21 ] ; [#uses=2 type=i32]
  %i.0.i = phi i2 [ 0, %16 ], [ %i.7, %21 ]       ; [#uses=4 type=i2]
  %exitcond1.i = icmp eq i2 %i.0.i, -1, !dbg !109 ; [#uses=1 type=i1] [debug line = 47:16@100:25]
  %18 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond1.i, label %_ifconv, label %.preheader.preheader.i, !dbg !109 ; [debug line = 47:16@100:25]

.preheader.preheader.i:                           ; preds = %17
  %tmp.18 = add i2 %i.0.i, -1, !dbg !112          ; [#uses=2 type=i2] [debug line = 50:26@100:25]
  %tmp.19 = zext i2 %i.0.i to i64, !dbg !112      ; [#uses=2 type=i64] [debug line = 50:26@100:25]
  br label %.preheader.i, !dbg !116               ; [debug line = 48:17@100:25]

.preheader.i:                                     ; preds = %20, %.preheader.preheader.i
  %y_weight.1.i = phi i32 [ %y_weight, %20 ], [ %y_weight.0.i, %.preheader.preheader.i ] ; [#uses=2 type=i32]
  %x_weight.1.i = phi i32 [ %x_weight, %20 ], [ %x_weight.0.i, %.preheader.preheader.i ] ; [#uses=2 type=i32]
  %j.0.i = phi i2 [ %j.3, %20 ], [ 0, %.preheader.preheader.i ] ; [#uses=4 type=i2]
  %exitcond.i = icmp eq i2 %j.0.i, -1, !dbg !116  ; [#uses=1 type=i1] [debug line = 48:17@100:25]
  %19 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond.i, label %21, label %20, !dbg !116 ; [debug line = 48:17@100:25]

; <label>:20                                      ; preds = %.preheader.i
  %tmp.23 = add i2 %j.0.i, -1, !dbg !112          ; [#uses=2 type=i2] [debug line = 50:26@100:25]
  %tmp.36 = call fastcc zeroext i8 @getVal(i23 %fullIndex, i2 %tmp.18, i2 %tmp.23, [2073600 x i8]* %inter_pix) nounwind, !dbg !112 ; [#uses=1 type=i8] [debug line = 50:26@100:25]
  %tmp.25.cast = zext i8 %tmp.36 to i16, !dbg !112 ; [#uses=1 type=i16] [debug line = 50:26@100:25]
  %tmp.26 = zext i2 %j.0.i to i64, !dbg !112      ; [#uses=2 type=i64] [debug line = 50:26@100:25]
  %x_op.addr = getelementptr inbounds [3 x [3 x i8]]* @x_op, i64 0, i64 %tmp.19, i64 %tmp.26, !dbg !112 ; [#uses=1 type=i8*] [debug line = 50:26@100:25]
  %x_op.load = load i8* %x_op.addr, align 1, !dbg !112 ; [#uses=1 type=i8] [debug line = 50:26@100:25]
  %tmp.27.cast = sext i8 %x_op.load to i16, !dbg !112 ; [#uses=1 type=i16] [debug line = 50:26@100:25]
  %tmp.28 = mul i16 %tmp.27.cast, %tmp.25.cast, !dbg !112 ; [#uses=1 type=i16] [debug line = 50:26@100:25]
  %tmp.28.cast = sext i16 %tmp.28 to i32, !dbg !112 ; [#uses=1 type=i32] [debug line = 50:26@100:25]
  %x_weight = add nsw i32 %x_weight.1.i, %tmp.28.cast, !dbg !112 ; [#uses=1 type=i32] [debug line = 50:26@100:25]
  call void @llvm.dbg.value(metadata !{i32 %x_weight}, i64 0, metadata !117) nounwind, !dbg !112 ; [debug line = 50:26@100:25] [debug variable = x_weight]
  %tmp.37 = call fastcc zeroext i8 @getVal(i23 %fullIndex, i2 %tmp.18, i2 %tmp.23, [2073600 x i8]* %inter_pix) nounwind, !dbg !118 ; [#uses=1 type=i8] [debug line = 53:26@100:25]
  %tmp.30.cast = zext i8 %tmp.37 to i16, !dbg !118 ; [#uses=1 type=i16] [debug line = 53:26@100:25]
  %y_op.addr = getelementptr inbounds [3 x [3 x i8]]* @y_op, i64 0, i64 %tmp.19, i64 %tmp.26, !dbg !118 ; [#uses=1 type=i8*] [debug line = 53:26@100:25]
  %y_op.load = load i8* %y_op.addr, align 1, !dbg !118 ; [#uses=1 type=i8] [debug line = 53:26@100:25]
  %tmp.31.cast = sext i8 %y_op.load to i16, !dbg !118 ; [#uses=1 type=i16] [debug line = 53:26@100:25]
  %tmp.32 = mul i16 %tmp.31.cast, %tmp.30.cast, !dbg !118 ; [#uses=1 type=i16] [debug line = 53:26@100:25]
  %tmp.32.cast = sext i16 %tmp.32 to i32, !dbg !118 ; [#uses=1 type=i32] [debug line = 53:26@100:25]
  %y_weight = add nsw i32 %y_weight.1.i, %tmp.32.cast, !dbg !118 ; [#uses=1 type=i32] [debug line = 53:26@100:25]
  call void @llvm.dbg.value(metadata !{i32 %y_weight}, i64 0, metadata !119) nounwind, !dbg !118 ; [debug line = 53:26@100:25] [debug variable = y_weight]
  %j.3 = add i2 %j.0.i, 1, !dbg !120              ; [#uses=1 type=i2] [debug line = 48:26@100:25]
  call void @llvm.dbg.value(metadata !{i2 %j.3}, i64 0, metadata !121) nounwind, !dbg !120 ; [debug line = 48:26@100:25] [debug variable = j]
  br label %.preheader.i, !dbg !120               ; [debug line = 48:26@100:25]

; <label>:21                                      ; preds = %.preheader.i
  %x_weight.1.i.lcssa = phi i32 [ %x_weight.1.i, %.preheader.i ] ; [#uses=1 type=i32]
  %y_weight.1.i.lcssa = phi i32 [ %y_weight.1.i, %.preheader.i ] ; [#uses=1 type=i32]
  %i.7 = add i2 %i.0.i, 1, !dbg !122              ; [#uses=1 type=i2] [debug line = 47:25@100:25]
  call void @llvm.dbg.value(metadata !{i2 %i.7}, i64 0, metadata !123) nounwind, !dbg !122 ; [debug line = 47:25@100:25] [debug variable = i]
  br label %17, !dbg !122                         ; [debug line = 47:25@100:25]

_ifconv:                                          ; preds = %17
  %x_weight.0.i.lcssa = phi i32 [ %x_weight.0.i, %17 ] ; [#uses=2 type=i32]
  %y_weight.0.i.lcssa = phi i32 [ %y_weight.0.i, %17 ] ; [#uses=2 type=i32]
  %tmp.10 = icmp sgt i32 %x_weight.0.i.lcssa, 0, !dbg !124 ; [#uses=1 type=i1] [debug line = 57:2@100:25]
  %tmp.15 = trunc i32 %x_weight.0.i.lcssa to i8, !dbg !124 ; [#uses=2 type=i8] [debug line = 57:2@100:25]
  %tmp.24 = sub i8 0, %tmp.15, !dbg !124          ; [#uses=1 type=i8] [debug line = 57:2@100:25]
  %tmp.29 = select i1 %tmp.10, i8 %tmp.15, i8 %tmp.24, !dbg !124 ; [#uses=1 type=i8] [debug line = 57:2@100:25]
  %tmp.13 = icmp sgt i32 %y_weight.0.i.lcssa, 0, !dbg !124 ; [#uses=1 type=i1] [debug line = 57:2@100:25]
  %tmp.33 = trunc i32 %y_weight.0.i.lcssa to i8, !dbg !124 ; [#uses=2 type=i8] [debug line = 57:2@100:25]
  %tmp.34 = sub i8 0, %tmp.33, !dbg !124          ; [#uses=1 type=i8] [debug line = 57:2@100:25]
  %tmp.35 = select i1 %tmp.13, i8 %tmp.33, i8 %tmp.34, !dbg !124 ; [#uses=1 type=i8] [debug line = 57:2@100:25]
  %tmp.16 = add i8 %tmp.35, %tmp.29, !dbg !125    ; [#uses=3 type=i8] [debug line = 59:2@100:25]
  %edge_val = xor i8 %tmp.16, -1, !dbg !125       ; [#uses=1 type=i8] [debug line = 59:2@100:25]
  call void @llvm.dbg.value(metadata !{i8 %edge_val}, i64 0, metadata !126) nounwind, !dbg !125 ; [debug line = 59:2@100:25] [debug variable = edge_val]
  %tmp.17 = icmp ult i8 %tmp.16, 55, !dbg !127    ; [#uses=2 type=i1] [debug line = 62:2@100:25]
  %tmp.20 = icmp ugt i8 %tmp.16, -101, !dbg !128  ; [#uses=1 type=i1] [debug line = 64:7@100:25]
  %..i = sext i1 %tmp.17 to i8                    ; [#uses=1 type=i8]
  %tmp.38 = or i1 %tmp.17, %tmp.20                ; [#uses=1 type=i1]
  %edge_val.1.i = select i1 %tmp.38, i8 %..i, i8 %edge_val ; [#uses=1 type=i8]
  %tmp.21 = zext i8 %edge_val.1.i to i32, !dbg !105 ; [#uses=1 type=i32] [debug line = 100:25]
  %tmp.22 = zext i32 %fullIndex.cast to i64, !dbg !105 ; [#uses=1 type=i64] [debug line = 100:25]
  %out_pix.addr.5 = getelementptr [2073600 x i32]* %out_pix, i64 0, i64 %tmp.22, !dbg !105 ; [#uses=1 type=i32*] [debug line = 100:25]
  store i32 %tmp.21, i32* %out_pix.addr.5, align 4, !dbg !105 ; [debug line = 100:25]
  %22 = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @.str11, i32 %tmp.14) nounwind, !dbg !129 ; [#uses=0 type=i32] [debug line = 101:3]
  %j.2 = add i11 %j, 1, !dbg !130                 ; [#uses=1 type=i11] [debug line = 98:56]
  call void @llvm.dbg.value(metadata !{i11 %j.2}, i64 0, metadata !131), !dbg !130 ; [debug line = 98:56] [debug variable = j]
  br label %14, !dbg !130                         ; [debug line = 98:56]

; <label>:23                                      ; preds = %14
  %24 = call i32 (...)* @_ssdm_op_SpecRegionEnd([14 x i8]* @.str10, i32 %tmp.11) nounwind, !dbg !132 ; [#uses=0 type=i32] [debug line = 102:2]
  %i.5 = add i11 %i4, 1, !dbg !133                ; [#uses=1 type=i11] [debug line = 97:56]
  call void @llvm.dbg.value(metadata !{i11 %i.5}, i64 0, metadata !134), !dbg !133 ; [debug line = 97:56] [debug variable = i]
  br label %.preheader5, !dbg !133                ; [debug line = 97:56]

.preheader:                                       ; preds = %30, %.preheader.preheader
  %i5 = phi i21 [ %i.6, %30 ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i21]
  %exitcond1 = icmp eq i21 %i5, -23552, !dbg !95  ; [#uses=1 type=i1] [debug line = 104:20]
  %25 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2073600, i64 2073600, i64 2073600) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond1, label %32, label %26, !dbg !95 ; [debug line = 104:20]

; <label>:26                                      ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([4 x i8]* @.str12) nounwind, !dbg !135 ; [debug line = 104:45]
  %tmp.12 = call i32 (...)* @_ssdm_op_SpecRegionBegin([4 x i8]* @.str12) nounwind, !dbg !135 ; [#uses=1 type=i32] [debug line = 104:45]
  %tmp.4 = zext i21 %i5 to i64, !dbg !136         ; [#uses=1 type=i64] [debug line = 105:27]
  %out_pix.addr.4 = getelementptr [2073600 x i32]* %out_pix, i64 0, i64 %tmp.4, !dbg !136 ; [#uses=2 type=i32*] [debug line = 105:27]
  %out_pix.load = load i32* %out_pix.addr.4, align 4, !dbg !136 ; [#uses=1 type=i32] [debug line = 105:27]
  %val = trunc i32 %out_pix.load to i8, !dbg !136 ; [#uses=1 type=i8] [debug line = 105:27]
  call void @llvm.dbg.value(metadata !{i8 %val}, i64 0, metadata !137), !dbg !136 ; [debug line = 105:27] [debug variable = val]
  call void @llvm.dbg.declare(metadata !{i32* %fourWide}, metadata !138), !dbg !152 ; [debug line = 106:19] [debug variable = fourWide]
  br label %27, !dbg !153                         ; [debug line = 107:23]

; <label>:27                                      ; preds = %29, %26
  %j6 = phi i3 [ 0, %26 ], [ %j.1, %29 ]          ; [#uses=3 type=i3]
  %exitcond = icmp eq i3 %j6, -4, !dbg !153       ; [#uses=1 type=i1] [debug line = 107:23]
  %28 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond, label %30, label %29, !dbg !153 ; [debug line = 107:23]

; <label>:29                                      ; preds = %27
  call void (...)* @_ssdm_op_SpecLoopName([7 x i8]* @.str13) nounwind, !dbg !90 ; [debug line = 108:4]
  %tmp.7 = zext i3 %j6 to i64, !dbg !90           ; [#uses=1 type=i64] [debug line = 108:4]
  %tmp..addr = getelementptr inbounds [4 x i8]* %tmp., i64 0, i64 %tmp.7, !dbg !90 ; [#uses=1 type=i8*] [debug line = 108:4]
  store i8 %val, i8* %tmp..addr, align 1, !dbg !90 ; [debug line = 108:4]
  %j.1 = add i3 %j6, 1, !dbg !154                 ; [#uses=1 type=i3] [debug line = 107:32]
  call void @llvm.dbg.value(metadata !{i3 %j.1}, i64 0, metadata !155), !dbg !154 ; [debug line = 107:32] [debug variable = j]
  br label %27, !dbg !154                         ; [debug line = 107:32]

; <label>:30                                      ; preds = %27
  call void @llvm.dbg.value(metadata !{i32* %fourWide}, i64 0, metadata !138), !dbg !156 ; [debug line = 109:3] [debug variable = fourWide]
  call void @llvm.dbg.value(metadata !{i32* %fourWide}, i64 0, metadata !138), !dbg !156 ; [debug line = 109:3] [debug variable = fourWide]
  %fourWide.load = load i32* %fourWide, align 4, !dbg !156 ; [#uses=1 type=i32] [debug line = 109:3]
  store i32 %fourWide.load, i32* %out_pix.addr.4, align 4, !dbg !156 ; [debug line = 109:3]
  %31 = call i32 (...)* @_ssdm_op_SpecRegionEnd([4 x i8]* @.str12, i32 %tmp.12) nounwind, !dbg !157 ; [#uses=0 type=i32] [debug line = 110:2]
  %i.6 = add i21 %i5, 1, !dbg !158                ; [#uses=1 type=i21] [debug line = 104:39]
  call void @llvm.dbg.value(metadata !{i21 %i.6}, i64 0, metadata !159), !dbg !158 ; [debug line = 104:39] [debug variable = i]
  br label %.preheader, !dbg !158                 ; [debug line = 104:39]

; <label>:32                                      ; preds = %.preheader
  ret void, !dbg !160                             ; [debug line = 111:1]
}

; [#uses=25]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=2]
define internal fastcc zeroext i8 @getVal(i23 %index, i2 %xDiff, i2 %yDiff, [2073600 x i8]* %Y) readonly {
  call void (...)* @_ssdm_op_SpecInterface([2073600 x i8]* %Y, [6 x i8]* @.str1, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [6 x i8]* @.str2, [6 x i8]* @.str3, [1 x i8]* @.str, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str) nounwind
  call void @llvm.dbg.value(metadata !{i23 %index}, i64 0, metadata !161), !dbg !165 ; [debug line = 11:34] [debug variable = index]
  call void @llvm.dbg.value(metadata !{i2 %xDiff}, i64 0, metadata !166), !dbg !167 ; [debug line = 11:45] [debug variable = xDiff]
  call void @llvm.dbg.value(metadata !{i2 %yDiff}, i64 0, metadata !168), !dbg !169 ; [debug line = 11:56] [debug variable = yDiff]
  call void @llvm.dbg.value(metadata !{[2073600 x i8]* %Y}, i64 0, metadata !170), !dbg !171 ; [debug line = 11:88] [debug variable = Y]
  %yDiff.cast = zext i2 %yDiff to i13, !dbg !172  ; [#uses=1 type=i13] [debug line = 13:2]
  %_shl = shl nuw i13 %yDiff.cast, 11, !dbg !172  ; [#uses=1 type=i13] [debug line = 13:2]
  %yDiff.cast5 = zext i2 %yDiff to i9, !dbg !172  ; [#uses=1 type=i9] [debug line = 13:2]
  %_shl2 = shl nuw i9 %yDiff.cast5, 7, !dbg !172  ; [#uses=1 type=i9] [debug line = 13:2]
  %_shl2.cast = sext i9 %_shl2 to i13, !dbg !172  ; [#uses=1 type=i13] [debug line = 13:2]
  %tmp = sub i13 %_shl, %_shl2.cast, !dbg !172    ; [#uses=1 type=i13] [debug line = 13:2]
  %xDiff.cast = sext i2 %xDiff to i13, !dbg !172  ; [#uses=1 type=i13] [debug line = 13:2]
  %tmp1 = add i13 %xDiff.cast, %tmp, !dbg !172    ; [#uses=1 type=i13] [debug line = 13:2]
  %tmp1.cast = sext i13 %tmp1 to i23, !dbg !172   ; [#uses=1 type=i23] [debug line = 13:2]
  %tmp.33 = add i23 %tmp1.cast, %index, !dbg !172 ; [#uses=1 type=i23] [debug line = 13:2]
  %tmp.34 = sext i23 %tmp.33 to i64, !dbg !172    ; [#uses=1 type=i64] [debug line = 13:2]
  %Y.addr = getelementptr [2073600 x i8]* %Y, i64 0, i64 %tmp.34, !dbg !172 ; [#uses=1 type=i8*] [debug line = 13:2]
  %Y.load = load i8* %Y.addr, align 1, !dbg !172  ; [#uses=1 type=i8] [debug line = 13:2]
  ret i8 %Y.load, !dbg !172                       ; [debug line = 13:2]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=3]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=3]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=10]
declare i32 @_ssdm_op_SpecLoopTripCount(...)

; [#uses=8]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=4]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=2]
declare i32 @_ssdm_op_SpecBurst(...)

; [#uses=2]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=0]
declare void @_ssdm_SpecKeepAssert(...)

!opencl.kernels = !{!0, !7, !12}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}
!llvm.dbg.cu = !{!18}

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
!18 = metadata !{i32 786449, i32 0, i32 4, metadata !"X:/Bureau/HDMI_3610/3610_4/1490679_1771119/sobellab4/solution1/.autopilot/db/Sobel.pragma.2.cpp", metadata !"X:\5CBureau\5CHDMI_3610\5C3610_4\5C1490679_1771119", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, null, null, null, metadata !19} ; [ DW_TAG_compile_unit ]
!19 = metadata !{metadata !20}
!20 = metadata !{metadata !21, metadata !38}
!21 = metadata !{i32 786484, i32 0, metadata !22, metadata !"y_op", metadata !"y_op", metadata !"", metadata !23, i32 42, metadata !33, i32 1, i32 1, [3 x [3 x i8]]* @y_op} ; [ DW_TAG_variable ]
!22 = metadata !{i32 786478, i32 0, metadata !23, metadata !"sobel_operator", metadata !"sobel_operator", metadata !"_Z14sobel_operatoriPh", metadata !23, i32 16, metadata !24, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !31, i32 17} ; [ DW_TAG_subprogram ]
!23 = metadata !{i32 786473, metadata !"SobelLab4/Sobel.cpp", metadata !"X:\5CBureau\5CHDMI_3610\5C3610_4\5C1490679_1771119", null} ; [ DW_TAG_file_type ]
!24 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !25, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!25 = metadata !{metadata !26, metadata !28, metadata !30}
!26 = metadata !{i32 786454, null, metadata !"uint8_t", metadata !23, i32 36, i64 0, i64 0, i64 0, i32 0, metadata !27} ; [ DW_TAG_typedef ]
!27 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!28 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_const_type ]
!29 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!30 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !26} ; [ DW_TAG_pointer_type ]
!31 = metadata !{metadata !32}
!32 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!33 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 72, i64 8, i32 0, i32 0, metadata !34, metadata !36, i32 0, i32 0} ; [ DW_TAG_array_type ]
!34 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !35} ; [ DW_TAG_const_type ]
!35 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!36 = metadata !{metadata !37, metadata !37}
!37 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ]
!38 = metadata !{i32 786484, i32 0, metadata !22, metadata !"x_op", metadata !"x_op", metadata !"", metadata !23, i32 38, metadata !33, i32 1, i32 1, [3 x [3 x i8]]* @x_op} ; [ DW_TAG_variable ]
!39 = metadata !{metadata !40}
!40 = metadata !{i32 0, i32 7, metadata !41}
!41 = metadata !{metadata !42}
!42 = metadata !{metadata !"inter_pix", metadata !43, metadata !"unsigned char", i32 0, i32 7}
!43 = metadata !{metadata !44}
!44 = metadata !{i32 0, i32 2073599, i32 1}
!45 = metadata !{metadata !46}
!46 = metadata !{i32 0, i32 31, metadata !47}
!47 = metadata !{metadata !48}
!48 = metadata !{metadata !"out_pix", metadata !43, metadata !"unsigned int", i32 0, i32 31}
!49 = metadata !{i32 786689, metadata !50, metadata !"inter_pix", null, i32 71, metadata !55, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!50 = metadata !{i32 786478, i32 0, metadata !23, metadata !"sobel_filter", metadata !"sobel_filter", metadata !"_Z12sobel_filterPhPj", metadata !23, i32 71, metadata !51, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !31, i32 72} ; [ DW_TAG_subprogram ]
!51 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !52, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!52 = metadata !{null, metadata !30, metadata !53}
!53 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !54} ; [ DW_TAG_pointer_type ]
!54 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!55 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !26, metadata !56, i32 0, i32 0} ; [ DW_TAG_array_type ]
!56 = metadata !{metadata !57}
!57 = metadata !{i32 786465, i64 0, i64 2073599}  ; [ DW_TAG_subrange_type ]
!58 = metadata !{i32 71, i32 27, metadata !50, null}
!59 = metadata !{i32 786689, metadata !50, metadata !"out_pix", null, i32 71, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!60 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 66355200, i64 32, i32 0, i32 0, metadata !54, metadata !56, i32 0, i32 0} ; [ DW_TAG_array_type ]
!61 = metadata !{i32 71, i32 60, metadata !50, null}
!62 = metadata !{i32 82, i32 1, metadata !63, null}
!63 = metadata !{i32 786443, metadata !50, i32 72, i32 1, metadata !23, i32 5} ; [ DW_TAG_lexical_block ]
!64 = metadata !{i32 88, i32 3, metadata !65, null}
!65 = metadata !{i32 786443, metadata !66, i32 88, i32 3, metadata !23, i32 7} ; [ DW_TAG_lexical_block ]
!66 = metadata !{i32 786443, metadata !63, i32 87, i32 17, metadata !23, i32 6} ; [ DW_TAG_lexical_block ]
!67 = metadata !{i32 87, i32 40, metadata !66, null}
!68 = metadata !{i32 90, i32 3, metadata !69, null}
!69 = metadata !{i32 786443, metadata !70, i32 90, i32 3, metadata !23, i32 9} ; [ DW_TAG_lexical_block ]
!70 = metadata !{i32 786443, metadata !63, i32 89, i32 16, metadata !23, i32 8} ; [ DW_TAG_lexical_block ]
!71 = metadata !{i32 89, i32 58, metadata !70, null}
!72 = metadata !{i32 87, i32 52, metadata !66, null}
!73 = metadata !{i32 786688, metadata !66, metadata !"i", metadata !23, i32 87, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!74 = metadata !{i32 91, i32 41, metadata !75, null}
!75 = metadata !{i32 786443, metadata !63, i32 91, i32 18, metadata !23, i32 10} ; [ DW_TAG_lexical_block ]
!76 = metadata !{i32 89, i32 79, metadata !70, null}
!77 = metadata !{i32 786688, metadata !70, metadata !"i", metadata !23, i32 89, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!78 = metadata !{i32 93, i32 47, metadata !79, null}
!79 = metadata !{i32 786443, metadata !63, i32 93, i32 17, metadata !23, i32 12} ; [ DW_TAG_lexical_block ]
!80 = metadata !{i32 92, i32 3, metadata !81, null}
!81 = metadata !{i32 786443, metadata !75, i32 92, i32 3, metadata !23, i32 11} ; [ DW_TAG_lexical_block ]
!82 = metadata !{i32 91, i32 62, metadata !75, null}
!83 = metadata !{i32 786688, metadata !75, metadata !"i", metadata !23, i32 91, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!84 = metadata !{i32 97, i32 40, metadata !85, null}
!85 = metadata !{i32 786443, metadata !63, i32 97, i32 17, metadata !23, i32 14} ; [ DW_TAG_lexical_block ]
!86 = metadata !{i32 94, i32 3, metadata !87, null}
!87 = metadata !{i32 786443, metadata !79, i32 94, i32 3, metadata !23, i32 13} ; [ DW_TAG_lexical_block ]
!88 = metadata !{i32 93, i32 68, metadata !79, null}
!89 = metadata !{i32 786688, metadata !79, metadata !"i", metadata !23, i32 93, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!90 = metadata !{i32 108, i32 4, metadata !91, null}
!91 = metadata !{i32 786443, metadata !92, i32 108, i32 4, metadata !23, i32 21} ; [ DW_TAG_lexical_block ]
!92 = metadata !{i32 786443, metadata !93, i32 107, i32 9, metadata !23, i32 20} ; [ DW_TAG_lexical_block ]
!93 = metadata !{i32 786443, metadata !94, i32 104, i32 44, metadata !23, i32 19} ; [ DW_TAG_lexical_block ]
!94 = metadata !{i32 786443, metadata !63, i32 104, i32 6, metadata !23, i32 18} ; [ DW_TAG_lexical_block ]
!95 = metadata !{i32 104, i32 20, metadata !94, null}
!96 = metadata !{i32 97, i32 62, metadata !97, null}
!97 = metadata !{i32 786443, metadata !85, i32 97, i32 61, metadata !23, i32 15} ; [ DW_TAG_lexical_block ]
!98 = metadata !{i32 99, i32 32, metadata !99, null}
!99 = metadata !{i32 786443, metadata !100, i32 98, i32 61, metadata !23, i32 17} ; [ DW_TAG_lexical_block ]
!100 = metadata !{i32 786443, metadata !97, i32 98, i32 17, metadata !23, i32 16} ; [ DW_TAG_lexical_block ]
!101 = metadata !{i32 98, i32 40, metadata !100, null}
!102 = metadata !{i32 98, i32 62, metadata !99, null}
!103 = metadata !{i32 786688, metadata !99, metadata !"fullIndex", metadata !23, i32 99, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!104 = metadata !{i32 786689, metadata !22, metadata !"fullIndex", metadata !23, i32 16777232, metadata !28, i32 0, metadata !105} ; [ DW_TAG_arg_variable ]
!105 = metadata !{i32 100, i32 25, metadata !99, null}
!106 = metadata !{i32 16, i32 34, metadata !22, metadata !105}
!107 = metadata !{i32 786689, metadata !22, metadata !"image", null, i32 16, metadata !55, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!108 = metadata !{i32 16, i32 55, metadata !22, metadata !105}
!109 = metadata !{i32 47, i32 16, metadata !110, metadata !105}
!110 = metadata !{i32 786443, metadata !111, i32 47, i32 2, metadata !23, i32 1} ; [ DW_TAG_lexical_block ]
!111 = metadata !{i32 786443, metadata !22, i32 17, i32 1, metadata !23, i32 0} ; [ DW_TAG_lexical_block ]
!112 = metadata !{i32 50, i32 26, metadata !113, metadata !105}
!113 = metadata !{i32 786443, metadata !114, i32 48, i32 31, metadata !23, i32 4} ; [ DW_TAG_lexical_block ]
!114 = metadata !{i32 786443, metadata !115, i32 48, i32 3, metadata !23, i32 3} ; [ DW_TAG_lexical_block ]
!115 = metadata !{i32 786443, metadata !110, i32 47, i32 30, metadata !23, i32 2} ; [ DW_TAG_lexical_block ]
!116 = metadata !{i32 48, i32 17, metadata !114, metadata !105}
!117 = metadata !{i32 786688, metadata !111, metadata !"x_weight", metadata !23, i32 32, metadata !29, i32 0, metadata !105} ; [ DW_TAG_auto_variable ]
!118 = metadata !{i32 53, i32 26, metadata !113, metadata !105}
!119 = metadata !{i32 786688, metadata !111, metadata !"y_weight", metadata !23, i32 33, metadata !29, i32 0, metadata !105} ; [ DW_TAG_auto_variable ]
!120 = metadata !{i32 48, i32 26, metadata !114, metadata !105}
!121 = metadata !{i32 786688, metadata !114, metadata !"j", metadata !23, i32 48, metadata !29, i32 0, metadata !105} ; [ DW_TAG_auto_variable ]
!122 = metadata !{i32 47, i32 25, metadata !110, metadata !105}
!123 = metadata !{i32 786688, metadata !110, metadata !"i", metadata !23, i32 47, metadata !29, i32 0, metadata !105} ; [ DW_TAG_auto_variable ]
!124 = metadata !{i32 57, i32 2, metadata !111, metadata !105}
!125 = metadata !{i32 59, i32 2, metadata !111, metadata !105}
!126 = metadata !{i32 786688, metadata !111, metadata !"edge_val", metadata !23, i32 36, metadata !26, i32 0, metadata !105} ; [ DW_TAG_auto_variable ]
!127 = metadata !{i32 62, i32 2, metadata !111, metadata !105}
!128 = metadata !{i32 64, i32 7, metadata !111, metadata !105}
!129 = metadata !{i32 101, i32 3, metadata !99, null}
!130 = metadata !{i32 98, i32 56, metadata !100, null}
!131 = metadata !{i32 786688, metadata !100, metadata !"j", metadata !23, i32 98, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!132 = metadata !{i32 102, i32 2, metadata !97, null}
!133 = metadata !{i32 97, i32 56, metadata !85, null}
!134 = metadata !{i32 786688, metadata !85, metadata !"i", metadata !23, i32 97, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!135 = metadata !{i32 104, i32 45, metadata !93, null}
!136 = metadata !{i32 105, i32 27, metadata !93, null}
!137 = metadata !{i32 786688, metadata !93, metadata !"val", metadata !23, i32 105, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!138 = metadata !{i32 790529, metadata !139, metadata !"fourWide", null, i32 106, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!139 = metadata !{i32 786688, metadata !93, metadata !"fourWide", metadata !23, i32 106, metadata !140, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!140 = metadata !{i32 786454, null, metadata !"OneToFourPixels", metadata !23, i32 9, i64 0, i64 0, i64 0, i32 0, metadata !141} ; [ DW_TAG_typedef ]
!141 = metadata !{i32 786455, null, metadata !"", metadata !23, i32 6, i64 32, i64 32, i64 0, i32 0, null, metadata !142, i32 0, null} ; [ DW_TAG_union_type ]
!142 = metadata !{metadata !143, metadata !147, metadata !148}
!143 = metadata !{i32 786445, metadata !141, metadata !"pix", metadata !23, i32 7, i64 32, i64 8, i64 0, i32 0, metadata !144} ; [ DW_TAG_member ]
!144 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 32, i64 8, i32 0, i32 0, metadata !26, metadata !145, i32 0, i32 0} ; [ DW_TAG_array_type ]
!145 = metadata !{metadata !146}
!146 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ]
!147 = metadata !{i32 786445, metadata !141, metadata !"full", metadata !23, i32 8, i64 32, i64 32, i64 0, i32 0, metadata !54} ; [ DW_TAG_member ]
!148 = metadata !{i32 786478, i32 0, metadata !141, metadata !"", metadata !"", metadata !"", metadata !23, i32 6, metadata !149, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !31, i32 6} ; [ DW_TAG_subprogram ]
!149 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !150, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!150 = metadata !{null, metadata !151}
!151 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !141} ; [ DW_TAG_pointer_type ]
!152 = metadata !{i32 106, i32 19, metadata !93, null}
!153 = metadata !{i32 107, i32 23, metadata !92, null}
!154 = metadata !{i32 107, i32 32, metadata !92, null}
!155 = metadata !{i32 786688, metadata !92, metadata !"j", metadata !23, i32 107, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!156 = metadata !{i32 109, i32 3, metadata !93, null}
!157 = metadata !{i32 110, i32 2, metadata !93, null}
!158 = metadata !{i32 104, i32 39, metadata !94, null}
!159 = metadata !{i32 786688, metadata !94, metadata !"i", metadata !23, i32 104, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!160 = metadata !{i32 111, i32 1, metadata !63, null}
!161 = metadata !{i32 786689, metadata !162, metadata !"index", metadata !23, i32 16777227, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!162 = metadata !{i32 786478, i32 0, metadata !23, metadata !"getVal", metadata !"getVal", metadata !"_ZL6getValiiiiPh", metadata !23, i32 11, metadata !163, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !31, i32 12} ; [ DW_TAG_subprogram ]
!163 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !164, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!164 = metadata !{metadata !26, metadata !29, metadata !29, metadata !29, metadata !29, metadata !30}
!165 = metadata !{i32 11, i32 34, metadata !162, null}
!166 = metadata !{i32 786689, metadata !162, metadata !"xDiff", metadata !23, i32 33554443, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!167 = metadata !{i32 11, i32 45, metadata !162, null}
!168 = metadata !{i32 786689, metadata !162, metadata !"yDiff", metadata !23, i32 50331659, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!169 = metadata !{i32 11, i32 56, metadata !162, null}
!170 = metadata !{i32 786689, metadata !162, metadata !"Y", null, i32 11, metadata !55, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!171 = metadata !{i32 11, i32 88, metadata !162, null}
!172 = metadata !{i32 13, i32 2, metadata !173, null}
!173 = metadata !{i32 786443, metadata !162, i32 12, i32 1, metadata !23, i32 22} ; [ DW_TAG_lexical_block ]
