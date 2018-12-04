; ModuleID = 'X:/Bureau/HDMI_3610/3610_4/1490679_1771119/sobellab4/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@sobel_filter.str = internal unnamed_addr constant [13 x i8] c"sobel_filter\00" ; [#uses=1 type=[13 x i8]*]
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
  %"cache[0]" = alloca [1920 x i8], align 1       ; [#uses=4 type=[1920 x i8]*]
  %"cache[1]" = alloca [1920 x i8], align 1       ; [#uses=4 type=[1920 x i8]*]
  %"cache[2]" = alloca [1920 x i8], align 1       ; [#uses=3 type=[1920 x i8]*]
  %"cache[3]" = alloca [1920 x i8], align 1       ; [#uses=3 type=[1920 x i8]*]
  call void @llvm.dbg.value(metadata !{[2073600 x i8]* %inter_pix}, i64 0, metadata !55), !dbg !59 ; [debug line = 55:27] [debug variable = inter_pix]
  call void @llvm.dbg.value(metadata !{[2073600 x i32]* %out_pix}, i64 0, metadata !60), !dbg !62 ; [debug line = 55:60] [debug variable = out_pix]
  call void (...)* @_ssdm_op_SpecInterface([2073600 x i8]* %inter_pix, [6 x i8]* @.str3, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [6 x i8]* @.str4, [6 x i8]* @.str5, [1 x i8]* @.str, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str) nounwind
  call void (...)* @_ssdm_op_SpecInterface([2073600 x i32]* %out_pix, [6 x i8]* @.str3, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [6 x i8]* @.str6, [6 x i8]* @.str5, [1 x i8]* @.str, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @.str7, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str) nounwind, !dbg !63 ; [debug line = 59:1]
  call void @llvm.dbg.declare(metadata !{[1920 x i8]* %"cache[0]"}, metadata !65), !dbg !71 ; [debug line = 62:10] [debug variable = cache[0]]
  call void @llvm.dbg.declare(metadata !{[1920 x i8]* %"cache[1]"}, metadata !72), !dbg !71 ; [debug line = 62:10] [debug variable = cache[1]]
  call void @llvm.dbg.declare(metadata !{[1920 x i8]* %"cache[2]"}, metadata !73), !dbg !71 ; [debug line = 62:10] [debug variable = cache[2]]
  call void @llvm.dbg.declare(metadata !{[1920 x i8]* %"cache[3]"}, metadata !74), !dbg !71 ; [debug line = 62:10] [debug variable = cache[3]]
  br label %1, !dbg !75                           ; [debug line = 67:40]

; <label>:1                                       ; preds = %10, %0
  %i = phi i2 [ 0, %0 ], [ %i.1, %10 ]            ; [#uses=5 type=i2]
  %i.cast = zext i2 %i to i8, !dbg !75            ; [#uses=1 type=i8] [debug line = 67:40]
  %i.cast1 = zext i2 %i to i12, !dbg !75          ; [#uses=1 type=i12] [debug line = 67:40]
  %tmp = icmp eq i2 %i, -2, !dbg !75              ; [#uses=1 type=i1] [debug line = 67:40]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2) nounwind ; [#uses=0 type=i32]
  br i1 %tmp, label %.preheader.preheader, label %3, !dbg !75 ; [debug line = 67:40]

.preheader.preheader:                             ; preds = %1
  br label %.preheader, !dbg !77                  ; [debug line = 13:34@85:12]

; <label>:3                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @.str9) nounwind, !dbg !84 ; [debug line = 67:55]
  %tmp.3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([14 x i8]* @.str9) nounwind, !dbg !84 ; [#uses=1 type=i32] [debug line = 67:55]
  %_shl = shl i12 %i.cast1, 11, !dbg !86          ; [#uses=1 type=i12] [debug line = 71:2]
  %_shl.cast = zext i12 %_shl to i13, !dbg !86    ; [#uses=1 type=i13] [debug line = 71:2]
  %_shl9 = shl i8 %i.cast, 7, !dbg !86            ; [#uses=1 type=i8] [debug line = 71:2]
  %_shl9.cast = zext i8 %_shl9 to i13, !dbg !86   ; [#uses=1 type=i13] [debug line = 71:2]
  %tmp.2 = sub i13 %_shl.cast, %_shl9.cast, !dbg !86 ; [#uses=2 type=i13] [debug line = 71:2]
  %cond = icmp eq i2 %i, 0, !dbg !86              ; [#uses=1 type=i1] [debug line = 71:2]
  %tmp.1 = zext i11 0 to i13, !dbg !89            ; [#uses=1 type=i13] [debug line = 68:41]
  %tmp.27 = add i13 %tmp.2, %tmp.1, !dbg !86      ; [#uses=1 type=i13] [debug line = 71:2]
  %tmp.28 = sext i13 %tmp.27 to i32, !dbg !86     ; [#uses=1 type=i32] [debug line = 71:2]
  %tmp.29 = zext i32 %tmp.28 to i64, !dbg !86     ; [#uses=1 type=i64] [debug line = 71:2]
  br label %4, !dbg !89                           ; [debug line = 68:41]

; <label>:4                                       ; preds = %8, %3
  %j = phi i11 [ 0, %3 ], [ %j.1, %8 ]            ; [#uses=4 type=i11]
  %j.cast = zext i11 %j to i13, !dbg !89          ; [#uses=1 type=i13] [debug line = 68:41]
  %tmp.5 = icmp eq i11 %j, -128, !dbg !89         ; [#uses=1 type=i1] [debug line = 68:41]
  %5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1920, i64 1920, i64 1920) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.5, label %10, label %6, !dbg !89     ; [debug line = 68:41]

; <label>:6                                       ; preds = %4
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @.str10) nounwind, !dbg !90 ; [debug line = 68:59]
  %tmp.20 = call i32 (...)* @_ssdm_op_SpecRegionBegin([14 x i8]* @.str10) nounwind, !dbg !90 ; [#uses=1 type=i32] [debug line = 68:59]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str) nounwind, !dbg !91 ; [debug line = 69:1]
  call void (...)* @_ssdm_SpecLoopFlatten(i32 1, [1 x i8]* @.str) nounwind, !dbg !92 ; [debug line = 70:1]
  %tmp.13 = add i13 %tmp.2, %j.cast, !dbg !86     ; [#uses=1 type=i13] [debug line = 71:2]
  %tmp.13.cast = sext i13 %tmp.13 to i32, !dbg !86 ; [#uses=1 type=i32] [debug line = 71:2]
  %tmp.14 = zext i32 %tmp.13.cast to i64, !dbg !86 ; [#uses=1 type=i64] [debug line = 71:2]
  %inter_pix.addr = getelementptr [2073600 x i8]* %inter_pix, i64 0, i64 %tmp.14, !dbg !86 ; [#uses=1 type=i8*] [debug line = 71:2]
  %inter_pix.addr.2 = getelementptr [2073600 x i8]* %inter_pix, i64 0, i64 %tmp.29, !dbg !86 ; [#uses=1 type=i8*] [debug line = 71:2]
  %tmp.51 = zext i11 -128 to i32                  ; [#uses=1 type=i32]
  %7 = call i32 (...)* @_ssdm_op_SpecBurst(i8* %inter_pix.addr.2, i32 1, i32 %tmp.51, i32 1) ; [#uses=0 type=i32]
  %inter_pix.load = load i8* %inter_pix.addr, align 1, !dbg !86 ; [#uses=2 type=i8] [debug line = 71:2]
  %tmp.15 = zext i11 %j to i64, !dbg !86          ; [#uses=2 type=i64] [debug line = 71:2]
  %"cache[0].addr" = getelementptr [1920 x i8]* %"cache[0]", i64 0, i64 %tmp.15, !dbg !86 ; [#uses=1 type=i8*] [debug line = 71:2]
  %"cache[1].addr" = getelementptr [1920 x i8]* %"cache[1]", i64 0, i64 %tmp.15, !dbg !86 ; [#uses=1 type=i8*] [debug line = 71:2]
  br i1 %cond, label %branch4, label %branch5, !dbg !86 ; [debug line = 71:2]

; <label>:8                                       ; preds = %branch5, %branch4
  %9 = call i32 (...)* @_ssdm_op_SpecRegionEnd([14 x i8]* @.str10, i32 %tmp.20) nounwind, !dbg !93 ; [#uses=0 type=i32] [debug line = 72:3]
  %j.1 = add i11 %j, 1, !dbg !94                  ; [#uses=1 type=i11] [debug line = 68:53]
  call void @llvm.dbg.value(metadata !{i11 %j.1}, i64 0, metadata !95), !dbg !94 ; [debug line = 68:53] [debug variable = j]
  br label %4, !dbg !94                           ; [debug line = 68:53]

; <label>:10                                      ; preds = %4
  %11 = call i32 (...)* @_ssdm_op_SpecRegionEnd([14 x i8]* @.str9, i32 %tmp.3) nounwind, !dbg !96 ; [#uses=0 type=i32] [debug line = 73:2]
  %i.1 = add i2 %i, 1, !dbg !97                   ; [#uses=1 type=i2] [debug line = 67:49]
  call void @llvm.dbg.value(metadata !{i2 %i.1}, i64 0, metadata !98), !dbg !97 ; [debug line = 67:49] [debug variable = i]
  br label %1, !dbg !97                           ; [debug line = 67:49]

.preheader:                                       ; preds = %19, %.preheader.preheader
  %rows.assign = phi i11 [ %i.2, %19 ], [ 0, %.preheader.preheader ] ; [#uses=8 type=i11]
  %rows.assign.cast = zext i11 %rows.assign to i18, !dbg !77 ; [#uses=1 type=i18] [debug line = 13:34@85:12]
  %rows.assign.cast1 = zext i11 %rows.assign to i22, !dbg !77 ; [#uses=1 type=i22] [debug line = 13:34@85:12]
  call void @llvm.dbg.value(metadata !{i11 %rows.assign}, i64 0, metadata !99) nounwind, !dbg !77 ; [debug line = 13:34@85:12] [debug variable = rows]
  %tmp.4 = icmp eq i11 %rows.assign, -968, !dbg !100 ; [#uses=1 type=i1] [debug line = 76:38]
  %12 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1080, i64 1080, i64 1080) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.4, label %21, label %13, !dbg !100   ; [debug line = 76:38]

; <label>:13                                      ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @.str11) nounwind, !dbg !101 ; [debug line = 76:56]
  %tmp.11 = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @.str11) nounwind, !dbg !101 ; [#uses=1 type=i32] [debug line = 76:56]
  %tmp.6 = icmp eq i11 %rows.assign, 0, !dbg !102 ; [#uses=1 type=i1] [debug line = 81:2]
  %tmp.7 = icmp eq i11 %rows.assign, -969, !dbg !102 ; [#uses=1 type=i1] [debug line = 81:2]
  %_shl1 = shl nuw i22 %rows.assign.cast1, 11, !dbg !103 ; [#uses=1 type=i22] [debug line = 90:5]
  %_shl1.cast = zext i22 %_shl1 to i23, !dbg !103 ; [#uses=1 type=i23] [debug line = 90:5]
  %_shl2 = shl nuw i18 %rows.assign.cast, 7, !dbg !103 ; [#uses=1 type=i18] [debug line = 90:5]
  %_shl2.cast = zext i18 %_shl2 to i23, !dbg !103 ; [#uses=1 type=i23] [debug line = 90:5]
  %tmp.8 = sub i23 %_shl1.cast, %_shl2.cast, !dbg !103 ; [#uses=2 type=i23] [debug line = 90:5]
  %tmp.12 = trunc i11 %rows.assign to i2          ; [#uses=5 type=i2]
  %tmp.9 = add i11 %rows.assign, 2, !dbg !104     ; [#uses=1 type=i11] [debug line = 92:5]
  %tmp. = urem i11 %tmp.9, -968, !dbg !104        ; [#uses=2 type=i11] [debug line = 92:5]
  %tmp..cast1 = zext i11 %tmp. to i18, !dbg !104  ; [#uses=1 type=i18] [debug line = 92:5]
  %tmp..cast = zext i11 %tmp. to i22, !dbg !104   ; [#uses=1 type=i22] [debug line = 92:5]
  %_shl3 = shl nuw i22 %tmp..cast, 11, !dbg !104  ; [#uses=1 type=i22] [debug line = 92:5]
  %_shl3.cast = zext i22 %_shl3 to i23, !dbg !104 ; [#uses=1 type=i23] [debug line = 92:5]
  %_shl4 = shl nuw i18 %tmp..cast1, 7, !dbg !104  ; [#uses=1 type=i18] [debug line = 92:5]
  %_shl4.cast = zext i18 %_shl4 to i23, !dbg !104 ; [#uses=1 type=i23] [debug line = 92:5]
  %tmp.10 = sub i23 %_shl3.cast, %_shl4.cast, !dbg !104 ; [#uses=2 type=i23] [debug line = 92:5]
  %tmp.11.t = xor i2 %tmp.12, -2                  ; [#uses=1 type=i2]
  %tmp.34.0.0.t = add i2 %tmp.12, -1              ; [#uses=3 type=i2]
  %tmp.34.0.2.t = add i2 %tmp.12, 1               ; [#uses=3 type=i2]
  %tmp.30 = zext i11 0 to i23, !dbg !105          ; [#uses=1 type=i23] [debug line = 13:50@85:12]
  %tmp.32 = add i23 %tmp.30, %tmp.8, !dbg !103    ; [#uses=1 type=i23] [debug line = 90:5]
  %tmp.33 = sext i23 %tmp.32 to i32, !dbg !103    ; [#uses=1 type=i32] [debug line = 90:5]
  %tmp.35 = zext i32 %tmp.33 to i64, !dbg !103    ; [#uses=1 type=i64] [debug line = 90:5]
  %tmp.37 = zext i11 0 to i23, !dbg !105          ; [#uses=1 type=i23] [debug line = 13:50@85:12]
  %tmp.38 = add i23 %tmp.37, %tmp.10, !dbg !104   ; [#uses=1 type=i23] [debug line = 92:5]
  %tmp.39 = sext i23 %tmp.38 to i32, !dbg !104    ; [#uses=1 type=i32] [debug line = 92:5]
  %tmp.46 = zext i32 %tmp.39 to i64, !dbg !104    ; [#uses=1 type=i64] [debug line = 92:5]
  br label %14, !dbg !106                         ; [debug line = 77:39]

; <label>:14                                      ; preds = %._crit_edge67, %13
  %cols.assign = phi i11 [ 0, %13 ], [ %j.2, %._crit_edge67 ] ; [#uses=7 type=i11]
  %cols.assign.cast1 = zext i11 %cols.assign to i23, !dbg !105 ; [#uses=2 type=i23] [debug line = 13:50@85:12]
  %cols.assign.cast = zext i11 %cols.assign to i12, !dbg !105 ; [#uses=1 type=i12] [debug line = 13:50@85:12]
  call void @llvm.dbg.value(metadata !{i11 %cols.assign}, i64 0, metadata !107) nounwind, !dbg !105 ; [debug line = 13:50@85:12] [debug variable = cols]
  %tmp.16 = icmp eq i11 %cols.assign, -128, !dbg !106 ; [#uses=1 type=i1] [debug line = 77:39]
  %15 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1920, i64 1920, i64 1920) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.16, label %19, label %_ifconv, !dbg !106 ; [debug line = 77:39]

_ifconv:                                          ; preds = %14
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @.str12) nounwind, !dbg !108 ; [debug line = 77:57]
  %tmp.21 = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @.str12) nounwind, !dbg !108 ; [#uses=1 type=i32] [debug line = 77:57]
  call void (...)* @_ssdm_op_SpecPipeline(i32 2, i32 1, i32 1, i32 0, [1 x i8]* @.str) nounwind, !dbg !109 ; [debug line = 78:1]
  call void (...)* @_ssdm_SpecLoopFlatten(i32 1, [1 x i8]* @.str) nounwind, !dbg !110 ; [debug line = 79:1]
  %tmp.17 = icmp eq i11 %cols.assign, 0, !dbg !102 ; [#uses=1 type=i1] [debug line = 81:2]
  %tmp.18 = icmp eq i11 %cols.assign, -129, !dbg !102 ; [#uses=1 type=i1] [debug line = 81:2]
  %tmp15 = or i1 %tmp.18, %tmp.6, !dbg !102       ; [#uses=1 type=i1] [debug line = 81:2]
  %tmp16 = or i1 %tmp.17, %tmp.7, !dbg !102       ; [#uses=1 type=i1] [debug line = 81:2]
  %or.cond2 = or i1 %tmp16, %tmp15, !dbg !102     ; [#uses=2 type=i1] [debug line = 81:2]
  %tmp.23 = add i12 %cols.assign.cast, -1, !dbg !111 ; [#uses=1 type=i12] [debug line = 34:4@85:12]
  %tmp.23.cast = sext i12 %tmp.23 to i32, !dbg !111 ; [#uses=1 type=i32] [debug line = 34:4@85:12]
  %tmp.24 = zext i32 %tmp.23.cast to i64, !dbg !111 ; [#uses=4 type=i64] [debug line = 34:4@85:12]
  %"cache[0].addr.1" = getelementptr [1920 x i8]* %"cache[0]", i64 0, i64 %tmp.24 ; [#uses=1 type=i8*]
  %"cache[0].load" = load i8* %"cache[0].addr.1", align 1 ; [#uses=3 type=i8]
  %"cache[1].addr.1" = getelementptr [1920 x i8]* %"cache[1]", i64 0, i64 %tmp.24 ; [#uses=1 type=i8*]
  %"cache[1].load" = load i8* %"cache[1].addr.1", align 1 ; [#uses=3 type=i8]
  %"cache[2].addr" = getelementptr [1920 x i8]* %"cache[2]", i64 0, i64 %tmp.24 ; [#uses=1 type=i8*]
  %"cache[2].load" = load i8* %"cache[2].addr", align 1 ; [#uses=3 type=i8]
  %"cache[3].addr" = getelementptr [1920 x i8]* %"cache[3]", i64 0, i64 %tmp.24 ; [#uses=1 type=i8*]
  %"cache[3].load" = load i8* %"cache[3].addr", align 1 ; [#uses=3 type=i8]
  %tmp.52 = call i8 @_ssdm_op_Mux.ap_auto.4i8.i2(i8 %"cache[0].load", i8 %"cache[1].load", i8 %"cache[2].load", i8 %"cache[3].load", i2 %tmp.34.0.0.t) nounwind ; [#uses=2 type=i8]
  %tmp.361.cast1 = zext i8 %tmp.52 to i9          ; [#uses=1 type=i9]
  %tmp.361.cast = zext i8 %tmp.52 to i11          ; [#uses=1 type=i11]
  %tmp.53 = call i8 @_ssdm_op_Mux.ap_auto.4i8.i2(i8 %"cache[0].load", i8 %"cache[1].load", i8 %"cache[2].load", i8 %"cache[3].load", i2 %tmp.12) nounwind ; [#uses=1 type=i8]
  %tmp.36.0.1.cast = zext i8 %tmp.53 to i9, !dbg !111 ; [#uses=1 type=i9] [debug line = 34:4@85:12]
  %_shl5 = shl nuw i9 %tmp.36.0.1.cast, 1, !dbg !111 ; [#uses=1 type=i9] [debug line = 34:4@85:12]
  %_shl5.cast = zext i9 %_shl5 to i10, !dbg !111  ; [#uses=1 type=i10] [debug line = 34:4@85:12]
  %tmp.39.0.1 = sub i10 0, %_shl5.cast, !dbg !111 ; [#uses=1 type=i10] [debug line = 34:4@85:12]
  %tmp.39.0.1.cast = sext i10 %tmp.39.0.1 to i11, !dbg !111 ; [#uses=1 type=i11] [debug line = 34:4@85:12]
  %x_weight.0.1 = sub i11 %tmp.39.0.1.cast, %tmp.361.cast, !dbg !111 ; [#uses=1 type=i11] [debug line = 34:4@85:12]
  %tmp.54 = call i8 @_ssdm_op_Mux.ap_auto.4i8.i2(i8 %"cache[0].load", i8 %"cache[1].load", i8 %"cache[2].load", i8 %"cache[3].load", i2 %tmp.34.0.2.t) nounwind ; [#uses=2 type=i8]
  %tmp.36.0.2.cast1 = zext i8 %tmp.54 to i9, !dbg !111 ; [#uses=1 type=i9] [debug line = 34:4@85:12]
  %tmp.36.0.2.cast = zext i8 %tmp.54 to i11, !dbg !111 ; [#uses=1 type=i11] [debug line = 34:4@85:12]
  %x_weight.0.2 = sub i11 %x_weight.0.1, %tmp.36.0.2.cast, !dbg !111 ; [#uses=2 type=i11] [debug line = 34:4@85:12]
  %y_weight.0.2 = sub i9 %tmp.361.cast1, %tmp.36.0.2.cast1, !dbg !117 ; [#uses=1 type=i9] [debug line = 37:4@85:12]
  %y_weight.0.2.cast = sext i9 %y_weight.0.2 to i11, !dbg !117 ; [#uses=1 type=i11] [debug line = 37:4@85:12]
  %tmp.29.1 = zext i11 %cols.assign to i64, !dbg !111 ; [#uses=4 type=i64] [debug line = 34:4@85:12]
  %"cache[0].addr.2" = getelementptr [1920 x i8]* %"cache[0]", i64 0, i64 %tmp.29.1 ; [#uses=2 type=i8*]
  %"cache[0].load.1" = load i8* %"cache[0].addr.2", align 1 ; [#uses=2 type=i8]
  %"cache[1].addr.2" = getelementptr [1920 x i8]* %"cache[1]", i64 0, i64 %tmp.29.1 ; [#uses=2 type=i8*]
  %"cache[1].load.1" = load i8* %"cache[1].addr.2", align 1 ; [#uses=2 type=i8]
  %"cache[2].addr.1" = getelementptr [1920 x i8]* %"cache[2]", i64 0, i64 %tmp.29.1 ; [#uses=2 type=i8*]
  %"cache[2].load.1" = load i8* %"cache[2].addr.1", align 1 ; [#uses=2 type=i8]
  %"cache[3].addr.1" = getelementptr [1920 x i8]* %"cache[3]", i64 0, i64 %tmp.29.1 ; [#uses=2 type=i8*]
  %"cache[3].load.1" = load i8* %"cache[3].addr.1", align 1 ; [#uses=2 type=i8]
  %tmp.55 = call i8 @_ssdm_op_Mux.ap_auto.4i8.i2(i8 %"cache[0].load.1", i8 %"cache[1].load.1", i8 %"cache[2].load.1", i8 %"cache[3].load.1", i2 %tmp.34.0.0.t) nounwind ; [#uses=1 type=i8]
  %tmp.36.1.cast = zext i8 %tmp.55 to i9, !dbg !117 ; [#uses=1 type=i9] [debug line = 37:4@85:12]
  %tmp.41.1 = shl nuw i9 %tmp.36.1.cast, 1, !dbg !117 ; [#uses=1 type=i9] [debug line = 37:4@85:12]
  %tmp.41.1.cast = zext i9 %tmp.41.1 to i11, !dbg !117 ; [#uses=1 type=i11] [debug line = 37:4@85:12]
  %y_weight.1.1 = add i11 %y_weight.0.2.cast, %tmp.41.1.cast, !dbg !117 ; [#uses=1 type=i11] [debug line = 37:4@85:12]
  %tmp.56 = call i8 @_ssdm_op_Mux.ap_auto.4i8.i2(i8 %"cache[0].load.1", i8 %"cache[1].load.1", i8 %"cache[2].load.1", i8 %"cache[3].load.1", i2 %tmp.34.0.2.t) nounwind ; [#uses=1 type=i8]
  %tmp.36.1.2.cast = zext i8 %tmp.56 to i9, !dbg !117 ; [#uses=1 type=i9] [debug line = 37:4@85:12]
  %_shl6 = shl nuw i9 %tmp.36.1.2.cast, 1, !dbg !117 ; [#uses=1 type=i9] [debug line = 37:4@85:12]
  %_shl6.cast = zext i9 %_shl6 to i11, !dbg !117  ; [#uses=1 type=i11] [debug line = 37:4@85:12]
  %y_weight.1.2 = sub i11 %y_weight.1.1, %_shl6.cast, !dbg !117 ; [#uses=1 type=i11] [debug line = 37:4@85:12]
  %j.2 = add i11 %cols.assign, 1, !dbg !111       ; [#uses=2 type=i11] [debug line = 34:4@85:12]
  %tmp.29.2 = zext i11 %j.2 to i64, !dbg !111     ; [#uses=4 type=i64] [debug line = 34:4@85:12]
  %"cache[0].addr.3" = getelementptr [1920 x i8]* %"cache[0]", i64 0, i64 %tmp.29.2 ; [#uses=1 type=i8*]
  %"cache[0].load.2" = load i8* %"cache[0].addr.3", align 1 ; [#uses=3 type=i8]
  %"cache[1].addr.3" = getelementptr [1920 x i8]* %"cache[1]", i64 0, i64 %tmp.29.2 ; [#uses=1 type=i8*]
  %"cache[1].load.2" = load i8* %"cache[1].addr.3", align 1 ; [#uses=3 type=i8]
  %"cache[2].addr.2" = getelementptr [1920 x i8]* %"cache[2]", i64 0, i64 %tmp.29.2 ; [#uses=1 type=i8*]
  %"cache[2].load.2" = load i8* %"cache[2].addr.2", align 1 ; [#uses=3 type=i8]
  %"cache[3].addr.2" = getelementptr [1920 x i8]* %"cache[3]", i64 0, i64 %tmp.29.2 ; [#uses=1 type=i8*]
  %"cache[3].load.2" = load i8* %"cache[3].addr.2", align 1 ; [#uses=3 type=i8]
  %tmp.57 = call i8 @_ssdm_op_Mux.ap_auto.4i8.i2(i8 %"cache[0].load.2", i8 %"cache[1].load.2", i8 %"cache[2].load.2", i8 %"cache[3].load.2", i2 %tmp.34.0.0.t) nounwind ; [#uses=3 type=i8]
  %tmp.36.2.cast1 = zext i8 %tmp.57 to i9         ; [#uses=1 type=i9]
  %tmp.36.2.cast = zext i8 %tmp.57 to i11         ; [#uses=1 type=i11]
  %tmp.34 = trunc i11 %x_weight.0.2 to i8         ; [#uses=1 type=i8]
  %tmp.58 = call i8 @_ssdm_op_Mux.ap_auto.4i8.i2(i8 %"cache[0].load.2", i8 %"cache[1].load.2", i8 %"cache[2].load.2", i8 %"cache[3].load.2", i2 %tmp.12) nounwind ; [#uses=1 type=i8]
  %tmp.36.2.1.cast = zext i8 %tmp.58 to i9, !dbg !111 ; [#uses=1 type=i9] [debug line = 34:4@85:12]
  %tmp.39.2.1 = shl nuw i9 %tmp.36.2.1.cast, 1, !dbg !111 ; [#uses=2 type=i9] [debug line = 34:4@85:12]
  %tmp.39.2.1.cast = zext i9 %tmp.39.2.1 to i11, !dbg !111 ; [#uses=1 type=i11] [debug line = 34:4@85:12]
  %tmp.36 = trunc i9 %tmp.39.2.1 to i8            ; [#uses=1 type=i8]
  %y_weight.2.1 = add i11 %tmp.36.2.cast, %y_weight.1.2, !dbg !117 ; [#uses=1 type=i11] [debug line = 37:4@85:12]
  %tmp.59 = call i8 @_ssdm_op_Mux.ap_auto.4i8.i2(i8 %"cache[0].load.2", i8 %"cache[1].load.2", i8 %"cache[2].load.2", i8 %"cache[3].load.2", i2 %tmp.34.0.2.t) nounwind ; [#uses=3 type=i8]
  %tmp.36.2.2.cast1 = zext i8 %tmp.59 to i9, !dbg !111 ; [#uses=1 type=i9] [debug line = 34:4@85:12]
  %tmp.36.2.2.cast = zext i8 %tmp.59 to i11, !dbg !111 ; [#uses=1 type=i11] [debug line = 34:4@85:12]
  %tmp18 = add i11 %x_weight.0.2, %tmp.39.2.1.cast, !dbg !111 ; [#uses=1 type=i11] [debug line = 34:4@85:12]
  %tmp19 = add i9 %tmp.36.2.2.cast1, %tmp.36.2.cast1, !dbg !111 ; [#uses=1 type=i9] [debug line = 34:4@85:12]
  %tmp19.cast = zext i9 %tmp19 to i11, !dbg !111  ; [#uses=1 type=i11] [debug line = 34:4@85:12]
  %x_weight.2.2 = add i11 %tmp18, %tmp19.cast, !dbg !111 ; [#uses=1 type=i11] [debug line = 34:4@85:12]
  %y_weight.2.2 = sub i11 %y_weight.2.1, %tmp.36.2.2.cast, !dbg !117 ; [#uses=2 type=i11] [debug line = 37:4@85:12]
  %tmp.19 = icmp sgt i11 %x_weight.2.2, 0, !dbg !118 ; [#uses=1 type=i1] [debug line = 41:2@85:12]
  %tmp20 = add i8 %tmp.36, %tmp.57, !dbg !118     ; [#uses=1 type=i8] [debug line = 41:2@85:12]
  %tmp21 = add i8 %tmp.59, %tmp.34, !dbg !118     ; [#uses=1 type=i8] [debug line = 41:2@85:12]
  %tmp.40 = add i8 %tmp20, %tmp21, !dbg !118      ; [#uses=2 type=i8] [debug line = 41:2@85:12]
  %tmp.41 = sub i8 0, %tmp.40, !dbg !118          ; [#uses=1 type=i8] [debug line = 41:2@85:12]
  %tmp.47 = select i1 %tmp.19, i8 %tmp.40, i8 %tmp.41, !dbg !118 ; [#uses=1 type=i8] [debug line = 41:2@85:12]
  %tmp.22 = icmp sgt i11 %y_weight.2.2, 0, !dbg !118 ; [#uses=1 type=i1] [debug line = 41:2@85:12]
  %tmp.48 = trunc i11 %y_weight.2.2 to i8, !dbg !118 ; [#uses=2 type=i8] [debug line = 41:2@85:12]
  %tmp.49 = sub i8 0, %tmp.48, !dbg !118          ; [#uses=1 type=i8] [debug line = 41:2@85:12]
  %tmp.50 = select i1 %tmp.22, i8 %tmp.48, i8 %tmp.49, !dbg !118 ; [#uses=1 type=i8] [debug line = 41:2@85:12]
  %tmp.25 = add i8 %tmp.47, %tmp.50, !dbg !119    ; [#uses=3 type=i8] [debug line = 43:2@85:12]
  %edge_val = xor i8 %tmp.25, -1, !dbg !119       ; [#uses=1 type=i8] [debug line = 43:2@85:12]
  call void @llvm.dbg.value(metadata !{i8 %edge_val}, i64 0, metadata !120) nounwind, !dbg !119 ; [debug line = 43:2@85:12] [debug variable = edge_val]
  %tmp.26 = icmp ult i8 %tmp.25, 55, !dbg !121    ; [#uses=1 type=i1] [debug line = 46:2@85:12]
  %tmp.31 = icmp ugt i8 %tmp.25, -101, !dbg !122  ; [#uses=1 type=i1] [debug line = 48:7@85:12]
  %..i = select i1 %tmp.31, i8 0, i8 %edge_val, !dbg !122 ; [#uses=1 type=i8] [debug line = 48:7@85:12]
  %sel_tmp1 = xor i1 %or.cond2, true, !dbg !102   ; [#uses=1 type=i1] [debug line = 81:2]
  %sel_tmp2 = and i1 %tmp.26, %sel_tmp1           ; [#uses=2 type=i1]
  %sel_tmp = sext i1 %sel_tmp2 to i8              ; [#uses=1 type=i8]
  %tmp.60 = or i1 %sel_tmp2, %or.cond2            ; [#uses=1 type=i1]
  %val = select i1 %tmp.60, i8 %sel_tmp, i8 %..i  ; [#uses=4 type=i8]
  %.cast = zext i8 %val to i16, !dbg !123         ; [#uses=1 type=i16] [debug line = 89:6]
  %tmp.61 = shl nuw i16 %.cast, 8, !dbg !123      ; [#uses=1 type=i16] [debug line = 89:6]
  %tmp23 = call i24 @_ssdm_op_BitConcatenate.i24.i8.i16(i8 %val, i16 %tmp.61), !dbg !123 ; [#uses=1 type=i24] [debug line = 89:6]
  %tmp.62 = call i24 @_ssdm_op_BitConcatenate.i24.i16.i8(i16 0, i8 %val) ; [#uses=1 type=i24]
  %tmp.63 = or i24 %tmp.62, %tmp23                ; [#uses=1 type=i24]
  %fourWide = call i32 @_ssdm_op_BitConcatenate.i32.i8.i24(i8 %val, i24 %tmp.63), !dbg !123 ; [#uses=1 type=i32] [debug line = 89:6]
  call void @llvm.dbg.value(metadata !{i32 %fourWide}, i64 0, metadata !126), !dbg !123 ; [debug line = 89:6] [debug variable = fourWide]
  %tmp.42 = add i23 %cols.assign.cast1, %tmp.8, !dbg !103 ; [#uses=1 type=i23] [debug line = 90:5]
  %tmp.42.cast = sext i23 %tmp.42 to i32, !dbg !103 ; [#uses=1 type=i32] [debug line = 90:5]
  %tmp.43 = zext i32 %tmp.42.cast to i64, !dbg !103 ; [#uses=1 type=i64] [debug line = 90:5]
  %out_pix.addr = getelementptr [2073600 x i32]* %out_pix, i64 0, i64 %tmp.43, !dbg !103 ; [#uses=1 type=i32*] [debug line = 90:5]
  %out_pix.addr.1 = getelementptr [2073600 x i32]* %out_pix, i64 0, i64 %tmp.35, !dbg !103 ; [#uses=1 type=i32*] [debug line = 90:5]
  %tmp.64 = zext i11 -128 to i32                  ; [#uses=1 type=i32]
  %16 = call i32 (...)* @_ssdm_op_SpecBurst(i32* %out_pix.addr.1, i32 0, i32 %tmp.64, i32 1) ; [#uses=0 type=i32]
  store i32 %fourWide, i32* %out_pix.addr, align 4, !dbg !103 ; [debug line = 90:5]
  %tmp.44 = add i23 %cols.assign.cast1, %tmp.10, !dbg !104 ; [#uses=1 type=i23] [debug line = 92:5]
  %tmp.44.cast = sext i23 %tmp.44 to i32, !dbg !104 ; [#uses=1 type=i32] [debug line = 92:5]
  %tmp.45 = zext i32 %tmp.44.cast to i64, !dbg !104 ; [#uses=1 type=i64] [debug line = 92:5]
  %inter_pix.addr.1 = getelementptr [2073600 x i8]* %inter_pix, i64 0, i64 %tmp.45, !dbg !104 ; [#uses=1 type=i8*] [debug line = 92:5]
  %inter_pix.addr.3 = getelementptr [2073600 x i8]* %inter_pix, i64 0, i64 %tmp.46, !dbg !104 ; [#uses=1 type=i8*] [debug line = 92:5]
  %tmp.65 = zext i11 -128 to i32                  ; [#uses=1 type=i32]
  %17 = call i32 (...)* @_ssdm_op_SpecBurst(i8* %inter_pix.addr.3, i32 1, i32 %tmp.65, i32 1) ; [#uses=0 type=i32]
  %inter_pix.load.1 = load i8* %inter_pix.addr.1, align 1, !dbg !104 ; [#uses=4 type=i8] [debug line = 92:5]
  switch i2 %tmp.11.t, label %branch3 [
    i2 0, label %branch0
    i2 1, label %branch1
    i2 -2, label %branch2
  ], !dbg !104                                    ; [debug line = 92:5]

._crit_edge67:                                    ; preds = %branch3, %branch2, %branch1, %branch0
  %18 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @.str12, i32 %tmp.21) nounwind, !dbg !139 ; [#uses=0 type=i32] [debug line = 94:3]
  call void @llvm.dbg.value(metadata !{i11 %j.2}, i64 0, metadata !140), !dbg !141 ; [debug line = 77:51] [debug variable = j]
  br label %14, !dbg !141                         ; [debug line = 77:51]

; <label>:19                                      ; preds = %14
  %20 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @.str11, i32 %tmp.11) nounwind, !dbg !142 ; [#uses=0 type=i32] [debug line = 95:2]
  %i.2 = add i11 %rows.assign, 1, !dbg !143       ; [#uses=1 type=i11] [debug line = 76:50]
  call void @llvm.dbg.value(metadata !{i11 %i.2}, i64 0, metadata !144), !dbg !143 ; [debug line = 76:50] [debug variable = i]
  br label %.preheader, !dbg !143                 ; [debug line = 76:50]

; <label>:21                                      ; preds = %.preheader
  ret void, !dbg !145                             ; [debug line = 98:1]

branch0:                                          ; preds = %_ifconv
  store i8 %inter_pix.load.1, i8* %"cache[0].addr.2", align 1, !dbg !104 ; [debug line = 92:5]
  br label %._crit_edge67, !dbg !104              ; [debug line = 92:5]

branch1:                                          ; preds = %_ifconv
  store i8 %inter_pix.load.1, i8* %"cache[1].addr.2", align 1, !dbg !104 ; [debug line = 92:5]
  br label %._crit_edge67, !dbg !104              ; [debug line = 92:5]

branch2:                                          ; preds = %_ifconv
  store i8 %inter_pix.load.1, i8* %"cache[2].addr.1", align 1, !dbg !104 ; [debug line = 92:5]
  br label %._crit_edge67, !dbg !104              ; [debug line = 92:5]

branch3:                                          ; preds = %_ifconv
  store i8 %inter_pix.load.1, i8* %"cache[3].addr.1", align 1, !dbg !104 ; [debug line = 92:5]
  br label %._crit_edge67, !dbg !104              ; [debug line = 92:5]

branch4:                                          ; preds = %6
  store i8 %inter_pix.load, i8* %"cache[0].addr", align 1, !dbg !86 ; [debug line = 71:2]
  br label %8, !dbg !86                           ; [debug line = 71:2]

branch5:                                          ; preds = %6
  store i8 %inter_pix.load, i8* %"cache[1].addr", align 1, !dbg !86 ; [debug line = 71:2]
  br label %8, !dbg !86                           ; [debug line = 71:2]
}

; [#uses=10]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=4]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

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

; [#uses=3]
declare i32 @_ssdm_op_SpecBurst(...)

; [#uses=2]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=0]
declare i8 @_ssdm_op_PartSelect.i8.i8.i32.i32(i8, i32, i32) nounwind readnone

; [#uses=0]
declare i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=0]
declare i8 @_ssdm_op_PartSelect.i8.i24.i32.i32(i24, i32, i32) nounwind readnone

; [#uses=0]
declare i24 @_ssdm_op_PartSelect.i24.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=8]
declare i8 @_ssdm_op_Mux.ap_auto.4i8.i2(i8, i8, i8, i8, i2)

; [#uses=1]
declare i32 @_ssdm_op_BitConcatenate.i32.i8.i24(i8, i24) nounwind readnone

; [#uses=0]
declare i32 @_ssdm_op_BitConcatenate.i32.i24.i8(i24, i8) nounwind readnone

; [#uses=1]
declare i24 @_ssdm_op_BitConcatenate.i24.i8.i16(i8, i16) nounwind readnone

; [#uses=1]
declare i24 @_ssdm_op_BitConcatenate.i24.i16.i8(i16, i8) nounwind readnone

; [#uses=2]
declare void @_ssdm_SpecLoopFlatten(...) nounwind

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
!75 = metadata !{i32 67, i32 40, metadata !76, null}
!76 = metadata !{i32 786443, metadata !64, i32 67, i32 17, metadata !17, i32 6} ; [ DW_TAG_lexical_block ]
!77 = metadata !{i32 13, i32 34, metadata !16, metadata !78}
!78 = metadata !{i32 85, i32 12, metadata !79, null}
!79 = metadata !{i32 786443, metadata !80, i32 84, i32 10, metadata !17, i32 15} ; [ DW_TAG_lexical_block ]
!80 = metadata !{i32 786443, metadata !81, i32 77, i32 56, metadata !17, i32 13} ; [ DW_TAG_lexical_block ]
!81 = metadata !{i32 786443, metadata !82, i32 77, i32 16, metadata !17, i32 12} ; [ DW_TAG_lexical_block ]
!82 = metadata !{i32 786443, metadata !83, i32 76, i32 55, metadata !17, i32 11} ; [ DW_TAG_lexical_block ]
!83 = metadata !{i32 786443, metadata !64, i32 76, i32 15, metadata !17, i32 10} ; [ DW_TAG_lexical_block ]
!84 = metadata !{i32 67, i32 55, metadata !85, null}
!85 = metadata !{i32 786443, metadata !76, i32 67, i32 54, metadata !17, i32 7} ; [ DW_TAG_lexical_block ]
!86 = metadata !{i32 71, i32 2, metadata !87, null}
!87 = metadata !{i32 786443, metadata !88, i32 68, i32 58, metadata !17, i32 9} ; [ DW_TAG_lexical_block ]
!88 = metadata !{i32 786443, metadata !85, i32 68, i32 18, metadata !17, i32 8} ; [ DW_TAG_lexical_block ]
!89 = metadata !{i32 68, i32 41, metadata !88, null}
!90 = metadata !{i32 68, i32 59, metadata !87, null}
!91 = metadata !{i32 69, i32 1, metadata !87, null}
!92 = metadata !{i32 70, i32 1, metadata !87, null}
!93 = metadata !{i32 72, i32 3, metadata !87, null}
!94 = metadata !{i32 68, i32 53, metadata !88, null}
!95 = metadata !{i32 786688, metadata !88, metadata !"j", metadata !17, i32 68, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!96 = metadata !{i32 73, i32 2, metadata !85, null}
!97 = metadata !{i32 67, i32 49, metadata !76, null}
!98 = metadata !{i32 786688, metadata !76, metadata !"i", metadata !17, i32 67, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!99 = metadata !{i32 786689, metadata !16, metadata !"rows", metadata !17, i32 16777229, metadata !22, i32 0, metadata !78} ; [ DW_TAG_arg_variable ]
!100 = metadata !{i32 76, i32 38, metadata !83, null}
!101 = metadata !{i32 76, i32 56, metadata !82, null}
!102 = metadata !{i32 81, i32 2, metadata !80, null}
!103 = metadata !{i32 90, i32 5, metadata !80, null}
!104 = metadata !{i32 92, i32 5, metadata !80, null}
!105 = metadata !{i32 13, i32 50, metadata !16, metadata !78}
!106 = metadata !{i32 77, i32 39, metadata !81, null}
!107 = metadata !{i32 786689, metadata !16, metadata !"cols", metadata !17, i32 33554445, metadata !22, i32 0, metadata !78} ; [ DW_TAG_arg_variable ]
!108 = metadata !{i32 77, i32 57, metadata !80, null}
!109 = metadata !{i32 78, i32 1, metadata !80, null}
!110 = metadata !{i32 79, i32 1, metadata !80, null}
!111 = metadata !{i32 34, i32 4, metadata !112, metadata !78}
!112 = metadata !{i32 786443, metadata !113, i32 32, i32 38, metadata !17, i32 4} ; [ DW_TAG_lexical_block ]
!113 = metadata !{i32 786443, metadata !114, i32 32, i32 11, metadata !17, i32 3} ; [ DW_TAG_lexical_block ]
!114 = metadata !{i32 786443, metadata !115, i32 31, i32 37, metadata !17, i32 2} ; [ DW_TAG_lexical_block ]
!115 = metadata !{i32 786443, metadata !116, i32 31, i32 10, metadata !17, i32 1} ; [ DW_TAG_lexical_block ]
!116 = metadata !{i32 786443, metadata !16, i32 14, i32 1, metadata !17, i32 0} ; [ DW_TAG_lexical_block ]
!117 = metadata !{i32 37, i32 4, metadata !112, metadata !78}
!118 = metadata !{i32 41, i32 2, metadata !116, metadata !78}
!119 = metadata !{i32 43, i32 2, metadata !116, metadata !78}
!120 = metadata !{i32 786688, metadata !116, metadata !"edge_val", metadata !17, i32 19, metadata !20, i32 0, metadata !78} ; [ DW_TAG_auto_variable ]
!121 = metadata !{i32 46, i32 2, metadata !116, metadata !78}
!122 = metadata !{i32 48, i32 7, metadata !116, metadata !78}
!123 = metadata !{i32 89, i32 6, metadata !124, null}
!124 = metadata !{i32 786443, metadata !125, i32 89, i32 6, metadata !17, i32 17} ; [ DW_TAG_lexical_block ]
!125 = metadata !{i32 786443, metadata !80, i32 88, i32 13, metadata !17, i32 16} ; [ DW_TAG_lexical_block ]
!126 = metadata !{i32 790529, metadata !127, metadata !"fourWide", null, i32 65, metadata !129, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!127 = metadata !{i32 786688, metadata !64, metadata !"fourWide", metadata !17, i32 65, metadata !128, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!128 = metadata !{i32 786454, null, metadata !"OneToFourPixels", metadata !17, i32 9, i64 0, i64 0, i64 0, i32 0, metadata !129} ; [ DW_TAG_typedef ]
!129 = metadata !{i32 786455, null, metadata !"", metadata !17, i32 6, i64 32, i64 32, i64 0, i32 0, null, metadata !130, i32 0, null} ; [ DW_TAG_union_type ]
!130 = metadata !{metadata !131, metadata !134, metadata !135}
!131 = metadata !{i32 786445, metadata !129, metadata !"pix", metadata !17, i32 7, i64 32, i64 8, i64 0, i32 0, metadata !132} ; [ DW_TAG_member ]
!132 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 32, i64 8, i32 0, i32 0, metadata !20, metadata !133, i32 0, i32 0} ; [ DW_TAG_array_type ]
!133 = metadata !{metadata !69}
!134 = metadata !{i32 786445, metadata !129, metadata !"full", metadata !17, i32 8, i64 32, i64 32, i64 0, i32 0, metadata !35} ; [ DW_TAG_member ]
!135 = metadata !{i32 786478, i32 0, metadata !129, metadata !"", metadata !"", metadata !"", metadata !17, i32 6, metadata !136, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !28, i32 6} ; [ DW_TAG_subprogram ]
!136 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !137, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!137 = metadata !{null, metadata !138}
!138 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !129} ; [ DW_TAG_pointer_type ]
!139 = metadata !{i32 94, i32 3, metadata !80, null}
!140 = metadata !{i32 786688, metadata !81, metadata !"j", metadata !17, i32 77, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!141 = metadata !{i32 77, i32 51, metadata !81, null}
!142 = metadata !{i32 95, i32 2, metadata !82, null}
!143 = metadata !{i32 76, i32 50, metadata !83, null}
!144 = metadata !{i32 786688, metadata !83, metadata !"i", metadata !17, i32 76, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!145 = metadata !{i32 98, i32 1, metadata !64, null}
