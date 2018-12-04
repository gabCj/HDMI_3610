; ModuleID = 'X:/Bureau/HDMI_3610/3610_4/1490679_1771119/sobellab4/solution1/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

%union.OneToFourPixels.0 = type { i32 }

@y_op = internal unnamed_addr constant [3 x [3 x i8]] [[3 x i8] c"\01\02\01", [3 x i8] zeroinitializer, [3 x i8] c"\FF\FE\FF"], align 1 ; [#uses=1 type=[3 x [3 x i8]]*]
@x_op = internal unnamed_addr constant [3 x [3 x i8]] [[3 x i8] c"\FF\00\01", [3 x i8] c"\FE\00\02", [3 x i8] c"\FF\00\01"], align 1 ; [#uses=1 type=[3 x [3 x i8]]*]
@sobel_filter.str = internal unnamed_addr constant [13 x i8] c"sobel_filter\00" ; [#uses=1 type=[13 x i8]*]
@.str9 = private unnamed_addr constant [14 x i8] c"FillCacheRows\00", align 1 ; [#uses=1 type=[14 x i8]*]
@.str8 = private unnamed_addr constant [9 x i8] c"COMPLETE\00", align 1 ; [#uses=1 type=[9 x i8]*]
@.str7 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]
@.str6 = private unnamed_addr constant [6 x i8] c"gmem1\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str5 = private unnamed_addr constant [6 x i8] c"slave\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str4 = private unnamed_addr constant [6 x i8] c"gmem0\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str3 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str2 = private unnamed_addr constant [7 x i8] c"OpCols\00", align 1 ; [#uses=1 type=[7 x i8]*]
@.str13 = private unnamed_addr constant [7 x i8] c"OneTo4\00", align 1 ; [#uses=1 type=[7 x i8]*]
@.str12 = private unnamed_addr constant [11 x i8] c"FilterCols\00", align 1 ; [#uses=1 type=[11 x i8]*]
@.str11 = private unnamed_addr constant [11 x i8] c"FilterRows\00", align 1 ; [#uses=1 type=[11 x i8]*]
@.str10 = private unnamed_addr constant [14 x i8] c"FillCacheCols\00", align 1 ; [#uses=1 type=[14 x i8]*]
@.str1 = private unnamed_addr constant [7 x i8] c"OpRows\00", align 1 ; [#uses=1 type=[7 x i8]*]
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]

; [#uses=0]
define void @sobel_filter(i8* %inter_pix, i32* %out_pix) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecTopModule([13 x i8]* @sobel_filter.str) nounwind
  %cache = alloca [4 x [1920 x i8]], align 16     ; [#uses=4 type=[4 x [1920 x i8]]*]
  %fourWide = alloca %union.OneToFourPixels.0, align 4 ; [#uses=2 type=%union.OneToFourPixels.0*]
  call void @llvm.dbg.value(metadata !{i8* %inter_pix}, i64 0, metadata !47), !dbg !48 ; [debug line = 55:27] [debug variable = inter_pix]
  call void @llvm.dbg.value(metadata !{i32* %out_pix}, i64 0, metadata !49), !dbg !50 ; [debug line = 55:60] [debug variable = out_pix]
  call void (...)* @_ssdm_SpecArrayDimSize(i32* %out_pix, i32 2073600) nounwind, !dbg !51 ; [debug line = 56:2]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %inter_pix, i32 2073600) nounwind, !dbg !53 ; [debug line = 56:46]
  call void (...)* @_ssdm_op_SpecInterface(i8* %inter_pix, i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([6 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 16, i32 16, i32 16, i32 16, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !54 ; [debug line = 57:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %out_pix, i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([6 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 16, i32 16, i32 16, i32 16, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !55 ; [debug line = 58:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, i8* getelementptr inbounds ([10 x i8]* @.str7, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !56 ; [debug line = 59:1]
  call void @llvm.dbg.declare(metadata !{[4 x [1920 x i8]]* %cache}, metadata !57), !dbg !61 ; [debug line = 62:10] [debug variable = cache]
  %image.assign = getelementptr inbounds [4 x [1920 x i8]]* %cache, i64 0, i64 0, !dbg !62 ; [#uses=1 type=[1920 x i8]*] [debug line = 63:1]
  call void (...)* @_ssdm_SpecArrayPartition([1920 x i8]* %image.assign, i32 1, i8* getelementptr inbounds ([9 x i8]* @.str8, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !62 ; [debug line = 63:1]
  call void @llvm.dbg.declare(metadata !{%union.OneToFourPixels.0* %fourWide}, metadata !63), !dbg !75 ; [debug line = 65:18] [debug variable = fourWide]
  br label %1, !dbg !76                           ; [debug line = 67:40]

; <label>:1                                       ; preds = %5, %0
  %i = phi i32 [ 0, %0 ], [ %i.1, %5 ]            ; [#uses=4 type=i32]
  %tmp = icmp eq i32 %i, 2, !dbg !76              ; [#uses=1 type=i1] [debug line = 67:40]
  br i1 %tmp, label %.preheader.preheader, label %2, !dbg !76 ; [debug line = 67:40]

.preheader.preheader:                             ; preds = %1
  %tmp.1 = bitcast %union.OneToFourPixels.0* %fourWide to [4 x i8]*, !dbg !78 ; [#uses=1 type=[4 x i8]*] [debug line = 89:6]
  %fourWide.addr = getelementptr inbounds %union.OneToFourPixels.0* %fourWide, i64 0, i32 0, !dbg !85 ; [#uses=1 type=i32*] [debug line = 90:5]
  br label %.preheader, !dbg !86                  ; [debug line = 76:38]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([14 x i8]* @.str9, i64 0, i64 0)) nounwind, !dbg !87 ; [debug line = 67:55]
  %rbegin3 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([14 x i8]* @.str9, i64 0, i64 0)) nounwind, !dbg !87 ; [#uses=1 type=i32] [debug line = 67:55]
  %tmp.2 = mul i32 %i, 1920, !dbg !89             ; [#uses=1 type=i32] [debug line = 71:2]
  %tmp.3 = zext i32 %i to i64, !dbg !89           ; [#uses=1 type=i64] [debug line = 71:2]
  br label %3, !dbg !92                           ; [debug line = 68:41]

; <label>:3                                       ; preds = %4, %2
  %j = phi i32 [ 0, %2 ], [ %j.1, %4 ]            ; [#uses=4 type=i32]
  %tmp.5 = icmp eq i32 %j, 1920, !dbg !92         ; [#uses=1 type=i1] [debug line = 68:41]
  br i1 %tmp.5, label %5, label %4, !dbg !92      ; [debug line = 68:41]

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([14 x i8]* @.str10, i64 0, i64 0)) nounwind, !dbg !93 ; [debug line = 68:59]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([14 x i8]* @.str10, i64 0, i64 0)) nounwind, !dbg !93 ; [#uses=1 type=i32] [debug line = 68:59]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !94 ; [debug line = 69:1]
  call void (...)* @_ssdm_SpecLoopFlatten(i32 1, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !95 ; [debug line = 70:1]
  %tmp.15 = add i32 %j, %tmp.2, !dbg !89          ; [#uses=1 type=i32] [debug line = 71:2]
  %tmp.16 = zext i32 %tmp.15 to i64, !dbg !89     ; [#uses=1 type=i64] [debug line = 71:2]
  %inter_pix.addr = getelementptr inbounds i8* %inter_pix, i64 %tmp.16, !dbg !89 ; [#uses=1 type=i8*] [debug line = 71:2]
  %inter_pix.load = load i8* %inter_pix.addr, align 1, !dbg !89 ; [#uses=2 type=i8] [debug line = 71:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %inter_pix.load) nounwind
  %tmp.17 = zext i32 %j to i64, !dbg !89          ; [#uses=1 type=i64] [debug line = 71:2]
  %cache.addr.1 = getelementptr inbounds [4 x [1920 x i8]]* %cache, i64 0, i64 %tmp.3, i64 %tmp.17, !dbg !89 ; [#uses=1 type=i8*] [debug line = 71:2]
  store i8 %inter_pix.load, i8* %cache.addr.1, align 1, !dbg !89 ; [debug line = 71:2]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([14 x i8]* @.str10, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !96 ; [#uses=0 type=i32] [debug line = 72:3]
  %j.1 = add i32 %j, 1, !dbg !97                  ; [#uses=1 type=i32] [debug line = 68:53]
  call void @llvm.dbg.value(metadata !{i32 %j.1}, i64 0, metadata !98), !dbg !97 ; [debug line = 68:53] [debug variable = j]
  br label %3, !dbg !97                           ; [debug line = 68:53]

; <label>:5                                       ; preds = %3
  %rend4 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([14 x i8]* @.str9, i64 0, i64 0), i32 %rbegin3) nounwind, !dbg !99 ; [#uses=0 type=i32] [debug line = 73:2]
  %i.1 = add i32 %i, 1, !dbg !100                 ; [#uses=1 type=i32] [debug line = 67:49]
  call void @llvm.dbg.value(metadata !{i32 %i.1}, i64 0, metadata !101), !dbg !100 ; [debug line = 67:49] [debug variable = i]
  br label %1, !dbg !100                          ; [debug line = 67:49]

.preheader:                                       ; preds = %20, %.preheader.preheader
  %rows.assign = phi i32 [ %i.2, %20 ], [ 0, %.preheader.preheader ] ; [#uses=7 type=i32]
  %tmp.4 = icmp eq i32 %rows.assign, 1080, !dbg !86 ; [#uses=1 type=i1] [debug line = 76:38]
  br i1 %tmp.4, label %21, label %6, !dbg !86     ; [debug line = 76:38]

; <label>:6                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([11 x i8]* @.str11, i64 0, i64 0)) nounwind, !dbg !102 ; [debug line = 76:56]
  %rbegin7 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([11 x i8]* @.str11, i64 0, i64 0)) nounwind, !dbg !102 ; [#uses=1 type=i32] [debug line = 76:56]
  %tmp.6 = icmp eq i32 %rows.assign, 0, !dbg !103 ; [#uses=1 type=i1] [debug line = 81:2]
  %tmp.7 = icmp eq i32 %rows.assign, 1079, !dbg !103 ; [#uses=1 type=i1] [debug line = 81:2]
  %tmp.8 = mul i32 %rows.assign, 1920, !dbg !85   ; [#uses=1 type=i32] [debug line = 90:5]
  %tmp.9 = add i32 %rows.assign, 2, !dbg !104     ; [#uses=2 type=i32] [debug line = 92:5]
  %tmp.10 = urem i32 %tmp.9, 1080, !dbg !104      ; [#uses=1 type=i32] [debug line = 92:5]
  %tmp.11 = mul i32 %tmp.10, 1920, !dbg !104      ; [#uses=1 type=i32] [debug line = 92:5]
  %tmp.12 = and i32 %tmp.9, 3, !dbg !104          ; [#uses=1 type=i32] [debug line = 92:5]
  %tmp.13 = zext i32 %tmp.12 to i64, !dbg !104    ; [#uses=1 type=i64] [debug line = 92:5]
  br label %7, !dbg !105                          ; [debug line = 77:39]

; <label>:7                                       ; preds = %19, %6
  %cols.assign = phi i32 [ 0, %6 ], [ %j.3, %19 ] ; [#uses=8 type=i32]
  %tmp.19 = icmp eq i32 %cols.assign, 1920, !dbg !105 ; [#uses=1 type=i1] [debug line = 77:39]
  br i1 %tmp.19, label %20, label %8, !dbg !105   ; [debug line = 77:39]

; <label>:8                                       ; preds = %7
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([11 x i8]* @.str12, i64 0, i64 0)) nounwind, !dbg !106 ; [debug line = 77:57]
  %rbegin5 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([11 x i8]* @.str12, i64 0, i64 0)) nounwind, !dbg !106 ; [#uses=1 type=i32] [debug line = 77:57]
  call void (...)* @_ssdm_op_SpecPipeline(i32 2, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !107 ; [debug line = 78:1]
  call void (...)* @_ssdm_SpecLoopFlatten(i32 1, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !108 ; [debug line = 79:1]
  %tmp.21 = icmp eq i32 %cols.assign, 0, !dbg !103 ; [#uses=1 type=i1] [debug line = 81:2]
  %tmp.22 = icmp eq i32 %cols.assign, 1919, !dbg !103 ; [#uses=1 type=i1] [debug line = 81:2]
  %or.cond = or i1 %tmp.21, %tmp.22, !dbg !103    ; [#uses=1 type=i1] [debug line = 81:2]
  %or.cond1 = or i1 %or.cond, %tmp.6, !dbg !103   ; [#uses=1 type=i1] [debug line = 81:2]
  %or.cond2 = or i1 %or.cond1, %tmp.7, !dbg !103  ; [#uses=1 type=i1] [debug line = 81:2]
  br i1 %or.cond2, label %._crit_edge, label %9, !dbg !103 ; [debug line = 81:2]

; <label>:9                                       ; preds = %8
  call void @llvm.dbg.value(metadata !{i32 %rows.assign}, i64 0, metadata !109) nounwind, !dbg !112 ; [debug line = 13:34@85:12] [debug variable = rows]
  call void @llvm.dbg.value(metadata !{i32 %cols.assign}, i64 0, metadata !113) nounwind, !dbg !114 ; [debug line = 13:50@85:12] [debug variable = cols]
  call void @llvm.dbg.value(metadata !{[1920 x i8]* %image.assign}, i64 0, metadata !115) nounwind, !dbg !116 ; [debug line = 13:64@85:12] [debug variable = image]
  br label %10, !dbg !117                         ; [debug line = 31:23@85:12]

; <label>:10                                      ; preds = %14, %9
  %x_weight.0.i = phi i32 [ 0, %9 ], [ %x_weight.1.i.lcssa, %14 ] ; [#uses=2 type=i32]
  %y_weight.0.i = phi i32 [ 0, %9 ], [ %y_weight.1.i.lcssa, %14 ] ; [#uses=2 type=i32]
  %j.0.i = phi i32 [ 0, %9 ], [ %j.2, %14 ]       ; [#uses=4 type=i32]
  %exitcond1.i = icmp eq i32 %j.0.i, 3, !dbg !117 ; [#uses=1 type=i1] [debug line = 31:23@85:12]
  br i1 %exitcond1.i, label %15, label %11, !dbg !117 ; [debug line = 31:23@85:12]

; <label>:11                                      ; preds = %10
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !120 ; [debug line = 31:38@85:12]
  %rbegin2.i = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !120 ; [#uses=1 type=i32] [debug line = 31:38@85:12]
  %tmp.32 = add i32 %cols.assign, -1, !dbg !122   ; [#uses=1 type=i32] [debug line = 34:4@85:12]
  %tmp.33 = add i32 %tmp.32, %j.0.i, !dbg !122    ; [#uses=1 type=i32] [debug line = 34:4@85:12]
  %tmp.34 = sext i32 %tmp.33 to i64, !dbg !122    ; [#uses=1 type=i64] [debug line = 34:4@85:12]
  %tmp.35 = sext i32 %j.0.i to i64, !dbg !122     ; [#uses=2 type=i64] [debug line = 34:4@85:12]
  br label %12, !dbg !125                         ; [debug line = 32:24@85:12]

; <label>:12                                      ; preds = %13, %11
  %x_weight.1.i = phi i32 [ %x_weight.0.i, %11 ], [ %x_weight, %13 ] ; [#uses=2 type=i32]
  %y_weight.1.i = phi i32 [ %y_weight.0.i, %11 ], [ %y_weight, %13 ] ; [#uses=2 type=i32]
  %i.0.i = phi i32 [ 0, %11 ], [ %i.3, %13 ]      ; [#uses=4 type=i32]
  %exitcond.i = icmp eq i32 %i.0.i, 3, !dbg !125  ; [#uses=1 type=i1] [debug line = 32:24@85:12]
  br i1 %exitcond.i, label %14, label %13, !dbg !125 ; [debug line = 32:24@85:12]

; <label>:13                                      ; preds = %12
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0)) nounwind, !dbg !126 ; [debug line = 32:39@85:12]
  %rbegin.i = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0)) nounwind, !dbg !126 ; [#uses=1 type=i32] [debug line = 32:39@85:12]
  %tmp.38 = add i32 %rows.assign, -1, !dbg !122   ; [#uses=1 type=i32] [debug line = 34:4@85:12]
  %tmp.39 = add i32 %tmp.38, %i.0.i, !dbg !122    ; [#uses=1 type=i32] [debug line = 34:4@85:12]
  %tmp.40 = srem i32 %tmp.39, 4, !dbg !122        ; [#uses=1 type=i32] [debug line = 34:4@85:12]
  %tmp.41 = sext i32 %tmp.40 to i64, !dbg !122    ; [#uses=1 type=i64] [debug line = 34:4@85:12]
  %cache.addr = getelementptr inbounds [4 x [1920 x i8]]* %cache, i64 0, i64 %tmp.41, i64 %tmp.34, !dbg !122 ; [#uses=1 type=i8*] [debug line = 34:4@85:12]
  %cache.load = load i8* %cache.addr, align 1, !dbg !122 ; [#uses=3 type=i8] [debug line = 34:4@85:12]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %cache.load) nounwind
  %tmp.42 = zext i8 %cache.load to i32, !dbg !122 ; [#uses=2 type=i32] [debug line = 34:4@85:12]
  %tmp.43 = sext i32 %i.0.i to i64, !dbg !122     ; [#uses=2 type=i64] [debug line = 34:4@85:12]
  %x_op.addr = getelementptr inbounds [3 x [3 x i8]]* @x_op, i64 0, i64 %tmp.43, i64 %tmp.35, !dbg !122 ; [#uses=1 type=i8*] [debug line = 34:4@85:12]
  %x_op.load = load i8* %x_op.addr, align 1, !dbg !122 ; [#uses=2 type=i8] [debug line = 34:4@85:12]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %x_op.load) nounwind
  %tmp.44 = sext i8 %x_op.load to i32, !dbg !122  ; [#uses=1 type=i32] [debug line = 34:4@85:12]
  %tmp.45 = mul nsw i32 %tmp.44, %tmp.42, !dbg !122 ; [#uses=1 type=i32] [debug line = 34:4@85:12]
  %x_weight = add nsw i32 %tmp.45, %x_weight.1.i, !dbg !122 ; [#uses=1 type=i32] [debug line = 34:4@85:12]
  call void @llvm.dbg.value(metadata !{i32 %x_weight}, i64 0, metadata !127) nounwind, !dbg !122 ; [debug line = 34:4@85:12] [debug variable = x_weight]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %cache.load) nounwind
  %y_op.addr = getelementptr inbounds [3 x [3 x i8]]* @y_op, i64 0, i64 %tmp.43, i64 %tmp.35, !dbg !128 ; [#uses=1 type=i8*] [debug line = 37:4@85:12]
  %y_op.load = load i8* %y_op.addr, align 1, !dbg !128 ; [#uses=2 type=i8] [debug line = 37:4@85:12]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %y_op.load) nounwind
  %tmp.47 = sext i8 %y_op.load to i32, !dbg !128  ; [#uses=1 type=i32] [debug line = 37:4@85:12]
  %tmp.48 = mul nsw i32 %tmp.47, %tmp.42, !dbg !128 ; [#uses=1 type=i32] [debug line = 37:4@85:12]
  %y_weight = add nsw i32 %tmp.48, %y_weight.1.i, !dbg !128 ; [#uses=1 type=i32] [debug line = 37:4@85:12]
  call void @llvm.dbg.value(metadata !{i32 %y_weight}, i64 0, metadata !129) nounwind, !dbg !128 ; [debug line = 37:4@85:12] [debug variable = y_weight]
  %rend.i = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i32 %rbegin.i) nounwind, !dbg !130 ; [#uses=0 type=i32] [debug line = 38:3@85:12]
  %i.3 = add nsw i32 %i.0.i, 1, !dbg !131         ; [#uses=1 type=i32] [debug line = 32:33@85:12]
  call void @llvm.dbg.value(metadata !{i32 %i.3}, i64 0, metadata !132) nounwind, !dbg !131 ; [debug line = 32:33@85:12] [debug variable = i]
  br label %12, !dbg !131                         ; [debug line = 32:33@85:12]

; <label>:14                                      ; preds = %12
  %y_weight.1.i.lcssa = phi i32 [ %y_weight.1.i, %12 ] ; [#uses=1 type=i32]
  %x_weight.1.i.lcssa = phi i32 [ %x_weight.1.i, %12 ] ; [#uses=1 type=i32]
  %rend3.i = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i32 %rbegin2.i) nounwind, !dbg !133 ; [#uses=0 type=i32] [debug line = 39:2@85:12]
  %j.2 = add nsw i32 %j.0.i, 1, !dbg !134         ; [#uses=1 type=i32] [debug line = 31:32@85:12]
  call void @llvm.dbg.value(metadata !{i32 %j.2}, i64 0, metadata !135) nounwind, !dbg !134 ; [debug line = 31:32@85:12] [debug variable = j]
  br label %10, !dbg !134                         ; [debug line = 31:32@85:12]

; <label>:15                                      ; preds = %10
  %y_weight.0.i.lcssa = phi i32 [ %y_weight.0.i, %10 ] ; [#uses=3 type=i32]
  %x_weight.0.i.lcssa = phi i32 [ %x_weight.0.i, %10 ] ; [#uses=3 type=i32]
  %tmp.23 = icmp sgt i32 %x_weight.0.i.lcssa, 0, !dbg !136 ; [#uses=1 type=i1] [debug line = 41:2@85:12]
  %tmp.24 = sub nsw i32 0, %x_weight.0.i.lcssa, !dbg !136 ; [#uses=1 type=i32] [debug line = 41:2@85:12]
  %tmp.25 = select i1 %tmp.23, i32 %x_weight.0.i.lcssa, i32 %tmp.24, !dbg !136 ; [#uses=1 type=i32] [debug line = 41:2@85:12]
  %tmp.26 = icmp sgt i32 %y_weight.0.i.lcssa, 0, !dbg !136 ; [#uses=1 type=i1] [debug line = 41:2@85:12]
  %tmp.27 = sub nsw i32 0, %y_weight.0.i.lcssa, !dbg !136 ; [#uses=1 type=i32] [debug line = 41:2@85:12]
  %tmp.28 = select i1 %tmp.26, i32 %y_weight.0.i.lcssa, i32 %tmp.27, !dbg !136 ; [#uses=1 type=i32] [debug line = 41:2@85:12]
  %edge_weight = add nsw i32 %tmp.25, %tmp.28, !dbg !136 ; [#uses=1 type=i32] [debug line = 41:2@85:12]
  call void @llvm.dbg.value(metadata !{i32 %edge_weight}, i64 0, metadata !137) nounwind, !dbg !136 ; [debug line = 41:2@85:12] [debug variable = edge_weight]
  %tmp.29 = trunc i32 %edge_weight to i8, !dbg !138 ; [#uses=3 type=i8] [debug line = 43:2@85:12]
  %edge_val = xor i8 %tmp.29, -1, !dbg !138       ; [#uses=1 type=i8] [debug line = 43:2@85:12]
  call void @llvm.dbg.value(metadata !{i8 %edge_val}, i64 0, metadata !139) nounwind, !dbg !138 ; [debug line = 43:2@85:12] [debug variable = edge_val]
  %tmp.31 = icmp ult i8 %tmp.29, 55, !dbg !140    ; [#uses=1 type=i1] [debug line = 46:2@85:12]
  br i1 %tmp.31, label %._crit_edge, label %16, !dbg !140 ; [debug line = 46:2@85:12]

; <label>:16                                      ; preds = %15
  %tmp.36 = icmp ugt i8 %tmp.29, -101, !dbg !141  ; [#uses=1 type=i1] [debug line = 48:7@85:12]
  %..i = select i1 %tmp.36, i8 0, i8 %edge_val, !dbg !141 ; [#uses=1 type=i8] [debug line = 48:7@85:12]
  br label %._crit_edge

._crit_edge:                                      ; preds = %16, %15, %8
  %val = phi i8 [ 0, %8 ], [ %..i, %16 ], [ -1, %15 ] ; [#uses=1 type=i8]
  br label %17, !dbg !142                         ; [debug line = 88:27]

; <label>:17                                      ; preds = %18, %._crit_edge
  %k = phi i32 [ 0, %._crit_edge ], [ %k.1, %18 ] ; [#uses=3 type=i32]
  %exitcond = icmp eq i32 %k, 4, !dbg !142        ; [#uses=1 type=i1] [debug line = 88:27]
  br i1 %exitcond, label %19, label %18, !dbg !142 ; [debug line = 88:27]

; <label>:18                                      ; preds = %17
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([7 x i8]* @.str13, i64 0, i64 0)) nounwind, !dbg !78 ; [debug line = 89:6]
  %rbegin9 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([7 x i8]* @.str13, i64 0, i64 0)) nounwind, !dbg !78 ; [#uses=1 type=i32] [debug line = 89:6]
  %tmp.57 = sext i32 %k to i64, !dbg !78          ; [#uses=1 type=i64] [debug line = 89:6]
  %tmp.1.addr = getelementptr inbounds [4 x i8]* %tmp.1, i64 0, i64 %tmp.57, !dbg !78 ; [#uses=1 type=i8*] [debug line = 89:6]
  store i8 %val, i8* %tmp.1.addr, align 1, !dbg !78 ; [debug line = 89:6]
  %rend10 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([7 x i8]* @.str13, i64 0, i64 0), i32 %rbegin9) nounwind, !dbg !143 ; [#uses=0 type=i32] [debug line = 89:24]
  %k.1 = add nsw i32 %k, 1, !dbg !144             ; [#uses=1 type=i32] [debug line = 88:36]
  call void @llvm.dbg.value(metadata !{i32 %k.1}, i64 0, metadata !145), !dbg !144 ; [debug line = 88:36] [debug variable = k]
  br label %17, !dbg !144                         ; [debug line = 88:36]

; <label>:19                                      ; preds = %17
  %fourWide.load = load i32* %fourWide.addr, align 4, !dbg !85 ; [#uses=1 type=i32] [debug line = 90:5]
  %tmp.51 = add i32 %cols.assign, %tmp.8, !dbg !85 ; [#uses=1 type=i32] [debug line = 90:5]
  %tmp.52 = zext i32 %tmp.51 to i64, !dbg !85     ; [#uses=1 type=i64] [debug line = 90:5]
  %out_pix.addr = getelementptr inbounds i32* %out_pix, i64 %tmp.52, !dbg !85 ; [#uses=1 type=i32*] [debug line = 90:5]
  store i32 %fourWide.load, i32* %out_pix.addr, align 4, !dbg !85 ; [debug line = 90:5]
  %tmp.53 = add i32 %cols.assign, %tmp.11, !dbg !104 ; [#uses=1 type=i32] [debug line = 92:5]
  %tmp.54 = zext i32 %tmp.53 to i64, !dbg !104    ; [#uses=1 type=i64] [debug line = 92:5]
  %inter_pix.addr.1 = getelementptr inbounds i8* %inter_pix, i64 %tmp.54, !dbg !104 ; [#uses=1 type=i8*] [debug line = 92:5]
  %inter_pix.load.1 = load i8* %inter_pix.addr.1, align 1, !dbg !104 ; [#uses=2 type=i8] [debug line = 92:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %inter_pix.load.1) nounwind
  %tmp.55 = zext i32 %cols.assign to i64, !dbg !104 ; [#uses=1 type=i64] [debug line = 92:5]
  %cache.addr.2 = getelementptr inbounds [4 x [1920 x i8]]* %cache, i64 0, i64 %tmp.13, i64 %tmp.55, !dbg !104 ; [#uses=1 type=i8*] [debug line = 92:5]
  store i8 %inter_pix.load.1, i8* %cache.addr.2, align 1, !dbg !104 ; [debug line = 92:5]
  %rend6 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([11 x i8]* @.str12, i64 0, i64 0), i32 %rbegin5) nounwind, !dbg !146 ; [#uses=0 type=i32] [debug line = 94:3]
  %j.3 = add i32 %cols.assign, 1, !dbg !147       ; [#uses=1 type=i32] [debug line = 77:51]
  call void @llvm.dbg.value(metadata !{i32 %j.3}, i64 0, metadata !148), !dbg !147 ; [debug line = 77:51] [debug variable = j]
  br label %7, !dbg !147                          ; [debug line = 77:51]

; <label>:20                                      ; preds = %7
  %rend8 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([11 x i8]* @.str11, i64 0, i64 0), i32 %rbegin7) nounwind, !dbg !149 ; [#uses=0 type=i32] [debug line = 95:2]
  %i.2 = add i32 %rows.assign, 1, !dbg !150       ; [#uses=1 type=i32] [debug line = 76:50]
  call void @llvm.dbg.value(metadata !{i32 %i.2}, i64 0, metadata !151), !dbg !150 ; [debug line = 76:50] [debug variable = i]
  br label %.preheader, !dbg !150                 ; [debug line = 76:50]

; <label>:21                                      ; preds = %.preheader
  ret void, !dbg !152                             ; [debug line = 98:1]
}

; [#uses=16]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=2]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=7]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=7]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=2]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=7]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=3]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=2]
declare void @_ssdm_SpecLoopFlatten(...) nounwind

; [#uses=6]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=1]
declare void @_ssdm_SpecArrayPartition(...) nounwind

; [#uses=2]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!34, !41}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"X:/Bureau/HDMI_3610/3610_4/1490679_1771119/sobellab4/solution1/.autopilot/db/Sobel.pragma.2.cpp", metadata !"X:\5CBureau\5CHDMI_3610\5C3610_4\5C1490679_1771119", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !25} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !19}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"sobel_operator", metadata !"sobel_operator", metadata !"_Z14sobel_operatoriiPA1920_h", metadata !6, i32 13, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !17, i32 14} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"sobellab4/Sobel.cpp", metadata !"X:\5CBureau\5CHDMI_3610\5C3610_4\5C1490679_1771119", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{metadata !9, metadata !11, metadata !11, metadata !13}
!9 = metadata !{i32 786454, null, metadata !"uint8_t", metadata !6, i32 36, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ]
!10 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!11 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !12} ; [ DW_TAG_const_type ]
!12 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!13 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ]
!14 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 15360, i64 8, i32 0, i32 0, metadata !9, metadata !15, i32 0, i32 0} ; [ DW_TAG_array_type ]
!15 = metadata !{metadata !16}
!16 = metadata !{i32 786465, i64 0, i64 1919}     ; [ DW_TAG_subrange_type ]
!17 = metadata !{metadata !18}
!18 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!19 = metadata !{i32 786478, i32 0, metadata !6, metadata !"sobel_filter", metadata !"sobel_filter", metadata !"_Z12sobel_filterPhPj", metadata !6, i32 55, metadata !20, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i32*)* @sobel_filter, null, null, metadata !17, i32 56} ; [ DW_TAG_subprogram ]
!20 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !21, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!21 = metadata !{null, metadata !22, metadata !23}
!22 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ]
!23 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !24} ; [ DW_TAG_pointer_type ]
!24 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!25 = metadata !{metadata !26}
!26 = metadata !{metadata !27, metadata !33}
!27 = metadata !{i32 786484, i32 0, metadata !5, metadata !"x_op", metadata !"x_op", metadata !"", metadata !6, i32 21, metadata !28, i32 1, i32 1, [3 x [3 x i8]]* @x_op} ; [ DW_TAG_variable ]
!28 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 72, i64 8, i32 0, i32 0, metadata !29, metadata !31, i32 0, i32 0} ; [ DW_TAG_array_type ]
!29 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_const_type ]
!30 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!31 = metadata !{metadata !32, metadata !32}
!32 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ]
!33 = metadata !{i32 786484, i32 0, metadata !5, metadata !"y_op", metadata !"y_op", metadata !"", metadata !6, i32 25, metadata !28, i32 1, i32 1, [3 x [3 x i8]]* @y_op} ; [ DW_TAG_variable ]
!34 = metadata !{null, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40}
!35 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 1}
!36 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!37 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int", metadata !"uint8_t [1920]*"}
!38 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const", metadata !"const", metadata !""}
!39 = metadata !{metadata !"kernel_arg_name", metadata !"rows", metadata !"cols", metadata !"image"}
!40 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!41 = metadata !{void (i8*, i32*)* @sobel_filter, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !40}
!42 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!43 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!44 = metadata !{metadata !"kernel_arg_type", metadata !"uint8_t*", metadata !"uint*"}
!45 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!46 = metadata !{metadata !"kernel_arg_name", metadata !"inter_pix", metadata !"out_pix"}
!47 = metadata !{i32 786689, metadata !19, metadata !"inter_pix", metadata !6, i32 16777271, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!48 = metadata !{i32 55, i32 27, metadata !19, null}
!49 = metadata !{i32 786689, metadata !19, metadata !"out_pix", metadata !6, i32 33554487, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!50 = metadata !{i32 55, i32 60, metadata !19, null}
!51 = metadata !{i32 56, i32 2, metadata !52, null}
!52 = metadata !{i32 786443, metadata !19, i32 56, i32 1, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!53 = metadata !{i32 56, i32 46, metadata !52, null}
!54 = metadata !{i32 57, i32 1, metadata !52, null}
!55 = metadata !{i32 58, i32 1, metadata !52, null}
!56 = metadata !{i32 59, i32 1, metadata !52, null}
!57 = metadata !{i32 786688, metadata !52, metadata !"cache", metadata !6, i32 62, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!58 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 61440, i64 8, i32 0, i32 0, metadata !9, metadata !59, i32 0, i32 0} ; [ DW_TAG_array_type ]
!59 = metadata !{metadata !60, metadata !16}
!60 = metadata !{i32 786465, i64 0, i64 3}        ; [ DW_TAG_subrange_type ]
!61 = metadata !{i32 62, i32 10, metadata !52, null}
!62 = metadata !{i32 63, i32 1, metadata !52, null}
!63 = metadata !{i32 786688, metadata !52, metadata !"fourWide", metadata !6, i32 65, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!64 = metadata !{i32 786454, null, metadata !"OneToFourPixels", metadata !6, i32 9, i64 0, i64 0, i64 0, i32 0, metadata !65} ; [ DW_TAG_typedef ]
!65 = metadata !{i32 786455, null, metadata !"", metadata !6, i32 6, i64 32, i64 32, i64 0, i32 0, null, metadata !66, i32 0, null} ; [ DW_TAG_union_type ]
!66 = metadata !{metadata !67, metadata !70, metadata !71}
!67 = metadata !{i32 786445, metadata !65, metadata !"pix", metadata !6, i32 7, i64 32, i64 8, i64 0, i32 0, metadata !68} ; [ DW_TAG_member ]
!68 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 32, i64 8, i32 0, i32 0, metadata !9, metadata !69, i32 0, i32 0} ; [ DW_TAG_array_type ]
!69 = metadata !{metadata !60}
!70 = metadata !{i32 786445, metadata !65, metadata !"full", metadata !6, i32 8, i64 32, i64 32, i64 0, i32 0, metadata !24} ; [ DW_TAG_member ]
!71 = metadata !{i32 786478, i32 0, metadata !65, metadata !"", metadata !"", metadata !"", metadata !6, i32 6, metadata !72, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !17, i32 6} ; [ DW_TAG_subprogram ]
!72 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !73, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!73 = metadata !{null, metadata !74}
!74 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !65} ; [ DW_TAG_pointer_type ]
!75 = metadata !{i32 65, i32 18, metadata !52, null}
!76 = metadata !{i32 67, i32 40, metadata !77, null}
!77 = metadata !{i32 786443, metadata !52, i32 67, i32 17, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!78 = metadata !{i32 89, i32 6, metadata !79, null}
!79 = metadata !{i32 786443, metadata !80, i32 89, i32 6, metadata !6, i32 17} ; [ DW_TAG_lexical_block ]
!80 = metadata !{i32 786443, metadata !81, i32 88, i32 13, metadata !6, i32 16} ; [ DW_TAG_lexical_block ]
!81 = metadata !{i32 786443, metadata !82, i32 77, i32 56, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!82 = metadata !{i32 786443, metadata !83, i32 77, i32 16, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!83 = metadata !{i32 786443, metadata !84, i32 76, i32 55, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!84 = metadata !{i32 786443, metadata !52, i32 76, i32 15, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!85 = metadata !{i32 90, i32 5, metadata !81, null}
!86 = metadata !{i32 76, i32 38, metadata !84, null}
!87 = metadata !{i32 67, i32 55, metadata !88, null}
!88 = metadata !{i32 786443, metadata !77, i32 67, i32 54, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!89 = metadata !{i32 71, i32 2, metadata !90, null}
!90 = metadata !{i32 786443, metadata !91, i32 68, i32 58, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!91 = metadata !{i32 786443, metadata !88, i32 68, i32 18, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!92 = metadata !{i32 68, i32 41, metadata !91, null}
!93 = metadata !{i32 68, i32 59, metadata !90, null}
!94 = metadata !{i32 69, i32 1, metadata !90, null}
!95 = metadata !{i32 70, i32 1, metadata !90, null}
!96 = metadata !{i32 72, i32 3, metadata !90, null}
!97 = metadata !{i32 68, i32 53, metadata !91, null}
!98 = metadata !{i32 786688, metadata !91, metadata !"j", metadata !6, i32 68, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!99 = metadata !{i32 73, i32 2, metadata !88, null}
!100 = metadata !{i32 67, i32 49, metadata !77, null}
!101 = metadata !{i32 786688, metadata !77, metadata !"i", metadata !6, i32 67, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!102 = metadata !{i32 76, i32 56, metadata !83, null}
!103 = metadata !{i32 81, i32 2, metadata !81, null}
!104 = metadata !{i32 92, i32 5, metadata !81, null}
!105 = metadata !{i32 77, i32 39, metadata !82, null}
!106 = metadata !{i32 77, i32 57, metadata !81, null}
!107 = metadata !{i32 78, i32 1, metadata !81, null}
!108 = metadata !{i32 79, i32 1, metadata !81, null}
!109 = metadata !{i32 786689, metadata !5, metadata !"rows", metadata !6, i32 16777229, metadata !11, i32 0, metadata !110} ; [ DW_TAG_arg_variable ]
!110 = metadata !{i32 85, i32 12, metadata !111, null}
!111 = metadata !{i32 786443, metadata !81, i32 84, i32 10, metadata !6, i32 15} ; [ DW_TAG_lexical_block ]
!112 = metadata !{i32 13, i32 34, metadata !5, metadata !110}
!113 = metadata !{i32 786689, metadata !5, metadata !"cols", metadata !6, i32 33554445, metadata !11, i32 0, metadata !110} ; [ DW_TAG_arg_variable ]
!114 = metadata !{i32 13, i32 50, metadata !5, metadata !110}
!115 = metadata !{i32 786689, metadata !5, metadata !"image", metadata !6, i32 50331661, metadata !13, i32 0, metadata !110} ; [ DW_TAG_arg_variable ]
!116 = metadata !{i32 13, i32 64, metadata !5, metadata !110}
!117 = metadata !{i32 31, i32 23, metadata !118, metadata !110}
!118 = metadata !{i32 786443, metadata !119, i32 31, i32 10, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!119 = metadata !{i32 786443, metadata !5, i32 14, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!120 = metadata !{i32 31, i32 38, metadata !121, metadata !110}
!121 = metadata !{i32 786443, metadata !118, i32 31, i32 37, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!122 = metadata !{i32 34, i32 4, metadata !123, metadata !110}
!123 = metadata !{i32 786443, metadata !124, i32 32, i32 38, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!124 = metadata !{i32 786443, metadata !121, i32 32, i32 11, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!125 = metadata !{i32 32, i32 24, metadata !124, metadata !110}
!126 = metadata !{i32 32, i32 39, metadata !123, metadata !110}
!127 = metadata !{i32 786688, metadata !119, metadata !"x_weight", metadata !6, i32 29, metadata !12, i32 0, metadata !110} ; [ DW_TAG_auto_variable ]
!128 = metadata !{i32 37, i32 4, metadata !123, metadata !110}
!129 = metadata !{i32 786688, metadata !119, metadata !"y_weight", metadata !6, i32 30, metadata !12, i32 0, metadata !110} ; [ DW_TAG_auto_variable ]
!130 = metadata !{i32 38, i32 3, metadata !123, metadata !110}
!131 = metadata !{i32 32, i32 33, metadata !124, metadata !110}
!132 = metadata !{i32 786688, metadata !124, metadata !"i", metadata !6, i32 32, metadata !12, i32 0, metadata !110} ; [ DW_TAG_auto_variable ]
!133 = metadata !{i32 39, i32 2, metadata !121, metadata !110}
!134 = metadata !{i32 31, i32 32, metadata !118, metadata !110}
!135 = metadata !{i32 786688, metadata !118, metadata !"j", metadata !6, i32 31, metadata !12, i32 0, metadata !110} ; [ DW_TAG_auto_variable ]
!136 = metadata !{i32 41, i32 2, metadata !119, metadata !110}
!137 = metadata !{i32 786688, metadata !119, metadata !"edge_weight", metadata !6, i32 18, metadata !24, i32 0, metadata !110} ; [ DW_TAG_auto_variable ]
!138 = metadata !{i32 43, i32 2, metadata !119, metadata !110}
!139 = metadata !{i32 786688, metadata !119, metadata !"edge_val", metadata !6, i32 19, metadata !9, i32 0, metadata !110} ; [ DW_TAG_auto_variable ]
!140 = metadata !{i32 46, i32 2, metadata !119, metadata !110}
!141 = metadata !{i32 48, i32 7, metadata !119, metadata !110}
!142 = metadata !{i32 88, i32 27, metadata !80, null}
!143 = metadata !{i32 89, i32 24, metadata !79, null}
!144 = metadata !{i32 88, i32 36, metadata !80, null}
!145 = metadata !{i32 786688, metadata !80, metadata !"k", metadata !6, i32 88, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!146 = metadata !{i32 94, i32 3, metadata !81, null}
!147 = metadata !{i32 77, i32 51, metadata !82, null}
!148 = metadata !{i32 786688, metadata !82, metadata !"j", metadata !6, i32 77, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!149 = metadata !{i32 95, i32 2, metadata !83, null}
!150 = metadata !{i32 76, i32 50, metadata !84, null}
!151 = metadata !{i32 786688, metadata !84, metadata !"i", metadata !6, i32 76, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!152 = metadata !{i32 98, i32 1, metadata !52, null}
