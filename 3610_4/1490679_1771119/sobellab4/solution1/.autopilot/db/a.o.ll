; ModuleID = 'X:/Bureau/HDMI_3610/3610_4/1490679_1771119/sobellab4/solution1/.autopilot/db/a.o.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

%union.OneToFourPixels = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str1 = private unnamed_addr constant [7 x i8] c"OpRows\00", align 1 ; [#uses=1 type=[7 x i8]*]
@.str2 = private unnamed_addr constant [7 x i8] c"OpCols\00", align 1 ; [#uses=1 type=[7 x i8]*]
@_ZZ15sobel_operator2PA3_hE4x_op = internal constant [3 x [3 x i8]] [[3 x i8] c"\FF\00\01", [3 x i8] c"\FE\00\02", [3 x i8] c"\FF\00\01"], align 1 ; [#uses=2 type=[3 x [3 x i8]]*]
@_ZZ15sobel_operator2PA3_hE4y_op = internal constant [3 x [3 x i8]] [[3 x i8] c"\01\02\01", [3 x i8] zeroinitializer, [3 x i8] c"\FF\FE\FF"], align 1 ; [#uses=2 type=[3 x [3 x i8]]*]
@.str3 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str4 = private unnamed_addr constant [6 x i8] c"gmem0\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str5 = private unnamed_addr constant [6 x i8] c"slave\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str6 = private unnamed_addr constant [6 x i8] c"gmem1\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str7 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]
@.str8 = private unnamed_addr constant [9 x i8] c"COMPLETE\00", align 1 ; [#uses=1 type=[9 x i8]*]
@.str9 = private unnamed_addr constant [14 x i8] c"FillCacheRows\00", align 1 ; [#uses=1 type=[14 x i8]*]
@.str10 = private unnamed_addr constant [14 x i8] c"FillCacheCols\00", align 1 ; [#uses=1 type=[14 x i8]*]
@.str11 = private unnamed_addr constant [11 x i8] c"FilterRows\00", align 1 ; [#uses=1 type=[11 x i8]*]
@.str12 = private unnamed_addr constant [11 x i8] c"FilterCols\00", align 1 ; [#uses=1 type=[11 x i8]*]

; [#uses=17]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=3]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

; [#uses=1]
declare void @_ssdm_InlineSelf(...) nounwind

; [#uses=2]
declare void @_ssdm_SpecConstant(...) nounwind

; [#uses=6]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=6]
declare void @_ssdm_RegionBegin(...) nounwind

; [#uses=6]
declare void @_ssdm_RegionEnd(...) nounwind

; [#uses=1]
define internal zeroext i8 @_Z15sobel_operator2PA3_h([3 x i8]* %image) nounwind uwtable {
  %1 = alloca [3 x i8]*, align 8                  ; [#uses=4 type=[3 x i8]**]
  %edge_weight = alloca i32, align 4              ; [#uses=2 type=i32*]
  %edge_val = alloca i8, align 1                  ; [#uses=6 type=i8*]
  %x_weight = alloca i32, align 4                 ; [#uses=6 type=i32*]
  %y_weight = alloca i32, align 4                 ; [#uses=6 type=i32*]
  %j = alloca i32, align 4                        ; [#uses=8 type=i32*]
  %i = alloca i32, align 4                        ; [#uses=8 type=i32*]
  store [3 x i8]* %image, [3 x i8]** %1, align 8
  call void @llvm.dbg.declare(metadata !{[3 x i8]** %1}, metadata !61), !dbg !62 ; [debug line = 54:33] [debug variable = image]
  %2 = load [3 x i8]** %1, align 8, !dbg !63      ; [#uses=1 type=[3 x i8]*] [debug line = 55:2]
  call void (...)* @_ssdm_SpecArrayDimSize([3 x i8]* %2, i32 3) nounwind, !dbg !63 ; [debug line = 55:2]
  call void (...)* @_ssdm_InlineSelf(i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !65 ; [debug line = 56:1]
  call void @llvm.dbg.declare(metadata !{i32* %edge_weight}, metadata !66), !dbg !67 ; [debug line = 59:11] [debug variable = edge_weight]
  call void @llvm.dbg.declare(metadata !{i8* %edge_val}, metadata !68), !dbg !69 ; [debug line = 60:10] [debug variable = edge_val]
  call void (...)* @_ssdm_SpecConstant([3 x i8]* getelementptr inbounds ([3 x [3 x i8]]* @_ZZ15sobel_operator2PA3_hE4x_op, i32 0, i32 0)) nounwind, !dbg !70 ; [debug line = 65:1]
  call void (...)* @_ssdm_SpecConstant([3 x i8]* getelementptr inbounds ([3 x [3 x i8]]* @_ZZ15sobel_operator2PA3_hE4y_op, i32 0, i32 0)) nounwind, !dbg !71 ; [debug line = 69:1]
  call void @llvm.dbg.declare(metadata !{i32* %x_weight}, metadata !72), !dbg !73 ; [debug line = 70:6] [debug variable = x_weight]
  store i32 0, i32* %x_weight, align 4, !dbg !74  ; [debug line = 70:18]
  call void @llvm.dbg.declare(metadata !{i32* %y_weight}, metadata !75), !dbg !76 ; [debug line = 71:6] [debug variable = y_weight]
  store i32 0, i32* %y_weight, align 4, !dbg !77  ; [debug line = 71:18]
  br label %3, !dbg !77                           ; [debug line = 71:18]

; <label>:3                                       ; preds = %0
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !78), !dbg !80 ; [debug line = 72:18] [debug variable = j]
  store i32 0, i32* %j, align 4, !dbg !81         ; [debug line = 72:23]
  br label %4, !dbg !81                           ; [debug line = 72:23]

; <label>:4                                       ; preds = %65, %3
  %5 = load i32* %j, align 4, !dbg !81            ; [#uses=1 type=i32] [debug line = 72:23]
  %6 = icmp slt i32 %5, 3, !dbg !81               ; [#uses=1 type=i1] [debug line = 72:23]
  br i1 %6, label %7, label %68, !dbg !81         ; [debug line = 72:23]

; <label>:7                                       ; preds = %4
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([7 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !82 ; [debug line = 72:38]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([7 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !82 ; [debug line = 72:38]
  br label %8, !dbg !82                           ; [debug line = 72:38]

; <label>:8                                       ; preds = %7
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !84), !dbg !86 ; [debug line = 73:19] [debug variable = i]
  store i32 0, i32* %i, align 4, !dbg !87         ; [debug line = 73:24]
  br label %9, !dbg !87                           ; [debug line = 73:24]

; <label>:9                                       ; preds = %61, %8
  %10 = load i32* %i, align 4, !dbg !87           ; [#uses=1 type=i32] [debug line = 73:24]
  %11 = icmp slt i32 %10, 3, !dbg !87             ; [#uses=1 type=i1] [debug line = 73:24]
  br i1 %11, label %12, label %64, !dbg !87       ; [debug line = 73:24]

; <label>:12                                      ; preds = %9
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([7 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !88 ; [debug line = 73:39]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([7 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !88 ; [debug line = 73:39]
  %13 = load i32* %x_weight, align 4, !dbg !90    ; [#uses=1 type=i32] [debug line = 75:4]
  %14 = load i32* %j, align 4, !dbg !90           ; [#uses=1 type=i32] [debug line = 75:4]
  %15 = add nsw i32 1, %14, !dbg !90              ; [#uses=1 type=i32] [debug line = 75:4]
  %16 = sub nsw i32 %15, 1, !dbg !90              ; [#uses=1 type=i32] [debug line = 75:4]
  %17 = sext i32 %16 to i64, !dbg !90             ; [#uses=1 type=i64] [debug line = 75:4]
  %18 = load i32* %i, align 4, !dbg !90           ; [#uses=1 type=i32] [debug line = 75:4]
  %19 = add nsw i32 1, %18, !dbg !90              ; [#uses=1 type=i32] [debug line = 75:4]
  %20 = sub nsw i32 %19, 1, !dbg !90              ; [#uses=1 type=i32] [debug line = 75:4]
  %21 = sext i32 %20 to i64, !dbg !90             ; [#uses=1 type=i64] [debug line = 75:4]
  %22 = load [3 x i8]** %1, align 8, !dbg !90     ; [#uses=1 type=[3 x i8]*] [debug line = 75:4]
  %23 = getelementptr inbounds [3 x i8]* %22, i64 %21, !dbg !90 ; [#uses=1 type=[3 x i8]*] [debug line = 75:4]
  %24 = getelementptr inbounds [3 x i8]* %23, i32 0, i64 %17, !dbg !90 ; [#uses=1 type=i8*] [debug line = 75:4]
  %25 = load i8* %24, align 1, !dbg !90           ; [#uses=1 type=i8] [debug line = 75:4]
  %26 = zext i8 %25 to i32, !dbg !90              ; [#uses=1 type=i32] [debug line = 75:4]
  %27 = load i32* %j, align 4, !dbg !90           ; [#uses=1 type=i32] [debug line = 75:4]
  %28 = sext i32 %27 to i64, !dbg !90             ; [#uses=1 type=i64] [debug line = 75:4]
  %29 = load i32* %i, align 4, !dbg !90           ; [#uses=1 type=i32] [debug line = 75:4]
  %30 = sext i32 %29 to i64, !dbg !90             ; [#uses=1 type=i64] [debug line = 75:4]
  %31 = getelementptr inbounds [3 x [3 x i8]]* @_ZZ15sobel_operator2PA3_hE4x_op, i32 0, i64 %30, !dbg !90 ; [#uses=1 type=[3 x i8]*] [debug line = 75:4]
  %32 = getelementptr inbounds [3 x i8]* %31, i32 0, i64 %28, !dbg !90 ; [#uses=1 type=i8*] [debug line = 75:4]
  %33 = load i8* %32, align 1, !dbg !90           ; [#uses=1 type=i8] [debug line = 75:4]
  %34 = sext i8 %33 to i32, !dbg !90              ; [#uses=1 type=i32] [debug line = 75:4]
  %35 = mul nsw i32 %26, %34, !dbg !90            ; [#uses=1 type=i32] [debug line = 75:4]
  %36 = add nsw i32 %13, %35, !dbg !90            ; [#uses=1 type=i32] [debug line = 75:4]
  store i32 %36, i32* %x_weight, align 4, !dbg !90 ; [debug line = 75:4]
  %37 = load i32* %y_weight, align 4, !dbg !91    ; [#uses=1 type=i32] [debug line = 78:4]
  %38 = load i32* %j, align 4, !dbg !91           ; [#uses=1 type=i32] [debug line = 78:4]
  %39 = add nsw i32 1, %38, !dbg !91              ; [#uses=1 type=i32] [debug line = 78:4]
  %40 = sub nsw i32 %39, 1, !dbg !91              ; [#uses=1 type=i32] [debug line = 78:4]
  %41 = sext i32 %40 to i64, !dbg !91             ; [#uses=1 type=i64] [debug line = 78:4]
  %42 = load i32* %i, align 4, !dbg !91           ; [#uses=1 type=i32] [debug line = 78:4]
  %43 = add nsw i32 1, %42, !dbg !91              ; [#uses=1 type=i32] [debug line = 78:4]
  %44 = sub nsw i32 %43, 1, !dbg !91              ; [#uses=1 type=i32] [debug line = 78:4]
  %45 = sext i32 %44 to i64, !dbg !91             ; [#uses=1 type=i64] [debug line = 78:4]
  %46 = load [3 x i8]** %1, align 8, !dbg !91     ; [#uses=1 type=[3 x i8]*] [debug line = 78:4]
  %47 = getelementptr inbounds [3 x i8]* %46, i64 %45, !dbg !91 ; [#uses=1 type=[3 x i8]*] [debug line = 78:4]
  %48 = getelementptr inbounds [3 x i8]* %47, i32 0, i64 %41, !dbg !91 ; [#uses=1 type=i8*] [debug line = 78:4]
  %49 = load i8* %48, align 1, !dbg !91           ; [#uses=1 type=i8] [debug line = 78:4]
  %50 = zext i8 %49 to i32, !dbg !91              ; [#uses=1 type=i32] [debug line = 78:4]
  %51 = load i32* %j, align 4, !dbg !91           ; [#uses=1 type=i32] [debug line = 78:4]
  %52 = sext i32 %51 to i64, !dbg !91             ; [#uses=1 type=i64] [debug line = 78:4]
  %53 = load i32* %i, align 4, !dbg !91           ; [#uses=1 type=i32] [debug line = 78:4]
  %54 = sext i32 %53 to i64, !dbg !91             ; [#uses=1 type=i64] [debug line = 78:4]
  %55 = getelementptr inbounds [3 x [3 x i8]]* @_ZZ15sobel_operator2PA3_hE4y_op, i32 0, i64 %54, !dbg !91 ; [#uses=1 type=[3 x i8]*] [debug line = 78:4]
  %56 = getelementptr inbounds [3 x i8]* %55, i32 0, i64 %52, !dbg !91 ; [#uses=1 type=i8*] [debug line = 78:4]
  %57 = load i8* %56, align 1, !dbg !91           ; [#uses=1 type=i8] [debug line = 78:4]
  %58 = sext i8 %57 to i32, !dbg !91              ; [#uses=1 type=i32] [debug line = 78:4]
  %59 = mul nsw i32 %50, %58, !dbg !91            ; [#uses=1 type=i32] [debug line = 78:4]
  %60 = add nsw i32 %37, %59, !dbg !91            ; [#uses=1 type=i32] [debug line = 78:4]
  store i32 %60, i32* %y_weight, align 4, !dbg !91 ; [debug line = 78:4]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([7 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !92 ; [debug line = 79:3]
  br label %61, !dbg !92                          ; [debug line = 79:3]

; <label>:61                                      ; preds = %12
  %62 = load i32* %i, align 4, !dbg !93           ; [#uses=1 type=i32] [debug line = 73:33]
  %63 = add nsw i32 %62, 1, !dbg !93              ; [#uses=1 type=i32] [debug line = 73:33]
  store i32 %63, i32* %i, align 4, !dbg !93       ; [debug line = 73:33]
  br label %9, !dbg !93                           ; [debug line = 73:33]

; <label>:64                                      ; preds = %9
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([7 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !94 ; [debug line = 80:2]
  br label %65, !dbg !94                          ; [debug line = 80:2]

; <label>:65                                      ; preds = %64
  %66 = load i32* %j, align 4, !dbg !95           ; [#uses=1 type=i32] [debug line = 72:32]
  %67 = add nsw i32 %66, 1, !dbg !95              ; [#uses=1 type=i32] [debug line = 72:32]
  store i32 %67, i32* %j, align 4, !dbg !95       ; [debug line = 72:32]
  br label %4, !dbg !95                           ; [debug line = 72:32]

; <label>:68                                      ; preds = %4
  %69 = load i32* %x_weight, align 4, !dbg !96    ; [#uses=1 type=i32] [debug line = 82:2]
  %70 = icmp sgt i32 %69, 0, !dbg !96             ; [#uses=1 type=i1] [debug line = 82:2]
  br i1 %70, label %71, label %73, !dbg !96       ; [debug line = 82:2]

; <label>:71                                      ; preds = %68
  %72 = load i32* %x_weight, align 4, !dbg !96    ; [#uses=1 type=i32] [debug line = 82:2]
  br label %76, !dbg !96                          ; [debug line = 82:2]

; <label>:73                                      ; preds = %68
  %74 = load i32* %x_weight, align 4, !dbg !96    ; [#uses=1 type=i32] [debug line = 82:2]
  %75 = sub nsw i32 0, %74, !dbg !96              ; [#uses=1 type=i32] [debug line = 82:2]
  br label %76, !dbg !96                          ; [debug line = 82:2]

; <label>:76                                      ; preds = %73, %71
  %77 = phi i32 [ %72, %71 ], [ %75, %73 ], !dbg !96 ; [#uses=1 type=i32] [debug line = 82:2]
  %78 = load i32* %y_weight, align 4, !dbg !96    ; [#uses=1 type=i32] [debug line = 82:2]
  %79 = icmp sgt i32 %78, 0, !dbg !96             ; [#uses=1 type=i1] [debug line = 82:2]
  br i1 %79, label %80, label %82, !dbg !96       ; [debug line = 82:2]

; <label>:80                                      ; preds = %76
  %81 = load i32* %y_weight, align 4, !dbg !96    ; [#uses=1 type=i32] [debug line = 82:2]
  br label %85, !dbg !96                          ; [debug line = 82:2]

; <label>:82                                      ; preds = %76
  %83 = load i32* %y_weight, align 4, !dbg !96    ; [#uses=1 type=i32] [debug line = 82:2]
  %84 = sub nsw i32 0, %83, !dbg !96              ; [#uses=1 type=i32] [debug line = 82:2]
  br label %85, !dbg !96                          ; [debug line = 82:2]

; <label>:85                                      ; preds = %82, %80
  %86 = phi i32 [ %81, %80 ], [ %84, %82 ], !dbg !96 ; [#uses=1 type=i32] [debug line = 82:2]
  %87 = add nsw i32 %77, %86, !dbg !96            ; [#uses=1 type=i32] [debug line = 82:2]
  store i32 %87, i32* %edge_weight, align 4, !dbg !96 ; [debug line = 82:2]
  %88 = load i32* %edge_weight, align 4, !dbg !97 ; [#uses=1 type=i32] [debug line = 84:2]
  %89 = trunc i32 %88 to i8, !dbg !97             ; [#uses=1 type=i8] [debug line = 84:2]
  %90 = zext i8 %89 to i32, !dbg !97              ; [#uses=1 type=i32] [debug line = 84:2]
  %91 = sub nsw i32 255, %90, !dbg !97            ; [#uses=1 type=i32] [debug line = 84:2]
  %92 = trunc i32 %91 to i8, !dbg !97             ; [#uses=1 type=i8] [debug line = 84:2]
  store i8 %92, i8* %edge_val, align 1, !dbg !97  ; [debug line = 84:2]
  %93 = load i8* %edge_val, align 1, !dbg !98     ; [#uses=1 type=i8] [debug line = 87:2]
  %94 = zext i8 %93 to i32, !dbg !98              ; [#uses=1 type=i32] [debug line = 87:2]
  %95 = icmp sgt i32 %94, 200, !dbg !98           ; [#uses=1 type=i1] [debug line = 87:2]
  br i1 %95, label %96, label %97, !dbg !98       ; [debug line = 87:2]

; <label>:96                                      ; preds = %85
  store i8 -1, i8* %edge_val, align 1, !dbg !99   ; [debug line = 88:3]
  br label %103, !dbg !99                         ; [debug line = 88:3]

; <label>:97                                      ; preds = %85
  %98 = load i8* %edge_val, align 1, !dbg !100    ; [#uses=1 type=i8] [debug line = 89:7]
  %99 = zext i8 %98 to i32, !dbg !100             ; [#uses=1 type=i32] [debug line = 89:7]
  %100 = icmp slt i32 %99, 100, !dbg !100         ; [#uses=1 type=i1] [debug line = 89:7]
  br i1 %100, label %101, label %102, !dbg !100   ; [debug line = 89:7]

; <label>:101                                     ; preds = %97
  store i8 0, i8* %edge_val, align 1, !dbg !101   ; [debug line = 90:3]
  br label %102, !dbg !101                        ; [debug line = 90:3]

; <label>:102                                     ; preds = %101, %97
  br label %103

; <label>:103                                     ; preds = %102, %96
  %104 = load i8* %edge_val, align 1, !dbg !102   ; [#uses=1 type=i8] [debug line = 92:2]
  ret i8 %104, !dbg !102                          ; [debug line = 92:2]
}

; [#uses=0]
define void @_Z12sobel_filterPhPj(i8* %inter_pix, i32* %out_pix) nounwind uwtable {
  %1 = alloca i8*, align 8                        ; [#uses=5 type=i8**]
  %2 = alloca i32*, align 8                       ; [#uses=4 type=i32**]
  %cache = alloca [4 x [1920 x i8]], align 16     ; [#uses=3 type=[4 x [1920 x i8]]*]
  %matrix = alloca [3 x [3 x i8]], align 1        ; [#uses=2 type=[3 x [3 x i8]]*]
  %val = alloca i8, align 1                       ; [#uses=2 type=i8*]
  %fourWide = alloca %union.OneToFourPixels, align 4 ; [#uses=1 type=%union.OneToFourPixels*]
  %i = alloca i32, align 4                        ; [#uses=6 type=i32*]
  %j = alloca i32, align 4                        ; [#uses=6 type=i32*]
  %i1 = alloca i32, align 4                       ; [#uses=9 type=i32*]
  %j2 = alloca i32, align 4                       ; [#uses=9 type=i32*]
  store i8* %inter_pix, i8** %1, align 8
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !103), !dbg !104 ; [debug line = 95:27] [debug variable = inter_pix]
  store i32* %out_pix, i32** %2, align 8
  call void @llvm.dbg.declare(metadata !{i32** %2}, metadata !105), !dbg !106 ; [debug line = 95:60] [debug variable = out_pix]
  %3 = load i32** %2, align 8, !dbg !107          ; [#uses=1 type=i32*] [debug line = 96:2]
  call void (...)* @_ssdm_SpecArrayDimSize(i32* %3, i32 2073600) nounwind, !dbg !107 ; [debug line = 96:2]
  %4 = load i8** %1, align 8, !dbg !109           ; [#uses=1 type=i8*] [debug line = 96:46]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %4, i32 2073600) nounwind, !dbg !109 ; [debug line = 96:46]
  %5 = load i8** %1, align 8, !dbg !110           ; [#uses=1 type=i8*] [debug line = 97:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %5, i8* getelementptr inbounds ([6 x i8]* @.str3, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([6 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str5, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 16, i32 16, i32 16, i32 16, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !110 ; [debug line = 97:1]
  %6 = load i32** %2, align 8, !dbg !111          ; [#uses=1 type=i32*] [debug line = 98:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %6, i8* getelementptr inbounds ([6 x i8]* @.str3, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([6 x i8]* @.str6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str5, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 16, i32 16, i32 16, i32 16, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !111 ; [debug line = 98:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, i8* getelementptr inbounds ([10 x i8]* @.str7, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !112 ; [debug line = 99:1]
  call void @llvm.dbg.declare(metadata !{[4 x [1920 x i8]]* %cache}, metadata !113), !dbg !117 ; [debug line = 102:10] [debug variable = cache]
  %7 = getelementptr inbounds [4 x [1920 x i8]]* %cache, i32 0, i32 0, !dbg !118 ; [#uses=1 type=[1920 x i8]*] [debug line = 103:1]
  call void (...)* @_ssdm_SpecArrayPartition([1920 x i8]* %7, i32 1, i8* getelementptr inbounds ([9 x i8]* @.str8, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !118 ; [debug line = 103:1]
  call void @llvm.dbg.declare(metadata !{[3 x [3 x i8]]* %matrix}, metadata !119), !dbg !121 ; [debug line = 104:10] [debug variable = matrix]
  %8 = getelementptr inbounds [3 x [3 x i8]]* %matrix, i32 0, i32 0, !dbg !122 ; [#uses=1 type=[3 x i8]*] [debug line = 105:1]
  call void (...)* @_ssdm_SpecArrayPartition([3 x i8]* %8, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str8, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !122 ; [debug line = 105:1]
  call void @llvm.dbg.declare(metadata !{i8* %val}, metadata !123), !dbg !124 ; [debug line = 106:10] [debug variable = val]
  call void @llvm.dbg.declare(metadata !{%union.OneToFourPixels* %fourWide}, metadata !125), !dbg !137 ; [debug line = 107:18] [debug variable = fourWide]
  br label %9, !dbg !138                          ; [debug line = 107:26]

; <label>:9                                       ; preds = %0
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !139), !dbg !141 ; [debug line = 109:35] [debug variable = i]
  store i32 0, i32* %i, align 4, !dbg !142        ; [debug line = 109:40]
  br label %10, !dbg !142                         ; [debug line = 109:40]

; <label>:10                                      ; preds = %37, %9
  %11 = load i32* %i, align 4, !dbg !142          ; [#uses=1 type=i32] [debug line = 109:40]
  %12 = icmp ult i32 %11, 2, !dbg !142            ; [#uses=1 type=i1] [debug line = 109:40]
  br i1 %12, label %13, label %40, !dbg !142      ; [debug line = 109:40]

; <label>:13                                      ; preds = %10
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([14 x i8]* @.str9, i32 0, i32 0)) nounwind, !dbg !143 ; [debug line = 109:55]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([14 x i8]* @.str9, i32 0, i32 0)) nounwind, !dbg !143 ; [debug line = 109:55]
  br label %14, !dbg !143                         ; [debug line = 109:55]

; <label>:14                                      ; preds = %13
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !145), !dbg !147 ; [debug line = 110:36] [debug variable = j]
  store i32 0, i32* %j, align 4, !dbg !148        ; [debug line = 110:41]
  br label %15, !dbg !148                         ; [debug line = 110:41]

; <label>:15                                      ; preds = %33, %14
  %16 = load i32* %j, align 4, !dbg !148          ; [#uses=1 type=i32] [debug line = 110:41]
  %17 = icmp ult i32 %16, 1920, !dbg !148         ; [#uses=1 type=i1] [debug line = 110:41]
  br i1 %17, label %18, label %36, !dbg !148      ; [debug line = 110:41]

; <label>:18                                      ; preds = %15
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([14 x i8]* @.str10, i32 0, i32 0)) nounwind, !dbg !149 ; [debug line = 110:59]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([14 x i8]* @.str10, i32 0, i32 0)) nounwind, !dbg !149 ; [debug line = 110:59]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !151 ; [debug line = 111:1]
  call void (...)* @_ssdm_SpecLoopFlatten(i32 1, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !152 ; [debug line = 112:1]
  %19 = load i32* %i, align 4, !dbg !153          ; [#uses=1 type=i32] [debug line = 113:2]
  %20 = mul i32 %19, 1920, !dbg !153              ; [#uses=1 type=i32] [debug line = 113:2]
  %21 = load i32* %j, align 4, !dbg !153          ; [#uses=1 type=i32] [debug line = 113:2]
  %22 = add i32 %20, %21, !dbg !153               ; [#uses=1 type=i32] [debug line = 113:2]
  %23 = zext i32 %22 to i64, !dbg !153            ; [#uses=1 type=i64] [debug line = 113:2]
  %24 = load i8** %1, align 8, !dbg !153          ; [#uses=1 type=i8*] [debug line = 113:2]
  %25 = getelementptr inbounds i8* %24, i64 %23, !dbg !153 ; [#uses=1 type=i8*] [debug line = 113:2]
  %26 = load i8* %25, align 1, !dbg !153          ; [#uses=1 type=i8] [debug line = 113:2]
  %27 = load i32* %j, align 4, !dbg !153          ; [#uses=1 type=i32] [debug line = 113:2]
  %28 = zext i32 %27 to i64, !dbg !153            ; [#uses=1 type=i64] [debug line = 113:2]
  %29 = load i32* %i, align 4, !dbg !153          ; [#uses=1 type=i32] [debug line = 113:2]
  %30 = zext i32 %29 to i64, !dbg !153            ; [#uses=1 type=i64] [debug line = 113:2]
  %31 = getelementptr inbounds [4 x [1920 x i8]]* %cache, i32 0, i64 %30, !dbg !153 ; [#uses=1 type=[1920 x i8]*] [debug line = 113:2]
  %32 = getelementptr inbounds [1920 x i8]* %31, i32 0, i64 %28, !dbg !153 ; [#uses=1 type=i8*] [debug line = 113:2]
  store i8 %26, i8* %32, align 1, !dbg !153       ; [debug line = 113:2]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([14 x i8]* @.str10, i32 0, i32 0)) nounwind, !dbg !154 ; [debug line = 114:3]
  br label %33, !dbg !154                         ; [debug line = 114:3]

; <label>:33                                      ; preds = %18
  %34 = load i32* %j, align 4, !dbg !155          ; [#uses=1 type=i32] [debug line = 110:53]
  %35 = add i32 %34, 1, !dbg !155                 ; [#uses=1 type=i32] [debug line = 110:53]
  store i32 %35, i32* %j, align 4, !dbg !155      ; [debug line = 110:53]
  br label %15, !dbg !155                         ; [debug line = 110:53]

; <label>:36                                      ; preds = %15
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([14 x i8]* @.str9, i32 0, i32 0)) nounwind, !dbg !156 ; [debug line = 115:2]
  br label %37, !dbg !156                         ; [debug line = 115:2]

; <label>:37                                      ; preds = %36
  %38 = load i32* %i, align 4, !dbg !157          ; [#uses=1 type=i32] [debug line = 109:49]
  %39 = add i32 %38, 1, !dbg !157                 ; [#uses=1 type=i32] [debug line = 109:49]
  store i32 %39, i32* %i, align 4, !dbg !157      ; [debug line = 109:49]
  br label %10, !dbg !157                         ; [debug line = 109:49]

; <label>:40                                      ; preds = %10
  br label %41, !dbg !158                         ; [debug line = 115:2]

; <label>:41                                      ; preds = %40
  call void @llvm.dbg.declare(metadata !{i32* %i1}, metadata !159), !dbg !161 ; [debug line = 118:33] [debug variable = i]
  store i32 0, i32* %i1, align 4, !dbg !162       ; [debug line = 118:38]
  br label %42, !dbg !162                         ; [debug line = 118:38]

; <label>:42                                      ; preds = %98, %41
  %43 = load i32* %i1, align 4, !dbg !162         ; [#uses=1 type=i32] [debug line = 118:38]
  %44 = icmp ult i32 %43, 1080, !dbg !162         ; [#uses=1 type=i1] [debug line = 118:38]
  br i1 %44, label %45, label %101, !dbg !162     ; [debug line = 118:38]

; <label>:45                                      ; preds = %42
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([11 x i8]* @.str11, i32 0, i32 0)) nounwind, !dbg !163 ; [debug line = 118:56]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([11 x i8]* @.str11, i32 0, i32 0)) nounwind, !dbg !163 ; [debug line = 118:56]
  br label %46, !dbg !163                         ; [debug line = 118:56]

; <label>:46                                      ; preds = %45
  call void @llvm.dbg.declare(metadata !{i32* %j2}, metadata !165), !dbg !167 ; [debug line = 119:34] [debug variable = j]
  store i32 0, i32* %j2, align 4, !dbg !168       ; [debug line = 119:39]
  br label %47, !dbg !168                         ; [debug line = 119:39]

; <label>:47                                      ; preds = %94, %46
  %48 = load i32* %j2, align 4, !dbg !168         ; [#uses=1 type=i32] [debug line = 119:39]
  %49 = icmp ult i32 %48, 1920, !dbg !168         ; [#uses=1 type=i1] [debug line = 119:39]
  br i1 %49, label %50, label %97, !dbg !168      ; [debug line = 119:39]

; <label>:50                                      ; preds = %47
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([11 x i8]* @.str12, i32 0, i32 0)) nounwind, !dbg !169 ; [debug line = 119:57]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([11 x i8]* @.str12, i32 0, i32 0)) nounwind, !dbg !169 ; [debug line = 119:57]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !171 ; [debug line = 120:1]
  call void (...)* @_ssdm_SpecLoopFlatten(i32 1, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !172 ; [debug line = 121:1]
  %51 = load i32* %j2, align 4, !dbg !173         ; [#uses=1 type=i32] [debug line = 123:2]
  %52 = icmp eq i32 %51, 0, !dbg !173             ; [#uses=1 type=i1] [debug line = 123:2]
  br i1 %52, label %62, label %53, !dbg !173      ; [debug line = 123:2]

; <label>:53                                      ; preds = %50
  %54 = load i32* %j2, align 4, !dbg !173         ; [#uses=1 type=i32] [debug line = 123:2]
  %55 = icmp eq i32 %54, 1919, !dbg !173          ; [#uses=1 type=i1] [debug line = 123:2]
  br i1 %55, label %62, label %56, !dbg !173      ; [debug line = 123:2]

; <label>:56                                      ; preds = %53
  %57 = load i32* %i1, align 4, !dbg !173         ; [#uses=1 type=i32] [debug line = 123:2]
  %58 = icmp eq i32 %57, 0, !dbg !173             ; [#uses=1 type=i1] [debug line = 123:2]
  br i1 %58, label %62, label %59, !dbg !173      ; [debug line = 123:2]

; <label>:59                                      ; preds = %56
  %60 = load i32* %i1, align 4, !dbg !173         ; [#uses=1 type=i32] [debug line = 123:2]
  %61 = icmp eq i32 %60, 1079, !dbg !173          ; [#uses=1 type=i1] [debug line = 123:2]
  br i1 %61, label %62, label %63, !dbg !173      ; [debug line = 123:2]

; <label>:62                                      ; preds = %59, %56, %53, %50
  store i8 0, i8* %val, align 1, !dbg !174        ; [debug line = 124:6]
  br label %66, !dbg !176                         ; [debug line = 125:5]

; <label>:63                                      ; preds = %59
  %64 = getelementptr inbounds [3 x [3 x i8]]* %matrix, i32 0, i32 0, !dbg !177 ; [#uses=1 type=[3 x i8]*] [debug line = 128:12]
  %65 = call zeroext i8 @_Z15sobel_operator2PA3_h([3 x i8]* %64), !dbg !177 ; [#uses=1 type=i8] [debug line = 128:12]
  store i8 %65, i8* %val, align 1, !dbg !177      ; [debug line = 128:12]
  br label %66

; <label>:66                                      ; preds = %63, %62
  %67 = bitcast %union.OneToFourPixels* %fourWide to i32*, !dbg !179 ; [#uses=1 type=i32*] [debug line = 133:5]
  %68 = load i32* %67, align 4, !dbg !179         ; [#uses=1 type=i32] [debug line = 133:5]
  %69 = load i32* %i1, align 4, !dbg !179         ; [#uses=1 type=i32] [debug line = 133:5]
  %70 = mul i32 %69, 1920, !dbg !179              ; [#uses=1 type=i32] [debug line = 133:5]
  %71 = load i32* %j2, align 4, !dbg !179         ; [#uses=1 type=i32] [debug line = 133:5]
  %72 = add i32 %70, %71, !dbg !179               ; [#uses=1 type=i32] [debug line = 133:5]
  %73 = zext i32 %72 to i64, !dbg !179            ; [#uses=1 type=i64] [debug line = 133:5]
  %74 = load i32** %2, align 8, !dbg !179         ; [#uses=1 type=i32*] [debug line = 133:5]
  %75 = getelementptr inbounds i32* %74, i64 %73, !dbg !179 ; [#uses=1 type=i32*] [debug line = 133:5]
  store i32 %68, i32* %75, align 4, !dbg !179     ; [debug line = 133:5]
  %76 = load i32* %i1, align 4, !dbg !180         ; [#uses=1 type=i32] [debug line = 135:5]
  %77 = add i32 %76, 2, !dbg !180                 ; [#uses=1 type=i32] [debug line = 135:5]
  %78 = urem i32 %77, 1080, !dbg !180             ; [#uses=1 type=i32] [debug line = 135:5]
  %79 = mul i32 %78, 1920, !dbg !180              ; [#uses=1 type=i32] [debug line = 135:5]
  %80 = load i32* %j2, align 4, !dbg !180         ; [#uses=1 type=i32] [debug line = 135:5]
  %81 = add i32 %79, %80, !dbg !180               ; [#uses=1 type=i32] [debug line = 135:5]
  %82 = zext i32 %81 to i64, !dbg !180            ; [#uses=1 type=i64] [debug line = 135:5]
  %83 = load i8** %1, align 8, !dbg !180          ; [#uses=1 type=i8*] [debug line = 135:5]
  %84 = getelementptr inbounds i8* %83, i64 %82, !dbg !180 ; [#uses=1 type=i8*] [debug line = 135:5]
  %85 = load i8* %84, align 1, !dbg !180          ; [#uses=1 type=i8] [debug line = 135:5]
  %86 = load i32* %j2, align 4, !dbg !180         ; [#uses=1 type=i32] [debug line = 135:5]
  %87 = zext i32 %86 to i64, !dbg !180            ; [#uses=1 type=i64] [debug line = 135:5]
  %88 = load i32* %i1, align 4, !dbg !180         ; [#uses=1 type=i32] [debug line = 135:5]
  %89 = add i32 %88, 2, !dbg !180                 ; [#uses=1 type=i32] [debug line = 135:5]
  %90 = urem i32 %89, 4, !dbg !180                ; [#uses=1 type=i32] [debug line = 135:5]
  %91 = zext i32 %90 to i64, !dbg !180            ; [#uses=1 type=i64] [debug line = 135:5]
  %92 = getelementptr inbounds [4 x [1920 x i8]]* %cache, i32 0, i64 %91, !dbg !180 ; [#uses=1 type=[1920 x i8]*] [debug line = 135:5]
  %93 = getelementptr inbounds [1920 x i8]* %92, i32 0, i64 %87, !dbg !180 ; [#uses=1 type=i8*] [debug line = 135:5]
  store i8 %85, i8* %93, align 1, !dbg !180       ; [debug line = 135:5]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([11 x i8]* @.str12, i32 0, i32 0)) nounwind, !dbg !181 ; [debug line = 137:3]
  br label %94, !dbg !181                         ; [debug line = 137:3]

; <label>:94                                      ; preds = %66
  %95 = load i32* %j2, align 4, !dbg !182         ; [#uses=1 type=i32] [debug line = 119:51]
  %96 = add i32 %95, 1, !dbg !182                 ; [#uses=1 type=i32] [debug line = 119:51]
  store i32 %96, i32* %j2, align 4, !dbg !182     ; [debug line = 119:51]
  br label %47, !dbg !182                         ; [debug line = 119:51]

; <label>:97                                      ; preds = %47
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([11 x i8]* @.str11, i32 0, i32 0)) nounwind, !dbg !183 ; [debug line = 138:2]
  br label %98, !dbg !183                         ; [debug line = 138:2]

; <label>:98                                      ; preds = %97
  %99 = load i32* %i1, align 4, !dbg !184         ; [#uses=1 type=i32] [debug line = 118:50]
  %100 = add i32 %99, 1, !dbg !184                ; [#uses=1 type=i32] [debug line = 118:50]
  store i32 %100, i32* %i1, align 4, !dbg !184    ; [debug line = 118:50]
  br label %42, !dbg !184                         ; [debug line = 118:50]

; <label>:101                                     ; preds = %42
  ret void, !dbg !185                             ; [debug line = 141:1]
}

; [#uses=3]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=2]
declare void @_ssdm_SpecArrayPartition(...) nounwind

; [#uses=2]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=2]
declare void @_ssdm_SpecLoopFlatten(...) nounwind

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
!19 = metadata !{i32 786478, i32 0, metadata !6, metadata !"sobel_operator2", metadata !"sobel_operator2", metadata !"_Z15sobel_operator2PA3_h", metadata !6, i32 54, metadata !20, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8 ([3 x i8]*)* @_Z15sobel_operator2PA3_h, null, null, metadata !17, i32 55} ; [ DW_TAG_subprogram ]
!20 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !21, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!21 = metadata !{metadata !9, metadata !22}
!22 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !23} ; [ DW_TAG_pointer_type ]
!23 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 24, i64 8, i32 0, i32 0, metadata !9, metadata !24, i32 0, i32 0} ; [ DW_TAG_array_type ]
!24 = metadata !{metadata !25}
!25 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ]
!26 = metadata !{i32 786478, i32 0, metadata !6, metadata !"sobel_filter", metadata !"sobel_filter", metadata !"_Z12sobel_filterPhPj", metadata !6, i32 95, metadata !27, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i32*)* @_Z12sobel_filterPhPj, null, null, metadata !17, i32 96} ; [ DW_TAG_subprogram ]
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
!40 = metadata !{i32 786484, i32 0, metadata !19, metadata !"x_op", metadata !"x_op", metadata !"", metadata !6, i32 62, metadata !35, i32 1, i32 1, [3 x [3 x i8]]* @_ZZ15sobel_operator2PA3_hE4x_op} ; [ DW_TAG_variable ]
!41 = metadata !{i32 786484, i32 0, metadata !19, metadata !"y_op", metadata !"y_op", metadata !"", metadata !6, i32 66, metadata !35, i32 1, i32 1, [3 x [3 x i8]]* @_ZZ15sobel_operator2PA3_hE4y_op} ; [ DW_TAG_variable ]
!42 = metadata !{null, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48}
!43 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 1}
!44 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!45 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int", metadata !"uint8_t [1920]*"}
!46 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const", metadata !"const", metadata !""}
!47 = metadata !{metadata !"kernel_arg_name", metadata !"rows", metadata !"cols", metadata !"image"}
!48 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!49 = metadata !{i8 ([3 x i8]*)* @_Z15sobel_operator2PA3_h, metadata !50, metadata !51, metadata !52, metadata !53, metadata !54, metadata !48}
!50 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!51 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!52 = metadata !{metadata !"kernel_arg_type", metadata !"uint8_t [3]*"}
!53 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!54 = metadata !{metadata !"kernel_arg_name", metadata !"image"}
!55 = metadata !{void (i8*, i32*)* @_Z12sobel_filterPhPj, metadata !56, metadata !57, metadata !58, metadata !59, metadata !60, metadata !48}
!56 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!57 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!58 = metadata !{metadata !"kernel_arg_type", metadata !"uint8_t*", metadata !"uint*"}
!59 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!60 = metadata !{metadata !"kernel_arg_name", metadata !"inter_pix", metadata !"out_pix"}
!61 = metadata !{i32 786689, metadata !19, metadata !"image", metadata !6, i32 16777270, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!62 = metadata !{i32 54, i32 33, metadata !19, null}
!63 = metadata !{i32 55, i32 2, metadata !64, null}
!64 = metadata !{i32 786443, metadata !19, i32 55, i32 1, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!65 = metadata !{i32 56, i32 1, metadata !64, null}
!66 = metadata !{i32 786688, metadata !64, metadata !"edge_weight", metadata !6, i32 59, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!67 = metadata !{i32 59, i32 11, metadata !64, null}
!68 = metadata !{i32 786688, metadata !64, metadata !"edge_val", metadata !6, i32 60, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!69 = metadata !{i32 60, i32 10, metadata !64, null}
!70 = metadata !{i32 65, i32 1, metadata !64, null}
!71 = metadata !{i32 69, i32 1, metadata !64, null}
!72 = metadata !{i32 786688, metadata !64, metadata !"x_weight", metadata !6, i32 70, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!73 = metadata !{i32 70, i32 6, metadata !64, null}
!74 = metadata !{i32 70, i32 18, metadata !64, null}
!75 = metadata !{i32 786688, metadata !64, metadata !"y_weight", metadata !6, i32 71, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!76 = metadata !{i32 71, i32 6, metadata !64, null}
!77 = metadata !{i32 71, i32 18, metadata !64, null}
!78 = metadata !{i32 786688, metadata !79, metadata !"j", metadata !6, i32 72, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!79 = metadata !{i32 786443, metadata !64, i32 72, i32 10, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!80 = metadata !{i32 72, i32 18, metadata !79, null}
!81 = metadata !{i32 72, i32 23, metadata !79, null}
!82 = metadata !{i32 72, i32 38, metadata !83, null}
!83 = metadata !{i32 786443, metadata !79, i32 72, i32 37, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!84 = metadata !{i32 786688, metadata !85, metadata !"i", metadata !6, i32 73, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!85 = metadata !{i32 786443, metadata !83, i32 73, i32 11, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!86 = metadata !{i32 73, i32 19, metadata !85, null}
!87 = metadata !{i32 73, i32 24, metadata !85, null}
!88 = metadata !{i32 73, i32 39, metadata !89, null}
!89 = metadata !{i32 786443, metadata !85, i32 73, i32 38, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!90 = metadata !{i32 75, i32 4, metadata !89, null}
!91 = metadata !{i32 78, i32 4, metadata !89, null}
!92 = metadata !{i32 79, i32 3, metadata !89, null}
!93 = metadata !{i32 73, i32 33, metadata !85, null}
!94 = metadata !{i32 80, i32 2, metadata !83, null}
!95 = metadata !{i32 72, i32 32, metadata !79, null}
!96 = metadata !{i32 82, i32 2, metadata !64, null}
!97 = metadata !{i32 84, i32 2, metadata !64, null}
!98 = metadata !{i32 87, i32 2, metadata !64, null}
!99 = metadata !{i32 88, i32 3, metadata !64, null}
!100 = metadata !{i32 89, i32 7, metadata !64, null}
!101 = metadata !{i32 90, i32 3, metadata !64, null}
!102 = metadata !{i32 92, i32 2, metadata !64, null}
!103 = metadata !{i32 786689, metadata !26, metadata !"inter_pix", metadata !6, i32 16777311, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!104 = metadata !{i32 95, i32 27, metadata !26, null}
!105 = metadata !{i32 786689, metadata !26, metadata !"out_pix", metadata !6, i32 33554527, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!106 = metadata !{i32 95, i32 60, metadata !26, null}
!107 = metadata !{i32 96, i32 2, metadata !108, null}
!108 = metadata !{i32 786443, metadata !26, i32 96, i32 1, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!109 = metadata !{i32 96, i32 46, metadata !108, null}
!110 = metadata !{i32 97, i32 1, metadata !108, null}
!111 = metadata !{i32 98, i32 1, metadata !108, null}
!112 = metadata !{i32 99, i32 1, metadata !108, null}
!113 = metadata !{i32 786688, metadata !108, metadata !"cache", metadata !6, i32 102, metadata !114, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!114 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 61440, i64 8, i32 0, i32 0, metadata !9, metadata !115, i32 0, i32 0} ; [ DW_TAG_array_type ]
!115 = metadata !{metadata !116, metadata !16}
!116 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ]
!117 = metadata !{i32 102, i32 10, metadata !108, null}
!118 = metadata !{i32 103, i32 1, metadata !108, null}
!119 = metadata !{i32 786688, metadata !108, metadata !"matrix", metadata !6, i32 104, metadata !120, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!120 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 72, i64 8, i32 0, i32 0, metadata !9, metadata !38, i32 0, i32 0} ; [ DW_TAG_array_type ]
!121 = metadata !{i32 104, i32 10, metadata !108, null}
!122 = metadata !{i32 105, i32 1, metadata !108, null}
!123 = metadata !{i32 786688, metadata !108, metadata !"val", metadata !6, i32 106, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!124 = metadata !{i32 106, i32 10, metadata !108, null}
!125 = metadata !{i32 786688, metadata !108, metadata !"fourWide", metadata !6, i32 107, metadata !126, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!126 = metadata !{i32 786454, null, metadata !"OneToFourPixels", metadata !6, i32 9, i64 0, i64 0, i64 0, i32 0, metadata !127} ; [ DW_TAG_typedef ]
!127 = metadata !{i32 786455, null, metadata !"", metadata !6, i32 6, i64 32, i64 32, i64 0, i32 0, null, metadata !128, i32 0, null} ; [ DW_TAG_union_type ]
!128 = metadata !{metadata !129, metadata !132, metadata !133}
!129 = metadata !{i32 786445, metadata !127, metadata !"pix", metadata !6, i32 7, i64 32, i64 8, i64 0, i32 0, metadata !130} ; [ DW_TAG_member ]
!130 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 32, i64 8, i32 0, i32 0, metadata !9, metadata !131, i32 0, i32 0} ; [ DW_TAG_array_type ]
!131 = metadata !{metadata !116}
!132 = metadata !{i32 786445, metadata !127, metadata !"full", metadata !6, i32 8, i64 32, i64 32, i64 0, i32 0, metadata !31} ; [ DW_TAG_member ]
!133 = metadata !{i32 786478, i32 0, metadata !127, metadata !"", metadata !"", metadata !"", metadata !6, i32 6, metadata !134, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !17, i32 6} ; [ DW_TAG_subprogram ]
!134 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !135, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!135 = metadata !{null, metadata !136}
!136 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !127} ; [ DW_TAG_pointer_type ]
!137 = metadata !{i32 107, i32 18, metadata !108, null}
!138 = metadata !{i32 107, i32 26, metadata !108, null}
!139 = metadata !{i32 786688, metadata !140, metadata !"i", metadata !6, i32 109, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!140 = metadata !{i32 786443, metadata !108, i32 109, i32 17, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!141 = metadata !{i32 109, i32 35, metadata !140, null}
!142 = metadata !{i32 109, i32 40, metadata !140, null}
!143 = metadata !{i32 109, i32 55, metadata !144, null}
!144 = metadata !{i32 786443, metadata !140, i32 109, i32 54, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!145 = metadata !{i32 786688, metadata !146, metadata !"j", metadata !6, i32 110, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!146 = metadata !{i32 786443, metadata !144, i32 110, i32 18, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!147 = metadata !{i32 110, i32 36, metadata !146, null}
!148 = metadata !{i32 110, i32 41, metadata !146, null}
!149 = metadata !{i32 110, i32 59, metadata !150, null}
!150 = metadata !{i32 786443, metadata !146, i32 110, i32 58, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!151 = metadata !{i32 111, i32 1, metadata !150, null}
!152 = metadata !{i32 112, i32 1, metadata !150, null}
!153 = metadata !{i32 113, i32 2, metadata !150, null}
!154 = metadata !{i32 114, i32 3, metadata !150, null}
!155 = metadata !{i32 110, i32 53, metadata !146, null}
!156 = metadata !{i32 115, i32 2, metadata !144, null}
!157 = metadata !{i32 109, i32 49, metadata !140, null}
!158 = metadata !{i32 115, i32 2, metadata !140, null}
!159 = metadata !{i32 786688, metadata !160, metadata !"i", metadata !6, i32 118, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!160 = metadata !{i32 786443, metadata !108, i32 118, i32 15, metadata !6, i32 15} ; [ DW_TAG_lexical_block ]
!161 = metadata !{i32 118, i32 33, metadata !160, null}
!162 = metadata !{i32 118, i32 38, metadata !160, null}
!163 = metadata !{i32 118, i32 56, metadata !164, null}
!164 = metadata !{i32 786443, metadata !160, i32 118, i32 55, metadata !6, i32 16} ; [ DW_TAG_lexical_block ]
!165 = metadata !{i32 786688, metadata !166, metadata !"j", metadata !6, i32 119, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!166 = metadata !{i32 786443, metadata !164, i32 119, i32 16, metadata !6, i32 17} ; [ DW_TAG_lexical_block ]
!167 = metadata !{i32 119, i32 34, metadata !166, null}
!168 = metadata !{i32 119, i32 39, metadata !166, null}
!169 = metadata !{i32 119, i32 57, metadata !170, null}
!170 = metadata !{i32 786443, metadata !166, i32 119, i32 56, metadata !6, i32 18} ; [ DW_TAG_lexical_block ]
!171 = metadata !{i32 120, i32 1, metadata !170, null}
!172 = metadata !{i32 121, i32 1, metadata !170, null}
!173 = metadata !{i32 123, i32 2, metadata !170, null}
!174 = metadata !{i32 124, i32 6, metadata !175, null}
!175 = metadata !{i32 786443, metadata !170, i32 123, i32 58, metadata !6, i32 19} ; [ DW_TAG_lexical_block ]
!176 = metadata !{i32 125, i32 5, metadata !175, null}
!177 = metadata !{i32 128, i32 12, metadata !178, null}
!178 = metadata !{i32 786443, metadata !170, i32 126, i32 10, metadata !6, i32 20} ; [ DW_TAG_lexical_block ]
!179 = metadata !{i32 133, i32 5, metadata !170, null}
!180 = metadata !{i32 135, i32 5, metadata !170, null}
!181 = metadata !{i32 137, i32 3, metadata !170, null}
!182 = metadata !{i32 119, i32 51, metadata !166, null}
!183 = metadata !{i32 138, i32 2, metadata !164, null}
!184 = metadata !{i32 118, i32 50, metadata !160, null}
!185 = metadata !{i32 141, i32 1, metadata !108, null}
