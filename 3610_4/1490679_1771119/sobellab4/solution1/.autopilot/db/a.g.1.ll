; ModuleID = 'X:/Bureau/HDMI_3610/3610_4/1490679_1771119/sobellab4/solution1/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

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
@.str12 = private unnamed_addr constant [11 x i8] c"FilterCols\00", align 1 ; [#uses=1 type=[11 x i8]*]
@.str11 = private unnamed_addr constant [11 x i8] c"FilterRows\00", align 1 ; [#uses=1 type=[11 x i8]*]
@.str10 = private unnamed_addr constant [14 x i8] c"FillCacheCols\00", align 1 ; [#uses=1 type=[14 x i8]*]
@.str1 = private unnamed_addr constant [7 x i8] c"OpRows\00", align 1 ; [#uses=1 type=[7 x i8]*]
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]

; [#uses=0]
define void @sobel_filter(i8* %inter_pix, i32* %out_pix) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecTopModule([13 x i8]* @sobel_filter.str) nounwind
  %cache = alloca [4 x [1920 x i8]], align 16     ; [#uses=3 type=[4 x [1920 x i8]]*]
  %matrix = alloca [3 x [3 x i8]], align 1        ; [#uses=2 type=[3 x [3 x i8]]*]
  call void @llvm.dbg.value(metadata !{i8* %inter_pix}, i64 0, metadata !61), !dbg !62 ; [debug line = 95:27] [debug variable = inter_pix]
  call void @llvm.dbg.value(metadata !{i32* %out_pix}, i64 0, metadata !63), !dbg !64 ; [debug line = 95:60] [debug variable = out_pix]
  call void (...)* @_ssdm_SpecArrayDimSize(i32* %out_pix, i32 2073600) nounwind, !dbg !65 ; [debug line = 96:2]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %inter_pix, i32 2073600) nounwind, !dbg !67 ; [debug line = 96:46]
  call void (...)* @_ssdm_op_SpecInterface(i8* %inter_pix, i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([6 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 16, i32 16, i32 16, i32 16, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !68 ; [debug line = 97:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %out_pix, i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([6 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 16, i32 16, i32 16, i32 16, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !69 ; [debug line = 98:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, i8* getelementptr inbounds ([10 x i8]* @.str7, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !70 ; [debug line = 99:1]
  call void @llvm.dbg.declare(metadata !{[4 x [1920 x i8]]* %cache}, metadata !71), !dbg !75 ; [debug line = 102:10] [debug variable = cache]
  %cache.addr = getelementptr inbounds [4 x [1920 x i8]]* %cache, i64 0, i64 0, !dbg !76 ; [#uses=1 type=[1920 x i8]*] [debug line = 103:1]
  call void (...)* @_ssdm_SpecArrayPartition([1920 x i8]* %cache.addr, i32 1, i8* getelementptr inbounds ([9 x i8]* @.str8, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !76 ; [debug line = 103:1]
  call void @llvm.dbg.declare(metadata !{[3 x [3 x i8]]* %matrix}, metadata !77), !dbg !79 ; [debug line = 104:10] [debug variable = matrix]
  %image.assign = getelementptr inbounds [3 x [3 x i8]]* %matrix, i64 0, i64 0, !dbg !80 ; [#uses=1 type=[3 x i8]*] [debug line = 105:1]
  call void @llvm.dbg.value(metadata !{[3 x i8]* %image.assign}, i64 0, metadata !81) nounwind, !dbg !88 ; [debug line = 54:33@128:12] [debug variable = image]
  call void (...)* @_ssdm_SpecArrayPartition([3 x i8]* %image.assign, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str8, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !80 ; [debug line = 105:1]
  br label %1, !dbg !89                           ; [debug line = 109:40]

; <label>:1                                       ; preds = %5, %0
  %i = phi i32 [ 0, %0 ], [ %i.1, %5 ]            ; [#uses=4 type=i32]
  %tmp = icmp eq i32 %i, 2, !dbg !89              ; [#uses=1 type=i1] [debug line = 109:40]
  br i1 %tmp, label %.preheader.preheader, label %2, !dbg !89 ; [debug line = 109:40]

.preheader.preheader:                             ; preds = %1
  br label %.preheader, !dbg !91                  ; [debug line = 118:38]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([14 x i8]* @.str9, i64 0, i64 0)) nounwind, !dbg !92 ; [debug line = 109:55]
  %rbegin3 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([14 x i8]* @.str9, i64 0, i64 0)) nounwind, !dbg !92 ; [#uses=1 type=i32] [debug line = 109:55]
  %tmp.1 = mul i32 %i, 1920, !dbg !94             ; [#uses=1 type=i32] [debug line = 113:2]
  %tmp.2 = zext i32 %i to i64, !dbg !94           ; [#uses=1 type=i64] [debug line = 113:2]
  br label %3, !dbg !97                           ; [debug line = 110:41]

; <label>:3                                       ; preds = %4, %2
  %j = phi i32 [ 0, %2 ], [ %j.1, %4 ]            ; [#uses=4 type=i32]
  %tmp.4 = icmp eq i32 %j, 1920, !dbg !97         ; [#uses=1 type=i1] [debug line = 110:41]
  br i1 %tmp.4, label %5, label %4, !dbg !97      ; [debug line = 110:41]

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([14 x i8]* @.str10, i64 0, i64 0)) nounwind, !dbg !98 ; [debug line = 110:59]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([14 x i8]* @.str10, i64 0, i64 0)) nounwind, !dbg !98 ; [#uses=1 type=i32] [debug line = 110:59]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !99 ; [debug line = 111:1]
  call void (...)* @_ssdm_SpecLoopFlatten(i32 1, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !100 ; [debug line = 112:1]
  %tmp.13 = add i32 %j, %tmp.1, !dbg !94          ; [#uses=1 type=i32] [debug line = 113:2]
  %tmp.14 = zext i32 %tmp.13 to i64, !dbg !94     ; [#uses=1 type=i64] [debug line = 113:2]
  %inter_pix.addr = getelementptr inbounds i8* %inter_pix, i64 %tmp.14, !dbg !94 ; [#uses=1 type=i8*] [debug line = 113:2]
  %inter_pix.load = load i8* %inter_pix.addr, align 1, !dbg !94 ; [#uses=2 type=i8] [debug line = 113:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %inter_pix.load) nounwind
  %tmp.15 = zext i32 %j to i64, !dbg !94          ; [#uses=1 type=i64] [debug line = 113:2]
  %cache.addr.1 = getelementptr inbounds [4 x [1920 x i8]]* %cache, i64 0, i64 %tmp.2, i64 %tmp.15, !dbg !94 ; [#uses=1 type=i8*] [debug line = 113:2]
  store i8 %inter_pix.load, i8* %cache.addr.1, align 1, !dbg !94 ; [debug line = 113:2]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([14 x i8]* @.str10, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !101 ; [#uses=0 type=i32] [debug line = 114:3]
  %j.1 = add i32 %j, 1, !dbg !102                 ; [#uses=1 type=i32] [debug line = 110:53]
  call void @llvm.dbg.value(metadata !{i32 %j.1}, i64 0, metadata !103), !dbg !102 ; [debug line = 110:53] [debug variable = j]
  br label %3, !dbg !102                          ; [debug line = 110:53]

; <label>:5                                       ; preds = %3
  %rend4 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([14 x i8]* @.str9, i64 0, i64 0), i32 %rbegin3) nounwind, !dbg !104 ; [#uses=0 type=i32] [debug line = 115:2]
  %i.1 = add i32 %i, 1, !dbg !105                 ; [#uses=1 type=i32] [debug line = 109:49]
  call void @llvm.dbg.value(metadata !{i32 %i.1}, i64 0, metadata !106), !dbg !105 ; [debug line = 109:49] [debug variable = i]
  br label %1, !dbg !105                          ; [debug line = 109:49]

.preheader:                                       ; preds = %14, %.preheader.preheader
  %i1 = phi i32 [ %i.2, %14 ], [ 0, %.preheader.preheader ] ; [#uses=5 type=i32]
  %tmp.3 = icmp eq i32 %i1, 1080, !dbg !91        ; [#uses=1 type=i1] [debug line = 118:38]
  br i1 %tmp.3, label %15, label %6, !dbg !91     ; [debug line = 118:38]

; <label>:6                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([11 x i8]* @.str11, i64 0, i64 0)) nounwind, !dbg !107 ; [debug line = 118:56]
  %rbegin7 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([11 x i8]* @.str11, i64 0, i64 0)) nounwind, !dbg !107 ; [#uses=1 type=i32] [debug line = 118:56]
  %tmp.5 = icmp eq i32 %i1, 0, !dbg !108          ; [#uses=1 type=i1] [debug line = 123:2]
  %tmp.6 = icmp eq i32 %i1, 1079, !dbg !108       ; [#uses=1 type=i1] [debug line = 123:2]
  %tmp.7 = add i32 %i1, 2, !dbg !109              ; [#uses=2 type=i32] [debug line = 135:5]
  %tmp.8 = urem i32 %tmp.7, 1080, !dbg !109       ; [#uses=1 type=i32] [debug line = 135:5]
  %tmp.9 = mul i32 %tmp.8, 1920, !dbg !109        ; [#uses=1 type=i32] [debug line = 135:5]
  %tmp.10 = and i32 %tmp.7, 3, !dbg !109          ; [#uses=1 type=i32] [debug line = 135:5]
  %tmp.11 = zext i32 %tmp.10 to i64, !dbg !109    ; [#uses=1 type=i64] [debug line = 135:5]
  br label %7, !dbg !110                          ; [debug line = 119:39]

; <label>:7                                       ; preds = %._crit_edge, %6
  %j2 = phi i32 [ 0, %6 ], [ %j.2, %._crit_edge ] ; [#uses=6 type=i32]
  %tmp.17 = icmp eq i32 %j2, 1920, !dbg !110      ; [#uses=1 type=i1] [debug line = 119:39]
  br i1 %tmp.17, label %14, label %8, !dbg !110   ; [debug line = 119:39]

; <label>:8                                       ; preds = %7
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([11 x i8]* @.str12, i64 0, i64 0)) nounwind, !dbg !111 ; [debug line = 119:57]
  %rbegin5 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([11 x i8]* @.str12, i64 0, i64 0)) nounwind, !dbg !111 ; [#uses=1 type=i32] [debug line = 119:57]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !112 ; [debug line = 120:1]
  call void (...)* @_ssdm_SpecLoopFlatten(i32 1, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !113 ; [debug line = 121:1]
  %tmp.19 = icmp eq i32 %j2, 0, !dbg !108         ; [#uses=1 type=i1] [debug line = 123:2]
  %tmp.20 = icmp eq i32 %j2, 1919, !dbg !108      ; [#uses=1 type=i1] [debug line = 123:2]
  %or.cond = or i1 %tmp.19, %tmp.20, !dbg !108    ; [#uses=1 type=i1] [debug line = 123:2]
  %or.cond1 = or i1 %or.cond, %tmp.5, !dbg !108   ; [#uses=1 type=i1] [debug line = 123:2]
  %or.cond2 = or i1 %or.cond1, %tmp.6, !dbg !108  ; [#uses=1 type=i1] [debug line = 123:2]
  br i1 %or.cond2, label %._crit_edge, label %.preheader9, !dbg !108 ; [debug line = 123:2]

.preheader9:                                      ; preds = %8
  br label %9, !dbg !114                          ; [debug line = 72:23@128:12]

; <label>:9                                       ; preds = %13, %.preheader9
  %j.0.i = phi i32 [ %j.3, %13 ], [ 0, %.preheader9 ] ; [#uses=3 type=i32]
  %exitcond1.i = icmp eq i32 %j.0.i, 3, !dbg !114 ; [#uses=1 type=i1] [debug line = 72:23@128:12]
  br i1 %exitcond1.i, label %._crit_edge.loopexit, label %10, !dbg !114 ; [debug line = 72:23@128:12]

; <label>:10                                      ; preds = %9
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !117 ; [debug line = 72:38@128:12]
  %rbegin1.i = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !117 ; [#uses=1 type=i32] [debug line = 72:38@128:12]
  %tmp.21 = sext i32 %j.0.i to i64, !dbg !119     ; [#uses=3 type=i64] [debug line = 75:4@128:12]
  br label %11, !dbg !122                         ; [debug line = 73:24@128:12]

; <label>:11                                      ; preds = %12, %10
  %i.0.i = phi i32 [ 0, %10 ], [ %i.3, %12 ]      ; [#uses=3 type=i32]
  %exitcond.i = icmp eq i32 %i.0.i, 3, !dbg !122  ; [#uses=1 type=i1] [debug line = 73:24@128:12]
  br i1 %exitcond.i, label %13, label %12, !dbg !122 ; [debug line = 73:24@128:12]

; <label>:12                                      ; preds = %11
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0)) nounwind, !dbg !123 ; [debug line = 73:39@128:12]
  %rbegin.i = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0)) nounwind, !dbg !123 ; [#uses=1 type=i32] [debug line = 73:39@128:12]
  %tmp.27 = sext i32 %i.0.i to i64, !dbg !119     ; [#uses=3 type=i64] [debug line = 75:4@128:12]
  %matrix.addr = getelementptr inbounds [3 x [3 x i8]]* %matrix, i64 0, i64 %tmp.27, i64 %tmp.21, !dbg !119 ; [#uses=1 type=i8*] [debug line = 75:4@128:12]
  %matrix.load = load i8* %matrix.addr, align 1, !dbg !119 ; [#uses=2 type=i8] [debug line = 75:4@128:12]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %matrix.load) nounwind
  %x_op.addr = getelementptr inbounds [3 x [3 x i8]]* @x_op, i64 0, i64 %tmp.27, i64 %tmp.21, !dbg !119 ; [#uses=1 type=i8*] [debug line = 75:4@128:12]
  %x_op.load = load i8* %x_op.addr, align 1, !dbg !119 ; [#uses=1 type=i8] [debug line = 75:4@128:12]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %x_op.load) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %matrix.load) nounwind
  %y_op.addr = getelementptr inbounds [3 x [3 x i8]]* @y_op, i64 0, i64 %tmp.27, i64 %tmp.21, !dbg !124 ; [#uses=1 type=i8*] [debug line = 78:4@128:12]
  %y_op.load = load i8* %y_op.addr, align 1, !dbg !124 ; [#uses=1 type=i8] [debug line = 78:4@128:12]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %y_op.load) nounwind
  %rend.i = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i32 %rbegin.i) nounwind, !dbg !125 ; [#uses=0 type=i32] [debug line = 79:3@128:12]
  %i.3 = add nsw i32 %i.0.i, 1, !dbg !126         ; [#uses=1 type=i32] [debug line = 73:33@128:12]
  call void @llvm.dbg.value(metadata !{i32 %i.3}, i64 0, metadata !127) nounwind, !dbg !126 ; [debug line = 73:33@128:12] [debug variable = i]
  br label %11, !dbg !126                         ; [debug line = 73:33@128:12]

; <label>:13                                      ; preds = %11
  %rend2.i = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i32 %rbegin1.i) nounwind, !dbg !128 ; [#uses=0 type=i32] [debug line = 80:2@128:12]
  %j.3 = add nsw i32 %j.0.i, 1, !dbg !129         ; [#uses=1 type=i32] [debug line = 72:32@128:12]
  call void @llvm.dbg.value(metadata !{i32 %j.3}, i64 0, metadata !130) nounwind, !dbg !129 ; [debug line = 72:32@128:12] [debug variable = j]
  br label %9, !dbg !129                          ; [debug line = 72:32@128:12]

._crit_edge.loopexit:                             ; preds = %9
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %8
  %tmp.22 = add i32 %j2, %tmp.9, !dbg !109        ; [#uses=1 type=i32] [debug line = 135:5]
  %tmp.23 = zext i32 %tmp.22 to i64, !dbg !109    ; [#uses=1 type=i64] [debug line = 135:5]
  %inter_pix.addr.1 = getelementptr inbounds i8* %inter_pix, i64 %tmp.23, !dbg !109 ; [#uses=1 type=i8*] [debug line = 135:5]
  %inter_pix.load.1 = load i8* %inter_pix.addr.1, align 1, !dbg !109 ; [#uses=2 type=i8] [debug line = 135:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %inter_pix.load.1) nounwind
  %tmp.24 = zext i32 %j2 to i64, !dbg !109        ; [#uses=1 type=i64] [debug line = 135:5]
  %cache.addr.2 = getelementptr inbounds [4 x [1920 x i8]]* %cache, i64 0, i64 %tmp.11, i64 %tmp.24, !dbg !109 ; [#uses=1 type=i8*] [debug line = 135:5]
  store i8 %inter_pix.load.1, i8* %cache.addr.2, align 1, !dbg !109 ; [debug line = 135:5]
  %rend6 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([11 x i8]* @.str12, i64 0, i64 0), i32 %rbegin5) nounwind, !dbg !131 ; [#uses=0 type=i32] [debug line = 137:3]
  %j.2 = add i32 %j2, 1, !dbg !132                ; [#uses=1 type=i32] [debug line = 119:51]
  call void @llvm.dbg.value(metadata !{i32 %j.2}, i64 0, metadata !133), !dbg !132 ; [debug line = 119:51] [debug variable = j]
  br label %7, !dbg !132                          ; [debug line = 119:51]

; <label>:14                                      ; preds = %7
  %rend8 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([11 x i8]* @.str11, i64 0, i64 0), i32 %rbegin7) nounwind, !dbg !134 ; [#uses=0 type=i32] [debug line = 138:2]
  %i.2 = add i32 %i1, 1, !dbg !135                ; [#uses=1 type=i32] [debug line = 118:50]
  call void @llvm.dbg.value(metadata !{i32 %i.2}, i64 0, metadata !136), !dbg !135 ; [debug line = 118:50] [debug variable = i]
  br label %.preheader, !dbg !135                 ; [debug line = 118:50]

; <label>:15                                      ; preds = %.preheader
  ret void, !dbg !137                             ; [debug line = 141:1]
}

; [#uses=9]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=2]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=6]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=6]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=2]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=6]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=3]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=2]
declare void @_ssdm_SpecLoopFlatten(...) nounwind

; [#uses=6]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=2]
declare void @_ssdm_SpecArrayPartition(...) nounwind

; [#uses=2]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!42, !49, !55}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"X:/Bureau/HDMI_3610/3610_4/1490679_1771119/sobellab4/solution1/.autopilot/db/Sobel.pragma.2.cpp", metadata !"X:\5CBureau\5CHDMI_3610\5C3610_4\5C1490679_1771119", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !32} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !19, metadata !26}
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
!19 = metadata !{i32 786478, i32 0, metadata !6, metadata !"sobel_operator2", metadata !"sobel_operator2", metadata !"_Z15sobel_operator2PA3_h", metadata !6, i32 54, metadata !20, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !17, i32 55} ; [ DW_TAG_subprogram ]
!20 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !21, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!21 = metadata !{metadata !9, metadata !22}
!22 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !23} ; [ DW_TAG_pointer_type ]
!23 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 24, i64 8, i32 0, i32 0, metadata !9, metadata !24, i32 0, i32 0} ; [ DW_TAG_array_type ]
!24 = metadata !{metadata !25}
!25 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ]
!26 = metadata !{i32 786478, i32 0, metadata !6, metadata !"sobel_filter", metadata !"sobel_filter", metadata !"_Z12sobel_filterPhPj", metadata !6, i32 95, metadata !27, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i32*)* @sobel_filter, null, null, metadata !17, i32 96} ; [ DW_TAG_subprogram ]
!27 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !28, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!28 = metadata !{null, metadata !29, metadata !30}
!29 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ]
!30 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !31} ; [ DW_TAG_pointer_type ]
!31 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!32 = metadata !{metadata !33}
!33 = metadata !{metadata !34, metadata !39, metadata !40, metadata !41}
!34 = metadata !{i32 786484, i32 0, metadata !5, metadata !"x_op", metadata !"x_op", metadata !"", metadata !6, i32 21, metadata !35, i32 1, i32 1, null} ; [ DW_TAG_variable ]
!35 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 72, i64 8, i32 0, i32 0, metadata !36, metadata !38, i32 0, i32 0} ; [ DW_TAG_array_type ]
!36 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !37} ; [ DW_TAG_const_type ]
!37 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!38 = metadata !{metadata !25, metadata !25}
!39 = metadata !{i32 786484, i32 0, metadata !5, metadata !"y_op", metadata !"y_op", metadata !"", metadata !6, i32 25, metadata !35, i32 1, i32 1, null} ; [ DW_TAG_variable ]
!40 = metadata !{i32 786484, i32 0, metadata !19, metadata !"x_op", metadata !"x_op", metadata !"", metadata !6, i32 62, metadata !35, i32 1, i32 1, [3 x [3 x i8]]* @x_op} ; [ DW_TAG_variable ]
!41 = metadata !{i32 786484, i32 0, metadata !19, metadata !"y_op", metadata !"y_op", metadata !"", metadata !6, i32 66, metadata !35, i32 1, i32 1, [3 x [3 x i8]]* @y_op} ; [ DW_TAG_variable ]
!42 = metadata !{null, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48}
!43 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 1}
!44 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!45 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int", metadata !"uint8_t [1920]*"}
!46 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const", metadata !"const", metadata !""}
!47 = metadata !{metadata !"kernel_arg_name", metadata !"rows", metadata !"cols", metadata !"image"}
!48 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!49 = metadata !{null, metadata !50, metadata !51, metadata !52, metadata !53, metadata !54, metadata !48}
!50 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!51 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!52 = metadata !{metadata !"kernel_arg_type", metadata !"uint8_t [3]*"}
!53 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!54 = metadata !{metadata !"kernel_arg_name", metadata !"image"}
!55 = metadata !{void (i8*, i32*)* @sobel_filter, metadata !56, metadata !57, metadata !58, metadata !59, metadata !60, metadata !48}
!56 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!57 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!58 = metadata !{metadata !"kernel_arg_type", metadata !"uint8_t*", metadata !"uint*"}
!59 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!60 = metadata !{metadata !"kernel_arg_name", metadata !"inter_pix", metadata !"out_pix"}
!61 = metadata !{i32 786689, metadata !26, metadata !"inter_pix", metadata !6, i32 16777311, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!62 = metadata !{i32 95, i32 27, metadata !26, null}
!63 = metadata !{i32 786689, metadata !26, metadata !"out_pix", metadata !6, i32 33554527, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!64 = metadata !{i32 95, i32 60, metadata !26, null}
!65 = metadata !{i32 96, i32 2, metadata !66, null}
!66 = metadata !{i32 786443, metadata !26, i32 96, i32 1, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!67 = metadata !{i32 96, i32 46, metadata !66, null}
!68 = metadata !{i32 97, i32 1, metadata !66, null}
!69 = metadata !{i32 98, i32 1, metadata !66, null}
!70 = metadata !{i32 99, i32 1, metadata !66, null}
!71 = metadata !{i32 786688, metadata !66, metadata !"cache", metadata !6, i32 102, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!72 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 61440, i64 8, i32 0, i32 0, metadata !9, metadata !73, i32 0, i32 0} ; [ DW_TAG_array_type ]
!73 = metadata !{metadata !74, metadata !16}
!74 = metadata !{i32 786465, i64 0, i64 3}        ; [ DW_TAG_subrange_type ]
!75 = metadata !{i32 102, i32 10, metadata !66, null}
!76 = metadata !{i32 103, i32 1, metadata !66, null}
!77 = metadata !{i32 786688, metadata !66, metadata !"matrix", metadata !6, i32 104, metadata !78, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!78 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 72, i64 8, i32 0, i32 0, metadata !9, metadata !38, i32 0, i32 0} ; [ DW_TAG_array_type ]
!79 = metadata !{i32 104, i32 10, metadata !66, null}
!80 = metadata !{i32 105, i32 1, metadata !66, null}
!81 = metadata !{i32 786689, metadata !19, metadata !"image", metadata !6, i32 16777270, metadata !22, i32 0, metadata !82} ; [ DW_TAG_arg_variable ]
!82 = metadata !{i32 128, i32 12, metadata !83, null}
!83 = metadata !{i32 786443, metadata !84, i32 126, i32 10, metadata !6, i32 20} ; [ DW_TAG_lexical_block ]
!84 = metadata !{i32 786443, metadata !85, i32 119, i32 56, metadata !6, i32 18} ; [ DW_TAG_lexical_block ]
!85 = metadata !{i32 786443, metadata !86, i32 119, i32 16, metadata !6, i32 17} ; [ DW_TAG_lexical_block ]
!86 = metadata !{i32 786443, metadata !87, i32 118, i32 55, metadata !6, i32 16} ; [ DW_TAG_lexical_block ]
!87 = metadata !{i32 786443, metadata !66, i32 118, i32 15, metadata !6, i32 15} ; [ DW_TAG_lexical_block ]
!88 = metadata !{i32 54, i32 33, metadata !19, metadata !82}
!89 = metadata !{i32 109, i32 40, metadata !90, null}
!90 = metadata !{i32 786443, metadata !66, i32 109, i32 17, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!91 = metadata !{i32 118, i32 38, metadata !87, null}
!92 = metadata !{i32 109, i32 55, metadata !93, null}
!93 = metadata !{i32 786443, metadata !90, i32 109, i32 54, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!94 = metadata !{i32 113, i32 2, metadata !95, null}
!95 = metadata !{i32 786443, metadata !96, i32 110, i32 58, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!96 = metadata !{i32 786443, metadata !93, i32 110, i32 18, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!97 = metadata !{i32 110, i32 41, metadata !96, null}
!98 = metadata !{i32 110, i32 59, metadata !95, null}
!99 = metadata !{i32 111, i32 1, metadata !95, null}
!100 = metadata !{i32 112, i32 1, metadata !95, null}
!101 = metadata !{i32 114, i32 3, metadata !95, null}
!102 = metadata !{i32 110, i32 53, metadata !96, null}
!103 = metadata !{i32 786688, metadata !96, metadata !"j", metadata !6, i32 110, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!104 = metadata !{i32 115, i32 2, metadata !93, null}
!105 = metadata !{i32 109, i32 49, metadata !90, null}
!106 = metadata !{i32 786688, metadata !90, metadata !"i", metadata !6, i32 109, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!107 = metadata !{i32 118, i32 56, metadata !86, null}
!108 = metadata !{i32 123, i32 2, metadata !84, null}
!109 = metadata !{i32 135, i32 5, metadata !84, null}
!110 = metadata !{i32 119, i32 39, metadata !85, null}
!111 = metadata !{i32 119, i32 57, metadata !84, null}
!112 = metadata !{i32 120, i32 1, metadata !84, null}
!113 = metadata !{i32 121, i32 1, metadata !84, null}
!114 = metadata !{i32 72, i32 23, metadata !115, metadata !82}
!115 = metadata !{i32 786443, metadata !116, i32 72, i32 10, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!116 = metadata !{i32 786443, metadata !19, i32 55, i32 1, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!117 = metadata !{i32 72, i32 38, metadata !118, metadata !82}
!118 = metadata !{i32 786443, metadata !115, i32 72, i32 37, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!119 = metadata !{i32 75, i32 4, metadata !120, metadata !82}
!120 = metadata !{i32 786443, metadata !121, i32 73, i32 38, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!121 = metadata !{i32 786443, metadata !118, i32 73, i32 11, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!122 = metadata !{i32 73, i32 24, metadata !121, metadata !82}
!123 = metadata !{i32 73, i32 39, metadata !120, metadata !82}
!124 = metadata !{i32 78, i32 4, metadata !120, metadata !82}
!125 = metadata !{i32 79, i32 3, metadata !120, metadata !82}
!126 = metadata !{i32 73, i32 33, metadata !121, metadata !82}
!127 = metadata !{i32 786688, metadata !121, metadata !"i", metadata !6, i32 73, metadata !12, i32 0, metadata !82} ; [ DW_TAG_auto_variable ]
!128 = metadata !{i32 80, i32 2, metadata !118, metadata !82}
!129 = metadata !{i32 72, i32 32, metadata !115, metadata !82}
!130 = metadata !{i32 786688, metadata !115, metadata !"j", metadata !6, i32 72, metadata !12, i32 0, metadata !82} ; [ DW_TAG_auto_variable ]
!131 = metadata !{i32 137, i32 3, metadata !84, null}
!132 = metadata !{i32 119, i32 51, metadata !85, null}
!133 = metadata !{i32 786688, metadata !85, metadata !"j", metadata !6, i32 119, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!134 = metadata !{i32 138, i32 2, metadata !86, null}
!135 = metadata !{i32 118, i32 50, metadata !87, null}
!136 = metadata !{i32 786688, metadata !87, metadata !"i", metadata !6, i32 118, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!137 = metadata !{i32 141, i32 1, metadata !66, null}
