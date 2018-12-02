; ModuleID = '/home/gabriel/Documents/INF3610/HDMI_3610/3610_4/1490679_1771119/sobellab4/solution1/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.OneToFourPixels.0 = type { i32 }

@y_op = internal constant [3 x [3 x i8]] [[3 x i8] c"\01\02\01", [3 x i8] zeroinitializer, [3 x i8] c"\FF\FE\FF"], align 1 ; [#uses=3 type=[3 x [3 x i8]]*]
@x_op = internal constant [3 x [3 x i8]] [[3 x i8] c"\FF\00\01", [3 x i8] c"\FE\00\02", [3 x i8] c"\FF\00\01"], align 1 ; [#uses=3 type=[3 x [3 x i8]]*]
@sobel_filter.str = internal unnamed_addr constant [13 x i8] c"sobel_filter\00" ; [#uses=1 type=[13 x i8]*]
@.str9 = private unnamed_addr constant [14 x i8] c"OperatorLines\00", align 1 ; [#uses=1 type=[14 x i8]*]
@.str8 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]
@.str7 = private unnamed_addr constant [6 x i8] c"gmem1\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str6 = private unnamed_addr constant [6 x i8] c"slave\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str5 = private unnamed_addr constant [6 x i8] c"gmem0\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str4 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str3 = private unnamed_addr constant [12 x i8] c"hls_label_1\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str2 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str12 = private unnamed_addr constant [11 x i8] c"lastPixels\00", align 1 ; [#uses=1 type=[11 x i8]*]
@.str11 = private unnamed_addr constant [10 x i8] c"lastLines\00", align 1 ; [#uses=1 type=[10 x i8]*]
@.str10 = private unnamed_addr constant [13 x i8] c"OperatorRows\00", align 1 ; [#uses=1 type=[13 x i8]*]
@.str1 = private unnamed_addr constant [9 x i8] c"COMPLETE\00", align 1 ; [#uses=1 type=[9 x i8]*]
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]

; [#uses=0]
define void @sobel_filter(i8* %inter_pix, i32* %out_pix) nounwind uwtable {
  %x_weightA = alloca [9 x i32], align 16         ; [#uses=3 type=[9 x i32]*]
  %y_weightA = alloca [9 x i32], align 16         ; [#uses=3 type=[9 x i32]*]
  %x_weightA.1 = alloca [9 x i32], align 16       ; [#uses=3 type=[9 x i32]*]
  %y_weightA.1 = alloca [9 x i32], align 16       ; [#uses=3 type=[9 x i32]*]
  call void (...)* @_ssdm_op_SpecTopModule([13 x i8]* @sobel_filter.str) nounwind
  %cache1 = alloca [7680 x i8], align 16          ; [#uses=19 type=[7680 x i8]*]
  %fourWide = alloca %union.OneToFourPixels.0, align 4 ; [#uses=2 type=%union.OneToFourPixels.0*]
  %surroundingPix = alloca [9 x i8], align 1      ; [#uses=9 type=[9 x i8]*]
  call void @llvm.dbg.value(metadata !{i8* %inter_pix}, i64 0, metadata !52), !dbg !53 ; [debug line = 99:27] [debug variable = inter_pix]
  call void @llvm.dbg.value(metadata !{i32* %out_pix}, i64 0, metadata !54), !dbg !55 ; [debug line = 99:60] [debug variable = out_pix]
  call void (...)* @_ssdm_SpecArrayDimSize(i32* %out_pix, i32 2073600) nounwind, !dbg !56 ; [debug line = 100:2]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %inter_pix, i32 2073600) nounwind, !dbg !58 ; [debug line = 100:46]
  call void (...)* @_ssdm_op_SpecInterface(i8* %inter_pix, i8* getelementptr inbounds ([6 x i8]* @.str4, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([6 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 16, i32 16, i32 16, i32 16, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !59 ; [debug line = 101:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %out_pix, i8* getelementptr inbounds ([6 x i8]* @.str4, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([6 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 16, i32 16, i32 16, i32 16, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !60 ; [debug line = 102:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, i8* getelementptr inbounds ([10 x i8]* @.str8, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !61 ; [debug line = 103:1]
  call void @llvm.dbg.declare(metadata !{[7680 x i8]* %cache1}, metadata !62), !dbg !66 ; [debug line = 106:10] [debug variable = cache1]
  call void @llvm.dbg.declare(metadata !{%union.OneToFourPixels.0* %fourWide}, metadata !67), !dbg !80 ; [debug line = 108:18] [debug variable = fourWide]
  call void @llvm.dbg.declare(metadata !{[9 x i8]* %surroundingPix}, metadata !81), !dbg !85 ; [debug line = 109:10] [debug variable = surroundingPix]
  %image.assign = getelementptr inbounds [9 x i8]* %surroundingPix, i64 0, i64 0, !dbg !86 ; [#uses=7 type=i8*] [debug line = 110:1]
  call void (...)* @_ssdm_SpecArrayPartition(i8* %image.assign, i32 1, i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !86 ; [debug line = 110:1]
  %tmp = bitcast %union.OneToFourPixels.0* %fourWide to [4 x i8]*, !dbg !87 ; [#uses=2 type=[4 x i8]*] [debug line = 195:6]
  %fourWide.addr = getelementptr inbounds %union.OneToFourPixels.0* %fourWide, i64 0, i32 0, !dbg !93 ; [#uses=2 type=i32*] [debug line = 196:5]
  %surroundingPix.addr.1 = getelementptr inbounds [9 x i8]* %surroundingPix, i64 0, i64 1, !dbg !94 ; [#uses=2 type=i8*] [debug line = 183:7]
  %surroundingPix.addr.2 = getelementptr inbounds [9 x i8]* %surroundingPix, i64 0, i64 2, !dbg !96 ; [#uses=2 type=i8*] [debug line = 184:7]
  %surroundingPix.addr.3 = getelementptr inbounds [9 x i8]* %surroundingPix, i64 0, i64 3, !dbg !97 ; [#uses=2 type=i8*] [debug line = 185:7]
  %surroundingPix.addr.4 = getelementptr inbounds [9 x i8]* %surroundingPix, i64 0, i64 4, !dbg !98 ; [#uses=2 type=i8*] [debug line = 186:7]
  %surroundingPix.addr.5 = getelementptr inbounds [9 x i8]* %surroundingPix, i64 0, i64 5, !dbg !99 ; [#uses=2 type=i8*] [debug line = 187:7]
  %surroundingPix.addr.6 = getelementptr inbounds [9 x i8]* %surroundingPix, i64 0, i64 6, !dbg !100 ; [#uses=2 type=i8*] [debug line = 188:7]
  %surroundingPix.addr.7 = getelementptr inbounds [9 x i8]* %surroundingPix, i64 0, i64 7, !dbg !101 ; [#uses=2 type=i8*] [debug line = 189:7]
  %surroundingPix.addr.8 = getelementptr inbounds [9 x i8]* %surroundingPix, i64 0, i64 8, !dbg !102 ; [#uses=2 type=i8*] [debug line = 190:7]
  br label %1, !dbg !103                          ; [debug line = 171:40]

; <label>:1                                       ; preds = %17, %0
  %i = phi i32 [ 0, %0 ], [ %i.1, %17 ]           ; [#uses=7 type=i32]
  %tmp.1 = icmp eq i32 %i, 1080, !dbg !103        ; [#uses=1 type=i1] [debug line = 171:40]
  br i1 %tmp.1, label %.preheader.preheader, label %2, !dbg !103 ; [debug line = 171:40]

.preheader.preheader:                             ; preds = %1
  br label %.preheader, !dbg !104                 ; [debug line = 202:36]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([14 x i8]* @.str9, i64 0, i64 0)) nounwind, !dbg !106 ; [debug line = 171:58]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([14 x i8]* @.str9, i64 0, i64 0)) nounwind, !dbg !106 ; [#uses=1 type=i32] [debug line = 171:58]
  %tmp.2 = mul i32 %i, 1920, !dbg !107            ; [#uses=2 type=i32] [debug line = 175:2]
  %tmp.3 = and i32 %i, 3, !dbg !107               ; [#uses=1 type=i32] [debug line = 175:2]
  %tmp.4 = mul i32 %tmp.3, 1920, !dbg !107        ; [#uses=1 type=i32] [debug line = 175:2]
  %tmp.5 = icmp eq i32 %i, 2, !dbg !108           ; [#uses=1 type=i1] [debug line = 178:5]
  %i.1 = add i32 %i, 1, !dbg !109                 ; [#uses=2 type=i32] [debug line = 182:7]
  %tmp.7 = and i32 %i.1, 3, !dbg !109             ; [#uses=1 type=i32] [debug line = 182:7]
  %tmp.8 = mul i32 %tmp.7, 1920, !dbg !109        ; [#uses=3 type=i32] [debug line = 182:7]
  %tmp.9 = or i32 %tmp.8, 1, !dbg !96             ; [#uses=1 type=i32] [debug line = 184:7]
  %tmp.10 = add i32 %i, 2, !dbg !97               ; [#uses=1 type=i32] [debug line = 185:7]
  %tmp.11 = and i32 %tmp.10, 3, !dbg !97          ; [#uses=1 type=i32] [debug line = 185:7]
  %tmp.12 = mul i32 %tmp.11, 1920, !dbg !97       ; [#uses=3 type=i32] [debug line = 185:7]
  %tmp.13 = or i32 %tmp.12, 1, !dbg !99           ; [#uses=1 type=i32] [debug line = 187:7]
  %tmp.14 = add i32 %i, 3, !dbg !100              ; [#uses=1 type=i32] [debug line = 188:7]
  %tmp.15 = and i32 %tmp.14, 3, !dbg !100         ; [#uses=1 type=i32] [debug line = 188:7]
  %tmp.16 = mul i32 %tmp.15, 1920, !dbg !100      ; [#uses=3 type=i32] [debug line = 188:7]
  %tmp.17 = or i32 %tmp.16, 1, !dbg !102          ; [#uses=1 type=i32] [debug line = 190:7]
  br label %3, !dbg !110                          ; [debug line = 172:41]

; <label>:3                                       ; preds = %16, %2
  %j = phi i32 [ 0, %2 ], [ %j.3, %16 ]           ; [#uses=15 type=i32]
  %tmp.19 = icmp eq i32 %j, 1920, !dbg !110       ; [#uses=1 type=i1] [debug line = 172:41]
  br i1 %tmp.19, label %17, label %4, !dbg !110   ; [debug line = 172:41]

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([13 x i8]* @.str10, i64 0, i64 0)) nounwind, !dbg !111 ; [debug line = 172:59]
  %rbegin9 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([13 x i8]* @.str10, i64 0, i64 0)) nounwind, !dbg !111 ; [#uses=1 type=i32] [debug line = 172:59]
  call void (...)* @_ssdm_op_SpecPipeline(i32 2, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !112 ; [debug line = 173:1]
  call void (...)* @_ssdm_SpecLoopFlatten(i32 1, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !113 ; [debug line = 174:1]
  %tmp.34 = add i32 %j, %tmp.2, !dbg !107         ; [#uses=1 type=i32] [debug line = 175:2]
  %tmp.35 = zext i32 %tmp.34 to i64, !dbg !107    ; [#uses=1 type=i64] [debug line = 175:2]
  %inter_pix.addr = getelementptr inbounds i8* %inter_pix, i64 %tmp.35, !dbg !107 ; [#uses=1 type=i8*] [debug line = 175:2]
  %inter_pix.load = load i8* %inter_pix.addr, align 1, !dbg !107 ; [#uses=2 type=i8] [debug line = 175:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %inter_pix.load) nounwind
  %tmp.36 = add i32 %j, %tmp.4, !dbg !107         ; [#uses=1 type=i32] [debug line = 175:2]
  %tmp.37 = zext i32 %tmp.36 to i64, !dbg !107    ; [#uses=1 type=i64] [debug line = 175:2]
  %cache1.addr = getelementptr inbounds [7680 x i8]* %cache1, i64 0, i64 %tmp.37, !dbg !107 ; [#uses=1 type=i8*] [debug line = 175:2]
  store i8 %inter_pix.load, i8* %cache1.addr, align 1, !dbg !107 ; [debug line = 175:2]
  br i1 %tmp.5, label %._crit_edge, label %switch.early.test

switch.early.test:                                ; preds = %4
  switch i32 %j, label %5 [
    i32 1919, label %._crit_edge
    i32 0, label %._crit_edge
  ], !dbg !108                                    ; [debug line = 178:5]

; <label>:5                                       ; preds = %switch.early.test
  %tmp.39 = add i32 %tmp.8, -1, !dbg !109         ; [#uses=1 type=i32] [debug line = 182:7]
  %tmp.40 = add i32 %tmp.39, %j, !dbg !109        ; [#uses=1 type=i32] [debug line = 182:7]
  %tmp.41 = zext i32 %tmp.40 to i64, !dbg !109    ; [#uses=1 type=i64] [debug line = 182:7]
  %cache1.addr.1 = getelementptr inbounds [7680 x i8]* %cache1, i64 0, i64 %tmp.41, !dbg !109 ; [#uses=1 type=i8*] [debug line = 182:7]
  %cache1.load = load i8* %cache1.addr.1, align 1, !dbg !109 ; [#uses=2 type=i8] [debug line = 182:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %cache1.load) nounwind
  store i8 %cache1.load, i8* %image.assign, align 1, !dbg !109 ; [debug line = 182:7]
  %tmp.42 = add i32 %j, %tmp.8, !dbg !94          ; [#uses=1 type=i32] [debug line = 183:7]
  %tmp.43 = zext i32 %tmp.42 to i64, !dbg !94     ; [#uses=1 type=i64] [debug line = 183:7]
  %cache1.addr.2 = getelementptr inbounds [7680 x i8]* %cache1, i64 0, i64 %tmp.43, !dbg !94 ; [#uses=1 type=i8*] [debug line = 183:7]
  %cache1.load.1 = load i8* %cache1.addr.2, align 1, !dbg !94 ; [#uses=2 type=i8] [debug line = 183:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %cache1.load.1) nounwind
  store i8 %cache1.load.1, i8* %surroundingPix.addr.1, align 1, !dbg !94 ; [debug line = 183:7]
  %tmp.44 = add i32 %j, %tmp.9, !dbg !96          ; [#uses=1 type=i32] [debug line = 184:7]
  %tmp.45 = zext i32 %tmp.44 to i64, !dbg !96     ; [#uses=1 type=i64] [debug line = 184:7]
  %cache1.addr.3 = getelementptr inbounds [7680 x i8]* %cache1, i64 0, i64 %tmp.45, !dbg !96 ; [#uses=1 type=i8*] [debug line = 184:7]
  %cache1.load.2 = load i8* %cache1.addr.3, align 1, !dbg !96 ; [#uses=2 type=i8] [debug line = 184:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %cache1.load.2) nounwind
  store i8 %cache1.load.2, i8* %surroundingPix.addr.2, align 1, !dbg !96 ; [debug line = 184:7]
  %tmp.46 = add i32 %tmp.12, -1, !dbg !97         ; [#uses=1 type=i32] [debug line = 185:7]
  %tmp.47 = add i32 %tmp.46, %j, !dbg !97         ; [#uses=1 type=i32] [debug line = 185:7]
  %tmp.48 = zext i32 %tmp.47 to i64, !dbg !97     ; [#uses=1 type=i64] [debug line = 185:7]
  %cache1.addr.4 = getelementptr inbounds [7680 x i8]* %cache1, i64 0, i64 %tmp.48, !dbg !97 ; [#uses=1 type=i8*] [debug line = 185:7]
  %cache1.load.3 = load i8* %cache1.addr.4, align 1, !dbg !97 ; [#uses=2 type=i8] [debug line = 185:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %cache1.load.3) nounwind
  store i8 %cache1.load.3, i8* %surroundingPix.addr.3, align 1, !dbg !97 ; [debug line = 185:7]
  %tmp.49 = add i32 %j, %tmp.12, !dbg !98         ; [#uses=1 type=i32] [debug line = 186:7]
  %tmp.50 = zext i32 %tmp.49 to i64, !dbg !98     ; [#uses=1 type=i64] [debug line = 186:7]
  %cache1.addr.5 = getelementptr inbounds [7680 x i8]* %cache1, i64 0, i64 %tmp.50, !dbg !98 ; [#uses=1 type=i8*] [debug line = 186:7]
  %cache1.load.4 = load i8* %cache1.addr.5, align 1, !dbg !98 ; [#uses=2 type=i8] [debug line = 186:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %cache1.load.4) nounwind
  store i8 %cache1.load.4, i8* %surroundingPix.addr.4, align 1, !dbg !98 ; [debug line = 186:7]
  %tmp.51 = add i32 %j, %tmp.13, !dbg !99         ; [#uses=1 type=i32] [debug line = 187:7]
  %tmp.52 = zext i32 %tmp.51 to i64, !dbg !99     ; [#uses=1 type=i64] [debug line = 187:7]
  %cache1.addr.6 = getelementptr inbounds [7680 x i8]* %cache1, i64 0, i64 %tmp.52, !dbg !99 ; [#uses=1 type=i8*] [debug line = 187:7]
  %cache1.load.5 = load i8* %cache1.addr.6, align 1, !dbg !99 ; [#uses=2 type=i8] [debug line = 187:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %cache1.load.5) nounwind
  store i8 %cache1.load.5, i8* %surroundingPix.addr.5, align 1, !dbg !99 ; [debug line = 187:7]
  %tmp.53 = add i32 %tmp.16, -1, !dbg !100        ; [#uses=1 type=i32] [debug line = 188:7]
  %tmp.54 = add i32 %tmp.53, %j, !dbg !100        ; [#uses=1 type=i32] [debug line = 188:7]
  %tmp.55 = zext i32 %tmp.54 to i64, !dbg !100    ; [#uses=1 type=i64] [debug line = 188:7]
  %cache1.addr.7 = getelementptr inbounds [7680 x i8]* %cache1, i64 0, i64 %tmp.55, !dbg !100 ; [#uses=1 type=i8*] [debug line = 188:7]
  %cache1.load.6 = load i8* %cache1.addr.7, align 1, !dbg !100 ; [#uses=2 type=i8] [debug line = 188:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %cache1.load.6) nounwind
  store i8 %cache1.load.6, i8* %surroundingPix.addr.6, align 1, !dbg !100 ; [debug line = 188:7]
  %tmp.56 = add i32 %j, %tmp.16, !dbg !101        ; [#uses=1 type=i32] [debug line = 189:7]
  %tmp.57 = zext i32 %tmp.56 to i64, !dbg !101    ; [#uses=1 type=i64] [debug line = 189:7]
  %cache1.addr.8 = getelementptr inbounds [7680 x i8]* %cache1, i64 0, i64 %tmp.57, !dbg !101 ; [#uses=1 type=i8*] [debug line = 189:7]
  %cache1.load.7 = load i8* %cache1.addr.8, align 1, !dbg !101 ; [#uses=2 type=i8] [debug line = 189:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %cache1.load.7) nounwind
  store i8 %cache1.load.7, i8* %surroundingPix.addr.7, align 1, !dbg !101 ; [debug line = 189:7]
  %tmp.58 = add i32 %j, %tmp.17, !dbg !102        ; [#uses=1 type=i32] [debug line = 190:7]
  %tmp.59 = zext i32 %tmp.58 to i64, !dbg !102    ; [#uses=1 type=i64] [debug line = 190:7]
  %cache1.addr.9 = getelementptr inbounds [7680 x i8]* %cache1, i64 0, i64 %tmp.59, !dbg !102 ; [#uses=1 type=i8*] [debug line = 190:7]
  %cache1.load.8 = load i8* %cache1.addr.9, align 1, !dbg !102 ; [#uses=2 type=i8] [debug line = 190:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %cache1.load.8) nounwind
  store i8 %cache1.load.8, i8* %surroundingPix.addr.8, align 1, !dbg !102 ; [debug line = 190:7]
  call void @llvm.dbg.value(metadata !{i8* %image.assign}, i64 0, metadata !114) nounwind, !dbg !116 ; [debug line = 30:55@192:13] [debug variable = image]
  call void @llvm.dbg.declare(metadata !{[9 x i32]* %x_weightA}, metadata !117) nounwind, !dbg !120 ; [debug line = 46:6@192:13] [debug variable = x_weightA]
  %x_weightA.addr = getelementptr inbounds [9 x i32]* %x_weightA, i64 0, i64 0, !dbg !121 ; [#uses=1 type=i32*] [debug line = 47:1@192:13]
  call void (...)* @_ssdm_SpecArrayPartition(i32* %x_weightA.addr, i32 1, i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !121 ; [debug line = 47:1@192:13]
  call void @llvm.dbg.declare(metadata !{[9 x i32]* %y_weightA}, metadata !122) nounwind, !dbg !123 ; [debug line = 48:6@192:13] [debug variable = y_weightA]
  %y_weightA.addr = getelementptr inbounds [9 x i32]* %y_weightA, i64 0, i64 0, !dbg !124 ; [#uses=1 type=i32*] [debug line = 49:1@192:13]
  call void (...)* @_ssdm_SpecArrayPartition(i32* %y_weightA.addr, i32 1, i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !124 ; [debug line = 49:1@192:13]
  call void (...)* @_ssdm_SpecArrayPartition([3 x i8]* getelementptr inbounds ([3 x [3 x i8]]* @x_op, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !125 ; [debug line = 57:1@192:13]
  call void (...)* @_ssdm_SpecArrayPartition([3 x i8]* getelementptr inbounds ([3 x [3 x i8]]* @y_op, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !126 ; [debug line = 62:1@192:13]
  br label %6, !dbg !127                          ; [debug line = 66:16@192:13]

; <label>:6                                       ; preds = %10, %5
  %i.0.i1 = phi i32 [ 0, %5 ], [ %i.4, %10 ]      ; [#uses=5 type=i32]
  %exitcond2.i1 = icmp eq i32 %i.0.i1, 3, !dbg !127 ; [#uses=1 type=i1] [debug line = 66:16@192:13]
  br i1 %exitcond2.i1, label %.preheader.i27.preheader, label %7, !dbg !127 ; [debug line = 66:16@192:13]

.preheader.i27.preheader:                         ; preds = %6
  br label %.preheader.i27, !dbg !129             ; [debug line = 79:16@192:13]

; <label>:7                                       ; preds = %6
  %rbegin.i1 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str2, i64 0, i64 0)) nounwind, !dbg !131 ; [#uses=1 type=i32] [debug line = 66:31@192:13]
  call void (...)* @_ssdm_Unroll(i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !133 ; [debug line = 67:1@192:13]
  %tmp.81 = add nsw i32 %i.0.i1, -1, !dbg !134    ; [#uses=2 type=i32] [debug line = 70:25@192:13]
  %tmp.82 = sext i32 %i.0.i1 to i64, !dbg !134    ; [#uses=2 type=i64] [debug line = 70:25@192:13]
  %tmp.83 = mul i32 %i.0.i1, 2, !dbg !134         ; [#uses=1 type=i32] [debug line = 70:25@192:13]
  br label %8, !dbg !137                          ; [debug line = 68:16@192:13]

; <label>:8                                       ; preds = %9, %7
  %j.0.i1 = phi i32 [ 0, %7 ], [ %j.1, %9 ]       ; [#uses=5 type=i32]
  %exitcond1.i1 = icmp eq i32 %j.0.i1, 3, !dbg !137 ; [#uses=1 type=i1] [debug line = 68:16@192:13]
  br i1 %exitcond1.i1, label %10, label %9, !dbg !137 ; [debug line = 68:16@192:13]

; <label>:9                                       ; preds = %8
  %tmp.101 = add nsw i32 %j.0.i1, -1, !dbg !134   ; [#uses=2 type=i32] [debug line = 70:25@192:13]
  %tmp.102 = call fastcc zeroext i8 @getVal(i32 %tmp.81, i32 %tmp.101, i8* %image.assign) nounwind, !dbg !134 ; [#uses=1 type=i8] [debug line = 70:25@192:13]
  %tmp.103 = zext i8 %tmp.102 to i32, !dbg !134   ; [#uses=1 type=i32] [debug line = 70:25@192:13]
  %tmp.104 = sext i32 %j.0.i1 to i64, !dbg !134   ; [#uses=2 type=i64] [debug line = 70:25@192:13]
  %x_op.addr = getelementptr inbounds [3 x [3 x i8]]* @x_op, i64 0, i64 %tmp.82, i64 %tmp.104, !dbg !134 ; [#uses=1 type=i8*] [debug line = 70:25@192:13]
  %x_op.load = load i8* %x_op.addr, align 1, !dbg !134 ; [#uses=2 type=i8] [debug line = 70:25@192:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %x_op.load) nounwind
  %tmp.105 = sext i8 %x_op.load to i32, !dbg !134 ; [#uses=1 type=i32] [debug line = 70:25@192:13]
  %tmp.106 = mul nsw i32 %tmp.105, %tmp.103, !dbg !134 ; [#uses=1 type=i32] [debug line = 70:25@192:13]
  %tmp.107 = add nsw i32 %j.0.i1, %tmp.83, !dbg !134 ; [#uses=1 type=i32] [debug line = 70:25@192:13]
  %tmp.108 = sext i32 %tmp.107 to i64, !dbg !134  ; [#uses=2 type=i64] [debug line = 70:25@192:13]
  %x_weightA.addr.2 = getelementptr inbounds [9 x i32]* %x_weightA, i64 0, i64 %tmp.108, !dbg !134 ; [#uses=1 type=i32*] [debug line = 70:25@192:13]
  store i32 %tmp.106, i32* %x_weightA.addr.2, align 4, !dbg !134 ; [debug line = 70:25@192:13]
  %tmp.109 = call fastcc zeroext i8 @getVal(i32 %tmp.81, i32 %tmp.101, i8* %image.assign) nounwind, !dbg !138 ; [#uses=1 type=i8] [debug line = 73:25@192:13]
  %tmp.110 = zext i8 %tmp.109 to i32, !dbg !138   ; [#uses=1 type=i32] [debug line = 73:25@192:13]
  %y_op.addr = getelementptr inbounds [3 x [3 x i8]]* @y_op, i64 0, i64 %tmp.82, i64 %tmp.104, !dbg !138 ; [#uses=1 type=i8*] [debug line = 73:25@192:13]
  %y_op.load = load i8* %y_op.addr, align 1, !dbg !138 ; [#uses=2 type=i8] [debug line = 73:25@192:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %y_op.load) nounwind
  %tmp.111 = sext i8 %y_op.load to i32, !dbg !138 ; [#uses=1 type=i32] [debug line = 73:25@192:13]
  %tmp.112 = mul nsw i32 %tmp.111, %tmp.110, !dbg !138 ; [#uses=1 type=i32] [debug line = 73:25@192:13]
  %y_weightA.addr.2 = getelementptr inbounds [9 x i32]* %y_weightA, i64 0, i64 %tmp.108, !dbg !138 ; [#uses=1 type=i32*] [debug line = 73:25@192:13]
  store i32 %tmp.112, i32* %y_weightA.addr.2, align 4, !dbg !138 ; [debug line = 73:25@192:13]
  %j.1 = add nsw i32 %j.0.i1, 1, !dbg !139        ; [#uses=1 type=i32] [debug line = 68:25@192:13]
  call void @llvm.dbg.value(metadata !{i32 %j.1}, i64 0, metadata !140) nounwind, !dbg !139 ; [debug line = 68:25@192:13] [debug variable = j]
  br label %8, !dbg !139                          ; [debug line = 68:25@192:13]

; <label>:10                                      ; preds = %8
  %rend.i22 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str2, i64 0, i64 0), i32 %rbegin.i1) nounwind, !dbg !141 ; [#uses=0 type=i32] [debug line = 75:2@192:13]
  %i.4 = add nsw i32 %i.0.i1, 1, !dbg !142        ; [#uses=1 type=i32] [debug line = 66:25@192:13]
  call void @llvm.dbg.value(metadata !{i32 %i.4}, i64 0, metadata !143) nounwind, !dbg !142 ; [debug line = 66:25@192:13] [debug variable = i]
  br label %6, !dbg !142                          ; [debug line = 66:25@192:13]

.preheader.i27:                                   ; preds = %11, %.preheader.i27.preheader
  %x_weight.0.i1 = phi i32 [ %x_weight, %11 ], [ 0, %.preheader.i27.preheader ] ; [#uses=2 type=i32]
  %y_weight.0.i1 = phi i32 [ %y_weight, %11 ], [ 0, %.preheader.i27.preheader ] ; [#uses=2 type=i32]
  %i1.0.i1 = phi i32 [ %i.3, %11 ], [ 0, %.preheader.i27.preheader ] ; [#uses=3 type=i32]
  %exitcond.i1 = icmp eq i32 %i1.0.i1, 9, !dbg !129 ; [#uses=1 type=i1] [debug line = 79:16@192:13]
  br i1 %exitcond.i1, label %12, label %11, !dbg !129 ; [debug line = 79:16@192:13]

; <label>:11                                      ; preds = %.preheader.i27
  %rbegin3.i1 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) nounwind, !dbg !144 ; [#uses=1 type=i32] [debug line = 79:31@192:13]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !146 ; [debug line = 80:1@192:13]
  %tmp.96 = sext i32 %i1.0.i1 to i64, !dbg !147   ; [#uses=2 type=i64] [debug line = 81:2@192:13]
  %x_weightA.addr.1 = getelementptr inbounds [9 x i32]* %x_weightA, i64 0, i64 %tmp.96, !dbg !147 ; [#uses=1 type=i32*] [debug line = 81:2@192:13]
  %x_weightA.load = load i32* %x_weightA.addr.1, align 4, !dbg !147 ; [#uses=2 type=i32] [debug line = 81:2@192:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %x_weightA.load) nounwind
  %x_weight = add nsw i32 %x_weightA.load, %x_weight.0.i1, !dbg !147 ; [#uses=1 type=i32] [debug line = 81:2@192:13]
  call void @llvm.dbg.value(metadata !{i32 %x_weight}, i64 0, metadata !148) nounwind, !dbg !147 ; [debug line = 81:2@192:13] [debug variable = x_weight]
  %y_weightA.addr.1 = getelementptr inbounds [9 x i32]* %y_weightA, i64 0, i64 %tmp.96, !dbg !149 ; [#uses=1 type=i32*] [debug line = 82:3@192:13]
  %y_weightA.load = load i32* %y_weightA.addr.1, align 4, !dbg !149 ; [#uses=2 type=i32] [debug line = 82:3@192:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %y_weightA.load) nounwind
  %y_weight = add nsw i32 %y_weightA.load, %y_weight.0.i1, !dbg !149 ; [#uses=1 type=i32] [debug line = 82:3@192:13]
  call void @llvm.dbg.value(metadata !{i32 %y_weight}, i64 0, metadata !150) nounwind, !dbg !149 ; [debug line = 82:3@192:13] [debug variable = y_weight]
  %rend4.i29 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0), i32 %rbegin3.i1) nounwind, !dbg !151 ; [#uses=0 type=i32] [debug line = 83:2@192:13]
  %i.3 = add nsw i32 %i1.0.i1, 1, !dbg !152       ; [#uses=1 type=i32] [debug line = 79:25@192:13]
  call void @llvm.dbg.value(metadata !{i32 %i.3}, i64 0, metadata !153) nounwind, !dbg !152 ; [debug line = 79:25@192:13] [debug variable = i]
  br label %.preheader.i27, !dbg !152             ; [debug line = 79:25@192:13]

; <label>:12                                      ; preds = %.preheader.i27
  %y_weight.0.i24.lcssa = phi i32 [ %y_weight.0.i1, %.preheader.i27 ] ; [#uses=3 type=i32]
  %x_weight.0.i23.lcssa = phi i32 [ %x_weight.0.i1, %.preheader.i27 ] ; [#uses=3 type=i32]
  %tmp.87 = icmp sgt i32 %x_weight.0.i23.lcssa, 0, !dbg !154 ; [#uses=1 type=i1] [debug line = 85:2@192:13]
  %tmp.88 = sub nsw i32 0, %x_weight.0.i23.lcssa, !dbg !154 ; [#uses=1 type=i32] [debug line = 85:2@192:13]
  %tmp.89 = select i1 %tmp.87, i32 %x_weight.0.i23.lcssa, i32 %tmp.88, !dbg !154 ; [#uses=1 type=i32] [debug line = 85:2@192:13]
  %tmp.90 = icmp sgt i32 %y_weight.0.i24.lcssa, 0, !dbg !154 ; [#uses=1 type=i1] [debug line = 85:2@192:13]
  %tmp.91 = sub nsw i32 0, %y_weight.0.i24.lcssa, !dbg !154 ; [#uses=1 type=i32] [debug line = 85:2@192:13]
  %tmp.92 = select i1 %tmp.90, i32 %y_weight.0.i24.lcssa, i32 %tmp.91, !dbg !154 ; [#uses=1 type=i32] [debug line = 85:2@192:13]
  %edge_weight = add nsw i32 %tmp.89, %tmp.92, !dbg !154 ; [#uses=1 type=i32] [debug line = 85:2@192:13]
  call void @llvm.dbg.value(metadata !{i32 %edge_weight}, i64 0, metadata !155) nounwind, !dbg !154 ; [debug line = 85:2@192:13] [debug variable = edge_weight]
  %tmp.93 = trunc i32 %edge_weight to i8, !dbg !156 ; [#uses=3 type=i8] [debug line = 87:2@192:13]
  %edge_val = xor i8 %tmp.93, -1, !dbg !156       ; [#uses=1 type=i8] [debug line = 87:2@192:13]
  call void @llvm.dbg.value(metadata !{i8 %edge_val}, i64 0, metadata !157) nounwind, !dbg !156 ; [debug line = 87:2@192:13] [debug variable = edge_val]
  %tmp.95 = icmp ult i8 %tmp.93, 55, !dbg !158    ; [#uses=1 type=i1] [debug line = 90:2@192:13]
  br i1 %tmp.95, label %._crit_edge, label %13, !dbg !158 ; [debug line = 90:2@192:13]

; <label>:13                                      ; preds = %12
  %tmp.114 = icmp ugt i8 %tmp.93, -101, !dbg !159 ; [#uses=1 type=i1] [debug line = 92:7@192:13]
  %..i1 = select i1 %tmp.114, i8 0, i8 %edge_val, !dbg !159 ; [#uses=1 type=i8] [debug line = 92:7@192:13]
  br label %._crit_edge

._crit_edge:                                      ; preds = %13, %12, %switch.early.test, %switch.early.test, %4
  %val = phi i8 [ 0, %4 ], [ 0, %switch.early.test ], [ 0, %switch.early.test ], [ %..i1, %13 ], [ -1, %12 ] ; [#uses=1 type=i8]
  br label %14, !dbg !160                         ; [debug line = 194:19]

; <label>:14                                      ; preds = %15, %._crit_edge
  %j1 = phi i32 [ 0, %._crit_edge ], [ %j.4, %15 ] ; [#uses=3 type=i32]
  %exitcond1 = icmp eq i32 %j1, 4, !dbg !160      ; [#uses=1 type=i1] [debug line = 194:19]
  br i1 %exitcond1, label %16, label %15, !dbg !160 ; [debug line = 194:19]

; <label>:15                                      ; preds = %14
  %tmp.147 = sext i32 %j1 to i64, !dbg !87        ; [#uses=1 type=i64] [debug line = 195:6]
  %tmp.addr = getelementptr inbounds [4 x i8]* %tmp, i64 0, i64 %tmp.147, !dbg !87 ; [#uses=1 type=i8*] [debug line = 195:6]
  store i8 %val, i8* %tmp.addr, align 1, !dbg !87 ; [debug line = 195:6]
  %j.4 = add nsw i32 %j1, 1, !dbg !161            ; [#uses=1 type=i32] [debug line = 194:28]
  call void @llvm.dbg.value(metadata !{i32 %j.4}, i64 0, metadata !162), !dbg !161 ; [debug line = 194:28] [debug variable = j]
  br label %14, !dbg !161                         ; [debug line = 194:28]

; <label>:16                                      ; preds = %14
  %fourWide.load = load i32* %fourWide.addr, align 4, !dbg !93 ; [#uses=1 type=i32] [debug line = 196:5]
  %tmp.143 = add i32 %tmp.2, -3840, !dbg !93      ; [#uses=1 type=i32] [debug line = 196:5]
  %tmp.144 = add i32 %tmp.143, %j, !dbg !93       ; [#uses=1 type=i32] [debug line = 196:5]
  %tmp.145 = zext i32 %tmp.144 to i64, !dbg !93   ; [#uses=1 type=i64] [debug line = 196:5]
  %out_pix.addr = getelementptr inbounds i32* %out_pix, i64 %tmp.145, !dbg !93 ; [#uses=1 type=i32*] [debug line = 196:5]
  store i32 %fourWide.load, i32* %out_pix.addr, align 4, !dbg !93 ; [debug line = 196:5]
  %rend10 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([13 x i8]* @.str10, i64 0, i64 0), i32 %rbegin9) nounwind, !dbg !163 ; [#uses=0 type=i32] [debug line = 199:5]
  %j.3 = add i32 %j, 1, !dbg !164                 ; [#uses=1 type=i32] [debug line = 172:53]
  call void @llvm.dbg.value(metadata !{i32 %j.3}, i64 0, metadata !165), !dbg !164 ; [debug line = 172:53] [debug variable = j]
  br label %3, !dbg !164                          ; [debug line = 172:53]

; <label>:17                                      ; preds = %3
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([14 x i8]* @.str9, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !166 ; [#uses=0 type=i32] [debug line = 200:4]
  call void @llvm.dbg.value(metadata !{i32 %i.1}, i64 0, metadata !167), !dbg !168 ; [debug line = 171:52] [debug variable = i]
  br label %1, !dbg !168                          ; [debug line = 171:52]

.preheader:                                       ; preds = %33, %.preheader.preheader
  %i2 = phi i32 [ %i.2, %33 ], [ 0, %.preheader.preheader ] ; [#uses=6 type=i32]
  %tmp.18 = icmp eq i32 %i2, 3, !dbg !104         ; [#uses=1 type=i1] [debug line = 202:36]
  br i1 %tmp.18, label %34, label %18, !dbg !104  ; [debug line = 202:36]

; <label>:18                                      ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([10 x i8]* @.str11, i64 0, i64 0)) nounwind, !dbg !169 ; [debug line = 202:51]
  %rbegin1 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([10 x i8]* @.str11, i64 0, i64 0)) nounwind, !dbg !169 ; [#uses=1 type=i32] [debug line = 202:51]
  %tmp.20 = icmp eq i32 %i2, 1081, !dbg !171      ; [#uses=1 type=i1] [debug line = 205:2]
  %tmp.21 = mul i32 %i2, 1920, !dbg !174          ; [#uses=1 type=i32] [debug line = 223:4]
  %i.2 = add i32 %i2, 1, !dbg !175                ; [#uses=2 type=i32] [debug line = 209:5]
  %tmp.23 = and i32 %i.2, 3, !dbg !175            ; [#uses=1 type=i32] [debug line = 209:5]
  %tmp.24 = mul i32 %tmp.23, 1920, !dbg !175      ; [#uses=3 type=i32] [debug line = 209:5]
  %tmp.25 = or i32 %tmp.24, 1, !dbg !177          ; [#uses=1 type=i32] [debug line = 211:5]
  %tmp.26 = add i32 %i2, 2, !dbg !178             ; [#uses=1 type=i32] [debug line = 212:5]
  %tmp.27 = and i32 %tmp.26, 3, !dbg !178         ; [#uses=1 type=i32] [debug line = 212:5]
  %tmp.28 = mul i32 %tmp.27, 1920, !dbg !178      ; [#uses=3 type=i32] [debug line = 212:5]
  %tmp.29 = or i32 %tmp.28, 1, !dbg !179          ; [#uses=1 type=i32] [debug line = 214:5]
  %tmp.30 = add i32 %i2, 3, !dbg !180             ; [#uses=1 type=i32] [debug line = 215:5]
  %tmp.31 = and i32 %tmp.30, 3, !dbg !180         ; [#uses=1 type=i32] [debug line = 215:5]
  %tmp.32 = mul i32 %tmp.31, 1920, !dbg !180      ; [#uses=3 type=i32] [debug line = 215:5]
  %tmp.33 = or i32 %tmp.32, 1, !dbg !181          ; [#uses=1 type=i32] [debug line = 217:5]
  br label %19, !dbg !182                         ; [debug line = 203:38]

; <label>:19                                      ; preds = %32, %18
  %j3 = phi i32 [ 0, %18 ], [ %j.5, %32 ]         ; [#uses=13 type=i32]
  %tmp.38 = icmp eq i32 %j3, 1920, !dbg !182      ; [#uses=1 type=i1] [debug line = 203:38]
  br i1 %tmp.38, label %33, label %20, !dbg !182  ; [debug line = 203:38]

; <label>:20                                      ; preds = %19
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([11 x i8]* @.str12, i64 0, i64 0)) nounwind, !dbg !183 ; [debug line = 203:56]
  %rbegin2 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([11 x i8]* @.str12, i64 0, i64 0)) nounwind, !dbg !183 ; [#uses=1 type=i32] [debug line = 203:56]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !184 ; [debug line = 204:1]
  br i1 %tmp.20, label %._crit_edge7, label %switch.early.test5

switch.early.test5:                               ; preds = %20
  switch i32 %j3, label %21 [
    i32 1919, label %._crit_edge7
    i32 0, label %._crit_edge7
  ], !dbg !171                                    ; [debug line = 205:2]

; <label>:21                                      ; preds = %switch.early.test5
  %tmp.60 = add i32 %tmp.24, -1, !dbg !175        ; [#uses=1 type=i32] [debug line = 209:5]
  %tmp.61 = add i32 %tmp.60, %j3, !dbg !175       ; [#uses=1 type=i32] [debug line = 209:5]
  %tmp.62 = zext i32 %tmp.61 to i64, !dbg !175    ; [#uses=1 type=i64] [debug line = 209:5]
  %cache1.addr.10 = getelementptr inbounds [7680 x i8]* %cache1, i64 0, i64 %tmp.62, !dbg !175 ; [#uses=1 type=i8*] [debug line = 209:5]
  %cache1.load.9 = load i8* %cache1.addr.10, align 1, !dbg !175 ; [#uses=2 type=i8] [debug line = 209:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %cache1.load.9) nounwind
  store i8 %cache1.load.9, i8* %image.assign, align 1, !dbg !175 ; [debug line = 209:5]
  %tmp.63 = add i32 %j3, %tmp.24, !dbg !185       ; [#uses=1 type=i32] [debug line = 210:5]
  %tmp.64 = zext i32 %tmp.63 to i64, !dbg !185    ; [#uses=1 type=i64] [debug line = 210:5]
  %cache1.addr.11 = getelementptr inbounds [7680 x i8]* %cache1, i64 0, i64 %tmp.64, !dbg !185 ; [#uses=1 type=i8*] [debug line = 210:5]
  %cache1.load.10 = load i8* %cache1.addr.11, align 1, !dbg !185 ; [#uses=2 type=i8] [debug line = 210:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %cache1.load.10) nounwind
  store i8 %cache1.load.10, i8* %surroundingPix.addr.1, align 1, !dbg !185 ; [debug line = 210:5]
  %tmp.65 = add i32 %j3, %tmp.25, !dbg !177       ; [#uses=1 type=i32] [debug line = 211:5]
  %tmp.66 = zext i32 %tmp.65 to i64, !dbg !177    ; [#uses=1 type=i64] [debug line = 211:5]
  %cache1.addr.12 = getelementptr inbounds [7680 x i8]* %cache1, i64 0, i64 %tmp.66, !dbg !177 ; [#uses=1 type=i8*] [debug line = 211:5]
  %cache1.load.11 = load i8* %cache1.addr.12, align 1, !dbg !177 ; [#uses=2 type=i8] [debug line = 211:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %cache1.load.11) nounwind
  store i8 %cache1.load.11, i8* %surroundingPix.addr.2, align 1, !dbg !177 ; [debug line = 211:5]
  %tmp.67 = add i32 %tmp.28, -1, !dbg !178        ; [#uses=1 type=i32] [debug line = 212:5]
  %tmp.68 = add i32 %tmp.67, %j3, !dbg !178       ; [#uses=1 type=i32] [debug line = 212:5]
  %tmp.69 = zext i32 %tmp.68 to i64, !dbg !178    ; [#uses=1 type=i64] [debug line = 212:5]
  %cache1.addr.13 = getelementptr inbounds [7680 x i8]* %cache1, i64 0, i64 %tmp.69, !dbg !178 ; [#uses=1 type=i8*] [debug line = 212:5]
  %cache1.load.12 = load i8* %cache1.addr.13, align 1, !dbg !178 ; [#uses=2 type=i8] [debug line = 212:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %cache1.load.12) nounwind
  store i8 %cache1.load.12, i8* %surroundingPix.addr.3, align 1, !dbg !178 ; [debug line = 212:5]
  %tmp.70 = add i32 %j3, %tmp.28, !dbg !186       ; [#uses=1 type=i32] [debug line = 213:5]
  %tmp.71 = zext i32 %tmp.70 to i64, !dbg !186    ; [#uses=1 type=i64] [debug line = 213:5]
  %cache1.addr.14 = getelementptr inbounds [7680 x i8]* %cache1, i64 0, i64 %tmp.71, !dbg !186 ; [#uses=1 type=i8*] [debug line = 213:5]
  %cache1.load.13 = load i8* %cache1.addr.14, align 1, !dbg !186 ; [#uses=2 type=i8] [debug line = 213:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %cache1.load.13) nounwind
  store i8 %cache1.load.13, i8* %surroundingPix.addr.4, align 1, !dbg !186 ; [debug line = 213:5]
  %tmp.72 = add i32 %j3, %tmp.29, !dbg !179       ; [#uses=1 type=i32] [debug line = 214:5]
  %tmp.73 = zext i32 %tmp.72 to i64, !dbg !179    ; [#uses=1 type=i64] [debug line = 214:5]
  %cache1.addr.15 = getelementptr inbounds [7680 x i8]* %cache1, i64 0, i64 %tmp.73, !dbg !179 ; [#uses=1 type=i8*] [debug line = 214:5]
  %cache1.load.14 = load i8* %cache1.addr.15, align 1, !dbg !179 ; [#uses=2 type=i8] [debug line = 214:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %cache1.load.14) nounwind
  store i8 %cache1.load.14, i8* %surroundingPix.addr.5, align 1, !dbg !179 ; [debug line = 214:5]
  %tmp.74 = add i32 %tmp.32, -1, !dbg !180        ; [#uses=1 type=i32] [debug line = 215:5]
  %tmp.75 = add i32 %tmp.74, %j3, !dbg !180       ; [#uses=1 type=i32] [debug line = 215:5]
  %tmp.76 = zext i32 %tmp.75 to i64, !dbg !180    ; [#uses=1 type=i64] [debug line = 215:5]
  %cache1.addr.16 = getelementptr inbounds [7680 x i8]* %cache1, i64 0, i64 %tmp.76, !dbg !180 ; [#uses=1 type=i8*] [debug line = 215:5]
  %cache1.load.15 = load i8* %cache1.addr.16, align 1, !dbg !180 ; [#uses=2 type=i8] [debug line = 215:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %cache1.load.15) nounwind
  store i8 %cache1.load.15, i8* %surroundingPix.addr.6, align 1, !dbg !180 ; [debug line = 215:5]
  %tmp.77 = add i32 %j3, %tmp.32, !dbg !187       ; [#uses=1 type=i32] [debug line = 216:5]
  %tmp.78 = zext i32 %tmp.77 to i64, !dbg !187    ; [#uses=1 type=i64] [debug line = 216:5]
  %cache1.addr.17 = getelementptr inbounds [7680 x i8]* %cache1, i64 0, i64 %tmp.78, !dbg !187 ; [#uses=1 type=i8*] [debug line = 216:5]
  %cache1.load.16 = load i8* %cache1.addr.17, align 1, !dbg !187 ; [#uses=2 type=i8] [debug line = 216:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %cache1.load.16) nounwind
  store i8 %cache1.load.16, i8* %surroundingPix.addr.7, align 1, !dbg !187 ; [debug line = 216:5]
  %tmp.79 = add i32 %j3, %tmp.33, !dbg !181       ; [#uses=1 type=i32] [debug line = 217:5]
  %tmp.80 = zext i32 %tmp.79 to i64, !dbg !181    ; [#uses=1 type=i64] [debug line = 217:5]
  %cache1.addr.18 = getelementptr inbounds [7680 x i8]* %cache1, i64 0, i64 %tmp.80, !dbg !181 ; [#uses=1 type=i8*] [debug line = 217:5]
  %cache1.load.17 = load i8* %cache1.addr.18, align 1, !dbg !181 ; [#uses=2 type=i8] [debug line = 217:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %cache1.load.17) nounwind
  store i8 %cache1.load.17, i8* %surroundingPix.addr.8, align 1, !dbg !181 ; [debug line = 217:5]
  call void @llvm.dbg.value(metadata !{i8* %image.assign}, i64 0, metadata !188) nounwind, !dbg !190 ; [debug line = 30:55@219:11] [debug variable = image]
  call void @llvm.dbg.declare(metadata !{[9 x i32]* %x_weightA.1}, metadata !117) nounwind, !dbg !191 ; [debug line = 46:6@219:11] [debug variable = x_weightA]
  %x_weightA.1.addr = getelementptr inbounds [9 x i32]* %x_weightA.1, i64 0, i64 0, !dbg !192 ; [#uses=1 type=i32*] [debug line = 47:1@219:11]
  call void (...)* @_ssdm_SpecArrayPartition(i32* %x_weightA.1.addr, i32 1, i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !192 ; [debug line = 47:1@219:11]
  call void @llvm.dbg.declare(metadata !{[9 x i32]* %y_weightA.1}, metadata !122) nounwind, !dbg !193 ; [debug line = 48:6@219:11] [debug variable = y_weightA]
  %y_weightA.1.addr = getelementptr inbounds [9 x i32]* %y_weightA.1, i64 0, i64 0, !dbg !194 ; [#uses=1 type=i32*] [debug line = 49:1@219:11]
  call void (...)* @_ssdm_SpecArrayPartition(i32* %y_weightA.1.addr, i32 1, i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !194 ; [debug line = 49:1@219:11]
  call void (...)* @_ssdm_SpecArrayPartition([3 x i8]* getelementptr inbounds ([3 x [3 x i8]]* @x_op, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !195 ; [debug line = 57:1@219:11]
  call void (...)* @_ssdm_SpecArrayPartition([3 x i8]* getelementptr inbounds ([3 x [3 x i8]]* @y_op, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !196 ; [debug line = 62:1@219:11]
  br label %22, !dbg !197                         ; [debug line = 66:16@219:11]

; <label>:22                                      ; preds = %26, %21
  %i.0.i = phi i32 [ 0, %21 ], [ %i.6, %26 ]      ; [#uses=5 type=i32]
  %exitcond2.i = icmp eq i32 %i.0.i, 3, !dbg !197 ; [#uses=1 type=i1] [debug line = 66:16@219:11]
  br i1 %exitcond2.i, label %.preheader.i.preheader, label %23, !dbg !197 ; [debug line = 66:16@219:11]

.preheader.i.preheader:                           ; preds = %22
  br label %.preheader.i, !dbg !198               ; [debug line = 79:16@219:11]

; <label>:23                                      ; preds = %22
  %rbegin.i = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str2, i64 0, i64 0)) nounwind, !dbg !199 ; [#uses=1 type=i32] [debug line = 66:31@219:11]
  call void (...)* @_ssdm_Unroll(i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !200 ; [debug line = 67:1@219:11]
  %tmp.84 = add nsw i32 %i.0.i, -1, !dbg !201     ; [#uses=2 type=i32] [debug line = 70:25@219:11]
  %tmp.85 = sext i32 %i.0.i to i64, !dbg !201     ; [#uses=2 type=i64] [debug line = 70:25@219:11]
  %tmp.86 = mul i32 %i.0.i, 2, !dbg !201          ; [#uses=1 type=i32] [debug line = 70:25@219:11]
  br label %24, !dbg !202                         ; [debug line = 68:16@219:11]

; <label>:24                                      ; preds = %25, %23
  %j.0.i = phi i32 [ 0, %23 ], [ %j.2, %25 ]      ; [#uses=5 type=i32]
  %exitcond1.i = icmp eq i32 %j.0.i, 3, !dbg !202 ; [#uses=1 type=i1] [debug line = 68:16@219:11]
  br i1 %exitcond1.i, label %26, label %25, !dbg !202 ; [debug line = 68:16@219:11]

; <label>:25                                      ; preds = %24
  %tmp.129 = add nsw i32 %j.0.i, -1, !dbg !201    ; [#uses=2 type=i32] [debug line = 70:25@219:11]
  %tmp.130 = call fastcc zeroext i8 @getVal(i32 %tmp.84, i32 %tmp.129, i8* %image.assign) nounwind, !dbg !201 ; [#uses=1 type=i8] [debug line = 70:25@219:11]
  %tmp.131 = zext i8 %tmp.130 to i32, !dbg !201   ; [#uses=1 type=i32] [debug line = 70:25@219:11]
  %tmp.132 = sext i32 %j.0.i to i64, !dbg !201    ; [#uses=2 type=i64] [debug line = 70:25@219:11]
  %x_op.addr.1 = getelementptr inbounds [3 x [3 x i8]]* @x_op, i64 0, i64 %tmp.85, i64 %tmp.132, !dbg !201 ; [#uses=1 type=i8*] [debug line = 70:25@219:11]
  %x_op.load.1 = load i8* %x_op.addr.1, align 1, !dbg !201 ; [#uses=2 type=i8] [debug line = 70:25@219:11]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %x_op.load.1) nounwind
  %tmp.133 = sext i8 %x_op.load.1 to i32, !dbg !201 ; [#uses=1 type=i32] [debug line = 70:25@219:11]
  %tmp.134 = mul nsw i32 %tmp.133, %tmp.131, !dbg !201 ; [#uses=1 type=i32] [debug line = 70:25@219:11]
  %tmp.135 = add nsw i32 %j.0.i, %tmp.86, !dbg !201 ; [#uses=1 type=i32] [debug line = 70:25@219:11]
  %tmp.136 = sext i32 %tmp.135 to i64, !dbg !201  ; [#uses=2 type=i64] [debug line = 70:25@219:11]
  %x_weightA.1.addr.2 = getelementptr inbounds [9 x i32]* %x_weightA.1, i64 0, i64 %tmp.136, !dbg !201 ; [#uses=1 type=i32*] [debug line = 70:25@219:11]
  store i32 %tmp.134, i32* %x_weightA.1.addr.2, align 4, !dbg !201 ; [debug line = 70:25@219:11]
  %tmp.137 = call fastcc zeroext i8 @getVal(i32 %tmp.84, i32 %tmp.129, i8* %image.assign) nounwind, !dbg !203 ; [#uses=1 type=i8] [debug line = 73:25@219:11]
  %tmp.138 = zext i8 %tmp.137 to i32, !dbg !203   ; [#uses=1 type=i32] [debug line = 73:25@219:11]
  %y_op.addr.1 = getelementptr inbounds [3 x [3 x i8]]* @y_op, i64 0, i64 %tmp.85, i64 %tmp.132, !dbg !203 ; [#uses=1 type=i8*] [debug line = 73:25@219:11]
  %y_op.load.1 = load i8* %y_op.addr.1, align 1, !dbg !203 ; [#uses=2 type=i8] [debug line = 73:25@219:11]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %y_op.load.1) nounwind
  %tmp.139 = sext i8 %y_op.load.1 to i32, !dbg !203 ; [#uses=1 type=i32] [debug line = 73:25@219:11]
  %tmp.140 = mul nsw i32 %tmp.139, %tmp.138, !dbg !203 ; [#uses=1 type=i32] [debug line = 73:25@219:11]
  %y_weightA.1.addr.2 = getelementptr inbounds [9 x i32]* %y_weightA.1, i64 0, i64 %tmp.136, !dbg !203 ; [#uses=1 type=i32*] [debug line = 73:25@219:11]
  store i32 %tmp.140, i32* %y_weightA.1.addr.2, align 4, !dbg !203 ; [debug line = 73:25@219:11]
  %j.2 = add nsw i32 %j.0.i, 1, !dbg !204         ; [#uses=1 type=i32] [debug line = 68:25@219:11]
  call void @llvm.dbg.value(metadata !{i32 %j.2}, i64 0, metadata !205) nounwind, !dbg !204 ; [debug line = 68:25@219:11] [debug variable = j]
  br label %24, !dbg !204                         ; [debug line = 68:25@219:11]

; <label>:26                                      ; preds = %24
  %rend.i = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str2, i64 0, i64 0), i32 %rbegin.i) nounwind, !dbg !206 ; [#uses=0 type=i32] [debug line = 75:2@219:11]
  %i.6 = add nsw i32 %i.0.i, 1, !dbg !207         ; [#uses=1 type=i32] [debug line = 66:25@219:11]
  call void @llvm.dbg.value(metadata !{i32 %i.6}, i64 0, metadata !208) nounwind, !dbg !207 ; [debug line = 66:25@219:11] [debug variable = i]
  br label %22, !dbg !207                         ; [debug line = 66:25@219:11]

.preheader.i:                                     ; preds = %27, %.preheader.i.preheader
  %x_weight.0.i = phi i32 [ %x_weight.1, %27 ], [ 0, %.preheader.i.preheader ] ; [#uses=2 type=i32]
  %y_weight.0.i = phi i32 [ %y_weight.1, %27 ], [ 0, %.preheader.i.preheader ] ; [#uses=2 type=i32]
  %i1.0.i = phi i32 [ %i.5, %27 ], [ 0, %.preheader.i.preheader ] ; [#uses=3 type=i32]
  %exitcond.i = icmp eq i32 %i1.0.i, 9, !dbg !198 ; [#uses=1 type=i1] [debug line = 79:16@219:11]
  br i1 %exitcond.i, label %28, label %27, !dbg !198 ; [debug line = 79:16@219:11]

; <label>:27                                      ; preds = %.preheader.i
  %rbegin3.i = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) nounwind, !dbg !209 ; [#uses=1 type=i32] [debug line = 79:31@219:11]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !210 ; [debug line = 80:1@219:11]
  %tmp.124 = sext i32 %i1.0.i to i64, !dbg !211   ; [#uses=2 type=i64] [debug line = 81:2@219:11]
  %x_weightA.1.addr.1 = getelementptr inbounds [9 x i32]* %x_weightA.1, i64 0, i64 %tmp.124, !dbg !211 ; [#uses=1 type=i32*] [debug line = 81:2@219:11]
  %x_weightA.1.load = load i32* %x_weightA.1.addr.1, align 4, !dbg !211 ; [#uses=2 type=i32] [debug line = 81:2@219:11]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %x_weightA.1.load) nounwind
  %x_weight.1 = add nsw i32 %x_weightA.1.load, %x_weight.0.i, !dbg !211 ; [#uses=1 type=i32] [debug line = 81:2@219:11]
  call void @llvm.dbg.value(metadata !{i32 %x_weight.1}, i64 0, metadata !212) nounwind, !dbg !211 ; [debug line = 81:2@219:11] [debug variable = x_weight]
  %y_weightA.1.addr.1 = getelementptr inbounds [9 x i32]* %y_weightA.1, i64 0, i64 %tmp.124, !dbg !213 ; [#uses=1 type=i32*] [debug line = 82:3@219:11]
  %y_weightA.1.load = load i32* %y_weightA.1.addr.1, align 4, !dbg !213 ; [#uses=2 type=i32] [debug line = 82:3@219:11]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %y_weightA.1.load) nounwind
  %y_weight.1 = add nsw i32 %y_weightA.1.load, %y_weight.0.i, !dbg !213 ; [#uses=1 type=i32] [debug line = 82:3@219:11]
  call void @llvm.dbg.value(metadata !{i32 %y_weight.1}, i64 0, metadata !214) nounwind, !dbg !213 ; [debug line = 82:3@219:11] [debug variable = y_weight]
  %rend4.i = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0), i32 %rbegin3.i) nounwind, !dbg !215 ; [#uses=0 type=i32] [debug line = 83:2@219:11]
  %i.5 = add nsw i32 %i1.0.i, 1, !dbg !216        ; [#uses=1 type=i32] [debug line = 79:25@219:11]
  call void @llvm.dbg.value(metadata !{i32 %i.5}, i64 0, metadata !217) nounwind, !dbg !216 ; [debug line = 79:25@219:11] [debug variable = i]
  br label %.preheader.i, !dbg !216               ; [debug line = 79:25@219:11]

; <label>:28                                      ; preds = %.preheader.i
  %y_weight.0.i.lcssa = phi i32 [ %y_weight.0.i, %.preheader.i ] ; [#uses=3 type=i32]
  %x_weight.0.i.lcssa = phi i32 [ %x_weight.0.i, %.preheader.i ] ; [#uses=3 type=i32]
  %tmp.115 = icmp sgt i32 %x_weight.0.i.lcssa, 0, !dbg !218 ; [#uses=1 type=i1] [debug line = 85:2@219:11]
  %tmp.116 = sub nsw i32 0, %x_weight.0.i.lcssa, !dbg !218 ; [#uses=1 type=i32] [debug line = 85:2@219:11]
  %tmp.117 = select i1 %tmp.115, i32 %x_weight.0.i.lcssa, i32 %tmp.116, !dbg !218 ; [#uses=1 type=i32] [debug line = 85:2@219:11]
  %tmp.118 = icmp sgt i32 %y_weight.0.i.lcssa, 0, !dbg !218 ; [#uses=1 type=i1] [debug line = 85:2@219:11]
  %tmp.119 = sub nsw i32 0, %y_weight.0.i.lcssa, !dbg !218 ; [#uses=1 type=i32] [debug line = 85:2@219:11]
  %tmp.120 = select i1 %tmp.118, i32 %y_weight.0.i.lcssa, i32 %tmp.119, !dbg !218 ; [#uses=1 type=i32] [debug line = 85:2@219:11]
  %edge_weight.1 = add nsw i32 %tmp.117, %tmp.120, !dbg !218 ; [#uses=1 type=i32] [debug line = 85:2@219:11]
  call void @llvm.dbg.value(metadata !{i32 %edge_weight.1}, i64 0, metadata !219) nounwind, !dbg !218 ; [debug line = 85:2@219:11] [debug variable = edge_weight]
  %tmp.121 = trunc i32 %edge_weight.1 to i8, !dbg !220 ; [#uses=3 type=i8] [debug line = 87:2@219:11]
  %edge_val.1 = xor i8 %tmp.121, -1, !dbg !220    ; [#uses=1 type=i8] [debug line = 87:2@219:11]
  call void @llvm.dbg.value(metadata !{i8 %edge_val.1}, i64 0, metadata !221) nounwind, !dbg !220 ; [debug line = 87:2@219:11] [debug variable = edge_val]
  %tmp.123 = icmp ult i8 %tmp.121, 55, !dbg !222  ; [#uses=1 type=i1] [debug line = 90:2@219:11]
  br i1 %tmp.123, label %._crit_edge7, label %29, !dbg !222 ; [debug line = 90:2@219:11]

; <label>:29                                      ; preds = %28
  %tmp.142 = icmp ugt i8 %tmp.121, -101, !dbg !223 ; [#uses=1 type=i1] [debug line = 92:7@219:11]
  %..i = select i1 %tmp.142, i8 0, i8 %edge_val.1, !dbg !223 ; [#uses=1 type=i8] [debug line = 92:7@219:11]
  br label %._crit_edge7

._crit_edge7:                                     ; preds = %29, %28, %switch.early.test5, %switch.early.test5, %20
  %val.1 = phi i8 [ 0, %20 ], [ 0, %switch.early.test5 ], [ 0, %switch.early.test5 ], [ %..i, %29 ], [ -1, %28 ] ; [#uses=1 type=i8]
  br label %30, !dbg !224                         ; [debug line = 221:18]

; <label>:30                                      ; preds = %31, %._crit_edge7
  %j4 = phi i32 [ 0, %._crit_edge7 ], [ %j.6, %31 ] ; [#uses=3 type=i32]
  %exitcond = icmp eq i32 %j4, 4, !dbg !224       ; [#uses=1 type=i1] [debug line = 221:18]
  br i1 %exitcond, label %32, label %31, !dbg !224 ; [debug line = 221:18]

; <label>:31                                      ; preds = %30
  %tmp.153 = sext i32 %j4 to i64, !dbg !226       ; [#uses=1 type=i64] [debug line = 222:5]
  %tmp.addr.1 = getelementptr inbounds [4 x i8]* %tmp, i64 0, i64 %tmp.153, !dbg !226 ; [#uses=1 type=i8*] [debug line = 222:5]
  store i8 %val.1, i8* %tmp.addr.1, align 1, !dbg !226 ; [debug line = 222:5]
  %j.6 = add nsw i32 %j4, 1, !dbg !227            ; [#uses=1 type=i32] [debug line = 221:27]
  call void @llvm.dbg.value(metadata !{i32 %j.6}, i64 0, metadata !228), !dbg !227 ; [debug line = 221:27] [debug variable = j]
  br label %30, !dbg !227                         ; [debug line = 221:27]

; <label>:32                                      ; preds = %30
  %fourWide.load.1 = load i32* %fourWide.addr, align 4, !dbg !174 ; [#uses=1 type=i32] [debug line = 223:4]
  %tmp.149 = add i32 %tmp.21, -3840, !dbg !174    ; [#uses=1 type=i32] [debug line = 223:4]
  %tmp.150 = add i32 %tmp.149, %j3, !dbg !174     ; [#uses=1 type=i32] [debug line = 223:4]
  %tmp.151 = zext i32 %tmp.150 to i64, !dbg !174  ; [#uses=1 type=i64] [debug line = 223:4]
  %out_pix.addr.1 = getelementptr inbounds i32* %out_pix, i64 %tmp.151, !dbg !174 ; [#uses=1 type=i32*] [debug line = 223:4]
  store i32 %fourWide.load.1, i32* %out_pix.addr.1, align 4, !dbg !174 ; [debug line = 223:4]
  %rend14 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([11 x i8]* @.str12, i64 0, i64 0), i32 %rbegin2) nounwind, !dbg !229 ; [#uses=0 type=i32] [debug line = 225:3]
  %j.5 = add i32 %j3, 1, !dbg !230                ; [#uses=1 type=i32] [debug line = 203:50]
  call void @llvm.dbg.value(metadata !{i32 %j.5}, i64 0, metadata !231), !dbg !230 ; [debug line = 203:50] [debug variable = j]
  br label %19, !dbg !230                         ; [debug line = 203:50]

; <label>:33                                      ; preds = %19
  %rend12 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([10 x i8]* @.str11, i64 0, i64 0), i32 %rbegin1) nounwind, !dbg !232 ; [#uses=0 type=i32] [debug line = 226:2]
  call void @llvm.dbg.value(metadata !{i32 %i.2}, i64 0, metadata !233), !dbg !234 ; [debug line = 202:45] [debug variable = i]
  br label %.preheader, !dbg !234                 ; [debug line = 202:45]

; <label>:34                                      ; preds = %.preheader
  ret void, !dbg !235                             ; [debug line = 229:1]
}

; [#uses=30]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=7]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=4]
define internal fastcc zeroext i8 @getVal(i32 %xDiff, i32 %yDiff, i8* %Y) nounwind uwtable inlinehint {
  call void @llvm.dbg.value(metadata !{i32 %xDiff}, i64 0, metadata !236), !dbg !237 ; [debug line = 11:45] [debug variable = xDiff]
  call void @llvm.dbg.value(metadata !{i32 %yDiff}, i64 0, metadata !238), !dbg !239 ; [debug line = 11:56] [debug variable = yDiff]
  call void @llvm.dbg.value(metadata !{i8* %Y}, i64 0, metadata !240), !dbg !241 ; [debug line = 11:88] [debug variable = Y]
  %tmp = mul nsw i32 %yDiff, 1920, !dbg !242      ; [#uses=1 type=i32] [debug line = 13:55]
  %tmp.155 = add i32 %xDiff, 4, !dbg !242         ; [#uses=1 type=i32] [debug line = 13:55]
  %fullIndex = add i32 %tmp.155, %tmp, !dbg !242  ; [#uses=5 type=i32] [debug line = 13:55]
  call void @llvm.dbg.value(metadata !{i32 %fullIndex}, i64 0, metadata !244), !dbg !242 ; [debug line = 13:55] [debug variable = fullIndex]
  %tmp.157 = icmp slt i32 %fullIndex, 0, !dbg !245 ; [#uses=1 type=i1] [debug line = 14:2]
  br i1 %tmp.157, label %1, label %2, !dbg !245   ; [debug line = 14:2]

; <label>:1                                       ; preds = %0
  %fullIndex.2 = add nsw i32 %fullIndex, 7680, !dbg !246 ; [#uses=1 type=i32] [debug line = 17:3]
  call void @llvm.dbg.value(metadata !{i32 %fullIndex.2}, i64 0, metadata !244), !dbg !246 ; [debug line = 17:3] [debug variable = fullIndex]
  br label %3, !dbg !248                          ; [debug line = 18:2]

; <label>:2                                       ; preds = %0
  %tmp.159 = icmp slt i32 %fullIndex, 7680, !dbg !249 ; [#uses=1 type=i1] [debug line = 19:7]
  %fullIndex.3 = add nsw i32 %fullIndex, -7680, !dbg !250 ; [#uses=1 type=i32] [debug line = 22:3]
  call void @llvm.dbg.value(metadata !{i32 %fullIndex.3}, i64 0, metadata !244), !dbg !250 ; [debug line = 22:3] [debug variable = fullIndex]
  %. = select i1 %tmp.159, i32 %fullIndex, i32 %fullIndex.3, !dbg !249 ; [#uses=1 type=i32] [debug line = 19:7]
  br label %3, !dbg !249                          ; [debug line = 19:7]

; <label>:3                                       ; preds = %2, %1
  %fullIndex.1 = phi i32 [ %fullIndex.2, %1 ], [ %., %2 ] ; [#uses=1 type=i32]
  %tmp.161 = sext i32 %fullIndex.1 to i64, !dbg !252 ; [#uses=1 type=i64] [debug line = 25:2]
  %Y.addr = getelementptr inbounds i8* %Y, i64 %tmp.161, !dbg !252 ; [#uses=1 type=i8*] [debug line = 25:2]
  %Y.load = load i8* %Y.addr, align 1, !dbg !252  ; [#uses=2 type=i8] [debug line = 25:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %Y.load) nounwind
  ret i8 %Y.load, !dbg !252                       ; [debug line = 25:2]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=8]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=8]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=4]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=4]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=3]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=2]
declare void @_ssdm_Unroll(...) nounwind

; [#uses=1]
declare void @_ssdm_SpecLoopFlatten(...) nounwind

; [#uses=28]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=9]
declare void @_ssdm_SpecArrayPartition(...) nounwind

; [#uses=2]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!34, !41, !46}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"/home/gabriel/Documents/INF3610/HDMI_3610/3610_4/1490679_1771119/sobellab4/solution1/.autopilot/db/Sobel.pragma.2.cpp", metadata !"/home/gabriel/Documents/INF3610/HDMI_3610/3610_4/1490679_1771119", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !25} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !17, metadata !22}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"sobel_operator", metadata !"sobel_operator", metadata !"_Z14sobel_operatoriPh", metadata !6, i32 30, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !15, i32 31} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"sobellab4/Sobel.cpp", metadata !"/home/gabriel/Documents/INF3610/HDMI_3610/3610_4/1490679_1771119", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{metadata !9, metadata !12, metadata !14}
!9 = metadata !{i32 786454, null, metadata !"uint8_t", metadata !6, i32 24, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ]
!10 = metadata !{i32 786454, null, metadata !"__uint8_t", metadata !6, i32 37, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ]
!11 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!12 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !13} ; [ DW_TAG_const_type ]
!13 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!14 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ]
!15 = metadata !{metadata !16}
!16 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!17 = metadata !{i32 786478, i32 0, metadata !6, metadata !"sobel_filter", metadata !"sobel_filter", metadata !"_Z12sobel_filterPhPj", metadata !6, i32 99, metadata !18, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i32*)* @sobel_filter, null, null, metadata !15, i32 100} ; [ DW_TAG_subprogram ]
!18 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !19, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!19 = metadata !{null, metadata !14, metadata !20}
!20 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !21} ; [ DW_TAG_pointer_type ]
!21 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!22 = metadata !{i32 786478, i32 0, metadata !6, metadata !"getVal", metadata !"getVal", metadata !"_ZL6getValiiiiPh", metadata !6, i32 11, metadata !23, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !15, i32 12} ; [ DW_TAG_subprogram ]
!23 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !24, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!24 = metadata !{metadata !9, metadata !13, metadata !13, metadata !13, metadata !13, metadata !14}
!25 = metadata !{metadata !26}
!26 = metadata !{metadata !27, metadata !33}
!27 = metadata !{i32 786484, i32 0, metadata !5, metadata !"x_op", metadata !"x_op", metadata !"", metadata !6, i32 54, metadata !28, i32 1, i32 1, [3 x [3 x i8]]* @x_op} ; [ DW_TAG_variable ]
!28 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 72, i64 8, i32 0, i32 0, metadata !29, metadata !31, i32 0, i32 0} ; [ DW_TAG_array_type ]
!29 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_const_type ]
!30 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!31 = metadata !{metadata !32, metadata !32}
!32 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ]
!33 = metadata !{i32 786484, i32 0, metadata !5, metadata !"y_op", metadata !"y_op", metadata !"", metadata !6, i32 59, metadata !28, i32 1, i32 1, [3 x [3 x i8]]* @y_op} ; [ DW_TAG_variable ]
!34 = metadata !{null, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40}
!35 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 1}
!36 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!37 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"uint8_t*"}
!38 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const", metadata !""}
!39 = metadata !{metadata !"kernel_arg_name", metadata !"fullIndex", metadata !"image"}
!40 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!41 = metadata !{void (i8*, i32*)* @sobel_filter, metadata !42, metadata !36, metadata !43, metadata !44, metadata !45, metadata !40}
!42 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!43 = metadata !{metadata !"kernel_arg_type", metadata !"uint8_t*", metadata !"uint*"}
!44 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!45 = metadata !{metadata !"kernel_arg_name", metadata !"inter_pix", metadata !"out_pix"}
!46 = metadata !{null, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !40}
!47 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 1}
!48 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!49 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"uint8_t*"}
!50 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!51 = metadata !{metadata !"kernel_arg_name", metadata !"index", metadata !"xDiff", metadata !"yDiff", metadata !"img_width", metadata !"Y"}
!52 = metadata !{i32 786689, metadata !17, metadata !"inter_pix", metadata !6, i32 16777315, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!53 = metadata !{i32 99, i32 27, metadata !17, null}
!54 = metadata !{i32 786689, metadata !17, metadata !"out_pix", metadata !6, i32 33554531, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!55 = metadata !{i32 99, i32 60, metadata !17, null}
!56 = metadata !{i32 100, i32 2, metadata !57, null}
!57 = metadata !{i32 786443, metadata !17, i32 100, i32 1, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!58 = metadata !{i32 100, i32 46, metadata !57, null}
!59 = metadata !{i32 101, i32 1, metadata !57, null}
!60 = metadata !{i32 102, i32 1, metadata !57, null}
!61 = metadata !{i32 103, i32 1, metadata !57, null}
!62 = metadata !{i32 786688, metadata !57, metadata !"cache1", metadata !6, i32 106, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!63 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 61440, i64 8, i32 0, i32 0, metadata !9, metadata !64, i32 0, i32 0} ; [ DW_TAG_array_type ]
!64 = metadata !{metadata !65}
!65 = metadata !{i32 786465, i64 0, i64 7679}     ; [ DW_TAG_subrange_type ]
!66 = metadata !{i32 106, i32 10, metadata !57, null}
!67 = metadata !{i32 786688, metadata !57, metadata !"fourWide", metadata !6, i32 108, metadata !68, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!68 = metadata !{i32 786454, null, metadata !"OneToFourPixels", metadata !6, i32 9, i64 0, i64 0, i64 0, i32 0, metadata !69} ; [ DW_TAG_typedef ]
!69 = metadata !{i32 786455, null, metadata !"", metadata !6, i32 6, i64 32, i64 32, i64 0, i32 0, null, metadata !70, i32 0, null} ; [ DW_TAG_union_type ]
!70 = metadata !{metadata !71, metadata !75, metadata !76}
!71 = metadata !{i32 786445, metadata !69, metadata !"pix", metadata !6, i32 7, i64 32, i64 8, i64 0, i32 0, metadata !72} ; [ DW_TAG_member ]
!72 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 32, i64 8, i32 0, i32 0, metadata !9, metadata !73, i32 0, i32 0} ; [ DW_TAG_array_type ]
!73 = metadata !{metadata !74}
!74 = metadata !{i32 786465, i64 0, i64 3}        ; [ DW_TAG_subrange_type ]
!75 = metadata !{i32 786445, metadata !69, metadata !"full", metadata !6, i32 8, i64 32, i64 32, i64 0, i32 0, metadata !21} ; [ DW_TAG_member ]
!76 = metadata !{i32 786478, i32 0, metadata !69, metadata !"", metadata !"", metadata !"", metadata !6, i32 6, metadata !77, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !15, i32 6} ; [ DW_TAG_subprogram ]
!77 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !78, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!78 = metadata !{null, metadata !79}
!79 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !69} ; [ DW_TAG_pointer_type ]
!80 = metadata !{i32 108, i32 18, metadata !57, null}
!81 = metadata !{i32 786688, metadata !57, metadata !"surroundingPix", metadata !6, i32 109, metadata !82, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!82 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 72, i64 8, i32 0, i32 0, metadata !9, metadata !83, i32 0, i32 0} ; [ DW_TAG_array_type ]
!83 = metadata !{metadata !84}
!84 = metadata !{i32 786465, i64 0, i64 8}        ; [ DW_TAG_subrange_type ]
!85 = metadata !{i32 109, i32 10, metadata !57, null}
!86 = metadata !{i32 110, i32 1, metadata !57, null}
!87 = metadata !{i32 195, i32 6, metadata !88, null}
!88 = metadata !{i32 786443, metadata !89, i32 194, i32 5, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!89 = metadata !{i32 786443, metadata !90, i32 172, i32 58, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!90 = metadata !{i32 786443, metadata !91, i32 172, i32 18, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!91 = metadata !{i32 786443, metadata !92, i32 171, i32 57, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!92 = metadata !{i32 786443, metadata !57, i32 171, i32 17, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!93 = metadata !{i32 196, i32 5, metadata !89, null}
!94 = metadata !{i32 183, i32 7, metadata !95, null}
!95 = metadata !{i32 786443, metadata !89, i32 181, i32 10, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!96 = metadata !{i32 184, i32 7, metadata !95, null}
!97 = metadata !{i32 185, i32 7, metadata !95, null}
!98 = metadata !{i32 186, i32 7, metadata !95, null}
!99 = metadata !{i32 187, i32 7, metadata !95, null}
!100 = metadata !{i32 188, i32 7, metadata !95, null}
!101 = metadata !{i32 189, i32 7, metadata !95, null}
!102 = metadata !{i32 190, i32 7, metadata !95, null}
!103 = metadata !{i32 171, i32 40, metadata !92, null}
!104 = metadata !{i32 202, i32 36, metadata !105, null}
!105 = metadata !{i32 786443, metadata !57, i32 202, i32 13, metadata !6, i32 15} ; [ DW_TAG_lexical_block ]
!106 = metadata !{i32 171, i32 58, metadata !91, null}
!107 = metadata !{i32 175, i32 2, metadata !89, null}
!108 = metadata !{i32 178, i32 5, metadata !89, null}
!109 = metadata !{i32 182, i32 7, metadata !95, null}
!110 = metadata !{i32 172, i32 41, metadata !90, null}
!111 = metadata !{i32 172, i32 59, metadata !89, null}
!112 = metadata !{i32 173, i32 1, metadata !89, null}
!113 = metadata !{i32 174, i32 1, metadata !89, null}
!114 = metadata !{i32 786689, metadata !5, metadata !"image", metadata !6, i32 33554462, metadata !14, i32 0, metadata !115} ; [ DW_TAG_arg_variable ]
!115 = metadata !{i32 192, i32 13, metadata !95, null}
!116 = metadata !{i32 30, i32 55, metadata !5, metadata !115}
!117 = metadata !{i32 786688, metadata !118, metadata !"x_weightA", metadata !6, i32 46, metadata !119, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!118 = metadata !{i32 786443, metadata !5, i32 31, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!119 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 288, i64 32, i32 0, i32 0, metadata !13, metadata !83, i32 0, i32 0} ; [ DW_TAG_array_type ]
!120 = metadata !{i32 46, i32 6, metadata !118, metadata !115}
!121 = metadata !{i32 47, i32 1, metadata !118, metadata !115}
!122 = metadata !{i32 786688, metadata !118, metadata !"y_weightA", metadata !6, i32 48, metadata !119, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!123 = metadata !{i32 48, i32 6, metadata !118, metadata !115}
!124 = metadata !{i32 49, i32 1, metadata !118, metadata !115}
!125 = metadata !{i32 57, i32 1, metadata !118, metadata !115}
!126 = metadata !{i32 62, i32 1, metadata !118, metadata !115}
!127 = metadata !{i32 66, i32 16, metadata !128, metadata !115}
!128 = metadata !{i32 786443, metadata !118, i32 66, i32 2, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!129 = metadata !{i32 79, i32 16, metadata !130, metadata !115}
!130 = metadata !{i32 786443, metadata !118, i32 79, i32 2, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!131 = metadata !{i32 66, i32 31, metadata !132, metadata !115}
!132 = metadata !{i32 786443, metadata !128, i32 66, i32 30, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!133 = metadata !{i32 67, i32 1, metadata !132, metadata !115}
!134 = metadata !{i32 70, i32 25, metadata !135, metadata !115}
!135 = metadata !{i32 786443, metadata !136, i32 68, i32 30, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!136 = metadata !{i32 786443, metadata !132, i32 68, i32 2, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!137 = metadata !{i32 68, i32 16, metadata !136, metadata !115}
!138 = metadata !{i32 73, i32 25, metadata !135, metadata !115}
!139 = metadata !{i32 68, i32 25, metadata !136, metadata !115}
!140 = metadata !{i32 786688, metadata !136, metadata !"j", metadata !6, i32 68, metadata !13, i32 0, metadata !115} ; [ DW_TAG_auto_variable ]
!141 = metadata !{i32 75, i32 2, metadata !132, metadata !115}
!142 = metadata !{i32 66, i32 25, metadata !128, metadata !115}
!143 = metadata !{i32 786688, metadata !128, metadata !"i", metadata !6, i32 66, metadata !13, i32 0, metadata !115} ; [ DW_TAG_auto_variable ]
!144 = metadata !{i32 79, i32 31, metadata !145, metadata !115}
!145 = metadata !{i32 786443, metadata !130, i32 79, i32 30, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!146 = metadata !{i32 80, i32 1, metadata !145, metadata !115}
!147 = metadata !{i32 81, i32 2, metadata !145, metadata !115}
!148 = metadata !{i32 786688, metadata !118, metadata !"x_weight", metadata !6, i32 77, metadata !13, i32 0, metadata !115} ; [ DW_TAG_auto_variable ]
!149 = metadata !{i32 82, i32 3, metadata !145, metadata !115}
!150 = metadata !{i32 786688, metadata !118, metadata !"y_weight", metadata !6, i32 78, metadata !13, i32 0, metadata !115} ; [ DW_TAG_auto_variable ]
!151 = metadata !{i32 83, i32 2, metadata !145, metadata !115}
!152 = metadata !{i32 79, i32 25, metadata !130, metadata !115}
!153 = metadata !{i32 786688, metadata !130, metadata !"i", metadata !6, i32 79, metadata !13, i32 0, metadata !115} ; [ DW_TAG_auto_variable ]
!154 = metadata !{i32 85, i32 2, metadata !118, metadata !115}
!155 = metadata !{i32 786688, metadata !118, metadata !"edge_weight", metadata !6, i32 51, metadata !21, i32 0, metadata !115} ; [ DW_TAG_auto_variable ]
!156 = metadata !{i32 87, i32 2, metadata !118, metadata !115}
!157 = metadata !{i32 786688, metadata !118, metadata !"edge_val", metadata !6, i32 52, metadata !9, i32 0, metadata !115} ; [ DW_TAG_auto_variable ]
!158 = metadata !{i32 90, i32 2, metadata !118, metadata !115}
!159 = metadata !{i32 92, i32 7, metadata !118, metadata !115}
!160 = metadata !{i32 194, i32 19, metadata !88, null}
!161 = metadata !{i32 194, i32 28, metadata !88, null}
!162 = metadata !{i32 786688, metadata !88, metadata !"j", metadata !6, i32 194, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!163 = metadata !{i32 199, i32 5, metadata !89, null}
!164 = metadata !{i32 172, i32 53, metadata !90, null}
!165 = metadata !{i32 786688, metadata !90, metadata !"j", metadata !6, i32 172, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!166 = metadata !{i32 200, i32 4, metadata !91, null}
!167 = metadata !{i32 786688, metadata !92, metadata !"i", metadata !6, i32 171, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!168 = metadata !{i32 171, i32 52, metadata !92, null}
!169 = metadata !{i32 202, i32 51, metadata !170, null}
!170 = metadata !{i32 786443, metadata !105, i32 202, i32 50, metadata !6, i32 16} ; [ DW_TAG_lexical_block ]
!171 = metadata !{i32 205, i32 2, metadata !172, null}
!172 = metadata !{i32 786443, metadata !173, i32 203, i32 55, metadata !6, i32 18} ; [ DW_TAG_lexical_block ]
!173 = metadata !{i32 786443, metadata !170, i32 203, i32 15, metadata !6, i32 17} ; [ DW_TAG_lexical_block ]
!174 = metadata !{i32 223, i32 4, metadata !172, null}
!175 = metadata !{i32 209, i32 5, metadata !176, null}
!176 = metadata !{i32 786443, metadata !172, i32 208, i32 9, metadata !6, i32 20} ; [ DW_TAG_lexical_block ]
!177 = metadata !{i32 211, i32 5, metadata !176, null}
!178 = metadata !{i32 212, i32 5, metadata !176, null}
!179 = metadata !{i32 214, i32 5, metadata !176, null}
!180 = metadata !{i32 215, i32 5, metadata !176, null}
!181 = metadata !{i32 217, i32 5, metadata !176, null}
!182 = metadata !{i32 203, i32 38, metadata !173, null}
!183 = metadata !{i32 203, i32 56, metadata !172, null}
!184 = metadata !{i32 204, i32 1, metadata !172, null}
!185 = metadata !{i32 210, i32 5, metadata !176, null}
!186 = metadata !{i32 213, i32 5, metadata !176, null}
!187 = metadata !{i32 216, i32 5, metadata !176, null}
!188 = metadata !{i32 786689, metadata !5, metadata !"image", metadata !6, i32 33554462, metadata !14, i32 0, metadata !189} ; [ DW_TAG_arg_variable ]
!189 = metadata !{i32 219, i32 11, metadata !176, null}
!190 = metadata !{i32 30, i32 55, metadata !5, metadata !189}
!191 = metadata !{i32 46, i32 6, metadata !118, metadata !189}
!192 = metadata !{i32 47, i32 1, metadata !118, metadata !189}
!193 = metadata !{i32 48, i32 6, metadata !118, metadata !189}
!194 = metadata !{i32 49, i32 1, metadata !118, metadata !189}
!195 = metadata !{i32 57, i32 1, metadata !118, metadata !189}
!196 = metadata !{i32 62, i32 1, metadata !118, metadata !189}
!197 = metadata !{i32 66, i32 16, metadata !128, metadata !189}
!198 = metadata !{i32 79, i32 16, metadata !130, metadata !189}
!199 = metadata !{i32 66, i32 31, metadata !132, metadata !189}
!200 = metadata !{i32 67, i32 1, metadata !132, metadata !189}
!201 = metadata !{i32 70, i32 25, metadata !135, metadata !189}
!202 = metadata !{i32 68, i32 16, metadata !136, metadata !189}
!203 = metadata !{i32 73, i32 25, metadata !135, metadata !189}
!204 = metadata !{i32 68, i32 25, metadata !136, metadata !189}
!205 = metadata !{i32 786688, metadata !136, metadata !"j", metadata !6, i32 68, metadata !13, i32 0, metadata !189} ; [ DW_TAG_auto_variable ]
!206 = metadata !{i32 75, i32 2, metadata !132, metadata !189}
!207 = metadata !{i32 66, i32 25, metadata !128, metadata !189}
!208 = metadata !{i32 786688, metadata !128, metadata !"i", metadata !6, i32 66, metadata !13, i32 0, metadata !189} ; [ DW_TAG_auto_variable ]
!209 = metadata !{i32 79, i32 31, metadata !145, metadata !189}
!210 = metadata !{i32 80, i32 1, metadata !145, metadata !189}
!211 = metadata !{i32 81, i32 2, metadata !145, metadata !189}
!212 = metadata !{i32 786688, metadata !118, metadata !"x_weight", metadata !6, i32 77, metadata !13, i32 0, metadata !189} ; [ DW_TAG_auto_variable ]
!213 = metadata !{i32 82, i32 3, metadata !145, metadata !189}
!214 = metadata !{i32 786688, metadata !118, metadata !"y_weight", metadata !6, i32 78, metadata !13, i32 0, metadata !189} ; [ DW_TAG_auto_variable ]
!215 = metadata !{i32 83, i32 2, metadata !145, metadata !189}
!216 = metadata !{i32 79, i32 25, metadata !130, metadata !189}
!217 = metadata !{i32 786688, metadata !130, metadata !"i", metadata !6, i32 79, metadata !13, i32 0, metadata !189} ; [ DW_TAG_auto_variable ]
!218 = metadata !{i32 85, i32 2, metadata !118, metadata !189}
!219 = metadata !{i32 786688, metadata !118, metadata !"edge_weight", metadata !6, i32 51, metadata !21, i32 0, metadata !189} ; [ DW_TAG_auto_variable ]
!220 = metadata !{i32 87, i32 2, metadata !118, metadata !189}
!221 = metadata !{i32 786688, metadata !118, metadata !"edge_val", metadata !6, i32 52, metadata !9, i32 0, metadata !189} ; [ DW_TAG_auto_variable ]
!222 = metadata !{i32 90, i32 2, metadata !118, metadata !189}
!223 = metadata !{i32 92, i32 7, metadata !118, metadata !189}
!224 = metadata !{i32 221, i32 18, metadata !225, null}
!225 = metadata !{i32 786443, metadata !172, i32 221, i32 4, metadata !6, i32 21} ; [ DW_TAG_lexical_block ]
!226 = metadata !{i32 222, i32 5, metadata !225, null}
!227 = metadata !{i32 221, i32 27, metadata !225, null}
!228 = metadata !{i32 786688, metadata !225, metadata !"j", metadata !6, i32 221, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!229 = metadata !{i32 225, i32 3, metadata !172, null}
!230 = metadata !{i32 203, i32 50, metadata !173, null}
!231 = metadata !{i32 786688, metadata !173, metadata !"j", metadata !6, i32 203, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!232 = metadata !{i32 226, i32 2, metadata !170, null}
!233 = metadata !{i32 786688, metadata !105, metadata !"i", metadata !6, i32 202, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!234 = metadata !{i32 202, i32 45, metadata !105, null}
!235 = metadata !{i32 229, i32 1, metadata !57, null}
!236 = metadata !{i32 786689, metadata !22, metadata !"xDiff", metadata !6, i32 33554443, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!237 = metadata !{i32 11, i32 45, metadata !22, null}
!238 = metadata !{i32 786689, metadata !22, metadata !"yDiff", metadata !6, i32 50331659, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!239 = metadata !{i32 11, i32 56, metadata !22, null}
!240 = metadata !{i32 786689, metadata !22, metadata !"Y", metadata !6, i32 83886091, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!241 = metadata !{i32 11, i32 88, metadata !22, null}
!242 = metadata !{i32 13, i32 55, metadata !243, null}
!243 = metadata !{i32 786443, metadata !22, i32 12, i32 1, metadata !6, i32 22} ; [ DW_TAG_lexical_block ]
!244 = metadata !{i32 786688, metadata !243, metadata !"fullIndex", metadata !6, i32 13, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!245 = metadata !{i32 14, i32 2, metadata !243, null}
!246 = metadata !{i32 17, i32 3, metadata !247, null}
!247 = metadata !{i32 786443, metadata !243, i32 15, i32 2, metadata !6, i32 23} ; [ DW_TAG_lexical_block ]
!248 = metadata !{i32 18, i32 2, metadata !247, null}
!249 = metadata !{i32 19, i32 7, metadata !243, null}
!250 = metadata !{i32 22, i32 3, metadata !251, null}
!251 = metadata !{i32 786443, metadata !243, i32 20, i32 2, metadata !6, i32 24} ; [ DW_TAG_lexical_block ]
!252 = metadata !{i32 25, i32 2, metadata !243, null}
