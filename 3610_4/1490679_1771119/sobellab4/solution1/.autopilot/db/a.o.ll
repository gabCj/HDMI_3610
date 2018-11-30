; ModuleID = 'X:/Bureau/HDMI_3610/3610_4/1490679_1771119/sobellab4/solution1/.autopilot/db/a.o.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

%union.OneToFourPixels = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@_ZZ14sobel_operatoriPhE4x_op = internal constant [3 x [3 x i8]] [[3 x i8] c"\FF\00\01", [3 x i8] c"\FE\00\02", [3 x i8] c"\FF\00\01"], align 1 ; [#uses=2 type=[3 x [3 x i8]]*]
@_ZZ14sobel_operatoriPhE4y_op = internal constant [3 x [3 x i8]] [[3 x i8] c"\01\02\01", [3 x i8] zeroinitializer, [3 x i8] c"\FF\FE\FF"], align 1 ; [#uses=2 type=[3 x [3 x i8]]*]
@.str1 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str2 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str3 = private unnamed_addr constant [6 x i8] c"gmem0\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str4 = private unnamed_addr constant [6 x i8] c"slave\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str5 = private unnamed_addr constant [6 x i8] c"gmem1\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str6 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]
@.str7 = private unnamed_addr constant [14 x i8] c"OperatorLines\00", align 1 ; [#uses=1 type=[14 x i8]*]
@.str8 = private unnamed_addr constant [14 x i8] c"OperatorRows1\00", align 1 ; [#uses=1 type=[14 x i8]*]
@.str9 = private unnamed_addr constant [14 x i8] c"ZerosFirstRow\00", align 1 ; [#uses=1 type=[14 x i8]*]
@.str10 = private unnamed_addr constant [13 x i8] c"ZerosLastRow\00", align 1 ; [#uses=1 type=[13 x i8]*]
@.str11 = private unnamed_addr constant [15 x i8] c"ZerosFirstLine\00", align 1 ; [#uses=1 type=[15 x i8]*]
@.str12 = private unnamed_addr constant [14 x i8] c"ZerosLastLine\00", align 1 ; [#uses=1 type=[14 x i8]*]
@.str13 = private unnamed_addr constant [4 x i8] c"IMG\00", align 1 ; [#uses=1 type=[4 x i8]*]
@.str14 = private unnamed_addr constant [7 x i8] c"OneTo4\00", align 1 ; [#uses=1 type=[7 x i8]*]

; [#uses=2]
define internal zeroext i8 @_Z14sobel_operatoriPh(i32 %fullIndex, i8* %image) nounwind uwtable {
  %1 = alloca i32, align 4                        ; [#uses=3 type=i32*]
  %2 = alloca i8*, align 8                        ; [#uses=3 type=i8**]
  %x_weight = alloca i32, align 4                 ; [#uses=6 type=i32*]
  %y_weight = alloca i32, align 4                 ; [#uses=6 type=i32*]
  %edge_weight = alloca i32, align 4              ; [#uses=2 type=i32*]
  %edge_val = alloca i8, align 1                  ; [#uses=6 type=i8*]
  %i = alloca i32, align 4                        ; [#uses=8 type=i32*]
  %j = alloca i32, align 4                        ; [#uses=8 type=i32*]
  store i32 %fullIndex, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !51), !dbg !52 ; [debug line = 30:34] [debug variable = fullIndex]
  store i8* %image, i8** %2, align 8
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !53), !dbg !54 ; [debug line = 30:55] [debug variable = image]
  call void (...)* @_ssdm_InlineSelf(i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !55 ; [debug line = 32:1]
  call void @llvm.dbg.declare(metadata !{i32* %x_weight}, metadata !57), !dbg !58 ; [debug line = 46:6] [debug variable = x_weight]
  store i32 0, i32* %x_weight, align 4, !dbg !59  ; [debug line = 46:18]
  call void @llvm.dbg.declare(metadata !{i32* %y_weight}, metadata !60), !dbg !61 ; [debug line = 47:6] [debug variable = y_weight]
  store i32 0, i32* %y_weight, align 4, !dbg !62  ; [debug line = 47:18]
  call void @llvm.dbg.declare(metadata !{i32* %edge_weight}, metadata !63), !dbg !64 ; [debug line = 49:11] [debug variable = edge_weight]
  call void @llvm.dbg.declare(metadata !{i8* %edge_val}, metadata !65), !dbg !66 ; [debug line = 50:10] [debug variable = edge_val]
  call void (...)* @_ssdm_SpecConstant([3 x i8]* getelementptr inbounds ([3 x [3 x i8]]* @_ZZ14sobel_operatoriPhE4x_op, i32 0, i32 0)) nounwind, !dbg !67 ; [debug line = 55:1]
  call void (...)* @_ssdm_SpecConstant([3 x i8]* getelementptr inbounds ([3 x [3 x i8]]* @_ZZ14sobel_operatoriPhE4y_op, i32 0, i32 0)) nounwind, !dbg !68 ; [debug line = 60:1]
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !69), !dbg !71 ; [debug line = 63:11] [debug variable = i]
  store i32 0, i32* %i, align 4, !dbg !72         ; [debug line = 63:16]
  br label %3, !dbg !72                           ; [debug line = 63:16]

; <label>:3                                       ; preds = %53, %0
  %4 = load i32* %i, align 4, !dbg !72            ; [#uses=1 type=i32] [debug line = 63:16]
  %5 = icmp slt i32 %4, 3, !dbg !72               ; [#uses=1 type=i1] [debug line = 63:16]
  br i1 %5, label %6, label %56, !dbg !72         ; [debug line = 63:16]

; <label>:6                                       ; preds = %3
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !73 ; [debug line = 63:31]
  call void (...)* @_ssdm_Unroll(i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !75 ; [debug line = 64:1]
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !76), !dbg !78 ; [debug line = 65:11] [debug variable = j]
  store i32 0, i32* %j, align 4, !dbg !79         ; [debug line = 65:16]
  br label %7, !dbg !79                           ; [debug line = 65:16]

; <label>:7                                       ; preds = %49, %6
  %8 = load i32* %j, align 4, !dbg !79            ; [#uses=1 type=i32] [debug line = 65:16]
  %9 = icmp slt i32 %8, 3, !dbg !79               ; [#uses=1 type=i1] [debug line = 65:16]
  br i1 %9, label %10, label %52, !dbg !79        ; [debug line = 65:16]

; <label>:10                                      ; preds = %7
  %11 = load i32* %x_weight, align 4, !dbg !80    ; [#uses=1 type=i32] [debug line = 67:3]
  %12 = load i32* %1, align 4, !dbg !82           ; [#uses=1 type=i32] [debug line = 67:26]
  %13 = load i32* %i, align 4, !dbg !82           ; [#uses=1 type=i32] [debug line = 67:26]
  %14 = sub nsw i32 %13, 1, !dbg !82              ; [#uses=1 type=i32] [debug line = 67:26]
  %15 = load i32* %j, align 4, !dbg !82           ; [#uses=1 type=i32] [debug line = 67:26]
  %16 = sub nsw i32 %15, 1, !dbg !82              ; [#uses=1 type=i32] [debug line = 67:26]
  %17 = load i8** %2, align 8, !dbg !82           ; [#uses=1 type=i8*] [debug line = 67:26]
  %18 = call zeroext i8 @_ZL6getValiiiiPh(i32 %12, i32 %14, i32 %16, i32 1920, i8* %17), !dbg !82 ; [#uses=1 type=i8] [debug line = 67:26]
  %19 = zext i8 %18 to i32, !dbg !82              ; [#uses=1 type=i32] [debug line = 67:26]
  %20 = load i32* %j, align 4, !dbg !82           ; [#uses=1 type=i32] [debug line = 67:26]
  %21 = sext i32 %20 to i64, !dbg !82             ; [#uses=1 type=i64] [debug line = 67:26]
  %22 = load i32* %i, align 4, !dbg !82           ; [#uses=1 type=i32] [debug line = 67:26]
  %23 = sext i32 %22 to i64, !dbg !82             ; [#uses=1 type=i64] [debug line = 67:26]
  %24 = getelementptr inbounds [3 x [3 x i8]]* @_ZZ14sobel_operatoriPhE4x_op, i32 0, i64 %23, !dbg !82 ; [#uses=1 type=[3 x i8]*] [debug line = 67:26]
  %25 = getelementptr inbounds [3 x i8]* %24, i32 0, i64 %21, !dbg !82 ; [#uses=1 type=i8*] [debug line = 67:26]
  %26 = load i8* %25, align 1, !dbg !82           ; [#uses=1 type=i8] [debug line = 67:26]
  %27 = sext i8 %26 to i32, !dbg !82              ; [#uses=1 type=i32] [debug line = 67:26]
  %28 = mul nsw i32 %19, %27, !dbg !82            ; [#uses=1 type=i32] [debug line = 67:26]
  %29 = add nsw i32 %11, %28, !dbg !82            ; [#uses=1 type=i32] [debug line = 67:26]
  store i32 %29, i32* %x_weight, align 4, !dbg !82 ; [debug line = 67:26]
  %30 = load i32* %y_weight, align 4, !dbg !83    ; [#uses=1 type=i32] [debug line = 70:3]
  %31 = load i32* %1, align 4, !dbg !84           ; [#uses=1 type=i32] [debug line = 70:26]
  %32 = load i32* %i, align 4, !dbg !84           ; [#uses=1 type=i32] [debug line = 70:26]
  %33 = sub nsw i32 %32, 1, !dbg !84              ; [#uses=1 type=i32] [debug line = 70:26]
  %34 = load i32* %j, align 4, !dbg !84           ; [#uses=1 type=i32] [debug line = 70:26]
  %35 = sub nsw i32 %34, 1, !dbg !84              ; [#uses=1 type=i32] [debug line = 70:26]
  %36 = load i8** %2, align 8, !dbg !84           ; [#uses=1 type=i8*] [debug line = 70:26]
  %37 = call zeroext i8 @_ZL6getValiiiiPh(i32 %31, i32 %33, i32 %35, i32 1920, i8* %36), !dbg !84 ; [#uses=1 type=i8] [debug line = 70:26]
  %38 = zext i8 %37 to i32, !dbg !84              ; [#uses=1 type=i32] [debug line = 70:26]
  %39 = load i32* %j, align 4, !dbg !84           ; [#uses=1 type=i32] [debug line = 70:26]
  %40 = sext i32 %39 to i64, !dbg !84             ; [#uses=1 type=i64] [debug line = 70:26]
  %41 = load i32* %i, align 4, !dbg !84           ; [#uses=1 type=i32] [debug line = 70:26]
  %42 = sext i32 %41 to i64, !dbg !84             ; [#uses=1 type=i64] [debug line = 70:26]
  %43 = getelementptr inbounds [3 x [3 x i8]]* @_ZZ14sobel_operatoriPhE4y_op, i32 0, i64 %42, !dbg !84 ; [#uses=1 type=[3 x i8]*] [debug line = 70:26]
  %44 = getelementptr inbounds [3 x i8]* %43, i32 0, i64 %40, !dbg !84 ; [#uses=1 type=i8*] [debug line = 70:26]
  %45 = load i8* %44, align 1, !dbg !84           ; [#uses=1 type=i8] [debug line = 70:26]
  %46 = sext i8 %45 to i32, !dbg !84              ; [#uses=1 type=i32] [debug line = 70:26]
  %47 = mul nsw i32 %38, %46, !dbg !84            ; [#uses=1 type=i32] [debug line = 70:26]
  %48 = add nsw i32 %30, %47, !dbg !84            ; [#uses=1 type=i32] [debug line = 70:26]
  store i32 %48, i32* %y_weight, align 4, !dbg !84 ; [debug line = 70:26]
  br label %49, !dbg !85                          ; [debug line = 71:3]

; <label>:49                                      ; preds = %10
  %50 = load i32* %j, align 4, !dbg !86           ; [#uses=1 type=i32] [debug line = 65:25]
  %51 = add nsw i32 %50, 1, !dbg !86              ; [#uses=1 type=i32] [debug line = 65:25]
  store i32 %51, i32* %j, align 4, !dbg !86       ; [debug line = 65:25]
  br label %7, !dbg !86                           ; [debug line = 65:25]

; <label>:52                                      ; preds = %7
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !87 ; [debug line = 72:2]
  br label %53, !dbg !87                          ; [debug line = 72:2]

; <label>:53                                      ; preds = %52
  %54 = load i32* %i, align 4, !dbg !88           ; [#uses=1 type=i32] [debug line = 63:25]
  %55 = add nsw i32 %54, 1, !dbg !88              ; [#uses=1 type=i32] [debug line = 63:25]
  store i32 %55, i32* %i, align 4, !dbg !88       ; [debug line = 63:25]
  br label %3, !dbg !88                           ; [debug line = 63:25]

; <label>:56                                      ; preds = %3
  %57 = load i32* %x_weight, align 4, !dbg !89    ; [#uses=1 type=i32] [debug line = 74:2]
  %58 = icmp sgt i32 %57, 0, !dbg !89             ; [#uses=1 type=i1] [debug line = 74:2]
  br i1 %58, label %59, label %61, !dbg !89       ; [debug line = 74:2]

; <label>:59                                      ; preds = %56
  %60 = load i32* %x_weight, align 4, !dbg !89    ; [#uses=1 type=i32] [debug line = 74:2]
  br label %64, !dbg !89                          ; [debug line = 74:2]

; <label>:61                                      ; preds = %56
  %62 = load i32* %x_weight, align 4, !dbg !89    ; [#uses=1 type=i32] [debug line = 74:2]
  %63 = sub nsw i32 0, %62, !dbg !89              ; [#uses=1 type=i32] [debug line = 74:2]
  br label %64, !dbg !89                          ; [debug line = 74:2]

; <label>:64                                      ; preds = %61, %59
  %65 = phi i32 [ %60, %59 ], [ %63, %61 ], !dbg !89 ; [#uses=1 type=i32] [debug line = 74:2]
  %66 = load i32* %y_weight, align 4, !dbg !89    ; [#uses=1 type=i32] [debug line = 74:2]
  %67 = icmp sgt i32 %66, 0, !dbg !89             ; [#uses=1 type=i1] [debug line = 74:2]
  br i1 %67, label %68, label %70, !dbg !89       ; [debug line = 74:2]

; <label>:68                                      ; preds = %64
  %69 = load i32* %y_weight, align 4, !dbg !89    ; [#uses=1 type=i32] [debug line = 74:2]
  br label %73, !dbg !89                          ; [debug line = 74:2]

; <label>:70                                      ; preds = %64
  %71 = load i32* %y_weight, align 4, !dbg !89    ; [#uses=1 type=i32] [debug line = 74:2]
  %72 = sub nsw i32 0, %71, !dbg !89              ; [#uses=1 type=i32] [debug line = 74:2]
  br label %73, !dbg !89                          ; [debug line = 74:2]

; <label>:73                                      ; preds = %70, %68
  %74 = phi i32 [ %69, %68 ], [ %72, %70 ], !dbg !89 ; [#uses=1 type=i32] [debug line = 74:2]
  %75 = add nsw i32 %65, %74, !dbg !89            ; [#uses=1 type=i32] [debug line = 74:2]
  store i32 %75, i32* %edge_weight, align 4, !dbg !89 ; [debug line = 74:2]
  %76 = load i32* %edge_weight, align 4, !dbg !90 ; [#uses=1 type=i32] [debug line = 76:2]
  %77 = trunc i32 %76 to i8, !dbg !90             ; [#uses=1 type=i8] [debug line = 76:2]
  %78 = zext i8 %77 to i32, !dbg !90              ; [#uses=1 type=i32] [debug line = 76:2]
  %79 = sub nsw i32 255, %78, !dbg !90            ; [#uses=1 type=i32] [debug line = 76:2]
  %80 = trunc i32 %79 to i8, !dbg !90             ; [#uses=1 type=i8] [debug line = 76:2]
  store i8 %80, i8* %edge_val, align 1, !dbg !90  ; [debug line = 76:2]
  %81 = load i8* %edge_val, align 1, !dbg !91     ; [#uses=1 type=i8] [debug line = 79:2]
  %82 = zext i8 %81 to i32, !dbg !91              ; [#uses=1 type=i32] [debug line = 79:2]
  %83 = icmp sgt i32 %82, 200, !dbg !91           ; [#uses=1 type=i1] [debug line = 79:2]
  br i1 %83, label %84, label %85, !dbg !91       ; [debug line = 79:2]

; <label>:84                                      ; preds = %73
  store i8 -1, i8* %edge_val, align 1, !dbg !92   ; [debug line = 80:3]
  br label %91, !dbg !92                          ; [debug line = 80:3]

; <label>:85                                      ; preds = %73
  %86 = load i8* %edge_val, align 1, !dbg !93     ; [#uses=1 type=i8] [debug line = 81:7]
  %87 = zext i8 %86 to i32, !dbg !93              ; [#uses=1 type=i32] [debug line = 81:7]
  %88 = icmp slt i32 %87, 100, !dbg !93           ; [#uses=1 type=i1] [debug line = 81:7]
  br i1 %88, label %89, label %90, !dbg !93       ; [debug line = 81:7]

; <label>:89                                      ; preds = %85
  store i8 0, i8* %edge_val, align 1, !dbg !94    ; [debug line = 82:3]
  br label %90, !dbg !94                          ; [debug line = 82:3]

; <label>:90                                      ; preds = %89, %85
  br label %91

; <label>:91                                      ; preds = %90, %84
  %92 = load i8* %edge_val, align 1, !dbg !95     ; [#uses=1 type=i8] [debug line = 84:2]
  ret i8 %92, !dbg !95                            ; [debug line = 84:2]
}

; [#uses=27]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_InlineSelf(...) nounwind

; [#uses=2]
declare void @_ssdm_SpecConstant(...) nounwind

; [#uses=9]
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
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !96), !dbg !97 ; [debug line = 11:34] [debug variable = index]
  store i32 %xDiff, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !98), !dbg !99 ; [debug line = 11:45] [debug variable = xDiff]
  store i32 %yDiff, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !100), !dbg !101 ; [debug line = 11:56] [debug variable = yDiff]
  store i32 %img_width, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !102), !dbg !103 ; [debug line = 11:67] [debug variable = img_width]
  store i8* %Y, i8** %5, align 8
  call void @llvm.dbg.declare(metadata !{i8** %5}, metadata !104), !dbg !105 ; [debug line = 11:88] [debug variable = Y]
  call void @llvm.dbg.declare(metadata !{i32* %fullIndex}, metadata !106), !dbg !108 ; [debug line = 13:6] [debug variable = fullIndex]
  %6 = load i32* %1, align 4, !dbg !109           ; [#uses=1 type=i32] [debug line = 13:55]
  %7 = load i32* %3, align 4, !dbg !109           ; [#uses=1 type=i32] [debug line = 13:55]
  %8 = load i32* %4, align 4, !dbg !109           ; [#uses=1 type=i32] [debug line = 13:55]
  %9 = mul nsw i32 %7, %8, !dbg !109              ; [#uses=1 type=i32] [debug line = 13:55]
  %10 = add nsw i32 %6, %9, !dbg !109             ; [#uses=1 type=i32] [debug line = 13:55]
  %11 = load i32* %2, align 4, !dbg !109          ; [#uses=1 type=i32] [debug line = 13:55]
  %12 = add nsw i32 %10, %11, !dbg !109           ; [#uses=1 type=i32] [debug line = 13:55]
  store i32 %12, i32* %fullIndex, align 4, !dbg !109 ; [debug line = 13:55]
  %13 = load i32* %fullIndex, align 4, !dbg !110  ; [#uses=1 type=i32] [debug line = 14:2]
  %14 = icmp slt i32 %13, 0, !dbg !110            ; [#uses=1 type=i1] [debug line = 14:2]
  br i1 %14, label %15, label %20, !dbg !110      ; [debug line = 14:2]

; <label>:15                                      ; preds = %0
  %16 = load i32* %4, align 4, !dbg !111          ; [#uses=1 type=i32] [debug line = 17:3]
  %17 = mul nsw i32 %16, 4, !dbg !111             ; [#uses=1 type=i32] [debug line = 17:3]
  %18 = load i32* %fullIndex, align 4, !dbg !111  ; [#uses=1 type=i32] [debug line = 17:3]
  %19 = add nsw i32 %18, %17, !dbg !111           ; [#uses=1 type=i32] [debug line = 17:3]
  store i32 %19, i32* %fullIndex, align 4, !dbg !111 ; [debug line = 17:3]
  br label %31, !dbg !113                         ; [debug line = 18:2]

; <label>:20                                      ; preds = %0
  %21 = load i32* %fullIndex, align 4, !dbg !114  ; [#uses=1 type=i32] [debug line = 19:7]
  %22 = load i32* %4, align 4, !dbg !114          ; [#uses=1 type=i32] [debug line = 19:7]
  %23 = mul nsw i32 %22, 4, !dbg !114             ; [#uses=1 type=i32] [debug line = 19:7]
  %24 = icmp sge i32 %21, %23, !dbg !114          ; [#uses=1 type=i1] [debug line = 19:7]
  br i1 %24, label %25, label %30, !dbg !114      ; [debug line = 19:7]

; <label>:25                                      ; preds = %20
  %26 = load i32* %4, align 4, !dbg !115          ; [#uses=1 type=i32] [debug line = 22:3]
  %27 = mul nsw i32 %26, 4, !dbg !115             ; [#uses=1 type=i32] [debug line = 22:3]
  %28 = load i32* %fullIndex, align 4, !dbg !115  ; [#uses=1 type=i32] [debug line = 22:3]
  %29 = sub nsw i32 %28, %27, !dbg !115           ; [#uses=1 type=i32] [debug line = 22:3]
  store i32 %29, i32* %fullIndex, align 4, !dbg !115 ; [debug line = 22:3]
  br label %30, !dbg !117                         ; [debug line = 23:2]

; <label>:30                                      ; preds = %25, %20
  br label %31

; <label>:31                                      ; preds = %30, %15
  %32 = load i32* %fullIndex, align 4, !dbg !118  ; [#uses=1 type=i32] [debug line = 25:2]
  %33 = sext i32 %32 to i64, !dbg !118            ; [#uses=1 type=i64] [debug line = 25:2]
  %34 = load i8** %5, align 8, !dbg !118          ; [#uses=1 type=i8*] [debug line = 25:2]
  %35 = getelementptr inbounds i8* %34, i64 %33, !dbg !118 ; [#uses=1 type=i8*] [debug line = 25:2]
  %36 = load i8* %35, align 1, !dbg !118          ; [#uses=1 type=i8] [debug line = 25:2]
  ret i8 %36, !dbg !118                           ; [debug line = 25:2]
}

; [#uses=9]
declare void @_ssdm_RegionEnd(...) nounwind

; [#uses=0]
define void @_Z12sobel_filterPhPj(i8* %inter_pix, i32* %out_pix) nounwind uwtable {
  %1 = alloca i8*, align 8                        ; [#uses=5 type=i8**]
  %2 = alloca i32*, align 8                       ; [#uses=11 type=i32**]
  %superCache = alloca [7680 x i8], align 16      ; [#uses=4 type=[7680 x i8]*]
  %i = alloca i32, align 4                        ; [#uses=15 type=i32*]
  %j = alloca i32, align 4                        ; [#uses=12 type=i32*]
  %i1 = alloca i32, align 4                       ; [#uses=5 type=i32*]
  %i2 = alloca i32, align 4                       ; [#uses=5 type=i32*]
  %i3 = alloca i32, align 4                       ; [#uses=5 type=i32*]
  %i4 = alloca i32, align 4                       ; [#uses=5 type=i32*]
  %i5 = alloca i32, align 4                       ; [#uses=6 type=i32*]
  %val = alloca i8, align 1                       ; [#uses=2 type=i8*]
  %fourWide = alloca %union.OneToFourPixels, align 4 ; [#uses=2 type=%union.OneToFourPixels*]
  %j6 = alloca i32, align 4                       ; [#uses=5 type=i32*]
  store i8* %inter_pix, i8** %1, align 8
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !119), !dbg !120 ; [debug line = 88:27] [debug variable = inter_pix]
  store i32* %out_pix, i32** %2, align 8
  call void @llvm.dbg.declare(metadata !{i32** %2}, metadata !121), !dbg !122 ; [debug line = 88:60] [debug variable = out_pix]
  %3 = load i32** %2, align 8, !dbg !123          ; [#uses=1 type=i32*] [debug line = 89:2]
  call void (...)* @_ssdm_SpecArrayDimSize(i32* %3, i32 2073600) nounwind, !dbg !123 ; [debug line = 89:2]
  %4 = load i8** %1, align 8, !dbg !125           ; [#uses=1 type=i8*] [debug line = 89:46]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %4, i32 2073600) nounwind, !dbg !125 ; [debug line = 89:46]
  %5 = load i8** %1, align 8, !dbg !126           ; [#uses=1 type=i8*] [debug line = 97:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %5, i8* getelementptr inbounds ([6 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([6 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 16, i32 16, i32 16, i32 16, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !126 ; [debug line = 97:1]
  %6 = load i32** %2, align 8, !dbg !127          ; [#uses=1 type=i32*] [debug line = 98:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %6, i8* getelementptr inbounds ([6 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([6 x i8]* @.str5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 16, i32 16, i32 16, i32 16, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !127 ; [debug line = 98:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, i8* getelementptr inbounds ([10 x i8]* @.str6, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !128 ; [debug line = 99:1]
  call void @llvm.dbg.declare(metadata !{[7680 x i8]* %superCache}, metadata !129), !dbg !133 ; [debug line = 103:10] [debug variable = superCache]
  br label %7, !dbg !134                          ; [debug line = 103:28]

; <label>:7                                       ; preds = %0
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !135), !dbg !137 ; [debug line = 120:35] [debug variable = i]
  store i32 0, i32* %i, align 4, !dbg !138        ; [debug line = 120:40]
  br label %8, !dbg !138                          ; [debug line = 120:40]

; <label>:8                                       ; preds = %97, %7
  %9 = load i32* %i, align 4, !dbg !138           ; [#uses=1 type=i32] [debug line = 120:40]
  %10 = icmp ult i32 %9, 1081, !dbg !138          ; [#uses=1 type=i1] [debug line = 120:40]
  br i1 %10, label %11, label %100, !dbg !138     ; [debug line = 120:40]

; <label>:11                                      ; preds = %8
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([14 x i8]* @.str7, i32 0, i32 0)) nounwind, !dbg !139 ; [debug line = 120:62]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([14 x i8]* @.str7, i32 0, i32 0)) nounwind, !dbg !139 ; [debug line = 120:62]
  br label %12, !dbg !139                         ; [debug line = 120:62]

; <label>:12                                      ; preds = %11
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !141), !dbg !143 ; [debug line = 121:36] [debug variable = j]
  store i32 0, i32* %j, align 4, !dbg !144        ; [debug line = 121:41]
  br label %13, !dbg !144                         ; [debug line = 121:41]

; <label>:13                                      ; preds = %93, %12
  %14 = load i32* %j, align 4, !dbg !144          ; [#uses=1 type=i32] [debug line = 121:41]
  %15 = icmp ult i32 %14, 1920, !dbg !144         ; [#uses=1 type=i1] [debug line = 121:41]
  br i1 %15, label %16, label %96, !dbg !144      ; [debug line = 121:41]

; <label>:16                                      ; preds = %13
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([14 x i8]* @.str8, i32 0, i32 0)) nounwind, !dbg !145 ; [debug line = 121:59]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([14 x i8]* @.str8, i32 0, i32 0)) nounwind, !dbg !145 ; [debug line = 121:59]
  call void (...)* @_ssdm_op_SpecPipeline(i32 25, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !147 ; [debug line = 122:1]
  %17 = load i32* %i, align 4, !dbg !148          ; [#uses=1 type=i32] [debug line = 123:2]
  %18 = icmp ult i32 %17, 3, !dbg !148            ; [#uses=1 type=i1] [debug line = 123:2]
  br i1 %18, label %19, label %34, !dbg !148      ; [debug line = 123:2]

; <label>:19                                      ; preds = %16
  %20 = load i32* %i, align 4, !dbg !149          ; [#uses=1 type=i32] [debug line = 124:5]
  %21 = mul i32 %20, 1920, !dbg !149              ; [#uses=1 type=i32] [debug line = 124:5]
  %22 = load i32* %j, align 4, !dbg !149          ; [#uses=1 type=i32] [debug line = 124:5]
  %23 = add i32 %21, %22, !dbg !149               ; [#uses=1 type=i32] [debug line = 124:5]
  %24 = zext i32 %23 to i64, !dbg !149            ; [#uses=1 type=i64] [debug line = 124:5]
  %25 = load i8** %1, align 8, !dbg !149          ; [#uses=1 type=i8*] [debug line = 124:5]
  %26 = getelementptr inbounds i8* %25, i64 %24, !dbg !149 ; [#uses=1 type=i8*] [debug line = 124:5]
  %27 = load i8* %26, align 1, !dbg !149          ; [#uses=1 type=i8] [debug line = 124:5]
  %28 = load i32* %i, align 4, !dbg !149          ; [#uses=1 type=i32] [debug line = 124:5]
  %29 = mul i32 %28, 1920, !dbg !149              ; [#uses=1 type=i32] [debug line = 124:5]
  %30 = load i32* %j, align 4, !dbg !149          ; [#uses=1 type=i32] [debug line = 124:5]
  %31 = add i32 %29, %30, !dbg !149               ; [#uses=1 type=i32] [debug line = 124:5]
  %32 = zext i32 %31 to i64, !dbg !149            ; [#uses=1 type=i64] [debug line = 124:5]
  %33 = getelementptr inbounds [7680 x i8]* %superCache, i32 0, i64 %32, !dbg !149 ; [#uses=1 type=i8*] [debug line = 124:5]
  store i8 %27, i8* %33, align 1, !dbg !149       ; [debug line = 124:5]
  br label %92, !dbg !151                         ; [debug line = 125:4]

; <label>:34                                      ; preds = %16
  %35 = load i32* %i, align 4, !dbg !152          ; [#uses=1 type=i32] [debug line = 126:9]
  %36 = icmp uge i32 %35, 3, !dbg !152            ; [#uses=1 type=i1] [debug line = 126:9]
  br i1 %36, label %37, label %73, !dbg !152      ; [debug line = 126:9]

; <label>:37                                      ; preds = %34
  %38 = load i32* %i, align 4, !dbg !152          ; [#uses=1 type=i32] [debug line = 126:9]
  %39 = icmp ult i32 %38, 1080, !dbg !152         ; [#uses=1 type=i1] [debug line = 126:9]
  br i1 %39, label %40, label %73, !dbg !152      ; [debug line = 126:9]

; <label>:40                                      ; preds = %37
  %41 = load i32* %i, align 4, !dbg !153          ; [#uses=1 type=i32] [debug line = 127:5]
  %42 = mul i32 %41, 1920, !dbg !153              ; [#uses=1 type=i32] [debug line = 127:5]
  %43 = load i32* %j, align 4, !dbg !153          ; [#uses=1 type=i32] [debug line = 127:5]
  %44 = add i32 %42, %43, !dbg !153               ; [#uses=1 type=i32] [debug line = 127:5]
  %45 = zext i32 %44 to i64, !dbg !153            ; [#uses=1 type=i64] [debug line = 127:5]
  %46 = load i8** %1, align 8, !dbg !153          ; [#uses=1 type=i8*] [debug line = 127:5]
  %47 = getelementptr inbounds i8* %46, i64 %45, !dbg !153 ; [#uses=1 type=i8*] [debug line = 127:5]
  %48 = load i8* %47, align 1, !dbg !153          ; [#uses=1 type=i8] [debug line = 127:5]
  %49 = load i32* %i, align 4, !dbg !153          ; [#uses=1 type=i32] [debug line = 127:5]
  %50 = urem i32 %49, 4, !dbg !153                ; [#uses=1 type=i32] [debug line = 127:5]
  %51 = mul i32 %50, 1920, !dbg !153              ; [#uses=1 type=i32] [debug line = 127:5]
  %52 = load i32* %j, align 4, !dbg !153          ; [#uses=1 type=i32] [debug line = 127:5]
  %53 = add i32 %51, %52, !dbg !153               ; [#uses=1 type=i32] [debug line = 127:5]
  %54 = zext i32 %53 to i64, !dbg !153            ; [#uses=1 type=i64] [debug line = 127:5]
  %55 = getelementptr inbounds [7680 x i8]* %superCache, i32 0, i64 %54, !dbg !153 ; [#uses=1 type=i8*] [debug line = 127:5]
  store i8 %48, i8* %55, align 1, !dbg !153       ; [debug line = 127:5]
  %56 = load i32* %i, align 4, !dbg !155          ; [#uses=1 type=i32] [debug line = 128:31]
  %57 = sub i32 %56, 2, !dbg !155                 ; [#uses=1 type=i32] [debug line = 128:31]
  %58 = urem i32 %57, 4, !dbg !155                ; [#uses=1 type=i32] [debug line = 128:31]
  %59 = mul i32 %58, 1920, !dbg !155              ; [#uses=1 type=i32] [debug line = 128:31]
  %60 = load i32* %j, align 4, !dbg !155          ; [#uses=1 type=i32] [debug line = 128:31]
  %61 = add i32 %59, %60, !dbg !155               ; [#uses=1 type=i32] [debug line = 128:31]
  %62 = getelementptr inbounds [7680 x i8]* %superCache, i32 0, i32 0, !dbg !155 ; [#uses=1 type=i8*] [debug line = 128:31]
  %63 = call zeroext i8 @_Z14sobel_operatoriPh(i32 %61, i8* %62), !dbg !155 ; [#uses=1 type=i8] [debug line = 128:31]
  %64 = zext i8 %63 to i32, !dbg !155             ; [#uses=1 type=i32] [debug line = 128:31]
  %65 = load i32* %i, align 4, !dbg !155          ; [#uses=1 type=i32] [debug line = 128:31]
  %66 = sub i32 %65, 2, !dbg !155                 ; [#uses=1 type=i32] [debug line = 128:31]
  %67 = mul i32 %66, 1920, !dbg !155              ; [#uses=1 type=i32] [debug line = 128:31]
  %68 = load i32* %j, align 4, !dbg !155          ; [#uses=1 type=i32] [debug line = 128:31]
  %69 = add i32 %67, %68, !dbg !155               ; [#uses=1 type=i32] [debug line = 128:31]
  %70 = zext i32 %69 to i64, !dbg !155            ; [#uses=1 type=i64] [debug line = 128:31]
  %71 = load i32** %2, align 8, !dbg !155         ; [#uses=1 type=i32*] [debug line = 128:31]
  %72 = getelementptr inbounds i32* %71, i64 %70, !dbg !155 ; [#uses=1 type=i32*] [debug line = 128:31]
  store i32 %64, i32* %72, align 4, !dbg !155     ; [debug line = 128:31]
  br label %91, !dbg !156                         ; [debug line = 129:4]

; <label>:73                                      ; preds = %37, %34
  %74 = load i32* %i, align 4, !dbg !157          ; [#uses=1 type=i32] [debug line = 131:31]
  %75 = sub i32 %74, 2, !dbg !157                 ; [#uses=1 type=i32] [debug line = 131:31]
  %76 = urem i32 %75, 4, !dbg !157                ; [#uses=1 type=i32] [debug line = 131:31]
  %77 = mul i32 %76, 1920, !dbg !157              ; [#uses=1 type=i32] [debug line = 131:31]
  %78 = load i32* %j, align 4, !dbg !157          ; [#uses=1 type=i32] [debug line = 131:31]
  %79 = add i32 %77, %78, !dbg !157               ; [#uses=1 type=i32] [debug line = 131:31]
  %80 = getelementptr inbounds [7680 x i8]* %superCache, i32 0, i32 0, !dbg !157 ; [#uses=1 type=i8*] [debug line = 131:31]
  %81 = call zeroext i8 @_Z14sobel_operatoriPh(i32 %79, i8* %80), !dbg !157 ; [#uses=1 type=i8] [debug line = 131:31]
  %82 = zext i8 %81 to i32, !dbg !157             ; [#uses=1 type=i32] [debug line = 131:31]
  %83 = load i32* %i, align 4, !dbg !157          ; [#uses=1 type=i32] [debug line = 131:31]
  %84 = sub i32 %83, 2, !dbg !157                 ; [#uses=1 type=i32] [debug line = 131:31]
  %85 = mul i32 %84, 1920, !dbg !157              ; [#uses=1 type=i32] [debug line = 131:31]
  %86 = load i32* %j, align 4, !dbg !157          ; [#uses=1 type=i32] [debug line = 131:31]
  %87 = add i32 %85, %86, !dbg !157               ; [#uses=1 type=i32] [debug line = 131:31]
  %88 = zext i32 %87 to i64, !dbg !157            ; [#uses=1 type=i64] [debug line = 131:31]
  %89 = load i32** %2, align 8, !dbg !157         ; [#uses=1 type=i32*] [debug line = 131:31]
  %90 = getelementptr inbounds i32* %89, i64 %88, !dbg !157 ; [#uses=1 type=i32*] [debug line = 131:31]
  store i32 %82, i32* %90, align 4, !dbg !157     ; [debug line = 131:31]
  br label %91

; <label>:91                                      ; preds = %73, %40
  br label %92

; <label>:92                                      ; preds = %91, %19
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([14 x i8]* @.str8, i32 0, i32 0)) nounwind, !dbg !159 ; [debug line = 133:3]
  br label %93, !dbg !159                         ; [debug line = 133:3]

; <label>:93                                      ; preds = %92
  %94 = load i32* %j, align 4, !dbg !160          ; [#uses=1 type=i32] [debug line = 121:53]
  %95 = add i32 %94, 1, !dbg !160                 ; [#uses=1 type=i32] [debug line = 121:53]
  store i32 %95, i32* %j, align 4, !dbg !160      ; [debug line = 121:53]
  br label %13, !dbg !160                         ; [debug line = 121:53]

; <label>:96                                      ; preds = %13
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([14 x i8]* @.str7, i32 0, i32 0)) nounwind, !dbg !161 ; [debug line = 176:2]
  br label %97, !dbg !161                         ; [debug line = 176:2]

; <label>:97                                      ; preds = %96
  %98 = load i32* %i, align 4, !dbg !162          ; [#uses=1 type=i32] [debug line = 120:56]
  %99 = add i32 %98, 1, !dbg !162                 ; [#uses=1 type=i32] [debug line = 120:56]
  store i32 %99, i32* %i, align 4, !dbg !162      ; [debug line = 120:56]
  br label %8, !dbg !162                          ; [debug line = 120:56]

; <label>:100                                     ; preds = %8
  br label %101, !dbg !163                        ; [debug line = 176:2]

; <label>:101                                     ; preds = %100
  call void @llvm.dbg.declare(metadata !{i32* %i1}, metadata !164), !dbg !166 ; [debug line = 178:35] [debug variable = i]
  store i32 0, i32* %i1, align 4, !dbg !167       ; [debug line = 178:40]
  br label %102, !dbg !167                        ; [debug line = 178:40]

; <label>:102                                     ; preds = %110, %101
  %103 = load i32* %i1, align 4, !dbg !167        ; [#uses=1 type=i32] [debug line = 178:40]
  %104 = icmp ult i32 %103, 1920, !dbg !167       ; [#uses=1 type=i1] [debug line = 178:40]
  br i1 %104, label %105, label %113, !dbg !167   ; [debug line = 178:40]

; <label>:105                                     ; preds = %102
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([14 x i8]* @.str9, i32 0, i32 0)) nounwind, !dbg !168 ; [debug line = 180:3]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([14 x i8]* @.str9, i32 0, i32 0)) nounwind, !dbg !168 ; [debug line = 180:3]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !170 ; [debug line = 179:1]
  %106 = load i32* %i1, align 4, !dbg !171        ; [#uses=1 type=i32] [debug line = 180:2]
  %107 = zext i32 %106 to i64, !dbg !171          ; [#uses=1 type=i64] [debug line = 180:2]
  %108 = load i32** %2, align 8, !dbg !171        ; [#uses=1 type=i32*] [debug line = 180:2]
  %109 = getelementptr inbounds i32* %108, i64 %107, !dbg !171 ; [#uses=1 type=i32*] [debug line = 180:2]
  store i32 0, i32* %109, align 4, !dbg !171      ; [debug line = 180:2]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([14 x i8]* @.str9, i32 0, i32 0)) nounwind, !dbg !172 ; [debug line = 180:15]
  br label %110, !dbg !172                        ; [debug line = 180:15]

; <label>:110                                     ; preds = %105
  %111 = load i32* %i1, align 4, !dbg !173        ; [#uses=1 type=i32] [debug line = 178:52]
  %112 = add i32 %111, 1, !dbg !173               ; [#uses=1 type=i32] [debug line = 178:52]
  store i32 %112, i32* %i1, align 4, !dbg !173    ; [debug line = 178:52]
  br label %102, !dbg !173                        ; [debug line = 178:52]

; <label>:113                                     ; preds = %102
  br label %114, !dbg !174                        ; [debug line = 180:15]

; <label>:114                                     ; preds = %113
  call void @llvm.dbg.declare(metadata !{i32* %i2}, metadata !175), !dbg !177 ; [debug line = 181:34] [debug variable = i]
  store i32 2071680, i32* %i2, align 4, !dbg !178 ; [debug line = 181:58]
  br label %115, !dbg !178                        ; [debug line = 181:58]

; <label>:115                                     ; preds = %123, %114
  %116 = load i32* %i2, align 4, !dbg !178        ; [#uses=1 type=i32] [debug line = 181:58]
  %117 = icmp ult i32 %116, 2073600, !dbg !178    ; [#uses=1 type=i1] [debug line = 181:58]
  br i1 %117, label %118, label %126, !dbg !178   ; [debug line = 181:58]

; <label>:118                                     ; preds = %115
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([13 x i8]* @.str10, i32 0, i32 0)) nounwind, !dbg !179 ; [debug line = 183:3]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([13 x i8]* @.str10, i32 0, i32 0)) nounwind, !dbg !179 ; [debug line = 183:3]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !181 ; [debug line = 182:1]
  %119 = load i32* %i2, align 4, !dbg !182        ; [#uses=1 type=i32] [debug line = 183:2]
  %120 = zext i32 %119 to i64, !dbg !182          ; [#uses=1 type=i64] [debug line = 183:2]
  %121 = load i32** %2, align 8, !dbg !182        ; [#uses=1 type=i32*] [debug line = 183:2]
  %122 = getelementptr inbounds i32* %121, i64 %120, !dbg !182 ; [#uses=1 type=i32*] [debug line = 183:2]
  store i32 0, i32* %122, align 4, !dbg !182      ; [debug line = 183:2]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([13 x i8]* @.str10, i32 0, i32 0)) nounwind, !dbg !183 ; [debug line = 183:15]
  br label %123, !dbg !183                        ; [debug line = 183:15]

; <label>:123                                     ; preds = %118
  %124 = load i32* %i2, align 4, !dbg !184        ; [#uses=1 type=i32] [debug line = 181:79]
  %125 = add i32 %124, 1, !dbg !184               ; [#uses=1 type=i32] [debug line = 181:79]
  store i32 %125, i32* %i2, align 4, !dbg !184    ; [debug line = 181:79]
  br label %115, !dbg !184                        ; [debug line = 181:79]

; <label>:126                                     ; preds = %115
  br label %127, !dbg !185                        ; [debug line = 183:15]

; <label>:127                                     ; preds = %126
  call void @llvm.dbg.declare(metadata !{i32* %i3}, metadata !186), !dbg !188 ; [debug line = 184:36] [debug variable = i]
  store i32 0, i32* %i3, align 4, !dbg !189       ; [debug line = 184:41]
  br label %128, !dbg !189                        ; [debug line = 184:41]

; <label>:128                                     ; preds = %136, %127
  %129 = load i32* %i3, align 4, !dbg !189        ; [#uses=1 type=i32] [debug line = 184:41]
  %130 = icmp ult i32 %129, 2073600, !dbg !189    ; [#uses=1 type=i1] [debug line = 184:41]
  br i1 %130, label %131, label %139, !dbg !189   ; [debug line = 184:41]

; <label>:131                                     ; preds = %128
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([15 x i8]* @.str11, i32 0, i32 0)) nounwind, !dbg !190 ; [debug line = 186:3]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([15 x i8]* @.str11, i32 0, i32 0)) nounwind, !dbg !190 ; [debug line = 186:3]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !192 ; [debug line = 185:1]
  %132 = load i32* %i3, align 4, !dbg !193        ; [#uses=1 type=i32] [debug line = 186:2]
  %133 = zext i32 %132 to i64, !dbg !193          ; [#uses=1 type=i64] [debug line = 186:2]
  %134 = load i32** %2, align 8, !dbg !193        ; [#uses=1 type=i32*] [debug line = 186:2]
  %135 = getelementptr inbounds i32* %134, i64 %133, !dbg !193 ; [#uses=1 type=i32*] [debug line = 186:2]
  store i32 0, i32* %135, align 4, !dbg !193      ; [debug line = 186:2]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([15 x i8]* @.str11, i32 0, i32 0)) nounwind, !dbg !194 ; [debug line = 186:15]
  br label %136, !dbg !194                        ; [debug line = 186:15]

; <label>:136                                     ; preds = %131
  %137 = load i32* %i3, align 4, !dbg !195        ; [#uses=1 type=i32] [debug line = 184:62]
  %138 = add i32 %137, 1920, !dbg !195            ; [#uses=1 type=i32] [debug line = 184:62]
  store i32 %138, i32* %i3, align 4, !dbg !195    ; [debug line = 184:62]
  br label %128, !dbg !195                        ; [debug line = 184:62]

; <label>:139                                     ; preds = %128
  br label %140, !dbg !196                        ; [debug line = 186:15]

; <label>:140                                     ; preds = %139
  call void @llvm.dbg.declare(metadata !{i32* %i4}, metadata !197), !dbg !199 ; [debug line = 187:35] [debug variable = i]
  store i32 1919, i32* %i4, align 4, !dbg !200    ; [debug line = 187:47]
  br label %141, !dbg !200                        ; [debug line = 187:47]

; <label>:141                                     ; preds = %149, %140
  %142 = load i32* %i4, align 4, !dbg !200        ; [#uses=1 type=i32] [debug line = 187:47]
  %143 = icmp ult i32 %142, 2073600, !dbg !200    ; [#uses=1 type=i1] [debug line = 187:47]
  br i1 %143, label %144, label %152, !dbg !200   ; [debug line = 187:47]

; <label>:144                                     ; preds = %141
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([14 x i8]* @.str12, i32 0, i32 0)) nounwind, !dbg !201 ; [debug line = 189:3]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([14 x i8]* @.str12, i32 0, i32 0)) nounwind, !dbg !201 ; [debug line = 189:3]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !203 ; [debug line = 188:1]
  %145 = load i32* %i4, align 4, !dbg !204        ; [#uses=1 type=i32] [debug line = 189:2]
  %146 = zext i32 %145 to i64, !dbg !204          ; [#uses=1 type=i64] [debug line = 189:2]
  %147 = load i32** %2, align 8, !dbg !204        ; [#uses=1 type=i32*] [debug line = 189:2]
  %148 = getelementptr inbounds i32* %147, i64 %146, !dbg !204 ; [#uses=1 type=i32*] [debug line = 189:2]
  store i32 0, i32* %148, align 4, !dbg !204      ; [debug line = 189:2]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([14 x i8]* @.str12, i32 0, i32 0)) nounwind, !dbg !205 ; [debug line = 189:15]
  br label %149, !dbg !205                        ; [debug line = 189:15]

; <label>:149                                     ; preds = %144
  %150 = load i32* %i4, align 4, !dbg !206        ; [#uses=1 type=i32] [debug line = 187:68]
  %151 = add i32 %150, 1920, !dbg !206            ; [#uses=1 type=i32] [debug line = 187:68]
  store i32 %151, i32* %i4, align 4, !dbg !206    ; [debug line = 187:68]
  br label %141, !dbg !206                        ; [debug line = 187:68]

; <label>:152                                     ; preds = %141
  br label %153, !dbg !207                        ; [debug line = 189:15]

; <label>:153                                     ; preds = %152
  call void @llvm.dbg.declare(metadata !{i32* %i5}, metadata !208), !dbg !210 ; [debug line = 191:16] [debug variable = i]
  store i32 0, i32* %i5, align 4, !dbg !211       ; [debug line = 191:21]
  br label %154, !dbg !211                        ; [debug line = 191:21]

; <label>:154                                     ; preds = %184, %153
  %155 = load i32* %i5, align 4, !dbg !211        ; [#uses=1 type=i32] [debug line = 191:21]
  %156 = icmp slt i32 %155, 2073600, !dbg !211    ; [#uses=1 type=i1] [debug line = 191:21]
  br i1 %156, label %157, label %187, !dbg !211   ; [debug line = 191:21]

; <label>:157                                     ; preds = %154
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([4 x i8]* @.str13, i32 0, i32 0)) nounwind, !dbg !212 ; [debug line = 191:46]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([4 x i8]* @.str13, i32 0, i32 0)) nounwind, !dbg !212 ; [debug line = 191:46]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !214 ; [debug line = 192:1]
  call void @llvm.dbg.declare(metadata !{i8* %val}, metadata !215), !dbg !216 ; [debug line = 194:10] [debug variable = val]
  %158 = load i32* %i5, align 4, !dbg !217        ; [#uses=1 type=i32] [debug line = 194:26]
  %159 = sext i32 %158 to i64, !dbg !217          ; [#uses=1 type=i64] [debug line = 194:26]
  %160 = load i32** %2, align 8, !dbg !217        ; [#uses=1 type=i32*] [debug line = 194:26]
  %161 = getelementptr inbounds i32* %160, i64 %159, !dbg !217 ; [#uses=1 type=i32*] [debug line = 194:26]
  %162 = load i32* %161, align 4, !dbg !217       ; [#uses=1 type=i32] [debug line = 194:26]
  %163 = trunc i32 %162 to i8, !dbg !217          ; [#uses=1 type=i8] [debug line = 194:26]
  store i8 %163, i8* %val, align 1, !dbg !217     ; [debug line = 194:26]
  call void @llvm.dbg.declare(metadata !{%union.OneToFourPixels* %fourWide}, metadata !218), !dbg !231 ; [debug line = 195:20] [debug variable = fourWide]
  br label %164, !dbg !232                        ; [debug line = 195:28]

; <label>:164                                     ; preds = %157
  call void @llvm.dbg.declare(metadata !{i32* %j6}, metadata !233), !dbg !235 ; [debug line = 196:19] [debug variable = j]
  store i32 0, i32* %j6, align 4, !dbg !236       ; [debug line = 196:24]
  br label %165, !dbg !236                        ; [debug line = 196:24]

; <label>:165                                     ; preds = %174, %164
  %166 = load i32* %j6, align 4, !dbg !236        ; [#uses=1 type=i32] [debug line = 196:24]
  %167 = icmp slt i32 %166, 4, !dbg !236          ; [#uses=1 type=i1] [debug line = 196:24]
  br i1 %167, label %168, label %177, !dbg !236   ; [debug line = 196:24]

; <label>:168                                     ; preds = %165
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([7 x i8]* @.str14, i32 0, i32 0)) nounwind, !dbg !237 ; [debug line = 197:5]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([7 x i8]* @.str14, i32 0, i32 0)) nounwind, !dbg !237 ; [debug line = 197:5]
  %169 = load i8* %val, align 1, !dbg !237        ; [#uses=1 type=i8] [debug line = 197:5]
  %170 = load i32* %j6, align 4, !dbg !237        ; [#uses=1 type=i32] [debug line = 197:5]
  %171 = sext i32 %170 to i64, !dbg !237          ; [#uses=1 type=i64] [debug line = 197:5]
  %172 = bitcast %union.OneToFourPixels* %fourWide to [4 x i8]*, !dbg !237 ; [#uses=1 type=[4 x i8]*] [debug line = 197:5]
  %173 = getelementptr inbounds [4 x i8]* %172, i32 0, i64 %171, !dbg !237 ; [#uses=1 type=i8*] [debug line = 197:5]
  store i8 %169, i8* %173, align 1, !dbg !237     ; [debug line = 197:5]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([7 x i8]* @.str14, i32 0, i32 0)) nounwind, !dbg !239 ; [debug line = 197:23]
  br label %174, !dbg !239                        ; [debug line = 197:23]

; <label>:174                                     ; preds = %168
  %175 = load i32* %j6, align 4, !dbg !240        ; [#uses=1 type=i32] [debug line = 196:33]
  %176 = add nsw i32 %175, 1, !dbg !240           ; [#uses=1 type=i32] [debug line = 196:33]
  store i32 %176, i32* %j6, align 4, !dbg !240    ; [debug line = 196:33]
  br label %165, !dbg !240                        ; [debug line = 196:33]

; <label>:177                                     ; preds = %165
  %178 = bitcast %union.OneToFourPixels* %fourWide to i32*, !dbg !241 ; [#uses=1 type=i32*] [debug line = 198:4]
  %179 = load i32* %178, align 4, !dbg !241       ; [#uses=1 type=i32] [debug line = 198:4]
  %180 = load i32* %i5, align 4, !dbg !241        ; [#uses=1 type=i32] [debug line = 198:4]
  %181 = sext i32 %180 to i64, !dbg !241          ; [#uses=1 type=i64] [debug line = 198:4]
  %182 = load i32** %2, align 8, !dbg !241        ; [#uses=1 type=i32*] [debug line = 198:4]
  %183 = getelementptr inbounds i32* %182, i64 %181, !dbg !241 ; [#uses=1 type=i32*] [debug line = 198:4]
  store i32 %179, i32* %183, align 4, !dbg !241   ; [debug line = 198:4]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([4 x i8]* @.str13, i32 0, i32 0)) nounwind, !dbg !242 ; [debug line = 199:3]
  br label %184, !dbg !242                        ; [debug line = 199:3]

; <label>:184                                     ; preds = %177
  %185 = load i32* %i5, align 4, !dbg !243        ; [#uses=1 type=i32] [debug line = 191:40]
  %186 = add nsw i32 %185, 1, !dbg !243           ; [#uses=1 type=i32] [debug line = 191:40]
  store i32 %186, i32* %i5, align 4, !dbg !243    ; [debug line = 191:40]
  br label %154, !dbg !243                        ; [debug line = 191:40]

; <label>:187                                     ; preds = %154
  ret void, !dbg !244                             ; [debug line = 201:1]
}

; [#uses=2]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

; [#uses=3]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=8]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=6]
declare void @_ssdm_op_SpecPipeline(...) nounwind

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!33, !40, !45}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"X:/Bureau/HDMI_3610/3610_4/1490679_1771119/sobellab4/solution1/.autopilot/db/Sobel.pragma.2.cpp", metadata !"X:\5CBureau\5CHDMI_3610\5C3610_4\5C1490679_1771119", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !24} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !16, metadata !21}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"sobel_operator", metadata !"sobel_operator", metadata !"_Z14sobel_operatoriPh", metadata !6, i32 30, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8 (i32, i8*)* @_Z14sobel_operatoriPh, null, null, metadata !14, i32 31} ; [ DW_TAG_subprogram ]
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
!16 = metadata !{i32 786478, i32 0, metadata !6, metadata !"sobel_filter", metadata !"sobel_filter", metadata !"_Z12sobel_filterPhPj", metadata !6, i32 88, metadata !17, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i32*)* @_Z12sobel_filterPhPj, null, null, metadata !14, i32 89} ; [ DW_TAG_subprogram ]
!17 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !18, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!18 = metadata !{null, metadata !13, metadata !19}
!19 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ]
!20 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!21 = metadata !{i32 786478, i32 0, metadata !6, metadata !"getVal", metadata !"getVal", metadata !"_ZL6getValiiiiPh", metadata !6, i32 11, metadata !22, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8 (i32, i32, i32, i32, i8*)* @_ZL6getValiiiiPh, null, null, metadata !14, i32 12} ; [ DW_TAG_subprogram ]
!22 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !23, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!23 = metadata !{metadata !9, metadata !12, metadata !12, metadata !12, metadata !12, metadata !13}
!24 = metadata !{metadata !25}
!25 = metadata !{metadata !26, metadata !32}
!26 = metadata !{i32 786484, i32 0, metadata !5, metadata !"x_op", metadata !"x_op", metadata !"", metadata !6, i32 52, metadata !27, i32 1, i32 1, [3 x [3 x i8]]* @_ZZ14sobel_operatoriPhE4x_op} ; [ DW_TAG_variable ]
!27 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 72, i64 8, i32 0, i32 0, metadata !28, metadata !30, i32 0, i32 0} ; [ DW_TAG_array_type ]
!28 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_const_type ]
!29 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!30 = metadata !{metadata !31, metadata !31}
!31 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ]
!32 = metadata !{i32 786484, i32 0, metadata !5, metadata !"y_op", metadata !"y_op", metadata !"", metadata !6, i32 57, metadata !27, i32 1, i32 1, [3 x [3 x i8]]* @_ZZ14sobel_operatoriPhE4y_op} ; [ DW_TAG_variable ]
!33 = metadata !{i8 (i32, i8*)* @_Z14sobel_operatoriPh, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39}
!34 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 1}
!35 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!36 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"uint8_t*"}
!37 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const", metadata !""}
!38 = metadata !{metadata !"kernel_arg_name", metadata !"fullIndex", metadata !"image"}
!39 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!40 = metadata !{void (i8*, i32*)* @_Z12sobel_filterPhPj, metadata !41, metadata !35, metadata !42, metadata !43, metadata !44, metadata !39}
!41 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!42 = metadata !{metadata !"kernel_arg_type", metadata !"uint8_t*", metadata !"uint*"}
!43 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!44 = metadata !{metadata !"kernel_arg_name", metadata !"inter_pix", metadata !"out_pix"}
!45 = metadata !{i8 (i32, i32, i32, i32, i8*)* @_ZL6getValiiiiPh, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !39}
!46 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 1}
!47 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!48 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"uint8_t*"}
!49 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!50 = metadata !{metadata !"kernel_arg_name", metadata !"index", metadata !"xDiff", metadata !"yDiff", metadata !"img_width", metadata !"Y"}
!51 = metadata !{i32 786689, metadata !5, metadata !"fullIndex", metadata !6, i32 16777246, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!52 = metadata !{i32 30, i32 34, metadata !5, null}
!53 = metadata !{i32 786689, metadata !5, metadata !"image", metadata !6, i32 33554462, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!54 = metadata !{i32 30, i32 55, metadata !5, null}
!55 = metadata !{i32 32, i32 1, metadata !56, null}
!56 = metadata !{i32 786443, metadata !5, i32 31, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!57 = metadata !{i32 786688, metadata !56, metadata !"x_weight", metadata !6, i32 46, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!58 = metadata !{i32 46, i32 6, metadata !56, null}
!59 = metadata !{i32 46, i32 18, metadata !56, null}
!60 = metadata !{i32 786688, metadata !56, metadata !"y_weight", metadata !6, i32 47, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!61 = metadata !{i32 47, i32 6, metadata !56, null}
!62 = metadata !{i32 47, i32 18, metadata !56, null}
!63 = metadata !{i32 786688, metadata !56, metadata !"edge_weight", metadata !6, i32 49, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!64 = metadata !{i32 49, i32 11, metadata !56, null}
!65 = metadata !{i32 786688, metadata !56, metadata !"edge_val", metadata !6, i32 50, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!66 = metadata !{i32 50, i32 10, metadata !56, null}
!67 = metadata !{i32 55, i32 1, metadata !56, null}
!68 = metadata !{i32 60, i32 1, metadata !56, null}
!69 = metadata !{i32 786688, metadata !70, metadata !"i", metadata !6, i32 63, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!70 = metadata !{i32 786443, metadata !56, i32 63, i32 2, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!71 = metadata !{i32 63, i32 11, metadata !70, null}
!72 = metadata !{i32 63, i32 16, metadata !70, null}
!73 = metadata !{i32 63, i32 31, metadata !74, null}
!74 = metadata !{i32 786443, metadata !70, i32 63, i32 30, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!75 = metadata !{i32 64, i32 1, metadata !74, null}
!76 = metadata !{i32 786688, metadata !77, metadata !"j", metadata !6, i32 65, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!77 = metadata !{i32 786443, metadata !74, i32 65, i32 2, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!78 = metadata !{i32 65, i32 11, metadata !77, null}
!79 = metadata !{i32 65, i32 16, metadata !77, null}
!80 = metadata !{i32 67, i32 3, metadata !81, null}
!81 = metadata !{i32 786443, metadata !77, i32 65, i32 30, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!82 = metadata !{i32 67, i32 26, metadata !81, null}
!83 = metadata !{i32 70, i32 3, metadata !81, null}
!84 = metadata !{i32 70, i32 26, metadata !81, null}
!85 = metadata !{i32 71, i32 3, metadata !81, null}
!86 = metadata !{i32 65, i32 25, metadata !77, null}
!87 = metadata !{i32 72, i32 2, metadata !74, null}
!88 = metadata !{i32 63, i32 25, metadata !70, null}
!89 = metadata !{i32 74, i32 2, metadata !56, null}
!90 = metadata !{i32 76, i32 2, metadata !56, null}
!91 = metadata !{i32 79, i32 2, metadata !56, null}
!92 = metadata !{i32 80, i32 3, metadata !56, null}
!93 = metadata !{i32 81, i32 7, metadata !56, null}
!94 = metadata !{i32 82, i32 3, metadata !56, null}
!95 = metadata !{i32 84, i32 2, metadata !56, null}
!96 = metadata !{i32 786689, metadata !21, metadata !"index", metadata !6, i32 16777227, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!97 = metadata !{i32 11, i32 34, metadata !21, null}
!98 = metadata !{i32 786689, metadata !21, metadata !"xDiff", metadata !6, i32 33554443, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!99 = metadata !{i32 11, i32 45, metadata !21, null}
!100 = metadata !{i32 786689, metadata !21, metadata !"yDiff", metadata !6, i32 50331659, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!101 = metadata !{i32 11, i32 56, metadata !21, null}
!102 = metadata !{i32 786689, metadata !21, metadata !"img_width", metadata !6, i32 67108875, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!103 = metadata !{i32 11, i32 67, metadata !21, null}
!104 = metadata !{i32 786689, metadata !21, metadata !"Y", metadata !6, i32 83886091, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!105 = metadata !{i32 11, i32 88, metadata !21, null}
!106 = metadata !{i32 786688, metadata !107, metadata !"fullIndex", metadata !6, i32 13, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!107 = metadata !{i32 786443, metadata !21, i32 12, i32 1, metadata !6, i32 25} ; [ DW_TAG_lexical_block ]
!108 = metadata !{i32 13, i32 6, metadata !107, null}
!109 = metadata !{i32 13, i32 55, metadata !107, null}
!110 = metadata !{i32 14, i32 2, metadata !107, null}
!111 = metadata !{i32 17, i32 3, metadata !112, null}
!112 = metadata !{i32 786443, metadata !107, i32 15, i32 2, metadata !6, i32 26} ; [ DW_TAG_lexical_block ]
!113 = metadata !{i32 18, i32 2, metadata !112, null}
!114 = metadata !{i32 19, i32 7, metadata !107, null}
!115 = metadata !{i32 22, i32 3, metadata !116, null}
!116 = metadata !{i32 786443, metadata !107, i32 20, i32 2, metadata !6, i32 27} ; [ DW_TAG_lexical_block ]
!117 = metadata !{i32 23, i32 2, metadata !116, null}
!118 = metadata !{i32 25, i32 2, metadata !107, null}
!119 = metadata !{i32 786689, metadata !16, metadata !"inter_pix", metadata !6, i32 16777304, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!120 = metadata !{i32 88, i32 27, metadata !16, null}
!121 = metadata !{i32 786689, metadata !16, metadata !"out_pix", metadata !6, i32 33554520, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!122 = metadata !{i32 88, i32 60, metadata !16, null}
!123 = metadata !{i32 89, i32 2, metadata !124, null}
!124 = metadata !{i32 786443, metadata !16, i32 89, i32 1, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!125 = metadata !{i32 89, i32 46, metadata !124, null}
!126 = metadata !{i32 97, i32 1, metadata !124, null}
!127 = metadata !{i32 98, i32 1, metadata !124, null}
!128 = metadata !{i32 99, i32 1, metadata !124, null}
!129 = metadata !{i32 786688, metadata !124, metadata !"superCache", metadata !6, i32 103, metadata !130, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!130 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 61440, i64 8, i32 0, i32 0, metadata !9, metadata !131, i32 0, i32 0} ; [ DW_TAG_array_type ]
!131 = metadata !{metadata !132}
!132 = metadata !{i32 786465, i64 0, i64 7679}    ; [ DW_TAG_subrange_type ]
!133 = metadata !{i32 103, i32 10, metadata !124, null}
!134 = metadata !{i32 103, i32 28, metadata !124, null}
!135 = metadata !{i32 786688, metadata !136, metadata !"i", metadata !6, i32 120, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!136 = metadata !{i32 786443, metadata !124, i32 120, i32 17, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!137 = metadata !{i32 120, i32 35, metadata !136, null}
!138 = metadata !{i32 120, i32 40, metadata !136, null}
!139 = metadata !{i32 120, i32 62, metadata !140, null}
!140 = metadata !{i32 786443, metadata !136, i32 120, i32 61, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!141 = metadata !{i32 786688, metadata !142, metadata !"j", metadata !6, i32 121, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!142 = metadata !{i32 786443, metadata !140, i32 121, i32 18, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!143 = metadata !{i32 121, i32 36, metadata !142, null}
!144 = metadata !{i32 121, i32 41, metadata !142, null}
!145 = metadata !{i32 121, i32 59, metadata !146, null}
!146 = metadata !{i32 786443, metadata !142, i32 121, i32 58, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!147 = metadata !{i32 122, i32 1, metadata !146, null}
!148 = metadata !{i32 123, i32 2, metadata !146, null}
!149 = metadata !{i32 124, i32 5, metadata !150, null}
!150 = metadata !{i32 786443, metadata !146, i32 123, i32 13, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!151 = metadata !{i32 125, i32 4, metadata !150, null}
!152 = metadata !{i32 126, i32 9, metadata !146, null}
!153 = metadata !{i32 127, i32 5, metadata !154, null}
!154 = metadata !{i32 786443, metadata !146, i32 126, i32 33, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!155 = metadata !{i32 128, i32 31, metadata !154, null}
!156 = metadata !{i32 129, i32 4, metadata !154, null}
!157 = metadata !{i32 131, i32 31, metadata !158, null}
!158 = metadata !{i32 786443, metadata !146, i32 130, i32 9, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!159 = metadata !{i32 133, i32 3, metadata !146, null}
!160 = metadata !{i32 121, i32 53, metadata !142, null}
!161 = metadata !{i32 176, i32 2, metadata !140, null}
!162 = metadata !{i32 120, i32 56, metadata !136, null}
!163 = metadata !{i32 176, i32 2, metadata !136, null}
!164 = metadata !{i32 786688, metadata !165, metadata !"i", metadata !6, i32 178, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!165 = metadata !{i32 786443, metadata !124, i32 178, i32 17, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!166 = metadata !{i32 178, i32 35, metadata !165, null}
!167 = metadata !{i32 178, i32 40, metadata !165, null}
!168 = metadata !{i32 180, i32 3, metadata !169, null}
!169 = metadata !{i32 786443, metadata !165, i32 180, i32 2, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!170 = metadata !{i32 179, i32 1, metadata !169, null}
!171 = metadata !{i32 180, i32 2, metadata !169, null}
!172 = metadata !{i32 180, i32 15, metadata !169, null}
!173 = metadata !{i32 178, i32 52, metadata !165, null}
!174 = metadata !{i32 180, i32 15, metadata !165, null}
!175 = metadata !{i32 786688, metadata !176, metadata !"i", metadata !6, i32 181, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!176 = metadata !{i32 786443, metadata !124, i32 181, i32 16, metadata !6, i32 15} ; [ DW_TAG_lexical_block ]
!177 = metadata !{i32 181, i32 34, metadata !176, null}
!178 = metadata !{i32 181, i32 58, metadata !176, null}
!179 = metadata !{i32 183, i32 3, metadata !180, null}
!180 = metadata !{i32 786443, metadata !176, i32 183, i32 2, metadata !6, i32 16} ; [ DW_TAG_lexical_block ]
!181 = metadata !{i32 182, i32 1, metadata !180, null}
!182 = metadata !{i32 183, i32 2, metadata !180, null}
!183 = metadata !{i32 183, i32 15, metadata !180, null}
!184 = metadata !{i32 181, i32 79, metadata !176, null}
!185 = metadata !{i32 183, i32 15, metadata !176, null}
!186 = metadata !{i32 786688, metadata !187, metadata !"i", metadata !6, i32 184, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!187 = metadata !{i32 786443, metadata !124, i32 184, i32 18, metadata !6, i32 17} ; [ DW_TAG_lexical_block ]
!188 = metadata !{i32 184, i32 36, metadata !187, null}
!189 = metadata !{i32 184, i32 41, metadata !187, null}
!190 = metadata !{i32 186, i32 3, metadata !191, null}
!191 = metadata !{i32 786443, metadata !187, i32 186, i32 2, metadata !6, i32 18} ; [ DW_TAG_lexical_block ]
!192 = metadata !{i32 185, i32 1, metadata !191, null}
!193 = metadata !{i32 186, i32 2, metadata !191, null}
!194 = metadata !{i32 186, i32 15, metadata !191, null}
!195 = metadata !{i32 184, i32 62, metadata !187, null}
!196 = metadata !{i32 186, i32 15, metadata !187, null}
!197 = metadata !{i32 786688, metadata !198, metadata !"i", metadata !6, i32 187, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!198 = metadata !{i32 786443, metadata !124, i32 187, i32 17, metadata !6, i32 19} ; [ DW_TAG_lexical_block ]
!199 = metadata !{i32 187, i32 35, metadata !198, null}
!200 = metadata !{i32 187, i32 47, metadata !198, null}
!201 = metadata !{i32 189, i32 3, metadata !202, null}
!202 = metadata !{i32 786443, metadata !198, i32 189, i32 2, metadata !6, i32 20} ; [ DW_TAG_lexical_block ]
!203 = metadata !{i32 188, i32 1, metadata !202, null}
!204 = metadata !{i32 189, i32 2, metadata !202, null}
!205 = metadata !{i32 189, i32 15, metadata !202, null}
!206 = metadata !{i32 187, i32 68, metadata !198, null}
!207 = metadata !{i32 189, i32 15, metadata !198, null}
!208 = metadata !{i32 786688, metadata !209, metadata !"i", metadata !6, i32 191, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!209 = metadata !{i32 786443, metadata !124, i32 191, i32 7, metadata !6, i32 21} ; [ DW_TAG_lexical_block ]
!210 = metadata !{i32 191, i32 16, metadata !209, null}
!211 = metadata !{i32 191, i32 21, metadata !209, null}
!212 = metadata !{i32 191, i32 46, metadata !213, null}
!213 = metadata !{i32 786443, metadata !209, i32 191, i32 45, metadata !6, i32 22} ; [ DW_TAG_lexical_block ]
!214 = metadata !{i32 192, i32 1, metadata !213, null}
!215 = metadata !{i32 786688, metadata !213, metadata !"val", metadata !6, i32 194, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!216 = metadata !{i32 194, i32 10, metadata !213, null}
!217 = metadata !{i32 194, i32 26, metadata !213, null}
!218 = metadata !{i32 786688, metadata !213, metadata !"fourWide", metadata !6, i32 195, metadata !219, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!219 = metadata !{i32 786454, null, metadata !"OneToFourPixels", metadata !6, i32 9, i64 0, i64 0, i64 0, i32 0, metadata !220} ; [ DW_TAG_typedef ]
!220 = metadata !{i32 786455, null, metadata !"", metadata !6, i32 6, i64 32, i64 32, i64 0, i32 0, null, metadata !221, i32 0, null} ; [ DW_TAG_union_type ]
!221 = metadata !{metadata !222, metadata !226, metadata !227}
!222 = metadata !{i32 786445, metadata !220, metadata !"pix", metadata !6, i32 7, i64 32, i64 8, i64 0, i32 0, metadata !223} ; [ DW_TAG_member ]
!223 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 32, i64 8, i32 0, i32 0, metadata !9, metadata !224, i32 0, i32 0} ; [ DW_TAG_array_type ]
!224 = metadata !{metadata !225}
!225 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ]
!226 = metadata !{i32 786445, metadata !220, metadata !"full", metadata !6, i32 8, i64 32, i64 32, i64 0, i32 0, metadata !20} ; [ DW_TAG_member ]
!227 = metadata !{i32 786478, i32 0, metadata !220, metadata !"", metadata !"", metadata !"", metadata !6, i32 6, metadata !228, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !14, i32 6} ; [ DW_TAG_subprogram ]
!228 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !229, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!229 = metadata !{null, metadata !230}
!230 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !220} ; [ DW_TAG_pointer_type ]
!231 = metadata !{i32 195, i32 20, metadata !213, null}
!232 = metadata !{i32 195, i32 28, metadata !213, null}
!233 = metadata !{i32 786688, metadata !234, metadata !"j", metadata !6, i32 196, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!234 = metadata !{i32 786443, metadata !213, i32 196, i32 10, metadata !6, i32 23} ; [ DW_TAG_lexical_block ]
!235 = metadata !{i32 196, i32 19, metadata !234, null}
!236 = metadata !{i32 196, i32 24, metadata !234, null}
!237 = metadata !{i32 197, i32 5, metadata !238, null}
!238 = metadata !{i32 786443, metadata !234, i32 197, i32 5, metadata !6, i32 24} ; [ DW_TAG_lexical_block ]
!239 = metadata !{i32 197, i32 23, metadata !238, null}
!240 = metadata !{i32 196, i32 33, metadata !234, null}
!241 = metadata !{i32 198, i32 4, metadata !213, null}
!242 = metadata !{i32 199, i32 3, metadata !213, null}
!243 = metadata !{i32 191, i32 40, metadata !209, null}
!244 = metadata !{i32 201, i32 1, metadata !124, null}
