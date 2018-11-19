; ModuleID = 'X:/Bureau/3610_4/1490679_1771119/sobellab4/solution1/.autopilot/db/a.o.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

%union.OneToFourPixels = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str1 = private unnamed_addr constant [4 x i8] c"IMG\00", align 1 ; [#uses=1 type=[4 x i8]*]
@.str2 = private unnamed_addr constant [7 x i8] c"OneTo4\00", align 1 ; [#uses=1 type=[7 x i8]*]

; [#uses=6]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=0]
define void @_Z12sobel_filterPhPj(i8* %inter_pix, i32* %out_pix) nounwind uwtable {
  %1 = alloca i8*, align 8                        ; [#uses=3 type=i8**]
  %2 = alloca i32*, align 8                       ; [#uses=3 type=i32**]
  %i = alloca i32, align 4                        ; [#uses=6 type=i32*]
  %val = alloca i8, align 1                       ; [#uses=2 type=i8*]
  %fourWide = alloca %union.OneToFourPixels, align 4 ; [#uses=2 type=%union.OneToFourPixels*]
  %j = alloca i32, align 4                        ; [#uses=5 type=i32*]
  store i8* %inter_pix, i8** %1, align 8
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !33), !dbg !34 ; [debug line = 31:27] [debug variable = inter_pix]
  store i32* %out_pix, i32** %2, align 8
  call void @llvm.dbg.declare(metadata !{i32** %2}, metadata !35), !dbg !36 ; [debug line = 31:60] [debug variable = out_pix]
  %3 = load i32** %2, align 8, !dbg !37           ; [#uses=1 type=i32*] [debug line = 32:2]
  call void (...)* @_ssdm_SpecArrayDimSize(i32* %3, i32 2073600) nounwind, !dbg !37 ; [debug line = 32:2]
  %4 = load i8** %1, align 8, !dbg !39            ; [#uses=1 type=i8*] [debug line = 32:46]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %4, i32 2073600) nounwind, !dbg !39 ; [debug line = 32:46]
  br label %5, !dbg !39                           ; [debug line = 32:46]

; <label>:5                                       ; preds = %0
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !40), !dbg !42 ; [debug line = 45:15] [debug variable = i]
  store i32 0, i32* %i, align 4, !dbg !43         ; [debug line = 45:20]
  br label %6, !dbg !43                           ; [debug line = 45:20]

; <label>:6                                       ; preds = %35, %5
  %7 = load i32* %i, align 4, !dbg !43            ; [#uses=1 type=i32] [debug line = 45:20]
  %8 = icmp slt i32 %7, 2073600, !dbg !43         ; [#uses=1 type=i1] [debug line = 45:20]
  br i1 %8, label %9, label %38, !dbg !43         ; [debug line = 45:20]

; <label>:9                                       ; preds = %6
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([4 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !44 ; [debug line = 45:45]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([4 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !44 ; [debug line = 45:45]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !46 ; [debug line = 46:1]
  call void @llvm.dbg.declare(metadata !{i8* %val}, metadata !47), !dbg !48 ; [debug line = 47:10] [debug variable = val]
  %10 = load i32* %i, align 4, !dbg !49           ; [#uses=1 type=i32] [debug line = 47:28]
  %11 = sext i32 %10 to i64, !dbg !49             ; [#uses=1 type=i64] [debug line = 47:28]
  %12 = load i8** %1, align 8, !dbg !49           ; [#uses=1 type=i8*] [debug line = 47:28]
  %13 = getelementptr inbounds i8* %12, i64 %11, !dbg !49 ; [#uses=1 type=i8*] [debug line = 47:28]
  %14 = load i8* %13, align 1, !dbg !49           ; [#uses=1 type=i8] [debug line = 47:28]
  store i8 %14, i8* %val, align 1, !dbg !49       ; [debug line = 47:28]
  call void @llvm.dbg.declare(metadata !{%union.OneToFourPixels* %fourWide}, metadata !50), !dbg !63 ; [debug line = 48:19] [debug variable = fourWide]
  br label %15, !dbg !64                          ; [debug line = 48:27]

; <label>:15                                      ; preds = %9
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !65), !dbg !67 ; [debug line = 49:18] [debug variable = j]
  store i32 0, i32* %j, align 4, !dbg !68         ; [debug line = 49:23]
  br label %16, !dbg !68                          ; [debug line = 49:23]

; <label>:16                                      ; preds = %25, %15
  %17 = load i32* %j, align 4, !dbg !68           ; [#uses=1 type=i32] [debug line = 49:23]
  %18 = icmp slt i32 %17, 4, !dbg !68             ; [#uses=1 type=i1] [debug line = 49:23]
  br i1 %18, label %19, label %28, !dbg !68       ; [debug line = 49:23]

; <label>:19                                      ; preds = %16
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([7 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !69 ; [debug line = 50:4]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([7 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !69 ; [debug line = 50:4]
  %20 = load i8* %val, align 1, !dbg !69          ; [#uses=1 type=i8] [debug line = 50:4]
  %21 = load i32* %j, align 4, !dbg !69           ; [#uses=1 type=i32] [debug line = 50:4]
  %22 = sext i32 %21 to i64, !dbg !69             ; [#uses=1 type=i64] [debug line = 50:4]
  %23 = bitcast %union.OneToFourPixels* %fourWide to [4 x i8]*, !dbg !69 ; [#uses=1 type=[4 x i8]*] [debug line = 50:4]
  %24 = getelementptr inbounds [4 x i8]* %23, i32 0, i64 %22, !dbg !69 ; [#uses=1 type=i8*] [debug line = 50:4]
  store i8 %20, i8* %24, align 1, !dbg !69        ; [debug line = 50:4]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([7 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !71 ; [debug line = 50:22]
  br label %25, !dbg !71                          ; [debug line = 50:22]

; <label>:25                                      ; preds = %19
  %26 = load i32* %j, align 4, !dbg !72           ; [#uses=1 type=i32] [debug line = 49:32]
  %27 = add nsw i32 %26, 1, !dbg !72              ; [#uses=1 type=i32] [debug line = 49:32]
  store i32 %27, i32* %j, align 4, !dbg !72       ; [debug line = 49:32]
  br label %16, !dbg !72                          ; [debug line = 49:32]

; <label>:28                                      ; preds = %16
  %29 = bitcast %union.OneToFourPixels* %fourWide to i32*, !dbg !73 ; [#uses=1 type=i32*] [debug line = 51:3]
  %30 = load i32* %29, align 4, !dbg !73          ; [#uses=1 type=i32] [debug line = 51:3]
  %31 = load i32* %i, align 4, !dbg !73           ; [#uses=1 type=i32] [debug line = 51:3]
  %32 = sext i32 %31 to i64, !dbg !73             ; [#uses=1 type=i64] [debug line = 51:3]
  %33 = load i32** %2, align 8, !dbg !73          ; [#uses=1 type=i32*] [debug line = 51:3]
  %34 = getelementptr inbounds i32* %33, i64 %32, !dbg !73 ; [#uses=1 type=i32*] [debug line = 51:3]
  store i32 %30, i32* %34, align 4, !dbg !73      ; [debug line = 51:3]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([4 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !74 ; [debug line = 52:2]
  br label %35, !dbg !74                          ; [debug line = 52:2]

; <label>:35                                      ; preds = %28
  %36 = load i32* %i, align 4, !dbg !75           ; [#uses=1 type=i32] [debug line = 45:39]
  %37 = add nsw i32 %36, 1, !dbg !75              ; [#uses=1 type=i32] [debug line = 45:39]
  store i32 %37, i32* %i, align 4, !dbg !75       ; [debug line = 45:39]
  br label %6, !dbg !75                           ; [debug line = 45:39]

; <label>:38                                      ; preds = %6
  ret void, !dbg !76                              ; [debug line = 53:1]
}

; [#uses=2]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

; [#uses=2]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=2]
declare void @_ssdm_RegionBegin(...) nounwind

; [#uses=1]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=2]
declare void @_ssdm_RegionEnd(...) nounwind

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!21, !28}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"X:/Bureau/3610_4/1490679_1771119/sobellab4/solution1/.autopilot/db/Sobel.pragma.2.cpp", metadata !"X:\5CBureau\5C3610_4\5C1490679_1771119", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !16}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"sobel_operator", metadata !"sobel_operator", metadata !"_Z14sobel_operatoriPh", metadata !6, i32 12, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !14, i32 13} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"SobelLab4/Sobel.cpp", metadata !"X:\5CBureau\5C3610_4\5C1490679_1771119", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{metadata !9, metadata !11, metadata !13}
!9 = metadata !{i32 786454, null, metadata !"uint8_t", metadata !6, i32 36, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ]
!10 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!11 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !12} ; [ DW_TAG_const_type ]
!12 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!13 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ]
!14 = metadata !{metadata !15}
!15 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!16 = metadata !{i32 786478, i32 0, metadata !6, metadata !"sobel_filter", metadata !"sobel_filter", metadata !"_Z12sobel_filterPhPj", metadata !6, i32 31, metadata !17, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i32*)* @_Z12sobel_filterPhPj, null, null, metadata !14, i32 32} ; [ DW_TAG_subprogram ]
!17 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !18, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!18 = metadata !{null, metadata !13, metadata !19}
!19 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ]
!20 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!21 = metadata !{null, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27}
!22 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 1}
!23 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!24 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"uint8_t*"}
!25 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const", metadata !""}
!26 = metadata !{metadata !"kernel_arg_name", metadata !"fullIndex", metadata !"image"}
!27 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!28 = metadata !{void (i8*, i32*)* @_Z12sobel_filterPhPj, metadata !29, metadata !23, metadata !30, metadata !31, metadata !32, metadata !27}
!29 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!30 = metadata !{metadata !"kernel_arg_type", metadata !"uint8_t*", metadata !"uint*"}
!31 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!32 = metadata !{metadata !"kernel_arg_name", metadata !"inter_pix", metadata !"out_pix"}
!33 = metadata !{i32 786689, metadata !16, metadata !"inter_pix", metadata !6, i32 16777247, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!34 = metadata !{i32 31, i32 27, metadata !16, null}
!35 = metadata !{i32 786689, metadata !16, metadata !"out_pix", metadata !6, i32 33554463, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!36 = metadata !{i32 31, i32 60, metadata !16, null}
!37 = metadata !{i32 32, i32 2, metadata !38, null}
!38 = metadata !{i32 786443, metadata !16, i32 32, i32 1, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!39 = metadata !{i32 32, i32 46, metadata !38, null}
!40 = metadata !{i32 786688, metadata !41, metadata !"i", metadata !6, i32 45, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!41 = metadata !{i32 786443, metadata !38, i32 45, i32 6, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!42 = metadata !{i32 45, i32 15, metadata !41, null}
!43 = metadata !{i32 45, i32 20, metadata !41, null}
!44 = metadata !{i32 45, i32 45, metadata !45, null}
!45 = metadata !{i32 786443, metadata !41, i32 45, i32 44, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!46 = metadata !{i32 46, i32 1, metadata !45, null}
!47 = metadata !{i32 786688, metadata !45, metadata !"val", metadata !6, i32 47, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!48 = metadata !{i32 47, i32 10, metadata !45, null}
!49 = metadata !{i32 47, i32 28, metadata !45, null}
!50 = metadata !{i32 786688, metadata !45, metadata !"fourWide", metadata !6, i32 48, metadata !51, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!51 = metadata !{i32 786454, null, metadata !"OneToFourPixels", metadata !6, i32 9, i64 0, i64 0, i64 0, i32 0, metadata !52} ; [ DW_TAG_typedef ]
!52 = metadata !{i32 786455, null, metadata !"", metadata !6, i32 6, i64 32, i64 32, i64 0, i32 0, null, metadata !53, i32 0, null} ; [ DW_TAG_union_type ]
!53 = metadata !{metadata !54, metadata !58, metadata !59}
!54 = metadata !{i32 786445, metadata !52, metadata !"pix", metadata !6, i32 7, i64 32, i64 8, i64 0, i32 0, metadata !55} ; [ DW_TAG_member ]
!55 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 32, i64 8, i32 0, i32 0, metadata !9, metadata !56, i32 0, i32 0} ; [ DW_TAG_array_type ]
!56 = metadata !{metadata !57}
!57 = metadata !{i32 786465, i64 0, i64 3}        ; [ DW_TAG_subrange_type ]
!58 = metadata !{i32 786445, metadata !52, metadata !"full", metadata !6, i32 8, i64 32, i64 32, i64 0, i32 0, metadata !20} ; [ DW_TAG_member ]
!59 = metadata !{i32 786478, i32 0, metadata !52, metadata !"", metadata !"", metadata !"", metadata !6, i32 6, metadata !60, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !14, i32 6} ; [ DW_TAG_subprogram ]
!60 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !61, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!61 = metadata !{null, metadata !62}
!62 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !52} ; [ DW_TAG_pointer_type ]
!63 = metadata !{i32 48, i32 19, metadata !45, null}
!64 = metadata !{i32 48, i32 27, metadata !45, null}
!65 = metadata !{i32 786688, metadata !66, metadata !"j", metadata !6, i32 49, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!66 = metadata !{i32 786443, metadata !45, i32 49, i32 9, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!67 = metadata !{i32 49, i32 18, metadata !66, null}
!68 = metadata !{i32 49, i32 23, metadata !66, null}
!69 = metadata !{i32 50, i32 4, metadata !70, null}
!70 = metadata !{i32 786443, metadata !66, i32 50, i32 4, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!71 = metadata !{i32 50, i32 22, metadata !70, null}
!72 = metadata !{i32 49, i32 32, metadata !66, null}
!73 = metadata !{i32 51, i32 3, metadata !45, null}
!74 = metadata !{i32 52, i32 2, metadata !45, null}
!75 = metadata !{i32 45, i32 39, metadata !41, null}
!76 = metadata !{i32 53, i32 1, metadata !38, null}
