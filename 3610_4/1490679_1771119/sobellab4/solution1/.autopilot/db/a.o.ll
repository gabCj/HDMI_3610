; ModuleID = 'X:/Bureau/HDMI_3610/3610_4/1490679_1771119/sobellab4/solution1/.autopilot/db/a.o.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

%union.OneToFourPixels = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@_ZZ14sobel_operatoriPhE4x_op = internal constant [3 x [3 x i8]] [[3 x i8] c"\FF\00\01", [3 x i8] c"\FE\00\02", [3 x i8] c"\FF\00\01"], align 1 ; [#uses=2 type=[3 x [3 x i8]]*]
@_ZZ14sobel_operatoriPhE4y_op = internal constant [3 x [3 x i8]] [[3 x i8] c"\01\02\01", [3 x i8] zeroinitializer, [3 x i8] c"\FF\FE\FF"], align 1 ; [#uses=2 type=[3 x [3 x i8]]*]
@.str1 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str2 = private unnamed_addr constant [6 x i8] c"gmem0\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str3 = private unnamed_addr constant [6 x i8] c"slave\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str4 = private unnamed_addr constant [6 x i8] c"gmem1\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str5 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]
@.str6 = private unnamed_addr constant [14 x i8] c"ZerosFirstRow\00", align 1 ; [#uses=1 type=[14 x i8]*]
@.str7 = private unnamed_addr constant [13 x i8] c"ZerosLastRow\00", align 1 ; [#uses=1 type=[13 x i8]*]
@.str8 = private unnamed_addr constant [15 x i8] c"ZerosFirstLine\00", align 1 ; [#uses=1 type=[15 x i8]*]
@.str9 = private unnamed_addr constant [14 x i8] c"ZerosLastLine\00", align 1 ; [#uses=1 type=[14 x i8]*]
@.str10 = private unnamed_addr constant [14 x i8] c"OperatorLines\00", align 1 ; [#uses=1 type=[14 x i8]*]
@.str11 = private unnamed_addr constant [13 x i8] c"OperatorRows\00", align 1 ; [#uses=1 type=[13 x i8]*]
@.str12 = private unnamed_addr constant [4 x i8] c"IMG\00", align 1 ; [#uses=1 type=[4 x i8]*]
@.str13 = private unnamed_addr constant [7 x i8] c"OneTo4\00", align 1 ; [#uses=1 type=[7 x i8]*]

; [#uses=1]
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
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !51), !dbg !52 ; [debug line = 16:34] [debug variable = fullIndex]
  store i8* %image, i8** %2, align 8
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !53), !dbg !54 ; [debug line = 16:55] [debug variable = image]
  call void (...)* @_ssdm_InlineSelf(i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !55 ; [debug line = 18:1]
  call void @llvm.dbg.declare(metadata !{i32* %x_weight}, metadata !57), !dbg !58 ; [debug line = 32:6] [debug variable = x_weight]
  store i32 0, i32* %x_weight, align 4, !dbg !59  ; [debug line = 32:18]
  call void @llvm.dbg.declare(metadata !{i32* %y_weight}, metadata !60), !dbg !61 ; [debug line = 33:6] [debug variable = y_weight]
  store i32 0, i32* %y_weight, align 4, !dbg !62  ; [debug line = 33:18]
  call void @llvm.dbg.declare(metadata !{i32* %edge_weight}, metadata !63), !dbg !64 ; [debug line = 35:11] [debug variable = edge_weight]
  call void @llvm.dbg.declare(metadata !{i8* %edge_val}, metadata !65), !dbg !66 ; [debug line = 36:10] [debug variable = edge_val]
  call void (...)* @_ssdm_SpecConstant([3 x i8]* getelementptr inbounds ([3 x [3 x i8]]* @_ZZ14sobel_operatoriPhE4x_op, i32 0, i32 0)) nounwind, !dbg !67 ; [debug line = 41:1]
  call void (...)* @_ssdm_SpecConstant([3 x i8]* getelementptr inbounds ([3 x [3 x i8]]* @_ZZ14sobel_operatoriPhE4y_op, i32 0, i32 0)) nounwind, !dbg !68 ; [debug line = 45:1]
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !69), !dbg !71 ; [debug line = 47:11] [debug variable = i]
  store i32 0, i32* %i, align 4, !dbg !72         ; [debug line = 47:16]
  br label %3, !dbg !72                           ; [debug line = 47:16]

; <label>:3                                       ; preds = %53, %0
  %4 = load i32* %i, align 4, !dbg !72            ; [#uses=1 type=i32] [debug line = 47:16]
  %5 = icmp slt i32 %4, 3, !dbg !72               ; [#uses=1 type=i1] [debug line = 47:16]
  br i1 %5, label %6, label %56, !dbg !72         ; [debug line = 47:16]

; <label>:6                                       ; preds = %3
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !73), !dbg !76 ; [debug line = 48:12] [debug variable = j]
  store i32 0, i32* %j, align 4, !dbg !77         ; [debug line = 48:17]
  br label %7, !dbg !77                           ; [debug line = 48:17]

; <label>:7                                       ; preds = %49, %6
  %8 = load i32* %j, align 4, !dbg !77            ; [#uses=1 type=i32] [debug line = 48:17]
  %9 = icmp slt i32 %8, 3, !dbg !77               ; [#uses=1 type=i1] [debug line = 48:17]
  br i1 %9, label %10, label %52, !dbg !77        ; [debug line = 48:17]

; <label>:10                                      ; preds = %7
  %11 = load i32* %x_weight, align 4, !dbg !78    ; [#uses=1 type=i32] [debug line = 50:3]
  %12 = load i32* %1, align 4, !dbg !80           ; [#uses=1 type=i32] [debug line = 50:26]
  %13 = load i32* %i, align 4, !dbg !80           ; [#uses=1 type=i32] [debug line = 50:26]
  %14 = sub nsw i32 %13, 1, !dbg !80              ; [#uses=1 type=i32] [debug line = 50:26]
  %15 = load i32* %j, align 4, !dbg !80           ; [#uses=1 type=i32] [debug line = 50:26]
  %16 = sub nsw i32 %15, 1, !dbg !80              ; [#uses=1 type=i32] [debug line = 50:26]
  %17 = load i8** %2, align 8, !dbg !80           ; [#uses=1 type=i8*] [debug line = 50:26]
  %18 = call zeroext i8 @_ZL6getValiiiiPh(i32 %12, i32 %14, i32 %16, i32 1920, i8* %17), !dbg !80 ; [#uses=1 type=i8] [debug line = 50:26]
  %19 = zext i8 %18 to i32, !dbg !80              ; [#uses=1 type=i32] [debug line = 50:26]
  %20 = load i32* %j, align 4, !dbg !80           ; [#uses=1 type=i32] [debug line = 50:26]
  %21 = sext i32 %20 to i64, !dbg !80             ; [#uses=1 type=i64] [debug line = 50:26]
  %22 = load i32* %i, align 4, !dbg !80           ; [#uses=1 type=i32] [debug line = 50:26]
  %23 = sext i32 %22 to i64, !dbg !80             ; [#uses=1 type=i64] [debug line = 50:26]
  %24 = getelementptr inbounds [3 x [3 x i8]]* @_ZZ14sobel_operatoriPhE4x_op, i32 0, i64 %23, !dbg !80 ; [#uses=1 type=[3 x i8]*] [debug line = 50:26]
  %25 = getelementptr inbounds [3 x i8]* %24, i32 0, i64 %21, !dbg !80 ; [#uses=1 type=i8*] [debug line = 50:26]
  %26 = load i8* %25, align 1, !dbg !80           ; [#uses=1 type=i8] [debug line = 50:26]
  %27 = sext i8 %26 to i32, !dbg !80              ; [#uses=1 type=i32] [debug line = 50:26]
  %28 = mul nsw i32 %19, %27, !dbg !80            ; [#uses=1 type=i32] [debug line = 50:26]
  %29 = add nsw i32 %11, %28, !dbg !80            ; [#uses=1 type=i32] [debug line = 50:26]
  store i32 %29, i32* %x_weight, align 4, !dbg !80 ; [debug line = 50:26]
  %30 = load i32* %y_weight, align 4, !dbg !81    ; [#uses=1 type=i32] [debug line = 53:3]
  %31 = load i32* %1, align 4, !dbg !82           ; [#uses=1 type=i32] [debug line = 53:26]
  %32 = load i32* %i, align 4, !dbg !82           ; [#uses=1 type=i32] [debug line = 53:26]
  %33 = sub nsw i32 %32, 1, !dbg !82              ; [#uses=1 type=i32] [debug line = 53:26]
  %34 = load i32* %j, align 4, !dbg !82           ; [#uses=1 type=i32] [debug line = 53:26]
  %35 = sub nsw i32 %34, 1, !dbg !82              ; [#uses=1 type=i32] [debug line = 53:26]
  %36 = load i8** %2, align 8, !dbg !82           ; [#uses=1 type=i8*] [debug line = 53:26]
  %37 = call zeroext i8 @_ZL6getValiiiiPh(i32 %31, i32 %33, i32 %35, i32 1920, i8* %36), !dbg !82 ; [#uses=1 type=i8] [debug line = 53:26]
  %38 = zext i8 %37 to i32, !dbg !82              ; [#uses=1 type=i32] [debug line = 53:26]
  %39 = load i32* %j, align 4, !dbg !82           ; [#uses=1 type=i32] [debug line = 53:26]
  %40 = sext i32 %39 to i64, !dbg !82             ; [#uses=1 type=i64] [debug line = 53:26]
  %41 = load i32* %i, align 4, !dbg !82           ; [#uses=1 type=i32] [debug line = 53:26]
  %42 = sext i32 %41 to i64, !dbg !82             ; [#uses=1 type=i64] [debug line = 53:26]
  %43 = getelementptr inbounds [3 x [3 x i8]]* @_ZZ14sobel_operatoriPhE4y_op, i32 0, i64 %42, !dbg !82 ; [#uses=1 type=[3 x i8]*] [debug line = 53:26]
  %44 = getelementptr inbounds [3 x i8]* %43, i32 0, i64 %40, !dbg !82 ; [#uses=1 type=i8*] [debug line = 53:26]
  %45 = load i8* %44, align 1, !dbg !82           ; [#uses=1 type=i8] [debug line = 53:26]
  %46 = sext i8 %45 to i32, !dbg !82              ; [#uses=1 type=i32] [debug line = 53:26]
  %47 = mul nsw i32 %38, %46, !dbg !82            ; [#uses=1 type=i32] [debug line = 53:26]
  %48 = add nsw i32 %30, %47, !dbg !82            ; [#uses=1 type=i32] [debug line = 53:26]
  store i32 %48, i32* %y_weight, align 4, !dbg !82 ; [debug line = 53:26]
  br label %49, !dbg !83                          ; [debug line = 54:3]

; <label>:49                                      ; preds = %10
  %50 = load i32* %j, align 4, !dbg !84           ; [#uses=1 type=i32] [debug line = 48:26]
  %51 = add nsw i32 %50, 1, !dbg !84              ; [#uses=1 type=i32] [debug line = 48:26]
  store i32 %51, i32* %j, align 4, !dbg !84       ; [debug line = 48:26]
  br label %7, !dbg !84                           ; [debug line = 48:26]

; <label>:52                                      ; preds = %7
  br label %53, !dbg !85                          ; [debug line = 55:2]

; <label>:53                                      ; preds = %52
  %54 = load i32* %i, align 4, !dbg !86           ; [#uses=1 type=i32] [debug line = 47:25]
  %55 = add nsw i32 %54, 1, !dbg !86              ; [#uses=1 type=i32] [debug line = 47:25]
  store i32 %55, i32* %i, align 4, !dbg !86       ; [debug line = 47:25]
  br label %3, !dbg !86                           ; [debug line = 47:25]

; <label>:56                                      ; preds = %3
  %57 = load i32* %x_weight, align 4, !dbg !87    ; [#uses=1 type=i32] [debug line = 57:2]
  %58 = icmp sgt i32 %57, 0, !dbg !87             ; [#uses=1 type=i1] [debug line = 57:2]
  br i1 %58, label %59, label %61, !dbg !87       ; [debug line = 57:2]

; <label>:59                                      ; preds = %56
  %60 = load i32* %x_weight, align 4, !dbg !87    ; [#uses=1 type=i32] [debug line = 57:2]
  br label %64, !dbg !87                          ; [debug line = 57:2]

; <label>:61                                      ; preds = %56
  %62 = load i32* %x_weight, align 4, !dbg !87    ; [#uses=1 type=i32] [debug line = 57:2]
  %63 = sub nsw i32 0, %62, !dbg !87              ; [#uses=1 type=i32] [debug line = 57:2]
  br label %64, !dbg !87                          ; [debug line = 57:2]

; <label>:64                                      ; preds = %61, %59
  %65 = phi i32 [ %60, %59 ], [ %63, %61 ], !dbg !87 ; [#uses=1 type=i32] [debug line = 57:2]
  %66 = load i32* %y_weight, align 4, !dbg !87    ; [#uses=1 type=i32] [debug line = 57:2]
  %67 = icmp sgt i32 %66, 0, !dbg !87             ; [#uses=1 type=i1] [debug line = 57:2]
  br i1 %67, label %68, label %70, !dbg !87       ; [debug line = 57:2]

; <label>:68                                      ; preds = %64
  %69 = load i32* %y_weight, align 4, !dbg !87    ; [#uses=1 type=i32] [debug line = 57:2]
  br label %73, !dbg !87                          ; [debug line = 57:2]

; <label>:70                                      ; preds = %64
  %71 = load i32* %y_weight, align 4, !dbg !87    ; [#uses=1 type=i32] [debug line = 57:2]
  %72 = sub nsw i32 0, %71, !dbg !87              ; [#uses=1 type=i32] [debug line = 57:2]
  br label %73, !dbg !87                          ; [debug line = 57:2]

; <label>:73                                      ; preds = %70, %68
  %74 = phi i32 [ %69, %68 ], [ %72, %70 ], !dbg !87 ; [#uses=1 type=i32] [debug line = 57:2]
  %75 = add nsw i32 %65, %74, !dbg !87            ; [#uses=1 type=i32] [debug line = 57:2]
  store i32 %75, i32* %edge_weight, align 4, !dbg !87 ; [debug line = 57:2]
  %76 = load i32* %edge_weight, align 4, !dbg !88 ; [#uses=1 type=i32] [debug line = 59:2]
  %77 = trunc i32 %76 to i8, !dbg !88             ; [#uses=1 type=i8] [debug line = 59:2]
  %78 = zext i8 %77 to i32, !dbg !88              ; [#uses=1 type=i32] [debug line = 59:2]
  %79 = sub nsw i32 255, %78, !dbg !88            ; [#uses=1 type=i32] [debug line = 59:2]
  %80 = trunc i32 %79 to i8, !dbg !88             ; [#uses=1 type=i8] [debug line = 59:2]
  store i8 %80, i8* %edge_val, align 1, !dbg !88  ; [debug line = 59:2]
  %81 = load i8* %edge_val, align 1, !dbg !89     ; [#uses=1 type=i8] [debug line = 62:2]
  %82 = zext i8 %81 to i32, !dbg !89              ; [#uses=1 type=i32] [debug line = 62:2]
  %83 = icmp sgt i32 %82, 200, !dbg !89           ; [#uses=1 type=i1] [debug line = 62:2]
  br i1 %83, label %84, label %85, !dbg !89       ; [debug line = 62:2]

; <label>:84                                      ; preds = %73
  store i8 -1, i8* %edge_val, align 1, !dbg !90   ; [debug line = 63:3]
  br label %91, !dbg !90                          ; [debug line = 63:3]

; <label>:85                                      ; preds = %73
  %86 = load i8* %edge_val, align 1, !dbg !91     ; [#uses=1 type=i8] [debug line = 64:7]
  %87 = zext i8 %86 to i32, !dbg !91              ; [#uses=1 type=i32] [debug line = 64:7]
  %88 = icmp slt i32 %87, 100, !dbg !91           ; [#uses=1 type=i1] [debug line = 64:7]
  br i1 %88, label %89, label %90, !dbg !91       ; [debug line = 64:7]

; <label>:89                                      ; preds = %85
  store i8 0, i8* %edge_val, align 1, !dbg !92    ; [debug line = 65:3]
  br label %90, !dbg !92                          ; [debug line = 65:3]

; <label>:90                                      ; preds = %89, %85
  br label %91

; <label>:91                                      ; preds = %90, %84
  %92 = load i8* %edge_val, align 1, !dbg !93     ; [#uses=1 type=i8] [debug line = 67:2]
  ret i8 %92, !dbg !93                            ; [debug line = 67:2]
}

; [#uses=26]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_InlineSelf(...) nounwind

; [#uses=2]
declare void @_ssdm_SpecConstant(...) nounwind

; [#uses=2]
define internal zeroext i8 @_ZL6getValiiiiPh(i32 %index, i32 %xDiff, i32 %yDiff, i32 %img_width, i8* %Y) nounwind uwtable inlinehint {
  %1 = alloca i32, align 4                        ; [#uses=2 type=i32*]
  %2 = alloca i32, align 4                        ; [#uses=2 type=i32*]
  %3 = alloca i32, align 4                        ; [#uses=2 type=i32*]
  %4 = alloca i32, align 4                        ; [#uses=2 type=i32*]
  %5 = alloca i8*, align 8                        ; [#uses=2 type=i8**]
  store i32 %index, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !94), !dbg !95 ; [debug line = 11:34] [debug variable = index]
  store i32 %xDiff, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !96), !dbg !97 ; [debug line = 11:45] [debug variable = xDiff]
  store i32 %yDiff, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !98), !dbg !99 ; [debug line = 11:56] [debug variable = yDiff]
  store i32 %img_width, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !100), !dbg !101 ; [debug line = 11:67] [debug variable = img_width]
  store i8* %Y, i8** %5, align 8
  call void @llvm.dbg.declare(metadata !{i8** %5}, metadata !102), !dbg !103 ; [debug line = 11:88] [debug variable = Y]
  %6 = load i32* %1, align 4, !dbg !104           ; [#uses=1 type=i32] [debug line = 13:2]
  %7 = load i32* %3, align 4, !dbg !104           ; [#uses=1 type=i32] [debug line = 13:2]
  %8 = load i32* %4, align 4, !dbg !104           ; [#uses=1 type=i32] [debug line = 13:2]
  %9 = mul nsw i32 %7, %8, !dbg !104              ; [#uses=1 type=i32] [debug line = 13:2]
  %10 = add nsw i32 %6, %9, !dbg !104             ; [#uses=1 type=i32] [debug line = 13:2]
  %11 = load i32* %2, align 4, !dbg !104          ; [#uses=1 type=i32] [debug line = 13:2]
  %12 = add nsw i32 %10, %11, !dbg !104           ; [#uses=1 type=i32] [debug line = 13:2]
  %13 = sext i32 %12 to i64, !dbg !104            ; [#uses=1 type=i64] [debug line = 13:2]
  %14 = load i8** %5, align 8, !dbg !104          ; [#uses=1 type=i8*] [debug line = 13:2]
  %15 = getelementptr inbounds i8* %14, i64 %13, !dbg !104 ; [#uses=1 type=i8*] [debug line = 13:2]
  %16 = load i8* %15, align 1, !dbg !104          ; [#uses=1 type=i8] [debug line = 13:2]
  ret i8 %16, !dbg !104                           ; [debug line = 13:2]
}

; [#uses=0]
define void @_Z12sobel_filterPhPj(i8* %inter_pix, i32* %out_pix) nounwind uwtable {
  %1 = alloca i8*, align 8                        ; [#uses=4 type=i8**]
  %2 = alloca i32*, align 8                       ; [#uses=10 type=i32**]
  %i = alloca i32, align 4                        ; [#uses=5 type=i32*]
  %i1 = alloca i32, align 4                       ; [#uses=5 type=i32*]
  %i2 = alloca i32, align 4                       ; [#uses=5 type=i32*]
  %i3 = alloca i32, align 4                       ; [#uses=5 type=i32*]
  %i4 = alloca i32, align 4                       ; [#uses=5 type=i32*]
  %j = alloca i32, align 4                        ; [#uses=5 type=i32*]
  %fullIndex = alloca i32, align 4                ; [#uses=3 type=i32*]
  %i5 = alloca i32, align 4                       ; [#uses=6 type=i32*]
  %val = alloca i8, align 1                       ; [#uses=2 type=i8*]
  %fourWide = alloca %union.OneToFourPixels, align 4 ; [#uses=2 type=%union.OneToFourPixels*]
  %j6 = alloca i32, align 4                       ; [#uses=5 type=i32*]
  store i8* %inter_pix, i8** %1, align 8
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !106), !dbg !107 ; [debug line = 71:27] [debug variable = inter_pix]
  store i32* %out_pix, i32** %2, align 8
  call void @llvm.dbg.declare(metadata !{i32** %2}, metadata !108), !dbg !109 ; [debug line = 71:60] [debug variable = out_pix]
  %3 = load i32** %2, align 8, !dbg !110          ; [#uses=1 type=i32*] [debug line = 72:2]
  call void (...)* @_ssdm_SpecArrayDimSize(i32* %3, i32 2073600) nounwind, !dbg !110 ; [debug line = 72:2]
  %4 = load i8** %1, align 8, !dbg !112           ; [#uses=1 type=i8*] [debug line = 72:46]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %4, i32 2073600) nounwind, !dbg !112 ; [debug line = 72:46]
  %5 = load i8** %1, align 8, !dbg !113           ; [#uses=1 type=i8*] [debug line = 80:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %5, i8* getelementptr inbounds ([6 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([6 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 16, i32 16, i32 16, i32 16, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !113 ; [debug line = 80:1]
  %6 = load i32** %2, align 8, !dbg !114          ; [#uses=1 type=i32*] [debug line = 81:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %6, i8* getelementptr inbounds ([6 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([6 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 16, i32 16, i32 16, i32 16, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !114 ; [debug line = 81:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, i8* getelementptr inbounds ([10 x i8]* @.str5, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !115 ; [debug line = 82:1]
  br label %7, !dbg !115                          ; [debug line = 82:1]

; <label>:7                                       ; preds = %0
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !116), !dbg !118 ; [debug line = 87:35] [debug variable = i]
  store i32 0, i32* %i, align 4, !dbg !119        ; [debug line = 87:40]
  br label %8, !dbg !119                          ; [debug line = 87:40]

; <label>:8                                       ; preds = %16, %7
  %9 = load i32* %i, align 4, !dbg !119           ; [#uses=1 type=i32] [debug line = 87:40]
  %10 = icmp ult i32 %9, 1920, !dbg !119          ; [#uses=1 type=i1] [debug line = 87:40]
  br i1 %10, label %11, label %19, !dbg !119      ; [debug line = 87:40]

; <label>:11                                      ; preds = %8
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([14 x i8]* @.str6, i32 0, i32 0)) nounwind, !dbg !120 ; [debug line = 88:3]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([14 x i8]* @.str6, i32 0, i32 0)) nounwind, !dbg !120 ; [debug line = 88:3]
  %12 = load i32* %i, align 4, !dbg !120          ; [#uses=1 type=i32] [debug line = 88:3]
  %13 = zext i32 %12 to i64, !dbg !120            ; [#uses=1 type=i64] [debug line = 88:3]
  %14 = load i32** %2, align 8, !dbg !120         ; [#uses=1 type=i32*] [debug line = 88:3]
  %15 = getelementptr inbounds i32* %14, i64 %13, !dbg !120 ; [#uses=1 type=i32*] [debug line = 88:3]
  store i32 0, i32* %15, align 4, !dbg !120       ; [debug line = 88:3]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([14 x i8]* @.str6, i32 0, i32 0)) nounwind, !dbg !122 ; [debug line = 88:16]
  br label %16, !dbg !122                         ; [debug line = 88:16]

; <label>:16                                      ; preds = %11
  %17 = load i32* %i, align 4, !dbg !123          ; [#uses=1 type=i32] [debug line = 87:52]
  %18 = add i32 %17, 1, !dbg !123                 ; [#uses=1 type=i32] [debug line = 87:52]
  store i32 %18, i32* %i, align 4, !dbg !123      ; [debug line = 87:52]
  br label %8, !dbg !123                          ; [debug line = 87:52]

; <label>:19                                      ; preds = %8
  br label %20, !dbg !124                         ; [debug line = 88:16]

; <label>:20                                      ; preds = %19
  call void @llvm.dbg.declare(metadata !{i32* %i1}, metadata !125), !dbg !127 ; [debug line = 89:34] [debug variable = i]
  store i32 2071680, i32* %i1, align 4, !dbg !128 ; [debug line = 89:58]
  br label %21, !dbg !128                         ; [debug line = 89:58]

; <label>:21                                      ; preds = %29, %20
  %22 = load i32* %i1, align 4, !dbg !128         ; [#uses=1 type=i32] [debug line = 89:58]
  %23 = icmp ult i32 %22, 2073600, !dbg !128      ; [#uses=1 type=i1] [debug line = 89:58]
  br i1 %23, label %24, label %32, !dbg !128      ; [debug line = 89:58]

; <label>:24                                      ; preds = %21
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([13 x i8]* @.str7, i32 0, i32 0)) nounwind, !dbg !129 ; [debug line = 90:3]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([13 x i8]* @.str7, i32 0, i32 0)) nounwind, !dbg !129 ; [debug line = 90:3]
  %25 = load i32* %i1, align 4, !dbg !129         ; [#uses=1 type=i32] [debug line = 90:3]
  %26 = zext i32 %25 to i64, !dbg !129            ; [#uses=1 type=i64] [debug line = 90:3]
  %27 = load i32** %2, align 8, !dbg !129         ; [#uses=1 type=i32*] [debug line = 90:3]
  %28 = getelementptr inbounds i32* %27, i64 %26, !dbg !129 ; [#uses=1 type=i32*] [debug line = 90:3]
  store i32 0, i32* %28, align 4, !dbg !129       ; [debug line = 90:3]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([13 x i8]* @.str7, i32 0, i32 0)) nounwind, !dbg !131 ; [debug line = 90:16]
  br label %29, !dbg !131                         ; [debug line = 90:16]

; <label>:29                                      ; preds = %24
  %30 = load i32* %i1, align 4, !dbg !132         ; [#uses=1 type=i32] [debug line = 89:79]
  %31 = add i32 %30, 1, !dbg !132                 ; [#uses=1 type=i32] [debug line = 89:79]
  store i32 %31, i32* %i1, align 4, !dbg !132     ; [debug line = 89:79]
  br label %21, !dbg !132                         ; [debug line = 89:79]

; <label>:32                                      ; preds = %21
  br label %33, !dbg !133                         ; [debug line = 90:16]

; <label>:33                                      ; preds = %32
  call void @llvm.dbg.declare(metadata !{i32* %i2}, metadata !134), !dbg !136 ; [debug line = 91:36] [debug variable = i]
  store i32 0, i32* %i2, align 4, !dbg !137       ; [debug line = 91:41]
  br label %34, !dbg !137                         ; [debug line = 91:41]

; <label>:34                                      ; preds = %42, %33
  %35 = load i32* %i2, align 4, !dbg !137         ; [#uses=1 type=i32] [debug line = 91:41]
  %36 = icmp ult i32 %35, 2073600, !dbg !137      ; [#uses=1 type=i1] [debug line = 91:41]
  br i1 %36, label %37, label %45, !dbg !137      ; [debug line = 91:41]

; <label>:37                                      ; preds = %34
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([15 x i8]* @.str8, i32 0, i32 0)) nounwind, !dbg !138 ; [debug line = 92:3]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([15 x i8]* @.str8, i32 0, i32 0)) nounwind, !dbg !138 ; [debug line = 92:3]
  %38 = load i32* %i2, align 4, !dbg !138         ; [#uses=1 type=i32] [debug line = 92:3]
  %39 = zext i32 %38 to i64, !dbg !138            ; [#uses=1 type=i64] [debug line = 92:3]
  %40 = load i32** %2, align 8, !dbg !138         ; [#uses=1 type=i32*] [debug line = 92:3]
  %41 = getelementptr inbounds i32* %40, i64 %39, !dbg !138 ; [#uses=1 type=i32*] [debug line = 92:3]
  store i32 0, i32* %41, align 4, !dbg !138       ; [debug line = 92:3]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([15 x i8]* @.str8, i32 0, i32 0)) nounwind, !dbg !140 ; [debug line = 92:16]
  br label %42, !dbg !140                         ; [debug line = 92:16]

; <label>:42                                      ; preds = %37
  %43 = load i32* %i2, align 4, !dbg !141         ; [#uses=1 type=i32] [debug line = 91:62]
  %44 = add i32 %43, 1920, !dbg !141              ; [#uses=1 type=i32] [debug line = 91:62]
  store i32 %44, i32* %i2, align 4, !dbg !141     ; [debug line = 91:62]
  br label %34, !dbg !141                         ; [debug line = 91:62]

; <label>:45                                      ; preds = %34
  br label %46, !dbg !142                         ; [debug line = 92:16]

; <label>:46                                      ; preds = %45
  call void @llvm.dbg.declare(metadata !{i32* %i3}, metadata !143), !dbg !145 ; [debug line = 93:35] [debug variable = i]
  store i32 1919, i32* %i3, align 4, !dbg !146    ; [debug line = 93:47]
  br label %47, !dbg !146                         ; [debug line = 93:47]

; <label>:47                                      ; preds = %55, %46
  %48 = load i32* %i3, align 4, !dbg !146         ; [#uses=1 type=i32] [debug line = 93:47]
  %49 = icmp ult i32 %48, 2073600, !dbg !146      ; [#uses=1 type=i1] [debug line = 93:47]
  br i1 %49, label %50, label %58, !dbg !146      ; [debug line = 93:47]

; <label>:50                                      ; preds = %47
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([14 x i8]* @.str9, i32 0, i32 0)) nounwind, !dbg !147 ; [debug line = 94:3]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([14 x i8]* @.str9, i32 0, i32 0)) nounwind, !dbg !147 ; [debug line = 94:3]
  %51 = load i32* %i3, align 4, !dbg !147         ; [#uses=1 type=i32] [debug line = 94:3]
  %52 = zext i32 %51 to i64, !dbg !147            ; [#uses=1 type=i64] [debug line = 94:3]
  %53 = load i32** %2, align 8, !dbg !147         ; [#uses=1 type=i32*] [debug line = 94:3]
  %54 = getelementptr inbounds i32* %53, i64 %52, !dbg !147 ; [#uses=1 type=i32*] [debug line = 94:3]
  store i32 0, i32* %54, align 4, !dbg !147       ; [debug line = 94:3]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([14 x i8]* @.str9, i32 0, i32 0)) nounwind, !dbg !149 ; [debug line = 94:16]
  br label %55, !dbg !149                         ; [debug line = 94:16]

; <label>:55                                      ; preds = %50
  %56 = load i32* %i3, align 4, !dbg !150         ; [#uses=1 type=i32] [debug line = 93:68]
  %57 = add i32 %56, 1920, !dbg !150              ; [#uses=1 type=i32] [debug line = 93:68]
  store i32 %57, i32* %i3, align 4, !dbg !150     ; [debug line = 93:68]
  br label %47, !dbg !150                         ; [debug line = 93:68]

; <label>:58                                      ; preds = %47
  br label %59, !dbg !151                         ; [debug line = 94:16]

; <label>:59                                      ; preds = %58
  call void @llvm.dbg.declare(metadata !{i32* %i4}, metadata !152), !dbg !154 ; [debug line = 97:35] [debug variable = i]
  store i32 1, i32* %i4, align 4, !dbg !155       ; [debug line = 97:40]
  br label %60, !dbg !155                         ; [debug line = 97:40]

; <label>:60                                      ; preds = %85, %59
  %61 = load i32* %i4, align 4, !dbg !155         ; [#uses=1 type=i32] [debug line = 97:40]
  %62 = icmp ult i32 %61, 1079, !dbg !155         ; [#uses=1 type=i1] [debug line = 97:40]
  br i1 %62, label %63, label %88, !dbg !155      ; [debug line = 97:40]

; <label>:63                                      ; preds = %60
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([14 x i8]* @.str10, i32 0, i32 0)) nounwind, !dbg !156 ; [debug line = 97:62]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([14 x i8]* @.str10, i32 0, i32 0)) nounwind, !dbg !156 ; [debug line = 97:62]
  br label %64, !dbg !156                         ; [debug line = 97:62]

; <label>:64                                      ; preds = %63
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !158), !dbg !160 ; [debug line = 98:35] [debug variable = j]
  store i32 1, i32* %j, align 4, !dbg !161        ; [debug line = 98:40]
  br label %65, !dbg !161                         ; [debug line = 98:40]

; <label>:65                                      ; preds = %81, %64
  %66 = load i32* %j, align 4, !dbg !161          ; [#uses=1 type=i32] [debug line = 98:40]
  %67 = icmp ult i32 %66, 1919, !dbg !161         ; [#uses=1 type=i1] [debug line = 98:40]
  br i1 %67, label %68, label %84, !dbg !161      ; [debug line = 98:40]

; <label>:68                                      ; preds = %65
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([13 x i8]* @.str11, i32 0, i32 0)) nounwind, !dbg !162 ; [debug line = 98:62]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([13 x i8]* @.str11, i32 0, i32 0)) nounwind, !dbg !162 ; [debug line = 98:62]
  call void @llvm.dbg.declare(metadata !{i32* %fullIndex}, metadata !164), !dbg !165 ; [debug line = 99:8] [debug variable = fullIndex]
  %69 = load i32* %i4, align 4, !dbg !166         ; [#uses=1 type=i32] [debug line = 99:32]
  %70 = mul i32 %69, 1920, !dbg !166              ; [#uses=1 type=i32] [debug line = 99:32]
  %71 = load i32* %j, align 4, !dbg !166          ; [#uses=1 type=i32] [debug line = 99:32]
  %72 = add i32 %70, %71, !dbg !166               ; [#uses=1 type=i32] [debug line = 99:32]
  store i32 %72, i32* %fullIndex, align 4, !dbg !166 ; [debug line = 99:32]
  %73 = load i32* %fullIndex, align 4, !dbg !167  ; [#uses=1 type=i32] [debug line = 100:25]
  %74 = load i8** %1, align 8, !dbg !167          ; [#uses=1 type=i8*] [debug line = 100:25]
  %75 = call zeroext i8 @_Z14sobel_operatoriPh(i32 %73, i8* %74), !dbg !167 ; [#uses=1 type=i8] [debug line = 100:25]
  %76 = zext i8 %75 to i32, !dbg !167             ; [#uses=1 type=i32] [debug line = 100:25]
  %77 = load i32* %fullIndex, align 4, !dbg !167  ; [#uses=1 type=i32] [debug line = 100:25]
  %78 = sext i32 %77 to i64, !dbg !167            ; [#uses=1 type=i64] [debug line = 100:25]
  %79 = load i32** %2, align 8, !dbg !167         ; [#uses=1 type=i32*] [debug line = 100:25]
  %80 = getelementptr inbounds i32* %79, i64 %78, !dbg !167 ; [#uses=1 type=i32*] [debug line = 100:25]
  store i32 %76, i32* %80, align 4, !dbg !167     ; [debug line = 100:25]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([13 x i8]* @.str11, i32 0, i32 0)) nounwind, !dbg !168 ; [debug line = 101:3]
  br label %81, !dbg !168                         ; [debug line = 101:3]

; <label>:81                                      ; preds = %68
  %82 = load i32* %j, align 4, !dbg !169          ; [#uses=1 type=i32] [debug line = 98:56]
  %83 = add i32 %82, 1, !dbg !169                 ; [#uses=1 type=i32] [debug line = 98:56]
  store i32 %83, i32* %j, align 4, !dbg !169      ; [debug line = 98:56]
  br label %65, !dbg !169                         ; [debug line = 98:56]

; <label>:84                                      ; preds = %65
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([14 x i8]* @.str10, i32 0, i32 0)) nounwind, !dbg !170 ; [debug line = 102:2]
  br label %85, !dbg !170                         ; [debug line = 102:2]

; <label>:85                                      ; preds = %84
  %86 = load i32* %i4, align 4, !dbg !171         ; [#uses=1 type=i32] [debug line = 97:56]
  %87 = add i32 %86, 1, !dbg !171                 ; [#uses=1 type=i32] [debug line = 97:56]
  store i32 %87, i32* %i4, align 4, !dbg !171     ; [debug line = 97:56]
  br label %60, !dbg !171                         ; [debug line = 97:56]

; <label>:88                                      ; preds = %60
  br label %89, !dbg !172                         ; [debug line = 102:2]

; <label>:89                                      ; preds = %88
  call void @llvm.dbg.declare(metadata !{i32* %i5}, metadata !173), !dbg !175 ; [debug line = 104:15] [debug variable = i]
  store i32 0, i32* %i5, align 4, !dbg !176       ; [debug line = 104:20]
  br label %90, !dbg !176                         ; [debug line = 104:20]

; <label>:90                                      ; preds = %120, %89
  %91 = load i32* %i5, align 4, !dbg !176         ; [#uses=1 type=i32] [debug line = 104:20]
  %92 = icmp slt i32 %91, 2073600, !dbg !176      ; [#uses=1 type=i1] [debug line = 104:20]
  br i1 %92, label %93, label %123, !dbg !176     ; [debug line = 104:20]

; <label>:93                                      ; preds = %90
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([4 x i8]* @.str12, i32 0, i32 0)) nounwind, !dbg !177 ; [debug line = 104:45]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([4 x i8]* @.str12, i32 0, i32 0)) nounwind, !dbg !177 ; [debug line = 104:45]
  call void @llvm.dbg.declare(metadata !{i8* %val}, metadata !179), !dbg !180 ; [debug line = 105:11] [debug variable = val]
  %94 = load i32* %i5, align 4, !dbg !181         ; [#uses=1 type=i32] [debug line = 105:27]
  %95 = sext i32 %94 to i64, !dbg !181            ; [#uses=1 type=i64] [debug line = 105:27]
  %96 = load i32** %2, align 8, !dbg !181         ; [#uses=1 type=i32*] [debug line = 105:27]
  %97 = getelementptr inbounds i32* %96, i64 %95, !dbg !181 ; [#uses=1 type=i32*] [debug line = 105:27]
  %98 = load i32* %97, align 4, !dbg !181         ; [#uses=1 type=i32] [debug line = 105:27]
  %99 = trunc i32 %98 to i8, !dbg !181            ; [#uses=1 type=i8] [debug line = 105:27]
  store i8 %99, i8* %val, align 1, !dbg !181      ; [debug line = 105:27]
  call void @llvm.dbg.declare(metadata !{%union.OneToFourPixels* %fourWide}, metadata !182), !dbg !195 ; [debug line = 106:19] [debug variable = fourWide]
  br label %100, !dbg !196                        ; [debug line = 106:27]

; <label>:100                                     ; preds = %93
  call void @llvm.dbg.declare(metadata !{i32* %j6}, metadata !197), !dbg !199 ; [debug line = 107:18] [debug variable = j]
  store i32 0, i32* %j6, align 4, !dbg !200       ; [debug line = 107:23]
  br label %101, !dbg !200                        ; [debug line = 107:23]

; <label>:101                                     ; preds = %110, %100
  %102 = load i32* %j6, align 4, !dbg !200        ; [#uses=1 type=i32] [debug line = 107:23]
  %103 = icmp slt i32 %102, 4, !dbg !200          ; [#uses=1 type=i1] [debug line = 107:23]
  br i1 %103, label %104, label %113, !dbg !200   ; [debug line = 107:23]

; <label>:104                                     ; preds = %101
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([7 x i8]* @.str13, i32 0, i32 0)) nounwind, !dbg !201 ; [debug line = 108:4]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([7 x i8]* @.str13, i32 0, i32 0)) nounwind, !dbg !201 ; [debug line = 108:4]
  %105 = load i8* %val, align 1, !dbg !201        ; [#uses=1 type=i8] [debug line = 108:4]
  %106 = load i32* %j6, align 4, !dbg !201        ; [#uses=1 type=i32] [debug line = 108:4]
  %107 = sext i32 %106 to i64, !dbg !201          ; [#uses=1 type=i64] [debug line = 108:4]
  %108 = bitcast %union.OneToFourPixels* %fourWide to [4 x i8]*, !dbg !201 ; [#uses=1 type=[4 x i8]*] [debug line = 108:4]
  %109 = getelementptr inbounds [4 x i8]* %108, i32 0, i64 %107, !dbg !201 ; [#uses=1 type=i8*] [debug line = 108:4]
  store i8 %105, i8* %109, align 1, !dbg !201     ; [debug line = 108:4]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([7 x i8]* @.str13, i32 0, i32 0)) nounwind, !dbg !203 ; [debug line = 108:22]
  br label %110, !dbg !203                        ; [debug line = 108:22]

; <label>:110                                     ; preds = %104
  %111 = load i32* %j6, align 4, !dbg !204        ; [#uses=1 type=i32] [debug line = 107:32]
  %112 = add nsw i32 %111, 1, !dbg !204           ; [#uses=1 type=i32] [debug line = 107:32]
  store i32 %112, i32* %j6, align 4, !dbg !204    ; [debug line = 107:32]
  br label %101, !dbg !204                        ; [debug line = 107:32]

; <label>:113                                     ; preds = %101
  %114 = bitcast %union.OneToFourPixels* %fourWide to i32*, !dbg !205 ; [#uses=1 type=i32*] [debug line = 109:3]
  %115 = load i32* %114, align 4, !dbg !205       ; [#uses=1 type=i32] [debug line = 109:3]
  %116 = load i32* %i5, align 4, !dbg !205        ; [#uses=1 type=i32] [debug line = 109:3]
  %117 = sext i32 %116 to i64, !dbg !205          ; [#uses=1 type=i64] [debug line = 109:3]
  %118 = load i32** %2, align 8, !dbg !205        ; [#uses=1 type=i32*] [debug line = 109:3]
  %119 = getelementptr inbounds i32* %118, i64 %117, !dbg !205 ; [#uses=1 type=i32*] [debug line = 109:3]
  store i32 %115, i32* %119, align 4, !dbg !205   ; [debug line = 109:3]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([4 x i8]* @.str12, i32 0, i32 0)) nounwind, !dbg !206 ; [debug line = 110:2]
  br label %120, !dbg !206                        ; [debug line = 110:2]

; <label>:120                                     ; preds = %113
  %121 = load i32* %i5, align 4, !dbg !207        ; [#uses=1 type=i32] [debug line = 104:39]
  %122 = add nsw i32 %121, 1, !dbg !207           ; [#uses=1 type=i32] [debug line = 104:39]
  store i32 %122, i32* %i5, align 4, !dbg !207    ; [debug line = 104:39]
  br label %90, !dbg !207                         ; [debug line = 104:39]

; <label>:123                                     ; preds = %90
  ret void, !dbg !208                             ; [debug line = 111:1]
}

; [#uses=2]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

; [#uses=3]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=8]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=8]
declare void @_ssdm_RegionBegin(...) nounwind

; [#uses=8]
declare void @_ssdm_RegionEnd(...) nounwind

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!33, !40, !45}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"X:/Bureau/HDMI_3610/3610_4/1490679_1771119/sobellab4/solution1/.autopilot/db/Sobel.pragma.2.cpp", metadata !"X:\5CBureau\5CHDMI_3610\5C3610_4\5C1490679_1771119", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !24} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !16, metadata !21}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"sobel_operator", metadata !"sobel_operator", metadata !"_Z14sobel_operatoriPh", metadata !6, i32 16, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8 (i32, i8*)* @_Z14sobel_operatoriPh, null, null, metadata !14, i32 17} ; [ DW_TAG_subprogram ]
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
!16 = metadata !{i32 786478, i32 0, metadata !6, metadata !"sobel_filter", metadata !"sobel_filter", metadata !"_Z12sobel_filterPhPj", metadata !6, i32 71, metadata !17, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i32*)* @_Z12sobel_filterPhPj, null, null, metadata !14, i32 72} ; [ DW_TAG_subprogram ]
!17 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !18, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!18 = metadata !{null, metadata !13, metadata !19}
!19 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ]
!20 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!21 = metadata !{i32 786478, i32 0, metadata !6, metadata !"getVal", metadata !"getVal", metadata !"_ZL6getValiiiiPh", metadata !6, i32 11, metadata !22, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8 (i32, i32, i32, i32, i8*)* @_ZL6getValiiiiPh, null, null, metadata !14, i32 12} ; [ DW_TAG_subprogram ]
!22 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !23, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!23 = metadata !{metadata !9, metadata !12, metadata !12, metadata !12, metadata !12, metadata !13}
!24 = metadata !{metadata !25}
!25 = metadata !{metadata !26, metadata !32}
!26 = metadata !{i32 786484, i32 0, metadata !5, metadata !"x_op", metadata !"x_op", metadata !"", metadata !6, i32 38, metadata !27, i32 1, i32 1, [3 x [3 x i8]]* @_ZZ14sobel_operatoriPhE4x_op} ; [ DW_TAG_variable ]
!27 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 72, i64 8, i32 0, i32 0, metadata !28, metadata !30, i32 0, i32 0} ; [ DW_TAG_array_type ]
!28 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_const_type ]
!29 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!30 = metadata !{metadata !31, metadata !31}
!31 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ]
!32 = metadata !{i32 786484, i32 0, metadata !5, metadata !"y_op", metadata !"y_op", metadata !"", metadata !6, i32 42, metadata !27, i32 1, i32 1, [3 x [3 x i8]]* @_ZZ14sobel_operatoriPhE4y_op} ; [ DW_TAG_variable ]
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
!51 = metadata !{i32 786689, metadata !5, metadata !"fullIndex", metadata !6, i32 16777232, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!52 = metadata !{i32 16, i32 34, metadata !5, null}
!53 = metadata !{i32 786689, metadata !5, metadata !"image", metadata !6, i32 33554448, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!54 = metadata !{i32 16, i32 55, metadata !5, null}
!55 = metadata !{i32 18, i32 1, metadata !56, null}
!56 = metadata !{i32 786443, metadata !5, i32 17, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!57 = metadata !{i32 786688, metadata !56, metadata !"x_weight", metadata !6, i32 32, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!58 = metadata !{i32 32, i32 6, metadata !56, null}
!59 = metadata !{i32 32, i32 18, metadata !56, null}
!60 = metadata !{i32 786688, metadata !56, metadata !"y_weight", metadata !6, i32 33, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!61 = metadata !{i32 33, i32 6, metadata !56, null}
!62 = metadata !{i32 33, i32 18, metadata !56, null}
!63 = metadata !{i32 786688, metadata !56, metadata !"edge_weight", metadata !6, i32 35, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!64 = metadata !{i32 35, i32 11, metadata !56, null}
!65 = metadata !{i32 786688, metadata !56, metadata !"edge_val", metadata !6, i32 36, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!66 = metadata !{i32 36, i32 10, metadata !56, null}
!67 = metadata !{i32 41, i32 1, metadata !56, null}
!68 = metadata !{i32 45, i32 1, metadata !56, null}
!69 = metadata !{i32 786688, metadata !70, metadata !"i", metadata !6, i32 47, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!70 = metadata !{i32 786443, metadata !56, i32 47, i32 2, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!71 = metadata !{i32 47, i32 11, metadata !70, null}
!72 = metadata !{i32 47, i32 16, metadata !70, null}
!73 = metadata !{i32 786688, metadata !74, metadata !"j", metadata !6, i32 48, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!74 = metadata !{i32 786443, metadata !75, i32 48, i32 3, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!75 = metadata !{i32 786443, metadata !70, i32 47, i32 30, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!76 = metadata !{i32 48, i32 12, metadata !74, null}
!77 = metadata !{i32 48, i32 17, metadata !74, null}
!78 = metadata !{i32 50, i32 3, metadata !79, null}
!79 = metadata !{i32 786443, metadata !74, i32 48, i32 31, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!80 = metadata !{i32 50, i32 26, metadata !79, null}
!81 = metadata !{i32 53, i32 3, metadata !79, null}
!82 = metadata !{i32 53, i32 26, metadata !79, null}
!83 = metadata !{i32 54, i32 3, metadata !79, null}
!84 = metadata !{i32 48, i32 26, metadata !74, null}
!85 = metadata !{i32 55, i32 2, metadata !75, null}
!86 = metadata !{i32 47, i32 25, metadata !70, null}
!87 = metadata !{i32 57, i32 2, metadata !56, null}
!88 = metadata !{i32 59, i32 2, metadata !56, null}
!89 = metadata !{i32 62, i32 2, metadata !56, null}
!90 = metadata !{i32 63, i32 3, metadata !56, null}
!91 = metadata !{i32 64, i32 7, metadata !56, null}
!92 = metadata !{i32 65, i32 3, metadata !56, null}
!93 = metadata !{i32 67, i32 2, metadata !56, null}
!94 = metadata !{i32 786689, metadata !21, metadata !"index", metadata !6, i32 16777227, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!95 = metadata !{i32 11, i32 34, metadata !21, null}
!96 = metadata !{i32 786689, metadata !21, metadata !"xDiff", metadata !6, i32 33554443, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!97 = metadata !{i32 11, i32 45, metadata !21, null}
!98 = metadata !{i32 786689, metadata !21, metadata !"yDiff", metadata !6, i32 50331659, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!99 = metadata !{i32 11, i32 56, metadata !21, null}
!100 = metadata !{i32 786689, metadata !21, metadata !"img_width", metadata !6, i32 67108875, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!101 = metadata !{i32 11, i32 67, metadata !21, null}
!102 = metadata !{i32 786689, metadata !21, metadata !"Y", metadata !6, i32 83886091, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!103 = metadata !{i32 11, i32 88, metadata !21, null}
!104 = metadata !{i32 13, i32 2, metadata !105, null}
!105 = metadata !{i32 786443, metadata !21, i32 12, i32 1, metadata !6, i32 22} ; [ DW_TAG_lexical_block ]
!106 = metadata !{i32 786689, metadata !16, metadata !"inter_pix", metadata !6, i32 16777287, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!107 = metadata !{i32 71, i32 27, metadata !16, null}
!108 = metadata !{i32 786689, metadata !16, metadata !"out_pix", metadata !6, i32 33554503, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!109 = metadata !{i32 71, i32 60, metadata !16, null}
!110 = metadata !{i32 72, i32 2, metadata !111, null}
!111 = metadata !{i32 786443, metadata !16, i32 72, i32 1, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!112 = metadata !{i32 72, i32 46, metadata !111, null}
!113 = metadata !{i32 80, i32 1, metadata !111, null}
!114 = metadata !{i32 81, i32 1, metadata !111, null}
!115 = metadata !{i32 82, i32 1, metadata !111, null}
!116 = metadata !{i32 786688, metadata !117, metadata !"i", metadata !6, i32 87, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!117 = metadata !{i32 786443, metadata !111, i32 87, i32 17, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!118 = metadata !{i32 87, i32 35, metadata !117, null}
!119 = metadata !{i32 87, i32 40, metadata !117, null}
!120 = metadata !{i32 88, i32 3, metadata !121, null}
!121 = metadata !{i32 786443, metadata !117, i32 88, i32 3, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!122 = metadata !{i32 88, i32 16, metadata !121, null}
!123 = metadata !{i32 87, i32 52, metadata !117, null}
!124 = metadata !{i32 88, i32 16, metadata !117, null}
!125 = metadata !{i32 786688, metadata !126, metadata !"i", metadata !6, i32 89, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!126 = metadata !{i32 786443, metadata !111, i32 89, i32 16, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!127 = metadata !{i32 89, i32 34, metadata !126, null}
!128 = metadata !{i32 89, i32 58, metadata !126, null}
!129 = metadata !{i32 90, i32 3, metadata !130, null}
!130 = metadata !{i32 786443, metadata !126, i32 90, i32 3, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!131 = metadata !{i32 90, i32 16, metadata !130, null}
!132 = metadata !{i32 89, i32 79, metadata !126, null}
!133 = metadata !{i32 90, i32 16, metadata !126, null}
!134 = metadata !{i32 786688, metadata !135, metadata !"i", metadata !6, i32 91, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!135 = metadata !{i32 786443, metadata !111, i32 91, i32 18, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!136 = metadata !{i32 91, i32 36, metadata !135, null}
!137 = metadata !{i32 91, i32 41, metadata !135, null}
!138 = metadata !{i32 92, i32 3, metadata !139, null}
!139 = metadata !{i32 786443, metadata !135, i32 92, i32 3, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!140 = metadata !{i32 92, i32 16, metadata !139, null}
!141 = metadata !{i32 91, i32 62, metadata !135, null}
!142 = metadata !{i32 92, i32 16, metadata !135, null}
!143 = metadata !{i32 786688, metadata !144, metadata !"i", metadata !6, i32 93, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!144 = metadata !{i32 786443, metadata !111, i32 93, i32 17, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!145 = metadata !{i32 93, i32 35, metadata !144, null}
!146 = metadata !{i32 93, i32 47, metadata !144, null}
!147 = metadata !{i32 94, i32 3, metadata !148, null}
!148 = metadata !{i32 786443, metadata !144, i32 94, i32 3, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!149 = metadata !{i32 94, i32 16, metadata !148, null}
!150 = metadata !{i32 93, i32 68, metadata !144, null}
!151 = metadata !{i32 94, i32 16, metadata !144, null}
!152 = metadata !{i32 786688, metadata !153, metadata !"i", metadata !6, i32 97, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!153 = metadata !{i32 786443, metadata !111, i32 97, i32 17, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!154 = metadata !{i32 97, i32 35, metadata !153, null}
!155 = metadata !{i32 97, i32 40, metadata !153, null}
!156 = metadata !{i32 97, i32 62, metadata !157, null}
!157 = metadata !{i32 786443, metadata !153, i32 97, i32 61, metadata !6, i32 15} ; [ DW_TAG_lexical_block ]
!158 = metadata !{i32 786688, metadata !159, metadata !"j", metadata !6, i32 98, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!159 = metadata !{i32 786443, metadata !157, i32 98, i32 17, metadata !6, i32 16} ; [ DW_TAG_lexical_block ]
!160 = metadata !{i32 98, i32 35, metadata !159, null}
!161 = metadata !{i32 98, i32 40, metadata !159, null}
!162 = metadata !{i32 98, i32 62, metadata !163, null}
!163 = metadata !{i32 786443, metadata !159, i32 98, i32 61, metadata !6, i32 17} ; [ DW_TAG_lexical_block ]
!164 = metadata !{i32 786688, metadata !163, metadata !"fullIndex", metadata !6, i32 99, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!165 = metadata !{i32 99, i32 8, metadata !163, null}
!166 = metadata !{i32 99, i32 32, metadata !163, null}
!167 = metadata !{i32 100, i32 25, metadata !163, null}
!168 = metadata !{i32 101, i32 3, metadata !163, null}
!169 = metadata !{i32 98, i32 56, metadata !159, null}
!170 = metadata !{i32 102, i32 2, metadata !157, null}
!171 = metadata !{i32 97, i32 56, metadata !153, null}
!172 = metadata !{i32 102, i32 2, metadata !153, null}
!173 = metadata !{i32 786688, metadata !174, metadata !"i", metadata !6, i32 104, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!174 = metadata !{i32 786443, metadata !111, i32 104, i32 6, metadata !6, i32 18} ; [ DW_TAG_lexical_block ]
!175 = metadata !{i32 104, i32 15, metadata !174, null}
!176 = metadata !{i32 104, i32 20, metadata !174, null}
!177 = metadata !{i32 104, i32 45, metadata !178, null}
!178 = metadata !{i32 786443, metadata !174, i32 104, i32 44, metadata !6, i32 19} ; [ DW_TAG_lexical_block ]
!179 = metadata !{i32 786688, metadata !178, metadata !"val", metadata !6, i32 105, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!180 = metadata !{i32 105, i32 11, metadata !178, null}
!181 = metadata !{i32 105, i32 27, metadata !178, null}
!182 = metadata !{i32 786688, metadata !178, metadata !"fourWide", metadata !6, i32 106, metadata !183, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!183 = metadata !{i32 786454, null, metadata !"OneToFourPixels", metadata !6, i32 9, i64 0, i64 0, i64 0, i32 0, metadata !184} ; [ DW_TAG_typedef ]
!184 = metadata !{i32 786455, null, metadata !"", metadata !6, i32 6, i64 32, i64 32, i64 0, i32 0, null, metadata !185, i32 0, null} ; [ DW_TAG_union_type ]
!185 = metadata !{metadata !186, metadata !190, metadata !191}
!186 = metadata !{i32 786445, metadata !184, metadata !"pix", metadata !6, i32 7, i64 32, i64 8, i64 0, i32 0, metadata !187} ; [ DW_TAG_member ]
!187 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 32, i64 8, i32 0, i32 0, metadata !9, metadata !188, i32 0, i32 0} ; [ DW_TAG_array_type ]
!188 = metadata !{metadata !189}
!189 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ]
!190 = metadata !{i32 786445, metadata !184, metadata !"full", metadata !6, i32 8, i64 32, i64 32, i64 0, i32 0, metadata !20} ; [ DW_TAG_member ]
!191 = metadata !{i32 786478, i32 0, metadata !184, metadata !"", metadata !"", metadata !"", metadata !6, i32 6, metadata !192, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !14, i32 6} ; [ DW_TAG_subprogram ]
!192 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !193, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!193 = metadata !{null, metadata !194}
!194 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !184} ; [ DW_TAG_pointer_type ]
!195 = metadata !{i32 106, i32 19, metadata !178, null}
!196 = metadata !{i32 106, i32 27, metadata !178, null}
!197 = metadata !{i32 786688, metadata !198, metadata !"j", metadata !6, i32 107, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!198 = metadata !{i32 786443, metadata !178, i32 107, i32 9, metadata !6, i32 20} ; [ DW_TAG_lexical_block ]
!199 = metadata !{i32 107, i32 18, metadata !198, null}
!200 = metadata !{i32 107, i32 23, metadata !198, null}
!201 = metadata !{i32 108, i32 4, metadata !202, null}
!202 = metadata !{i32 786443, metadata !198, i32 108, i32 4, metadata !6, i32 21} ; [ DW_TAG_lexical_block ]
!203 = metadata !{i32 108, i32 22, metadata !202, null}
!204 = metadata !{i32 107, i32 32, metadata !198, null}
!205 = metadata !{i32 109, i32 3, metadata !178, null}
!206 = metadata !{i32 110, i32 2, metadata !178, null}
!207 = metadata !{i32 104, i32 39, metadata !174, null}
!208 = metadata !{i32 111, i32 1, metadata !111, null}
