; ModuleID = 'X:/Bureau/HDMI_3610/3610_4/1490679_1771119/sobellab4/solution1/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

%union.OneToFourPixels.0 = type { i32 }

@y_op = internal unnamed_addr constant [3 x [3 x i8]] [[3 x i8] c"\01\02\01", [3 x i8] zeroinitializer, [3 x i8] c"\FF\FE\FF"], align 1 ; [#uses=1 type=[3 x [3 x i8]]*]
@x_op = internal unnamed_addr constant [3 x [3 x i8]] [[3 x i8] c"\FF\00\01", [3 x i8] c"\FE\00\02", [3 x i8] c"\FF\00\01"], align 1 ; [#uses=1 type=[3 x [3 x i8]]*]
@sobel_filter.str = internal unnamed_addr constant [13 x i8] c"sobel_filter\00" ; [#uses=1 type=[13 x i8]*]
@.str9 = private unnamed_addr constant [14 x i8] c"ZerosLastLine\00", align 1 ; [#uses=1 type=[14 x i8]*]
@.str8 = private unnamed_addr constant [15 x i8] c"ZerosFirstLine\00", align 1 ; [#uses=1 type=[15 x i8]*]
@.str7 = private unnamed_addr constant [13 x i8] c"ZerosLastRow\00", align 1 ; [#uses=1 type=[13 x i8]*]
@.str6 = private unnamed_addr constant [14 x i8] c"ZerosFirstRow\00", align 1 ; [#uses=1 type=[14 x i8]*]
@.str5 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]
@.str4 = private unnamed_addr constant [6 x i8] c"gmem1\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str3 = private unnamed_addr constant [6 x i8] c"slave\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str2 = private unnamed_addr constant [6 x i8] c"gmem0\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str13 = private unnamed_addr constant [7 x i8] c"OneTo4\00", align 1 ; [#uses=1 type=[7 x i8]*]
@.str12 = private unnamed_addr constant [4 x i8] c"IMG\00", align 1 ; [#uses=1 type=[4 x i8]*]
@.str11 = private unnamed_addr constant [13 x i8] c"OperatorRows\00", align 1 ; [#uses=1 type=[13 x i8]*]
@.str10 = private unnamed_addr constant [14 x i8] c"OperatorLines\00", align 1 ; [#uses=1 type=[14 x i8]*]
@.str1 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]

; [#uses=0]
define void @sobel_filter(i8* %inter_pix, i32* %out_pix) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecTopModule([13 x i8]* @sobel_filter.str) nounwind
  %fourWide = alloca %union.OneToFourPixels.0, align 4 ; [#uses=2 type=%union.OneToFourPixels.0*]
  call void @llvm.dbg.value(metadata !{i8* %inter_pix}, i64 0, metadata !51), !dbg !52 ; [debug line = 71:27] [debug variable = inter_pix]
  call void @llvm.dbg.value(metadata !{i32* %out_pix}, i64 0, metadata !53), !dbg !54 ; [debug line = 71:60] [debug variable = out_pix]
  call void (...)* @_ssdm_SpecArrayDimSize(i32* %out_pix, i32 2073600) nounwind, !dbg !55 ; [debug line = 72:2]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %inter_pix, i32 2073600) nounwind, !dbg !57 ; [debug line = 72:46]
  call void (...)* @_ssdm_op_SpecInterface(i8* %inter_pix, i8* getelementptr inbounds ([6 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([6 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 16, i32 16, i32 16, i32 16, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !58 ; [debug line = 80:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %out_pix, i8* getelementptr inbounds ([6 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([6 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 16, i32 16, i32 16, i32 16, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !59 ; [debug line = 81:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, i8* getelementptr inbounds ([10 x i8]* @.str5, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !60 ; [debug line = 82:1]
  br label %1, !dbg !61                           ; [debug line = 87:40]

; <label>:1                                       ; preds = %2, %0
  %i = phi i32 [ 0, %0 ], [ %i.1, %2 ]            ; [#uses=3 type=i32]
  %tmp = icmp eq i32 %i, 1920, !dbg !61           ; [#uses=1 type=i1] [debug line = 87:40]
  br i1 %tmp, label %.preheader8.preheader, label %2, !dbg !61 ; [debug line = 87:40]

.preheader8.preheader:                            ; preds = %1
  br label %.preheader8, !dbg !63                 ; [debug line = 89:58]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([14 x i8]* @.str6, i64 0, i64 0)) nounwind, !dbg !65 ; [debug line = 88:3]
  %rbegin1 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([14 x i8]* @.str6, i64 0, i64 0)) nounwind, !dbg !65 ; [#uses=1 type=i32] [debug line = 88:3]
  %tmp.1 = zext i32 %i to i64, !dbg !65           ; [#uses=1 type=i64] [debug line = 88:3]
  %out_pix.addr = getelementptr inbounds i32* %out_pix, i64 %tmp.1, !dbg !65 ; [#uses=1 type=i32*] [debug line = 88:3]
  store i32 0, i32* %out_pix.addr, align 4, !dbg !65 ; [debug line = 88:3]
  %rend18 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([14 x i8]* @.str6, i64 0, i64 0), i32 %rbegin1) nounwind, !dbg !67 ; [#uses=0 type=i32] [debug line = 88:16]
  %i.1 = add i32 %i, 1, !dbg !68                  ; [#uses=1 type=i32] [debug line = 87:52]
  call void @llvm.dbg.value(metadata !{i32 %i.1}, i64 0, metadata !69), !dbg !68 ; [debug line = 87:52] [debug variable = i]
  br label %1, !dbg !68                           ; [debug line = 87:52]

.preheader8:                                      ; preds = %3, %.preheader8.preheader
  %i1 = phi i32 [ %i.2, %3 ], [ 2071680, %.preheader8.preheader ] ; [#uses=3 type=i32]
  %exitcond4 = icmp eq i32 %i1, 2073600, !dbg !63 ; [#uses=1 type=i1] [debug line = 89:58]
  br i1 %exitcond4, label %.preheader7.preheader, label %3, !dbg !63 ; [debug line = 89:58]

.preheader7.preheader:                            ; preds = %.preheader8
  br label %.preheader7, !dbg !70                 ; [debug line = 91:41]

; <label>:3                                       ; preds = %.preheader8
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([13 x i8]* @.str7, i64 0, i64 0)) nounwind, !dbg !72 ; [debug line = 90:3]
  %rbegin2 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([13 x i8]* @.str7, i64 0, i64 0)) nounwind, !dbg !72 ; [#uses=1 type=i32] [debug line = 90:3]
  %tmp.3 = zext i32 %i1 to i64, !dbg !72          ; [#uses=1 type=i64] [debug line = 90:3]
  %out_pix.addr.1 = getelementptr inbounds i32* %out_pix, i64 %tmp.3, !dbg !72 ; [#uses=1 type=i32*] [debug line = 90:3]
  store i32 0, i32* %out_pix.addr.1, align 4, !dbg !72 ; [debug line = 90:3]
  %rend22 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([13 x i8]* @.str7, i64 0, i64 0), i32 %rbegin2) nounwind, !dbg !74 ; [#uses=0 type=i32] [debug line = 90:16]
  %i.2 = add i32 %i1, 1, !dbg !75                 ; [#uses=1 type=i32] [debug line = 89:79]
  call void @llvm.dbg.value(metadata !{i32 %i.2}, i64 0, metadata !76), !dbg !75 ; [debug line = 89:79] [debug variable = i]
  br label %.preheader8, !dbg !75                 ; [debug line = 89:79]

.preheader7:                                      ; preds = %4, %.preheader7.preheader
  %i2 = phi i32 [ %i.3, %4 ], [ 0, %.preheader7.preheader ] ; [#uses=3 type=i32]
  %tmp.5 = icmp ult i32 %i2, 2073600, !dbg !70    ; [#uses=1 type=i1] [debug line = 91:41]
  br i1 %tmp.5, label %4, label %.preheader6.preheader, !dbg !70 ; [debug line = 91:41]

.preheader6.preheader:                            ; preds = %.preheader7
  br label %.preheader6, !dbg !77                 ; [debug line = 93:47]

; <label>:4                                       ; preds = %.preheader7
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([15 x i8]* @.str8, i64 0, i64 0)) nounwind, !dbg !79 ; [debug line = 92:3]
  %rbegin3 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([15 x i8]* @.str8, i64 0, i64 0)) nounwind, !dbg !79 ; [#uses=1 type=i32] [debug line = 92:3]
  %tmp.6 = zext i32 %i2 to i64, !dbg !79          ; [#uses=1 type=i64] [debug line = 92:3]
  %out_pix.addr.2 = getelementptr inbounds i32* %out_pix, i64 %tmp.6, !dbg !79 ; [#uses=1 type=i32*] [debug line = 92:3]
  store i32 0, i32* %out_pix.addr.2, align 4, !dbg !79 ; [debug line = 92:3]
  %rend16 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([15 x i8]* @.str8, i64 0, i64 0), i32 %rbegin3) nounwind, !dbg !81 ; [#uses=0 type=i32] [debug line = 92:16]
  %i.3 = add i32 %i2, 1920, !dbg !82              ; [#uses=1 type=i32] [debug line = 91:62]
  call void @llvm.dbg.value(metadata !{i32 %i.3}, i64 0, metadata !83), !dbg !82 ; [debug line = 91:62] [debug variable = i]
  br label %.preheader7, !dbg !82                 ; [debug line = 91:62]

.preheader6:                                      ; preds = %5, %.preheader6.preheader
  %i3 = phi i32 [ %i.4, %5 ], [ 1919, %.preheader6.preheader ] ; [#uses=3 type=i32]
  %tmp.8 = icmp ult i32 %i3, 2073600, !dbg !77    ; [#uses=1 type=i1] [debug line = 93:47]
  br i1 %tmp.8, label %5, label %.preheader5.preheader, !dbg !77 ; [debug line = 93:47]

.preheader5.preheader:                            ; preds = %.preheader6
  br label %.preheader5, !dbg !84                 ; [debug line = 97:40]

; <label>:5                                       ; preds = %.preheader6
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([14 x i8]* @.str9, i64 0, i64 0)) nounwind, !dbg !86 ; [debug line = 94:3]
  %rbegin4 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([14 x i8]* @.str9, i64 0, i64 0)) nounwind, !dbg !86 ; [#uses=1 type=i32] [debug line = 94:3]
  %tmp.9 = zext i32 %i3 to i64, !dbg !86          ; [#uses=1 type=i64] [debug line = 94:3]
  %out_pix.addr.3 = getelementptr inbounds i32* %out_pix, i64 %tmp.9, !dbg !86 ; [#uses=1 type=i32*] [debug line = 94:3]
  store i32 0, i32* %out_pix.addr.3, align 4, !dbg !86 ; [debug line = 94:3]
  %rend20 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([14 x i8]* @.str9, i64 0, i64 0), i32 %rbegin4) nounwind, !dbg !88 ; [#uses=0 type=i32] [debug line = 94:16]
  %i.4 = add i32 %i3, 1920, !dbg !89              ; [#uses=1 type=i32] [debug line = 93:68]
  call void @llvm.dbg.value(metadata !{i32 %i.4}, i64 0, metadata !90), !dbg !89 ; [debug line = 93:68] [debug variable = i]
  br label %.preheader6, !dbg !89                 ; [debug line = 93:68]

.preheader5:                                      ; preds = %14, %.preheader5.preheader
  %i4 = phi i32 [ %i.5, %14 ], [ 1, %.preheader5.preheader ] ; [#uses=3 type=i32]
  %exitcond3 = icmp eq i32 %i4, 1079, !dbg !84    ; [#uses=1 type=i1] [debug line = 97:40]
  br i1 %exitcond3, label %.preheader.preheader, label %6, !dbg !84 ; [debug line = 97:40]

.preheader.preheader:                             ; preds = %.preheader5
  %tmp.11 = bitcast %union.OneToFourPixels.0* %fourWide to [4 x i8]*, !dbg !91 ; [#uses=1 type=[4 x i8]*] [debug line = 108:4]
  %fourWide.addr = getelementptr inbounds %union.OneToFourPixels.0* %fourWide, i64 0, i32 0, !dbg !96 ; [#uses=1 type=i32*] [debug line = 109:3]
  br label %.preheader, !dbg !97                  ; [debug line = 104:20]

; <label>:6                                       ; preds = %.preheader5
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([14 x i8]* @.str10, i64 0, i64 0)) nounwind, !dbg !98 ; [debug line = 97:62]
  %rbegin5 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([14 x i8]* @.str10, i64 0, i64 0)) nounwind, !dbg !98 ; [#uses=1 type=i32] [debug line = 97:62]
  %tmp.12 = mul i32 %i4, 1920, !dbg !100          ; [#uses=1 type=i32] [debug line = 99:32]
  br label %7, !dbg !103                          ; [debug line = 98:40]

; <label>:7                                       ; preds = %sobel_operator.exit, %6
  %j = phi i32 [ 1, %6 ], [ %j.2, %sobel_operator.exit ] ; [#uses=3 type=i32]
  %exitcond2 = icmp eq i32 %j, 1919, !dbg !103    ; [#uses=1 type=i1] [debug line = 98:40]
  br i1 %exitcond2, label %14, label %8, !dbg !103 ; [debug line = 98:40]

; <label>:8                                       ; preds = %7
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([13 x i8]* @.str11, i64 0, i64 0)) nounwind, !dbg !104 ; [debug line = 98:62]
  %rbegin6 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([13 x i8]* @.str11, i64 0, i64 0)) nounwind, !dbg !104 ; [#uses=1 type=i32] [debug line = 98:62]
  %fullIndex = add i32 %j, %tmp.12, !dbg !100     ; [#uses=3 type=i32] [debug line = 99:32]
  call void @llvm.dbg.value(metadata !{i32 %fullIndex}, i64 0, metadata !105), !dbg !100 ; [debug line = 99:32] [debug variable = fullIndex]
  call void @llvm.dbg.value(metadata !{i32 %fullIndex}, i64 0, metadata !106) nounwind, !dbg !108 ; [debug line = 16:34@100:25] [debug variable = fullIndex]
  call void @llvm.dbg.value(metadata !{i8* %inter_pix}, i64 0, metadata !109) nounwind, !dbg !110 ; [debug line = 16:55@100:25] [debug variable = image]
  br label %9, !dbg !111                          ; [debug line = 47:16@100:25]

; <label>:9                                       ; preds = %11, %8
  %y_weight.0.i = phi i32 [ 0, %8 ], [ %y_weight.1.i.lcssa, %11 ] ; [#uses=2 type=i32]
  %x_weight.0.i = phi i32 [ 0, %8 ], [ %x_weight.1.i.lcssa, %11 ] ; [#uses=2 type=i32]
  %i.0.i = phi i32 [ 0, %8 ], [ %i.7, %11 ]       ; [#uses=4 type=i32]
  %exitcond1.i = icmp eq i32 %i.0.i, 3, !dbg !111 ; [#uses=1 type=i1] [debug line = 47:16@100:25]
  br i1 %exitcond1.i, label %12, label %.preheader.preheader.i, !dbg !111 ; [debug line = 47:16@100:25]

.preheader.preheader.i:                           ; preds = %9
  %tmp.27 = add nsw i32 %i.0.i, -1, !dbg !114     ; [#uses=2 type=i32] [debug line = 50:26@100:25]
  %tmp.28 = sext i32 %i.0.i to i64, !dbg !114     ; [#uses=2 type=i64] [debug line = 50:26@100:25]
  br label %.preheader.i, !dbg !118               ; [debug line = 48:17@100:25]

.preheader.i:                                     ; preds = %10, %.preheader.preheader.i
  %y_weight.1.i = phi i32 [ %y_weight, %10 ], [ %y_weight.0.i, %.preheader.preheader.i ] ; [#uses=2 type=i32]
  %x_weight.1.i = phi i32 [ %x_weight, %10 ], [ %x_weight.0.i, %.preheader.preheader.i ] ; [#uses=2 type=i32]
  %j.0.i = phi i32 [ %j.3, %10 ], [ 0, %.preheader.preheader.i ] ; [#uses=4 type=i32]
  %exitcond.i = icmp eq i32 %j.0.i, 3, !dbg !118  ; [#uses=1 type=i1] [debug line = 48:17@100:25]
  br i1 %exitcond.i, label %11, label %10, !dbg !118 ; [debug line = 48:17@100:25]

; <label>:10                                      ; preds = %.preheader.i
  %tmp.34 = add nsw i32 %j.0.i, -1, !dbg !114     ; [#uses=2 type=i32] [debug line = 50:26@100:25]
  %tmp.35 = call fastcc zeroext i8 @getVal(i32 %fullIndex, i32 %tmp.27, i32 %tmp.34, i8* %inter_pix) nounwind, !dbg !114 ; [#uses=1 type=i8] [debug line = 50:26@100:25]
  %tmp.36 = zext i8 %tmp.35 to i32, !dbg !114     ; [#uses=1 type=i32] [debug line = 50:26@100:25]
  %tmp.37 = sext i32 %j.0.i to i64, !dbg !114     ; [#uses=2 type=i64] [debug line = 50:26@100:25]
  %x_op.addr = getelementptr inbounds [3 x [3 x i8]]* @x_op, i64 0, i64 %tmp.28, i64 %tmp.37, !dbg !114 ; [#uses=1 type=i8*] [debug line = 50:26@100:25]
  %x_op.load = load i8* %x_op.addr, align 1, !dbg !114 ; [#uses=2 type=i8] [debug line = 50:26@100:25]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %x_op.load) nounwind
  %tmp.38 = sext i8 %x_op.load to i32, !dbg !114  ; [#uses=1 type=i32] [debug line = 50:26@100:25]
  %tmp.39 = mul nsw i32 %tmp.38, %tmp.36, !dbg !114 ; [#uses=1 type=i32] [debug line = 50:26@100:25]
  %x_weight = add nsw i32 %tmp.39, %x_weight.1.i, !dbg !114 ; [#uses=1 type=i32] [debug line = 50:26@100:25]
  call void @llvm.dbg.value(metadata !{i32 %x_weight}, i64 0, metadata !119) nounwind, !dbg !114 ; [debug line = 50:26@100:25] [debug variable = x_weight]
  %tmp.41 = call fastcc zeroext i8 @getVal(i32 %fullIndex, i32 %tmp.27, i32 %tmp.34, i8* %inter_pix) nounwind, !dbg !120 ; [#uses=1 type=i8] [debug line = 53:26@100:25]
  %tmp.42 = zext i8 %tmp.41 to i32, !dbg !120     ; [#uses=1 type=i32] [debug line = 53:26@100:25]
  %y_op.addr = getelementptr inbounds [3 x [3 x i8]]* @y_op, i64 0, i64 %tmp.28, i64 %tmp.37, !dbg !120 ; [#uses=1 type=i8*] [debug line = 53:26@100:25]
  %y_op.load = load i8* %y_op.addr, align 1, !dbg !120 ; [#uses=2 type=i8] [debug line = 53:26@100:25]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %y_op.load) nounwind
  %tmp.43 = sext i8 %y_op.load to i32, !dbg !120  ; [#uses=1 type=i32] [debug line = 53:26@100:25]
  %tmp.44 = mul nsw i32 %tmp.43, %tmp.42, !dbg !120 ; [#uses=1 type=i32] [debug line = 53:26@100:25]
  %y_weight = add nsw i32 %tmp.44, %y_weight.1.i, !dbg !120 ; [#uses=1 type=i32] [debug line = 53:26@100:25]
  call void @llvm.dbg.value(metadata !{i32 %y_weight}, i64 0, metadata !121) nounwind, !dbg !120 ; [debug line = 53:26@100:25] [debug variable = y_weight]
  %j.3 = add nsw i32 %j.0.i, 1, !dbg !122         ; [#uses=1 type=i32] [debug line = 48:26@100:25]
  call void @llvm.dbg.value(metadata !{i32 %j.3}, i64 0, metadata !123) nounwind, !dbg !122 ; [debug line = 48:26@100:25] [debug variable = j]
  br label %.preheader.i, !dbg !122               ; [debug line = 48:26@100:25]

; <label>:11                                      ; preds = %.preheader.i
  %x_weight.1.i.lcssa = phi i32 [ %x_weight.1.i, %.preheader.i ] ; [#uses=1 type=i32]
  %y_weight.1.i.lcssa = phi i32 [ %y_weight.1.i, %.preheader.i ] ; [#uses=1 type=i32]
  %i.7 = add nsw i32 %i.0.i, 1, !dbg !124         ; [#uses=1 type=i32] [debug line = 47:25@100:25]
  call void @llvm.dbg.value(metadata !{i32 %i.7}, i64 0, metadata !125) nounwind, !dbg !124 ; [debug line = 47:25@100:25] [debug variable = i]
  br label %9, !dbg !124                          ; [debug line = 47:25@100:25]

; <label>:12                                      ; preds = %9
  %x_weight.0.i.lcssa = phi i32 [ %x_weight.0.i, %9 ] ; [#uses=3 type=i32]
  %y_weight.0.i.lcssa = phi i32 [ %y_weight.0.i, %9 ] ; [#uses=3 type=i32]
  %tmp.18 = icmp sgt i32 %x_weight.0.i.lcssa, 0, !dbg !126 ; [#uses=1 type=i1] [debug line = 57:2@100:25]
  %tmp.19 = sub nsw i32 0, %x_weight.0.i.lcssa, !dbg !126 ; [#uses=1 type=i32] [debug line = 57:2@100:25]
  %tmp.20 = select i1 %tmp.18, i32 %x_weight.0.i.lcssa, i32 %tmp.19, !dbg !126 ; [#uses=1 type=i32] [debug line = 57:2@100:25]
  %tmp.21 = icmp sgt i32 %y_weight.0.i.lcssa, 0, !dbg !126 ; [#uses=1 type=i1] [debug line = 57:2@100:25]
  %tmp.22 = sub nsw i32 0, %y_weight.0.i.lcssa, !dbg !126 ; [#uses=1 type=i32] [debug line = 57:2@100:25]
  %tmp.23 = select i1 %tmp.21, i32 %y_weight.0.i.lcssa, i32 %tmp.22, !dbg !126 ; [#uses=1 type=i32] [debug line = 57:2@100:25]
  %edge_weight = add nsw i32 %tmp.23, %tmp.20, !dbg !126 ; [#uses=1 type=i32] [debug line = 57:2@100:25]
  call void @llvm.dbg.value(metadata !{i32 %edge_weight}, i64 0, metadata !127) nounwind, !dbg !126 ; [debug line = 57:2@100:25] [debug variable = edge_weight]
  %tmp.24 = trunc i32 %edge_weight to i8, !dbg !128 ; [#uses=3 type=i8] [debug line = 59:2@100:25]
  %edge_val = xor i8 %tmp.24, -1, !dbg !128       ; [#uses=1 type=i8] [debug line = 59:2@100:25]
  call void @llvm.dbg.value(metadata !{i8 %edge_val}, i64 0, metadata !129) nounwind, !dbg !128 ; [debug line = 59:2@100:25] [debug variable = edge_val]
  %tmp.26 = icmp ult i8 %tmp.24, 55, !dbg !130    ; [#uses=1 type=i1] [debug line = 62:2@100:25]
  br i1 %tmp.26, label %sobel_operator.exit, label %13, !dbg !130 ; [debug line = 62:2@100:25]

; <label>:13                                      ; preds = %12
  %tmp.29 = icmp ugt i8 %tmp.24, -101, !dbg !131  ; [#uses=1 type=i1] [debug line = 64:7@100:25]
  %..i = select i1 %tmp.29, i8 0, i8 %edge_val, !dbg !131 ; [#uses=1 type=i8] [debug line = 64:7@100:25]
  br label %sobel_operator.exit

sobel_operator.exit:                              ; preds = %13, %12
  %edge_val.1.i = phi i8 [ %..i, %13 ], [ -1, %12 ] ; [#uses=1 type=i8]
  %tmp.30 = zext i8 %edge_val.1.i to i32, !dbg !107 ; [#uses=1 type=i32] [debug line = 100:25]
  %tmp.31 = sext i32 %fullIndex to i64, !dbg !107 ; [#uses=1 type=i64] [debug line = 100:25]
  %out_pix.addr.5 = getelementptr inbounds i32* %out_pix, i64 %tmp.31, !dbg !107 ; [#uses=1 type=i32*] [debug line = 100:25]
  store i32 %tmp.30, i32* %out_pix.addr.5, align 4, !dbg !107 ; [debug line = 100:25]
  %rend14 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([13 x i8]* @.str11, i64 0, i64 0), i32 %rbegin6) nounwind, !dbg !132 ; [#uses=0 type=i32] [debug line = 101:3]
  %j.2 = add i32 %j, 1, !dbg !133                 ; [#uses=1 type=i32] [debug line = 98:56]
  call void @llvm.dbg.value(metadata !{i32 %j.2}, i64 0, metadata !134), !dbg !133 ; [debug line = 98:56] [debug variable = j]
  br label %7, !dbg !133                          ; [debug line = 98:56]

; <label>:14                                      ; preds = %7
  %rend12 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([14 x i8]* @.str10, i64 0, i64 0), i32 %rbegin5) nounwind, !dbg !135 ; [#uses=0 type=i32] [debug line = 102:2]
  %i.5 = add i32 %i4, 1, !dbg !136                ; [#uses=1 type=i32] [debug line = 97:56]
  call void @llvm.dbg.value(metadata !{i32 %i.5}, i64 0, metadata !137), !dbg !136 ; [debug line = 97:56] [debug variable = i]
  br label %.preheader5, !dbg !136                ; [debug line = 97:56]

.preheader:                                       ; preds = %18, %.preheader.preheader
  %i5 = phi i32 [ %i.6, %18 ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i32]
  %exitcond1 = icmp eq i32 %i5, 2073600, !dbg !97 ; [#uses=1 type=i1] [debug line = 104:20]
  br i1 %exitcond1, label %19, label %15, !dbg !97 ; [debug line = 104:20]

; <label>:15                                      ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([4 x i8]* @.str12, i64 0, i64 0)) nounwind, !dbg !138 ; [debug line = 104:45]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([4 x i8]* @.str12, i64 0, i64 0)) nounwind, !dbg !138 ; [#uses=1 type=i32] [debug line = 104:45]
  %tmp.13 = sext i32 %i5 to i64, !dbg !139        ; [#uses=1 type=i64] [debug line = 105:27]
  %out_pix.addr.4 = getelementptr inbounds i32* %out_pix, i64 %tmp.13, !dbg !139 ; [#uses=2 type=i32*] [debug line = 105:27]
  %out_pix.load = load i32* %out_pix.addr.4, align 4, !dbg !139 ; [#uses=2 type=i32] [debug line = 105:27]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %out_pix.load) nounwind
  %val = trunc i32 %out_pix.load to i8, !dbg !139 ; [#uses=1 type=i8] [debug line = 105:27]
  call void @llvm.dbg.value(metadata !{i8 %val}, i64 0, metadata !140), !dbg !139 ; [debug line = 105:27] [debug variable = val]
  call void @llvm.dbg.declare(metadata !{%union.OneToFourPixels.0* %fourWide}, metadata !141), !dbg !154 ; [debug line = 106:19] [debug variable = fourWide]
  br label %16, !dbg !155                         ; [debug line = 107:23]

; <label>:16                                      ; preds = %17, %15
  %j6 = phi i32 [ 0, %15 ], [ %j.1, %17 ]         ; [#uses=3 type=i32]
  %exitcond = icmp eq i32 %j6, 4, !dbg !155       ; [#uses=1 type=i1] [debug line = 107:23]
  br i1 %exitcond, label %18, label %17, !dbg !155 ; [debug line = 107:23]

; <label>:17                                      ; preds = %16
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([7 x i8]* @.str13, i64 0, i64 0)) nounwind, !dbg !91 ; [debug line = 108:4]
  %rbegin9 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([7 x i8]* @.str13, i64 0, i64 0)) nounwind, !dbg !91 ; [#uses=1 type=i32] [debug line = 108:4]
  %tmp.16 = sext i32 %j6 to i64, !dbg !91         ; [#uses=1 type=i64] [debug line = 108:4]
  %tmp.11.addr = getelementptr inbounds [4 x i8]* %tmp.11, i64 0, i64 %tmp.16, !dbg !91 ; [#uses=1 type=i8*] [debug line = 108:4]
  store i8 %val, i8* %tmp.11.addr, align 1, !dbg !91 ; [debug line = 108:4]
  %rend10 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([7 x i8]* @.str13, i64 0, i64 0), i32 %rbegin9) nounwind, !dbg !156 ; [#uses=0 type=i32] [debug line = 108:22]
  %j.1 = add nsw i32 %j6, 1, !dbg !157            ; [#uses=1 type=i32] [debug line = 107:32]
  call void @llvm.dbg.value(metadata !{i32 %j.1}, i64 0, metadata !158), !dbg !157 ; [debug line = 107:32] [debug variable = j]
  br label %16, !dbg !157                         ; [debug line = 107:32]

; <label>:18                                      ; preds = %16
  %fourWide.load = load i32* %fourWide.addr, align 4, !dbg !96 ; [#uses=1 type=i32] [debug line = 109:3]
  store i32 %fourWide.load, i32* %out_pix.addr.4, align 4, !dbg !96 ; [debug line = 109:3]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([4 x i8]* @.str12, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !159 ; [#uses=0 type=i32] [debug line = 110:2]
  %i.6 = add nsw i32 %i5, 1, !dbg !160            ; [#uses=1 type=i32] [debug line = 104:39]
  call void @llvm.dbg.value(metadata !{i32 %i.6}, i64 0, metadata !161), !dbg !160 ; [debug line = 104:39] [debug variable = i]
  br label %.preheader, !dbg !160                 ; [debug line = 104:39]

; <label>:19                                      ; preds = %.preheader
  ret void, !dbg !162                             ; [debug line = 111:1]
}

; [#uses=24]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=2]
define internal fastcc zeroext i8 @getVal(i32 %index, i32 %xDiff, i32 %yDiff, i8* %Y) nounwind uwtable inlinehint {
  call void @llvm.dbg.value(metadata !{i32 %index}, i64 0, metadata !163), !dbg !164 ; [debug line = 11:34] [debug variable = index]
  call void @llvm.dbg.value(metadata !{i32 %xDiff}, i64 0, metadata !165), !dbg !166 ; [debug line = 11:45] [debug variable = xDiff]
  call void @llvm.dbg.value(metadata !{i32 %yDiff}, i64 0, metadata !167), !dbg !168 ; [debug line = 11:56] [debug variable = yDiff]
  call void @llvm.dbg.value(metadata !{i8* %Y}, i64 0, metadata !169), !dbg !170 ; [debug line = 11:88] [debug variable = Y]
  %tmp = mul nsw i32 %yDiff, 1920, !dbg !171      ; [#uses=1 type=i32] [debug line = 13:2]
  %tmp.47 = add i32 %xDiff, %index, !dbg !171     ; [#uses=1 type=i32] [debug line = 13:2]
  %tmp.48 = add i32 %tmp.47, %tmp, !dbg !171      ; [#uses=1 type=i32] [debug line = 13:2]
  %tmp.49 = sext i32 %tmp.48 to i64, !dbg !171    ; [#uses=1 type=i64] [debug line = 13:2]
  %Y.addr = getelementptr inbounds i8* %Y, i64 %tmp.49, !dbg !171 ; [#uses=1 type=i8*] [debug line = 13:2]
  %Y.load = load i8* %Y.addr, align 1, !dbg !171  ; [#uses=2 type=i8] [debug line = 13:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %Y.load) nounwind
  ret i8 %Y.load, !dbg !171                       ; [debug line = 13:2]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=8]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=8]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=8]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=3]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=4]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=2]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!33, !40, !45}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"X:/Bureau/HDMI_3610/3610_4/1490679_1771119/sobellab4/solution1/.autopilot/db/Sobel.pragma.2.cpp", metadata !"X:\5CBureau\5CHDMI_3610\5C3610_4\5C1490679_1771119", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !24} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !16, metadata !21}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"sobel_operator", metadata !"sobel_operator", metadata !"_Z14sobel_operatoriPh", metadata !6, i32 16, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !14, i32 17} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"SobelLab4/Sobel.cpp", metadata !"X:\5CBureau\5CHDMI_3610\5C3610_4\5C1490679_1771119", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{metadata !9, metadata !11, metadata !13}
!9 = metadata !{i32 786454, null, metadata !"uint8_t", metadata !6, i32 36, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ]
!10 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!11 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !12} ; [ DW_TAG_const_type ]
!12 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!13 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ]
!14 = metadata !{metadata !15}
!15 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!16 = metadata !{i32 786478, i32 0, metadata !6, metadata !"sobel_filter", metadata !"sobel_filter", metadata !"_Z12sobel_filterPhPj", metadata !6, i32 71, metadata !17, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i32*)* @sobel_filter, null, null, metadata !14, i32 72} ; [ DW_TAG_subprogram ]
!17 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !18, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!18 = metadata !{null, metadata !13, metadata !19}
!19 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ]
!20 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!21 = metadata !{i32 786478, i32 0, metadata !6, metadata !"getVal", metadata !"getVal", metadata !"_ZL6getValiiiiPh", metadata !6, i32 11, metadata !22, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !14, i32 12} ; [ DW_TAG_subprogram ]
!22 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !23, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!23 = metadata !{metadata !9, metadata !12, metadata !12, metadata !12, metadata !12, metadata !13}
!24 = metadata !{metadata !25}
!25 = metadata !{metadata !26, metadata !32}
!26 = metadata !{i32 786484, i32 0, metadata !5, metadata !"x_op", metadata !"x_op", metadata !"", metadata !6, i32 38, metadata !27, i32 1, i32 1, [3 x [3 x i8]]* @x_op} ; [ DW_TAG_variable ]
!27 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 72, i64 8, i32 0, i32 0, metadata !28, metadata !30, i32 0, i32 0} ; [ DW_TAG_array_type ]
!28 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_const_type ]
!29 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!30 = metadata !{metadata !31, metadata !31}
!31 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ]
!32 = metadata !{i32 786484, i32 0, metadata !5, metadata !"y_op", metadata !"y_op", metadata !"", metadata !6, i32 42, metadata !27, i32 1, i32 1, [3 x [3 x i8]]* @y_op} ; [ DW_TAG_variable ]
!33 = metadata !{null, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39}
!34 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 1}
!35 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!36 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"uint8_t*"}
!37 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const", metadata !""}
!38 = metadata !{metadata !"kernel_arg_name", metadata !"fullIndex", metadata !"image"}
!39 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!40 = metadata !{void (i8*, i32*)* @sobel_filter, metadata !41, metadata !35, metadata !42, metadata !43, metadata !44, metadata !39}
!41 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!42 = metadata !{metadata !"kernel_arg_type", metadata !"uint8_t*", metadata !"uint*"}
!43 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!44 = metadata !{metadata !"kernel_arg_name", metadata !"inter_pix", metadata !"out_pix"}
!45 = metadata !{null, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !39}
!46 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 1}
!47 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!48 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"uint8_t*"}
!49 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!50 = metadata !{metadata !"kernel_arg_name", metadata !"index", metadata !"xDiff", metadata !"yDiff", metadata !"img_width", metadata !"Y"}
!51 = metadata !{i32 786689, metadata !16, metadata !"inter_pix", metadata !6, i32 16777287, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!52 = metadata !{i32 71, i32 27, metadata !16, null}
!53 = metadata !{i32 786689, metadata !16, metadata !"out_pix", metadata !6, i32 33554503, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!54 = metadata !{i32 71, i32 60, metadata !16, null}
!55 = metadata !{i32 72, i32 2, metadata !56, null}
!56 = metadata !{i32 786443, metadata !16, i32 72, i32 1, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!57 = metadata !{i32 72, i32 46, metadata !56, null}
!58 = metadata !{i32 80, i32 1, metadata !56, null}
!59 = metadata !{i32 81, i32 1, metadata !56, null}
!60 = metadata !{i32 82, i32 1, metadata !56, null}
!61 = metadata !{i32 87, i32 40, metadata !62, null}
!62 = metadata !{i32 786443, metadata !56, i32 87, i32 17, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!63 = metadata !{i32 89, i32 58, metadata !64, null}
!64 = metadata !{i32 786443, metadata !56, i32 89, i32 16, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!65 = metadata !{i32 88, i32 3, metadata !66, null}
!66 = metadata !{i32 786443, metadata !62, i32 88, i32 3, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!67 = metadata !{i32 88, i32 16, metadata !66, null}
!68 = metadata !{i32 87, i32 52, metadata !62, null}
!69 = metadata !{i32 786688, metadata !62, metadata !"i", metadata !6, i32 87, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!70 = metadata !{i32 91, i32 41, metadata !71, null}
!71 = metadata !{i32 786443, metadata !56, i32 91, i32 18, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!72 = metadata !{i32 90, i32 3, metadata !73, null}
!73 = metadata !{i32 786443, metadata !64, i32 90, i32 3, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!74 = metadata !{i32 90, i32 16, metadata !73, null}
!75 = metadata !{i32 89, i32 79, metadata !64, null}
!76 = metadata !{i32 786688, metadata !64, metadata !"i", metadata !6, i32 89, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!77 = metadata !{i32 93, i32 47, metadata !78, null}
!78 = metadata !{i32 786443, metadata !56, i32 93, i32 17, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!79 = metadata !{i32 92, i32 3, metadata !80, null}
!80 = metadata !{i32 786443, metadata !71, i32 92, i32 3, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!81 = metadata !{i32 92, i32 16, metadata !80, null}
!82 = metadata !{i32 91, i32 62, metadata !71, null}
!83 = metadata !{i32 786688, metadata !71, metadata !"i", metadata !6, i32 91, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!84 = metadata !{i32 97, i32 40, metadata !85, null}
!85 = metadata !{i32 786443, metadata !56, i32 97, i32 17, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!86 = metadata !{i32 94, i32 3, metadata !87, null}
!87 = metadata !{i32 786443, metadata !78, i32 94, i32 3, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!88 = metadata !{i32 94, i32 16, metadata !87, null}
!89 = metadata !{i32 93, i32 68, metadata !78, null}
!90 = metadata !{i32 786688, metadata !78, metadata !"i", metadata !6, i32 93, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!91 = metadata !{i32 108, i32 4, metadata !92, null}
!92 = metadata !{i32 786443, metadata !93, i32 108, i32 4, metadata !6, i32 21} ; [ DW_TAG_lexical_block ]
!93 = metadata !{i32 786443, metadata !94, i32 107, i32 9, metadata !6, i32 20} ; [ DW_TAG_lexical_block ]
!94 = metadata !{i32 786443, metadata !95, i32 104, i32 44, metadata !6, i32 19} ; [ DW_TAG_lexical_block ]
!95 = metadata !{i32 786443, metadata !56, i32 104, i32 6, metadata !6, i32 18} ; [ DW_TAG_lexical_block ]
!96 = metadata !{i32 109, i32 3, metadata !94, null}
!97 = metadata !{i32 104, i32 20, metadata !95, null}
!98 = metadata !{i32 97, i32 62, metadata !99, null}
!99 = metadata !{i32 786443, metadata !85, i32 97, i32 61, metadata !6, i32 15} ; [ DW_TAG_lexical_block ]
!100 = metadata !{i32 99, i32 32, metadata !101, null}
!101 = metadata !{i32 786443, metadata !102, i32 98, i32 61, metadata !6, i32 17} ; [ DW_TAG_lexical_block ]
!102 = metadata !{i32 786443, metadata !99, i32 98, i32 17, metadata !6, i32 16} ; [ DW_TAG_lexical_block ]
!103 = metadata !{i32 98, i32 40, metadata !102, null}
!104 = metadata !{i32 98, i32 62, metadata !101, null}
!105 = metadata !{i32 786688, metadata !101, metadata !"fullIndex", metadata !6, i32 99, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!106 = metadata !{i32 786689, metadata !5, metadata !"fullIndex", metadata !6, i32 16777232, metadata !11, i32 0, metadata !107} ; [ DW_TAG_arg_variable ]
!107 = metadata !{i32 100, i32 25, metadata !101, null}
!108 = metadata !{i32 16, i32 34, metadata !5, metadata !107}
!109 = metadata !{i32 786689, metadata !5, metadata !"image", metadata !6, i32 33554448, metadata !13, i32 0, metadata !107} ; [ DW_TAG_arg_variable ]
!110 = metadata !{i32 16, i32 55, metadata !5, metadata !107}
!111 = metadata !{i32 47, i32 16, metadata !112, metadata !107}
!112 = metadata !{i32 786443, metadata !113, i32 47, i32 2, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!113 = metadata !{i32 786443, metadata !5, i32 17, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!114 = metadata !{i32 50, i32 26, metadata !115, metadata !107}
!115 = metadata !{i32 786443, metadata !116, i32 48, i32 31, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!116 = metadata !{i32 786443, metadata !117, i32 48, i32 3, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!117 = metadata !{i32 786443, metadata !112, i32 47, i32 30, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!118 = metadata !{i32 48, i32 17, metadata !116, metadata !107}
!119 = metadata !{i32 786688, metadata !113, metadata !"x_weight", metadata !6, i32 32, metadata !12, i32 0, metadata !107} ; [ DW_TAG_auto_variable ]
!120 = metadata !{i32 53, i32 26, metadata !115, metadata !107}
!121 = metadata !{i32 786688, metadata !113, metadata !"y_weight", metadata !6, i32 33, metadata !12, i32 0, metadata !107} ; [ DW_TAG_auto_variable ]
!122 = metadata !{i32 48, i32 26, metadata !116, metadata !107}
!123 = metadata !{i32 786688, metadata !116, metadata !"j", metadata !6, i32 48, metadata !12, i32 0, metadata !107} ; [ DW_TAG_auto_variable ]
!124 = metadata !{i32 47, i32 25, metadata !112, metadata !107}
!125 = metadata !{i32 786688, metadata !112, metadata !"i", metadata !6, i32 47, metadata !12, i32 0, metadata !107} ; [ DW_TAG_auto_variable ]
!126 = metadata !{i32 57, i32 2, metadata !113, metadata !107}
!127 = metadata !{i32 786688, metadata !113, metadata !"edge_weight", metadata !6, i32 35, metadata !20, i32 0, metadata !107} ; [ DW_TAG_auto_variable ]
!128 = metadata !{i32 59, i32 2, metadata !113, metadata !107}
!129 = metadata !{i32 786688, metadata !113, metadata !"edge_val", metadata !6, i32 36, metadata !9, i32 0, metadata !107} ; [ DW_TAG_auto_variable ]
!130 = metadata !{i32 62, i32 2, metadata !113, metadata !107}
!131 = metadata !{i32 64, i32 7, metadata !113, metadata !107}
!132 = metadata !{i32 101, i32 3, metadata !101, null}
!133 = metadata !{i32 98, i32 56, metadata !102, null}
!134 = metadata !{i32 786688, metadata !102, metadata !"j", metadata !6, i32 98, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!135 = metadata !{i32 102, i32 2, metadata !99, null}
!136 = metadata !{i32 97, i32 56, metadata !85, null}
!137 = metadata !{i32 786688, metadata !85, metadata !"i", metadata !6, i32 97, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!138 = metadata !{i32 104, i32 45, metadata !94, null}
!139 = metadata !{i32 105, i32 27, metadata !94, null}
!140 = metadata !{i32 786688, metadata !94, metadata !"val", metadata !6, i32 105, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!141 = metadata !{i32 786688, metadata !94, metadata !"fourWide", metadata !6, i32 106, metadata !142, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!142 = metadata !{i32 786454, null, metadata !"OneToFourPixels", metadata !6, i32 9, i64 0, i64 0, i64 0, i32 0, metadata !143} ; [ DW_TAG_typedef ]
!143 = metadata !{i32 786455, null, metadata !"", metadata !6, i32 6, i64 32, i64 32, i64 0, i32 0, null, metadata !144, i32 0, null} ; [ DW_TAG_union_type ]
!144 = metadata !{metadata !145, metadata !149, metadata !150}
!145 = metadata !{i32 786445, metadata !143, metadata !"pix", metadata !6, i32 7, i64 32, i64 8, i64 0, i32 0, metadata !146} ; [ DW_TAG_member ]
!146 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 32, i64 8, i32 0, i32 0, metadata !9, metadata !147, i32 0, i32 0} ; [ DW_TAG_array_type ]
!147 = metadata !{metadata !148}
!148 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ]
!149 = metadata !{i32 786445, metadata !143, metadata !"full", metadata !6, i32 8, i64 32, i64 32, i64 0, i32 0, metadata !20} ; [ DW_TAG_member ]
!150 = metadata !{i32 786478, i32 0, metadata !143, metadata !"", metadata !"", metadata !"", metadata !6, i32 6, metadata !151, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !14, i32 6} ; [ DW_TAG_subprogram ]
!151 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !152, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!152 = metadata !{null, metadata !153}
!153 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !143} ; [ DW_TAG_pointer_type ]
!154 = metadata !{i32 106, i32 19, metadata !94, null}
!155 = metadata !{i32 107, i32 23, metadata !93, null}
!156 = metadata !{i32 108, i32 22, metadata !92, null}
!157 = metadata !{i32 107, i32 32, metadata !93, null}
!158 = metadata !{i32 786688, metadata !93, metadata !"j", metadata !6, i32 107, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!159 = metadata !{i32 110, i32 2, metadata !94, null}
!160 = metadata !{i32 104, i32 39, metadata !95, null}
!161 = metadata !{i32 786688, metadata !95, metadata !"i", metadata !6, i32 104, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!162 = metadata !{i32 111, i32 1, metadata !56, null}
!163 = metadata !{i32 786689, metadata !21, metadata !"index", metadata !6, i32 16777227, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!164 = metadata !{i32 11, i32 34, metadata !21, null}
!165 = metadata !{i32 786689, metadata !21, metadata !"xDiff", metadata !6, i32 33554443, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!166 = metadata !{i32 11, i32 45, metadata !21, null}
!167 = metadata !{i32 786689, metadata !21, metadata !"yDiff", metadata !6, i32 50331659, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!168 = metadata !{i32 11, i32 56, metadata !21, null}
!169 = metadata !{i32 786689, metadata !21, metadata !"Y", metadata !6, i32 83886091, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!170 = metadata !{i32 11, i32 88, metadata !21, null}
!171 = metadata !{i32 13, i32 2, metadata !172, null}
!172 = metadata !{i32 786443, metadata !21, i32 12, i32 1, metadata !6, i32 22} ; [ DW_TAG_lexical_block ]
