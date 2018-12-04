; ModuleID = 'X:/Bureau/HDMI_3610/3610_4/1490679_1771119/sobellab4/solution1/.autopilot/db/a.o.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

%union.OneToFourPixels = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@_ZZ14sobel_operatoriiPA1920_hE4x_op = internal constant [3 x [3 x i8]] [[3 x i8] c"\FF\00\01", [3 x i8] c"\FE\00\02", [3 x i8] c"\FF\00\01"], align 1 ; [#uses=2 type=[3 x [3 x i8]]*]
@_ZZ14sobel_operatoriiPA1920_hE4y_op = internal constant [3 x [3 x i8]] [[3 x i8] c"\01\02\01", [3 x i8] zeroinitializer, [3 x i8] c"\FF\FE\FF"], align 1 ; [#uses=2 type=[3 x [3 x i8]]*]
@.str1 = private unnamed_addr constant [7 x i8] c"OpRows\00", align 1 ; [#uses=1 type=[7 x i8]*]
@.str2 = private unnamed_addr constant [7 x i8] c"OpCols\00", align 1 ; [#uses=1 type=[7 x i8]*]
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
@.str13 = private unnamed_addr constant [7 x i8] c"OneTo4\00", align 1 ; [#uses=1 type=[7 x i8]*]

; [#uses=1]
define internal zeroext i8 @_Z14sobel_operatoriiPA1920_h(i32 %rows, i32 %cols, [1920 x i8]* %image) nounwind uwtable {
  %1 = alloca i32, align 4                        ; [#uses=3 type=i32*]
  %2 = alloca i32, align 4                        ; [#uses=3 type=i32*]
  %3 = alloca [1920 x i8]*, align 8               ; [#uses=4 type=[1920 x i8]**]
  %edge_weight = alloca i32, align 4              ; [#uses=2 type=i32*]
  %edge_val = alloca i8, align 1                  ; [#uses=6 type=i8*]
  %x_weight = alloca i32, align 4                 ; [#uses=6 type=i32*]
  %y_weight = alloca i32, align 4                 ; [#uses=6 type=i32*]
  %j = alloca i32, align 4                        ; [#uses=8 type=i32*]
  %i = alloca i32, align 4                        ; [#uses=8 type=i32*]
  store i32 %rows, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !47), !dbg !48 ; [debug line = 13:34] [debug variable = rows]
  store i32 %cols, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !49), !dbg !50 ; [debug line = 13:50] [debug variable = cols]
  store [1920 x i8]* %image, [1920 x i8]** %3, align 8
  call void @llvm.dbg.declare(metadata !{[1920 x i8]** %3}, metadata !51), !dbg !52 ; [debug line = 13:64] [debug variable = image]
  %4 = load [1920 x i8]** %3, align 8, !dbg !53   ; [#uses=1 type=[1920 x i8]*] [debug line = 14:2]
  call void (...)* @_ssdm_SpecArrayDimSize([1920 x i8]* %4, i32 4) nounwind, !dbg !53 ; [debug line = 14:2]
  call void (...)* @_ssdm_InlineSelf(i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !55 ; [debug line = 15:1]
  call void @llvm.dbg.declare(metadata !{i32* %edge_weight}, metadata !56), !dbg !57 ; [debug line = 18:11] [debug variable = edge_weight]
  call void @llvm.dbg.declare(metadata !{i8* %edge_val}, metadata !58), !dbg !59 ; [debug line = 19:10] [debug variable = edge_val]
  call void (...)* @_ssdm_SpecConstant([3 x i8]* getelementptr inbounds ([3 x [3 x i8]]* @_ZZ14sobel_operatoriiPA1920_hE4x_op, i32 0, i32 0)) nounwind, !dbg !60 ; [debug line = 24:1]
  call void (...)* @_ssdm_SpecConstant([3 x i8]* getelementptr inbounds ([3 x [3 x i8]]* @_ZZ14sobel_operatoriiPA1920_hE4y_op, i32 0, i32 0)) nounwind, !dbg !61 ; [debug line = 28:1]
  call void @llvm.dbg.declare(metadata !{i32* %x_weight}, metadata !62), !dbg !63 ; [debug line = 29:6] [debug variable = x_weight]
  store i32 0, i32* %x_weight, align 4, !dbg !64  ; [debug line = 29:18]
  call void @llvm.dbg.declare(metadata !{i32* %y_weight}, metadata !65), !dbg !66 ; [debug line = 30:6] [debug variable = y_weight]
  store i32 0, i32* %y_weight, align 4, !dbg !67  ; [debug line = 30:18]
  br label %5, !dbg !67                           ; [debug line = 30:18]

; <label>:5                                       ; preds = %0
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !68), !dbg !70 ; [debug line = 31:18] [debug variable = j]
  store i32 0, i32* %j, align 4, !dbg !71         ; [debug line = 31:23]
  br label %6, !dbg !71                           ; [debug line = 31:23]

; <label>:6                                       ; preds = %73, %5
  %7 = load i32* %j, align 4, !dbg !71            ; [#uses=1 type=i32] [debug line = 31:23]
  %8 = icmp slt i32 %7, 3, !dbg !71               ; [#uses=1 type=i1] [debug line = 31:23]
  br i1 %8, label %9, label %76, !dbg !71         ; [debug line = 31:23]

; <label>:9                                       ; preds = %6
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([7 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !72 ; [debug line = 31:38]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([7 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !72 ; [debug line = 31:38]
  br label %10, !dbg !72                          ; [debug line = 31:38]

; <label>:10                                      ; preds = %9
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !74), !dbg !76 ; [debug line = 32:19] [debug variable = i]
  store i32 0, i32* %i, align 4, !dbg !77         ; [debug line = 32:24]
  br label %11, !dbg !77                          ; [debug line = 32:24]

; <label>:11                                      ; preds = %69, %10
  %12 = load i32* %i, align 4, !dbg !77           ; [#uses=1 type=i32] [debug line = 32:24]
  %13 = icmp slt i32 %12, 3, !dbg !77             ; [#uses=1 type=i1] [debug line = 32:24]
  br i1 %13, label %14, label %72, !dbg !77       ; [debug line = 32:24]

; <label>:14                                      ; preds = %11
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([7 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !78 ; [debug line = 32:39]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([7 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !78 ; [debug line = 32:39]
  %15 = load i32* %x_weight, align 4, !dbg !80    ; [#uses=1 type=i32] [debug line = 34:4]
  %16 = load i32* %2, align 4, !dbg !80           ; [#uses=1 type=i32] [debug line = 34:4]
  %17 = load i32* %j, align 4, !dbg !80           ; [#uses=1 type=i32] [debug line = 34:4]
  %18 = add nsw i32 %16, %17, !dbg !80            ; [#uses=1 type=i32] [debug line = 34:4]
  %19 = sub nsw i32 %18, 1, !dbg !80              ; [#uses=1 type=i32] [debug line = 34:4]
  %20 = sext i32 %19 to i64, !dbg !80             ; [#uses=1 type=i64] [debug line = 34:4]
  %21 = load i32* %1, align 4, !dbg !80           ; [#uses=1 type=i32] [debug line = 34:4]
  %22 = load i32* %i, align 4, !dbg !80           ; [#uses=1 type=i32] [debug line = 34:4]
  %23 = add nsw i32 %21, %22, !dbg !80            ; [#uses=1 type=i32] [debug line = 34:4]
  %24 = sub nsw i32 %23, 1, !dbg !80              ; [#uses=1 type=i32] [debug line = 34:4]
  %25 = srem i32 %24, 4, !dbg !80                 ; [#uses=1 type=i32] [debug line = 34:4]
  %26 = sext i32 %25 to i64, !dbg !80             ; [#uses=1 type=i64] [debug line = 34:4]
  %27 = load [1920 x i8]** %3, align 8, !dbg !80  ; [#uses=1 type=[1920 x i8]*] [debug line = 34:4]
  %28 = getelementptr inbounds [1920 x i8]* %27, i64 %26, !dbg !80 ; [#uses=1 type=[1920 x i8]*] [debug line = 34:4]
  %29 = getelementptr inbounds [1920 x i8]* %28, i32 0, i64 %20, !dbg !80 ; [#uses=1 type=i8*] [debug line = 34:4]
  %30 = load i8* %29, align 1, !dbg !80           ; [#uses=1 type=i8] [debug line = 34:4]
  %31 = zext i8 %30 to i32, !dbg !80              ; [#uses=1 type=i32] [debug line = 34:4]
  %32 = load i32* %j, align 4, !dbg !80           ; [#uses=1 type=i32] [debug line = 34:4]
  %33 = sext i32 %32 to i64, !dbg !80             ; [#uses=1 type=i64] [debug line = 34:4]
  %34 = load i32* %i, align 4, !dbg !80           ; [#uses=1 type=i32] [debug line = 34:4]
  %35 = sext i32 %34 to i64, !dbg !80             ; [#uses=1 type=i64] [debug line = 34:4]
  %36 = getelementptr inbounds [3 x [3 x i8]]* @_ZZ14sobel_operatoriiPA1920_hE4x_op, i32 0, i64 %35, !dbg !80 ; [#uses=1 type=[3 x i8]*] [debug line = 34:4]
  %37 = getelementptr inbounds [3 x i8]* %36, i32 0, i64 %33, !dbg !80 ; [#uses=1 type=i8*] [debug line = 34:4]
  %38 = load i8* %37, align 1, !dbg !80           ; [#uses=1 type=i8] [debug line = 34:4]
  %39 = sext i8 %38 to i32, !dbg !80              ; [#uses=1 type=i32] [debug line = 34:4]
  %40 = mul nsw i32 %31, %39, !dbg !80            ; [#uses=1 type=i32] [debug line = 34:4]
  %41 = add nsw i32 %15, %40, !dbg !80            ; [#uses=1 type=i32] [debug line = 34:4]
  store i32 %41, i32* %x_weight, align 4, !dbg !80 ; [debug line = 34:4]
  %42 = load i32* %y_weight, align 4, !dbg !81    ; [#uses=1 type=i32] [debug line = 37:4]
  %43 = load i32* %2, align 4, !dbg !81           ; [#uses=1 type=i32] [debug line = 37:4]
  %44 = load i32* %j, align 4, !dbg !81           ; [#uses=1 type=i32] [debug line = 37:4]
  %45 = add nsw i32 %43, %44, !dbg !81            ; [#uses=1 type=i32] [debug line = 37:4]
  %46 = sub nsw i32 %45, 1, !dbg !81              ; [#uses=1 type=i32] [debug line = 37:4]
  %47 = sext i32 %46 to i64, !dbg !81             ; [#uses=1 type=i64] [debug line = 37:4]
  %48 = load i32* %1, align 4, !dbg !81           ; [#uses=1 type=i32] [debug line = 37:4]
  %49 = load i32* %i, align 4, !dbg !81           ; [#uses=1 type=i32] [debug line = 37:4]
  %50 = add nsw i32 %48, %49, !dbg !81            ; [#uses=1 type=i32] [debug line = 37:4]
  %51 = sub nsw i32 %50, 1, !dbg !81              ; [#uses=1 type=i32] [debug line = 37:4]
  %52 = srem i32 %51, 4, !dbg !81                 ; [#uses=1 type=i32] [debug line = 37:4]
  %53 = sext i32 %52 to i64, !dbg !81             ; [#uses=1 type=i64] [debug line = 37:4]
  %54 = load [1920 x i8]** %3, align 8, !dbg !81  ; [#uses=1 type=[1920 x i8]*] [debug line = 37:4]
  %55 = getelementptr inbounds [1920 x i8]* %54, i64 %53, !dbg !81 ; [#uses=1 type=[1920 x i8]*] [debug line = 37:4]
  %56 = getelementptr inbounds [1920 x i8]* %55, i32 0, i64 %47, !dbg !81 ; [#uses=1 type=i8*] [debug line = 37:4]
  %57 = load i8* %56, align 1, !dbg !81           ; [#uses=1 type=i8] [debug line = 37:4]
  %58 = zext i8 %57 to i32, !dbg !81              ; [#uses=1 type=i32] [debug line = 37:4]
  %59 = load i32* %j, align 4, !dbg !81           ; [#uses=1 type=i32] [debug line = 37:4]
  %60 = sext i32 %59 to i64, !dbg !81             ; [#uses=1 type=i64] [debug line = 37:4]
  %61 = load i32* %i, align 4, !dbg !81           ; [#uses=1 type=i32] [debug line = 37:4]
  %62 = sext i32 %61 to i64, !dbg !81             ; [#uses=1 type=i64] [debug line = 37:4]
  %63 = getelementptr inbounds [3 x [3 x i8]]* @_ZZ14sobel_operatoriiPA1920_hE4y_op, i32 0, i64 %62, !dbg !81 ; [#uses=1 type=[3 x i8]*] [debug line = 37:4]
  %64 = getelementptr inbounds [3 x i8]* %63, i32 0, i64 %60, !dbg !81 ; [#uses=1 type=i8*] [debug line = 37:4]
  %65 = load i8* %64, align 1, !dbg !81           ; [#uses=1 type=i8] [debug line = 37:4]
  %66 = sext i8 %65 to i32, !dbg !81              ; [#uses=1 type=i32] [debug line = 37:4]
  %67 = mul nsw i32 %58, %66, !dbg !81            ; [#uses=1 type=i32] [debug line = 37:4]
  %68 = add nsw i32 %42, %67, !dbg !81            ; [#uses=1 type=i32] [debug line = 37:4]
  store i32 %68, i32* %y_weight, align 4, !dbg !81 ; [debug line = 37:4]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([7 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !82 ; [debug line = 38:3]
  br label %69, !dbg !82                          ; [debug line = 38:3]

; <label>:69                                      ; preds = %14
  %70 = load i32* %i, align 4, !dbg !83           ; [#uses=1 type=i32] [debug line = 32:33]
  %71 = add nsw i32 %70, 1, !dbg !83              ; [#uses=1 type=i32] [debug line = 32:33]
  store i32 %71, i32* %i, align 4, !dbg !83       ; [debug line = 32:33]
  br label %11, !dbg !83                          ; [debug line = 32:33]

; <label>:72                                      ; preds = %11
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([7 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !84 ; [debug line = 39:2]
  br label %73, !dbg !84                          ; [debug line = 39:2]

; <label>:73                                      ; preds = %72
  %74 = load i32* %j, align 4, !dbg !85           ; [#uses=1 type=i32] [debug line = 31:32]
  %75 = add nsw i32 %74, 1, !dbg !85              ; [#uses=1 type=i32] [debug line = 31:32]
  store i32 %75, i32* %j, align 4, !dbg !85       ; [debug line = 31:32]
  br label %6, !dbg !85                           ; [debug line = 31:32]

; <label>:76                                      ; preds = %6
  %77 = load i32* %x_weight, align 4, !dbg !86    ; [#uses=1 type=i32] [debug line = 41:2]
  %78 = icmp sgt i32 %77, 0, !dbg !86             ; [#uses=1 type=i1] [debug line = 41:2]
  br i1 %78, label %79, label %81, !dbg !86       ; [debug line = 41:2]

; <label>:79                                      ; preds = %76
  %80 = load i32* %x_weight, align 4, !dbg !86    ; [#uses=1 type=i32] [debug line = 41:2]
  br label %84, !dbg !86                          ; [debug line = 41:2]

; <label>:81                                      ; preds = %76
  %82 = load i32* %x_weight, align 4, !dbg !86    ; [#uses=1 type=i32] [debug line = 41:2]
  %83 = sub nsw i32 0, %82, !dbg !86              ; [#uses=1 type=i32] [debug line = 41:2]
  br label %84, !dbg !86                          ; [debug line = 41:2]

; <label>:84                                      ; preds = %81, %79
  %85 = phi i32 [ %80, %79 ], [ %83, %81 ], !dbg !86 ; [#uses=1 type=i32] [debug line = 41:2]
  %86 = load i32* %y_weight, align 4, !dbg !86    ; [#uses=1 type=i32] [debug line = 41:2]
  %87 = icmp sgt i32 %86, 0, !dbg !86             ; [#uses=1 type=i1] [debug line = 41:2]
  br i1 %87, label %88, label %90, !dbg !86       ; [debug line = 41:2]

; <label>:88                                      ; preds = %84
  %89 = load i32* %y_weight, align 4, !dbg !86    ; [#uses=1 type=i32] [debug line = 41:2]
  br label %93, !dbg !86                          ; [debug line = 41:2]

; <label>:90                                      ; preds = %84
  %91 = load i32* %y_weight, align 4, !dbg !86    ; [#uses=1 type=i32] [debug line = 41:2]
  %92 = sub nsw i32 0, %91, !dbg !86              ; [#uses=1 type=i32] [debug line = 41:2]
  br label %93, !dbg !86                          ; [debug line = 41:2]

; <label>:93                                      ; preds = %90, %88
  %94 = phi i32 [ %89, %88 ], [ %92, %90 ], !dbg !86 ; [#uses=1 type=i32] [debug line = 41:2]
  %95 = add nsw i32 %85, %94, !dbg !86            ; [#uses=1 type=i32] [debug line = 41:2]
  store i32 %95, i32* %edge_weight, align 4, !dbg !86 ; [debug line = 41:2]
  %96 = load i32* %edge_weight, align 4, !dbg !87 ; [#uses=1 type=i32] [debug line = 43:2]
  %97 = trunc i32 %96 to i8, !dbg !87             ; [#uses=1 type=i8] [debug line = 43:2]
  %98 = zext i8 %97 to i32, !dbg !87              ; [#uses=1 type=i32] [debug line = 43:2]
  %99 = sub nsw i32 255, %98, !dbg !87            ; [#uses=1 type=i32] [debug line = 43:2]
  %100 = trunc i32 %99 to i8, !dbg !87            ; [#uses=1 type=i8] [debug line = 43:2]
  store i8 %100, i8* %edge_val, align 1, !dbg !87 ; [debug line = 43:2]
  %101 = load i8* %edge_val, align 1, !dbg !88    ; [#uses=1 type=i8] [debug line = 46:2]
  %102 = zext i8 %101 to i32, !dbg !88            ; [#uses=1 type=i32] [debug line = 46:2]
  %103 = icmp sgt i32 %102, 200, !dbg !88         ; [#uses=1 type=i1] [debug line = 46:2]
  br i1 %103, label %104, label %105, !dbg !88    ; [debug line = 46:2]

; <label>:104                                     ; preds = %93
  store i8 -1, i8* %edge_val, align 1, !dbg !89   ; [debug line = 47:3]
  br label %111, !dbg !89                         ; [debug line = 47:3]

; <label>:105                                     ; preds = %93
  %106 = load i8* %edge_val, align 1, !dbg !90    ; [#uses=1 type=i8] [debug line = 48:7]
  %107 = zext i8 %106 to i32, !dbg !90            ; [#uses=1 type=i32] [debug line = 48:7]
  %108 = icmp slt i32 %107, 100, !dbg !90         ; [#uses=1 type=i1] [debug line = 48:7]
  br i1 %108, label %109, label %110, !dbg !90    ; [debug line = 48:7]

; <label>:109                                     ; preds = %105
  store i8 0, i8* %edge_val, align 1, !dbg !91    ; [debug line = 49:3]
  br label %110, !dbg !91                         ; [debug line = 49:3]

; <label>:110                                     ; preds = %109, %105
  br label %111

; <label>:111                                     ; preds = %110, %104
  %112 = load i8* %edge_val, align 1, !dbg !92    ; [#uses=1 type=i8] [debug line = 51:2]
  ret i8 %112, !dbg !92                           ; [debug line = 51:2]
}

; [#uses=19]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=3]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

; [#uses=1]
declare void @_ssdm_InlineSelf(...) nounwind

; [#uses=2]
declare void @_ssdm_SpecConstant(...) nounwind

; [#uses=7]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=7]
declare void @_ssdm_RegionBegin(...) nounwind

; [#uses=7]
declare void @_ssdm_RegionEnd(...) nounwind

; [#uses=0]
define void @_Z12sobel_filterPhPj(i8* %inter_pix, i32* %out_pix) nounwind uwtable {
  %1 = alloca i8*, align 8                        ; [#uses=5 type=i8**]
  %2 = alloca i32*, align 8                       ; [#uses=4 type=i32**]
  %cache = alloca [4 x [1920 x i8]], align 16     ; [#uses=4 type=[4 x [1920 x i8]]*]
  %val = alloca i8, align 1                       ; [#uses=3 type=i8*]
  %fourWide = alloca %union.OneToFourPixels, align 4 ; [#uses=2 type=%union.OneToFourPixels*]
  %i = alloca i32, align 4                        ; [#uses=6 type=i32*]
  %j = alloca i32, align 4                        ; [#uses=6 type=i32*]
  %i1 = alloca i32, align 4                       ; [#uses=10 type=i32*]
  %j2 = alloca i32, align 4                       ; [#uses=10 type=i32*]
  %k = alloca i32, align 4                        ; [#uses=5 type=i32*]
  store i8* %inter_pix, i8** %1, align 8
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !93), !dbg !94 ; [debug line = 55:27] [debug variable = inter_pix]
  store i32* %out_pix, i32** %2, align 8
  call void @llvm.dbg.declare(metadata !{i32** %2}, metadata !95), !dbg !96 ; [debug line = 55:60] [debug variable = out_pix]
  %3 = load i32** %2, align 8, !dbg !97           ; [#uses=1 type=i32*] [debug line = 56:2]
  call void (...)* @_ssdm_SpecArrayDimSize(i32* %3, i32 2073600) nounwind, !dbg !97 ; [debug line = 56:2]
  %4 = load i8** %1, align 8, !dbg !99            ; [#uses=1 type=i8*] [debug line = 56:46]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %4, i32 2073600) nounwind, !dbg !99 ; [debug line = 56:46]
  %5 = load i8** %1, align 8, !dbg !100           ; [#uses=1 type=i8*] [debug line = 57:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %5, i8* getelementptr inbounds ([6 x i8]* @.str3, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([6 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str5, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 16, i32 16, i32 16, i32 16, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !100 ; [debug line = 57:1]
  %6 = load i32** %2, align 8, !dbg !101          ; [#uses=1 type=i32*] [debug line = 58:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %6, i8* getelementptr inbounds ([6 x i8]* @.str3, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([6 x i8]* @.str6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str5, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 16, i32 16, i32 16, i32 16, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !101 ; [debug line = 58:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, i8* getelementptr inbounds ([10 x i8]* @.str7, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !102 ; [debug line = 59:1]
  call void @llvm.dbg.declare(metadata !{[4 x [1920 x i8]]* %cache}, metadata !103), !dbg !107 ; [debug line = 62:10] [debug variable = cache]
  %7 = getelementptr inbounds [4 x [1920 x i8]]* %cache, i32 0, i32 0, !dbg !108 ; [#uses=1 type=[1920 x i8]*] [debug line = 63:1]
  call void (...)* @_ssdm_SpecArrayPartition([1920 x i8]* %7, i32 1, i8* getelementptr inbounds ([9 x i8]* @.str8, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !108 ; [debug line = 63:1]
  call void @llvm.dbg.declare(metadata !{i8* %val}, metadata !109), !dbg !110 ; [debug line = 64:10] [debug variable = val]
  call void @llvm.dbg.declare(metadata !{%union.OneToFourPixels* %fourWide}, metadata !111), !dbg !123 ; [debug line = 65:18] [debug variable = fourWide]
  br label %8, !dbg !124                          ; [debug line = 65:26]

; <label>:8                                       ; preds = %0
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !125), !dbg !127 ; [debug line = 67:35] [debug variable = i]
  store i32 0, i32* %i, align 4, !dbg !128        ; [debug line = 67:40]
  br label %9, !dbg !128                          ; [debug line = 67:40]

; <label>:9                                       ; preds = %36, %8
  %10 = load i32* %i, align 4, !dbg !128          ; [#uses=1 type=i32] [debug line = 67:40]
  %11 = icmp ult i32 %10, 2, !dbg !128            ; [#uses=1 type=i1] [debug line = 67:40]
  br i1 %11, label %12, label %39, !dbg !128      ; [debug line = 67:40]

; <label>:12                                      ; preds = %9
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([14 x i8]* @.str9, i32 0, i32 0)) nounwind, !dbg !129 ; [debug line = 67:55]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([14 x i8]* @.str9, i32 0, i32 0)) nounwind, !dbg !129 ; [debug line = 67:55]
  br label %13, !dbg !129                         ; [debug line = 67:55]

; <label>:13                                      ; preds = %12
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !131), !dbg !133 ; [debug line = 68:36] [debug variable = j]
  store i32 0, i32* %j, align 4, !dbg !134        ; [debug line = 68:41]
  br label %14, !dbg !134                         ; [debug line = 68:41]

; <label>:14                                      ; preds = %32, %13
  %15 = load i32* %j, align 4, !dbg !134          ; [#uses=1 type=i32] [debug line = 68:41]
  %16 = icmp ult i32 %15, 1920, !dbg !134         ; [#uses=1 type=i1] [debug line = 68:41]
  br i1 %16, label %17, label %35, !dbg !134      ; [debug line = 68:41]

; <label>:17                                      ; preds = %14
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([14 x i8]* @.str10, i32 0, i32 0)) nounwind, !dbg !135 ; [debug line = 68:59]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([14 x i8]* @.str10, i32 0, i32 0)) nounwind, !dbg !135 ; [debug line = 68:59]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !137 ; [debug line = 69:1]
  call void (...)* @_ssdm_SpecLoopFlatten(i32 1, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !138 ; [debug line = 70:1]
  %18 = load i32* %i, align 4, !dbg !139          ; [#uses=1 type=i32] [debug line = 71:2]
  %19 = mul i32 %18, 1920, !dbg !139              ; [#uses=1 type=i32] [debug line = 71:2]
  %20 = load i32* %j, align 4, !dbg !139          ; [#uses=1 type=i32] [debug line = 71:2]
  %21 = add i32 %19, %20, !dbg !139               ; [#uses=1 type=i32] [debug line = 71:2]
  %22 = zext i32 %21 to i64, !dbg !139            ; [#uses=1 type=i64] [debug line = 71:2]
  %23 = load i8** %1, align 8, !dbg !139          ; [#uses=1 type=i8*] [debug line = 71:2]
  %24 = getelementptr inbounds i8* %23, i64 %22, !dbg !139 ; [#uses=1 type=i8*] [debug line = 71:2]
  %25 = load i8* %24, align 1, !dbg !139          ; [#uses=1 type=i8] [debug line = 71:2]
  %26 = load i32* %j, align 4, !dbg !139          ; [#uses=1 type=i32] [debug line = 71:2]
  %27 = zext i32 %26 to i64, !dbg !139            ; [#uses=1 type=i64] [debug line = 71:2]
  %28 = load i32* %i, align 4, !dbg !139          ; [#uses=1 type=i32] [debug line = 71:2]
  %29 = zext i32 %28 to i64, !dbg !139            ; [#uses=1 type=i64] [debug line = 71:2]
  %30 = getelementptr inbounds [4 x [1920 x i8]]* %cache, i32 0, i64 %29, !dbg !139 ; [#uses=1 type=[1920 x i8]*] [debug line = 71:2]
  %31 = getelementptr inbounds [1920 x i8]* %30, i32 0, i64 %27, !dbg !139 ; [#uses=1 type=i8*] [debug line = 71:2]
  store i8 %25, i8* %31, align 1, !dbg !139       ; [debug line = 71:2]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([14 x i8]* @.str10, i32 0, i32 0)) nounwind, !dbg !140 ; [debug line = 72:3]
  br label %32, !dbg !140                         ; [debug line = 72:3]

; <label>:32                                      ; preds = %17
  %33 = load i32* %j, align 4, !dbg !141          ; [#uses=1 type=i32] [debug line = 68:53]
  %34 = add i32 %33, 1, !dbg !141                 ; [#uses=1 type=i32] [debug line = 68:53]
  store i32 %34, i32* %j, align 4, !dbg !141      ; [debug line = 68:53]
  br label %14, !dbg !141                         ; [debug line = 68:53]

; <label>:35                                      ; preds = %14
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([14 x i8]* @.str9, i32 0, i32 0)) nounwind, !dbg !142 ; [debug line = 73:2]
  br label %36, !dbg !142                         ; [debug line = 73:2]

; <label>:36                                      ; preds = %35
  %37 = load i32* %i, align 4, !dbg !143          ; [#uses=1 type=i32] [debug line = 67:49]
  %38 = add i32 %37, 1, !dbg !143                 ; [#uses=1 type=i32] [debug line = 67:49]
  store i32 %38, i32* %i, align 4, !dbg !143      ; [debug line = 67:49]
  br label %9, !dbg !143                          ; [debug line = 67:49]

; <label>:39                                      ; preds = %9
  br label %40, !dbg !144                         ; [debug line = 73:2]

; <label>:40                                      ; preds = %39
  call void @llvm.dbg.declare(metadata !{i32* %i1}, metadata !145), !dbg !147 ; [debug line = 76:33] [debug variable = i]
  store i32 0, i32* %i1, align 4, !dbg !148       ; [debug line = 76:38]
  br label %41, !dbg !148                         ; [debug line = 76:38]

; <label>:41                                      ; preds = %113, %40
  %42 = load i32* %i1, align 4, !dbg !148         ; [#uses=1 type=i32] [debug line = 76:38]
  %43 = icmp ult i32 %42, 1080, !dbg !148         ; [#uses=1 type=i1] [debug line = 76:38]
  br i1 %43, label %44, label %116, !dbg !148     ; [debug line = 76:38]

; <label>:44                                      ; preds = %41
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([11 x i8]* @.str11, i32 0, i32 0)) nounwind, !dbg !149 ; [debug line = 76:56]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([11 x i8]* @.str11, i32 0, i32 0)) nounwind, !dbg !149 ; [debug line = 76:56]
  br label %45, !dbg !149                         ; [debug line = 76:56]

; <label>:45                                      ; preds = %44
  call void @llvm.dbg.declare(metadata !{i32* %j2}, metadata !151), !dbg !153 ; [debug line = 77:34] [debug variable = j]
  store i32 0, i32* %j2, align 4, !dbg !154       ; [debug line = 77:39]
  br label %46, !dbg !154                         ; [debug line = 77:39]

; <label>:46                                      ; preds = %109, %45
  %47 = load i32* %j2, align 4, !dbg !154         ; [#uses=1 type=i32] [debug line = 77:39]
  %48 = icmp ult i32 %47, 1920, !dbg !154         ; [#uses=1 type=i1] [debug line = 77:39]
  br i1 %48, label %49, label %112, !dbg !154     ; [debug line = 77:39]

; <label>:49                                      ; preds = %46
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([11 x i8]* @.str12, i32 0, i32 0)) nounwind, !dbg !155 ; [debug line = 77:57]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([11 x i8]* @.str12, i32 0, i32 0)) nounwind, !dbg !155 ; [debug line = 77:57]
  call void (...)* @_ssdm_op_SpecPipeline(i32 2, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !157 ; [debug line = 78:1]
  call void (...)* @_ssdm_SpecLoopFlatten(i32 1, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !158 ; [debug line = 79:1]
  %50 = load i32* %j2, align 4, !dbg !159         ; [#uses=1 type=i32] [debug line = 81:2]
  %51 = icmp eq i32 %50, 0, !dbg !159             ; [#uses=1 type=i1] [debug line = 81:2]
  br i1 %51, label %61, label %52, !dbg !159      ; [debug line = 81:2]

; <label>:52                                      ; preds = %49
  %53 = load i32* %j2, align 4, !dbg !159         ; [#uses=1 type=i32] [debug line = 81:2]
  %54 = icmp eq i32 %53, 1919, !dbg !159          ; [#uses=1 type=i1] [debug line = 81:2]
  br i1 %54, label %61, label %55, !dbg !159      ; [debug line = 81:2]

; <label>:55                                      ; preds = %52
  %56 = load i32* %i1, align 4, !dbg !159         ; [#uses=1 type=i32] [debug line = 81:2]
  %57 = icmp eq i32 %56, 0, !dbg !159             ; [#uses=1 type=i1] [debug line = 81:2]
  br i1 %57, label %61, label %58, !dbg !159      ; [debug line = 81:2]

; <label>:58                                      ; preds = %55
  %59 = load i32* %i1, align 4, !dbg !159         ; [#uses=1 type=i32] [debug line = 81:2]
  %60 = icmp eq i32 %59, 1079, !dbg !159          ; [#uses=1 type=i1] [debug line = 81:2]
  br i1 %60, label %61, label %62, !dbg !159      ; [debug line = 81:2]

; <label>:61                                      ; preds = %58, %55, %52, %49
  store i8 0, i8* %val, align 1, !dbg !160        ; [debug line = 82:6]
  br label %67, !dbg !162                         ; [debug line = 83:5]

; <label>:62                                      ; preds = %58
  %63 = load i32* %i1, align 4, !dbg !163         ; [#uses=1 type=i32] [debug line = 85:12]
  %64 = load i32* %j2, align 4, !dbg !163         ; [#uses=1 type=i32] [debug line = 85:12]
  %65 = getelementptr inbounds [4 x [1920 x i8]]* %cache, i32 0, i32 0, !dbg !163 ; [#uses=1 type=[1920 x i8]*] [debug line = 85:12]
  %66 = call zeroext i8 @_Z14sobel_operatoriiPA1920_h(i32 %63, i32 %64, [1920 x i8]* %65), !dbg !163 ; [#uses=1 type=i8] [debug line = 85:12]
  store i8 %66, i8* %val, align 1, !dbg !163      ; [debug line = 85:12]
  br label %67

; <label>:67                                      ; preds = %62, %61
  br label %68

; <label>:68                                      ; preds = %67
  call void @llvm.dbg.declare(metadata !{i32* %k}, metadata !165), !dbg !167 ; [debug line = 88:22] [debug variable = k]
  store i32 0, i32* %k, align 4, !dbg !168        ; [debug line = 88:27]
  br label %69, !dbg !168                         ; [debug line = 88:27]

; <label>:69                                      ; preds = %78, %68
  %70 = load i32* %k, align 4, !dbg !168          ; [#uses=1 type=i32] [debug line = 88:27]
  %71 = icmp slt i32 %70, 4, !dbg !168            ; [#uses=1 type=i1] [debug line = 88:27]
  br i1 %71, label %72, label %81, !dbg !168      ; [debug line = 88:27]

; <label>:72                                      ; preds = %69
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([7 x i8]* @.str13, i32 0, i32 0)) nounwind, !dbg !169 ; [debug line = 89:6]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([7 x i8]* @.str13, i32 0, i32 0)) nounwind, !dbg !169 ; [debug line = 89:6]
  %73 = load i8* %val, align 1, !dbg !169         ; [#uses=1 type=i8] [debug line = 89:6]
  %74 = load i32* %k, align 4, !dbg !169          ; [#uses=1 type=i32] [debug line = 89:6]
  %75 = sext i32 %74 to i64, !dbg !169            ; [#uses=1 type=i64] [debug line = 89:6]
  %76 = bitcast %union.OneToFourPixels* %fourWide to [4 x i8]*, !dbg !169 ; [#uses=1 type=[4 x i8]*] [debug line = 89:6]
  %77 = getelementptr inbounds [4 x i8]* %76, i32 0, i64 %75, !dbg !169 ; [#uses=1 type=i8*] [debug line = 89:6]
  store i8 %73, i8* %77, align 1, !dbg !169       ; [debug line = 89:6]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([7 x i8]* @.str13, i32 0, i32 0)) nounwind, !dbg !171 ; [debug line = 89:24]
  br label %78, !dbg !171                         ; [debug line = 89:24]

; <label>:78                                      ; preds = %72
  %79 = load i32* %k, align 4, !dbg !172          ; [#uses=1 type=i32] [debug line = 88:36]
  %80 = add nsw i32 %79, 1, !dbg !172             ; [#uses=1 type=i32] [debug line = 88:36]
  store i32 %80, i32* %k, align 4, !dbg !172      ; [debug line = 88:36]
  br label %69, !dbg !172                         ; [debug line = 88:36]

; <label>:81                                      ; preds = %69
  %82 = bitcast %union.OneToFourPixels* %fourWide to i32*, !dbg !173 ; [#uses=1 type=i32*] [debug line = 90:5]
  %83 = load i32* %82, align 4, !dbg !173         ; [#uses=1 type=i32] [debug line = 90:5]
  %84 = load i32* %i1, align 4, !dbg !173         ; [#uses=1 type=i32] [debug line = 90:5]
  %85 = mul i32 %84, 1920, !dbg !173              ; [#uses=1 type=i32] [debug line = 90:5]
  %86 = load i32* %j2, align 4, !dbg !173         ; [#uses=1 type=i32] [debug line = 90:5]
  %87 = add i32 %85, %86, !dbg !173               ; [#uses=1 type=i32] [debug line = 90:5]
  %88 = zext i32 %87 to i64, !dbg !173            ; [#uses=1 type=i64] [debug line = 90:5]
  %89 = load i32** %2, align 8, !dbg !173         ; [#uses=1 type=i32*] [debug line = 90:5]
  %90 = getelementptr inbounds i32* %89, i64 %88, !dbg !173 ; [#uses=1 type=i32*] [debug line = 90:5]
  store i32 %83, i32* %90, align 4, !dbg !173     ; [debug line = 90:5]
  %91 = load i32* %i1, align 4, !dbg !174         ; [#uses=1 type=i32] [debug line = 92:5]
  %92 = add i32 %91, 2, !dbg !174                 ; [#uses=1 type=i32] [debug line = 92:5]
  %93 = urem i32 %92, 1080, !dbg !174             ; [#uses=1 type=i32] [debug line = 92:5]
  %94 = mul i32 %93, 1920, !dbg !174              ; [#uses=1 type=i32] [debug line = 92:5]
  %95 = load i32* %j2, align 4, !dbg !174         ; [#uses=1 type=i32] [debug line = 92:5]
  %96 = add i32 %94, %95, !dbg !174               ; [#uses=1 type=i32] [debug line = 92:5]
  %97 = zext i32 %96 to i64, !dbg !174            ; [#uses=1 type=i64] [debug line = 92:5]
  %98 = load i8** %1, align 8, !dbg !174          ; [#uses=1 type=i8*] [debug line = 92:5]
  %99 = getelementptr inbounds i8* %98, i64 %97, !dbg !174 ; [#uses=1 type=i8*] [debug line = 92:5]
  %100 = load i8* %99, align 1, !dbg !174         ; [#uses=1 type=i8] [debug line = 92:5]
  %101 = load i32* %j2, align 4, !dbg !174        ; [#uses=1 type=i32] [debug line = 92:5]
  %102 = zext i32 %101 to i64, !dbg !174          ; [#uses=1 type=i64] [debug line = 92:5]
  %103 = load i32* %i1, align 4, !dbg !174        ; [#uses=1 type=i32] [debug line = 92:5]
  %104 = add i32 %103, 2, !dbg !174               ; [#uses=1 type=i32] [debug line = 92:5]
  %105 = urem i32 %104, 4, !dbg !174              ; [#uses=1 type=i32] [debug line = 92:5]
  %106 = zext i32 %105 to i64, !dbg !174          ; [#uses=1 type=i64] [debug line = 92:5]
  %107 = getelementptr inbounds [4 x [1920 x i8]]* %cache, i32 0, i64 %106, !dbg !174 ; [#uses=1 type=[1920 x i8]*] [debug line = 92:5]
  %108 = getelementptr inbounds [1920 x i8]* %107, i32 0, i64 %102, !dbg !174 ; [#uses=1 type=i8*] [debug line = 92:5]
  store i8 %100, i8* %108, align 1, !dbg !174     ; [debug line = 92:5]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([11 x i8]* @.str12, i32 0, i32 0)) nounwind, !dbg !175 ; [debug line = 94:3]
  br label %109, !dbg !175                        ; [debug line = 94:3]

; <label>:109                                     ; preds = %81
  %110 = load i32* %j2, align 4, !dbg !176        ; [#uses=1 type=i32] [debug line = 77:51]
  %111 = add i32 %110, 1, !dbg !176               ; [#uses=1 type=i32] [debug line = 77:51]
  store i32 %111, i32* %j2, align 4, !dbg !176    ; [debug line = 77:51]
  br label %46, !dbg !176                         ; [debug line = 77:51]

; <label>:112                                     ; preds = %46
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([11 x i8]* @.str11, i32 0, i32 0)) nounwind, !dbg !177 ; [debug line = 95:2]
  br label %113, !dbg !177                        ; [debug line = 95:2]

; <label>:113                                     ; preds = %112
  %114 = load i32* %i1, align 4, !dbg !178        ; [#uses=1 type=i32] [debug line = 76:50]
  %115 = add i32 %114, 1, !dbg !178               ; [#uses=1 type=i32] [debug line = 76:50]
  store i32 %115, i32* %i1, align 4, !dbg !178    ; [debug line = 76:50]
  br label %41, !dbg !178                         ; [debug line = 76:50]

; <label>:116                                     ; preds = %41
  ret void, !dbg !179                             ; [debug line = 98:1]
}

; [#uses=3]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=1]
declare void @_ssdm_SpecArrayPartition(...) nounwind

; [#uses=2]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=2]
declare void @_ssdm_SpecLoopFlatten(...) nounwind

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!34, !41}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"X:/Bureau/HDMI_3610/3610_4/1490679_1771119/sobellab4/solution1/.autopilot/db/Sobel.pragma.2.cpp", metadata !"X:\5CBureau\5CHDMI_3610\5C3610_4\5C1490679_1771119", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !25} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !19}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"sobel_operator", metadata !"sobel_operator", metadata !"_Z14sobel_operatoriiPA1920_h", metadata !6, i32 13, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8 (i32, i32, [1920 x i8]*)* @_Z14sobel_operatoriiPA1920_h, null, null, metadata !17, i32 14} ; [ DW_TAG_subprogram ]
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
!19 = metadata !{i32 786478, i32 0, metadata !6, metadata !"sobel_filter", metadata !"sobel_filter", metadata !"_Z12sobel_filterPhPj", metadata !6, i32 55, metadata !20, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i32*)* @_Z12sobel_filterPhPj, null, null, metadata !17, i32 56} ; [ DW_TAG_subprogram ]
!20 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !21, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!21 = metadata !{null, metadata !22, metadata !23}
!22 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ]
!23 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !24} ; [ DW_TAG_pointer_type ]
!24 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!25 = metadata !{metadata !26}
!26 = metadata !{metadata !27, metadata !33}
!27 = metadata !{i32 786484, i32 0, metadata !5, metadata !"x_op", metadata !"x_op", metadata !"", metadata !6, i32 21, metadata !28, i32 1, i32 1, [3 x [3 x i8]]* @_ZZ14sobel_operatoriiPA1920_hE4x_op} ; [ DW_TAG_variable ]
!28 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 72, i64 8, i32 0, i32 0, metadata !29, metadata !31, i32 0, i32 0} ; [ DW_TAG_array_type ]
!29 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_const_type ]
!30 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!31 = metadata !{metadata !32, metadata !32}
!32 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ]
!33 = metadata !{i32 786484, i32 0, metadata !5, metadata !"y_op", metadata !"y_op", metadata !"", metadata !6, i32 25, metadata !28, i32 1, i32 1, [3 x [3 x i8]]* @_ZZ14sobel_operatoriiPA1920_hE4y_op} ; [ DW_TAG_variable ]
!34 = metadata !{i8 (i32, i32, [1920 x i8]*)* @_Z14sobel_operatoriiPA1920_h, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40}
!35 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 1}
!36 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!37 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int", metadata !"uint8_t [1920]*"}
!38 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const", metadata !"const", metadata !""}
!39 = metadata !{metadata !"kernel_arg_name", metadata !"rows", metadata !"cols", metadata !"image"}
!40 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!41 = metadata !{void (i8*, i32*)* @_Z12sobel_filterPhPj, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !40}
!42 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!43 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!44 = metadata !{metadata !"kernel_arg_type", metadata !"uint8_t*", metadata !"uint*"}
!45 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!46 = metadata !{metadata !"kernel_arg_name", metadata !"inter_pix", metadata !"out_pix"}
!47 = metadata !{i32 786689, metadata !5, metadata !"rows", metadata !6, i32 16777229, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!48 = metadata !{i32 13, i32 34, metadata !5, null}
!49 = metadata !{i32 786689, metadata !5, metadata !"cols", metadata !6, i32 33554445, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!50 = metadata !{i32 13, i32 50, metadata !5, null}
!51 = metadata !{i32 786689, metadata !5, metadata !"image", metadata !6, i32 50331661, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!52 = metadata !{i32 13, i32 64, metadata !5, null}
!53 = metadata !{i32 14, i32 2, metadata !54, null}
!54 = metadata !{i32 786443, metadata !5, i32 14, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!55 = metadata !{i32 15, i32 1, metadata !54, null}
!56 = metadata !{i32 786688, metadata !54, metadata !"edge_weight", metadata !6, i32 18, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!57 = metadata !{i32 18, i32 11, metadata !54, null}
!58 = metadata !{i32 786688, metadata !54, metadata !"edge_val", metadata !6, i32 19, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!59 = metadata !{i32 19, i32 10, metadata !54, null}
!60 = metadata !{i32 24, i32 1, metadata !54, null}
!61 = metadata !{i32 28, i32 1, metadata !54, null}
!62 = metadata !{i32 786688, metadata !54, metadata !"x_weight", metadata !6, i32 29, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!63 = metadata !{i32 29, i32 6, metadata !54, null}
!64 = metadata !{i32 29, i32 18, metadata !54, null}
!65 = metadata !{i32 786688, metadata !54, metadata !"y_weight", metadata !6, i32 30, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!66 = metadata !{i32 30, i32 6, metadata !54, null}
!67 = metadata !{i32 30, i32 18, metadata !54, null}
!68 = metadata !{i32 786688, metadata !69, metadata !"j", metadata !6, i32 31, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!69 = metadata !{i32 786443, metadata !54, i32 31, i32 10, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!70 = metadata !{i32 31, i32 18, metadata !69, null}
!71 = metadata !{i32 31, i32 23, metadata !69, null}
!72 = metadata !{i32 31, i32 38, metadata !73, null}
!73 = metadata !{i32 786443, metadata !69, i32 31, i32 37, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!74 = metadata !{i32 786688, metadata !75, metadata !"i", metadata !6, i32 32, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!75 = metadata !{i32 786443, metadata !73, i32 32, i32 11, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!76 = metadata !{i32 32, i32 19, metadata !75, null}
!77 = metadata !{i32 32, i32 24, metadata !75, null}
!78 = metadata !{i32 32, i32 39, metadata !79, null}
!79 = metadata !{i32 786443, metadata !75, i32 32, i32 38, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!80 = metadata !{i32 34, i32 4, metadata !79, null}
!81 = metadata !{i32 37, i32 4, metadata !79, null}
!82 = metadata !{i32 38, i32 3, metadata !79, null}
!83 = metadata !{i32 32, i32 33, metadata !75, null}
!84 = metadata !{i32 39, i32 2, metadata !73, null}
!85 = metadata !{i32 31, i32 32, metadata !69, null}
!86 = metadata !{i32 41, i32 2, metadata !54, null}
!87 = metadata !{i32 43, i32 2, metadata !54, null}
!88 = metadata !{i32 46, i32 2, metadata !54, null}
!89 = metadata !{i32 47, i32 3, metadata !54, null}
!90 = metadata !{i32 48, i32 7, metadata !54, null}
!91 = metadata !{i32 49, i32 3, metadata !54, null}
!92 = metadata !{i32 51, i32 2, metadata !54, null}
!93 = metadata !{i32 786689, metadata !19, metadata !"inter_pix", metadata !6, i32 16777271, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!94 = metadata !{i32 55, i32 27, metadata !19, null}
!95 = metadata !{i32 786689, metadata !19, metadata !"out_pix", metadata !6, i32 33554487, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!96 = metadata !{i32 55, i32 60, metadata !19, null}
!97 = metadata !{i32 56, i32 2, metadata !98, null}
!98 = metadata !{i32 786443, metadata !19, i32 56, i32 1, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!99 = metadata !{i32 56, i32 46, metadata !98, null}
!100 = metadata !{i32 57, i32 1, metadata !98, null}
!101 = metadata !{i32 58, i32 1, metadata !98, null}
!102 = metadata !{i32 59, i32 1, metadata !98, null}
!103 = metadata !{i32 786688, metadata !98, metadata !"cache", metadata !6, i32 62, metadata !104, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!104 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 61440, i64 8, i32 0, i32 0, metadata !9, metadata !105, i32 0, i32 0} ; [ DW_TAG_array_type ]
!105 = metadata !{metadata !106, metadata !16}
!106 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ]
!107 = metadata !{i32 62, i32 10, metadata !98, null}
!108 = metadata !{i32 63, i32 1, metadata !98, null}
!109 = metadata !{i32 786688, metadata !98, metadata !"val", metadata !6, i32 64, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!110 = metadata !{i32 64, i32 10, metadata !98, null}
!111 = metadata !{i32 786688, metadata !98, metadata !"fourWide", metadata !6, i32 65, metadata !112, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!112 = metadata !{i32 786454, null, metadata !"OneToFourPixels", metadata !6, i32 9, i64 0, i64 0, i64 0, i32 0, metadata !113} ; [ DW_TAG_typedef ]
!113 = metadata !{i32 786455, null, metadata !"", metadata !6, i32 6, i64 32, i64 32, i64 0, i32 0, null, metadata !114, i32 0, null} ; [ DW_TAG_union_type ]
!114 = metadata !{metadata !115, metadata !118, metadata !119}
!115 = metadata !{i32 786445, metadata !113, metadata !"pix", metadata !6, i32 7, i64 32, i64 8, i64 0, i32 0, metadata !116} ; [ DW_TAG_member ]
!116 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 32, i64 8, i32 0, i32 0, metadata !9, metadata !117, i32 0, i32 0} ; [ DW_TAG_array_type ]
!117 = metadata !{metadata !106}
!118 = metadata !{i32 786445, metadata !113, metadata !"full", metadata !6, i32 8, i64 32, i64 32, i64 0, i32 0, metadata !24} ; [ DW_TAG_member ]
!119 = metadata !{i32 786478, i32 0, metadata !113, metadata !"", metadata !"", metadata !"", metadata !6, i32 6, metadata !120, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !17, i32 6} ; [ DW_TAG_subprogram ]
!120 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !121, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!121 = metadata !{null, metadata !122}
!122 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !113} ; [ DW_TAG_pointer_type ]
!123 = metadata !{i32 65, i32 18, metadata !98, null}
!124 = metadata !{i32 65, i32 26, metadata !98, null}
!125 = metadata !{i32 786688, metadata !126, metadata !"i", metadata !6, i32 67, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!126 = metadata !{i32 786443, metadata !98, i32 67, i32 17, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!127 = metadata !{i32 67, i32 35, metadata !126, null}
!128 = metadata !{i32 67, i32 40, metadata !126, null}
!129 = metadata !{i32 67, i32 55, metadata !130, null}
!130 = metadata !{i32 786443, metadata !126, i32 67, i32 54, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!131 = metadata !{i32 786688, metadata !132, metadata !"j", metadata !6, i32 68, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!132 = metadata !{i32 786443, metadata !130, i32 68, i32 18, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!133 = metadata !{i32 68, i32 36, metadata !132, null}
!134 = metadata !{i32 68, i32 41, metadata !132, null}
!135 = metadata !{i32 68, i32 59, metadata !136, null}
!136 = metadata !{i32 786443, metadata !132, i32 68, i32 58, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!137 = metadata !{i32 69, i32 1, metadata !136, null}
!138 = metadata !{i32 70, i32 1, metadata !136, null}
!139 = metadata !{i32 71, i32 2, metadata !136, null}
!140 = metadata !{i32 72, i32 3, metadata !136, null}
!141 = metadata !{i32 68, i32 53, metadata !132, null}
!142 = metadata !{i32 73, i32 2, metadata !130, null}
!143 = metadata !{i32 67, i32 49, metadata !126, null}
!144 = metadata !{i32 73, i32 2, metadata !126, null}
!145 = metadata !{i32 786688, metadata !146, metadata !"i", metadata !6, i32 76, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!146 = metadata !{i32 786443, metadata !98, i32 76, i32 15, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!147 = metadata !{i32 76, i32 33, metadata !146, null}
!148 = metadata !{i32 76, i32 38, metadata !146, null}
!149 = metadata !{i32 76, i32 56, metadata !150, null}
!150 = metadata !{i32 786443, metadata !146, i32 76, i32 55, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!151 = metadata !{i32 786688, metadata !152, metadata !"j", metadata !6, i32 77, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!152 = metadata !{i32 786443, metadata !150, i32 77, i32 16, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!153 = metadata !{i32 77, i32 34, metadata !152, null}
!154 = metadata !{i32 77, i32 39, metadata !152, null}
!155 = metadata !{i32 77, i32 57, metadata !156, null}
!156 = metadata !{i32 786443, metadata !152, i32 77, i32 56, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!157 = metadata !{i32 78, i32 1, metadata !156, null}
!158 = metadata !{i32 79, i32 1, metadata !156, null}
!159 = metadata !{i32 81, i32 2, metadata !156, null}
!160 = metadata !{i32 82, i32 6, metadata !161, null}
!161 = metadata !{i32 786443, metadata !156, i32 81, i32 58, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!162 = metadata !{i32 83, i32 5, metadata !161, null}
!163 = metadata !{i32 85, i32 12, metadata !164, null}
!164 = metadata !{i32 786443, metadata !156, i32 84, i32 10, metadata !6, i32 15} ; [ DW_TAG_lexical_block ]
!165 = metadata !{i32 786688, metadata !166, metadata !"k", metadata !6, i32 88, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!166 = metadata !{i32 786443, metadata !156, i32 88, i32 13, metadata !6, i32 16} ; [ DW_TAG_lexical_block ]
!167 = metadata !{i32 88, i32 22, metadata !166, null}
!168 = metadata !{i32 88, i32 27, metadata !166, null}
!169 = metadata !{i32 89, i32 6, metadata !170, null}
!170 = metadata !{i32 786443, metadata !166, i32 89, i32 6, metadata !6, i32 17} ; [ DW_TAG_lexical_block ]
!171 = metadata !{i32 89, i32 24, metadata !170, null}
!172 = metadata !{i32 88, i32 36, metadata !166, null}
!173 = metadata !{i32 90, i32 5, metadata !156, null}
!174 = metadata !{i32 92, i32 5, metadata !156, null}
!175 = metadata !{i32 94, i32 3, metadata !156, null}
!176 = metadata !{i32 77, i32 51, metadata !152, null}
!177 = metadata !{i32 95, i32 2, metadata !150, null}
!178 = metadata !{i32 76, i32 50, metadata !146, null}
!179 = metadata !{i32 98, i32 1, metadata !98, null}
