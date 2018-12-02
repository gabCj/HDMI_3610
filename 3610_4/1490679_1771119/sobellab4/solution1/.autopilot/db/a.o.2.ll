; ModuleID = '/home/gabriel/Documents/INF3610/HDMI_3610/3610_4/1490679_1771119/sobellab4/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sobel_filter.str = internal unnamed_addr constant [13 x i8] c"sobel_filter\00" ; [#uses=1 type=[13 x i8]*]
@.str9 = private unnamed_addr constant [14 x i8] c"OperatorLines\00", align 1 ; [#uses=3 type=[14 x i8]*]
@.str8 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]
@.str7 = private unnamed_addr constant [6 x i8] c"gmem1\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str6 = private unnamed_addr constant [6 x i8] c"slave\00", align 1 ; [#uses=2 type=[6 x i8]*]
@.str5 = private unnamed_addr constant [6 x i8] c"gmem0\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str4 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1 ; [#uses=2 type=[6 x i8]*]
@.str12 = private unnamed_addr constant [11 x i8] c"lastPixels\00", align 1 ; [#uses=3 type=[11 x i8]*]
@.str11 = private unnamed_addr constant [10 x i8] c"lastLines\00", align 1 ; [#uses=3 type=[10 x i8]*]
@.str10 = private unnamed_addr constant [13 x i8] c"OperatorRows\00", align 1 ; [#uses=3 type=[13 x i8]*]
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=17 type=[1 x i8]*]

; [#uses=0]
define void @sobel_filter([2073600 x i8]* %inter_pix, [2073600 x i32]* %out_pix) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([2073600 x i8]* %inter_pix) nounwind, !map !40
  call void (...)* @_ssdm_op_SpecBitsMap([2073600 x i32]* %out_pix) nounwind, !map !46
  call void (...)* @_ssdm_op_SpecTopModule([13 x i8]* @sobel_filter.str) nounwind
  call void @llvm.dbg.value(metadata !{[2073600 x i8]* %inter_pix}, i64 0, metadata !50), !dbg !59 ; [debug line = 99:27] [debug variable = inter_pix]
  call void @llvm.dbg.value(metadata !{[2073600 x i32]* %out_pix}, i64 0, metadata !60), !dbg !62 ; [debug line = 99:60] [debug variable = out_pix]
  call void (...)* @_ssdm_op_SpecInterface([2073600 x i8]* %inter_pix, [6 x i8]* @.str4, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [6 x i8]* @.str5, [6 x i8]* @.str6, [1 x i8]* @.str, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str) nounwind
  call void (...)* @_ssdm_op_SpecInterface([2073600 x i32]* %out_pix, [6 x i8]* @.str4, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [6 x i8]* @.str7, [6 x i8]* @.str6, [1 x i8]* @.str, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @.str8, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str) nounwind, !dbg !63 ; [debug line = 103:1]
  br label %1, !dbg !65                           ; [debug line = 171:40]

; <label>:1                                       ; preds = %8, %0
  %i = phi i11 [ 0, %0 ], [ %i.1, %8 ]            ; [#uses=4 type=i11]
  %i.cast = zext i11 %i to i18, !dbg !65          ; [#uses=1 type=i18] [debug line = 171:40]
  %i.cast1 = zext i11 %i to i22, !dbg !65         ; [#uses=1 type=i22] [debug line = 171:40]
  %tmp.1 = icmp eq i11 %i, -968, !dbg !65         ; [#uses=1 type=i1] [debug line = 171:40]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1080, i64 1080, i64 1080) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.1, label %.preheader.preheader, label %3, !dbg !65 ; [debug line = 171:40]

.preheader.preheader:                             ; preds = %1
  br label %.preheader, !dbg !67                  ; [debug line = 202:36]

; <label>:3                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @.str9) nounwind, !dbg !69 ; [debug line = 171:58]
  %tmp. = call i32 (...)* @_ssdm_op_SpecRegionBegin([14 x i8]* @.str9) nounwind, !dbg !69 ; [#uses=1 type=i32] [debug line = 171:58]
  %_shl1 = shl nuw i22 %i.cast1, 11, !dbg !71     ; [#uses=1 type=i22] [debug line = 175:2]
  %_shl1.cast = zext i22 %_shl1 to i23, !dbg !71  ; [#uses=1 type=i23] [debug line = 175:2]
  %_shl2 = shl nuw i18 %i.cast, 7, !dbg !71       ; [#uses=1 type=i18] [debug line = 175:2]
  %_shl2.cast = zext i18 %_shl2 to i23, !dbg !71  ; [#uses=1 type=i23] [debug line = 175:2]
  %tmp.2 = sub i23 %_shl1.cast, %_shl2.cast, !dbg !71 ; [#uses=2 type=i23] [debug line = 175:2]
  %i.1 = add i11 %i, 1, !dbg !74                  ; [#uses=1 type=i11] [debug line = 182:7]
  %tmp.3 = zext i11 0 to i13, !dbg !76            ; [#uses=1 type=i13] [debug line = 172:41]
  %tmp.8 = add i13 %tmp.3, -3840, !dbg !77        ; [#uses=1 type=i13] [debug line = 196:5]
  %tmp.16 = sext i13 %tmp.8 to i23, !dbg !77      ; [#uses=1 type=i23] [debug line = 196:5]
  %tmp.17 = add i23 %tmp.2, %tmp.16, !dbg !77     ; [#uses=1 type=i23] [debug line = 196:5]
  %tmp.18 = sext i23 %tmp.17 to i32, !dbg !77     ; [#uses=1 type=i32] [debug line = 196:5]
  %tmp.19 = zext i32 %tmp.18 to i64, !dbg !77     ; [#uses=1 type=i64] [debug line = 196:5]
  br label %4, !dbg !76                           ; [debug line = 172:41]

; <label>:4                                       ; preds = %._crit_edge, %3
  %j = phi i11 [ 0, %3 ], [ %j.1, %._crit_edge ]  ; [#uses=3 type=i11]
  %j.cast = zext i11 %j to i13, !dbg !76          ; [#uses=1 type=i13] [debug line = 172:41]
  %tmp.5 = icmp eq i11 %j, -128, !dbg !76         ; [#uses=1 type=i1] [debug line = 172:41]
  %5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1920, i64 1920, i64 1920) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.5, label %8, label %._crit_edge, !dbg !76 ; [debug line = 172:41]

._crit_edge:                                      ; preds = %4
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @.str10) nounwind, !dbg !78 ; [debug line = 172:59]
  %tmp.9 = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @.str10) nounwind, !dbg !78 ; [#uses=1 type=i32] [debug line = 172:59]
  call void (...)* @_ssdm_op_SpecPipeline(i32 2, i32 1, i32 1, i32 0, [1 x i8]* @.str) nounwind, !dbg !79 ; [debug line = 173:1]
  call void (...)* @_ssdm_SpecLoopFlatten(i32 1, [1 x i8]* @.str) nounwind, !dbg !80 ; [debug line = 174:1]
  %tmp = add i13 %j.cast, -3840, !dbg !77         ; [#uses=1 type=i13] [debug line = 196:5]
  %tmp.cast = sext i13 %tmp to i23, !dbg !77      ; [#uses=1 type=i23] [debug line = 196:5]
  %tmp.10 = add i23 %tmp.2, %tmp.cast, !dbg !77   ; [#uses=1 type=i23] [debug line = 196:5]
  %tmp.10.cast = sext i23 %tmp.10 to i32, !dbg !77 ; [#uses=1 type=i32] [debug line = 196:5]
  %tmp.11 = zext i32 %tmp.10.cast to i64, !dbg !77 ; [#uses=1 type=i64] [debug line = 196:5]
  %out_pix.addr = getelementptr [2073600 x i32]* %out_pix, i64 0, i64 %tmp.11, !dbg !77 ; [#uses=1 type=i32*] [debug line = 196:5]
  %out_pix.addr.2 = getelementptr [2073600 x i32]* %out_pix, i64 0, i64 %tmp.19, !dbg !77 ; [#uses=1 type=i32*] [debug line = 196:5]
  %tmp.26 = zext i11 -128 to i32                  ; [#uses=1 type=i32]
  %6 = call i32 (...)* @_ssdm_op_SpecBurst(i32* %out_pix.addr.2, i32 0, i32 %tmp.26, i32 1) ; [#uses=0 type=i32]
  store i32 0, i32* %out_pix.addr, align 4, !dbg !77 ; [debug line = 196:5]
  %7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @.str10, i32 %tmp.9) nounwind, !dbg !81 ; [#uses=0 type=i32] [debug line = 199:5]
  %j.1 = add i11 %j, 1, !dbg !82                  ; [#uses=1 type=i11] [debug line = 172:53]
  call void @llvm.dbg.value(metadata !{i11 %j.1}, i64 0, metadata !83), !dbg !82 ; [debug line = 172:53] [debug variable = j]
  br label %4, !dbg !82                           ; [debug line = 172:53]

; <label>:8                                       ; preds = %4
  %9 = call i32 (...)* @_ssdm_op_SpecRegionEnd([14 x i8]* @.str9, i32 %tmp.) nounwind, !dbg !84 ; [#uses=0 type=i32] [debug line = 200:4]
  call void @llvm.dbg.value(metadata !{i11 %i.1}, i64 0, metadata !85), !dbg !86 ; [debug line = 171:52] [debug variable = i]
  br label %1, !dbg !86                           ; [debug line = 171:52]

.preheader:                                       ; preds = %16, %.preheader.preheader
  %i2 = phi i2 [ %i.2, %16 ], [ 0, %.preheader.preheader ] ; [#uses=4 type=i2]
  %i2.cast = zext i2 %i2 to i9, !dbg !67          ; [#uses=1 type=i9] [debug line = 202:36]
  %i2.cast1 = zext i2 %i2 to i13, !dbg !67        ; [#uses=1 type=i13] [debug line = 202:36]
  %tmp.4 = icmp eq i2 %i2, -1, !dbg !67           ; [#uses=1 type=i1] [debug line = 202:36]
  %10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.4, label %18, label %11, !dbg !67    ; [debug line = 202:36]

; <label>:11                                      ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([10 x i8]* @.str11) nounwind, !dbg !87 ; [debug line = 202:51]
  %tmp.6 = call i32 (...)* @_ssdm_op_SpecRegionBegin([10 x i8]* @.str11) nounwind, !dbg !87 ; [#uses=1 type=i32] [debug line = 202:51]
  %_shl = shl nuw i13 %i2.cast1, 11, !dbg !89     ; [#uses=1 type=i13] [debug line = 223:4]
  %_shl.cast = zext i13 %_shl to i14, !dbg !89    ; [#uses=1 type=i14] [debug line = 223:4]
  %_shl3 = shl nuw i9 %i2.cast, 7, !dbg !89       ; [#uses=1 type=i9] [debug line = 223:4]
  %_shl3.cast = zext i9 %_shl3 to i14, !dbg !89   ; [#uses=1 type=i14] [debug line = 223:4]
  %tmp.7 = sub i14 %_shl.cast, %_shl3.cast, !dbg !89 ; [#uses=2 type=i14] [debug line = 223:4]
  %i.2 = add i2 %i2, 1, !dbg !92                  ; [#uses=1 type=i2] [debug line = 209:5]
  %tmp.20 = zext i11 0 to i13, !dbg !94           ; [#uses=1 type=i13] [debug line = 203:38]
  %tmp.21 = add i13 %tmp.20, -3840, !dbg !89      ; [#uses=1 type=i13] [debug line = 223:4]
  %tmp.22 = sext i13 %tmp.21 to i14, !dbg !89     ; [#uses=1 type=i14] [debug line = 223:4]
  %tmp.23 = add i14 %tmp.7, %tmp.22, !dbg !89     ; [#uses=1 type=i14] [debug line = 223:4]
  %tmp.24 = sext i14 %tmp.23 to i32, !dbg !89     ; [#uses=1 type=i32] [debug line = 223:4]
  %tmp.25 = zext i32 %tmp.24 to i64, !dbg !89     ; [#uses=1 type=i64] [debug line = 223:4]
  br label %12, !dbg !94                          ; [debug line = 203:38]

; <label>:12                                      ; preds = %._crit_edge7, %11
  %j3 = phi i11 [ 0, %11 ], [ %j.2, %._crit_edge7 ] ; [#uses=3 type=i11]
  %j3.cast = zext i11 %j3 to i13, !dbg !94        ; [#uses=1 type=i13] [debug line = 203:38]
  %tmp.12 = icmp eq i11 %j3, -128, !dbg !94       ; [#uses=1 type=i1] [debug line = 203:38]
  %13 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1920, i64 1920, i64 1920) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.12, label %16, label %._crit_edge7, !dbg !94 ; [debug line = 203:38]

._crit_edge7:                                     ; preds = %12
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @.str12) nounwind, !dbg !95 ; [debug line = 203:56]
  %tmp.13 = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @.str12) nounwind, !dbg !95 ; [#uses=1 type=i32] [debug line = 203:56]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str) nounwind, !dbg !96 ; [debug line = 204:1]
  %tmp15 = add i13 %j3.cast, -3840, !dbg !89      ; [#uses=1 type=i13] [debug line = 223:4]
  %tmp15.cast = sext i13 %tmp15 to i14, !dbg !89  ; [#uses=1 type=i14] [debug line = 223:4]
  %tmp.14 = add i14 %tmp.7, %tmp15.cast, !dbg !89 ; [#uses=1 type=i14] [debug line = 223:4]
  %tmp.14.cast = sext i14 %tmp.14 to i32, !dbg !89 ; [#uses=1 type=i32] [debug line = 223:4]
  %tmp.15 = zext i32 %tmp.14.cast to i64, !dbg !89 ; [#uses=1 type=i64] [debug line = 223:4]
  %out_pix.addr.1 = getelementptr [2073600 x i32]* %out_pix, i64 0, i64 %tmp.15, !dbg !89 ; [#uses=1 type=i32*] [debug line = 223:4]
  %out_pix.addr.3 = getelementptr [2073600 x i32]* %out_pix, i64 0, i64 %tmp.25, !dbg !89 ; [#uses=1 type=i32*] [debug line = 223:4]
  %tmp.27 = zext i11 -128 to i32                  ; [#uses=1 type=i32]
  %14 = call i32 (...)* @_ssdm_op_SpecBurst(i32* %out_pix.addr.3, i32 0, i32 %tmp.27, i32 1) ; [#uses=0 type=i32]
  store i32 0, i32* %out_pix.addr.1, align 4, !dbg !89 ; [debug line = 223:4]
  %15 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @.str12, i32 %tmp.13) nounwind, !dbg !97 ; [#uses=0 type=i32] [debug line = 225:3]
  %j.2 = add i11 %j3, 1, !dbg !98                 ; [#uses=1 type=i11] [debug line = 203:50]
  call void @llvm.dbg.value(metadata !{i11 %j.2}, i64 0, metadata !99), !dbg !98 ; [debug line = 203:50] [debug variable = j]
  br label %12, !dbg !98                          ; [debug line = 203:50]

; <label>:16                                      ; preds = %12
  %17 = call i32 (...)* @_ssdm_op_SpecRegionEnd([10 x i8]* @.str11, i32 %tmp.6) nounwind, !dbg !100 ; [#uses=0 type=i32] [debug line = 226:2]
  call void @llvm.dbg.value(metadata !{i2 %i.2}, i64 0, metadata !101), !dbg !102 ; [debug line = 202:45] [debug variable = i]
  br label %.preheader, !dbg !102                 ; [debug line = 202:45]

; <label>:18                                      ; preds = %.preheader
  ret void, !dbg !103                             ; [debug line = 229:1]
}

; [#uses=6]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define i8 @aesl_mux_load.9i8P.i4(i8* nocapture, i8* nocapture, i8* nocapture, i8* nocapture, i8* nocapture, i8* nocapture, i8* nocapture, i8* nocapture, i8* nocapture, i4) readonly {
entry_ifconv:
  call void (...)* @_ssdm_SpecMemSelectRead()
  %10 = load i8* %8, align 1                      ; [#uses=1 type=i8]
  %11 = load i8* %0, align 1                      ; [#uses=1 type=i8]
  %12 = load i8* %1, align 1                      ; [#uses=1 type=i8]
  %13 = load i8* %2, align 1                      ; [#uses=1 type=i8]
  %14 = load i8* %3, align 1                      ; [#uses=1 type=i8]
  %15 = load i8* %4, align 1                      ; [#uses=1 type=i8]
  %16 = load i8* %5, align 1                      ; [#uses=1 type=i8]
  %17 = load i8* %6, align 1                      ; [#uses=1 type=i8]
  %18 = load i8* %7, align 1                      ; [#uses=1 type=i8]
  %sel_tmp = icmp eq i4 %9, 0                     ; [#uses=1 type=i1]
  %sel_tmp2 = icmp eq i4 %9, 1                    ; [#uses=2 type=i1]
  %sel_tmp4 = icmp eq i4 %9, 2                    ; [#uses=1 type=i1]
  %sel_tmp6 = icmp eq i4 %9, 3                    ; [#uses=2 type=i1]
  %sel_tmp8 = icmp eq i4 %9, 4                    ; [#uses=1 type=i1]
  %sel_tmp1 = icmp eq i4 %9, 5                    ; [#uses=2 type=i1]
  %sel_tmp3 = icmp eq i4 %9, 6                    ; [#uses=1 type=i1]
  %sel_tmp5 = icmp eq i4 %9, 7                    ; [#uses=2 type=i1]
  %newSel = select i1 %sel_tmp5, i8 %18, i8 %17   ; [#uses=1 type=i8]
  %or_cond = or i1 %sel_tmp5, %sel_tmp3           ; [#uses=2 type=i1]
  %newSel1 = select i1 %sel_tmp1, i8 %16, i8 %15  ; [#uses=1 type=i8]
  %or_cond1 = or i1 %sel_tmp1, %sel_tmp8          ; [#uses=1 type=i1]
  %newSel2 = select i1 %sel_tmp6, i8 %14, i8 %13  ; [#uses=1 type=i8]
  %or_cond2 = or i1 %sel_tmp6, %sel_tmp4          ; [#uses=2 type=i1]
  %newSel3 = select i1 %sel_tmp2, i8 %12, i8 %11  ; [#uses=1 type=i8]
  %or_cond3 = or i1 %sel_tmp2, %sel_tmp           ; [#uses=1 type=i1]
  %newSel4 = select i1 %or_cond, i8 %newSel, i8 %newSel1 ; [#uses=1 type=i8]
  %or_cond4 = or i1 %or_cond, %or_cond1           ; [#uses=2 type=i1]
  %newSel5 = select i1 %or_cond2, i8 %newSel2, i8 %newSel3 ; [#uses=1 type=i8]
  %or_cond5 = or i1 %or_cond2, %or_cond3          ; [#uses=1 type=i1]
  %newSel6 = select i1 %or_cond4, i8 %newSel4, i8 %newSel5 ; [#uses=1 type=i8]
  %or_cond6 = or i1 %or_cond4, %or_cond5          ; [#uses=1 type=i1]
  %newSel7 = select i1 %or_cond6, i8 %newSel6, i8 %10 ; [#uses=1 type=i8]
  ret i8 %newSel7
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
declare i32 @_ssdm_op_SpecBurst(...)

; [#uses=2]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=1]
declare void @_ssdm_SpecMemSelectRead(...)

; [#uses=1]
declare void @_ssdm_SpecLoopFlatten(...) nounwind

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
!18 = metadata !{i32 786449, i32 0, i32 4, metadata !"/home/gabriel/Documents/INF3610/HDMI_3610/3610_4/1490679_1771119/sobellab4/solution1/.autopilot/db/Sobel.pragma.2.cpp", metadata !"/home/gabriel/Documents/INF3610/HDMI_3610/3610_4/1490679_1771119", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, null, null, metadata !19, metadata !31} ; [ DW_TAG_compile_unit ]
!19 = metadata !{i32 786478, i32 0, metadata !20, metadata !"sobel_operator", metadata !"sobel_operator", metadata !"_Z14sobel_operatoriPh", metadata !20, i32 30, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !29, i32 31} ; [ DW_TAG_subprogram ]
!20 = metadata !{i32 786473, metadata !"sobellab4/Sobel.cpp", metadata !"/home/gabriel/Documents/INF3610/HDMI_3610/3610_4/1490679_1771119", null} ; [ DW_TAG_file_type ]
!21 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !22, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!22 = metadata !{metadata !23, metadata !26, metadata !28}
!23 = metadata !{i32 786454, null, metadata !"uint8_t", metadata !20, i32 24, i64 0, i64 0, i64 0, i32 0, metadata !24} ; [ DW_TAG_typedef ]
!24 = metadata !{i32 786454, null, metadata !"__uint8_t", metadata !20, i32 37, i64 0, i64 0, i64 0, i32 0, metadata !25} ; [ DW_TAG_typedef ]
!25 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!26 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !27} ; [ DW_TAG_const_type ]
!27 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!28 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !23} ; [ DW_TAG_pointer_type ]
!29 = metadata !{metadata !30}
!30 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!31 = metadata !{metadata !32}
!32 = metadata !{metadata !33, metadata !39}
!33 = metadata !{i32 786484, i32 0, metadata !19, metadata !"x_op", metadata !"x_op", metadata !"", metadata !20, i32 54, metadata !34, i32 1, i32 1, null} ; [ DW_TAG_variable ]
!34 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 72, i64 8, i32 0, i32 0, metadata !35, metadata !37, i32 0, i32 0} ; [ DW_TAG_array_type ]
!35 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !36} ; [ DW_TAG_const_type ]
!36 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!37 = metadata !{metadata !38, metadata !38}
!38 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ]
!39 = metadata !{i32 786484, i32 0, metadata !19, metadata !"y_op", metadata !"y_op", metadata !"", metadata !20, i32 59, metadata !34, i32 1, i32 1, null} ; [ DW_TAG_variable ]
!40 = metadata !{metadata !41}
!41 = metadata !{i32 0, i32 7, metadata !42}
!42 = metadata !{metadata !43}
!43 = metadata !{metadata !"inter_pix", metadata !44, metadata !"unsigned char", i32 0, i32 7}
!44 = metadata !{metadata !45}
!45 = metadata !{i32 0, i32 2073599, i32 1}
!46 = metadata !{metadata !47}
!47 = metadata !{i32 0, i32 31, metadata !48}
!48 = metadata !{metadata !49}
!49 = metadata !{metadata !"out_pix", metadata !44, metadata !"unsigned int", i32 0, i32 31}
!50 = metadata !{i32 786689, metadata !51, metadata !"inter_pix", null, i32 99, metadata !56, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!51 = metadata !{i32 786478, i32 0, metadata !20, metadata !"sobel_filter", metadata !"sobel_filter", metadata !"_Z12sobel_filterPhPj", metadata !20, i32 99, metadata !52, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !29, i32 100} ; [ DW_TAG_subprogram ]
!52 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !53, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!53 = metadata !{null, metadata !28, metadata !54}
!54 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !55} ; [ DW_TAG_pointer_type ]
!55 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!56 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !23, metadata !57, i32 0, i32 0} ; [ DW_TAG_array_type ]
!57 = metadata !{metadata !58}
!58 = metadata !{i32 786465, i64 0, i64 2073599}  ; [ DW_TAG_subrange_type ]
!59 = metadata !{i32 99, i32 27, metadata !51, null}
!60 = metadata !{i32 786689, metadata !51, metadata !"out_pix", null, i32 99, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!61 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 66355200, i64 32, i32 0, i32 0, metadata !55, metadata !57, i32 0, i32 0} ; [ DW_TAG_array_type ]
!62 = metadata !{i32 99, i32 60, metadata !51, null}
!63 = metadata !{i32 103, i32 1, metadata !64, null}
!64 = metadata !{i32 786443, metadata !51, i32 100, i32 1, metadata !20, i32 7} ; [ DW_TAG_lexical_block ]
!65 = metadata !{i32 171, i32 40, metadata !66, null}
!66 = metadata !{i32 786443, metadata !64, i32 171, i32 17, metadata !20, i32 8} ; [ DW_TAG_lexical_block ]
!67 = metadata !{i32 202, i32 36, metadata !68, null}
!68 = metadata !{i32 786443, metadata !64, i32 202, i32 13, metadata !20, i32 15} ; [ DW_TAG_lexical_block ]
!69 = metadata !{i32 171, i32 58, metadata !70, null}
!70 = metadata !{i32 786443, metadata !66, i32 171, i32 57, metadata !20, i32 9} ; [ DW_TAG_lexical_block ]
!71 = metadata !{i32 175, i32 2, metadata !72, null}
!72 = metadata !{i32 786443, metadata !73, i32 172, i32 58, metadata !20, i32 11} ; [ DW_TAG_lexical_block ]
!73 = metadata !{i32 786443, metadata !70, i32 172, i32 18, metadata !20, i32 10} ; [ DW_TAG_lexical_block ]
!74 = metadata !{i32 182, i32 7, metadata !75, null}
!75 = metadata !{i32 786443, metadata !72, i32 181, i32 10, metadata !20, i32 13} ; [ DW_TAG_lexical_block ]
!76 = metadata !{i32 172, i32 41, metadata !73, null}
!77 = metadata !{i32 196, i32 5, metadata !72, null}
!78 = metadata !{i32 172, i32 59, metadata !72, null}
!79 = metadata !{i32 173, i32 1, metadata !72, null}
!80 = metadata !{i32 174, i32 1, metadata !72, null}
!81 = metadata !{i32 199, i32 5, metadata !72, null}
!82 = metadata !{i32 172, i32 53, metadata !73, null}
!83 = metadata !{i32 786688, metadata !73, metadata !"j", metadata !20, i32 172, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!84 = metadata !{i32 200, i32 4, metadata !70, null}
!85 = metadata !{i32 786688, metadata !66, metadata !"i", metadata !20, i32 171, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!86 = metadata !{i32 171, i32 52, metadata !66, null}
!87 = metadata !{i32 202, i32 51, metadata !88, null}
!88 = metadata !{i32 786443, metadata !68, i32 202, i32 50, metadata !20, i32 16} ; [ DW_TAG_lexical_block ]
!89 = metadata !{i32 223, i32 4, metadata !90, null}
!90 = metadata !{i32 786443, metadata !91, i32 203, i32 55, metadata !20, i32 18} ; [ DW_TAG_lexical_block ]
!91 = metadata !{i32 786443, metadata !88, i32 203, i32 15, metadata !20, i32 17} ; [ DW_TAG_lexical_block ]
!92 = metadata !{i32 209, i32 5, metadata !93, null}
!93 = metadata !{i32 786443, metadata !90, i32 208, i32 9, metadata !20, i32 20} ; [ DW_TAG_lexical_block ]
!94 = metadata !{i32 203, i32 38, metadata !91, null}
!95 = metadata !{i32 203, i32 56, metadata !90, null}
!96 = metadata !{i32 204, i32 1, metadata !90, null}
!97 = metadata !{i32 225, i32 3, metadata !90, null}
!98 = metadata !{i32 203, i32 50, metadata !91, null}
!99 = metadata !{i32 786688, metadata !91, metadata !"j", metadata !20, i32 203, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!100 = metadata !{i32 226, i32 2, metadata !88, null}
!101 = metadata !{i32 786688, metadata !68, metadata !"i", metadata !20, i32 202, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!102 = metadata !{i32 202, i32 45, metadata !68, null}
!103 = metadata !{i32 229, i32 1, metadata !64, null}
