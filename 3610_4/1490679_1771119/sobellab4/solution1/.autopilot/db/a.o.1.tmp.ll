; ModuleID = 'X:/Bureau/HDMI_3610/3610_4/1490679_1771119/sobellab4/solution1/.autopilot/db/a.o.1.tmp.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@sobel_filter.str = internal unnamed_addr constant [13 x i8] c"sobel_filter\00" ; [#uses=1 type=[13 x i8]*]
@__empty_str = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=0 type=[1 x i8]*]
@AP_complete_mode = internal unnamed_addr constant [9 x i8] c"COMPLETE\00" ; [#uses=0 type=[9 x i8]*]
@.str9 = private unnamed_addr constant [14 x i8] c"ZerosFirstRow\00", align 1 ; [#uses=3 type=[14 x i8]*]
@.str8 = private unnamed_addr constant [14 x i8] c"OperatorRows1\00", align 1 ; [#uses=3 type=[14 x i8]*]
@.str7 = private unnamed_addr constant [14 x i8] c"OperatorLines\00", align 1 ; [#uses=3 type=[14 x i8]*]
@.str6 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]
@.str5 = private unnamed_addr constant [6 x i8] c"gmem1\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str4 = private unnamed_addr constant [6 x i8] c"slave\00", align 1 ; [#uses=2 type=[6 x i8]*]
@.str3 = private unnamed_addr constant [6 x i8] c"gmem0\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str2 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1 ; [#uses=2 type=[6 x i8]*]
@.str13 = private unnamed_addr constant [4 x i8] c"IMG\00", align 1 ; [#uses=3 type=[4 x i8]*]
@.str12 = private unnamed_addr constant [14 x i8] c"ZerosLastLine\00", align 1 ; [#uses=3 type=[14 x i8]*]
@.str11 = private unnamed_addr constant [15 x i8] c"ZerosFirstLine\00", align 1 ; [#uses=3 type=[15 x i8]*]
@.str10 = private unnamed_addr constant [13 x i8] c"ZerosLastRow\00", align 1 ; [#uses=3 type=[13 x i8]*]
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=20 type=[1 x i8]*]

; [#uses=0]
define void @sobel_filter([2073600 x i8]* %inter_pix, [2073600 x i32]* %out_pix) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([2073600 x i8]* %inter_pix) nounwind, !map !49
  call void (...)* @_ssdm_op_SpecBitsMap([2073600 x i32]* %out_pix) nounwind, !map !55
  call void (...)* @_ssdm_op_SpecTopModule([13 x i8]* @sobel_filter.str) nounwind
  %superCache = alloca [7680 x i8], align 16      ; [#uses=18 type=[7680 x i8]*]
  %fourWide = alloca i32, align 4                 ; [#uses=3 type=i32*]
  call void @llvm.dbg.value(metadata !{[2073600 x i8]* %inter_pix}, i64 0, metadata !59), !dbg !63 ; [debug line = 88:27] [debug variable = inter_pix]
  call void @llvm.dbg.value(metadata !{[2073600 x i32]* %out_pix}, i64 0, metadata !64), !dbg !66 ; [debug line = 88:60] [debug variable = out_pix]
  call void (...)* @_ssdm_op_SpecInterface([2073600 x i8]* %inter_pix, [6 x i8]* @.str2, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [6 x i8]* @.str3, [6 x i8]* @.str4, [1 x i8]* @.str, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str) nounwind
  call void (...)* @_ssdm_op_SpecInterface([2073600 x i32]* %out_pix, [6 x i8]* @.str2, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [6 x i8]* @.str5, [6 x i8]* @.str4, [1 x i8]* @.str, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @.str6, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str) nounwind, !dbg !67 ; [debug line = 99:1]
  call void @llvm.dbg.declare(metadata !{[7680 x i8]* %superCache}, metadata !69), !dbg !73 ; [debug line = 103:10] [debug variable = superCache]
  br label %1, !dbg !74                           ; [debug line = 120:40]

; <label>:1                                       ; preds = %16, %0
  %i = phi i32 [ 0, %0 ], [ %i.2, %16 ]           ; [#uses=9 type=i32]
  %tmp = icmp eq i32 %i, 1081, !dbg !74           ; [#uses=1 type=i1] [debug line = 120:40]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1081, i64 1081, i64 1081) nounwind ; [#uses=0 type=i32]
  br i1 %tmp, label %.preheader6.preheader, label %3, !dbg !74 ; [debug line = 120:40]

.preheader6.preheader:                            ; preds = %1
  br label %.preheader6, !dbg !76                 ; [debug line = 178:40]

; <label>:3                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @.str7) nounwind, !dbg !78 ; [debug line = 120:62]
  %tmp.23 = call i32 (...)* @_ssdm_op_SpecRegionBegin([14 x i8]* @.str7) nounwind, !dbg !78 ; [#uses=1 type=i32] [debug line = 120:62]
  %tmp.1 = icmp ult i32 %i, 3, !dbg !80           ; [#uses=1 type=i1] [debug line = 123:2]
  %_shl1 = shl i32 %i, 11, !dbg !83               ; [#uses=1 type=i32] [debug line = 124:5]
  %_shl2 = shl i32 %i, 7, !dbg !83                ; [#uses=1 type=i32] [debug line = 124:5]
  %tmp.2 = sub i32 %_shl1, %_shl2, !dbg !83       ; [#uses=3 type=i32] [debug line = 124:5]
  %tmp.3 = icmp ugt i32 %i, 2, !dbg !85           ; [#uses=1 type=i1] [debug line = 126:9]
  %tmp.4 = icmp ult i32 %i, 1080, !dbg !85        ; [#uses=1 type=i1] [debug line = 126:9]
  %or.cond = and i1 %tmp.3, %tmp.4, !dbg !85      ; [#uses=1 type=i1] [debug line = 126:9]
  %tmp.5 = and i32 %i, 3, !dbg !86                ; [#uses=2 type=i32] [debug line = 127:5]
  %_shl3 = shl nuw nsw i32 %tmp.5, 11, !dbg !86   ; [#uses=1 type=i32] [debug line = 127:5]
  %_shl4 = shl nuw nsw i32 %tmp.5, 7, !dbg !86    ; [#uses=1 type=i32] [debug line = 127:5]
  %tmp.6 = sub i32 %_shl3, %_shl4, !dbg !86       ; [#uses=1 type=i32] [debug line = 127:5]
  %tmp.7 = add i32 %i, 2, !dbg !88                ; [#uses=1 type=i32] [debug line = 128:31]
  %tmp.8 = and i32 %tmp.7, 3, !dbg !88            ; [#uses=2 type=i32] [debug line = 128:31]
  %_shl = shl nuw nsw i32 %tmp.8, 11, !dbg !88    ; [#uses=1 type=i32] [debug line = 128:31]
  %_shl5 = shl nuw nsw i32 %tmp.8, 7, !dbg !88    ; [#uses=1 type=i32] [debug line = 128:31]
  %tmp.9 = sub i32 %_shl, %_shl5, !dbg !88        ; [#uses=2 type=i32] [debug line = 128:31]
  %tmp. = add i32 %tmp.2, -3840, !dbg !88         ; [#uses=2 type=i32] [debug line = 128:31]
  br label %4, !dbg !89                           ; [debug line = 121:41]

; <label>:4                                       ; preds = %14, %3
  %j = phi i32 [ 0, %3 ], [ %j.1, %14 ]           ; [#uses=9 type=i32]
  %tmp.11 = icmp eq i32 %j, 1920, !dbg !89        ; [#uses=1 type=i1] [debug line = 121:41]
  %5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1920, i64 1920, i64 1920) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.11, label %16, label %6, !dbg !89    ; [debug line = 121:41]

; <label>:6                                       ; preds = %4
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @.str8) nounwind, !dbg !90 ; [debug line = 121:59]
  %tmp.27 = call i32 (...)* @_ssdm_op_SpecRegionBegin([14 x i8]* @.str8) nounwind, !dbg !90 ; [#uses=1 type=i32] [debug line = 121:59]
  call void (...)* @_ssdm_op_SpecPipeline(i32 25, i32 1, i32 1, i32 0, [1 x i8]* @.str) nounwind, !dbg !91 ; [debug line = 122:1]
  br i1 %tmp.1, label %7, label %8, !dbg !80      ; [debug line = 123:2]

; <label>:7                                       ; preds = %6
  %tmp.13 = add i32 %tmp.2, %j, !dbg !83          ; [#uses=1 type=i32] [debug line = 124:5]
  %tmp.14 = zext i32 %tmp.13 to i64, !dbg !83     ; [#uses=2 type=i64] [debug line = 124:5]
  %inter_pix.addr = getelementptr [2073600 x i8]* %inter_pix, i64 0, i64 %tmp.14, !dbg !83 ; [#uses=1 type=i8*] [debug line = 124:5]
  %inter_pix.load = load i8* %inter_pix.addr, align 1, !dbg !83 ; [#uses=1 type=i8] [debug line = 124:5]
  %superCache.addr = getelementptr inbounds [7680 x i8]* %superCache, i64 0, i64 %tmp.14, !dbg !83 ; [#uses=1 type=i8*] [debug line = 124:5]
  store i8 %inter_pix.load, i8* %superCache.addr, align 1, !dbg !83 ; [debug line = 124:5]
  br label %14, !dbg !92                          ; [debug line = 125:4]

; <label>:8                                       ; preds = %6
  br i1 %or.cond, label %9, label %11, !dbg !85   ; [debug line = 126:9]

; <label>:9                                       ; preds = %8
  %tmp.16 = add i32 %tmp.2, %j, !dbg !86          ; [#uses=1 type=i32] [debug line = 127:5]
  %tmp.17 = zext i32 %tmp.16 to i64, !dbg !86     ; [#uses=1 type=i64] [debug line = 127:5]
  %inter_pix.addr.1 = getelementptr [2073600 x i8]* %inter_pix, i64 0, i64 %tmp.17, !dbg !86 ; [#uses=1 type=i8*] [debug line = 127:5]
  %inter_pix.load.1 = load i8* %inter_pix.addr.1, align 1, !dbg !86 ; [#uses=1 type=i8] [debug line = 127:5]
  %tmp.18 = add i32 %tmp.6, %j, !dbg !86          ; [#uses=1 type=i32] [debug line = 127:5]
  %tmp.19 = zext i32 %tmp.18 to i64, !dbg !86     ; [#uses=1 type=i64] [debug line = 127:5]
  %superCache.addr.1 = getelementptr inbounds [7680 x i8]* %superCache, i64 0, i64 %tmp.19, !dbg !86 ; [#uses=1 type=i8*] [debug line = 127:5]
  store i8 %inter_pix.load.1, i8* %superCache.addr.1, align 1, !dbg !86 ; [debug line = 127:5]
  %fullIndex.assign = add i32 %tmp.9, %j, !dbg !88 ; [#uses=8 type=i32] [debug line = 128:31]
  call void @llvm.dbg.value(metadata !{i32 %fullIndex.assign}, i64 0, metadata !93) nounwind, !dbg !94 ; [debug line = 30:34@128:31] [debug variable = fullIndex]
  %tmp.37 = call fastcc zeroext i8 @getVal(i32 %fullIndex.assign, i32 -1, i32 -1, [7680 x i8]* %superCache) nounwind, !dbg !95 ; [#uses=1 type=i8] [debug line = 67:26@128:31]
  %tmp.521 = zext i8 %tmp.37 to i32, !dbg !95     ; [#uses=2 type=i32] [debug line = 67:26@128:31]
  %tmp.40 = call fastcc zeroext i8 @getVal(i32 %fullIndex.assign, i32 -1, i32 0, [7680 x i8]* %superCache) nounwind, !dbg !95 ; [#uses=1 type=i8] [debug line = 67:26@128:31]
  %tmp.57.0.1 = zext i8 %tmp.40 to i32, !dbg !101 ; [#uses=1 type=i32] [debug line = 70:26@128:31]
  %tmp.59.0.1 = shl nuw nsw i32 %tmp.57.0.1, 1, !dbg !101 ; [#uses=1 type=i32] [debug line = 70:26@128:31]
  %y_weight.0.1 = add nsw i32 %tmp.59.0.1, %tmp.521, !dbg !101 ; [#uses=1 type=i32] [debug line = 70:26@128:31]
  %tmp.41 = call fastcc zeroext i8 @getVal(i32 %fullIndex.assign, i32 -1, i32 1, [7680 x i8]* %superCache) nounwind, !dbg !95 ; [#uses=1 type=i8] [debug line = 67:26@128:31]
  %tmp.52.0.2 = zext i8 %tmp.41 to i32, !dbg !95  ; [#uses=2 type=i32] [debug line = 67:26@128:31]
  %x_weight.0.2 = sub i32 %tmp.52.0.2, %tmp.521, !dbg !95 ; [#uses=1 type=i32] [debug line = 67:26@128:31]
  %tmp.42 = call fastcc zeroext i8 @getVal(i32 %fullIndex.assign, i32 0, i32 -1, [7680 x i8]* %superCache) nounwind, !dbg !95 ; [#uses=1 type=i8] [debug line = 67:26@128:31]
  %tmp.52.1 = zext i8 %tmp.42 to i32, !dbg !95    ; [#uses=1 type=i32] [debug line = 67:26@128:31]
  %_shl6 = shl nuw nsw i32 %tmp.52.1, 1, !dbg !95 ; [#uses=1 type=i32] [debug line = 67:26@128:31]
  %x_weight.127.1 = sub i32 %x_weight.0.2, %_shl6, !dbg !95 ; [#uses=1 type=i32] [debug line = 67:26@128:31]
  %tmp.45 = call fastcc zeroext i8 @getVal(i32 %fullIndex.assign, i32 0, i32 1, [7680 x i8]* %superCache) nounwind, !dbg !95 ; [#uses=1 type=i8] [debug line = 67:26@128:31]
  %tmp.52.1.2 = zext i8 %tmp.45 to i32, !dbg !95  ; [#uses=1 type=i32] [debug line = 67:26@128:31]
  %tmp.55.1.2 = shl nuw nsw i32 %tmp.52.1.2, 1, !dbg !95 ; [#uses=1 type=i32] [debug line = 67:26@128:31]
  %x_weight.127.2 = add nsw i32 %tmp.55.1.2, %x_weight.127.1, !dbg !95 ; [#uses=1 type=i32] [debug line = 67:26@128:31]
  %y_weight.130.2 = add i32 %tmp.52.0.2, %y_weight.0.1, !dbg !101 ; [#uses=1 type=i32] [debug line = 70:26@128:31]
  %tmp.46 = call fastcc zeroext i8 @getVal(i32 %fullIndex.assign, i32 1, i32 -1, [7680 x i8]* %superCache) nounwind, !dbg !95 ; [#uses=1 type=i8] [debug line = 67:26@128:31]
  %tmp.52.2 = zext i8 %tmp.46 to i32, !dbg !95    ; [#uses=2 type=i32] [debug line = 67:26@128:31]
  %x_weight.2 = sub i32 %x_weight.127.2, %tmp.52.2, !dbg !95 ; [#uses=2 type=i32] [debug line = 67:26@128:31]
  %y_weight.2 = sub i32 %y_weight.130.2, %tmp.52.2, !dbg !101 ; [#uses=1 type=i32] [debug line = 70:26@128:31]
  %tmp.50 = call fastcc zeroext i8 @getVal(i32 %fullIndex.assign, i32 1, i32 0, [7680 x i8]* %superCache) nounwind, !dbg !95 ; [#uses=1 type=i8] [debug line = 67:26@128:31]
  %tmp.57.2.1 = zext i8 %tmp.50 to i32, !dbg !101 ; [#uses=1 type=i32] [debug line = 70:26@128:31]
  %_shl7 = shl nuw nsw i32 %tmp.57.2.1, 1, !dbg !101 ; [#uses=1 type=i32] [debug line = 70:26@128:31]
  %y_weight.2.1 = sub i32 %y_weight.2, %_shl7, !dbg !101 ; [#uses=1 type=i32] [debug line = 70:26@128:31]
  %tmp.51 = call fastcc zeroext i8 @getVal(i32 %fullIndex.assign, i32 1, i32 1, [7680 x i8]* %superCache) nounwind, !dbg !95 ; [#uses=2 type=i8] [debug line = 67:26@128:31]
  %tmp.52.2.2 = zext i8 %tmp.51 to i32, !dbg !95  ; [#uses=2 type=i32] [debug line = 67:26@128:31]
  %tmp.52 = trunc i32 %x_weight.2 to i8           ; [#uses=1 type=i8]
  %x_weight.2.2 = add nsw i32 %tmp.52.2.2, %x_weight.2, !dbg !95 ; [#uses=1 type=i32] [debug line = 67:26@128:31]
  %y_weight.2.2 = sub i32 %y_weight.2.1, %tmp.52.2.2, !dbg !101 ; [#uses=2 type=i32] [debug line = 70:26@128:31]
  %tmp.22 = icmp sgt i32 %x_weight.2.2, 0, !dbg !102 ; [#uses=1 type=i1] [debug line = 74:2@128:31]
  %tmp.53 = add i8 %tmp.52, %tmp.51, !dbg !102    ; [#uses=2 type=i8] [debug line = 74:2@128:31]
  %tmp.54 = sub i8 0, %tmp.53, !dbg !102          ; [#uses=1 type=i8] [debug line = 74:2@128:31]
  %tmp.55 = select i1 %tmp.22, i8 %tmp.53, i8 %tmp.54, !dbg !102 ; [#uses=1 type=i8] [debug line = 74:2@128:31]
  %tmp.25 = icmp sgt i32 %y_weight.2.2, 0, !dbg !102 ; [#uses=1 type=i1] [debug line = 74:2@128:31]
  %tmp.56 = trunc i32 %y_weight.2.2 to i8, !dbg !102 ; [#uses=2 type=i8] [debug line = 74:2@128:31]
  %tmp.57 = sub i8 0, %tmp.56, !dbg !102          ; [#uses=1 type=i8] [debug line = 74:2@128:31]
  %tmp.58 = select i1 %tmp.25, i8 %tmp.56, i8 %tmp.57, !dbg !102 ; [#uses=1 type=i8] [debug line = 74:2@128:31]
  %tmp.28 = add i8 %tmp.55, %tmp.58, !dbg !103    ; [#uses=3 type=i8] [debug line = 76:2@128:31]
  %edge_val = xor i8 %tmp.28, -1, !dbg !103       ; [#uses=1 type=i8] [debug line = 76:2@128:31]
  call void @llvm.dbg.value(metadata !{i8 %edge_val}, i64 0, metadata !104) nounwind, !dbg !103 ; [debug line = 76:2@128:31] [debug variable = edge_val]
  %tmp.29 = icmp ult i8 %tmp.28, 55, !dbg !105    ; [#uses=1 type=i1] [debug line = 79:2@128:31]
  br i1 %tmp.29, label %sobel_operator.exit34, label %10, !dbg !105 ; [debug line = 79:2@128:31]

; <label>:10                                      ; preds = %9
  %tmp.43 = icmp ugt i8 %tmp.28, -101, !dbg !106  ; [#uses=1 type=i1] [debug line = 81:7@128:31]
  %..i1 = select i1 %tmp.43, i8 0, i8 %edge_val, !dbg !106 ; [#uses=1 type=i8] [debug line = 81:7@128:31]
  br label %sobel_operator.exit34

sobel_operator.exit34:                            ; preds = %10, %9
  %edge_val.1.i1 = phi i8 [ %..i1, %10 ], [ -1, %9 ] ; [#uses=1 type=i8]
  %tmp.47 = zext i8 %edge_val.1.i1 to i32, !dbg !88 ; [#uses=1 type=i32] [debug line = 128:31]
  %tmp.48 = add i32 %tmp., %j, !dbg !88           ; [#uses=1 type=i32] [debug line = 128:31]
  %tmp.49 = zext i32 %tmp.48 to i64, !dbg !88     ; [#uses=1 type=i64] [debug line = 128:31]
  %out_pix.addr.5 = getelementptr [2073600 x i32]* %out_pix, i64 0, i64 %tmp.49, !dbg !88 ; [#uses=1 type=i32*] [debug line = 128:31]
  store i32 %tmp.47, i32* %out_pix.addr.5, align 4, !dbg !88 ; [debug line = 128:31]
  br label %13, !dbg !107                         ; [debug line = 129:4]

; <label>:11                                      ; preds = %8
  %fullIndex.assign.1 = add i32 %tmp.9, %j, !dbg !108 ; [#uses=8 type=i32] [debug line = 131:31]
  call void @llvm.dbg.value(metadata !{i32 %fullIndex.assign.1}, i64 0, metadata !110) nounwind, !dbg !111 ; [debug line = 30:34@131:31] [debug variable = fullIndex]
  %tmp.59 = call fastcc zeroext i8 @getVal(i32 %fullIndex.assign.1, i32 -1, i32 -1, [7680 x i8]* %superCache) nounwind, !dbg !112 ; [#uses=1 type=i8] [debug line = 67:26@131:31]
  %tmp.651 = zext i8 %tmp.59 to i32, !dbg !112    ; [#uses=2 type=i32] [debug line = 67:26@131:31]
  %tmp.63 = call fastcc zeroext i8 @getVal(i32 %fullIndex.assign.1, i32 -1, i32 0, [7680 x i8]* %superCache) nounwind, !dbg !112 ; [#uses=1 type=i8] [debug line = 67:26@131:31]
  %tmp.70.0.1 = zext i8 %tmp.63 to i32, !dbg !113 ; [#uses=1 type=i32] [debug line = 70:26@131:31]
  %tmp.72.0.1 = shl nuw nsw i32 %tmp.70.0.1, 1, !dbg !113 ; [#uses=1 type=i32] [debug line = 70:26@131:31]
  %y_weight.1.0.1 = add nsw i32 %tmp.72.0.1, %tmp.651, !dbg !113 ; [#uses=1 type=i32] [debug line = 70:26@131:31]
  %tmp.64 = call fastcc zeroext i8 @getVal(i32 %fullIndex.assign.1, i32 -1, i32 1, [7680 x i8]* %superCache) nounwind, !dbg !112 ; [#uses=1 type=i8] [debug line = 67:26@131:31]
  %tmp.65.0.2 = zext i8 %tmp.64 to i32, !dbg !112 ; [#uses=2 type=i32] [debug line = 67:26@131:31]
  %x_weight.1.0.2 = sub i32 %tmp.65.0.2, %tmp.651, !dbg !112 ; [#uses=1 type=i32] [debug line = 67:26@131:31]
  %tmp.65 = call fastcc zeroext i8 @getVal(i32 %fullIndex.assign.1, i32 0, i32 -1, [7680 x i8]* %superCache) nounwind, !dbg !112 ; [#uses=1 type=i8] [debug line = 67:26@131:31]
  %tmp.65.1 = zext i8 %tmp.65 to i32, !dbg !112   ; [#uses=1 type=i32] [debug line = 67:26@131:31]
  %_shl8 = shl nuw nsw i32 %tmp.65.1, 1, !dbg !112 ; [#uses=1 type=i32] [debug line = 67:26@131:31]
  %x_weight.1.1.1 = sub i32 %x_weight.1.0.2, %_shl8, !dbg !112 ; [#uses=1 type=i32] [debug line = 67:26@131:31]
  %tmp.66 = call fastcc zeroext i8 @getVal(i32 %fullIndex.assign.1, i32 0, i32 1, [7680 x i8]* %superCache) nounwind, !dbg !112 ; [#uses=1 type=i8] [debug line = 67:26@131:31]
  %tmp.65.1.2 = zext i8 %tmp.66 to i32, !dbg !112 ; [#uses=1 type=i32] [debug line = 67:26@131:31]
  %tmp.68.1.2 = shl nuw nsw i32 %tmp.65.1.2, 1, !dbg !112 ; [#uses=1 type=i32] [debug line = 67:26@131:31]
  %x_weight.1.1.2 = add nsw i32 %tmp.68.1.2, %x_weight.1.1.1, !dbg !112 ; [#uses=1 type=i32] [debug line = 67:26@131:31]
  %y_weight.1.1.2 = add i32 %tmp.65.0.2, %y_weight.1.0.1, !dbg !113 ; [#uses=1 type=i32] [debug line = 70:26@131:31]
  %tmp.67 = call fastcc zeroext i8 @getVal(i32 %fullIndex.assign.1, i32 1, i32 -1, [7680 x i8]* %superCache) nounwind, !dbg !112 ; [#uses=1 type=i8] [debug line = 67:26@131:31]
  %tmp.65.2 = zext i8 %tmp.67 to i32, !dbg !112   ; [#uses=2 type=i32] [debug line = 67:26@131:31]
  %x_weight.1.2 = sub i32 %x_weight.1.1.2, %tmp.65.2, !dbg !112 ; [#uses=2 type=i32] [debug line = 67:26@131:31]
  %y_weight.1.2 = sub i32 %y_weight.1.1.2, %tmp.65.2, !dbg !113 ; [#uses=1 type=i32] [debug line = 70:26@131:31]
  %tmp.68 = call fastcc zeroext i8 @getVal(i32 %fullIndex.assign.1, i32 1, i32 0, [7680 x i8]* %superCache) nounwind, !dbg !112 ; [#uses=1 type=i8] [debug line = 67:26@131:31]
  %tmp.70.2.1 = zext i8 %tmp.68 to i32, !dbg !113 ; [#uses=1 type=i32] [debug line = 70:26@131:31]
  %_shl9 = shl nuw nsw i32 %tmp.70.2.1, 1, !dbg !113 ; [#uses=1 type=i32] [debug line = 70:26@131:31]
  %y_weight.1.2.1 = sub i32 %y_weight.1.2, %_shl9, !dbg !113 ; [#uses=1 type=i32] [debug line = 70:26@131:31]
  %tmp.69 = call fastcc zeroext i8 @getVal(i32 %fullIndex.assign.1, i32 1, i32 1, [7680 x i8]* %superCache) nounwind, !dbg !112 ; [#uses=2 type=i8] [debug line = 67:26@131:31]
  %tmp.65.2.2 = zext i8 %tmp.69 to i32, !dbg !112 ; [#uses=2 type=i32] [debug line = 67:26@131:31]
  %tmp.70 = trunc i32 %x_weight.1.2 to i8         ; [#uses=1 type=i8]
  %x_weight.1.2.2 = add nsw i32 %tmp.65.2.2, %x_weight.1.2, !dbg !112 ; [#uses=1 type=i32] [debug line = 67:26@131:31]
  %y_weight.1.2.2 = sub i32 %y_weight.1.2.1, %tmp.65.2.2, !dbg !113 ; [#uses=2 type=i32] [debug line = 70:26@131:31]
  %tmp.32 = icmp sgt i32 %x_weight.1.2.2, 0, !dbg !114 ; [#uses=1 type=i1] [debug line = 74:2@131:31]
  %tmp.71 = add i8 %tmp.70, %tmp.69, !dbg !114    ; [#uses=2 type=i8] [debug line = 74:2@131:31]
  %tmp.72 = sub i8 0, %tmp.71, !dbg !114          ; [#uses=1 type=i8] [debug line = 74:2@131:31]
  %tmp.74 = select i1 %tmp.32, i8 %tmp.71, i8 %tmp.72, !dbg !114 ; [#uses=1 type=i8] [debug line = 74:2@131:31]
  %tmp.35 = icmp sgt i32 %y_weight.1.2.2, 0, !dbg !114 ; [#uses=1 type=i1] [debug line = 74:2@131:31]
  %tmp.75 = trunc i32 %y_weight.1.2.2 to i8, !dbg !114 ; [#uses=2 type=i8] [debug line = 74:2@131:31]
  %tmp.76 = sub i8 0, %tmp.75, !dbg !114          ; [#uses=1 type=i8] [debug line = 74:2@131:31]
  %tmp.77 = select i1 %tmp.35, i8 %tmp.75, i8 %tmp.76, !dbg !114 ; [#uses=1 type=i8] [debug line = 74:2@131:31]
  %tmp.38 = add i8 %tmp.74, %tmp.77, !dbg !115    ; [#uses=3 type=i8] [debug line = 76:2@131:31]
  %edge_val.1 = xor i8 %tmp.38, -1, !dbg !115     ; [#uses=1 type=i8] [debug line = 76:2@131:31]
  call void @llvm.dbg.value(metadata !{i8 %edge_val.1}, i64 0, metadata !116) nounwind, !dbg !115 ; [debug line = 76:2@131:31] [debug variable = edge_val]
  %tmp.39 = icmp ult i8 %tmp.38, 55, !dbg !117    ; [#uses=1 type=i1] [debug line = 79:2@131:31]
  br i1 %tmp.39, label %sobel_operator.exit, label %12, !dbg !117 ; [debug line = 79:2@131:31]

; <label>:12                                      ; preds = %11
  %tmp.44 = icmp ugt i8 %tmp.38, -101, !dbg !118  ; [#uses=1 type=i1] [debug line = 81:7@131:31]
  %..i = select i1 %tmp.44, i8 0, i8 %edge_val.1, !dbg !118 ; [#uses=1 type=i8] [debug line = 81:7@131:31]
  br label %sobel_operator.exit

sobel_operator.exit:                              ; preds = %12, %11
  %edge_val.1.i = phi i8 [ %..i, %12 ], [ -1, %11 ] ; [#uses=1 type=i8]
  %tmp.60 = zext i8 %edge_val.1.i to i32, !dbg !108 ; [#uses=1 type=i32] [debug line = 131:31]
  %tmp.61 = add i32 %tmp., %j, !dbg !108          ; [#uses=1 type=i32] [debug line = 131:31]
  %tmp.62 = zext i32 %tmp.61 to i64, !dbg !108    ; [#uses=1 type=i64] [debug line = 131:31]
  %out_pix.addr.6 = getelementptr [2073600 x i32]* %out_pix, i64 0, i64 %tmp.62, !dbg !108 ; [#uses=1 type=i32*] [debug line = 131:31]
  store i32 %tmp.60, i32* %out_pix.addr.6, align 4, !dbg !108 ; [debug line = 131:31]
  br label %13

; <label>:13                                      ; preds = %sobel_operator.exit, %sobel_operator.exit34
  br label %14

; <label>:14                                      ; preds = %13, %7
  %15 = call i32 (...)* @_ssdm_op_SpecRegionEnd([14 x i8]* @.str8, i32 %tmp.27) nounwind, !dbg !119 ; [#uses=0 type=i32] [debug line = 133:3]
  %j.1 = add i32 %j, 1, !dbg !120                 ; [#uses=1 type=i32] [debug line = 121:53]
  call void @llvm.dbg.value(metadata !{i32 %j.1}, i64 0, metadata !121), !dbg !120 ; [debug line = 121:53] [debug variable = j]
  br label %4, !dbg !120                          ; [debug line = 121:53]

; <label>:16                                      ; preds = %4
  %17 = call i32 (...)* @_ssdm_op_SpecRegionEnd([14 x i8]* @.str7, i32 %tmp.23) nounwind, !dbg !122 ; [#uses=0 type=i32] [debug line = 176:2]
  %i.2 = add i32 %i, 1, !dbg !123                 ; [#uses=1 type=i32] [debug line = 120:56]
  call void @llvm.dbg.value(metadata !{i32 %i.2}, i64 0, metadata !124), !dbg !123 ; [debug line = 120:56] [debug variable = i]
  br label %1, !dbg !123                          ; [debug line = 120:56]

.preheader6:                                      ; preds = %19, %.preheader6.preheader
  %i1 = phi i32 [ %i.1, %19 ], [ 0, %.preheader6.preheader ] ; [#uses=3 type=i32]
  %tmp.10 = icmp eq i32 %i1, 1920, !dbg !76       ; [#uses=1 type=i1] [debug line = 178:40]
  %18 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1920, i64 1920, i64 1920) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.10, label %.preheader5.preheader, label %19, !dbg !76 ; [debug line = 178:40]

.preheader5.preheader:                            ; preds = %.preheader6
  br label %.preheader5, !dbg !125                ; [debug line = 181:58]

; <label>:19                                      ; preds = %.preheader6
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @.str9) nounwind, !dbg !127 ; [debug line = 180:3]
  %tmp.24 = call i32 (...)* @_ssdm_op_SpecRegionBegin([14 x i8]* @.str9) nounwind, !dbg !127 ; [#uses=1 type=i32] [debug line = 180:3]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str) nounwind, !dbg !129 ; [debug line = 179:1]
  %tmp.12 = zext i32 %i1 to i64, !dbg !130        ; [#uses=1 type=i64] [debug line = 180:2]
  %out_pix.addr = getelementptr [2073600 x i32]* %out_pix, i64 0, i64 %tmp.12, !dbg !130 ; [#uses=1 type=i32*] [debug line = 180:2]
  store i32 0, i32* %out_pix.addr, align 4, !dbg !130 ; [debug line = 180:2]
  %20 = call i32 (...)* @_ssdm_op_SpecRegionEnd([14 x i8]* @.str9, i32 %tmp.24) nounwind, !dbg !131 ; [#uses=0 type=i32] [debug line = 180:15]
  %i.1 = add i32 %i1, 1, !dbg !132                ; [#uses=1 type=i32] [debug line = 178:52]
  call void @llvm.dbg.value(metadata !{i32 %i.1}, i64 0, metadata !133), !dbg !132 ; [debug line = 178:52] [debug variable = i]
  br label %.preheader6, !dbg !132                ; [debug line = 178:52]

.preheader5:                                      ; preds = %22, %.preheader5.preheader
  %i2 = phi i32 [ %i.3, %22 ], [ 2071680, %.preheader5.preheader ] ; [#uses=3 type=i32]
  %exitcond2 = icmp eq i32 %i2, 2073600, !dbg !125 ; [#uses=1 type=i1] [debug line = 181:58]
  %21 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1920, i64 1920, i64 1920) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond2, label %.preheader4.preheader, label %22, !dbg !125 ; [debug line = 181:58]

.preheader4.preheader:                            ; preds = %.preheader5
  br label %.preheader4, !dbg !134                ; [debug line = 184:41]

; <label>:22                                      ; preds = %.preheader5
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @.str10) nounwind, !dbg !136 ; [debug line = 183:3]
  %tmp.26 = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @.str10) nounwind, !dbg !136 ; [#uses=1 type=i32] [debug line = 183:3]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str) nounwind, !dbg !138 ; [debug line = 182:1]
  %tmp.15 = zext i32 %i2 to i64, !dbg !139        ; [#uses=1 type=i64] [debug line = 183:2]
  %out_pix.addr.1 = getelementptr [2073600 x i32]* %out_pix, i64 0, i64 %tmp.15, !dbg !139 ; [#uses=1 type=i32*] [debug line = 183:2]
  store i32 0, i32* %out_pix.addr.1, align 4, !dbg !139 ; [debug line = 183:2]
  %23 = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @.str10, i32 %tmp.26) nounwind, !dbg !140 ; [#uses=0 type=i32] [debug line = 183:15]
  %i.3 = add i32 %i2, 1, !dbg !141                ; [#uses=1 type=i32] [debug line = 181:79]
  call void @llvm.dbg.value(metadata !{i32 %i.3}, i64 0, metadata !142), !dbg !141 ; [debug line = 181:79] [debug variable = i]
  br label %.preheader5, !dbg !141                ; [debug line = 181:79]

.preheader4:                                      ; preds = %25, %.preheader4.preheader
  %i3 = phi i32 [ %i.4, %25 ], [ 0, %.preheader4.preheader ] ; [#uses=3 type=i32]
  %tmp.20 = icmp ult i32 %i3, 2073600, !dbg !134  ; [#uses=1 type=i1] [debug line = 184:41]
  %24 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1080, i64 1080, i64 1080) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.20, label %25, label %.preheader3.preheader, !dbg !134 ; [debug line = 184:41]

.preheader3.preheader:                            ; preds = %.preheader4
  br label %.preheader3, !dbg !143                ; [debug line = 187:47]

; <label>:25                                      ; preds = %.preheader4
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @.str11) nounwind, !dbg !145 ; [debug line = 186:3]
  %tmp.30 = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @.str11) nounwind, !dbg !145 ; [#uses=1 type=i32] [debug line = 186:3]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str) nounwind, !dbg !147 ; [debug line = 185:1]
  %tmp.21 = zext i32 %i3 to i64, !dbg !148        ; [#uses=1 type=i64] [debug line = 186:2]
  %out_pix.addr.2 = getelementptr [2073600 x i32]* %out_pix, i64 0, i64 %tmp.21, !dbg !148 ; [#uses=1 type=i32*] [debug line = 186:2]
  store i32 0, i32* %out_pix.addr.2, align 4, !dbg !148 ; [debug line = 186:2]
  %26 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @.str11, i32 %tmp.30) nounwind, !dbg !149 ; [#uses=0 type=i32] [debug line = 186:15]
  %i.4 = add i32 %i3, 1920, !dbg !150             ; [#uses=1 type=i32] [debug line = 184:62]
  call void @llvm.dbg.value(metadata !{i32 %i.4}, i64 0, metadata !151), !dbg !150 ; [debug line = 184:62] [debug variable = i]
  br label %.preheader4, !dbg !150                ; [debug line = 184:62]

.preheader3:                                      ; preds = %28, %.preheader3.preheader
  %i4 = phi i32 [ %i.5, %28 ], [ 1919, %.preheader3.preheader ] ; [#uses=3 type=i32]
  %tmp.31 = icmp ult i32 %i4, 2073600, !dbg !143  ; [#uses=1 type=i1] [debug line = 187:47]
  %27 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1080, i64 1080, i64 1080) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.31, label %28, label %.preheader.preheader, !dbg !143 ; [debug line = 187:47]

.preheader.preheader:                             ; preds = %.preheader3
  %tmp.36 = bitcast i32* %fourWide to [4 x i8]*, !dbg !152 ; [#uses=3 type=[4 x i8]*] [debug line = 197:5]
  %tmp.46.addr = bitcast i32* %fourWide to i8*, !dbg !152 ; [#uses=1 type=i8*] [debug line = 197:5]
  %tmp.36.addr = getelementptr inbounds [4 x i8]* %tmp.36, i64 0, i64 1, !dbg !152 ; [#uses=1 type=i8*] [debug line = 197:5]
  %tmp.36.addr.1 = getelementptr inbounds [4 x i8]* %tmp.36, i64 0, i64 2, !dbg !152 ; [#uses=1 type=i8*] [debug line = 197:5]
  %tmp.36.addr.2 = getelementptr inbounds [4 x i8]* %tmp.36, i64 0, i64 3, !dbg !152 ; [#uses=1 type=i8*] [debug line = 197:5]
  br label %.preheader, !dbg !157                 ; [debug line = 191:21]

; <label>:28                                      ; preds = %.preheader3
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @.str12) nounwind, !dbg !158 ; [debug line = 189:3]
  %tmp.33 = call i32 (...)* @_ssdm_op_SpecRegionBegin([14 x i8]* @.str12) nounwind, !dbg !158 ; [#uses=1 type=i32] [debug line = 189:3]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str) nounwind, !dbg !160 ; [debug line = 188:1]
  %tmp.34 = zext i32 %i4 to i64, !dbg !161        ; [#uses=1 type=i64] [debug line = 189:2]
  %out_pix.addr.3 = getelementptr [2073600 x i32]* %out_pix, i64 0, i64 %tmp.34, !dbg !161 ; [#uses=1 type=i32*] [debug line = 189:2]
  store i32 0, i32* %out_pix.addr.3, align 4, !dbg !161 ; [debug line = 189:2]
  %29 = call i32 (...)* @_ssdm_op_SpecRegionEnd([14 x i8]* @.str12, i32 %tmp.33) nounwind, !dbg !162 ; [#uses=0 type=i32] [debug line = 189:15]
  %i.5 = add i32 %i4, 1920, !dbg !163             ; [#uses=1 type=i32] [debug line = 187:68]
  call void @llvm.dbg.value(metadata !{i32 %i.5}, i64 0, metadata !164), !dbg !163 ; [debug line = 187:68] [debug variable = i]
  br label %.preheader3, !dbg !163                ; [debug line = 187:68]

.preheader:                                       ; preds = %31, %.preheader.preheader
  %i5 = phi i32 [ %i.6, %31 ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i32]
  %exitcond1 = icmp eq i32 %i5, 2073600, !dbg !157 ; [#uses=1 type=i1] [debug line = 191:21]
  %30 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2073600, i64 2073600, i64 2073600) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond1, label %33, label %31, !dbg !157 ; [debug line = 191:21]

; <label>:31                                      ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([4 x i8]* @.str13) nounwind, !dbg !165 ; [debug line = 191:46]
  %tmp.78 = call i32 (...)* @_ssdm_op_SpecRegionBegin([4 x i8]* @.str13) nounwind, !dbg !165 ; [#uses=1 type=i32] [debug line = 191:46]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str) nounwind, !dbg !166 ; [debug line = 192:1]
  %tmp.73 = zext i32 %i5 to i64, !dbg !167        ; [#uses=1 type=i64] [debug line = 194:26]
  %out_pix.addr.4 = getelementptr [2073600 x i32]* %out_pix, i64 0, i64 %tmp.73, !dbg !167 ; [#uses=2 type=i32*] [debug line = 194:26]
  %out_pix.load = load i32* %out_pix.addr.4, align 4, !dbg !167 ; [#uses=1 type=i32] [debug line = 194:26]
  %val = trunc i32 %out_pix.load to i8, !dbg !167 ; [#uses=4 type=i8] [debug line = 194:26]
  call void @llvm.dbg.value(metadata !{i8 %val}, i64 0, metadata !168), !dbg !167 ; [debug line = 194:26] [debug variable = val]
  call void @llvm.dbg.declare(metadata !{i32* %fourWide}, metadata !169), !dbg !183 ; [debug line = 195:20] [debug variable = fourWide]
  store i8 %val, i8* %tmp.46.addr, align 4, !dbg !152 ; [debug line = 197:5]
  store i8 %val, i8* %tmp.36.addr, align 1, !dbg !152 ; [debug line = 197:5]
  store i8 %val, i8* %tmp.36.addr.1, align 2, !dbg !152 ; [debug line = 197:5]
  store i8 %val, i8* %tmp.36.addr.2, align 1, !dbg !152 ; [debug line = 197:5]
  call void @llvm.dbg.value(metadata !{i32* %fourWide}, i64 0, metadata !169), !dbg !184 ; [debug line = 198:4] [debug variable = fourWide]
  call void @llvm.dbg.value(metadata !{i32* %fourWide}, i64 0, metadata !169), !dbg !184 ; [debug line = 198:4] [debug variable = fourWide]
  call void @llvm.dbg.value(metadata !{i32* %fourWide}, i64 0, metadata !169), !dbg !184 ; [debug line = 198:4] [debug variable = fourWide]
  call void @llvm.dbg.value(metadata !{i32* %fourWide}, i64 0, metadata !169), !dbg !184 ; [debug line = 198:4] [debug variable = fourWide]
  call void @llvm.dbg.value(metadata !{i32* %fourWide}, i64 0, metadata !169), !dbg !184 ; [debug line = 198:4] [debug variable = fourWide]
  call void @llvm.dbg.value(metadata !{i32* %fourWide}, i64 0, metadata !169), !dbg !184 ; [debug line = 198:4] [debug variable = fourWide]
  %fourWide.load = load i32* %fourWide, align 4, !dbg !184 ; [#uses=1 type=i32] [debug line = 198:4]
  store i32 %fourWide.load, i32* %out_pix.addr.4, align 4, !dbg !184 ; [debug line = 198:4]
  %32 = call i32 (...)* @_ssdm_op_SpecRegionEnd([4 x i8]* @.str13, i32 %tmp.78) nounwind, !dbg !185 ; [#uses=0 type=i32] [debug line = 199:3]
  %i.6 = add nsw i32 %i5, 1, !dbg !186            ; [#uses=1 type=i32] [debug line = 191:40]
  call void @llvm.dbg.value(metadata !{i32 %i.6}, i64 0, metadata !187), !dbg !186 ; [debug line = 191:40] [debug variable = i]
  br label %.preheader, !dbg !186                 ; [debug line = 191:40]

; <label>:33                                      ; preds = %.preheader
  ret void, !dbg !188                             ; [debug line = 201:1]
}

; [#uses=27]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=2]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=16]
define internal fastcc zeroext i8 @getVal(i32 %index, i32 %xDiff, i32 %yDiff, [7680 x i8]* nocapture %Y) readonly {
  call void @llvm.dbg.value(metadata !{i32 %index}, i64 0, metadata !189), !dbg !190 ; [debug line = 11:34] [debug variable = index]
  call void @llvm.dbg.value(metadata !{i32 %xDiff}, i64 0, metadata !191), !dbg !192 ; [debug line = 11:45] [debug variable = xDiff]
  call void @llvm.dbg.value(metadata !{i32 %yDiff}, i64 0, metadata !193), !dbg !194 ; [debug line = 11:56] [debug variable = yDiff]
  call void @llvm.dbg.value(metadata !{[7680 x i8]* %Y}, i64 0, metadata !195), !dbg !197 ; [debug line = 11:88] [debug variable = Y]
  %_shl = shl i32 %yDiff, 11, !dbg !198           ; [#uses=1 type=i32] [debug line = 13:55]
  %_shl2 = shl i32 %yDiff, 7, !dbg !198           ; [#uses=1 type=i32] [debug line = 13:55]
  %tmp = sub i32 %_shl, %_shl2, !dbg !198         ; [#uses=1 type=i32] [debug line = 13:55]
  %tmp. = add i32 %xDiff, %index, !dbg !198       ; [#uses=1 type=i32] [debug line = 13:55]
  %fullIndex = add i32 %tmp., %tmp, !dbg !198     ; [#uses=5 type=i32] [debug line = 13:55]
  call void @llvm.dbg.value(metadata !{i32 %fullIndex}, i64 0, metadata !200), !dbg !198 ; [debug line = 13:55] [debug variable = fullIndex]
  %tmp.74 = icmp slt i32 %fullIndex, 0, !dbg !201 ; [#uses=1 type=i1] [debug line = 14:2]
  br i1 %tmp.74, label %1, label %2, !dbg !201    ; [debug line = 14:2]

; <label>:1                                       ; preds = %0
  %fullIndex.2 = add nsw i32 %fullIndex, 7680, !dbg !202 ; [#uses=1 type=i32] [debug line = 17:3]
  call void @llvm.dbg.value(metadata !{i32 %fullIndex.2}, i64 0, metadata !200), !dbg !202 ; [debug line = 17:3] [debug variable = fullIndex]
  br label %3, !dbg !204                          ; [debug line = 18:2]

; <label>:2                                       ; preds = %0
  %tmp.75 = icmp slt i32 %fullIndex, 7680, !dbg !205 ; [#uses=1 type=i1] [debug line = 19:7]
  %fullIndex.3 = add nsw i32 %fullIndex, -7680, !dbg !206 ; [#uses=1 type=i32] [debug line = 22:3]
  call void @llvm.dbg.value(metadata !{i32 %fullIndex.3}, i64 0, metadata !200), !dbg !206 ; [debug line = 22:3] [debug variable = fullIndex]
  %. = select i1 %tmp.75, i32 %fullIndex, i32 %fullIndex.3, !dbg !205 ; [#uses=1 type=i32] [debug line = 19:7]
  br label %3, !dbg !205                          ; [debug line = 19:7]

; <label>:3                                       ; preds = %2, %1
  %fullIndex.1 = phi i32 [ %fullIndex.2, %1 ], [ %., %2 ] ; [#uses=1 type=i32]
  %tmp.76 = sext i32 %fullIndex.1 to i64, !dbg !208 ; [#uses=1 type=i64] [debug line = 25:2]
  %Y.addr = getelementptr [7680 x i8]* %Y, i64 0, i64 %tmp.76, !dbg !208 ; [#uses=1 type=i8*] [debug line = 25:2]
  %Y.load = load i8* %Y.addr, align 1, !dbg !208  ; [#uses=1 type=i8] [debug line = 25:2]
  ret i8 %Y.load, !dbg !208                       ; [debug line = 25:2]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=7]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=7]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=6]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=7]
declare i32 @_ssdm_op_SpecLoopTripCount(...)

; [#uses=7]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=3]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=2]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=0]
declare i32 @_ssdm_GepAggregate(...)

; [#uses=0]
declare i32 @_ssdm_ArrayAggregate(...)

; [#uses=0]
declare i32 @._ssdm_op_SpecChannel(...)

!opencl.kernels = !{!0, !7, !12}
!hls.encrypted.func = !{}
!llvm.dbg.cu = !{!18}
!llvm.map.gv = !{}

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
!18 = metadata !{i32 786449, i32 0, i32 4, metadata !"X:/Bureau/HDMI_3610/3610_4/1490679_1771119/sobellab4/solution1/.autopilot/db/Sobel.pragma.2.cpp", metadata !"X:\5CBureau\5CHDMI_3610\5C3610_4\5C1490679_1771119", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !19, metadata !19, metadata !20, metadata !40} ; [ DW_TAG_compile_unit ]
!19 = metadata !{i32 0}
!20 = metadata !{metadata !21, metadata !32, metadata !37}
!21 = metadata !{i32 786478, i32 0, metadata !22, metadata !"sobel_operator", metadata !"sobel_operator", metadata !"_Z14sobel_operatoriPh", metadata !22, i32 30, metadata !23, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !30, i32 31} ; [ DW_TAG_subprogram ]
!22 = metadata !{i32 786473, metadata !"SobelLab4/Sobel.cpp", metadata !"X:\5CBureau\5CHDMI_3610\5C3610_4\5C1490679_1771119", null} ; [ DW_TAG_file_type ]
!23 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !24, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!24 = metadata !{metadata !25, metadata !27, metadata !29}
!25 = metadata !{i32 786454, null, metadata !"uint8_t", metadata !22, i32 36, i64 0, i64 0, i64 0, i32 0, metadata !26} ; [ DW_TAG_typedef ]
!26 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!27 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !28} ; [ DW_TAG_const_type ]
!28 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!29 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ]
!30 = metadata !{metadata !31}
!31 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!32 = metadata !{i32 786478, i32 0, metadata !22, metadata !"sobel_filter", metadata !"sobel_filter", metadata !"_Z12sobel_filterPhPj", metadata !22, i32 88, metadata !33, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !30, i32 89} ; [ DW_TAG_subprogram ]
!33 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !34, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!34 = metadata !{null, metadata !29, metadata !35}
!35 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !36} ; [ DW_TAG_pointer_type ]
!36 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!37 = metadata !{i32 786478, i32 0, metadata !22, metadata !"getVal", metadata !"getVal", metadata !"_ZL6getValiiiiPh", metadata !22, i32 11, metadata !38, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !30, i32 12} ; [ DW_TAG_subprogram ]
!38 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !39, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!39 = metadata !{metadata !25, metadata !28, metadata !28, metadata !28, metadata !28, metadata !29}
!40 = metadata !{metadata !41}
!41 = metadata !{metadata !42, metadata !48}
!42 = metadata !{i32 786484, i32 0, metadata !21, metadata !"y_op", metadata !"y_op", metadata !"", metadata !22, i32 57, metadata !43, i32 1, i32 1, null} ; [ DW_TAG_variable ]
!43 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 72, i64 8, i32 0, i32 0, metadata !44, metadata !46, i32 0, i32 0} ; [ DW_TAG_array_type ]
!44 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !45} ; [ DW_TAG_const_type ]
!45 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!46 = metadata !{metadata !47, metadata !47}
!47 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ]
!48 = metadata !{i32 786484, i32 0, metadata !21, metadata !"x_op", metadata !"x_op", metadata !"", metadata !22, i32 52, metadata !43, i32 1, i32 1, null} ; [ DW_TAG_variable ]
!49 = metadata !{metadata !50}
!50 = metadata !{i32 0, i32 7, metadata !51}
!51 = metadata !{metadata !52}
!52 = metadata !{metadata !"inter_pix", metadata !53, metadata !"unsigned char", i32 0, i32 7}
!53 = metadata !{metadata !54}
!54 = metadata !{i32 0, i32 2073599, i32 1}
!55 = metadata !{metadata !56}
!56 = metadata !{i32 0, i32 31, metadata !57}
!57 = metadata !{metadata !58}
!58 = metadata !{metadata !"out_pix", metadata !53, metadata !"unsigned int", i32 0, i32 31}
!59 = metadata !{i32 786689, metadata !32, metadata !"inter_pix", null, i32 88, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!60 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !25, metadata !61, i32 0, i32 0} ; [ DW_TAG_array_type ]
!61 = metadata !{metadata !62}
!62 = metadata !{i32 786465, i64 0, i64 2073599}  ; [ DW_TAG_subrange_type ]
!63 = metadata !{i32 88, i32 27, metadata !32, null}
!64 = metadata !{i32 786689, metadata !32, metadata !"out_pix", null, i32 88, metadata !65, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!65 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 66355200, i64 32, i32 0, i32 0, metadata !36, metadata !61, i32 0, i32 0} ; [ DW_TAG_array_type ]
!66 = metadata !{i32 88, i32 60, metadata !32, null}
!67 = metadata !{i32 99, i32 1, metadata !68, null}
!68 = metadata !{i32 786443, metadata !32, i32 89, i32 1, metadata !22, i32 5} ; [ DW_TAG_lexical_block ]
!69 = metadata !{i32 786688, metadata !68, metadata !"superCache", metadata !22, i32 103, metadata !70, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!70 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 61440, i64 8, i32 0, i32 0, metadata !25, metadata !71, i32 0, i32 0} ; [ DW_TAG_array_type ]
!71 = metadata !{metadata !72}
!72 = metadata !{i32 786465, i64 0, i64 7679}     ; [ DW_TAG_subrange_type ]
!73 = metadata !{i32 103, i32 10, metadata !68, null}
!74 = metadata !{i32 120, i32 40, metadata !75, null}
!75 = metadata !{i32 786443, metadata !68, i32 120, i32 17, metadata !22, i32 6} ; [ DW_TAG_lexical_block ]
!76 = metadata !{i32 178, i32 40, metadata !77, null}
!77 = metadata !{i32 786443, metadata !68, i32 178, i32 17, metadata !22, i32 13} ; [ DW_TAG_lexical_block ]
!78 = metadata !{i32 120, i32 62, metadata !79, null}
!79 = metadata !{i32 786443, metadata !75, i32 120, i32 61, metadata !22, i32 7} ; [ DW_TAG_lexical_block ]
!80 = metadata !{i32 123, i32 2, metadata !81, null}
!81 = metadata !{i32 786443, metadata !82, i32 121, i32 58, metadata !22, i32 9} ; [ DW_TAG_lexical_block ]
!82 = metadata !{i32 786443, metadata !79, i32 121, i32 18, metadata !22, i32 8} ; [ DW_TAG_lexical_block ]
!83 = metadata !{i32 124, i32 5, metadata !84, null}
!84 = metadata !{i32 786443, metadata !81, i32 123, i32 13, metadata !22, i32 10} ; [ DW_TAG_lexical_block ]
!85 = metadata !{i32 126, i32 9, metadata !81, null}
!86 = metadata !{i32 127, i32 5, metadata !87, null}
!87 = metadata !{i32 786443, metadata !81, i32 126, i32 33, metadata !22, i32 11} ; [ DW_TAG_lexical_block ]
!88 = metadata !{i32 128, i32 31, metadata !87, null}
!89 = metadata !{i32 121, i32 41, metadata !82, null}
!90 = metadata !{i32 121, i32 59, metadata !81, null}
!91 = metadata !{i32 122, i32 1, metadata !81, null}
!92 = metadata !{i32 125, i32 4, metadata !84, null}
!93 = metadata !{i32 786689, metadata !21, metadata !"fullIndex", metadata !22, i32 16777246, metadata !27, i32 0, metadata !88} ; [ DW_TAG_arg_variable ]
!94 = metadata !{i32 30, i32 34, metadata !21, metadata !88}
!95 = metadata !{i32 67, i32 26, metadata !96, metadata !88}
!96 = metadata !{i32 786443, metadata !97, i32 65, i32 30, metadata !22, i32 4} ; [ DW_TAG_lexical_block ]
!97 = metadata !{i32 786443, metadata !98, i32 65, i32 2, metadata !22, i32 3} ; [ DW_TAG_lexical_block ]
!98 = metadata !{i32 786443, metadata !99, i32 63, i32 30, metadata !22, i32 2} ; [ DW_TAG_lexical_block ]
!99 = metadata !{i32 786443, metadata !100, i32 63, i32 2, metadata !22, i32 1} ; [ DW_TAG_lexical_block ]
!100 = metadata !{i32 786443, metadata !21, i32 31, i32 1, metadata !22, i32 0} ; [ DW_TAG_lexical_block ]
!101 = metadata !{i32 70, i32 26, metadata !96, metadata !88}
!102 = metadata !{i32 74, i32 2, metadata !100, metadata !88}
!103 = metadata !{i32 76, i32 2, metadata !100, metadata !88}
!104 = metadata !{i32 786688, metadata !100, metadata !"edge_val", metadata !22, i32 50, metadata !25, i32 0, metadata !88} ; [ DW_TAG_auto_variable ]
!105 = metadata !{i32 79, i32 2, metadata !100, metadata !88}
!106 = metadata !{i32 81, i32 7, metadata !100, metadata !88}
!107 = metadata !{i32 129, i32 4, metadata !87, null}
!108 = metadata !{i32 131, i32 31, metadata !109, null}
!109 = metadata !{i32 786443, metadata !81, i32 130, i32 9, metadata !22, i32 12} ; [ DW_TAG_lexical_block ]
!110 = metadata !{i32 786689, metadata !21, metadata !"fullIndex", metadata !22, i32 16777246, metadata !27, i32 0, metadata !108} ; [ DW_TAG_arg_variable ]
!111 = metadata !{i32 30, i32 34, metadata !21, metadata !108}
!112 = metadata !{i32 67, i32 26, metadata !96, metadata !108}
!113 = metadata !{i32 70, i32 26, metadata !96, metadata !108}
!114 = metadata !{i32 74, i32 2, metadata !100, metadata !108}
!115 = metadata !{i32 76, i32 2, metadata !100, metadata !108}
!116 = metadata !{i32 786688, metadata !100, metadata !"edge_val", metadata !22, i32 50, metadata !25, i32 0, metadata !108} ; [ DW_TAG_auto_variable ]
!117 = metadata !{i32 79, i32 2, metadata !100, metadata !108}
!118 = metadata !{i32 81, i32 7, metadata !100, metadata !108}
!119 = metadata !{i32 133, i32 3, metadata !81, null}
!120 = metadata !{i32 121, i32 53, metadata !82, null}
!121 = metadata !{i32 786688, metadata !82, metadata !"j", metadata !22, i32 121, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!122 = metadata !{i32 176, i32 2, metadata !79, null}
!123 = metadata !{i32 120, i32 56, metadata !75, null}
!124 = metadata !{i32 786688, metadata !75, metadata !"i", metadata !22, i32 120, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!125 = metadata !{i32 181, i32 58, metadata !126, null}
!126 = metadata !{i32 786443, metadata !68, i32 181, i32 16, metadata !22, i32 15} ; [ DW_TAG_lexical_block ]
!127 = metadata !{i32 180, i32 3, metadata !128, null}
!128 = metadata !{i32 786443, metadata !77, i32 180, i32 2, metadata !22, i32 14} ; [ DW_TAG_lexical_block ]
!129 = metadata !{i32 179, i32 1, metadata !128, null}
!130 = metadata !{i32 180, i32 2, metadata !128, null}
!131 = metadata !{i32 180, i32 15, metadata !128, null}
!132 = metadata !{i32 178, i32 52, metadata !77, null}
!133 = metadata !{i32 786688, metadata !77, metadata !"i", metadata !22, i32 178, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!134 = metadata !{i32 184, i32 41, metadata !135, null}
!135 = metadata !{i32 786443, metadata !68, i32 184, i32 18, metadata !22, i32 17} ; [ DW_TAG_lexical_block ]
!136 = metadata !{i32 183, i32 3, metadata !137, null}
!137 = metadata !{i32 786443, metadata !126, i32 183, i32 2, metadata !22, i32 16} ; [ DW_TAG_lexical_block ]
!138 = metadata !{i32 182, i32 1, metadata !137, null}
!139 = metadata !{i32 183, i32 2, metadata !137, null}
!140 = metadata !{i32 183, i32 15, metadata !137, null}
!141 = metadata !{i32 181, i32 79, metadata !126, null}
!142 = metadata !{i32 786688, metadata !126, metadata !"i", metadata !22, i32 181, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!143 = metadata !{i32 187, i32 47, metadata !144, null}
!144 = metadata !{i32 786443, metadata !68, i32 187, i32 17, metadata !22, i32 19} ; [ DW_TAG_lexical_block ]
!145 = metadata !{i32 186, i32 3, metadata !146, null}
!146 = metadata !{i32 786443, metadata !135, i32 186, i32 2, metadata !22, i32 18} ; [ DW_TAG_lexical_block ]
!147 = metadata !{i32 185, i32 1, metadata !146, null}
!148 = metadata !{i32 186, i32 2, metadata !146, null}
!149 = metadata !{i32 186, i32 15, metadata !146, null}
!150 = metadata !{i32 184, i32 62, metadata !135, null}
!151 = metadata !{i32 786688, metadata !135, metadata !"i", metadata !22, i32 184, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!152 = metadata !{i32 197, i32 5, metadata !153, null}
!153 = metadata !{i32 786443, metadata !154, i32 197, i32 5, metadata !22, i32 24} ; [ DW_TAG_lexical_block ]
!154 = metadata !{i32 786443, metadata !155, i32 196, i32 10, metadata !22, i32 23} ; [ DW_TAG_lexical_block ]
!155 = metadata !{i32 786443, metadata !156, i32 191, i32 45, metadata !22, i32 22} ; [ DW_TAG_lexical_block ]
!156 = metadata !{i32 786443, metadata !68, i32 191, i32 7, metadata !22, i32 21} ; [ DW_TAG_lexical_block ]
!157 = metadata !{i32 191, i32 21, metadata !156, null}
!158 = metadata !{i32 189, i32 3, metadata !159, null}
!159 = metadata !{i32 786443, metadata !144, i32 189, i32 2, metadata !22, i32 20} ; [ DW_TAG_lexical_block ]
!160 = metadata !{i32 188, i32 1, metadata !159, null}
!161 = metadata !{i32 189, i32 2, metadata !159, null}
!162 = metadata !{i32 189, i32 15, metadata !159, null}
!163 = metadata !{i32 187, i32 68, metadata !144, null}
!164 = metadata !{i32 786688, metadata !144, metadata !"i", metadata !22, i32 187, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!165 = metadata !{i32 191, i32 46, metadata !155, null}
!166 = metadata !{i32 192, i32 1, metadata !155, null}
!167 = metadata !{i32 194, i32 26, metadata !155, null}
!168 = metadata !{i32 786688, metadata !155, metadata !"val", metadata !22, i32 194, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!169 = metadata !{i32 790529, metadata !170, metadata !"fourWide", null, i32 195, metadata !172, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!170 = metadata !{i32 786688, metadata !155, metadata !"fourWide", metadata !22, i32 195, metadata !171, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!171 = metadata !{i32 786454, null, metadata !"OneToFourPixels", metadata !22, i32 9, i64 0, i64 0, i64 0, i32 0, metadata !172} ; [ DW_TAG_typedef ]
!172 = metadata !{i32 786455, null, metadata !"", metadata !22, i32 6, i64 32, i64 32, i64 0, i32 0, null, metadata !173, i32 0, null} ; [ DW_TAG_union_type ]
!173 = metadata !{metadata !174, metadata !178, metadata !179}
!174 = metadata !{i32 786445, metadata !172, metadata !"pix", metadata !22, i32 7, i64 32, i64 8, i64 0, i32 0, metadata !175} ; [ DW_TAG_member ]
!175 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 32, i64 8, i32 0, i32 0, metadata !25, metadata !176, i32 0, i32 0} ; [ DW_TAG_array_type ]
!176 = metadata !{metadata !177}
!177 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ]
!178 = metadata !{i32 786445, metadata !172, metadata !"full", metadata !22, i32 8, i64 32, i64 32, i64 0, i32 0, metadata !36} ; [ DW_TAG_member ]
!179 = metadata !{i32 786478, i32 0, metadata !172, metadata !"", metadata !"", metadata !"", metadata !22, i32 6, metadata !180, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !30, i32 6} ; [ DW_TAG_subprogram ]
!180 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !181, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!181 = metadata !{null, metadata !182}
!182 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !172} ; [ DW_TAG_pointer_type ]
!183 = metadata !{i32 195, i32 20, metadata !155, null}
!184 = metadata !{i32 198, i32 4, metadata !155, null}
!185 = metadata !{i32 199, i32 3, metadata !155, null}
!186 = metadata !{i32 191, i32 40, metadata !156, null}
!187 = metadata !{i32 786688, metadata !156, metadata !"i", metadata !22, i32 191, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!188 = metadata !{i32 201, i32 1, metadata !68, null}
!189 = metadata !{i32 786689, metadata !37, metadata !"index", metadata !22, i32 16777227, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!190 = metadata !{i32 11, i32 34, metadata !37, null}
!191 = metadata !{i32 786689, metadata !37, metadata !"xDiff", metadata !22, i32 33554443, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!192 = metadata !{i32 11, i32 45, metadata !37, null}
!193 = metadata !{i32 786689, metadata !37, metadata !"yDiff", metadata !22, i32 50331659, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!194 = metadata !{i32 11, i32 56, metadata !37, null}
!195 = metadata !{i32 786689, metadata !37, metadata !"Y", null, i32 11, metadata !196, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!196 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !25, metadata !71, i32 0, i32 0} ; [ DW_TAG_array_type ]
!197 = metadata !{i32 11, i32 88, metadata !37, null}
!198 = metadata !{i32 13, i32 55, metadata !199, null}
!199 = metadata !{i32 786443, metadata !37, i32 12, i32 1, metadata !22, i32 25} ; [ DW_TAG_lexical_block ]
!200 = metadata !{i32 786688, metadata !199, metadata !"fullIndex", metadata !22, i32 13, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!201 = metadata !{i32 14, i32 2, metadata !199, null}
!202 = metadata !{i32 17, i32 3, metadata !203, null}
!203 = metadata !{i32 786443, metadata !199, i32 15, i32 2, metadata !22, i32 26} ; [ DW_TAG_lexical_block ]
!204 = metadata !{i32 18, i32 2, metadata !203, null}
!205 = metadata !{i32 19, i32 7, metadata !199, null}
!206 = metadata !{i32 22, i32 3, metadata !207, null}
!207 = metadata !{i32 786443, metadata !199, i32 20, i32 2, metadata !22, i32 27} ; [ DW_TAG_lexical_block ]
!208 = metadata !{i32 25, i32 2, metadata !199, null}
