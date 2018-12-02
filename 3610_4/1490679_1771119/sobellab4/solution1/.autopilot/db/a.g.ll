; ModuleID = '/home/gabriel/Documents/INF3610/HDMI_3610/3610_4/1490679_1771119/sobellab4/solution1/.autopilot/db/a.g.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.OneToFourPixels = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str1 = private unnamed_addr constant [9 x i8] c"COMPLETE\00", align 1 ; [#uses=1 type=[9 x i8]*]
@_ZZ14sobel_operatoriPhE4x_op = internal constant [3 x [3 x i8]] [[3 x i8] c"\FF\00\01", [3 x i8] c"\FE\00\02", [3 x i8] c"\FF\00\01"], align 1 ; [#uses=2 type=[3 x [3 x i8]]*]
@_ZZ14sobel_operatoriPhE4y_op = internal constant [3 x [3 x i8]] [[3 x i8] c"\01\02\01", [3 x i8] zeroinitializer, [3 x i8] c"\FF\FE\FF"], align 1 ; [#uses=2 type=[3 x [3 x i8]]*]
@.str2 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str3 = private unnamed_addr constant [12 x i8] c"hls_label_1\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str4 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str5 = private unnamed_addr constant [6 x i8] c"gmem0\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str6 = private unnamed_addr constant [6 x i8] c"slave\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str7 = private unnamed_addr constant [6 x i8] c"gmem1\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str8 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]
@.str9 = private unnamed_addr constant [14 x i8] c"OperatorLines\00", align 1 ; [#uses=1 type=[14 x i8]*]
@.str10 = private unnamed_addr constant [13 x i8] c"OperatorRows\00", align 1 ; [#uses=1 type=[13 x i8]*]
@.str11 = private unnamed_addr constant [10 x i8] c"lastLines\00", align 1 ; [#uses=1 type=[10 x i8]*]
@.str12 = private unnamed_addr constant [11 x i8] c"lastPixels\00", align 1 ; [#uses=1 type=[11 x i8]*]

; [#uses=2]
define zeroext i8 @_Z14sobel_operatoriPh(i32 %fullIndex, i8* %image) nounwind uwtable {
  %1 = alloca i32, align 4                        ; [#uses=3 type=i32*]
  %2 = alloca i8*, align 8                        ; [#uses=3 type=i8**]
  %x_weightA = alloca [9 x i32], align 16         ; [#uses=3 type=[9 x i32]*]
  %y_weightA = alloca [9 x i32], align 16         ; [#uses=3 type=[9 x i32]*]
  %edge_weight = alloca i32, align 4              ; [#uses=2 type=i32*]
  %edge_val = alloca i8, align 1                  ; [#uses=6 type=i8*]
  %i = alloca i32, align 4                        ; [#uses=10 type=i32*]
  %j = alloca i32, align 4                        ; [#uses=10 type=i32*]
  %x_weight = alloca i32, align 4                 ; [#uses=6 type=i32*]
  %y_weight = alloca i32, align 4                 ; [#uses=6 type=i32*]
  %i1 = alloca i32, align 4                       ; [#uses=6 type=i32*]
  store i32 %fullIndex, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !52), !dbg !53 ; [debug line = 30:34] [debug variable = fullIndex]
  store i8* %image, i8** %2, align 8
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !54), !dbg !55 ; [debug line = 30:55] [debug variable = image]
  call void (...)* @_ssdm_InlineSelf(i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !56 ; [debug line = 32:1]
  call void @llvm.dbg.declare(metadata !{[9 x i32]* %x_weightA}, metadata !58), !dbg !62 ; [debug line = 46:6] [debug variable = x_weightA]
  %3 = getelementptr inbounds [9 x i32]* %x_weightA, i32 0, i32 0, !dbg !63 ; [#uses=1 type=i32*] [debug line = 47:1]
  call void (...)* @_ssdm_SpecArrayPartition(i32* %3, i32 1, i8* getelementptr inbounds ([9 x i8]* @.str1, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !63 ; [debug line = 47:1]
  call void @llvm.dbg.declare(metadata !{[9 x i32]* %y_weightA}, metadata !64), !dbg !65 ; [debug line = 48:6] [debug variable = y_weightA]
  %4 = getelementptr inbounds [9 x i32]* %y_weightA, i32 0, i32 0, !dbg !66 ; [#uses=1 type=i32*] [debug line = 49:1]
  call void (...)* @_ssdm_SpecArrayPartition(i32* %4, i32 1, i8* getelementptr inbounds ([9 x i8]* @.str1, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !66 ; [debug line = 49:1]
  call void @llvm.dbg.declare(metadata !{i32* %edge_weight}, metadata !67), !dbg !68 ; [debug line = 51:11] [debug variable = edge_weight]
  call void @llvm.dbg.declare(metadata !{i8* %edge_val}, metadata !69), !dbg !70 ; [debug line = 52:10] [debug variable = edge_val]
  call void (...)* @_ssdm_SpecConstant([3 x i8]* getelementptr inbounds ([3 x [3 x i8]]* @_ZZ14sobel_operatoriPhE4x_op, i32 0, i32 0)) nounwind, !dbg !71 ; [debug line = 57:1]
  call void (...)* @_ssdm_SpecArrayPartition([3 x i8]* getelementptr inbounds ([3 x [3 x i8]]* @_ZZ14sobel_operatoriPhE4x_op, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([9 x i8]* @.str1, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !71 ; [debug line = 57:1]
  call void (...)* @_ssdm_SpecConstant([3 x i8]* getelementptr inbounds ([3 x [3 x i8]]* @_ZZ14sobel_operatoriPhE4y_op, i32 0, i32 0)) nounwind, !dbg !72 ; [debug line = 62:1]
  call void (...)* @_ssdm_SpecArrayPartition([3 x i8]* getelementptr inbounds ([3 x [3 x i8]]* @_ZZ14sobel_operatoriPhE4y_op, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([9 x i8]* @.str1, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !72 ; [debug line = 62:1]
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !73), !dbg !75 ; [debug line = 66:11] [debug variable = i]
  store i32 0, i32* %i, align 4, !dbg !76         ; [debug line = 66:16]
  br label %5, !dbg !76                           ; [debug line = 66:16]

; <label>:5                                       ; preds = %63, %0
  %6 = load i32* %i, align 4, !dbg !76            ; [#uses=1 type=i32] [debug line = 66:16]
  %7 = icmp slt i32 %6, 3, !dbg !76               ; [#uses=1 type=i1] [debug line = 66:16]
  br i1 %7, label %8, label %66, !dbg !76         ; [debug line = 66:16]

; <label>:8                                       ; preds = %5
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !77 ; [debug line = 66:31]
  call void (...)* @_ssdm_Unroll(i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !79 ; [debug line = 67:1]
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !80), !dbg !82 ; [debug line = 68:11] [debug variable = j]
  store i32 0, i32* %j, align 4, !dbg !83         ; [debug line = 68:16]
  br label %9, !dbg !83                           ; [debug line = 68:16]

; <label>:9                                       ; preds = %59, %8
  %10 = load i32* %j, align 4, !dbg !83           ; [#uses=1 type=i32] [debug line = 68:16]
  %11 = icmp slt i32 %10, 3, !dbg !83             ; [#uses=1 type=i1] [debug line = 68:16]
  br i1 %11, label %12, label %62, !dbg !83       ; [debug line = 68:16]

; <label>:12                                      ; preds = %9
  %13 = load i32* %1, align 4, !dbg !84           ; [#uses=1 type=i32] [debug line = 70:25]
  %14 = load i32* %i, align 4, !dbg !84           ; [#uses=1 type=i32] [debug line = 70:25]
  %15 = sub nsw i32 %14, 1, !dbg !84              ; [#uses=1 type=i32] [debug line = 70:25]
  %16 = load i32* %j, align 4, !dbg !84           ; [#uses=1 type=i32] [debug line = 70:25]
  %17 = sub nsw i32 %16, 1, !dbg !84              ; [#uses=1 type=i32] [debug line = 70:25]
  %18 = load i8** %2, align 8, !dbg !84           ; [#uses=1 type=i8*] [debug line = 70:25]
  %19 = call zeroext i8 @_ZL6getValiiiiPh(i32 %13, i32 %15, i32 %17, i32 1920, i8* %18), !dbg !84 ; [#uses=1 type=i8] [debug line = 70:25]
  %20 = zext i8 %19 to i32, !dbg !84              ; [#uses=1 type=i32] [debug line = 70:25]
  %21 = load i32* %j, align 4, !dbg !84           ; [#uses=1 type=i32] [debug line = 70:25]
  %22 = sext i32 %21 to i64, !dbg !84             ; [#uses=1 type=i64] [debug line = 70:25]
  %23 = load i32* %i, align 4, !dbg !84           ; [#uses=1 type=i32] [debug line = 70:25]
  %24 = sext i32 %23 to i64, !dbg !84             ; [#uses=1 type=i64] [debug line = 70:25]
  %25 = getelementptr inbounds [3 x [3 x i8]]* @_ZZ14sobel_operatoriPhE4x_op, i32 0, i64 %24, !dbg !84 ; [#uses=1 type=[3 x i8]*] [debug line = 70:25]
  %26 = getelementptr inbounds [3 x i8]* %25, i32 0, i64 %22, !dbg !84 ; [#uses=1 type=i8*] [debug line = 70:25]
  %27 = load i8* %26, align 1, !dbg !84           ; [#uses=1 type=i8] [debug line = 70:25]
  %28 = sext i8 %27 to i32, !dbg !84              ; [#uses=1 type=i32] [debug line = 70:25]
  %29 = mul nsw i32 %20, %28, !dbg !84            ; [#uses=1 type=i32] [debug line = 70:25]
  %30 = load i32* %i, align 4, !dbg !84           ; [#uses=1 type=i32] [debug line = 70:25]
  %31 = mul nsw i32 %30, 2, !dbg !84              ; [#uses=1 type=i32] [debug line = 70:25]
  %32 = load i32* %j, align 4, !dbg !84           ; [#uses=1 type=i32] [debug line = 70:25]
  %33 = add nsw i32 %31, %32, !dbg !84            ; [#uses=1 type=i32] [debug line = 70:25]
  %34 = sext i32 %33 to i64, !dbg !84             ; [#uses=1 type=i64] [debug line = 70:25]
  %35 = getelementptr inbounds [9 x i32]* %x_weightA, i32 0, i64 %34, !dbg !84 ; [#uses=1 type=i32*] [debug line = 70:25]
  store i32 %29, i32* %35, align 4, !dbg !84      ; [debug line = 70:25]
  %36 = load i32* %1, align 4, !dbg !86           ; [#uses=1 type=i32] [debug line = 73:25]
  %37 = load i32* %i, align 4, !dbg !86           ; [#uses=1 type=i32] [debug line = 73:25]
  %38 = sub nsw i32 %37, 1, !dbg !86              ; [#uses=1 type=i32] [debug line = 73:25]
  %39 = load i32* %j, align 4, !dbg !86           ; [#uses=1 type=i32] [debug line = 73:25]
  %40 = sub nsw i32 %39, 1, !dbg !86              ; [#uses=1 type=i32] [debug line = 73:25]
  %41 = load i8** %2, align 8, !dbg !86           ; [#uses=1 type=i8*] [debug line = 73:25]
  %42 = call zeroext i8 @_ZL6getValiiiiPh(i32 %36, i32 %38, i32 %40, i32 1920, i8* %41), !dbg !86 ; [#uses=1 type=i8] [debug line = 73:25]
  %43 = zext i8 %42 to i32, !dbg !86              ; [#uses=1 type=i32] [debug line = 73:25]
  %44 = load i32* %j, align 4, !dbg !86           ; [#uses=1 type=i32] [debug line = 73:25]
  %45 = sext i32 %44 to i64, !dbg !86             ; [#uses=1 type=i64] [debug line = 73:25]
  %46 = load i32* %i, align 4, !dbg !86           ; [#uses=1 type=i32] [debug line = 73:25]
  %47 = sext i32 %46 to i64, !dbg !86             ; [#uses=1 type=i64] [debug line = 73:25]
  %48 = getelementptr inbounds [3 x [3 x i8]]* @_ZZ14sobel_operatoriPhE4y_op, i32 0, i64 %47, !dbg !86 ; [#uses=1 type=[3 x i8]*] [debug line = 73:25]
  %49 = getelementptr inbounds [3 x i8]* %48, i32 0, i64 %45, !dbg !86 ; [#uses=1 type=i8*] [debug line = 73:25]
  %50 = load i8* %49, align 1, !dbg !86           ; [#uses=1 type=i8] [debug line = 73:25]
  %51 = sext i8 %50 to i32, !dbg !86              ; [#uses=1 type=i32] [debug line = 73:25]
  %52 = mul nsw i32 %43, %51, !dbg !86            ; [#uses=1 type=i32] [debug line = 73:25]
  %53 = load i32* %i, align 4, !dbg !86           ; [#uses=1 type=i32] [debug line = 73:25]
  %54 = mul nsw i32 %53, 2, !dbg !86              ; [#uses=1 type=i32] [debug line = 73:25]
  %55 = load i32* %j, align 4, !dbg !86           ; [#uses=1 type=i32] [debug line = 73:25]
  %56 = add nsw i32 %54, %55, !dbg !86            ; [#uses=1 type=i32] [debug line = 73:25]
  %57 = sext i32 %56 to i64, !dbg !86             ; [#uses=1 type=i64] [debug line = 73:25]
  %58 = getelementptr inbounds [9 x i32]* %y_weightA, i32 0, i64 %57, !dbg !86 ; [#uses=1 type=i32*] [debug line = 73:25]
  store i32 %52, i32* %58, align 4, !dbg !86      ; [debug line = 73:25]
  br label %59, !dbg !87                          ; [debug line = 74:3]

; <label>:59                                      ; preds = %12
  %60 = load i32* %j, align 4, !dbg !88           ; [#uses=1 type=i32] [debug line = 68:25]
  %61 = add nsw i32 %60, 1, !dbg !88              ; [#uses=1 type=i32] [debug line = 68:25]
  store i32 %61, i32* %j, align 4, !dbg !88       ; [debug line = 68:25]
  br label %9, !dbg !88                           ; [debug line = 68:25]

; <label>:62                                      ; preds = %9
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !89 ; [debug line = 75:2]
  br label %63, !dbg !89                          ; [debug line = 75:2]

; <label>:63                                      ; preds = %62
  %64 = load i32* %i, align 4, !dbg !90           ; [#uses=1 type=i32] [debug line = 66:25]
  %65 = add nsw i32 %64, 1, !dbg !90              ; [#uses=1 type=i32] [debug line = 66:25]
  store i32 %65, i32* %i, align 4, !dbg !90       ; [debug line = 66:25]
  br label %5, !dbg !90                           ; [debug line = 66:25]

; <label>:66                                      ; preds = %5
  call void @llvm.dbg.declare(metadata !{i32* %x_weight}, metadata !91), !dbg !92 ; [debug line = 77:6] [debug variable = x_weight]
  store i32 0, i32* %x_weight, align 4, !dbg !93  ; [debug line = 77:18]
  call void @llvm.dbg.declare(metadata !{i32* %y_weight}, metadata !94), !dbg !95 ; [debug line = 78:6] [debug variable = y_weight]
  store i32 0, i32* %y_weight, align 4, !dbg !96  ; [debug line = 78:18]
  call void @llvm.dbg.declare(metadata !{i32* %i1}, metadata !97), !dbg !99 ; [debug line = 79:11] [debug variable = i]
  store i32 0, i32* %i1, align 4, !dbg !100       ; [debug line = 79:16]
  br label %67, !dbg !100                         ; [debug line = 79:16]

; <label>:67                                      ; preds = %83, %66
  %68 = load i32* %i1, align 4, !dbg !100         ; [#uses=1 type=i32] [debug line = 79:16]
  %69 = icmp slt i32 %68, 9, !dbg !100            ; [#uses=1 type=i1] [debug line = 79:16]
  br i1 %69, label %70, label %86, !dbg !100      ; [debug line = 79:16]

; <label>:70                                      ; preds = %67
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str3, i32 0, i32 0)) nounwind, !dbg !101 ; [debug line = 79:31]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !103 ; [debug line = 80:1]
  %71 = load i32* %x_weight, align 4, !dbg !104   ; [#uses=1 type=i32] [debug line = 81:2]
  %72 = load i32* %i1, align 4, !dbg !104         ; [#uses=1 type=i32] [debug line = 81:2]
  %73 = sext i32 %72 to i64, !dbg !104            ; [#uses=1 type=i64] [debug line = 81:2]
  %74 = getelementptr inbounds [9 x i32]* %x_weightA, i32 0, i64 %73, !dbg !104 ; [#uses=1 type=i32*] [debug line = 81:2]
  %75 = load i32* %74, align 4, !dbg !104         ; [#uses=1 type=i32] [debug line = 81:2]
  %76 = add nsw i32 %71, %75, !dbg !104           ; [#uses=1 type=i32] [debug line = 81:2]
  store i32 %76, i32* %x_weight, align 4, !dbg !104 ; [debug line = 81:2]
  %77 = load i32* %y_weight, align 4, !dbg !105   ; [#uses=1 type=i32] [debug line = 82:3]
  %78 = load i32* %i1, align 4, !dbg !105         ; [#uses=1 type=i32] [debug line = 82:3]
  %79 = sext i32 %78 to i64, !dbg !105            ; [#uses=1 type=i64] [debug line = 82:3]
  %80 = getelementptr inbounds [9 x i32]* %y_weightA, i32 0, i64 %79, !dbg !105 ; [#uses=1 type=i32*] [debug line = 82:3]
  %81 = load i32* %80, align 4, !dbg !105         ; [#uses=1 type=i32] [debug line = 82:3]
  %82 = add nsw i32 %77, %81, !dbg !105           ; [#uses=1 type=i32] [debug line = 82:3]
  store i32 %82, i32* %y_weight, align 4, !dbg !105 ; [debug line = 82:3]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str3, i32 0, i32 0)) nounwind, !dbg !106 ; [debug line = 83:2]
  br label %83, !dbg !106                         ; [debug line = 83:2]

; <label>:83                                      ; preds = %70
  %84 = load i32* %i1, align 4, !dbg !107         ; [#uses=1 type=i32] [debug line = 79:25]
  %85 = add nsw i32 %84, 1, !dbg !107             ; [#uses=1 type=i32] [debug line = 79:25]
  store i32 %85, i32* %i1, align 4, !dbg !107     ; [debug line = 79:25]
  br label %67, !dbg !107                         ; [debug line = 79:25]

; <label>:86                                      ; preds = %67
  %87 = load i32* %x_weight, align 4, !dbg !108   ; [#uses=1 type=i32] [debug line = 85:2]
  %88 = icmp sgt i32 %87, 0, !dbg !108            ; [#uses=1 type=i1] [debug line = 85:2]
  br i1 %88, label %89, label %91, !dbg !108      ; [debug line = 85:2]

; <label>:89                                      ; preds = %86
  %90 = load i32* %x_weight, align 4, !dbg !108   ; [#uses=1 type=i32] [debug line = 85:2]
  br label %94, !dbg !108                         ; [debug line = 85:2]

; <label>:91                                      ; preds = %86
  %92 = load i32* %x_weight, align 4, !dbg !108   ; [#uses=1 type=i32] [debug line = 85:2]
  %93 = sub nsw i32 0, %92, !dbg !108             ; [#uses=1 type=i32] [debug line = 85:2]
  br label %94, !dbg !108                         ; [debug line = 85:2]

; <label>:94                                      ; preds = %91, %89
  %95 = phi i32 [ %90, %89 ], [ %93, %91 ], !dbg !108 ; [#uses=1 type=i32] [debug line = 85:2]
  %96 = load i32* %y_weight, align 4, !dbg !108   ; [#uses=1 type=i32] [debug line = 85:2]
  %97 = icmp sgt i32 %96, 0, !dbg !108            ; [#uses=1 type=i1] [debug line = 85:2]
  br i1 %97, label %98, label %100, !dbg !108     ; [debug line = 85:2]

; <label>:98                                      ; preds = %94
  %99 = load i32* %y_weight, align 4, !dbg !108   ; [#uses=1 type=i32] [debug line = 85:2]
  br label %103, !dbg !108                        ; [debug line = 85:2]

; <label>:100                                     ; preds = %94
  %101 = load i32* %y_weight, align 4, !dbg !108  ; [#uses=1 type=i32] [debug line = 85:2]
  %102 = sub nsw i32 0, %101, !dbg !108           ; [#uses=1 type=i32] [debug line = 85:2]
  br label %103, !dbg !108                        ; [debug line = 85:2]

; <label>:103                                     ; preds = %100, %98
  %104 = phi i32 [ %99, %98 ], [ %102, %100 ], !dbg !108 ; [#uses=1 type=i32] [debug line = 85:2]
  %105 = add nsw i32 %95, %104, !dbg !108         ; [#uses=1 type=i32] [debug line = 85:2]
  store i32 %105, i32* %edge_weight, align 4, !dbg !108 ; [debug line = 85:2]
  %106 = load i32* %edge_weight, align 4, !dbg !109 ; [#uses=1 type=i32] [debug line = 87:2]
  %107 = trunc i32 %106 to i8, !dbg !109          ; [#uses=1 type=i8] [debug line = 87:2]
  %108 = zext i8 %107 to i32, !dbg !109           ; [#uses=1 type=i32] [debug line = 87:2]
  %109 = sub nsw i32 255, %108, !dbg !109         ; [#uses=1 type=i32] [debug line = 87:2]
  %110 = trunc i32 %109 to i8, !dbg !109          ; [#uses=1 type=i8] [debug line = 87:2]
  store i8 %110, i8* %edge_val, align 1, !dbg !109 ; [debug line = 87:2]
  %111 = load i8* %edge_val, align 1, !dbg !110   ; [#uses=1 type=i8] [debug line = 90:2]
  %112 = zext i8 %111 to i32, !dbg !110           ; [#uses=1 type=i32] [debug line = 90:2]
  %113 = icmp sgt i32 %112, 200, !dbg !110        ; [#uses=1 type=i1] [debug line = 90:2]
  br i1 %113, label %114, label %115, !dbg !110   ; [debug line = 90:2]

; <label>:114                                     ; preds = %103
  store i8 -1, i8* %edge_val, align 1, !dbg !111  ; [debug line = 91:3]
  br label %121, !dbg !111                        ; [debug line = 91:3]

; <label>:115                                     ; preds = %103
  %116 = load i8* %edge_val, align 1, !dbg !112   ; [#uses=1 type=i8] [debug line = 92:7]
  %117 = zext i8 %116 to i32, !dbg !112           ; [#uses=1 type=i32] [debug line = 92:7]
  %118 = icmp slt i32 %117, 100, !dbg !112        ; [#uses=1 type=i1] [debug line = 92:7]
  br i1 %118, label %119, label %120, !dbg !112   ; [debug line = 92:7]

; <label>:119                                     ; preds = %115
  store i8 0, i8* %edge_val, align 1, !dbg !113   ; [debug line = 93:3]
  br label %120, !dbg !113                        ; [debug line = 93:3]

; <label>:120                                     ; preds = %119, %115
  br label %121

; <label>:121                                     ; preds = %120, %114
  %122 = load i8* %edge_val, align 1, !dbg !114   ; [#uses=1 type=i8] [debug line = 95:2]
  ret i8 %122, !dbg !114                          ; [debug line = 95:2]
}

; [#uses=29]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_InlineSelf(...) nounwind

; [#uses=5]
declare void @_ssdm_SpecArrayPartition(...) nounwind

; [#uses=2]
declare void @_ssdm_SpecConstant(...) nounwind

; [#uses=6]
declare void @_ssdm_RegionBegin(...) nounwind

; [#uses=1]
declare void @_ssdm_Unroll(...) nounwind

; [#uses=2]
define internal zeroext i8 @_ZL6getValiiiiPh(i32 %index, i32 %xDiff, i32 %yDiff, i32 %img_width, i8* %Y) nounwind uwtable inlinehint {
  %1 = alloca i32, align 4                        ; [#uses=2 type=i32*]
  %2 = alloca i32, align 4                        ; [#uses=2 type=i32*]
  %3 = alloca i32, align 4                        ; [#uses=2 type=i32*]
  %4 = alloca i32, align 4                        ; [#uses=5 type=i32*]
  %5 = alloca i8*, align 8                        ; [#uses=2 type=i8**]
  %fullIndex = alloca i32, align 4                ; [#uses=8 type=i32*]
  store i32 %index, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !115), !dbg !116 ; [debug line = 11:34] [debug variable = index]
  store i32 %xDiff, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !117), !dbg !118 ; [debug line = 11:45] [debug variable = xDiff]
  store i32 %yDiff, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !119), !dbg !120 ; [debug line = 11:56] [debug variable = yDiff]
  store i32 %img_width, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !121), !dbg !122 ; [debug line = 11:67] [debug variable = img_width]
  store i8* %Y, i8** %5, align 8
  call void @llvm.dbg.declare(metadata !{i8** %5}, metadata !123), !dbg !124 ; [debug line = 11:88] [debug variable = Y]
  call void @llvm.dbg.declare(metadata !{i32* %fullIndex}, metadata !125), !dbg !127 ; [debug line = 13:6] [debug variable = fullIndex]
  %6 = load i32* %1, align 4, !dbg !128           ; [#uses=1 type=i32] [debug line = 13:55]
  %7 = load i32* %3, align 4, !dbg !128           ; [#uses=1 type=i32] [debug line = 13:55]
  %8 = load i32* %4, align 4, !dbg !128           ; [#uses=1 type=i32] [debug line = 13:55]
  %9 = mul nsw i32 %7, %8, !dbg !128              ; [#uses=1 type=i32] [debug line = 13:55]
  %10 = add nsw i32 %6, %9, !dbg !128             ; [#uses=1 type=i32] [debug line = 13:55]
  %11 = load i32* %2, align 4, !dbg !128          ; [#uses=1 type=i32] [debug line = 13:55]
  %12 = add nsw i32 %10, %11, !dbg !128           ; [#uses=1 type=i32] [debug line = 13:55]
  store i32 %12, i32* %fullIndex, align 4, !dbg !128 ; [debug line = 13:55]
  %13 = load i32* %fullIndex, align 4, !dbg !129  ; [#uses=1 type=i32] [debug line = 14:2]
  %14 = icmp slt i32 %13, 0, !dbg !129            ; [#uses=1 type=i1] [debug line = 14:2]
  br i1 %14, label %15, label %20, !dbg !129      ; [debug line = 14:2]

; <label>:15                                      ; preds = %0
  %16 = load i32* %4, align 4, !dbg !130          ; [#uses=1 type=i32] [debug line = 17:3]
  %17 = mul nsw i32 %16, 4, !dbg !130             ; [#uses=1 type=i32] [debug line = 17:3]
  %18 = load i32* %fullIndex, align 4, !dbg !130  ; [#uses=1 type=i32] [debug line = 17:3]
  %19 = add nsw i32 %18, %17, !dbg !130           ; [#uses=1 type=i32] [debug line = 17:3]
  store i32 %19, i32* %fullIndex, align 4, !dbg !130 ; [debug line = 17:3]
  br label %31, !dbg !132                         ; [debug line = 18:2]

; <label>:20                                      ; preds = %0
  %21 = load i32* %fullIndex, align 4, !dbg !133  ; [#uses=1 type=i32] [debug line = 19:7]
  %22 = load i32* %4, align 4, !dbg !133          ; [#uses=1 type=i32] [debug line = 19:7]
  %23 = mul nsw i32 %22, 4, !dbg !133             ; [#uses=1 type=i32] [debug line = 19:7]
  %24 = icmp sge i32 %21, %23, !dbg !133          ; [#uses=1 type=i1] [debug line = 19:7]
  br i1 %24, label %25, label %30, !dbg !133      ; [debug line = 19:7]

; <label>:25                                      ; preds = %20
  %26 = load i32* %4, align 4, !dbg !134          ; [#uses=1 type=i32] [debug line = 22:3]
  %27 = mul nsw i32 %26, 4, !dbg !134             ; [#uses=1 type=i32] [debug line = 22:3]
  %28 = load i32* %fullIndex, align 4, !dbg !134  ; [#uses=1 type=i32] [debug line = 22:3]
  %29 = sub nsw i32 %28, %27, !dbg !134           ; [#uses=1 type=i32] [debug line = 22:3]
  store i32 %29, i32* %fullIndex, align 4, !dbg !134 ; [debug line = 22:3]
  br label %30, !dbg !136                         ; [debug line = 23:2]

; <label>:30                                      ; preds = %25, %20
  br label %31

; <label>:31                                      ; preds = %30, %15
  %32 = load i32* %fullIndex, align 4, !dbg !137  ; [#uses=1 type=i32] [debug line = 25:2]
  %33 = sext i32 %32 to i64, !dbg !137            ; [#uses=1 type=i64] [debug line = 25:2]
  %34 = load i8** %5, align 8, !dbg !137          ; [#uses=1 type=i8*] [debug line = 25:2]
  %35 = getelementptr inbounds i8* %34, i64 %33, !dbg !137 ; [#uses=1 type=i8*] [debug line = 25:2]
  %36 = load i8* %35, align 1, !dbg !137          ; [#uses=1 type=i8] [debug line = 25:2]
  ret i8 %36, !dbg !137                           ; [debug line = 25:2]
}

; [#uses=6]
declare void @_ssdm_RegionEnd(...) nounwind

; [#uses=3]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=0]
define void @_Z12sobel_filterPhPj(i8* %inter_pix, i32* %out_pix) nounwind uwtable {
  %1 = alloca i8*, align 8                        ; [#uses=4 type=i8**]
  %2 = alloca i32*, align 8                       ; [#uses=5 type=i32**]
  %cache1 = alloca [7680 x i8], align 16          ; [#uses=19 type=[7680 x i8]*]
  %val = alloca i8, align 1                       ; [#uses=6 type=i8*]
  %fourWide = alloca %union.OneToFourPixels, align 4 ; [#uses=4 type=%union.OneToFourPixels*]
  %surroundingPix = alloca [9 x i8], align 1      ; [#uses=21 type=[9 x i8]*]
  %i = alloca i32, align 4                        ; [#uses=17 type=i32*]
  %j = alloca i32, align 4                        ; [#uses=18 type=i32*]
  %j1 = alloca i32, align 4                       ; [#uses=5 type=i32*]
  %i2 = alloca i32, align 4                       ; [#uses=15 type=i32*]
  %j3 = alloca i32, align 4                       ; [#uses=16 type=i32*]
  %j4 = alloca i32, align 4                       ; [#uses=5 type=i32*]
  store i8* %inter_pix, i8** %1, align 8
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !138), !dbg !139 ; [debug line = 99:27] [debug variable = inter_pix]
  store i32* %out_pix, i32** %2, align 8
  call void @llvm.dbg.declare(metadata !{i32** %2}, metadata !140), !dbg !141 ; [debug line = 99:60] [debug variable = out_pix]
  %3 = load i32** %2, align 8, !dbg !142          ; [#uses=1 type=i32*] [debug line = 100:2]
  call void (...)* @_ssdm_SpecArrayDimSize(i32* %3, i32 2073600) nounwind, !dbg !142 ; [debug line = 100:2]
  %4 = load i8** %1, align 8, !dbg !144           ; [#uses=1 type=i8*] [debug line = 100:46]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %4, i32 2073600) nounwind, !dbg !144 ; [debug line = 100:46]
  %5 = load i8** %1, align 8, !dbg !145           ; [#uses=1 type=i8*] [debug line = 101:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %5, i8* getelementptr inbounds ([6 x i8]* @.str4, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([6 x i8]* @.str5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str6, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 16, i32 16, i32 16, i32 16, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !145 ; [debug line = 101:1]
  %6 = load i32** %2, align 8, !dbg !146          ; [#uses=1 type=i32*] [debug line = 102:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %6, i8* getelementptr inbounds ([6 x i8]* @.str4, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([6 x i8]* @.str7, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str6, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 16, i32 16, i32 16, i32 16, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !146 ; [debug line = 102:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, i8* getelementptr inbounds ([10 x i8]* @.str8, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !147 ; [debug line = 103:1]
  call void @llvm.dbg.declare(metadata !{[7680 x i8]* %cache1}, metadata !148), !dbg !152 ; [debug line = 106:10] [debug variable = cache1]
  call void @llvm.dbg.declare(metadata !{i8* %val}, metadata !153), !dbg !154 ; [debug line = 107:10] [debug variable = val]
  call void @llvm.dbg.declare(metadata !{%union.OneToFourPixels* %fourWide}, metadata !155), !dbg !168 ; [debug line = 108:18] [debug variable = fourWide]
  call void @llvm.dbg.declare(metadata !{[9 x i8]* %surroundingPix}, metadata !169), !dbg !171 ; [debug line = 109:10] [debug variable = surroundingPix]
  %7 = getelementptr inbounds [9 x i8]* %surroundingPix, i32 0, i32 0, !dbg !172 ; [#uses=1 type=i8*] [debug line = 110:1]
  call void (...)* @_ssdm_SpecArrayPartition(i8* %7, i32 1, i8* getelementptr inbounds ([9 x i8]* @.str1, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !172 ; [debug line = 110:1]
  br label %8, !dbg !172                          ; [debug line = 110:1]

; <label>:8                                       ; preds = %0
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !173), !dbg !175 ; [debug line = 171:35] [debug variable = i]
  store i32 0, i32* %i, align 4, !dbg !176        ; [debug line = 171:40]
  br label %9, !dbg !176                          ; [debug line = 171:40]

; <label>:9                                       ; preds = %170, %8
  %10 = load i32* %i, align 4, !dbg !176          ; [#uses=1 type=i32] [debug line = 171:40]
  %11 = icmp ult i32 %10, 1080, !dbg !176         ; [#uses=1 type=i1] [debug line = 171:40]
  br i1 %11, label %12, label %173, !dbg !176     ; [debug line = 171:40]

; <label>:12                                      ; preds = %9
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([14 x i8]* @.str9, i32 0, i32 0)) nounwind, !dbg !177 ; [debug line = 171:58]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([14 x i8]* @.str9, i32 0, i32 0)) nounwind, !dbg !177 ; [debug line = 171:58]
  br label %13, !dbg !177                         ; [debug line = 171:58]

; <label>:13                                      ; preds = %12
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !179), !dbg !181 ; [debug line = 172:36] [debug variable = j]
  store i32 0, i32* %j, align 4, !dbg !182        ; [debug line = 172:41]
  br label %14, !dbg !182                         ; [debug line = 172:41]

; <label>:14                                      ; preds = %166, %13
  %15 = load i32* %j, align 4, !dbg !182          ; [#uses=1 type=i32] [debug line = 172:41]
  %16 = icmp ult i32 %15, 1920, !dbg !182         ; [#uses=1 type=i1] [debug line = 172:41]
  br i1 %16, label %17, label %169, !dbg !182     ; [debug line = 172:41]

; <label>:17                                      ; preds = %14
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([13 x i8]* @.str10, i32 0, i32 0)) nounwind, !dbg !183 ; [debug line = 172:59]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([13 x i8]* @.str10, i32 0, i32 0)) nounwind, !dbg !183 ; [debug line = 172:59]
  call void (...)* @_ssdm_op_SpecPipeline(i32 2, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !185 ; [debug line = 173:1]
  call void (...)* @_ssdm_SpecLoopFlatten(i32 1, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !186 ; [debug line = 174:1]
  %18 = load i32* %i, align 4, !dbg !187          ; [#uses=1 type=i32] [debug line = 175:2]
  %19 = mul i32 %18, 1920, !dbg !187              ; [#uses=1 type=i32] [debug line = 175:2]
  %20 = load i32* %j, align 4, !dbg !187          ; [#uses=1 type=i32] [debug line = 175:2]
  %21 = add i32 %19, %20, !dbg !187               ; [#uses=1 type=i32] [debug line = 175:2]
  %22 = zext i32 %21 to i64, !dbg !187            ; [#uses=1 type=i64] [debug line = 175:2]
  %23 = load i8** %1, align 8, !dbg !187          ; [#uses=1 type=i8*] [debug line = 175:2]
  %24 = getelementptr inbounds i8* %23, i64 %22, !dbg !187 ; [#uses=1 type=i8*] [debug line = 175:2]
  %25 = load i8* %24, align 1, !dbg !187          ; [#uses=1 type=i8] [debug line = 175:2]
  %26 = load i32* %i, align 4, !dbg !187          ; [#uses=1 type=i32] [debug line = 175:2]
  %27 = urem i32 %26, 4, !dbg !187                ; [#uses=1 type=i32] [debug line = 175:2]
  %28 = mul i32 %27, 1920, !dbg !187              ; [#uses=1 type=i32] [debug line = 175:2]
  %29 = load i32* %j, align 4, !dbg !187          ; [#uses=1 type=i32] [debug line = 175:2]
  %30 = add i32 %28, %29, !dbg !187               ; [#uses=1 type=i32] [debug line = 175:2]
  %31 = zext i32 %30 to i64, !dbg !187            ; [#uses=1 type=i64] [debug line = 175:2]
  %32 = getelementptr inbounds [7680 x i8]* %cache1, i32 0, i64 %31, !dbg !187 ; [#uses=1 type=i8*] [debug line = 175:2]
  store i8 %25, i8* %32, align 1, !dbg !187       ; [debug line = 175:2]
  %33 = load i32* %j, align 4, !dbg !188          ; [#uses=1 type=i32] [debug line = 178:5]
  %34 = icmp eq i32 %33, 0, !dbg !188             ; [#uses=1 type=i1] [debug line = 178:5]
  br i1 %34, label %42, label %35, !dbg !188      ; [debug line = 178:5]

; <label>:35                                      ; preds = %17
  %36 = load i32* %j, align 4, !dbg !188          ; [#uses=1 type=i32] [debug line = 178:5]
  %37 = icmp eq i32 %36, 1919, !dbg !188          ; [#uses=1 type=i1] [debug line = 178:5]
  br i1 %37, label %42, label %38, !dbg !188      ; [debug line = 178:5]

; <label>:38                                      ; preds = %35
  %39 = load i32* %i, align 4, !dbg !188          ; [#uses=1 type=i32] [debug line = 178:5]
  %40 = sub i32 %39, 2, !dbg !188                 ; [#uses=1 type=i32] [debug line = 178:5]
  %41 = icmp eq i32 %40, 0, !dbg !188             ; [#uses=1 type=i1] [debug line = 178:5]
  br i1 %41, label %42, label %43, !dbg !188      ; [debug line = 178:5]

; <label>:42                                      ; preds = %38, %35, %17
  store i8 0, i8* %val, align 1, !dbg !189        ; [debug line = 179:6]
  br label %142, !dbg !191                        ; [debug line = 180:5]

; <label>:43                                      ; preds = %38
  %44 = load i32* %i, align 4, !dbg !192          ; [#uses=1 type=i32] [debug line = 182:7]
  %45 = sub i32 %44, 3, !dbg !192                 ; [#uses=1 type=i32] [debug line = 182:7]
  %46 = urem i32 %45, 4, !dbg !192                ; [#uses=1 type=i32] [debug line = 182:7]
  %47 = mul i32 %46, 1920, !dbg !192              ; [#uses=1 type=i32] [debug line = 182:7]
  %48 = load i32* %j, align 4, !dbg !192          ; [#uses=1 type=i32] [debug line = 182:7]
  %49 = sub i32 %48, 1, !dbg !192                 ; [#uses=1 type=i32] [debug line = 182:7]
  %50 = add i32 %47, %49, !dbg !192               ; [#uses=1 type=i32] [debug line = 182:7]
  %51 = zext i32 %50 to i64, !dbg !192            ; [#uses=1 type=i64] [debug line = 182:7]
  %52 = getelementptr inbounds [7680 x i8]* %cache1, i32 0, i64 %51, !dbg !192 ; [#uses=1 type=i8*] [debug line = 182:7]
  %53 = load i8* %52, align 1, !dbg !192          ; [#uses=1 type=i8] [debug line = 182:7]
  %54 = getelementptr inbounds [9 x i8]* %surroundingPix, i32 0, i64 0, !dbg !192 ; [#uses=1 type=i8*] [debug line = 182:7]
  store i8 %53, i8* %54, align 1, !dbg !192       ; [debug line = 182:7]
  %55 = load i32* %i, align 4, !dbg !194          ; [#uses=1 type=i32] [debug line = 183:7]
  %56 = sub i32 %55, 3, !dbg !194                 ; [#uses=1 type=i32] [debug line = 183:7]
  %57 = urem i32 %56, 4, !dbg !194                ; [#uses=1 type=i32] [debug line = 183:7]
  %58 = mul i32 %57, 1920, !dbg !194              ; [#uses=1 type=i32] [debug line = 183:7]
  %59 = load i32* %j, align 4, !dbg !194          ; [#uses=1 type=i32] [debug line = 183:7]
  %60 = add i32 %58, %59, !dbg !194               ; [#uses=1 type=i32] [debug line = 183:7]
  %61 = zext i32 %60 to i64, !dbg !194            ; [#uses=1 type=i64] [debug line = 183:7]
  %62 = getelementptr inbounds [7680 x i8]* %cache1, i32 0, i64 %61, !dbg !194 ; [#uses=1 type=i8*] [debug line = 183:7]
  %63 = load i8* %62, align 1, !dbg !194          ; [#uses=1 type=i8] [debug line = 183:7]
  %64 = getelementptr inbounds [9 x i8]* %surroundingPix, i32 0, i64 1, !dbg !194 ; [#uses=1 type=i8*] [debug line = 183:7]
  store i8 %63, i8* %64, align 1, !dbg !194       ; [debug line = 183:7]
  %65 = load i32* %i, align 4, !dbg !195          ; [#uses=1 type=i32] [debug line = 184:7]
  %66 = sub i32 %65, 3, !dbg !195                 ; [#uses=1 type=i32] [debug line = 184:7]
  %67 = urem i32 %66, 4, !dbg !195                ; [#uses=1 type=i32] [debug line = 184:7]
  %68 = mul i32 %67, 1920, !dbg !195              ; [#uses=1 type=i32] [debug line = 184:7]
  %69 = load i32* %j, align 4, !dbg !195          ; [#uses=1 type=i32] [debug line = 184:7]
  %70 = add i32 %69, 1, !dbg !195                 ; [#uses=1 type=i32] [debug line = 184:7]
  %71 = add i32 %68, %70, !dbg !195               ; [#uses=1 type=i32] [debug line = 184:7]
  %72 = zext i32 %71 to i64, !dbg !195            ; [#uses=1 type=i64] [debug line = 184:7]
  %73 = getelementptr inbounds [7680 x i8]* %cache1, i32 0, i64 %72, !dbg !195 ; [#uses=1 type=i8*] [debug line = 184:7]
  %74 = load i8* %73, align 1, !dbg !195          ; [#uses=1 type=i8] [debug line = 184:7]
  %75 = getelementptr inbounds [9 x i8]* %surroundingPix, i32 0, i64 2, !dbg !195 ; [#uses=1 type=i8*] [debug line = 184:7]
  store i8 %74, i8* %75, align 1, !dbg !195       ; [debug line = 184:7]
  %76 = load i32* %i, align 4, !dbg !196          ; [#uses=1 type=i32] [debug line = 185:7]
  %77 = sub i32 %76, 2, !dbg !196                 ; [#uses=1 type=i32] [debug line = 185:7]
  %78 = urem i32 %77, 4, !dbg !196                ; [#uses=1 type=i32] [debug line = 185:7]
  %79 = mul i32 %78, 1920, !dbg !196              ; [#uses=1 type=i32] [debug line = 185:7]
  %80 = load i32* %j, align 4, !dbg !196          ; [#uses=1 type=i32] [debug line = 185:7]
  %81 = sub i32 %80, 1, !dbg !196                 ; [#uses=1 type=i32] [debug line = 185:7]
  %82 = add i32 %79, %81, !dbg !196               ; [#uses=1 type=i32] [debug line = 185:7]
  %83 = zext i32 %82 to i64, !dbg !196            ; [#uses=1 type=i64] [debug line = 185:7]
  %84 = getelementptr inbounds [7680 x i8]* %cache1, i32 0, i64 %83, !dbg !196 ; [#uses=1 type=i8*] [debug line = 185:7]
  %85 = load i8* %84, align 1, !dbg !196          ; [#uses=1 type=i8] [debug line = 185:7]
  %86 = getelementptr inbounds [9 x i8]* %surroundingPix, i32 0, i64 3, !dbg !196 ; [#uses=1 type=i8*] [debug line = 185:7]
  store i8 %85, i8* %86, align 1, !dbg !196       ; [debug line = 185:7]
  %87 = load i32* %i, align 4, !dbg !197          ; [#uses=1 type=i32] [debug line = 186:7]
  %88 = sub i32 %87, 2, !dbg !197                 ; [#uses=1 type=i32] [debug line = 186:7]
  %89 = urem i32 %88, 4, !dbg !197                ; [#uses=1 type=i32] [debug line = 186:7]
  %90 = mul i32 %89, 1920, !dbg !197              ; [#uses=1 type=i32] [debug line = 186:7]
  %91 = load i32* %j, align 4, !dbg !197          ; [#uses=1 type=i32] [debug line = 186:7]
  %92 = add i32 %90, %91, !dbg !197               ; [#uses=1 type=i32] [debug line = 186:7]
  %93 = zext i32 %92 to i64, !dbg !197            ; [#uses=1 type=i64] [debug line = 186:7]
  %94 = getelementptr inbounds [7680 x i8]* %cache1, i32 0, i64 %93, !dbg !197 ; [#uses=1 type=i8*] [debug line = 186:7]
  %95 = load i8* %94, align 1, !dbg !197          ; [#uses=1 type=i8] [debug line = 186:7]
  %96 = getelementptr inbounds [9 x i8]* %surroundingPix, i32 0, i64 4, !dbg !197 ; [#uses=1 type=i8*] [debug line = 186:7]
  store i8 %95, i8* %96, align 1, !dbg !197       ; [debug line = 186:7]
  %97 = load i32* %i, align 4, !dbg !198          ; [#uses=1 type=i32] [debug line = 187:7]
  %98 = sub i32 %97, 2, !dbg !198                 ; [#uses=1 type=i32] [debug line = 187:7]
  %99 = urem i32 %98, 4, !dbg !198                ; [#uses=1 type=i32] [debug line = 187:7]
  %100 = mul i32 %99, 1920, !dbg !198             ; [#uses=1 type=i32] [debug line = 187:7]
  %101 = load i32* %j, align 4, !dbg !198         ; [#uses=1 type=i32] [debug line = 187:7]
  %102 = add i32 %101, 1, !dbg !198               ; [#uses=1 type=i32] [debug line = 187:7]
  %103 = add i32 %100, %102, !dbg !198            ; [#uses=1 type=i32] [debug line = 187:7]
  %104 = zext i32 %103 to i64, !dbg !198          ; [#uses=1 type=i64] [debug line = 187:7]
  %105 = getelementptr inbounds [7680 x i8]* %cache1, i32 0, i64 %104, !dbg !198 ; [#uses=1 type=i8*] [debug line = 187:7]
  %106 = load i8* %105, align 1, !dbg !198        ; [#uses=1 type=i8] [debug line = 187:7]
  %107 = getelementptr inbounds [9 x i8]* %surroundingPix, i32 0, i64 5, !dbg !198 ; [#uses=1 type=i8*] [debug line = 187:7]
  store i8 %106, i8* %107, align 1, !dbg !198     ; [debug line = 187:7]
  %108 = load i32* %i, align 4, !dbg !199         ; [#uses=1 type=i32] [debug line = 188:7]
  %109 = sub i32 %108, 1, !dbg !199               ; [#uses=1 type=i32] [debug line = 188:7]
  %110 = urem i32 %109, 4, !dbg !199              ; [#uses=1 type=i32] [debug line = 188:7]
  %111 = mul i32 %110, 1920, !dbg !199            ; [#uses=1 type=i32] [debug line = 188:7]
  %112 = load i32* %j, align 4, !dbg !199         ; [#uses=1 type=i32] [debug line = 188:7]
  %113 = sub i32 %112, 1, !dbg !199               ; [#uses=1 type=i32] [debug line = 188:7]
  %114 = add i32 %111, %113, !dbg !199            ; [#uses=1 type=i32] [debug line = 188:7]
  %115 = zext i32 %114 to i64, !dbg !199          ; [#uses=1 type=i64] [debug line = 188:7]
  %116 = getelementptr inbounds [7680 x i8]* %cache1, i32 0, i64 %115, !dbg !199 ; [#uses=1 type=i8*] [debug line = 188:7]
  %117 = load i8* %116, align 1, !dbg !199        ; [#uses=1 type=i8] [debug line = 188:7]
  %118 = getelementptr inbounds [9 x i8]* %surroundingPix, i32 0, i64 6, !dbg !199 ; [#uses=1 type=i8*] [debug line = 188:7]
  store i8 %117, i8* %118, align 1, !dbg !199     ; [debug line = 188:7]
  %119 = load i32* %i, align 4, !dbg !200         ; [#uses=1 type=i32] [debug line = 189:7]
  %120 = sub i32 %119, 1, !dbg !200               ; [#uses=1 type=i32] [debug line = 189:7]
  %121 = urem i32 %120, 4, !dbg !200              ; [#uses=1 type=i32] [debug line = 189:7]
  %122 = mul i32 %121, 1920, !dbg !200            ; [#uses=1 type=i32] [debug line = 189:7]
  %123 = load i32* %j, align 4, !dbg !200         ; [#uses=1 type=i32] [debug line = 189:7]
  %124 = add i32 %122, %123, !dbg !200            ; [#uses=1 type=i32] [debug line = 189:7]
  %125 = zext i32 %124 to i64, !dbg !200          ; [#uses=1 type=i64] [debug line = 189:7]
  %126 = getelementptr inbounds [7680 x i8]* %cache1, i32 0, i64 %125, !dbg !200 ; [#uses=1 type=i8*] [debug line = 189:7]
  %127 = load i8* %126, align 1, !dbg !200        ; [#uses=1 type=i8] [debug line = 189:7]
  %128 = getelementptr inbounds [9 x i8]* %surroundingPix, i32 0, i64 7, !dbg !200 ; [#uses=1 type=i8*] [debug line = 189:7]
  store i8 %127, i8* %128, align 1, !dbg !200     ; [debug line = 189:7]
  %129 = load i32* %i, align 4, !dbg !201         ; [#uses=1 type=i32] [debug line = 190:7]
  %130 = sub i32 %129, 1, !dbg !201               ; [#uses=1 type=i32] [debug line = 190:7]
  %131 = urem i32 %130, 4, !dbg !201              ; [#uses=1 type=i32] [debug line = 190:7]
  %132 = mul i32 %131, 1920, !dbg !201            ; [#uses=1 type=i32] [debug line = 190:7]
  %133 = load i32* %j, align 4, !dbg !201         ; [#uses=1 type=i32] [debug line = 190:7]
  %134 = add i32 %133, 1, !dbg !201               ; [#uses=1 type=i32] [debug line = 190:7]
  %135 = add i32 %132, %134, !dbg !201            ; [#uses=1 type=i32] [debug line = 190:7]
  %136 = zext i32 %135 to i64, !dbg !201          ; [#uses=1 type=i64] [debug line = 190:7]
  %137 = getelementptr inbounds [7680 x i8]* %cache1, i32 0, i64 %136, !dbg !201 ; [#uses=1 type=i8*] [debug line = 190:7]
  %138 = load i8* %137, align 1, !dbg !201        ; [#uses=1 type=i8] [debug line = 190:7]
  %139 = getelementptr inbounds [9 x i8]* %surroundingPix, i32 0, i64 8, !dbg !201 ; [#uses=1 type=i8*] [debug line = 190:7]
  store i8 %138, i8* %139, align 1, !dbg !201     ; [debug line = 190:7]
  %140 = getelementptr inbounds [9 x i8]* %surroundingPix, i32 0, i32 0, !dbg !202 ; [#uses=1 type=i8*] [debug line = 192:13]
  %141 = call zeroext i8 @_Z14sobel_operatoriPh(i32 4, i8* %140), !dbg !202 ; [#uses=1 type=i8] [debug line = 192:13]
  store i8 %141, i8* %val, align 1, !dbg !202     ; [debug line = 192:13]
  br label %142

; <label>:142                                     ; preds = %43, %42
  call void @llvm.dbg.declare(metadata !{i32* %j1}, metadata !203), !dbg !205 ; [debug line = 194:14] [debug variable = j]
  store i32 0, i32* %j1, align 4, !dbg !206       ; [debug line = 194:19]
  br label %143, !dbg !206                        ; [debug line = 194:19]

; <label>:143                                     ; preds = %152, %142
  %144 = load i32* %j1, align 4, !dbg !206        ; [#uses=1 type=i32] [debug line = 194:19]
  %145 = icmp slt i32 %144, 4, !dbg !206          ; [#uses=1 type=i1] [debug line = 194:19]
  br i1 %145, label %146, label %155, !dbg !206   ; [debug line = 194:19]

; <label>:146                                     ; preds = %143
  %147 = load i8* %val, align 1, !dbg !207        ; [#uses=1 type=i8] [debug line = 195:6]
  %148 = load i32* %j1, align 4, !dbg !207        ; [#uses=1 type=i32] [debug line = 195:6]
  %149 = sext i32 %148 to i64, !dbg !207          ; [#uses=1 type=i64] [debug line = 195:6]
  %150 = bitcast %union.OneToFourPixels* %fourWide to [4 x i8]*, !dbg !207 ; [#uses=1 type=[4 x i8]*] [debug line = 195:6]
  %151 = getelementptr inbounds [4 x i8]* %150, i32 0, i64 %149, !dbg !207 ; [#uses=1 type=i8*] [debug line = 195:6]
  store i8 %147, i8* %151, align 1, !dbg !207     ; [debug line = 195:6]
  br label %152, !dbg !207                        ; [debug line = 195:6]

; <label>:152                                     ; preds = %146
  %153 = load i32* %j1, align 4, !dbg !208        ; [#uses=1 type=i32] [debug line = 194:28]
  %154 = add nsw i32 %153, 1, !dbg !208           ; [#uses=1 type=i32] [debug line = 194:28]
  store i32 %154, i32* %j1, align 4, !dbg !208    ; [debug line = 194:28]
  br label %143, !dbg !208                        ; [debug line = 194:28]

; <label>:155                                     ; preds = %143
  %156 = bitcast %union.OneToFourPixels* %fourWide to i32*, !dbg !209 ; [#uses=1 type=i32*] [debug line = 196:5]
  %157 = load i32* %156, align 4, !dbg !209       ; [#uses=1 type=i32] [debug line = 196:5]
  %158 = load i32* %i, align 4, !dbg !209         ; [#uses=1 type=i32] [debug line = 196:5]
  %159 = sub i32 %158, 2, !dbg !209               ; [#uses=1 type=i32] [debug line = 196:5]
  %160 = mul i32 %159, 1920, !dbg !209            ; [#uses=1 type=i32] [debug line = 196:5]
  %161 = load i32* %j, align 4, !dbg !209         ; [#uses=1 type=i32] [debug line = 196:5]
  %162 = add i32 %160, %161, !dbg !209            ; [#uses=1 type=i32] [debug line = 196:5]
  %163 = zext i32 %162 to i64, !dbg !209          ; [#uses=1 type=i64] [debug line = 196:5]
  %164 = load i32** %2, align 8, !dbg !209        ; [#uses=1 type=i32*] [debug line = 196:5]
  %165 = getelementptr inbounds i32* %164, i64 %163, !dbg !209 ; [#uses=1 type=i32*] [debug line = 196:5]
  store i32 %157, i32* %165, align 4, !dbg !209   ; [debug line = 196:5]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([13 x i8]* @.str10, i32 0, i32 0)) nounwind, !dbg !210 ; [debug line = 199:5]
  br label %166, !dbg !210                        ; [debug line = 199:5]

; <label>:166                                     ; preds = %155
  %167 = load i32* %j, align 4, !dbg !211         ; [#uses=1 type=i32] [debug line = 172:53]
  %168 = add i32 %167, 1, !dbg !211               ; [#uses=1 type=i32] [debug line = 172:53]
  store i32 %168, i32* %j, align 4, !dbg !211     ; [debug line = 172:53]
  br label %14, !dbg !211                         ; [debug line = 172:53]

; <label>:169                                     ; preds = %14
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([14 x i8]* @.str9, i32 0, i32 0)) nounwind, !dbg !212 ; [debug line = 200:4]
  br label %170, !dbg !212                        ; [debug line = 200:4]

; <label>:170                                     ; preds = %169
  %171 = load i32* %i, align 4, !dbg !213         ; [#uses=1 type=i32] [debug line = 171:52]
  %172 = add i32 %171, 1, !dbg !213               ; [#uses=1 type=i32] [debug line = 171:52]
  store i32 %172, i32* %i, align 4, !dbg !213     ; [debug line = 171:52]
  br label %9, !dbg !213                          ; [debug line = 171:52]

; <label>:173                                     ; preds = %9
  br label %174, !dbg !214                        ; [debug line = 200:4]

; <label>:174                                     ; preds = %173
  call void @llvm.dbg.declare(metadata !{i32* %i2}, metadata !215), !dbg !217 ; [debug line = 202:31] [debug variable = i]
  store i32 0, i32* %i2, align 4, !dbg !218       ; [debug line = 202:36]
  br label %175, !dbg !218                        ; [debug line = 202:36]

; <label>:175                                     ; preds = %321, %174
  %176 = load i32* %i2, align 4, !dbg !218        ; [#uses=1 type=i32] [debug line = 202:36]
  %177 = icmp ult i32 %176, 3, !dbg !218          ; [#uses=1 type=i1] [debug line = 202:36]
  br i1 %177, label %178, label %324, !dbg !218   ; [debug line = 202:36]

; <label>:178                                     ; preds = %175
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([10 x i8]* @.str11, i32 0, i32 0)) nounwind, !dbg !219 ; [debug line = 202:51]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([10 x i8]* @.str11, i32 0, i32 0)) nounwind, !dbg !219 ; [debug line = 202:51]
  br label %179, !dbg !219                        ; [debug line = 202:51]

; <label>:179                                     ; preds = %178
  call void @llvm.dbg.declare(metadata !{i32* %j3}, metadata !221), !dbg !223 ; [debug line = 203:33] [debug variable = j]
  store i32 0, i32* %j3, align 4, !dbg !224       ; [debug line = 203:38]
  br label %180, !dbg !224                        ; [debug line = 203:38]

; <label>:180                                     ; preds = %317, %179
  %181 = load i32* %j3, align 4, !dbg !224        ; [#uses=1 type=i32] [debug line = 203:38]
  %182 = icmp ult i32 %181, 1920, !dbg !224       ; [#uses=1 type=i1] [debug line = 203:38]
  br i1 %182, label %183, label %320, !dbg !224   ; [debug line = 203:38]

; <label>:183                                     ; preds = %180
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([11 x i8]* @.str12, i32 0, i32 0)) nounwind, !dbg !225 ; [debug line = 203:56]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([11 x i8]* @.str12, i32 0, i32 0)) nounwind, !dbg !225 ; [debug line = 203:56]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !227 ; [debug line = 204:1]
  %184 = load i32* %j3, align 4, !dbg !228        ; [#uses=1 type=i32] [debug line = 205:2]
  %185 = icmp eq i32 %184, 0, !dbg !228           ; [#uses=1 type=i1] [debug line = 205:2]
  br i1 %185, label %193, label %186, !dbg !228   ; [debug line = 205:2]

; <label>:186                                     ; preds = %183
  %187 = load i32* %j3, align 4, !dbg !228        ; [#uses=1 type=i32] [debug line = 205:2]
  %188 = icmp eq i32 %187, 1919, !dbg !228        ; [#uses=1 type=i1] [debug line = 205:2]
  br i1 %188, label %193, label %189, !dbg !228   ; [debug line = 205:2]

; <label>:189                                     ; preds = %186
  %190 = load i32* %i2, align 4, !dbg !228        ; [#uses=1 type=i32] [debug line = 205:2]
  %191 = sub i32 %190, 2, !dbg !228               ; [#uses=1 type=i32] [debug line = 205:2]
  %192 = icmp eq i32 %191, 1079, !dbg !228        ; [#uses=1 type=i1] [debug line = 205:2]
  br i1 %192, label %193, label %194, !dbg !228   ; [debug line = 205:2]

; <label>:193                                     ; preds = %189, %186, %183
  store i8 0, i8* %val, align 1, !dbg !229        ; [debug line = 206:5]
  br label %293, !dbg !231                        ; [debug line = 207:4]

; <label>:194                                     ; preds = %189
  %195 = load i32* %i2, align 4, !dbg !232        ; [#uses=1 type=i32] [debug line = 209:5]
  %196 = sub i32 %195, 3, !dbg !232               ; [#uses=1 type=i32] [debug line = 209:5]
  %197 = urem i32 %196, 4, !dbg !232              ; [#uses=1 type=i32] [debug line = 209:5]
  %198 = mul i32 %197, 1920, !dbg !232            ; [#uses=1 type=i32] [debug line = 209:5]
  %199 = load i32* %j3, align 4, !dbg !232        ; [#uses=1 type=i32] [debug line = 209:5]
  %200 = sub i32 %199, 1, !dbg !232               ; [#uses=1 type=i32] [debug line = 209:5]
  %201 = add i32 %198, %200, !dbg !232            ; [#uses=1 type=i32] [debug line = 209:5]
  %202 = zext i32 %201 to i64, !dbg !232          ; [#uses=1 type=i64] [debug line = 209:5]
  %203 = getelementptr inbounds [7680 x i8]* %cache1, i32 0, i64 %202, !dbg !232 ; [#uses=1 type=i8*] [debug line = 209:5]
  %204 = load i8* %203, align 1, !dbg !232        ; [#uses=1 type=i8] [debug line = 209:5]
  %205 = getelementptr inbounds [9 x i8]* %surroundingPix, i32 0, i64 0, !dbg !232 ; [#uses=1 type=i8*] [debug line = 209:5]
  store i8 %204, i8* %205, align 1, !dbg !232     ; [debug line = 209:5]
  %206 = load i32* %i2, align 4, !dbg !234        ; [#uses=1 type=i32] [debug line = 210:5]
  %207 = sub i32 %206, 3, !dbg !234               ; [#uses=1 type=i32] [debug line = 210:5]
  %208 = urem i32 %207, 4, !dbg !234              ; [#uses=1 type=i32] [debug line = 210:5]
  %209 = mul i32 %208, 1920, !dbg !234            ; [#uses=1 type=i32] [debug line = 210:5]
  %210 = load i32* %j3, align 4, !dbg !234        ; [#uses=1 type=i32] [debug line = 210:5]
  %211 = add i32 %209, %210, !dbg !234            ; [#uses=1 type=i32] [debug line = 210:5]
  %212 = zext i32 %211 to i64, !dbg !234          ; [#uses=1 type=i64] [debug line = 210:5]
  %213 = getelementptr inbounds [7680 x i8]* %cache1, i32 0, i64 %212, !dbg !234 ; [#uses=1 type=i8*] [debug line = 210:5]
  %214 = load i8* %213, align 1, !dbg !234        ; [#uses=1 type=i8] [debug line = 210:5]
  %215 = getelementptr inbounds [9 x i8]* %surroundingPix, i32 0, i64 1, !dbg !234 ; [#uses=1 type=i8*] [debug line = 210:5]
  store i8 %214, i8* %215, align 1, !dbg !234     ; [debug line = 210:5]
  %216 = load i32* %i2, align 4, !dbg !235        ; [#uses=1 type=i32] [debug line = 211:5]
  %217 = sub i32 %216, 3, !dbg !235               ; [#uses=1 type=i32] [debug line = 211:5]
  %218 = urem i32 %217, 4, !dbg !235              ; [#uses=1 type=i32] [debug line = 211:5]
  %219 = mul i32 %218, 1920, !dbg !235            ; [#uses=1 type=i32] [debug line = 211:5]
  %220 = load i32* %j3, align 4, !dbg !235        ; [#uses=1 type=i32] [debug line = 211:5]
  %221 = add i32 %220, 1, !dbg !235               ; [#uses=1 type=i32] [debug line = 211:5]
  %222 = add i32 %219, %221, !dbg !235            ; [#uses=1 type=i32] [debug line = 211:5]
  %223 = zext i32 %222 to i64, !dbg !235          ; [#uses=1 type=i64] [debug line = 211:5]
  %224 = getelementptr inbounds [7680 x i8]* %cache1, i32 0, i64 %223, !dbg !235 ; [#uses=1 type=i8*] [debug line = 211:5]
  %225 = load i8* %224, align 1, !dbg !235        ; [#uses=1 type=i8] [debug line = 211:5]
  %226 = getelementptr inbounds [9 x i8]* %surroundingPix, i32 0, i64 2, !dbg !235 ; [#uses=1 type=i8*] [debug line = 211:5]
  store i8 %225, i8* %226, align 1, !dbg !235     ; [debug line = 211:5]
  %227 = load i32* %i2, align 4, !dbg !236        ; [#uses=1 type=i32] [debug line = 212:5]
  %228 = sub i32 %227, 2, !dbg !236               ; [#uses=1 type=i32] [debug line = 212:5]
  %229 = urem i32 %228, 4, !dbg !236              ; [#uses=1 type=i32] [debug line = 212:5]
  %230 = mul i32 %229, 1920, !dbg !236            ; [#uses=1 type=i32] [debug line = 212:5]
  %231 = load i32* %j3, align 4, !dbg !236        ; [#uses=1 type=i32] [debug line = 212:5]
  %232 = sub i32 %231, 1, !dbg !236               ; [#uses=1 type=i32] [debug line = 212:5]
  %233 = add i32 %230, %232, !dbg !236            ; [#uses=1 type=i32] [debug line = 212:5]
  %234 = zext i32 %233 to i64, !dbg !236          ; [#uses=1 type=i64] [debug line = 212:5]
  %235 = getelementptr inbounds [7680 x i8]* %cache1, i32 0, i64 %234, !dbg !236 ; [#uses=1 type=i8*] [debug line = 212:5]
  %236 = load i8* %235, align 1, !dbg !236        ; [#uses=1 type=i8] [debug line = 212:5]
  %237 = getelementptr inbounds [9 x i8]* %surroundingPix, i32 0, i64 3, !dbg !236 ; [#uses=1 type=i8*] [debug line = 212:5]
  store i8 %236, i8* %237, align 1, !dbg !236     ; [debug line = 212:5]
  %238 = load i32* %i2, align 4, !dbg !237        ; [#uses=1 type=i32] [debug line = 213:5]
  %239 = sub i32 %238, 2, !dbg !237               ; [#uses=1 type=i32] [debug line = 213:5]
  %240 = urem i32 %239, 4, !dbg !237              ; [#uses=1 type=i32] [debug line = 213:5]
  %241 = mul i32 %240, 1920, !dbg !237            ; [#uses=1 type=i32] [debug line = 213:5]
  %242 = load i32* %j3, align 4, !dbg !237        ; [#uses=1 type=i32] [debug line = 213:5]
  %243 = add i32 %241, %242, !dbg !237            ; [#uses=1 type=i32] [debug line = 213:5]
  %244 = zext i32 %243 to i64, !dbg !237          ; [#uses=1 type=i64] [debug line = 213:5]
  %245 = getelementptr inbounds [7680 x i8]* %cache1, i32 0, i64 %244, !dbg !237 ; [#uses=1 type=i8*] [debug line = 213:5]
  %246 = load i8* %245, align 1, !dbg !237        ; [#uses=1 type=i8] [debug line = 213:5]
  %247 = getelementptr inbounds [9 x i8]* %surroundingPix, i32 0, i64 4, !dbg !237 ; [#uses=1 type=i8*] [debug line = 213:5]
  store i8 %246, i8* %247, align 1, !dbg !237     ; [debug line = 213:5]
  %248 = load i32* %i2, align 4, !dbg !238        ; [#uses=1 type=i32] [debug line = 214:5]
  %249 = sub i32 %248, 2, !dbg !238               ; [#uses=1 type=i32] [debug line = 214:5]
  %250 = urem i32 %249, 4, !dbg !238              ; [#uses=1 type=i32] [debug line = 214:5]
  %251 = mul i32 %250, 1920, !dbg !238            ; [#uses=1 type=i32] [debug line = 214:5]
  %252 = load i32* %j3, align 4, !dbg !238        ; [#uses=1 type=i32] [debug line = 214:5]
  %253 = add i32 %252, 1, !dbg !238               ; [#uses=1 type=i32] [debug line = 214:5]
  %254 = add i32 %251, %253, !dbg !238            ; [#uses=1 type=i32] [debug line = 214:5]
  %255 = zext i32 %254 to i64, !dbg !238          ; [#uses=1 type=i64] [debug line = 214:5]
  %256 = getelementptr inbounds [7680 x i8]* %cache1, i32 0, i64 %255, !dbg !238 ; [#uses=1 type=i8*] [debug line = 214:5]
  %257 = load i8* %256, align 1, !dbg !238        ; [#uses=1 type=i8] [debug line = 214:5]
  %258 = getelementptr inbounds [9 x i8]* %surroundingPix, i32 0, i64 5, !dbg !238 ; [#uses=1 type=i8*] [debug line = 214:5]
  store i8 %257, i8* %258, align 1, !dbg !238     ; [debug line = 214:5]
  %259 = load i32* %i2, align 4, !dbg !239        ; [#uses=1 type=i32] [debug line = 215:5]
  %260 = sub i32 %259, 1, !dbg !239               ; [#uses=1 type=i32] [debug line = 215:5]
  %261 = urem i32 %260, 4, !dbg !239              ; [#uses=1 type=i32] [debug line = 215:5]
  %262 = mul i32 %261, 1920, !dbg !239            ; [#uses=1 type=i32] [debug line = 215:5]
  %263 = load i32* %j3, align 4, !dbg !239        ; [#uses=1 type=i32] [debug line = 215:5]
  %264 = sub i32 %263, 1, !dbg !239               ; [#uses=1 type=i32] [debug line = 215:5]
  %265 = add i32 %262, %264, !dbg !239            ; [#uses=1 type=i32] [debug line = 215:5]
  %266 = zext i32 %265 to i64, !dbg !239          ; [#uses=1 type=i64] [debug line = 215:5]
  %267 = getelementptr inbounds [7680 x i8]* %cache1, i32 0, i64 %266, !dbg !239 ; [#uses=1 type=i8*] [debug line = 215:5]
  %268 = load i8* %267, align 1, !dbg !239        ; [#uses=1 type=i8] [debug line = 215:5]
  %269 = getelementptr inbounds [9 x i8]* %surroundingPix, i32 0, i64 6, !dbg !239 ; [#uses=1 type=i8*] [debug line = 215:5]
  store i8 %268, i8* %269, align 1, !dbg !239     ; [debug line = 215:5]
  %270 = load i32* %i2, align 4, !dbg !240        ; [#uses=1 type=i32] [debug line = 216:5]
  %271 = sub i32 %270, 1, !dbg !240               ; [#uses=1 type=i32] [debug line = 216:5]
  %272 = urem i32 %271, 4, !dbg !240              ; [#uses=1 type=i32] [debug line = 216:5]
  %273 = mul i32 %272, 1920, !dbg !240            ; [#uses=1 type=i32] [debug line = 216:5]
  %274 = load i32* %j3, align 4, !dbg !240        ; [#uses=1 type=i32] [debug line = 216:5]
  %275 = add i32 %273, %274, !dbg !240            ; [#uses=1 type=i32] [debug line = 216:5]
  %276 = zext i32 %275 to i64, !dbg !240          ; [#uses=1 type=i64] [debug line = 216:5]
  %277 = getelementptr inbounds [7680 x i8]* %cache1, i32 0, i64 %276, !dbg !240 ; [#uses=1 type=i8*] [debug line = 216:5]
  %278 = load i8* %277, align 1, !dbg !240        ; [#uses=1 type=i8] [debug line = 216:5]
  %279 = getelementptr inbounds [9 x i8]* %surroundingPix, i32 0, i64 7, !dbg !240 ; [#uses=1 type=i8*] [debug line = 216:5]
  store i8 %278, i8* %279, align 1, !dbg !240     ; [debug line = 216:5]
  %280 = load i32* %i2, align 4, !dbg !241        ; [#uses=1 type=i32] [debug line = 217:5]
  %281 = sub i32 %280, 1, !dbg !241               ; [#uses=1 type=i32] [debug line = 217:5]
  %282 = urem i32 %281, 4, !dbg !241              ; [#uses=1 type=i32] [debug line = 217:5]
  %283 = mul i32 %282, 1920, !dbg !241            ; [#uses=1 type=i32] [debug line = 217:5]
  %284 = load i32* %j3, align 4, !dbg !241        ; [#uses=1 type=i32] [debug line = 217:5]
  %285 = add i32 %284, 1, !dbg !241               ; [#uses=1 type=i32] [debug line = 217:5]
  %286 = add i32 %283, %285, !dbg !241            ; [#uses=1 type=i32] [debug line = 217:5]
  %287 = zext i32 %286 to i64, !dbg !241          ; [#uses=1 type=i64] [debug line = 217:5]
  %288 = getelementptr inbounds [7680 x i8]* %cache1, i32 0, i64 %287, !dbg !241 ; [#uses=1 type=i8*] [debug line = 217:5]
  %289 = load i8* %288, align 1, !dbg !241        ; [#uses=1 type=i8] [debug line = 217:5]
  %290 = getelementptr inbounds [9 x i8]* %surroundingPix, i32 0, i64 8, !dbg !241 ; [#uses=1 type=i8*] [debug line = 217:5]
  store i8 %289, i8* %290, align 1, !dbg !241     ; [debug line = 217:5]
  %291 = getelementptr inbounds [9 x i8]* %surroundingPix, i32 0, i32 0, !dbg !242 ; [#uses=1 type=i8*] [debug line = 219:11]
  %292 = call zeroext i8 @_Z14sobel_operatoriPh(i32 4, i8* %291), !dbg !242 ; [#uses=1 type=i8] [debug line = 219:11]
  store i8 %292, i8* %val, align 1, !dbg !242     ; [debug line = 219:11]
  br label %293

; <label>:293                                     ; preds = %194, %193
  call void @llvm.dbg.declare(metadata !{i32* %j4}, metadata !243), !dbg !245 ; [debug line = 221:13] [debug variable = j]
  store i32 0, i32* %j4, align 4, !dbg !246       ; [debug line = 221:18]
  br label %294, !dbg !246                        ; [debug line = 221:18]

; <label>:294                                     ; preds = %303, %293
  %295 = load i32* %j4, align 4, !dbg !246        ; [#uses=1 type=i32] [debug line = 221:18]
  %296 = icmp slt i32 %295, 4, !dbg !246          ; [#uses=1 type=i1] [debug line = 221:18]
  br i1 %296, label %297, label %306, !dbg !246   ; [debug line = 221:18]

; <label>:297                                     ; preds = %294
  %298 = load i8* %val, align 1, !dbg !247        ; [#uses=1 type=i8] [debug line = 222:5]
  %299 = load i32* %j4, align 4, !dbg !247        ; [#uses=1 type=i32] [debug line = 222:5]
  %300 = sext i32 %299 to i64, !dbg !247          ; [#uses=1 type=i64] [debug line = 222:5]
  %301 = bitcast %union.OneToFourPixels* %fourWide to [4 x i8]*, !dbg !247 ; [#uses=1 type=[4 x i8]*] [debug line = 222:5]
  %302 = getelementptr inbounds [4 x i8]* %301, i32 0, i64 %300, !dbg !247 ; [#uses=1 type=i8*] [debug line = 222:5]
  store i8 %298, i8* %302, align 1, !dbg !247     ; [debug line = 222:5]
  br label %303, !dbg !247                        ; [debug line = 222:5]

; <label>:303                                     ; preds = %297
  %304 = load i32* %j4, align 4, !dbg !248        ; [#uses=1 type=i32] [debug line = 221:27]
  %305 = add nsw i32 %304, 1, !dbg !248           ; [#uses=1 type=i32] [debug line = 221:27]
  store i32 %305, i32* %j4, align 4, !dbg !248    ; [debug line = 221:27]
  br label %294, !dbg !248                        ; [debug line = 221:27]

; <label>:306                                     ; preds = %294
  %307 = bitcast %union.OneToFourPixels* %fourWide to i32*, !dbg !249 ; [#uses=1 type=i32*] [debug line = 223:4]
  %308 = load i32* %307, align 4, !dbg !249       ; [#uses=1 type=i32] [debug line = 223:4]
  %309 = load i32* %i2, align 4, !dbg !249        ; [#uses=1 type=i32] [debug line = 223:4]
  %310 = sub i32 %309, 2, !dbg !249               ; [#uses=1 type=i32] [debug line = 223:4]
  %311 = mul i32 %310, 1920, !dbg !249            ; [#uses=1 type=i32] [debug line = 223:4]
  %312 = load i32* %j3, align 4, !dbg !249        ; [#uses=1 type=i32] [debug line = 223:4]
  %313 = add i32 %311, %312, !dbg !249            ; [#uses=1 type=i32] [debug line = 223:4]
  %314 = zext i32 %313 to i64, !dbg !249          ; [#uses=1 type=i64] [debug line = 223:4]
  %315 = load i32** %2, align 8, !dbg !249        ; [#uses=1 type=i32*] [debug line = 223:4]
  %316 = getelementptr inbounds i32* %315, i64 %314, !dbg !249 ; [#uses=1 type=i32*] [debug line = 223:4]
  store i32 %308, i32* %316, align 4, !dbg !249   ; [debug line = 223:4]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([11 x i8]* @.str12, i32 0, i32 0)) nounwind, !dbg !250 ; [debug line = 225:3]
  br label %317, !dbg !250                        ; [debug line = 225:3]

; <label>:317                                     ; preds = %306
  %318 = load i32* %j3, align 4, !dbg !251        ; [#uses=1 type=i32] [debug line = 203:50]
  %319 = add i32 %318, 1, !dbg !251               ; [#uses=1 type=i32] [debug line = 203:50]
  store i32 %319, i32* %j3, align 4, !dbg !251    ; [debug line = 203:50]
  br label %180, !dbg !251                        ; [debug line = 203:50]

; <label>:320                                     ; preds = %180
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([10 x i8]* @.str11, i32 0, i32 0)) nounwind, !dbg !252 ; [debug line = 226:2]
  br label %321, !dbg !252                        ; [debug line = 226:2]

; <label>:321                                     ; preds = %320
  %322 = load i32* %i2, align 4, !dbg !253        ; [#uses=1 type=i32] [debug line = 202:45]
  %323 = add i32 %322, 1, !dbg !253               ; [#uses=1 type=i32] [debug line = 202:45]
  store i32 %323, i32* %i2, align 4, !dbg !253    ; [debug line = 202:45]
  br label %175, !dbg !253                        ; [debug line = 202:45]

; <label>:324                                     ; preds = %175
  ret void, !dbg !254                             ; [debug line = 229:1]
}

; [#uses=2]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

; [#uses=3]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=4]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=1]
declare void @_ssdm_SpecLoopFlatten(...) nounwind

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!34, !41, !46}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"/home/gabriel/Documents/INF3610/HDMI_3610/3610_4/1490679_1771119/sobellab4/solution1/.autopilot/db/Sobel.pragma.2.cpp", metadata !"/home/gabriel/Documents/INF3610/HDMI_3610/3610_4/1490679_1771119", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !25} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !17, metadata !22}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"sobel_operator", metadata !"sobel_operator", metadata !"_Z14sobel_operatoriPh", metadata !6, i32 30, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8 (i32, i8*)* @_Z14sobel_operatoriPh, null, null, metadata !15, i32 31} ; [ DW_TAG_subprogram ]
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
!17 = metadata !{i32 786478, i32 0, metadata !6, metadata !"sobel_filter", metadata !"sobel_filter", metadata !"_Z12sobel_filterPhPj", metadata !6, i32 99, metadata !18, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i32*)* @_Z12sobel_filterPhPj, null, null, metadata !15, i32 100} ; [ DW_TAG_subprogram ]
!18 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !19, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!19 = metadata !{null, metadata !14, metadata !20}
!20 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !21} ; [ DW_TAG_pointer_type ]
!21 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!22 = metadata !{i32 786478, i32 0, metadata !6, metadata !"getVal", metadata !"getVal", metadata !"_ZL6getValiiiiPh", metadata !6, i32 11, metadata !23, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8 (i32, i32, i32, i32, i8*)* @_ZL6getValiiiiPh, null, null, metadata !15, i32 12} ; [ DW_TAG_subprogram ]
!23 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !24, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!24 = metadata !{metadata !9, metadata !13, metadata !13, metadata !13, metadata !13, metadata !14}
!25 = metadata !{metadata !26}
!26 = metadata !{metadata !27, metadata !33}
!27 = metadata !{i32 786484, i32 0, metadata !5, metadata !"x_op", metadata !"x_op", metadata !"", metadata !6, i32 54, metadata !28, i32 1, i32 1, [3 x [3 x i8]]* @_ZZ14sobel_operatoriPhE4x_op} ; [ DW_TAG_variable ]
!28 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 72, i64 8, i32 0, i32 0, metadata !29, metadata !31, i32 0, i32 0} ; [ DW_TAG_array_type ]
!29 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_const_type ]
!30 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!31 = metadata !{metadata !32, metadata !32}
!32 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ]
!33 = metadata !{i32 786484, i32 0, metadata !5, metadata !"y_op", metadata !"y_op", metadata !"", metadata !6, i32 59, metadata !28, i32 1, i32 1, [3 x [3 x i8]]* @_ZZ14sobel_operatoriPhE4y_op} ; [ DW_TAG_variable ]
!34 = metadata !{i8 (i32, i8*)* @_Z14sobel_operatoriPh, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40}
!35 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 1}
!36 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!37 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"uint8_t*"}
!38 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const", metadata !""}
!39 = metadata !{metadata !"kernel_arg_name", metadata !"fullIndex", metadata !"image"}
!40 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!41 = metadata !{void (i8*, i32*)* @_Z12sobel_filterPhPj, metadata !42, metadata !36, metadata !43, metadata !44, metadata !45, metadata !40}
!42 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!43 = metadata !{metadata !"kernel_arg_type", metadata !"uint8_t*", metadata !"uint*"}
!44 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!45 = metadata !{metadata !"kernel_arg_name", metadata !"inter_pix", metadata !"out_pix"}
!46 = metadata !{i8 (i32, i32, i32, i32, i8*)* @_ZL6getValiiiiPh, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !40}
!47 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 1}
!48 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!49 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"uint8_t*"}
!50 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!51 = metadata !{metadata !"kernel_arg_name", metadata !"index", metadata !"xDiff", metadata !"yDiff", metadata !"img_width", metadata !"Y"}
!52 = metadata !{i32 786689, metadata !5, metadata !"fullIndex", metadata !6, i32 16777246, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!53 = metadata !{i32 30, i32 34, metadata !5, null}
!54 = metadata !{i32 786689, metadata !5, metadata !"image", metadata !6, i32 33554462, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!55 = metadata !{i32 30, i32 55, metadata !5, null}
!56 = metadata !{i32 32, i32 1, metadata !57, null}
!57 = metadata !{i32 786443, metadata !5, i32 31, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!58 = metadata !{i32 786688, metadata !57, metadata !"x_weightA", metadata !6, i32 46, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!59 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 288, i64 32, i32 0, i32 0, metadata !13, metadata !60, i32 0, i32 0} ; [ DW_TAG_array_type ]
!60 = metadata !{metadata !61}
!61 = metadata !{i32 786465, i64 0, i64 8}        ; [ DW_TAG_subrange_type ]
!62 = metadata !{i32 46, i32 6, metadata !57, null}
!63 = metadata !{i32 47, i32 1, metadata !57, null}
!64 = metadata !{i32 786688, metadata !57, metadata !"y_weightA", metadata !6, i32 48, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!65 = metadata !{i32 48, i32 6, metadata !57, null}
!66 = metadata !{i32 49, i32 1, metadata !57, null}
!67 = metadata !{i32 786688, metadata !57, metadata !"edge_weight", metadata !6, i32 51, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!68 = metadata !{i32 51, i32 11, metadata !57, null}
!69 = metadata !{i32 786688, metadata !57, metadata !"edge_val", metadata !6, i32 52, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!70 = metadata !{i32 52, i32 10, metadata !57, null}
!71 = metadata !{i32 57, i32 1, metadata !57, null}
!72 = metadata !{i32 62, i32 1, metadata !57, null}
!73 = metadata !{i32 786688, metadata !74, metadata !"i", metadata !6, i32 66, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!74 = metadata !{i32 786443, metadata !57, i32 66, i32 2, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!75 = metadata !{i32 66, i32 11, metadata !74, null}
!76 = metadata !{i32 66, i32 16, metadata !74, null}
!77 = metadata !{i32 66, i32 31, metadata !78, null}
!78 = metadata !{i32 786443, metadata !74, i32 66, i32 30, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!79 = metadata !{i32 67, i32 1, metadata !78, null}
!80 = metadata !{i32 786688, metadata !81, metadata !"j", metadata !6, i32 68, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!81 = metadata !{i32 786443, metadata !78, i32 68, i32 2, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!82 = metadata !{i32 68, i32 11, metadata !81, null}
!83 = metadata !{i32 68, i32 16, metadata !81, null}
!84 = metadata !{i32 70, i32 25, metadata !85, null}
!85 = metadata !{i32 786443, metadata !81, i32 68, i32 30, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!86 = metadata !{i32 73, i32 25, metadata !85, null}
!87 = metadata !{i32 74, i32 3, metadata !85, null}
!88 = metadata !{i32 68, i32 25, metadata !81, null}
!89 = metadata !{i32 75, i32 2, metadata !78, null}
!90 = metadata !{i32 66, i32 25, metadata !74, null}
!91 = metadata !{i32 786688, metadata !57, metadata !"x_weight", metadata !6, i32 77, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!92 = metadata !{i32 77, i32 6, metadata !57, null}
!93 = metadata !{i32 77, i32 18, metadata !57, null}
!94 = metadata !{i32 786688, metadata !57, metadata !"y_weight", metadata !6, i32 78, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!95 = metadata !{i32 78, i32 6, metadata !57, null}
!96 = metadata !{i32 78, i32 18, metadata !57, null}
!97 = metadata !{i32 786688, metadata !98, metadata !"i", metadata !6, i32 79, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!98 = metadata !{i32 786443, metadata !57, i32 79, i32 2, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!99 = metadata !{i32 79, i32 11, metadata !98, null}
!100 = metadata !{i32 79, i32 16, metadata !98, null}
!101 = metadata !{i32 79, i32 31, metadata !102, null}
!102 = metadata !{i32 786443, metadata !98, i32 79, i32 30, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!103 = metadata !{i32 80, i32 1, metadata !102, null}
!104 = metadata !{i32 81, i32 2, metadata !102, null}
!105 = metadata !{i32 82, i32 3, metadata !102, null}
!106 = metadata !{i32 83, i32 2, metadata !102, null}
!107 = metadata !{i32 79, i32 25, metadata !98, null}
!108 = metadata !{i32 85, i32 2, metadata !57, null}
!109 = metadata !{i32 87, i32 2, metadata !57, null}
!110 = metadata !{i32 90, i32 2, metadata !57, null}
!111 = metadata !{i32 91, i32 3, metadata !57, null}
!112 = metadata !{i32 92, i32 7, metadata !57, null}
!113 = metadata !{i32 93, i32 3, metadata !57, null}
!114 = metadata !{i32 95, i32 2, metadata !57, null}
!115 = metadata !{i32 786689, metadata !22, metadata !"index", metadata !6, i32 16777227, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!116 = metadata !{i32 11, i32 34, metadata !22, null}
!117 = metadata !{i32 786689, metadata !22, metadata !"xDiff", metadata !6, i32 33554443, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!118 = metadata !{i32 11, i32 45, metadata !22, null}
!119 = metadata !{i32 786689, metadata !22, metadata !"yDiff", metadata !6, i32 50331659, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!120 = metadata !{i32 11, i32 56, metadata !22, null}
!121 = metadata !{i32 786689, metadata !22, metadata !"img_width", metadata !6, i32 67108875, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!122 = metadata !{i32 11, i32 67, metadata !22, null}
!123 = metadata !{i32 786689, metadata !22, metadata !"Y", metadata !6, i32 83886091, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!124 = metadata !{i32 11, i32 88, metadata !22, null}
!125 = metadata !{i32 786688, metadata !126, metadata !"fullIndex", metadata !6, i32 13, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!126 = metadata !{i32 786443, metadata !22, i32 12, i32 1, metadata !6, i32 22} ; [ DW_TAG_lexical_block ]
!127 = metadata !{i32 13, i32 6, metadata !126, null}
!128 = metadata !{i32 13, i32 55, metadata !126, null}
!129 = metadata !{i32 14, i32 2, metadata !126, null}
!130 = metadata !{i32 17, i32 3, metadata !131, null}
!131 = metadata !{i32 786443, metadata !126, i32 15, i32 2, metadata !6, i32 23} ; [ DW_TAG_lexical_block ]
!132 = metadata !{i32 18, i32 2, metadata !131, null}
!133 = metadata !{i32 19, i32 7, metadata !126, null}
!134 = metadata !{i32 22, i32 3, metadata !135, null}
!135 = metadata !{i32 786443, metadata !126, i32 20, i32 2, metadata !6, i32 24} ; [ DW_TAG_lexical_block ]
!136 = metadata !{i32 23, i32 2, metadata !135, null}
!137 = metadata !{i32 25, i32 2, metadata !126, null}
!138 = metadata !{i32 786689, metadata !17, metadata !"inter_pix", metadata !6, i32 16777315, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!139 = metadata !{i32 99, i32 27, metadata !17, null}
!140 = metadata !{i32 786689, metadata !17, metadata !"out_pix", metadata !6, i32 33554531, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!141 = metadata !{i32 99, i32 60, metadata !17, null}
!142 = metadata !{i32 100, i32 2, metadata !143, null}
!143 = metadata !{i32 786443, metadata !17, i32 100, i32 1, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!144 = metadata !{i32 100, i32 46, metadata !143, null}
!145 = metadata !{i32 101, i32 1, metadata !143, null}
!146 = metadata !{i32 102, i32 1, metadata !143, null}
!147 = metadata !{i32 103, i32 1, metadata !143, null}
!148 = metadata !{i32 786688, metadata !143, metadata !"cache1", metadata !6, i32 106, metadata !149, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!149 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 61440, i64 8, i32 0, i32 0, metadata !9, metadata !150, i32 0, i32 0} ; [ DW_TAG_array_type ]
!150 = metadata !{metadata !151}
!151 = metadata !{i32 786465, i64 0, i64 7679}    ; [ DW_TAG_subrange_type ]
!152 = metadata !{i32 106, i32 10, metadata !143, null}
!153 = metadata !{i32 786688, metadata !143, metadata !"val", metadata !6, i32 107, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!154 = metadata !{i32 107, i32 10, metadata !143, null}
!155 = metadata !{i32 786688, metadata !143, metadata !"fourWide", metadata !6, i32 108, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!156 = metadata !{i32 786454, null, metadata !"OneToFourPixels", metadata !6, i32 9, i64 0, i64 0, i64 0, i32 0, metadata !157} ; [ DW_TAG_typedef ]
!157 = metadata !{i32 786455, null, metadata !"", metadata !6, i32 6, i64 32, i64 32, i64 0, i32 0, null, metadata !158, i32 0, null} ; [ DW_TAG_union_type ]
!158 = metadata !{metadata !159, metadata !163, metadata !164}
!159 = metadata !{i32 786445, metadata !157, metadata !"pix", metadata !6, i32 7, i64 32, i64 8, i64 0, i32 0, metadata !160} ; [ DW_TAG_member ]
!160 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 32, i64 8, i32 0, i32 0, metadata !9, metadata !161, i32 0, i32 0} ; [ DW_TAG_array_type ]
!161 = metadata !{metadata !162}
!162 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ]
!163 = metadata !{i32 786445, metadata !157, metadata !"full", metadata !6, i32 8, i64 32, i64 32, i64 0, i32 0, metadata !21} ; [ DW_TAG_member ]
!164 = metadata !{i32 786478, i32 0, metadata !157, metadata !"", metadata !"", metadata !"", metadata !6, i32 6, metadata !165, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !15, i32 6} ; [ DW_TAG_subprogram ]
!165 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !166, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!166 = metadata !{null, metadata !167}
!167 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !157} ; [ DW_TAG_pointer_type ]
!168 = metadata !{i32 108, i32 18, metadata !143, null}
!169 = metadata !{i32 786688, metadata !143, metadata !"surroundingPix", metadata !6, i32 109, metadata !170, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!170 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 72, i64 8, i32 0, i32 0, metadata !9, metadata !60, i32 0, i32 0} ; [ DW_TAG_array_type ]
!171 = metadata !{i32 109, i32 10, metadata !143, null}
!172 = metadata !{i32 110, i32 1, metadata !143, null}
!173 = metadata !{i32 786688, metadata !174, metadata !"i", metadata !6, i32 171, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!174 = metadata !{i32 786443, metadata !143, i32 171, i32 17, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!175 = metadata !{i32 171, i32 35, metadata !174, null}
!176 = metadata !{i32 171, i32 40, metadata !174, null}
!177 = metadata !{i32 171, i32 58, metadata !178, null}
!178 = metadata !{i32 786443, metadata !174, i32 171, i32 57, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!179 = metadata !{i32 786688, metadata !180, metadata !"j", metadata !6, i32 172, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!180 = metadata !{i32 786443, metadata !178, i32 172, i32 18, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!181 = metadata !{i32 172, i32 36, metadata !180, null}
!182 = metadata !{i32 172, i32 41, metadata !180, null}
!183 = metadata !{i32 172, i32 59, metadata !184, null}
!184 = metadata !{i32 786443, metadata !180, i32 172, i32 58, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!185 = metadata !{i32 173, i32 1, metadata !184, null}
!186 = metadata !{i32 174, i32 1, metadata !184, null}
!187 = metadata !{i32 175, i32 2, metadata !184, null}
!188 = metadata !{i32 178, i32 5, metadata !184, null}
!189 = metadata !{i32 179, i32 6, metadata !190, null}
!190 = metadata !{i32 786443, metadata !184, i32 178, i32 48, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!191 = metadata !{i32 180, i32 5, metadata !190, null}
!192 = metadata !{i32 182, i32 7, metadata !193, null}
!193 = metadata !{i32 786443, metadata !184, i32 181, i32 10, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!194 = metadata !{i32 183, i32 7, metadata !193, null}
!195 = metadata !{i32 184, i32 7, metadata !193, null}
!196 = metadata !{i32 185, i32 7, metadata !193, null}
!197 = metadata !{i32 186, i32 7, metadata !193, null}
!198 = metadata !{i32 187, i32 7, metadata !193, null}
!199 = metadata !{i32 188, i32 7, metadata !193, null}
!200 = metadata !{i32 189, i32 7, metadata !193, null}
!201 = metadata !{i32 190, i32 7, metadata !193, null}
!202 = metadata !{i32 192, i32 13, metadata !193, null}
!203 = metadata !{i32 786688, metadata !204, metadata !"j", metadata !6, i32 194, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!204 = metadata !{i32 786443, metadata !184, i32 194, i32 5, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!205 = metadata !{i32 194, i32 14, metadata !204, null}
!206 = metadata !{i32 194, i32 19, metadata !204, null}
!207 = metadata !{i32 195, i32 6, metadata !204, null}
!208 = metadata !{i32 194, i32 28, metadata !204, null}
!209 = metadata !{i32 196, i32 5, metadata !184, null}
!210 = metadata !{i32 199, i32 5, metadata !184, null}
!211 = metadata !{i32 172, i32 53, metadata !180, null}
!212 = metadata !{i32 200, i32 4, metadata !178, null}
!213 = metadata !{i32 171, i32 52, metadata !174, null}
!214 = metadata !{i32 200, i32 4, metadata !174, null}
!215 = metadata !{i32 786688, metadata !216, metadata !"i", metadata !6, i32 202, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!216 = metadata !{i32 786443, metadata !143, i32 202, i32 13, metadata !6, i32 15} ; [ DW_TAG_lexical_block ]
!217 = metadata !{i32 202, i32 31, metadata !216, null}
!218 = metadata !{i32 202, i32 36, metadata !216, null}
!219 = metadata !{i32 202, i32 51, metadata !220, null}
!220 = metadata !{i32 786443, metadata !216, i32 202, i32 50, metadata !6, i32 16} ; [ DW_TAG_lexical_block ]
!221 = metadata !{i32 786688, metadata !222, metadata !"j", metadata !6, i32 203, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!222 = metadata !{i32 786443, metadata !220, i32 203, i32 15, metadata !6, i32 17} ; [ DW_TAG_lexical_block ]
!223 = metadata !{i32 203, i32 33, metadata !222, null}
!224 = metadata !{i32 203, i32 38, metadata !222, null}
!225 = metadata !{i32 203, i32 56, metadata !226, null}
!226 = metadata !{i32 786443, metadata !222, i32 203, i32 55, metadata !6, i32 18} ; [ DW_TAG_lexical_block ]
!227 = metadata !{i32 204, i32 1, metadata !226, null}
!228 = metadata !{i32 205, i32 2, metadata !226, null}
!229 = metadata !{i32 206, i32 5, metadata !230, null}
!230 = metadata !{i32 786443, metadata !226, i32 205, i32 52, metadata !6, i32 19} ; [ DW_TAG_lexical_block ]
!231 = metadata !{i32 207, i32 4, metadata !230, null}
!232 = metadata !{i32 209, i32 5, metadata !233, null}
!233 = metadata !{i32 786443, metadata !226, i32 208, i32 9, metadata !6, i32 20} ; [ DW_TAG_lexical_block ]
!234 = metadata !{i32 210, i32 5, metadata !233, null}
!235 = metadata !{i32 211, i32 5, metadata !233, null}
!236 = metadata !{i32 212, i32 5, metadata !233, null}
!237 = metadata !{i32 213, i32 5, metadata !233, null}
!238 = metadata !{i32 214, i32 5, metadata !233, null}
!239 = metadata !{i32 215, i32 5, metadata !233, null}
!240 = metadata !{i32 216, i32 5, metadata !233, null}
!241 = metadata !{i32 217, i32 5, metadata !233, null}
!242 = metadata !{i32 219, i32 11, metadata !233, null}
!243 = metadata !{i32 786688, metadata !244, metadata !"j", metadata !6, i32 221, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!244 = metadata !{i32 786443, metadata !226, i32 221, i32 4, metadata !6, i32 21} ; [ DW_TAG_lexical_block ]
!245 = metadata !{i32 221, i32 13, metadata !244, null}
!246 = metadata !{i32 221, i32 18, metadata !244, null}
!247 = metadata !{i32 222, i32 5, metadata !244, null}
!248 = metadata !{i32 221, i32 27, metadata !244, null}
!249 = metadata !{i32 223, i32 4, metadata !226, null}
!250 = metadata !{i32 225, i32 3, metadata !226, null}
!251 = metadata !{i32 203, i32 50, metadata !222, null}
!252 = metadata !{i32 226, i32 2, metadata !220, null}
!253 = metadata !{i32 202, i32 45, metadata !216, null}
!254 = metadata !{i32 229, i32 1, metadata !143, null}
