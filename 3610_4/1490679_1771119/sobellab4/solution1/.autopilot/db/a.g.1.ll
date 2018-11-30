; ModuleID = 'X:/Bureau/HDMI_3610/3610_4/1490679_1771119/sobellab4/solution1/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

%union.OneToFourPixels.0 = type { i32 }

@y_op = internal unnamed_addr constant [3 x [3 x i8]] [[3 x i8] c"\01\02\01", [3 x i8] zeroinitializer, [3 x i8] c"\FF\FE\FF"], align 1 ; [#uses=2 type=[3 x [3 x i8]]*]
@x_op = internal unnamed_addr constant [3 x [3 x i8]] [[3 x i8] c"\FF\00\01", [3 x i8] c"\FE\00\02", [3 x i8] c"\FF\00\01"], align 1 ; [#uses=2 type=[3 x [3 x i8]]*]
@sobel_filter.str = internal unnamed_addr constant [13 x i8] c"sobel_filter\00" ; [#uses=1 type=[13 x i8]*]
@.str9 = private unnamed_addr constant [14 x i8] c"ZerosFirstRow\00", align 1 ; [#uses=1 type=[14 x i8]*]
@.str8 = private unnamed_addr constant [14 x i8] c"OperatorRows1\00", align 1 ; [#uses=1 type=[14 x i8]*]
@.str7 = private unnamed_addr constant [14 x i8] c"OperatorLines\00", align 1 ; [#uses=1 type=[14 x i8]*]
@.str6 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]
@.str5 = private unnamed_addr constant [6 x i8] c"gmem1\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str4 = private unnamed_addr constant [6 x i8] c"slave\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str3 = private unnamed_addr constant [6 x i8] c"gmem0\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str2 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str14 = private unnamed_addr constant [7 x i8] c"OneTo4\00", align 1 ; [#uses=1 type=[7 x i8]*]
@.str13 = private unnamed_addr constant [4 x i8] c"IMG\00", align 1 ; [#uses=1 type=[4 x i8]*]
@.str12 = private unnamed_addr constant [14 x i8] c"ZerosLastLine\00", align 1 ; [#uses=1 type=[14 x i8]*]
@.str11 = private unnamed_addr constant [15 x i8] c"ZerosFirstLine\00", align 1 ; [#uses=1 type=[15 x i8]*]
@.str10 = private unnamed_addr constant [13 x i8] c"ZerosLastRow\00", align 1 ; [#uses=1 type=[13 x i8]*]
@.str1 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]

; [#uses=0]
define void @sobel_filter(i8* %inter_pix, i32* %out_pix) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecTopModule([13 x i8]* @sobel_filter.str) nounwind
  %superCache = alloca [7680 x i8], align 16      ; [#uses=3 type=[7680 x i8]*]
  %fourWide = alloca %union.OneToFourPixels.0, align 4 ; [#uses=2 type=%union.OneToFourPixels.0*]
  call void @llvm.dbg.value(metadata !{i8* %inter_pix}, i64 0, metadata !51), !dbg !52 ; [debug line = 88:27] [debug variable = inter_pix]
  call void @llvm.dbg.value(metadata !{i32* %out_pix}, i64 0, metadata !53), !dbg !54 ; [debug line = 88:60] [debug variable = out_pix]
  call void (...)* @_ssdm_SpecArrayDimSize(i32* %out_pix, i32 2073600) nounwind, !dbg !55 ; [debug line = 89:2]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %inter_pix, i32 2073600) nounwind, !dbg !57 ; [debug line = 89:46]
  call void (...)* @_ssdm_op_SpecInterface(i8* %inter_pix, i8* getelementptr inbounds ([6 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 16, i32 16, i32 16, i32 16, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !58 ; [debug line = 97:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %out_pix, i8* getelementptr inbounds ([6 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([6 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 16, i32 16, i32 16, i32 16, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !59 ; [debug line = 98:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, i8* getelementptr inbounds ([10 x i8]* @.str6, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !60 ; [debug line = 99:1]
  call void @llvm.dbg.declare(metadata !{[7680 x i8]* %superCache}, metadata !61), !dbg !65 ; [debug line = 103:10] [debug variable = superCache]
  %image.assign = getelementptr inbounds [7680 x i8]* %superCache, i64 0, i64 0, !dbg !66 ; [#uses=4 type=i8*] [debug line = 128:31]
  br label %1, !dbg !72                           ; [debug line = 120:40]

; <label>:1                                       ; preds = %25, %0
  %i = phi i32 [ 0, %0 ], [ %i.2, %25 ]           ; [#uses=8 type=i32]
  %tmp = icmp eq i32 %i, 1081, !dbg !72           ; [#uses=1 type=i1] [debug line = 120:40]
  br i1 %tmp, label %.preheader6.preheader, label %2, !dbg !72 ; [debug line = 120:40]

.preheader6.preheader:                            ; preds = %1
  br label %.preheader6, !dbg !73                 ; [debug line = 178:40]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([14 x i8]* @.str7, i64 0, i64 0)) nounwind, !dbg !75 ; [debug line = 120:62]
  %rbegin9 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([14 x i8]* @.str7, i64 0, i64 0)) nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 120:62]
  %tmp.1 = icmp ult i32 %i, 3, !dbg !76           ; [#uses=1 type=i1] [debug line = 123:2]
  %tmp.2 = mul i32 %i, 1920, !dbg !77             ; [#uses=3 type=i32] [debug line = 124:5]
  %tmp.3 = icmp ugt i32 %i, 2, !dbg !79           ; [#uses=1 type=i1] [debug line = 126:9]
  %tmp.4 = icmp ult i32 %i, 1080, !dbg !79        ; [#uses=1 type=i1] [debug line = 126:9]
  %or.cond = and i1 %tmp.3, %tmp.4, !dbg !79      ; [#uses=1 type=i1] [debug line = 126:9]
  %tmp.5 = and i32 %i, 3, !dbg !80                ; [#uses=1 type=i32] [debug line = 127:5]
  %tmp.6 = mul i32 %tmp.5, 1920, !dbg !80         ; [#uses=1 type=i32] [debug line = 127:5]
  %tmp.7 = add i32 %i, 2, !dbg !66                ; [#uses=1 type=i32] [debug line = 128:31]
  %tmp.8 = and i32 %tmp.7, 3, !dbg !66            ; [#uses=1 type=i32] [debug line = 128:31]
  %tmp.9 = mul i32 %tmp.8, 1920, !dbg !66         ; [#uses=2 type=i32] [debug line = 128:31]
  %tmp.10 = add i32 %tmp.2, -3840, !dbg !66       ; [#uses=2 type=i32] [debug line = 128:31]
  br label %3, !dbg !81                           ; [debug line = 121:41]

; <label>:3                                       ; preds = %24, %2
  %j = phi i32 [ 0, %2 ], [ %j.3, %24 ]           ; [#uses=9 type=i32]
  %tmp.12 = icmp eq i32 %j, 1920, !dbg !81        ; [#uses=1 type=i1] [debug line = 121:41]
  br i1 %tmp.12, label %25, label %4, !dbg !81    ; [debug line = 121:41]

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([14 x i8]* @.str8, i64 0, i64 0)) nounwind, !dbg !82 ; [debug line = 121:59]
  %rbegin2 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([14 x i8]* @.str8, i64 0, i64 0)) nounwind, !dbg !82 ; [#uses=1 type=i32] [debug line = 121:59]
  call void (...)* @_ssdm_op_SpecPipeline(i32 25, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !83 ; [debug line = 122:1]
  br i1 %tmp.1, label %5, label %6, !dbg !76      ; [debug line = 123:2]

; <label>:5                                       ; preds = %4
  %tmp.16 = add i32 %j, %tmp.2, !dbg !77          ; [#uses=1 type=i32] [debug line = 124:5]
  %tmp.17 = zext i32 %tmp.16 to i64, !dbg !77     ; [#uses=2 type=i64] [debug line = 124:5]
  %inter_pix.addr = getelementptr inbounds i8* %inter_pix, i64 %tmp.17, !dbg !77 ; [#uses=1 type=i8*] [debug line = 124:5]
  %inter_pix.load = load i8* %inter_pix.addr, align 1, !dbg !77 ; [#uses=2 type=i8] [debug line = 124:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %inter_pix.load) nounwind
  %superCache.addr.1 = getelementptr inbounds [7680 x i8]* %superCache, i64 0, i64 %tmp.17, !dbg !77 ; [#uses=1 type=i8*] [debug line = 124:5]
  store i8 %inter_pix.load, i8* %superCache.addr.1, align 1, !dbg !77 ; [debug line = 124:5]
  br label %24, !dbg !84                          ; [debug line = 125:4]

; <label>:6                                       ; preds = %4
  br i1 %or.cond, label %7, label %15, !dbg !79   ; [debug line = 126:9]

; <label>:7                                       ; preds = %6
  %tmp.20 = add i32 %j, %tmp.2, !dbg !80          ; [#uses=1 type=i32] [debug line = 127:5]
  %tmp.21 = zext i32 %tmp.20 to i64, !dbg !80     ; [#uses=1 type=i64] [debug line = 127:5]
  %inter_pix.addr.1 = getelementptr inbounds i8* %inter_pix, i64 %tmp.21, !dbg !80 ; [#uses=1 type=i8*] [debug line = 127:5]
  %inter_pix.load.1 = load i8* %inter_pix.addr.1, align 1, !dbg !80 ; [#uses=2 type=i8] [debug line = 127:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %inter_pix.load.1) nounwind
  %tmp.22 = add i32 %j, %tmp.6, !dbg !80          ; [#uses=1 type=i32] [debug line = 127:5]
  %tmp.23 = zext i32 %tmp.22 to i64, !dbg !80     ; [#uses=1 type=i64] [debug line = 127:5]
  %superCache.addr.2 = getelementptr inbounds [7680 x i8]* %superCache, i64 0, i64 %tmp.23, !dbg !80 ; [#uses=1 type=i8*] [debug line = 127:5]
  store i8 %inter_pix.load.1, i8* %superCache.addr.2, align 1, !dbg !80 ; [debug line = 127:5]
  %fullIndex.assign = add i32 %j, %tmp.9, !dbg !66 ; [#uses=2 type=i32] [debug line = 128:31]
  call void @llvm.dbg.value(metadata !{i32 %fullIndex.assign}, i64 0, metadata !85) nounwind, !dbg !86 ; [debug line = 30:34@128:31] [debug variable = fullIndex]
  call void @llvm.dbg.value(metadata !{i8* %image.assign}, i64 0, metadata !87) nounwind, !dbg !88 ; [debug line = 30:55@128:31] [debug variable = image]
  br label %8, !dbg !89                           ; [debug line = 63:16@128:31]

; <label>:8                                       ; preds = %12, %7
  %y_weight.0.i1 = phi i32 [ 0, %7 ], [ %y_weight.1.i26.lcssa, %12 ] ; [#uses=2 type=i32]
  %x_weight.0.i1 = phi i32 [ 0, %7 ], [ %x_weight.1.i27.lcssa, %12 ] ; [#uses=2 type=i32]
  %i.0.i1 = phi i32 [ 0, %7 ], [ %i.6, %12 ]      ; [#uses=4 type=i32]
  %exitcond1.i1 = icmp eq i32 %i.0.i1, 3, !dbg !89 ; [#uses=1 type=i1] [debug line = 63:16@128:31]
  br i1 %exitcond1.i1, label %13, label %9, !dbg !89 ; [debug line = 63:16@128:31]

; <label>:9                                       ; preds = %8
  %rbegin.i1 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !92 ; [#uses=1 type=i32] [debug line = 63:31@128:31]
  call void (...)* @_ssdm_Unroll(i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !94 ; [debug line = 64:1@128:31]
  %tmp.38 = add nsw i32 %i.0.i1, -1, !dbg !95     ; [#uses=2 type=i32] [debug line = 67:26@128:31]
  %tmp.39 = sext i32 %i.0.i1 to i64, !dbg !95     ; [#uses=2 type=i64] [debug line = 67:26@128:31]
  br label %10, !dbg !98                          ; [debug line = 65:16@128:31]

; <label>:10                                      ; preds = %11, %9
  %y_weight.1.i1 = phi i32 [ %y_weight.0.i1, %9 ], [ %y_weight, %11 ] ; [#uses=2 type=i32]
  %x_weight.1.i1 = phi i32 [ %x_weight.0.i1, %9 ], [ %x_weight, %11 ] ; [#uses=2 type=i32]
  %j.0.i1 = phi i32 [ 0, %9 ], [ %j.1, %11 ]      ; [#uses=4 type=i32]
  %exitcond.i1 = icmp eq i32 %j.0.i1, 3, !dbg !98 ; [#uses=1 type=i1] [debug line = 65:16@128:31]
  br i1 %exitcond.i1, label %12, label %11, !dbg !98 ; [debug line = 65:16@128:31]

; <label>:11                                      ; preds = %10
  %tmp.61 = add nsw i32 %j.0.i1, -1, !dbg !95     ; [#uses=2 type=i32] [debug line = 67:26@128:31]
  %tmp.62 = call fastcc zeroext i8 @getVal(i32 %fullIndex.assign, i32 %tmp.38, i32 %tmp.61, i8* %image.assign) nounwind, !dbg !95 ; [#uses=1 type=i8] [debug line = 67:26@128:31]
  %tmp.63 = zext i8 %tmp.62 to i32, !dbg !95      ; [#uses=1 type=i32] [debug line = 67:26@128:31]
  %tmp.64 = sext i32 %j.0.i1 to i64, !dbg !95     ; [#uses=2 type=i64] [debug line = 67:26@128:31]
  %x_op.addr = getelementptr inbounds [3 x [3 x i8]]* @x_op, i64 0, i64 %tmp.39, i64 %tmp.64, !dbg !95 ; [#uses=1 type=i8*] [debug line = 67:26@128:31]
  %x_op.load = load i8* %x_op.addr, align 1, !dbg !95 ; [#uses=2 type=i8] [debug line = 67:26@128:31]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %x_op.load) nounwind
  %tmp.65 = sext i8 %x_op.load to i32, !dbg !95   ; [#uses=1 type=i32] [debug line = 67:26@128:31]
  %tmp.66 = mul nsw i32 %tmp.65, %tmp.63, !dbg !95 ; [#uses=1 type=i32] [debug line = 67:26@128:31]
  %x_weight = add nsw i32 %tmp.66, %x_weight.1.i1, !dbg !95 ; [#uses=1 type=i32] [debug line = 67:26@128:31]
  call void @llvm.dbg.value(metadata !{i32 %x_weight}, i64 0, metadata !99) nounwind, !dbg !95 ; [debug line = 67:26@128:31] [debug variable = x_weight]
  %tmp.68 = call fastcc zeroext i8 @getVal(i32 %fullIndex.assign, i32 %tmp.38, i32 %tmp.61, i8* %image.assign) nounwind, !dbg !100 ; [#uses=1 type=i8] [debug line = 70:26@128:31]
  %tmp.69 = zext i8 %tmp.68 to i32, !dbg !100     ; [#uses=1 type=i32] [debug line = 70:26@128:31]
  %y_op.addr = getelementptr inbounds [3 x [3 x i8]]* @y_op, i64 0, i64 %tmp.39, i64 %tmp.64, !dbg !100 ; [#uses=1 type=i8*] [debug line = 70:26@128:31]
  %y_op.load = load i8* %y_op.addr, align 1, !dbg !100 ; [#uses=2 type=i8] [debug line = 70:26@128:31]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %y_op.load) nounwind
  %tmp.70 = sext i8 %y_op.load to i32, !dbg !100  ; [#uses=1 type=i32] [debug line = 70:26@128:31]
  %tmp.71 = mul nsw i32 %tmp.70, %tmp.69, !dbg !100 ; [#uses=1 type=i32] [debug line = 70:26@128:31]
  %y_weight = add nsw i32 %tmp.71, %y_weight.1.i1, !dbg !100 ; [#uses=1 type=i32] [debug line = 70:26@128:31]
  call void @llvm.dbg.value(metadata !{i32 %y_weight}, i64 0, metadata !101) nounwind, !dbg !100 ; [debug line = 70:26@128:31] [debug variable = y_weight]
  %j.1 = add nsw i32 %j.0.i1, 1, !dbg !102        ; [#uses=1 type=i32] [debug line = 65:25@128:31]
  call void @llvm.dbg.value(metadata !{i32 %j.1}, i64 0, metadata !103) nounwind, !dbg !102 ; [debug line = 65:25@128:31] [debug variable = j]
  br label %10, !dbg !102                         ; [debug line = 65:25@128:31]

; <label>:12                                      ; preds = %10
  %x_weight.1.i27.lcssa = phi i32 [ %x_weight.1.i1, %10 ] ; [#uses=1 type=i32]
  %y_weight.1.i26.lcssa = phi i32 [ %y_weight.1.i1, %10 ] ; [#uses=1 type=i32]
  %rend.i30 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str1, i64 0, i64 0), i32 %rbegin.i1) nounwind, !dbg !104 ; [#uses=0 type=i32] [debug line = 72:2@128:31]
  %i.6 = add nsw i32 %i.0.i1, 1, !dbg !105        ; [#uses=1 type=i32] [debug line = 63:25@128:31]
  call void @llvm.dbg.value(metadata !{i32 %i.6}, i64 0, metadata !106) nounwind, !dbg !105 ; [debug line = 63:25@128:31] [debug variable = i]
  br label %8, !dbg !105                          ; [debug line = 63:25@128:31]

; <label>:13                                      ; preds = %8
  %x_weight.0.i22.lcssa = phi i32 [ %x_weight.0.i1, %8 ] ; [#uses=3 type=i32]
  %y_weight.0.i21.lcssa = phi i32 [ %y_weight.0.i1, %8 ] ; [#uses=3 type=i32]
  %tmp.29 = icmp sgt i32 %x_weight.0.i22.lcssa, 0, !dbg !107 ; [#uses=1 type=i1] [debug line = 74:2@128:31]
  %tmp.30 = sub nsw i32 0, %x_weight.0.i22.lcssa, !dbg !107 ; [#uses=1 type=i32] [debug line = 74:2@128:31]
  %tmp.31 = select i1 %tmp.29, i32 %x_weight.0.i22.lcssa, i32 %tmp.30, !dbg !107 ; [#uses=1 type=i32] [debug line = 74:2@128:31]
  %tmp.32 = icmp sgt i32 %y_weight.0.i21.lcssa, 0, !dbg !107 ; [#uses=1 type=i1] [debug line = 74:2@128:31]
  %tmp.33 = sub nsw i32 0, %y_weight.0.i21.lcssa, !dbg !107 ; [#uses=1 type=i32] [debug line = 74:2@128:31]
  %tmp.34 = select i1 %tmp.32, i32 %y_weight.0.i21.lcssa, i32 %tmp.33, !dbg !107 ; [#uses=1 type=i32] [debug line = 74:2@128:31]
  %edge_weight = add nsw i32 %tmp.34, %tmp.31, !dbg !107 ; [#uses=1 type=i32] [debug line = 74:2@128:31]
  call void @llvm.dbg.value(metadata !{i32 %edge_weight}, i64 0, metadata !108) nounwind, !dbg !107 ; [debug line = 74:2@128:31] [debug variable = edge_weight]
  %tmp.35 = trunc i32 %edge_weight to i8, !dbg !109 ; [#uses=3 type=i8] [debug line = 76:2@128:31]
  %edge_val = xor i8 %tmp.35, -1, !dbg !109       ; [#uses=1 type=i8] [debug line = 76:2@128:31]
  call void @llvm.dbg.value(metadata !{i8 %edge_val}, i64 0, metadata !110) nounwind, !dbg !109 ; [debug line = 76:2@128:31] [debug variable = edge_val]
  %tmp.37 = icmp ult i8 %tmp.35, 55, !dbg !111    ; [#uses=1 type=i1] [debug line = 79:2@128:31]
  br i1 %tmp.37, label %sobel_operator.exit34, label %14, !dbg !111 ; [debug line = 79:2@128:31]

; <label>:14                                      ; preds = %13
  %tmp.52 = icmp ugt i8 %tmp.35, -101, !dbg !112  ; [#uses=1 type=i1] [debug line = 81:7@128:31]
  %..i1 = select i1 %tmp.52, i8 0, i8 %edge_val, !dbg !112 ; [#uses=1 type=i8] [debug line = 81:7@128:31]
  br label %sobel_operator.exit34

sobel_operator.exit34:                            ; preds = %14, %13
  %edge_val.1.i1 = phi i8 [ %..i1, %14 ], [ -1, %13 ] ; [#uses=1 type=i8]
  %tmp.57 = zext i8 %edge_val.1.i1 to i32, !dbg !66 ; [#uses=1 type=i32] [debug line = 128:31]
  %tmp.58 = add i32 %j, %tmp.10, !dbg !66         ; [#uses=1 type=i32] [debug line = 128:31]
  %tmp.59 = zext i32 %tmp.58 to i64, !dbg !66     ; [#uses=1 type=i64] [debug line = 128:31]
  %out_pix.addr.4 = getelementptr inbounds i32* %out_pix, i64 %tmp.59, !dbg !66 ; [#uses=1 type=i32*] [debug line = 128:31]
  store i32 %tmp.57, i32* %out_pix.addr.4, align 4, !dbg !66 ; [debug line = 128:31]
  br label %23, !dbg !113                         ; [debug line = 129:4]

; <label>:15                                      ; preds = %6
  %fullIndex.assign.1 = add i32 %j, %tmp.9, !dbg !114 ; [#uses=2 type=i32] [debug line = 131:31]
  call void @llvm.dbg.value(metadata !{i32 %fullIndex.assign.1}, i64 0, metadata !116) nounwind, !dbg !117 ; [debug line = 30:34@131:31] [debug variable = fullIndex]
  call void @llvm.dbg.value(metadata !{i8* %image.assign}, i64 0, metadata !118) nounwind, !dbg !119 ; [debug line = 30:55@131:31] [debug variable = image]
  br label %16, !dbg !120                         ; [debug line = 63:16@131:31]

; <label>:16                                      ; preds = %20, %15
  %y_weight.0.i = phi i32 [ 0, %15 ], [ %y_weight.1.i.lcssa, %20 ] ; [#uses=2 type=i32]
  %x_weight.0.i = phi i32 [ 0, %15 ], [ %x_weight.1.i.lcssa, %20 ] ; [#uses=2 type=i32]
  %i.0.i = phi i32 [ 0, %15 ], [ %i.7, %20 ]      ; [#uses=4 type=i32]
  %exitcond1.i = icmp eq i32 %i.0.i, 3, !dbg !120 ; [#uses=1 type=i1] [debug line = 63:16@131:31]
  br i1 %exitcond1.i, label %21, label %17, !dbg !120 ; [debug line = 63:16@131:31]

; <label>:17                                      ; preds = %16
  %rbegin.i = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !121 ; [#uses=1 type=i32] [debug line = 63:31@131:31]
  call void (...)* @_ssdm_Unroll(i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !122 ; [debug line = 64:1@131:31]
  %tmp.49 = add nsw i32 %i.0.i, -1, !dbg !123     ; [#uses=2 type=i32] [debug line = 67:26@131:31]
  %tmp.50 = sext i32 %i.0.i to i64, !dbg !123     ; [#uses=2 type=i64] [debug line = 67:26@131:31]
  br label %18, !dbg !124                         ; [debug line = 65:16@131:31]

; <label>:18                                      ; preds = %19, %17
  %y_weight.1.i = phi i32 [ %y_weight.0.i, %17 ], [ %y_weight.1, %19 ] ; [#uses=2 type=i32]
  %x_weight.1.i = phi i32 [ %x_weight.0.i, %17 ], [ %x_weight.1, %19 ] ; [#uses=2 type=i32]
  %j.0.i = phi i32 [ 0, %17 ], [ %j.2, %19 ]      ; [#uses=4 type=i32]
  %exitcond.i = icmp eq i32 %j.0.i, 3, !dbg !124  ; [#uses=1 type=i1] [debug line = 65:16@131:31]
  br i1 %exitcond.i, label %20, label %19, !dbg !124 ; [debug line = 65:16@131:31]

; <label>:19                                      ; preds = %18
  %tmp.78 = add nsw i32 %j.0.i, -1, !dbg !123     ; [#uses=2 type=i32] [debug line = 67:26@131:31]
  %tmp.79 = call fastcc zeroext i8 @getVal(i32 %fullIndex.assign.1, i32 %tmp.49, i32 %tmp.78, i8* %image.assign) nounwind, !dbg !123 ; [#uses=1 type=i8] [debug line = 67:26@131:31]
  %tmp.80 = zext i8 %tmp.79 to i32, !dbg !123     ; [#uses=1 type=i32] [debug line = 67:26@131:31]
  %tmp.81 = sext i32 %j.0.i to i64, !dbg !123     ; [#uses=2 type=i64] [debug line = 67:26@131:31]
  %x_op.addr.1 = getelementptr inbounds [3 x [3 x i8]]* @x_op, i64 0, i64 %tmp.50, i64 %tmp.81, !dbg !123 ; [#uses=1 type=i8*] [debug line = 67:26@131:31]
  %x_op.load.1 = load i8* %x_op.addr.1, align 1, !dbg !123 ; [#uses=2 type=i8] [debug line = 67:26@131:31]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %x_op.load.1) nounwind
  %tmp.82 = sext i8 %x_op.load.1 to i32, !dbg !123 ; [#uses=1 type=i32] [debug line = 67:26@131:31]
  %tmp.83 = mul nsw i32 %tmp.82, %tmp.80, !dbg !123 ; [#uses=1 type=i32] [debug line = 67:26@131:31]
  %x_weight.1 = add nsw i32 %tmp.83, %x_weight.1.i, !dbg !123 ; [#uses=1 type=i32] [debug line = 67:26@131:31]
  call void @llvm.dbg.value(metadata !{i32 %x_weight.1}, i64 0, metadata !125) nounwind, !dbg !123 ; [debug line = 67:26@131:31] [debug variable = x_weight]
  %tmp.85 = call fastcc zeroext i8 @getVal(i32 %fullIndex.assign.1, i32 %tmp.49, i32 %tmp.78, i8* %image.assign) nounwind, !dbg !126 ; [#uses=1 type=i8] [debug line = 70:26@131:31]
  %tmp.86 = zext i8 %tmp.85 to i32, !dbg !126     ; [#uses=1 type=i32] [debug line = 70:26@131:31]
  %y_op.addr.1 = getelementptr inbounds [3 x [3 x i8]]* @y_op, i64 0, i64 %tmp.50, i64 %tmp.81, !dbg !126 ; [#uses=1 type=i8*] [debug line = 70:26@131:31]
  %y_op.load.1 = load i8* %y_op.addr.1, align 1, !dbg !126 ; [#uses=2 type=i8] [debug line = 70:26@131:31]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %y_op.load.1) nounwind
  %tmp.87 = sext i8 %y_op.load.1 to i32, !dbg !126 ; [#uses=1 type=i32] [debug line = 70:26@131:31]
  %tmp.88 = mul nsw i32 %tmp.87, %tmp.86, !dbg !126 ; [#uses=1 type=i32] [debug line = 70:26@131:31]
  %y_weight.1 = add nsw i32 %tmp.88, %y_weight.1.i, !dbg !126 ; [#uses=1 type=i32] [debug line = 70:26@131:31]
  call void @llvm.dbg.value(metadata !{i32 %y_weight.1}, i64 0, metadata !127) nounwind, !dbg !126 ; [debug line = 70:26@131:31] [debug variable = y_weight]
  %j.2 = add nsw i32 %j.0.i, 1, !dbg !128         ; [#uses=1 type=i32] [debug line = 65:25@131:31]
  call void @llvm.dbg.value(metadata !{i32 %j.2}, i64 0, metadata !129) nounwind, !dbg !128 ; [debug line = 65:25@131:31] [debug variable = j]
  br label %18, !dbg !128                         ; [debug line = 65:25@131:31]

; <label>:20                                      ; preds = %18
  %x_weight.1.i.lcssa = phi i32 [ %x_weight.1.i, %18 ] ; [#uses=1 type=i32]
  %y_weight.1.i.lcssa = phi i32 [ %y_weight.1.i, %18 ] ; [#uses=1 type=i32]
  %rend.i = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str1, i64 0, i64 0), i32 %rbegin.i) nounwind, !dbg !130 ; [#uses=0 type=i32] [debug line = 72:2@131:31]
  %i.7 = add nsw i32 %i.0.i, 1, !dbg !131         ; [#uses=1 type=i32] [debug line = 63:25@131:31]
  call void @llvm.dbg.value(metadata !{i32 %i.7}, i64 0, metadata !132) nounwind, !dbg !131 ; [debug line = 63:25@131:31] [debug variable = i]
  br label %16, !dbg !131                         ; [debug line = 63:25@131:31]

; <label>:21                                      ; preds = %16
  %x_weight.0.i.lcssa = phi i32 [ %x_weight.0.i, %16 ] ; [#uses=3 type=i32]
  %y_weight.0.i.lcssa = phi i32 [ %y_weight.0.i, %16 ] ; [#uses=3 type=i32]
  %tmp.40 = icmp sgt i32 %x_weight.0.i.lcssa, 0, !dbg !133 ; [#uses=1 type=i1] [debug line = 74:2@131:31]
  %tmp.41 = sub nsw i32 0, %x_weight.0.i.lcssa, !dbg !133 ; [#uses=1 type=i32] [debug line = 74:2@131:31]
  %tmp.42 = select i1 %tmp.40, i32 %x_weight.0.i.lcssa, i32 %tmp.41, !dbg !133 ; [#uses=1 type=i32] [debug line = 74:2@131:31]
  %tmp.43 = icmp sgt i32 %y_weight.0.i.lcssa, 0, !dbg !133 ; [#uses=1 type=i1] [debug line = 74:2@131:31]
  %tmp.44 = sub nsw i32 0, %y_weight.0.i.lcssa, !dbg !133 ; [#uses=1 type=i32] [debug line = 74:2@131:31]
  %tmp.45 = select i1 %tmp.43, i32 %y_weight.0.i.lcssa, i32 %tmp.44, !dbg !133 ; [#uses=1 type=i32] [debug line = 74:2@131:31]
  %edge_weight.1 = add nsw i32 %tmp.45, %tmp.42, !dbg !133 ; [#uses=1 type=i32] [debug line = 74:2@131:31]
  call void @llvm.dbg.value(metadata !{i32 %edge_weight.1}, i64 0, metadata !134) nounwind, !dbg !133 ; [debug line = 74:2@131:31] [debug variable = edge_weight]
  %tmp.46 = trunc i32 %edge_weight.1 to i8, !dbg !135 ; [#uses=3 type=i8] [debug line = 76:2@131:31]
  %edge_val.1 = xor i8 %tmp.46, -1, !dbg !135     ; [#uses=1 type=i8] [debug line = 76:2@131:31]
  call void @llvm.dbg.value(metadata !{i8 %edge_val.1}, i64 0, metadata !136) nounwind, !dbg !135 ; [debug line = 76:2@131:31] [debug variable = edge_val]
  %tmp.48 = icmp ult i8 %tmp.46, 55, !dbg !137    ; [#uses=1 type=i1] [debug line = 79:2@131:31]
  br i1 %tmp.48, label %sobel_operator.exit, label %22, !dbg !137 ; [debug line = 79:2@131:31]

; <label>:22                                      ; preds = %21
  %tmp.53 = icmp ugt i8 %tmp.46, -101, !dbg !138  ; [#uses=1 type=i1] [debug line = 81:7@131:31]
  %..i = select i1 %tmp.53, i8 0, i8 %edge_val.1, !dbg !138 ; [#uses=1 type=i8] [debug line = 81:7@131:31]
  br label %sobel_operator.exit

sobel_operator.exit:                              ; preds = %22, %21
  %edge_val.1.i = phi i8 [ %..i, %22 ], [ -1, %21 ] ; [#uses=1 type=i8]
  %tmp.74 = zext i8 %edge_val.1.i to i32, !dbg !114 ; [#uses=1 type=i32] [debug line = 131:31]
  %tmp.75 = add i32 %j, %tmp.10, !dbg !114        ; [#uses=1 type=i32] [debug line = 131:31]
  %tmp.76 = zext i32 %tmp.75 to i64, !dbg !114    ; [#uses=1 type=i64] [debug line = 131:31]
  %out_pix.addr.5 = getelementptr inbounds i32* %out_pix, i64 %tmp.76, !dbg !114 ; [#uses=1 type=i32*] [debug line = 131:31]
  store i32 %tmp.74, i32* %out_pix.addr.5, align 4, !dbg !114 ; [debug line = 131:31]
  br label %23

; <label>:23                                      ; preds = %sobel_operator.exit, %sobel_operator.exit34
  br label %24

; <label>:24                                      ; preds = %23, %5
  %rend12 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([14 x i8]* @.str8, i64 0, i64 0), i32 %rbegin2) nounwind, !dbg !139 ; [#uses=0 type=i32] [debug line = 133:3]
  %j.3 = add i32 %j, 1, !dbg !140                 ; [#uses=1 type=i32] [debug line = 121:53]
  call void @llvm.dbg.value(metadata !{i32 %j.3}, i64 0, metadata !141), !dbg !140 ; [debug line = 121:53] [debug variable = j]
  br label %3, !dbg !140                          ; [debug line = 121:53]

; <label>:25                                      ; preds = %3
  %rend10 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([14 x i8]* @.str7, i64 0, i64 0), i32 %rbegin9) nounwind, !dbg !142 ; [#uses=0 type=i32] [debug line = 176:2]
  %i.2 = add i32 %i, 1, !dbg !143                 ; [#uses=1 type=i32] [debug line = 120:56]
  call void @llvm.dbg.value(metadata !{i32 %i.2}, i64 0, metadata !144), !dbg !143 ; [debug line = 120:56] [debug variable = i]
  br label %1, !dbg !143                          ; [debug line = 120:56]

.preheader6:                                      ; preds = %26, %.preheader6.preheader
  %i1 = phi i32 [ %i.1, %26 ], [ 0, %.preheader6.preheader ] ; [#uses=3 type=i32]
  %tmp.11 = icmp eq i32 %i1, 1920, !dbg !73       ; [#uses=1 type=i1] [debug line = 178:40]
  br i1 %tmp.11, label %.preheader5.preheader, label %26, !dbg !73 ; [debug line = 178:40]

.preheader5.preheader:                            ; preds = %.preheader6
  br label %.preheader5, !dbg !145                ; [debug line = 181:58]

; <label>:26                                      ; preds = %.preheader6
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([14 x i8]* @.str9, i64 0, i64 0)) nounwind, !dbg !147 ; [debug line = 180:3]
  %rbegin1 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([14 x i8]* @.str9, i64 0, i64 0)) nounwind, !dbg !147 ; [#uses=1 type=i32] [debug line = 180:3]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !149 ; [debug line = 179:1]
  %tmp.13 = zext i32 %i1 to i64, !dbg !150        ; [#uses=1 type=i64] [debug line = 180:2]
  %out_pix.addr = getelementptr inbounds i32* %out_pix, i64 %tmp.13, !dbg !150 ; [#uses=1 type=i32*] [debug line = 180:2]
  store i32 0, i32* %out_pix.addr, align 4, !dbg !150 ; [debug line = 180:2]
  %rend16 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([14 x i8]* @.str9, i64 0, i64 0), i32 %rbegin1) nounwind, !dbg !151 ; [#uses=0 type=i32] [debug line = 180:15]
  %i.1 = add i32 %i1, 1, !dbg !152                ; [#uses=1 type=i32] [debug line = 178:52]
  call void @llvm.dbg.value(metadata !{i32 %i.1}, i64 0, metadata !153), !dbg !152 ; [debug line = 178:52] [debug variable = i]
  br label %.preheader6, !dbg !152                ; [debug line = 178:52]

.preheader5:                                      ; preds = %27, %.preheader5.preheader
  %i2 = phi i32 [ %i.3, %27 ], [ 2071680, %.preheader5.preheader ] ; [#uses=3 type=i32]
  %exitcond2 = icmp eq i32 %i2, 2073600, !dbg !145 ; [#uses=1 type=i1] [debug line = 181:58]
  br i1 %exitcond2, label %.preheader4.preheader, label %27, !dbg !145 ; [debug line = 181:58]

.preheader4.preheader:                            ; preds = %.preheader5
  br label %.preheader4, !dbg !154                ; [debug line = 184:41]

; <label>:27                                      ; preds = %.preheader5
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([13 x i8]* @.str10, i64 0, i64 0)) nounwind, !dbg !156 ; [debug line = 183:3]
  %rbegin3 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([13 x i8]* @.str10, i64 0, i64 0)) nounwind, !dbg !156 ; [#uses=1 type=i32] [debug line = 183:3]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !158 ; [debug line = 182:1]
  %tmp.18 = zext i32 %i2 to i64, !dbg !159        ; [#uses=1 type=i64] [debug line = 183:2]
  %out_pix.addr.1 = getelementptr inbounds i32* %out_pix, i64 %tmp.18, !dbg !159 ; [#uses=1 type=i32*] [debug line = 183:2]
  store i32 0, i32* %out_pix.addr.1, align 4, !dbg !159 ; [debug line = 183:2]
  %rend20 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([13 x i8]* @.str10, i64 0, i64 0), i32 %rbegin3) nounwind, !dbg !160 ; [#uses=0 type=i32] [debug line = 183:15]
  %i.3 = add i32 %i2, 1, !dbg !161                ; [#uses=1 type=i32] [debug line = 181:79]
  call void @llvm.dbg.value(metadata !{i32 %i.3}, i64 0, metadata !162), !dbg !161 ; [debug line = 181:79] [debug variable = i]
  br label %.preheader5, !dbg !161                ; [debug line = 181:79]

.preheader4:                                      ; preds = %28, %.preheader4.preheader
  %i3 = phi i32 [ %i.4, %28 ], [ 0, %.preheader4.preheader ] ; [#uses=3 type=i32]
  %tmp.26 = icmp ult i32 %i3, 2073600, !dbg !154  ; [#uses=1 type=i1] [debug line = 184:41]
  br i1 %tmp.26, label %28, label %.preheader3.preheader, !dbg !154 ; [debug line = 184:41]

.preheader3.preheader:                            ; preds = %.preheader4
  br label %.preheader3, !dbg !163                ; [debug line = 187:47]

; <label>:28                                      ; preds = %.preheader4
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([15 x i8]* @.str11, i64 0, i64 0)) nounwind, !dbg !165 ; [debug line = 186:3]
  %rbegin4 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([15 x i8]* @.str11, i64 0, i64 0)) nounwind, !dbg !165 ; [#uses=1 type=i32] [debug line = 186:3]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !167 ; [debug line = 185:1]
  %tmp.27 = zext i32 %i3 to i64, !dbg !168        ; [#uses=1 type=i64] [debug line = 186:2]
  %out_pix.addr.2 = getelementptr inbounds i32* %out_pix, i64 %tmp.27, !dbg !168 ; [#uses=1 type=i32*] [debug line = 186:2]
  store i32 0, i32* %out_pix.addr.2, align 4, !dbg !168 ; [debug line = 186:2]
  %rend14 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([15 x i8]* @.str11, i64 0, i64 0), i32 %rbegin4) nounwind, !dbg !169 ; [#uses=0 type=i32] [debug line = 186:15]
  %i.4 = add i32 %i3, 1920, !dbg !170             ; [#uses=1 type=i32] [debug line = 184:62]
  call void @llvm.dbg.value(metadata !{i32 %i.4}, i64 0, metadata !171), !dbg !170 ; [debug line = 184:62] [debug variable = i]
  br label %.preheader4, !dbg !170                ; [debug line = 184:62]

.preheader3:                                      ; preds = %29, %.preheader3.preheader
  %i4 = phi i32 [ %i.5, %29 ], [ 1919, %.preheader3.preheader ] ; [#uses=3 type=i32]
  %tmp.51 = icmp ult i32 %i4, 2073600, !dbg !163  ; [#uses=1 type=i1] [debug line = 187:47]
  br i1 %tmp.51, label %29, label %.preheader.preheader, !dbg !163 ; [debug line = 187:47]

.preheader.preheader:                             ; preds = %.preheader3
  %tmp.56 = bitcast %union.OneToFourPixels.0* %fourWide to [4 x i8]*, !dbg !172 ; [#uses=1 type=[4 x i8]*] [debug line = 197:5]
  %fourWide.addr = getelementptr inbounds %union.OneToFourPixels.0* %fourWide, i64 0, i32 0, !dbg !177 ; [#uses=1 type=i32*] [debug line = 198:4]
  br label %.preheader, !dbg !178                 ; [debug line = 191:21]

; <label>:29                                      ; preds = %.preheader3
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([14 x i8]* @.str12, i64 0, i64 0)) nounwind, !dbg !179 ; [debug line = 189:3]
  %rbegin5 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([14 x i8]* @.str12, i64 0, i64 0)) nounwind, !dbg !179 ; [#uses=1 type=i32] [debug line = 189:3]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !181 ; [debug line = 188:1]
  %tmp.54 = zext i32 %i4 to i64, !dbg !182        ; [#uses=1 type=i64] [debug line = 189:2]
  %out_pix.addr.3 = getelementptr inbounds i32* %out_pix, i64 %tmp.54, !dbg !182 ; [#uses=1 type=i32*] [debug line = 189:2]
  store i32 0, i32* %out_pix.addr.3, align 4, !dbg !182 ; [debug line = 189:2]
  %rend18 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([14 x i8]* @.str12, i64 0, i64 0), i32 %rbegin5) nounwind, !dbg !183 ; [#uses=0 type=i32] [debug line = 189:15]
  %i.5 = add i32 %i4, 1920, !dbg !184             ; [#uses=1 type=i32] [debug line = 187:68]
  call void @llvm.dbg.value(metadata !{i32 %i.5}, i64 0, metadata !185), !dbg !184 ; [debug line = 187:68] [debug variable = i]
  br label %.preheader3, !dbg !184                ; [debug line = 187:68]

.preheader:                                       ; preds = %33, %.preheader.preheader
  %i5 = phi i32 [ %i.8, %33 ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i32]
  %exitcond1 = icmp eq i32 %i5, 2073600, !dbg !178 ; [#uses=1 type=i1] [debug line = 191:21]
  br i1 %exitcond1, label %34, label %30, !dbg !178 ; [debug line = 191:21]

; <label>:30                                      ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([4 x i8]* @.str13, i64 0, i64 0)) nounwind, !dbg !186 ; [debug line = 191:46]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([4 x i8]* @.str13, i64 0, i64 0)) nounwind, !dbg !186 ; [#uses=1 type=i32] [debug line = 191:46]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !187 ; [debug line = 192:1]
  %tmp.91 = sext i32 %i5 to i64, !dbg !188        ; [#uses=1 type=i64] [debug line = 194:26]
  %out_pix.addr.6 = getelementptr inbounds i32* %out_pix, i64 %tmp.91, !dbg !188 ; [#uses=2 type=i32*] [debug line = 194:26]
  %out_pix.load = load i32* %out_pix.addr.6, align 4, !dbg !188 ; [#uses=2 type=i32] [debug line = 194:26]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %out_pix.load) nounwind
  %val = trunc i32 %out_pix.load to i8, !dbg !188 ; [#uses=1 type=i8] [debug line = 194:26]
  call void @llvm.dbg.value(metadata !{i8 %val}, i64 0, metadata !189), !dbg !188 ; [debug line = 194:26] [debug variable = val]
  call void @llvm.dbg.declare(metadata !{%union.OneToFourPixels.0* %fourWide}, metadata !190), !dbg !203 ; [debug line = 195:20] [debug variable = fourWide]
  br label %31, !dbg !204                         ; [debug line = 196:24]

; <label>:31                                      ; preds = %32, %30
  %j6 = phi i32 [ 0, %30 ], [ %j.4, %32 ]         ; [#uses=3 type=i32]
  %exitcond = icmp eq i32 %j6, 4, !dbg !204       ; [#uses=1 type=i1] [debug line = 196:24]
  br i1 %exitcond, label %33, label %32, !dbg !204 ; [debug line = 196:24]

; <label>:32                                      ; preds = %31
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([7 x i8]* @.str14, i64 0, i64 0)) nounwind, !dbg !172 ; [debug line = 197:5]
  %rbegin7 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([7 x i8]* @.str14, i64 0, i64 0)) nounwind, !dbg !172 ; [#uses=1 type=i32] [debug line = 197:5]
  %tmp.94 = sext i32 %j6 to i64, !dbg !172        ; [#uses=1 type=i64] [debug line = 197:5]
  %tmp.56.addr = getelementptr inbounds [4 x i8]* %tmp.56, i64 0, i64 %tmp.94, !dbg !172 ; [#uses=1 type=i8*] [debug line = 197:5]
  store i8 %val, i8* %tmp.56.addr, align 1, !dbg !172 ; [debug line = 197:5]
  %rend8 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([7 x i8]* @.str14, i64 0, i64 0), i32 %rbegin7) nounwind, !dbg !205 ; [#uses=0 type=i32] [debug line = 197:23]
  %j.4 = add nsw i32 %j6, 1, !dbg !206            ; [#uses=1 type=i32] [debug line = 196:33]
  call void @llvm.dbg.value(metadata !{i32 %j.4}, i64 0, metadata !207), !dbg !206 ; [debug line = 196:33] [debug variable = j]
  br label %31, !dbg !206                         ; [debug line = 196:33]

; <label>:33                                      ; preds = %31
  %fourWide.load = load i32* %fourWide.addr, align 4, !dbg !177 ; [#uses=1 type=i32] [debug line = 198:4]
  store i32 %fourWide.load, i32* %out_pix.addr.6, align 4, !dbg !177 ; [debug line = 198:4]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([4 x i8]* @.str13, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !208 ; [#uses=0 type=i32] [debug line = 199:3]
  %i.8 = add nsw i32 %i5, 1, !dbg !209            ; [#uses=1 type=i32] [debug line = 191:40]
  call void @llvm.dbg.value(metadata !{i32 %i.8}, i64 0, metadata !210), !dbg !209 ; [debug line = 191:40] [debug variable = i]
  br label %.preheader, !dbg !209                 ; [debug line = 191:40]

; <label>:34                                      ; preds = %.preheader
  ret void, !dbg !211                             ; [debug line = 201:1]
}

; [#uses=34]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=2]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=4]
define internal fastcc zeroext i8 @getVal(i32 %index, i32 %xDiff, i32 %yDiff, i8* %Y) nounwind uwtable inlinehint {
  call void @llvm.dbg.value(metadata !{i32 %index}, i64 0, metadata !212), !dbg !213 ; [debug line = 11:34] [debug variable = index]
  call void @llvm.dbg.value(metadata !{i32 %xDiff}, i64 0, metadata !214), !dbg !215 ; [debug line = 11:45] [debug variable = xDiff]
  call void @llvm.dbg.value(metadata !{i32 %yDiff}, i64 0, metadata !216), !dbg !217 ; [debug line = 11:56] [debug variable = yDiff]
  call void @llvm.dbg.value(metadata !{i8* %Y}, i64 0, metadata !218), !dbg !219 ; [debug line = 11:88] [debug variable = Y]
  %tmp = mul nsw i32 %yDiff, 1920, !dbg !220      ; [#uses=1 type=i32] [debug line = 13:55]
  %tmp.96 = add i32 %xDiff, %index, !dbg !220     ; [#uses=1 type=i32] [debug line = 13:55]
  %fullIndex = add i32 %tmp.96, %tmp, !dbg !220   ; [#uses=5 type=i32] [debug line = 13:55]
  call void @llvm.dbg.value(metadata !{i32 %fullIndex}, i64 0, metadata !222), !dbg !220 ; [debug line = 13:55] [debug variable = fullIndex]
  %tmp.98 = icmp slt i32 %fullIndex, 0, !dbg !223 ; [#uses=1 type=i1] [debug line = 14:2]
  br i1 %tmp.98, label %1, label %2, !dbg !223    ; [debug line = 14:2]

; <label>:1                                       ; preds = %0
  %fullIndex.2 = add nsw i32 %fullIndex, 7680, !dbg !224 ; [#uses=1 type=i32] [debug line = 17:3]
  call void @llvm.dbg.value(metadata !{i32 %fullIndex.2}, i64 0, metadata !222), !dbg !224 ; [debug line = 17:3] [debug variable = fullIndex]
  br label %3, !dbg !226                          ; [debug line = 18:2]

; <label>:2                                       ; preds = %0
  %tmp.100 = icmp slt i32 %fullIndex, 7680, !dbg !227 ; [#uses=1 type=i1] [debug line = 19:7]
  %fullIndex.3 = add nsw i32 %fullIndex, -7680, !dbg !228 ; [#uses=1 type=i32] [debug line = 22:3]
  call void @llvm.dbg.value(metadata !{i32 %fullIndex.3}, i64 0, metadata !222), !dbg !228 ; [debug line = 22:3] [debug variable = fullIndex]
  %. = select i1 %tmp.100, i32 %fullIndex, i32 %fullIndex.3, !dbg !227 ; [#uses=1 type=i32] [debug line = 19:7]
  br label %3, !dbg !227                          ; [debug line = 19:7]

; <label>:3                                       ; preds = %2, %1
  %fullIndex.1 = phi i32 [ %fullIndex.2, %1 ], [ %., %2 ] ; [#uses=1 type=i32]
  %tmp.102 = sext i32 %fullIndex.1 to i64, !dbg !230 ; [#uses=1 type=i64] [debug line = 25:2]
  %Y.addr = getelementptr inbounds i8* %Y, i64 %tmp.102, !dbg !230 ; [#uses=1 type=i8*] [debug line = 25:2]
  %Y.load = load i8* %Y.addr, align 1, !dbg !230  ; [#uses=2 type=i8] [debug line = 25:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %Y.load) nounwind
  ret i8 %Y.load, !dbg !230                       ; [debug line = 25:2]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=10]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=10]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=6]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=8]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=3]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=2]
declare void @_ssdm_Unroll(...) nounwind

; [#uses=8]
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
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"sobel_operator", metadata !"sobel_operator", metadata !"_Z14sobel_operatoriPh", metadata !6, i32 30, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !14, i32 31} ; [ DW_TAG_subprogram ]
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
!16 = metadata !{i32 786478, i32 0, metadata !6, metadata !"sobel_filter", metadata !"sobel_filter", metadata !"_Z12sobel_filterPhPj", metadata !6, i32 88, metadata !17, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i32*)* @sobel_filter, null, null, metadata !14, i32 89} ; [ DW_TAG_subprogram ]
!17 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !18, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!18 = metadata !{null, metadata !13, metadata !19}
!19 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ]
!20 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!21 = metadata !{i32 786478, i32 0, metadata !6, metadata !"getVal", metadata !"getVal", metadata !"_ZL6getValiiiiPh", metadata !6, i32 11, metadata !22, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !14, i32 12} ; [ DW_TAG_subprogram ]
!22 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !23, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!23 = metadata !{metadata !9, metadata !12, metadata !12, metadata !12, metadata !12, metadata !13}
!24 = metadata !{metadata !25}
!25 = metadata !{metadata !26, metadata !32}
!26 = metadata !{i32 786484, i32 0, metadata !5, metadata !"x_op", metadata !"x_op", metadata !"", metadata !6, i32 52, metadata !27, i32 1, i32 1, [3 x [3 x i8]]* @x_op} ; [ DW_TAG_variable ]
!27 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 72, i64 8, i32 0, i32 0, metadata !28, metadata !30, i32 0, i32 0} ; [ DW_TAG_array_type ]
!28 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_const_type ]
!29 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!30 = metadata !{metadata !31, metadata !31}
!31 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ]
!32 = metadata !{i32 786484, i32 0, metadata !5, metadata !"y_op", metadata !"y_op", metadata !"", metadata !6, i32 57, metadata !27, i32 1, i32 1, [3 x [3 x i8]]* @y_op} ; [ DW_TAG_variable ]
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
!51 = metadata !{i32 786689, metadata !16, metadata !"inter_pix", metadata !6, i32 16777304, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!52 = metadata !{i32 88, i32 27, metadata !16, null}
!53 = metadata !{i32 786689, metadata !16, metadata !"out_pix", metadata !6, i32 33554520, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!54 = metadata !{i32 88, i32 60, metadata !16, null}
!55 = metadata !{i32 89, i32 2, metadata !56, null}
!56 = metadata !{i32 786443, metadata !16, i32 89, i32 1, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!57 = metadata !{i32 89, i32 46, metadata !56, null}
!58 = metadata !{i32 97, i32 1, metadata !56, null}
!59 = metadata !{i32 98, i32 1, metadata !56, null}
!60 = metadata !{i32 99, i32 1, metadata !56, null}
!61 = metadata !{i32 786688, metadata !56, metadata !"superCache", metadata !6, i32 103, metadata !62, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!62 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 61440, i64 8, i32 0, i32 0, metadata !9, metadata !63, i32 0, i32 0} ; [ DW_TAG_array_type ]
!63 = metadata !{metadata !64}
!64 = metadata !{i32 786465, i64 0, i64 7679}     ; [ DW_TAG_subrange_type ]
!65 = metadata !{i32 103, i32 10, metadata !56, null}
!66 = metadata !{i32 128, i32 31, metadata !67, null}
!67 = metadata !{i32 786443, metadata !68, i32 126, i32 33, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!68 = metadata !{i32 786443, metadata !69, i32 121, i32 58, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!69 = metadata !{i32 786443, metadata !70, i32 121, i32 18, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!70 = metadata !{i32 786443, metadata !71, i32 120, i32 61, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!71 = metadata !{i32 786443, metadata !56, i32 120, i32 17, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!72 = metadata !{i32 120, i32 40, metadata !71, null}
!73 = metadata !{i32 178, i32 40, metadata !74, null}
!74 = metadata !{i32 786443, metadata !56, i32 178, i32 17, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!75 = metadata !{i32 120, i32 62, metadata !70, null}
!76 = metadata !{i32 123, i32 2, metadata !68, null}
!77 = metadata !{i32 124, i32 5, metadata !78, null}
!78 = metadata !{i32 786443, metadata !68, i32 123, i32 13, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!79 = metadata !{i32 126, i32 9, metadata !68, null}
!80 = metadata !{i32 127, i32 5, metadata !67, null}
!81 = metadata !{i32 121, i32 41, metadata !69, null}
!82 = metadata !{i32 121, i32 59, metadata !68, null}
!83 = metadata !{i32 122, i32 1, metadata !68, null}
!84 = metadata !{i32 125, i32 4, metadata !78, null}
!85 = metadata !{i32 786689, metadata !5, metadata !"fullIndex", metadata !6, i32 16777246, metadata !11, i32 0, metadata !66} ; [ DW_TAG_arg_variable ]
!86 = metadata !{i32 30, i32 34, metadata !5, metadata !66}
!87 = metadata !{i32 786689, metadata !5, metadata !"image", metadata !6, i32 33554462, metadata !13, i32 0, metadata !66} ; [ DW_TAG_arg_variable ]
!88 = metadata !{i32 30, i32 55, metadata !5, metadata !66}
!89 = metadata !{i32 63, i32 16, metadata !90, metadata !66}
!90 = metadata !{i32 786443, metadata !91, i32 63, i32 2, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!91 = metadata !{i32 786443, metadata !5, i32 31, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!92 = metadata !{i32 63, i32 31, metadata !93, metadata !66}
!93 = metadata !{i32 786443, metadata !90, i32 63, i32 30, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!94 = metadata !{i32 64, i32 1, metadata !93, metadata !66}
!95 = metadata !{i32 67, i32 26, metadata !96, metadata !66}
!96 = metadata !{i32 786443, metadata !97, i32 65, i32 30, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!97 = metadata !{i32 786443, metadata !93, i32 65, i32 2, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!98 = metadata !{i32 65, i32 16, metadata !97, metadata !66}
!99 = metadata !{i32 786688, metadata !91, metadata !"x_weight", metadata !6, i32 46, metadata !12, i32 0, metadata !66} ; [ DW_TAG_auto_variable ]
!100 = metadata !{i32 70, i32 26, metadata !96, metadata !66}
!101 = metadata !{i32 786688, metadata !91, metadata !"y_weight", metadata !6, i32 47, metadata !12, i32 0, metadata !66} ; [ DW_TAG_auto_variable ]
!102 = metadata !{i32 65, i32 25, metadata !97, metadata !66}
!103 = metadata !{i32 786688, metadata !97, metadata !"j", metadata !6, i32 65, metadata !12, i32 0, metadata !66} ; [ DW_TAG_auto_variable ]
!104 = metadata !{i32 72, i32 2, metadata !93, metadata !66}
!105 = metadata !{i32 63, i32 25, metadata !90, metadata !66}
!106 = metadata !{i32 786688, metadata !90, metadata !"i", metadata !6, i32 63, metadata !12, i32 0, metadata !66} ; [ DW_TAG_auto_variable ]
!107 = metadata !{i32 74, i32 2, metadata !91, metadata !66}
!108 = metadata !{i32 786688, metadata !91, metadata !"edge_weight", metadata !6, i32 49, metadata !20, i32 0, metadata !66} ; [ DW_TAG_auto_variable ]
!109 = metadata !{i32 76, i32 2, metadata !91, metadata !66}
!110 = metadata !{i32 786688, metadata !91, metadata !"edge_val", metadata !6, i32 50, metadata !9, i32 0, metadata !66} ; [ DW_TAG_auto_variable ]
!111 = metadata !{i32 79, i32 2, metadata !91, metadata !66}
!112 = metadata !{i32 81, i32 7, metadata !91, metadata !66}
!113 = metadata !{i32 129, i32 4, metadata !67, null}
!114 = metadata !{i32 131, i32 31, metadata !115, null}
!115 = metadata !{i32 786443, metadata !68, i32 130, i32 9, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!116 = metadata !{i32 786689, metadata !5, metadata !"fullIndex", metadata !6, i32 16777246, metadata !11, i32 0, metadata !114} ; [ DW_TAG_arg_variable ]
!117 = metadata !{i32 30, i32 34, metadata !5, metadata !114}
!118 = metadata !{i32 786689, metadata !5, metadata !"image", metadata !6, i32 33554462, metadata !13, i32 0, metadata !114} ; [ DW_TAG_arg_variable ]
!119 = metadata !{i32 30, i32 55, metadata !5, metadata !114}
!120 = metadata !{i32 63, i32 16, metadata !90, metadata !114}
!121 = metadata !{i32 63, i32 31, metadata !93, metadata !114}
!122 = metadata !{i32 64, i32 1, metadata !93, metadata !114}
!123 = metadata !{i32 67, i32 26, metadata !96, metadata !114}
!124 = metadata !{i32 65, i32 16, metadata !97, metadata !114}
!125 = metadata !{i32 786688, metadata !91, metadata !"x_weight", metadata !6, i32 46, metadata !12, i32 0, metadata !114} ; [ DW_TAG_auto_variable ]
!126 = metadata !{i32 70, i32 26, metadata !96, metadata !114}
!127 = metadata !{i32 786688, metadata !91, metadata !"y_weight", metadata !6, i32 47, metadata !12, i32 0, metadata !114} ; [ DW_TAG_auto_variable ]
!128 = metadata !{i32 65, i32 25, metadata !97, metadata !114}
!129 = metadata !{i32 786688, metadata !97, metadata !"j", metadata !6, i32 65, metadata !12, i32 0, metadata !114} ; [ DW_TAG_auto_variable ]
!130 = metadata !{i32 72, i32 2, metadata !93, metadata !114}
!131 = metadata !{i32 63, i32 25, metadata !90, metadata !114}
!132 = metadata !{i32 786688, metadata !90, metadata !"i", metadata !6, i32 63, metadata !12, i32 0, metadata !114} ; [ DW_TAG_auto_variable ]
!133 = metadata !{i32 74, i32 2, metadata !91, metadata !114}
!134 = metadata !{i32 786688, metadata !91, metadata !"edge_weight", metadata !6, i32 49, metadata !20, i32 0, metadata !114} ; [ DW_TAG_auto_variable ]
!135 = metadata !{i32 76, i32 2, metadata !91, metadata !114}
!136 = metadata !{i32 786688, metadata !91, metadata !"edge_val", metadata !6, i32 50, metadata !9, i32 0, metadata !114} ; [ DW_TAG_auto_variable ]
!137 = metadata !{i32 79, i32 2, metadata !91, metadata !114}
!138 = metadata !{i32 81, i32 7, metadata !91, metadata !114}
!139 = metadata !{i32 133, i32 3, metadata !68, null}
!140 = metadata !{i32 121, i32 53, metadata !69, null}
!141 = metadata !{i32 786688, metadata !69, metadata !"j", metadata !6, i32 121, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!142 = metadata !{i32 176, i32 2, metadata !70, null}
!143 = metadata !{i32 120, i32 56, metadata !71, null}
!144 = metadata !{i32 786688, metadata !71, metadata !"i", metadata !6, i32 120, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!145 = metadata !{i32 181, i32 58, metadata !146, null}
!146 = metadata !{i32 786443, metadata !56, i32 181, i32 16, metadata !6, i32 15} ; [ DW_TAG_lexical_block ]
!147 = metadata !{i32 180, i32 3, metadata !148, null}
!148 = metadata !{i32 786443, metadata !74, i32 180, i32 2, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!149 = metadata !{i32 179, i32 1, metadata !148, null}
!150 = metadata !{i32 180, i32 2, metadata !148, null}
!151 = metadata !{i32 180, i32 15, metadata !148, null}
!152 = metadata !{i32 178, i32 52, metadata !74, null}
!153 = metadata !{i32 786688, metadata !74, metadata !"i", metadata !6, i32 178, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!154 = metadata !{i32 184, i32 41, metadata !155, null}
!155 = metadata !{i32 786443, metadata !56, i32 184, i32 18, metadata !6, i32 17} ; [ DW_TAG_lexical_block ]
!156 = metadata !{i32 183, i32 3, metadata !157, null}
!157 = metadata !{i32 786443, metadata !146, i32 183, i32 2, metadata !6, i32 16} ; [ DW_TAG_lexical_block ]
!158 = metadata !{i32 182, i32 1, metadata !157, null}
!159 = metadata !{i32 183, i32 2, metadata !157, null}
!160 = metadata !{i32 183, i32 15, metadata !157, null}
!161 = metadata !{i32 181, i32 79, metadata !146, null}
!162 = metadata !{i32 786688, metadata !146, metadata !"i", metadata !6, i32 181, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!163 = metadata !{i32 187, i32 47, metadata !164, null}
!164 = metadata !{i32 786443, metadata !56, i32 187, i32 17, metadata !6, i32 19} ; [ DW_TAG_lexical_block ]
!165 = metadata !{i32 186, i32 3, metadata !166, null}
!166 = metadata !{i32 786443, metadata !155, i32 186, i32 2, metadata !6, i32 18} ; [ DW_TAG_lexical_block ]
!167 = metadata !{i32 185, i32 1, metadata !166, null}
!168 = metadata !{i32 186, i32 2, metadata !166, null}
!169 = metadata !{i32 186, i32 15, metadata !166, null}
!170 = metadata !{i32 184, i32 62, metadata !155, null}
!171 = metadata !{i32 786688, metadata !155, metadata !"i", metadata !6, i32 184, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!172 = metadata !{i32 197, i32 5, metadata !173, null}
!173 = metadata !{i32 786443, metadata !174, i32 197, i32 5, metadata !6, i32 24} ; [ DW_TAG_lexical_block ]
!174 = metadata !{i32 786443, metadata !175, i32 196, i32 10, metadata !6, i32 23} ; [ DW_TAG_lexical_block ]
!175 = metadata !{i32 786443, metadata !176, i32 191, i32 45, metadata !6, i32 22} ; [ DW_TAG_lexical_block ]
!176 = metadata !{i32 786443, metadata !56, i32 191, i32 7, metadata !6, i32 21} ; [ DW_TAG_lexical_block ]
!177 = metadata !{i32 198, i32 4, metadata !175, null}
!178 = metadata !{i32 191, i32 21, metadata !176, null}
!179 = metadata !{i32 189, i32 3, metadata !180, null}
!180 = metadata !{i32 786443, metadata !164, i32 189, i32 2, metadata !6, i32 20} ; [ DW_TAG_lexical_block ]
!181 = metadata !{i32 188, i32 1, metadata !180, null}
!182 = metadata !{i32 189, i32 2, metadata !180, null}
!183 = metadata !{i32 189, i32 15, metadata !180, null}
!184 = metadata !{i32 187, i32 68, metadata !164, null}
!185 = metadata !{i32 786688, metadata !164, metadata !"i", metadata !6, i32 187, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!186 = metadata !{i32 191, i32 46, metadata !175, null}
!187 = metadata !{i32 192, i32 1, metadata !175, null}
!188 = metadata !{i32 194, i32 26, metadata !175, null}
!189 = metadata !{i32 786688, metadata !175, metadata !"val", metadata !6, i32 194, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!190 = metadata !{i32 786688, metadata !175, metadata !"fourWide", metadata !6, i32 195, metadata !191, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!191 = metadata !{i32 786454, null, metadata !"OneToFourPixels", metadata !6, i32 9, i64 0, i64 0, i64 0, i32 0, metadata !192} ; [ DW_TAG_typedef ]
!192 = metadata !{i32 786455, null, metadata !"", metadata !6, i32 6, i64 32, i64 32, i64 0, i32 0, null, metadata !193, i32 0, null} ; [ DW_TAG_union_type ]
!193 = metadata !{metadata !194, metadata !198, metadata !199}
!194 = metadata !{i32 786445, metadata !192, metadata !"pix", metadata !6, i32 7, i64 32, i64 8, i64 0, i32 0, metadata !195} ; [ DW_TAG_member ]
!195 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 32, i64 8, i32 0, i32 0, metadata !9, metadata !196, i32 0, i32 0} ; [ DW_TAG_array_type ]
!196 = metadata !{metadata !197}
!197 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ]
!198 = metadata !{i32 786445, metadata !192, metadata !"full", metadata !6, i32 8, i64 32, i64 32, i64 0, i32 0, metadata !20} ; [ DW_TAG_member ]
!199 = metadata !{i32 786478, i32 0, metadata !192, metadata !"", metadata !"", metadata !"", metadata !6, i32 6, metadata !200, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !14, i32 6} ; [ DW_TAG_subprogram ]
!200 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !201, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!201 = metadata !{null, metadata !202}
!202 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !192} ; [ DW_TAG_pointer_type ]
!203 = metadata !{i32 195, i32 20, metadata !175, null}
!204 = metadata !{i32 196, i32 24, metadata !174, null}
!205 = metadata !{i32 197, i32 23, metadata !173, null}
!206 = metadata !{i32 196, i32 33, metadata !174, null}
!207 = metadata !{i32 786688, metadata !174, metadata !"j", metadata !6, i32 196, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!208 = metadata !{i32 199, i32 3, metadata !175, null}
!209 = metadata !{i32 191, i32 40, metadata !176, null}
!210 = metadata !{i32 786688, metadata !176, metadata !"i", metadata !6, i32 191, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!211 = metadata !{i32 201, i32 1, metadata !56, null}
!212 = metadata !{i32 786689, metadata !21, metadata !"index", metadata !6, i32 16777227, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!213 = metadata !{i32 11, i32 34, metadata !21, null}
!214 = metadata !{i32 786689, metadata !21, metadata !"xDiff", metadata !6, i32 33554443, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!215 = metadata !{i32 11, i32 45, metadata !21, null}
!216 = metadata !{i32 786689, metadata !21, metadata !"yDiff", metadata !6, i32 50331659, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!217 = metadata !{i32 11, i32 56, metadata !21, null}
!218 = metadata !{i32 786689, metadata !21, metadata !"Y", metadata !6, i32 83886091, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!219 = metadata !{i32 11, i32 88, metadata !21, null}
!220 = metadata !{i32 13, i32 55, metadata !221, null}
!221 = metadata !{i32 786443, metadata !21, i32 12, i32 1, metadata !6, i32 25} ; [ DW_TAG_lexical_block ]
!222 = metadata !{i32 786688, metadata !221, metadata !"fullIndex", metadata !6, i32 13, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!223 = metadata !{i32 14, i32 2, metadata !221, null}
!224 = metadata !{i32 17, i32 3, metadata !225, null}
!225 = metadata !{i32 786443, metadata !221, i32 15, i32 2, metadata !6, i32 26} ; [ DW_TAG_lexical_block ]
!226 = metadata !{i32 18, i32 2, metadata !225, null}
!227 = metadata !{i32 19, i32 7, metadata !221, null}
!228 = metadata !{i32 22, i32 3, metadata !229, null}
!229 = metadata !{i32 786443, metadata !221, i32 20, i32 2, metadata !6, i32 27} ; [ DW_TAG_lexical_block ]
!230 = metadata !{i32 25, i32 2, metadata !221, null}
