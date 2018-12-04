; ModuleID = 'X:/Bureau/HDMI_3610/3610_4/1490679_1771119/sobellab4/solution1/.autopilot/db/a.o.1.tmp.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@sobel_filter.str = internal unnamed_addr constant [13 x i8] c"sobel_filter\00" ; [#uses=1 type=[13 x i8]*]
@__empty_str = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=0 type=[1 x i8]*]
@AP_complete_mode = internal unnamed_addr constant [9 x i8] c"COMPLETE\00" ; [#uses=0 type=[9 x i8]*]
@.str9 = private unnamed_addr constant [14 x i8] c"FillCacheRows\00", align 1 ; [#uses=3 type=[14 x i8]*]
@.str7 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]
@.str6 = private unnamed_addr constant [6 x i8] c"gmem1\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str5 = private unnamed_addr constant [6 x i8] c"slave\00", align 1 ; [#uses=2 type=[6 x i8]*]
@.str4 = private unnamed_addr constant [6 x i8] c"gmem0\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str3 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1 ; [#uses=2 type=[6 x i8]*]
@.str12 = private unnamed_addr constant [11 x i8] c"FilterCols\00", align 1 ; [#uses=3 type=[11 x i8]*]
@.str11 = private unnamed_addr constant [11 x i8] c"FilterRows\00", align 1 ; [#uses=3 type=[11 x i8]*]
@.str10 = private unnamed_addr constant [14 x i8] c"FillCacheCols\00", align 1 ; [#uses=3 type=[14 x i8]*]
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=18 type=[1 x i8]*]

; [#uses=0]
define void @sobel_filter([2073600 x i8]* %inter_pix, [2073600 x i32]* %out_pix) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([2073600 x i8]* %inter_pix) nounwind, !map !45
  call void (...)* @_ssdm_op_SpecBitsMap([2073600 x i32]* %out_pix) nounwind, !map !51
  call void (...)* @_ssdm_op_SpecTopModule([13 x i8]* @sobel_filter.str) nounwind
  %"cache[0]" = alloca [1920 x i8], align 1       ; [#uses=10 type=[1920 x i8]*]
  %"cache[1]" = alloca [1920 x i8], align 1       ; [#uses=10 type=[1920 x i8]*]
  %"cache[2]" = alloca [1920 x i8], align 1       ; [#uses=9 type=[1920 x i8]*]
  %"cache[3]" = alloca [1920 x i8], align 1       ; [#uses=9 type=[1920 x i8]*]
  %fourWide = alloca i32, align 4                 ; [#uses=3 type=i32*]
  call void @llvm.dbg.value(metadata !{[2073600 x i8]* %inter_pix}, i64 0, metadata !55), !dbg !59 ; [debug line = 55:27] [debug variable = inter_pix]
  call void @llvm.dbg.value(metadata !{[2073600 x i32]* %out_pix}, i64 0, metadata !60), !dbg !62 ; [debug line = 55:60] [debug variable = out_pix]
  call void (...)* @_ssdm_op_SpecInterface([2073600 x i8]* %inter_pix, [6 x i8]* @.str3, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [6 x i8]* @.str4, [6 x i8]* @.str5, [1 x i8]* @.str, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str) nounwind
  call void (...)* @_ssdm_op_SpecInterface([2073600 x i32]* %out_pix, [6 x i8]* @.str3, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [6 x i8]* @.str6, [6 x i8]* @.str5, [1 x i8]* @.str, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @.str7, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str) nounwind, !dbg !63 ; [debug line = 59:1]
  call void @llvm.dbg.declare(metadata !{[1920 x i8]* %"cache[0]"}, metadata !65), !dbg !71 ; [debug line = 62:10] [debug variable = cache[0]]
  call void @llvm.dbg.declare(metadata !{[1920 x i8]* %"cache[1]"}, metadata !72), !dbg !71 ; [debug line = 62:10] [debug variable = cache[1]]
  call void @llvm.dbg.declare(metadata !{[1920 x i8]* %"cache[2]"}, metadata !73), !dbg !71 ; [debug line = 62:10] [debug variable = cache[2]]
  call void @llvm.dbg.declare(metadata !{[1920 x i8]* %"cache[3]"}, metadata !74), !dbg !71 ; [debug line = 62:10] [debug variable = cache[3]]
  call void @llvm.dbg.declare(metadata !{i32* %fourWide}, metadata !75), !dbg !88 ; [debug line = 65:18] [debug variable = fourWide]
  br label %1, !dbg !89                           ; [debug line = 67:40]

; <label>:1                                       ; preds = %9, %0
  %i = phi i32 [ 0, %0 ], [ %i.1, %9 ]            ; [#uses=5 type=i32]
  %tmp = icmp eq i32 %i, 2, !dbg !89              ; [#uses=1 type=i1] [debug line = 67:40]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2) nounwind ; [#uses=0 type=i32]
  br i1 %tmp, label %.preheader.preheader, label %3, !dbg !89 ; [debug line = 67:40]

.preheader.preheader:                             ; preds = %1
  %tmp.1 = bitcast i32* %fourWide to [4 x i8]*, !dbg !91 ; [#uses=3 type=[4 x i8]*] [debug line = 89:6]
  %tmp.1.addr = bitcast i32* %fourWide to i8*, !dbg !91 ; [#uses=1 type=i8*] [debug line = 89:6]
  %tmp.1.addr.1 = getelementptr inbounds [4 x i8]* %tmp.1, i64 0, i64 1, !dbg !91 ; [#uses=1 type=i8*] [debug line = 89:6]
  %tmp.1.addr.2 = getelementptr inbounds [4 x i8]* %tmp.1, i64 0, i64 2, !dbg !91 ; [#uses=1 type=i8*] [debug line = 89:6]
  %tmp.1.addr.3 = getelementptr inbounds [4 x i8]* %tmp.1, i64 0, i64 3, !dbg !91 ; [#uses=1 type=i8*] [debug line = 89:6]
  br label %.preheader, !dbg !98                  ; [debug line = 76:38]

; <label>:3                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @.str9) nounwind, !dbg !99 ; [debug line = 67:55]
  %tmp.3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([14 x i8]* @.str9) nounwind, !dbg !99 ; [#uses=1 type=i32] [debug line = 67:55]
  %_shl = shl i32 %i, 11, !dbg !101               ; [#uses=1 type=i32] [debug line = 71:2]
  %_shl9 = shl i32 %i, 7, !dbg !101               ; [#uses=1 type=i32] [debug line = 71:2]
  %tmp.2 = sub i32 %_shl, %_shl9, !dbg !101       ; [#uses=1 type=i32] [debug line = 71:2]
  %i.t = trunc i32 %i to i2                       ; [#uses=1 type=i2]
  %cond = icmp eq i2 %i.t, 0, !dbg !101           ; [#uses=1 type=i1] [debug line = 71:2]
  br label %4, !dbg !104                          ; [debug line = 68:41]

; <label>:4                                       ; preds = %7, %3
  %j = phi i32 [ 0, %3 ], [ %j.1, %7 ]            ; [#uses=4 type=i32]
  %tmp.5 = icmp eq i32 %j, 1920, !dbg !104        ; [#uses=1 type=i1] [debug line = 68:41]
  %5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1920, i64 1920, i64 1920) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.5, label %9, label %6, !dbg !104     ; [debug line = 68:41]

; <label>:6                                       ; preds = %4
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @.str10) nounwind, !dbg !105 ; [debug line = 68:59]
  %tmp.20 = call i32 (...)* @_ssdm_op_SpecRegionBegin([14 x i8]* @.str10) nounwind, !dbg !105 ; [#uses=1 type=i32] [debug line = 68:59]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str) nounwind, !dbg !106 ; [debug line = 69:1]
  call void (...)* @_ssdm_SpecLoopFlatten(i32 1, [1 x i8]* @.str) nounwind, !dbg !107 ; [debug line = 70:1]
  %tmp.13 = add i32 %tmp.2, %j, !dbg !101         ; [#uses=1 type=i32] [debug line = 71:2]
  %tmp.14 = zext i32 %tmp.13 to i64, !dbg !101    ; [#uses=1 type=i64] [debug line = 71:2]
  %inter_pix.addr = getelementptr [2073600 x i8]* %inter_pix, i64 0, i64 %tmp.14, !dbg !101 ; [#uses=1 type=i8*] [debug line = 71:2]
  %inter_pix.load = load i8* %inter_pix.addr, align 1, !dbg !101 ; [#uses=2 type=i8] [debug line = 71:2]
  %tmp.15 = zext i32 %j to i64, !dbg !101         ; [#uses=2 type=i64] [debug line = 71:2]
  %"cache[0].addr" = getelementptr [1920 x i8]* %"cache[0]", i64 0, i64 %tmp.15, !dbg !101 ; [#uses=1 type=i8*] [debug line = 71:2]
  %"cache[1].addr" = getelementptr [1920 x i8]* %"cache[1]", i64 0, i64 %tmp.15, !dbg !101 ; [#uses=1 type=i8*] [debug line = 71:2]
  br i1 %cond, label %branch4, label %branch5, !dbg !101 ; [debug line = 71:2]

; <label>:7                                       ; preds = %branch5, %branch4
  %8 = call i32 (...)* @_ssdm_op_SpecRegionEnd([14 x i8]* @.str10, i32 %tmp.20) nounwind, !dbg !108 ; [#uses=0 type=i32] [debug line = 72:3]
  %j.1 = add i32 %j, 1, !dbg !109                 ; [#uses=1 type=i32] [debug line = 68:53]
  call void @llvm.dbg.value(metadata !{i32 %j.1}, i64 0, metadata !110), !dbg !109 ; [debug line = 68:53] [debug variable = j]
  br label %4, !dbg !109                          ; [debug line = 68:53]

; <label>:9                                       ; preds = %4
  %10 = call i32 (...)* @_ssdm_op_SpecRegionEnd([14 x i8]* @.str9, i32 %tmp.3) nounwind, !dbg !111 ; [#uses=0 type=i32] [debug line = 73:2]
  %i.1 = add i32 %i, 1, !dbg !112                 ; [#uses=1 type=i32] [debug line = 67:49]
  call void @llvm.dbg.value(metadata !{i32 %i.1}, i64 0, metadata !113), !dbg !112 ; [debug line = 67:49] [debug variable = i]
  br label %1, !dbg !112                          ; [debug line = 67:49]

.preheader:                                       ; preds = %18, %.preheader.preheader
  %rows.assign = phi i32 [ %i.2, %18 ], [ 0, %.preheader.preheader ] ; [#uses=8 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %rows.assign}, i64 0, metadata !114) nounwind, !dbg !117 ; [debug line = 13:34@85:12] [debug variable = rows]
  %tmp.4 = icmp eq i32 %rows.assign, 1080, !dbg !98 ; [#uses=1 type=i1] [debug line = 76:38]
  %11 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1080, i64 1080, i64 1080) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.4, label %20, label %12, !dbg !98    ; [debug line = 76:38]

; <label>:12                                      ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @.str11) nounwind, !dbg !118 ; [debug line = 76:56]
  %tmp.11 = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @.str11) nounwind, !dbg !118 ; [#uses=1 type=i32] [debug line = 76:56]
  %tmp.6 = icmp eq i32 %rows.assign, 0, !dbg !119 ; [#uses=1 type=i1] [debug line = 81:2]
  %tmp.7 = icmp eq i32 %rows.assign, 1079, !dbg !119 ; [#uses=1 type=i1] [debug line = 81:2]
  %_shl1 = shl i32 %rows.assign, 11, !dbg !120    ; [#uses=1 type=i32] [debug line = 90:5]
  %_shl2 = shl i32 %rows.assign, 7, !dbg !120     ; [#uses=1 type=i32] [debug line = 90:5]
  %tmp.8 = sub i32 %_shl1, %_shl2, !dbg !120      ; [#uses=1 type=i32] [debug line = 90:5]
  %tmp.12 = trunc i32 %rows.assign to i2          ; [#uses=5 type=i2]
  %tmp.9 = add i32 %rows.assign, 2, !dbg !121     ; [#uses=1 type=i32] [debug line = 92:5]
  %tmp. = urem i32 %tmp.9, 1080, !dbg !121        ; [#uses=2 type=i32] [debug line = 92:5]
  %_shl3 = shl nuw nsw i32 %tmp., 11, !dbg !121   ; [#uses=1 type=i32] [debug line = 92:5]
  %_shl4 = shl nuw nsw i32 %tmp., 7, !dbg !121    ; [#uses=1 type=i32] [debug line = 92:5]
  %tmp.10 = sub i32 %_shl3, %_shl4, !dbg !121     ; [#uses=1 type=i32] [debug line = 92:5]
  %tmp.11.t = xor i2 %tmp.12, -2                  ; [#uses=1 type=i2]
  %tmp.34.0.0.t = add i2 %tmp.12, -1              ; [#uses=3 type=i2]
  %tmp.34.0.2.t = add i2 %tmp.12, 1               ; [#uses=3 type=i2]
  br label %13, !dbg !122                         ; [debug line = 77:39]

; <label>:13                                      ; preds = %._crit_edge67, %12
  %cols.assign = phi i32 [ 0, %12 ], [ %j.2, %._crit_edge67 ] ; [#uses=10 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %cols.assign}, i64 0, metadata !123) nounwind, !dbg !124 ; [debug line = 13:50@85:12] [debug variable = cols]
  %tmp.16 = icmp eq i32 %cols.assign, 1920, !dbg !122 ; [#uses=1 type=i1] [debug line = 77:39]
  %14 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1920, i64 1920, i64 1920) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.16, label %18, label %15, !dbg !122  ; [debug line = 77:39]

; <label>:15                                      ; preds = %13
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @.str12) nounwind, !dbg !125 ; [debug line = 77:57]
  %tmp.21 = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @.str12) nounwind, !dbg !125 ; [#uses=1 type=i32] [debug line = 77:57]
  call void (...)* @_ssdm_op_SpecPipeline(i32 2, i32 1, i32 1, i32 0, [1 x i8]* @.str) nounwind, !dbg !126 ; [debug line = 78:1]
  call void (...)* @_ssdm_SpecLoopFlatten(i32 1, [1 x i8]* @.str) nounwind, !dbg !127 ; [debug line = 79:1]
  %tmp.17 = icmp eq i32 %cols.assign, 0, !dbg !119 ; [#uses=1 type=i1] [debug line = 81:2]
  %tmp.18 = icmp eq i32 %cols.assign, 1919, !dbg !119 ; [#uses=1 type=i1] [debug line = 81:2]
  %or.cond = or i1 %tmp.17, %tmp.18, !dbg !119    ; [#uses=1 type=i1] [debug line = 81:2]
  %or.cond1 = or i1 %or.cond, %tmp.6, !dbg !119   ; [#uses=1 type=i1] [debug line = 81:2]
  %or.cond2 = or i1 %or.cond1, %tmp.7, !dbg !119  ; [#uses=1 type=i1] [debug line = 81:2]
  br i1 %or.cond2, label %._crit_edge, label %.preheader8, !dbg !119 ; [debug line = 81:2]

.preheader8:                                      ; preds = %15
  %tmp.23 = add i32 %cols.assign, -1, !dbg !128   ; [#uses=1 type=i32] [debug line = 34:4@85:12]
  %tmp.24 = zext i32 %tmp.23 to i64, !dbg !128    ; [#uses=3 type=i64] [debug line = 34:4@85:12]
  %tmp.27 = call i8 @"aesl_mux_load.4[1920 x i8]P.i2.i64"([1920 x i8]* %"cache[0]", [1920 x i8]* %"cache[1]", [1920 x i8]* %"cache[2]", [1920 x i8]* %"cache[3]", i2 %tmp.34.0.0.t, i64 %tmp.24) nounwind ; [#uses=1 type=i8]
  %tmp.361 = zext i8 %tmp.27 to i32, !dbg !128    ; [#uses=2 type=i32] [debug line = 34:4@85:12]
  %tmp.28 = call i8 @"aesl_mux_load.4[1920 x i8]P.i2.i64"([1920 x i8]* %"cache[0]", [1920 x i8]* %"cache[1]", [1920 x i8]* %"cache[2]", [1920 x i8]* %"cache[3]", i2 %tmp.12, i64 %tmp.24) nounwind ; [#uses=1 type=i8]
  %tmp.36.0.1 = zext i8 %tmp.28 to i32, !dbg !128 ; [#uses=1 type=i32] [debug line = 34:4@85:12]
  %_shl5 = shl nuw nsw i32 %tmp.36.0.1, 1, !dbg !128 ; [#uses=1 type=i32] [debug line = 34:4@85:12]
  %tmp.39.0.1 = sub i32 0, %_shl5, !dbg !128      ; [#uses=1 type=i32] [debug line = 34:4@85:12]
  %x_weight.0.1 = sub i32 %tmp.39.0.1, %tmp.361, !dbg !128 ; [#uses=1 type=i32] [debug line = 34:4@85:12]
  %tmp.29 = call i8 @"aesl_mux_load.4[1920 x i8]P.i2.i64"([1920 x i8]* %"cache[0]", [1920 x i8]* %"cache[1]", [1920 x i8]* %"cache[2]", [1920 x i8]* %"cache[3]", i2 %tmp.34.0.2.t, i64 %tmp.24) nounwind ; [#uses=1 type=i8]
  %tmp.36.0.2 = zext i8 %tmp.29 to i32, !dbg !128 ; [#uses=2 type=i32] [debug line = 34:4@85:12]
  %x_weight.0.2 = sub i32 %x_weight.0.1, %tmp.36.0.2, !dbg !128 ; [#uses=2 type=i32] [debug line = 34:4@85:12]
  %y_weight.0.2 = sub i32 %tmp.361, %tmp.36.0.2, !dbg !134 ; [#uses=1 type=i32] [debug line = 37:4@85:12]
  %tmp.29.1 = zext i32 %cols.assign to i64, !dbg !128 ; [#uses=2 type=i64] [debug line = 34:4@85:12]
  %tmp.30 = call i8 @"aesl_mux_load.4[1920 x i8]P.i2.i64"([1920 x i8]* %"cache[0]", [1920 x i8]* %"cache[1]", [1920 x i8]* %"cache[2]", [1920 x i8]* %"cache[3]", i2 %tmp.34.0.0.t, i64 %tmp.29.1) nounwind ; [#uses=1 type=i8]
  %tmp.36.1 = zext i8 %tmp.30 to i32, !dbg !128   ; [#uses=1 type=i32] [debug line = 34:4@85:12]
  %tmp.41.1 = shl nuw nsw i32 %tmp.36.1, 1, !dbg !134 ; [#uses=1 type=i32] [debug line = 37:4@85:12]
  %y_weight.1.1 = add i32 %y_weight.0.2, %tmp.41.1, !dbg !134 ; [#uses=1 type=i32] [debug line = 37:4@85:12]
  %tmp.32 = call i8 @"aesl_mux_load.4[1920 x i8]P.i2.i64"([1920 x i8]* %"cache[0]", [1920 x i8]* %"cache[1]", [1920 x i8]* %"cache[2]", [1920 x i8]* %"cache[3]", i2 %tmp.34.0.2.t, i64 %tmp.29.1) nounwind ; [#uses=1 type=i8]
  %tmp.36.1.2 = zext i8 %tmp.32 to i32, !dbg !128 ; [#uses=1 type=i32] [debug line = 34:4@85:12]
  %_shl6 = shl nuw nsw i32 %tmp.36.1.2, 1, !dbg !134 ; [#uses=1 type=i32] [debug line = 37:4@85:12]
  %y_weight.1.2 = sub i32 %y_weight.1.1, %_shl6, !dbg !134 ; [#uses=1 type=i32] [debug line = 37:4@85:12]
  %tmp.28.2 = add i32 %cols.assign, 1, !dbg !128  ; [#uses=1 type=i32] [debug line = 34:4@85:12]
  %tmp.29.2 = zext i32 %tmp.28.2 to i64, !dbg !128 ; [#uses=3 type=i64] [debug line = 34:4@85:12]
  %tmp.33 = call i8 @"aesl_mux_load.4[1920 x i8]P.i2.i64"([1920 x i8]* %"cache[0]", [1920 x i8]* %"cache[1]", [1920 x i8]* %"cache[2]", [1920 x i8]* %"cache[3]", i2 %tmp.34.0.0.t, i64 %tmp.29.2) nounwind ; [#uses=2 type=i8]
  %tmp.36.2 = zext i8 %tmp.33 to i32, !dbg !128   ; [#uses=2 type=i32] [debug line = 34:4@85:12]
  %tmp.34 = trunc i32 %x_weight.0.2 to i8         ; [#uses=1 type=i8]
  %x_weight.2 = add nsw i32 %x_weight.0.2, %tmp.36.2, !dbg !128 ; [#uses=1 type=i32] [debug line = 34:4@85:12]
  %tmp.35 = call i8 @"aesl_mux_load.4[1920 x i8]P.i2.i64"([1920 x i8]* %"cache[0]", [1920 x i8]* %"cache[1]", [1920 x i8]* %"cache[2]", [1920 x i8]* %"cache[3]", i2 %tmp.12, i64 %tmp.29.2) nounwind ; [#uses=1 type=i8]
  %tmp.36.2.1 = zext i8 %tmp.35 to i32, !dbg !128 ; [#uses=1 type=i32] [debug line = 34:4@85:12]
  %tmp.39.2.1 = shl nuw nsw i32 %tmp.36.2.1, 1, !dbg !128 ; [#uses=2 type=i32] [debug line = 34:4@85:12]
  %tmp.36 = trunc i32 %tmp.39.2.1 to i8           ; [#uses=1 type=i8]
  %tmp.37 = add i8 %tmp.33, %tmp.34               ; [#uses=1 type=i8]
  %x_weight.2.1 = add nsw i32 %x_weight.2, %tmp.39.2.1, !dbg !128 ; [#uses=1 type=i32] [debug line = 34:4@85:12]
  %y_weight.2.1 = add i32 %y_weight.1.2, %tmp.36.2, !dbg !134 ; [#uses=1 type=i32] [debug line = 37:4@85:12]
  %tmp.38 = call i8 @"aesl_mux_load.4[1920 x i8]P.i2.i64"([1920 x i8]* %"cache[0]", [1920 x i8]* %"cache[1]", [1920 x i8]* %"cache[2]", [1920 x i8]* %"cache[3]", i2 %tmp.34.0.2.t, i64 %tmp.29.2) nounwind ; [#uses=2 type=i8]
  %tmp.36.2.2 = zext i8 %tmp.38 to i32, !dbg !128 ; [#uses=2 type=i32] [debug line = 34:4@85:12]
  %tmp.39 = add i8 %tmp.36, %tmp.37               ; [#uses=1 type=i8]
  %x_weight.2.2 = add nsw i32 %x_weight.2.1, %tmp.36.2.2, !dbg !128 ; [#uses=1 type=i32] [debug line = 34:4@85:12]
  %y_weight.2.2 = sub i32 %y_weight.2.1, %tmp.36.2.2, !dbg !134 ; [#uses=2 type=i32] [debug line = 37:4@85:12]
  %tmp.19 = icmp sgt i32 %x_weight.2.2, 0, !dbg !135 ; [#uses=1 type=i1] [debug line = 41:2@85:12]
  %tmp.40 = add i8 %tmp.38, %tmp.39, !dbg !135    ; [#uses=2 type=i8] [debug line = 41:2@85:12]
  %tmp.41 = sub i8 0, %tmp.40, !dbg !135          ; [#uses=1 type=i8] [debug line = 41:2@85:12]
  %tmp.47 = select i1 %tmp.19, i8 %tmp.40, i8 %tmp.41, !dbg !135 ; [#uses=1 type=i8] [debug line = 41:2@85:12]
  %tmp.22 = icmp sgt i32 %y_weight.2.2, 0, !dbg !135 ; [#uses=1 type=i1] [debug line = 41:2@85:12]
  %tmp.48 = trunc i32 %y_weight.2.2 to i8, !dbg !135 ; [#uses=2 type=i8] [debug line = 41:2@85:12]
  %tmp.49 = sub i8 0, %tmp.48, !dbg !135          ; [#uses=1 type=i8] [debug line = 41:2@85:12]
  %tmp.50 = select i1 %tmp.22, i8 %tmp.48, i8 %tmp.49, !dbg !135 ; [#uses=1 type=i8] [debug line = 41:2@85:12]
  %tmp.25 = add i8 %tmp.47, %tmp.50, !dbg !136    ; [#uses=3 type=i8] [debug line = 43:2@85:12]
  %edge_val = xor i8 %tmp.25, -1, !dbg !136       ; [#uses=1 type=i8] [debug line = 43:2@85:12]
  call void @llvm.dbg.value(metadata !{i8 %edge_val}, i64 0, metadata !137) nounwind, !dbg !136 ; [debug line = 43:2@85:12] [debug variable = edge_val]
  %tmp.26 = icmp ult i8 %tmp.25, 55, !dbg !138    ; [#uses=1 type=i1] [debug line = 46:2@85:12]
  br i1 %tmp.26, label %._crit_edge, label %16, !dbg !138 ; [debug line = 46:2@85:12]

; <label>:16                                      ; preds = %.preheader8
  %tmp.31 = icmp ugt i8 %tmp.25, -101, !dbg !139  ; [#uses=1 type=i1] [debug line = 48:7@85:12]
  %..i = select i1 %tmp.31, i8 0, i8 %edge_val, !dbg !139 ; [#uses=1 type=i8] [debug line = 48:7@85:12]
  br label %._crit_edge

._crit_edge:                                      ; preds = %16, %.preheader8, %15
  %val = phi i8 [ 0, %15 ], [ %..i, %16 ], [ -1, %.preheader8 ] ; [#uses=4 type=i8]
  store i8 %val, i8* %tmp.1.addr, align 4, !dbg !91 ; [debug line = 89:6]
  store i8 %val, i8* %tmp.1.addr.1, align 1, !dbg !91 ; [debug line = 89:6]
  store i8 %val, i8* %tmp.1.addr.2, align 2, !dbg !91 ; [debug line = 89:6]
  store i8 %val, i8* %tmp.1.addr.3, align 1, !dbg !91 ; [debug line = 89:6]
  call void @llvm.dbg.value(metadata !{i32* %fourWide}, i64 0, metadata !75), !dbg !120 ; [debug line = 90:5] [debug variable = fourWide]
  call void @llvm.dbg.value(metadata !{i32* %fourWide}, i64 0, metadata !75), !dbg !120 ; [debug line = 90:5] [debug variable = fourWide]
  call void @llvm.dbg.value(metadata !{i32* %fourWide}, i64 0, metadata !75), !dbg !120 ; [debug line = 90:5] [debug variable = fourWide]
  call void @llvm.dbg.value(metadata !{i32* %fourWide}, i64 0, metadata !75), !dbg !120 ; [debug line = 90:5] [debug variable = fourWide]
  call void @llvm.dbg.value(metadata !{i32* %fourWide}, i64 0, metadata !75), !dbg !120 ; [debug line = 90:5] [debug variable = fourWide]
  call void @llvm.dbg.value(metadata !{i32* %fourWide}, i64 0, metadata !75), !dbg !120 ; [debug line = 90:5] [debug variable = fourWide]
  %fourWide.load = load i32* %fourWide, align 4, !dbg !120 ; [#uses=1 type=i32] [debug line = 90:5]
  %tmp.42 = add i32 %cols.assign, %tmp.8, !dbg !120 ; [#uses=1 type=i32] [debug line = 90:5]
  %tmp.43 = zext i32 %tmp.42 to i64, !dbg !120    ; [#uses=1 type=i64] [debug line = 90:5]
  %out_pix.addr = getelementptr [2073600 x i32]* %out_pix, i64 0, i64 %tmp.43, !dbg !120 ; [#uses=1 type=i32*] [debug line = 90:5]
  store i32 %fourWide.load, i32* %out_pix.addr, align 4, !dbg !120 ; [debug line = 90:5]
  %tmp.44 = add i32 %cols.assign, %tmp.10, !dbg !121 ; [#uses=1 type=i32] [debug line = 92:5]
  %tmp.45 = zext i32 %tmp.44 to i64, !dbg !121    ; [#uses=1 type=i64] [debug line = 92:5]
  %inter_pix.addr.1 = getelementptr [2073600 x i8]* %inter_pix, i64 0, i64 %tmp.45, !dbg !121 ; [#uses=1 type=i8*] [debug line = 92:5]
  %inter_pix.load.1 = load i8* %inter_pix.addr.1, align 1, !dbg !121 ; [#uses=4 type=i8] [debug line = 92:5]
  %tmp.46 = zext i32 %cols.assign to i64, !dbg !121 ; [#uses=4 type=i64] [debug line = 92:5]
  %"cache[0].addr.1" = getelementptr [1920 x i8]* %"cache[0]", i64 0, i64 %tmp.46, !dbg !121 ; [#uses=1 type=i8*] [debug line = 92:5]
  %"cache[1].addr.1" = getelementptr [1920 x i8]* %"cache[1]", i64 0, i64 %tmp.46, !dbg !121 ; [#uses=1 type=i8*] [debug line = 92:5]
  %"cache[2].addr" = getelementptr [1920 x i8]* %"cache[2]", i64 0, i64 %tmp.46, !dbg !121 ; [#uses=1 type=i8*] [debug line = 92:5]
  %"cache[3].addr" = getelementptr [1920 x i8]* %"cache[3]", i64 0, i64 %tmp.46, !dbg !121 ; [#uses=1 type=i8*] [debug line = 92:5]
  switch i2 %tmp.11.t, label %branch3 [
    i2 0, label %branch0
    i2 1, label %branch1
    i2 -2, label %branch2
  ], !dbg !121                                    ; [debug line = 92:5]

._crit_edge67:                                    ; preds = %branch3, %branch2, %branch1, %branch0
  %17 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @.str12, i32 %tmp.21) nounwind, !dbg !140 ; [#uses=0 type=i32] [debug line = 94:3]
  %j.2 = add i32 %cols.assign, 1, !dbg !141       ; [#uses=1 type=i32] [debug line = 77:51]
  call void @llvm.dbg.value(metadata !{i32 %j.2}, i64 0, metadata !142), !dbg !141 ; [debug line = 77:51] [debug variable = j]
  br label %13, !dbg !141                         ; [debug line = 77:51]

; <label>:18                                      ; preds = %13
  %19 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @.str11, i32 %tmp.11) nounwind, !dbg !143 ; [#uses=0 type=i32] [debug line = 95:2]
  %i.2 = add i32 %rows.assign, 1, !dbg !144       ; [#uses=1 type=i32] [debug line = 76:50]
  call void @llvm.dbg.value(metadata !{i32 %i.2}, i64 0, metadata !145), !dbg !144 ; [debug line = 76:50] [debug variable = i]
  br label %.preheader, !dbg !144                 ; [debug line = 76:50]

; <label>:20                                      ; preds = %.preheader
  ret void, !dbg !146                             ; [debug line = 98:1]

branch0:                                          ; preds = %._crit_edge
  store i8 %inter_pix.load.1, i8* %"cache[0].addr.1", align 1, !dbg !121 ; [debug line = 92:5]
  br label %._crit_edge67, !dbg !121              ; [debug line = 92:5]

branch1:                                          ; preds = %._crit_edge
  store i8 %inter_pix.load.1, i8* %"cache[1].addr.1", align 1, !dbg !121 ; [debug line = 92:5]
  br label %._crit_edge67, !dbg !121              ; [debug line = 92:5]

branch2:                                          ; preds = %._crit_edge
  store i8 %inter_pix.load.1, i8* %"cache[2].addr", align 1, !dbg !121 ; [debug line = 92:5]
  br label %._crit_edge67, !dbg !121              ; [debug line = 92:5]

branch3:                                          ; preds = %._crit_edge
  store i8 %inter_pix.load.1, i8* %"cache[3].addr", align 1, !dbg !121 ; [debug line = 92:5]
  br label %._crit_edge67, !dbg !121              ; [debug line = 92:5]

branch4:                                          ; preds = %6
  store i8 %inter_pix.load, i8* %"cache[0].addr", align 1, !dbg !101 ; [debug line = 71:2]
  br label %7, !dbg !101                          ; [debug line = 71:2]

branch5:                                          ; preds = %6
  store i8 %inter_pix.load, i8* %"cache[1].addr", align 1, !dbg !101 ; [debug line = 71:2]
  br label %7, !dbg !101                          ; [debug line = 71:2]
}

; [#uses=15]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=5]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=8]
define i8 @"aesl_mux_load.4[1920 x i8]P.i2.i64"([1920 x i8]* nocapture, [1920 x i8]* nocapture, [1920 x i8]* nocapture, [1920 x i8]* nocapture, i2, i64) readonly noinline {
entry:
  call void (...)* @_ssdm_InlineSelf(i32 2)
  call void (...)* @_ssdm_SpecMemSelectRead()
  switch i2 %4, label %case3 [
    i2 0, label %case0
    i2 1, label %case1
    i2 -2, label %case2
  ]

case0:                                            ; preds = %entry
  %.addr.1 = getelementptr [1920 x i8]* %0, i64 0, i64 %5 ; [#uses=1 type=i8*]
  %6 = load i8* %.addr.1, align 1                 ; [#uses=1 type=i8]
  br label %UnifiedReturnBlock

case1:                                            ; preds = %entry
  %.addr.2 = getelementptr [1920 x i8]* %1, i64 0, i64 %5 ; [#uses=1 type=i8*]
  %7 = load i8* %.addr.2, align 1                 ; [#uses=1 type=i8]
  br label %UnifiedReturnBlock

case2:                                            ; preds = %entry
  %.addr.3 = getelementptr [1920 x i8]* %2, i64 0, i64 %5 ; [#uses=1 type=i8*]
  %8 = load i8* %.addr.3, align 1                 ; [#uses=1 type=i8]
  br label %UnifiedReturnBlock

case3:                                            ; preds = %entry
  %.addr = getelementptr [1920 x i8]* %3, i64 0, i64 %5 ; [#uses=1 type=i8*]
  %9 = load i8* %.addr, align 1                   ; [#uses=1 type=i8]
  br label %UnifiedReturnBlock

UnifiedReturnBlock:                               ; preds = %case3, %case2, %case1, %case0
  %UnifiedRetVal = phi i8 [ %6, %case0 ], [ %7, %case1 ], [ %8, %case2 ], [ %9, %case3 ] ; [#uses=1 type=i8]
  ret i8 %UnifiedRetVal
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=4]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=4]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=2]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=4]
declare i32 @_ssdm_op_SpecLoopTripCount(...)

; [#uses=4]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=3]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=2]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=1]
declare void @_ssdm_SpecMemSelectRead(...)

; [#uses=2]
declare void @_ssdm_SpecLoopFlatten(...) nounwind

; [#uses=1]
declare void @_ssdm_InlineSelf(...)

; [#uses=0]
declare i32 @_ssdm_GepAggregate(...)

; [#uses=0]
declare i32 @_ssdm_ArrayAggregate(...)

; [#uses=0]
declare i32 @._ssdm_op_SpecChannel(...)

!opencl.kernels = !{!0, !7}
!hls.encrypted.func = !{}
!llvm.dbg.cu = !{!13}
!llvm.map.gv = !{}

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
!13 = metadata !{i32 786449, i32 0, i32 4, metadata !"X:/Bureau/HDMI_3610/3610_4/1490679_1771119/sobellab4/solution1/.autopilot/db/Sobel.pragma.2.cpp", metadata !"X:\5CBureau\5CHDMI_3610\5C3610_4\5C1490679_1771119", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !14, metadata !14, metadata !15, metadata !36} ; [ DW_TAG_compile_unit ]
!14 = metadata !{i32 0}
!15 = metadata !{metadata !16, metadata !30}
!16 = metadata !{i32 786478, i32 0, metadata !17, metadata !"sobel_operator", metadata !"sobel_operator", metadata !"_Z14sobel_operatoriiPA1920_h", metadata !17, i32 13, metadata !18, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !28, i32 14} ; [ DW_TAG_subprogram ]
!17 = metadata !{i32 786473, metadata !"sobellab4/Sobel.cpp", metadata !"X:\5CBureau\5CHDMI_3610\5C3610_4\5C1490679_1771119", null} ; [ DW_TAG_file_type ]
!18 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !19, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!19 = metadata !{metadata !20, metadata !22, metadata !22, metadata !24}
!20 = metadata !{i32 786454, null, metadata !"uint8_t", metadata !17, i32 36, i64 0, i64 0, i64 0, i32 0, metadata !21} ; [ DW_TAG_typedef ]
!21 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!22 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !23} ; [ DW_TAG_const_type ]
!23 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!24 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ]
!25 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 15360, i64 8, i32 0, i32 0, metadata !20, metadata !26, i32 0, i32 0} ; [ DW_TAG_array_type ]
!26 = metadata !{metadata !27}
!27 = metadata !{i32 786465, i64 0, i64 1919}     ; [ DW_TAG_subrange_type ]
!28 = metadata !{metadata !29}
!29 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!30 = metadata !{i32 786478, i32 0, metadata !17, metadata !"sobel_filter", metadata !"sobel_filter", metadata !"_Z12sobel_filterPhPj", metadata !17, i32 55, metadata !31, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !28, i32 56} ; [ DW_TAG_subprogram ]
!31 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !32, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!32 = metadata !{null, metadata !33, metadata !34}
!33 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ]
!34 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !35} ; [ DW_TAG_pointer_type ]
!35 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!36 = metadata !{metadata !37}
!37 = metadata !{metadata !38, metadata !44}
!38 = metadata !{i32 786484, i32 0, metadata !16, metadata !"y_op", metadata !"y_op", metadata !"", metadata !17, i32 25, metadata !39, i32 1, i32 1, null} ; [ DW_TAG_variable ]
!39 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 72, i64 8, i32 0, i32 0, metadata !40, metadata !42, i32 0, i32 0} ; [ DW_TAG_array_type ]
!40 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !41} ; [ DW_TAG_const_type ]
!41 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!42 = metadata !{metadata !43, metadata !43}
!43 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ]
!44 = metadata !{i32 786484, i32 0, metadata !16, metadata !"x_op", metadata !"x_op", metadata !"", metadata !17, i32 21, metadata !39, i32 1, i32 1, null} ; [ DW_TAG_variable ]
!45 = metadata !{metadata !46}
!46 = metadata !{i32 0, i32 7, metadata !47}
!47 = metadata !{metadata !48}
!48 = metadata !{metadata !"inter_pix", metadata !49, metadata !"unsigned char", i32 0, i32 7}
!49 = metadata !{metadata !50}
!50 = metadata !{i32 0, i32 2073599, i32 1}
!51 = metadata !{metadata !52}
!52 = metadata !{i32 0, i32 31, metadata !53}
!53 = metadata !{metadata !54}
!54 = metadata !{metadata !"out_pix", metadata !49, metadata !"unsigned int", i32 0, i32 31}
!55 = metadata !{i32 786689, metadata !30, metadata !"inter_pix", null, i32 55, metadata !56, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!56 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !20, metadata !57, i32 0, i32 0} ; [ DW_TAG_array_type ]
!57 = metadata !{metadata !58}
!58 = metadata !{i32 786465, i64 0, i64 2073599}  ; [ DW_TAG_subrange_type ]
!59 = metadata !{i32 55, i32 27, metadata !30, null}
!60 = metadata !{i32 786689, metadata !30, metadata !"out_pix", null, i32 55, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!61 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 66355200, i64 32, i32 0, i32 0, metadata !35, metadata !57, i32 0, i32 0} ; [ DW_TAG_array_type ]
!62 = metadata !{i32 55, i32 60, metadata !30, null}
!63 = metadata !{i32 59, i32 1, metadata !64, null}
!64 = metadata !{i32 786443, metadata !30, i32 56, i32 1, metadata !17, i32 5} ; [ DW_TAG_lexical_block ]
!65 = metadata !{i32 790529, metadata !66, metadata !"cache[0]", null, i32 62, metadata !70, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!66 = metadata !{i32 786688, metadata !64, metadata !"cache", metadata !17, i32 62, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!67 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 61440, i64 8, i32 0, i32 0, metadata !20, metadata !68, i32 0, i32 0} ; [ DW_TAG_array_type ]
!68 = metadata !{metadata !69, metadata !27}
!69 = metadata !{i32 786465, i64 0, i64 3}        ; [ DW_TAG_subrange_type ]
!70 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 15360, i64 8, i32 0, i32 0, metadata !20, metadata !68, i32 0, i32 0} ; [ DW_TAG_array_type ]
!71 = metadata !{i32 62, i32 10, metadata !64, null}
!72 = metadata !{i32 790529, metadata !66, metadata !"cache[1]", null, i32 62, metadata !70, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!73 = metadata !{i32 790529, metadata !66, metadata !"cache[2]", null, i32 62, metadata !70, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!74 = metadata !{i32 790529, metadata !66, metadata !"cache[3]", null, i32 62, metadata !70, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!75 = metadata !{i32 790529, metadata !76, metadata !"fourWide", null, i32 65, metadata !78, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!76 = metadata !{i32 786688, metadata !64, metadata !"fourWide", metadata !17, i32 65, metadata !77, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!77 = metadata !{i32 786454, null, metadata !"OneToFourPixels", metadata !17, i32 9, i64 0, i64 0, i64 0, i32 0, metadata !78} ; [ DW_TAG_typedef ]
!78 = metadata !{i32 786455, null, metadata !"", metadata !17, i32 6, i64 32, i64 32, i64 0, i32 0, null, metadata !79, i32 0, null} ; [ DW_TAG_union_type ]
!79 = metadata !{metadata !80, metadata !83, metadata !84}
!80 = metadata !{i32 786445, metadata !78, metadata !"pix", metadata !17, i32 7, i64 32, i64 8, i64 0, i32 0, metadata !81} ; [ DW_TAG_member ]
!81 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 32, i64 8, i32 0, i32 0, metadata !20, metadata !82, i32 0, i32 0} ; [ DW_TAG_array_type ]
!82 = metadata !{metadata !69}
!83 = metadata !{i32 786445, metadata !78, metadata !"full", metadata !17, i32 8, i64 32, i64 32, i64 0, i32 0, metadata !35} ; [ DW_TAG_member ]
!84 = metadata !{i32 786478, i32 0, metadata !78, metadata !"", metadata !"", metadata !"", metadata !17, i32 6, metadata !85, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !28, i32 6} ; [ DW_TAG_subprogram ]
!85 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !86, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!86 = metadata !{null, metadata !87}
!87 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !78} ; [ DW_TAG_pointer_type ]
!88 = metadata !{i32 65, i32 18, metadata !64, null}
!89 = metadata !{i32 67, i32 40, metadata !90, null}
!90 = metadata !{i32 786443, metadata !64, i32 67, i32 17, metadata !17, i32 6} ; [ DW_TAG_lexical_block ]
!91 = metadata !{i32 89, i32 6, metadata !92, null}
!92 = metadata !{i32 786443, metadata !93, i32 89, i32 6, metadata !17, i32 17} ; [ DW_TAG_lexical_block ]
!93 = metadata !{i32 786443, metadata !94, i32 88, i32 13, metadata !17, i32 16} ; [ DW_TAG_lexical_block ]
!94 = metadata !{i32 786443, metadata !95, i32 77, i32 56, metadata !17, i32 13} ; [ DW_TAG_lexical_block ]
!95 = metadata !{i32 786443, metadata !96, i32 77, i32 16, metadata !17, i32 12} ; [ DW_TAG_lexical_block ]
!96 = metadata !{i32 786443, metadata !97, i32 76, i32 55, metadata !17, i32 11} ; [ DW_TAG_lexical_block ]
!97 = metadata !{i32 786443, metadata !64, i32 76, i32 15, metadata !17, i32 10} ; [ DW_TAG_lexical_block ]
!98 = metadata !{i32 76, i32 38, metadata !97, null}
!99 = metadata !{i32 67, i32 55, metadata !100, null}
!100 = metadata !{i32 786443, metadata !90, i32 67, i32 54, metadata !17, i32 7} ; [ DW_TAG_lexical_block ]
!101 = metadata !{i32 71, i32 2, metadata !102, null}
!102 = metadata !{i32 786443, metadata !103, i32 68, i32 58, metadata !17, i32 9} ; [ DW_TAG_lexical_block ]
!103 = metadata !{i32 786443, metadata !100, i32 68, i32 18, metadata !17, i32 8} ; [ DW_TAG_lexical_block ]
!104 = metadata !{i32 68, i32 41, metadata !103, null}
!105 = metadata !{i32 68, i32 59, metadata !102, null}
!106 = metadata !{i32 69, i32 1, metadata !102, null}
!107 = metadata !{i32 70, i32 1, metadata !102, null}
!108 = metadata !{i32 72, i32 3, metadata !102, null}
!109 = metadata !{i32 68, i32 53, metadata !103, null}
!110 = metadata !{i32 786688, metadata !103, metadata !"j", metadata !17, i32 68, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!111 = metadata !{i32 73, i32 2, metadata !100, null}
!112 = metadata !{i32 67, i32 49, metadata !90, null}
!113 = metadata !{i32 786688, metadata !90, metadata !"i", metadata !17, i32 67, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!114 = metadata !{i32 786689, metadata !16, metadata !"rows", metadata !17, i32 16777229, metadata !22, i32 0, metadata !115} ; [ DW_TAG_arg_variable ]
!115 = metadata !{i32 85, i32 12, metadata !116, null}
!116 = metadata !{i32 786443, metadata !94, i32 84, i32 10, metadata !17, i32 15} ; [ DW_TAG_lexical_block ]
!117 = metadata !{i32 13, i32 34, metadata !16, metadata !115}
!118 = metadata !{i32 76, i32 56, metadata !96, null}
!119 = metadata !{i32 81, i32 2, metadata !94, null}
!120 = metadata !{i32 90, i32 5, metadata !94, null}
!121 = metadata !{i32 92, i32 5, metadata !94, null}
!122 = metadata !{i32 77, i32 39, metadata !95, null}
!123 = metadata !{i32 786689, metadata !16, metadata !"cols", metadata !17, i32 33554445, metadata !22, i32 0, metadata !115} ; [ DW_TAG_arg_variable ]
!124 = metadata !{i32 13, i32 50, metadata !16, metadata !115}
!125 = metadata !{i32 77, i32 57, metadata !94, null}
!126 = metadata !{i32 78, i32 1, metadata !94, null}
!127 = metadata !{i32 79, i32 1, metadata !94, null}
!128 = metadata !{i32 34, i32 4, metadata !129, metadata !115}
!129 = metadata !{i32 786443, metadata !130, i32 32, i32 38, metadata !17, i32 4} ; [ DW_TAG_lexical_block ]
!130 = metadata !{i32 786443, metadata !131, i32 32, i32 11, metadata !17, i32 3} ; [ DW_TAG_lexical_block ]
!131 = metadata !{i32 786443, metadata !132, i32 31, i32 37, metadata !17, i32 2} ; [ DW_TAG_lexical_block ]
!132 = metadata !{i32 786443, metadata !133, i32 31, i32 10, metadata !17, i32 1} ; [ DW_TAG_lexical_block ]
!133 = metadata !{i32 786443, metadata !16, i32 14, i32 1, metadata !17, i32 0} ; [ DW_TAG_lexical_block ]
!134 = metadata !{i32 37, i32 4, metadata !129, metadata !115}
!135 = metadata !{i32 41, i32 2, metadata !133, metadata !115}
!136 = metadata !{i32 43, i32 2, metadata !133, metadata !115}
!137 = metadata !{i32 786688, metadata !133, metadata !"edge_val", metadata !17, i32 19, metadata !20, i32 0, metadata !115} ; [ DW_TAG_auto_variable ]
!138 = metadata !{i32 46, i32 2, metadata !133, metadata !115}
!139 = metadata !{i32 48, i32 7, metadata !133, metadata !115}
!140 = metadata !{i32 94, i32 3, metadata !94, null}
!141 = metadata !{i32 77, i32 51, metadata !95, null}
!142 = metadata !{i32 786688, metadata !95, metadata !"j", metadata !17, i32 77, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!143 = metadata !{i32 95, i32 2, metadata !96, null}
!144 = metadata !{i32 76, i32 50, metadata !97, null}
!145 = metadata !{i32 786688, metadata !97, metadata !"i", metadata !17, i32 76, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!146 = metadata !{i32 98, i32 1, metadata !64, null}
