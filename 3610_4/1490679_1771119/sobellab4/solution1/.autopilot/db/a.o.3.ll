; ModuleID = 'X:/Bureau/HDMI_3610/3610_4/1490679_1771119/sobellab4/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@sobel_filter_str = internal unnamed_addr constant [13 x i8] c"sobel_filter\00" ; [#uses=1 type=[13 x i8]*]
@mode3 = internal constant [10 x i8] c"s_axilite\00" ; [#uses=1 type=[10 x i8]*]
@mode = internal constant [10 x i8] c"s_axilite\00" ; [#uses=1 type=[10 x i8]*]
@bundle4 = internal constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@bundle = internal constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str9 = private unnamed_addr constant [14 x i8] c"FillCacheRows\00", align 1 ; [#uses=3 type=[14 x i8]*]
@p_str7 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]
@p_str6 = private unnamed_addr constant [6 x i8] c"gmem1\00", align 1 ; [#uses=1 type=[6 x i8]*]
@p_str5 = private unnamed_addr constant [6 x i8] c"slave\00", align 1 ; [#uses=4 type=[6 x i8]*]
@p_str4 = private unnamed_addr constant [6 x i8] c"gmem0\00", align 1 ; [#uses=1 type=[6 x i8]*]
@p_str3 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1 ; [#uses=2 type=[6 x i8]*]
@p_str12 = private unnamed_addr constant [11 x i8] c"FilterCols\00", align 1 ; [#uses=3 type=[11 x i8]*]
@p_str11 = private unnamed_addr constant [11 x i8] c"FilterRows\00", align 1 ; [#uses=3 type=[11 x i8]*]
@p_str10 = private unnamed_addr constant [14 x i8] c"FillCacheCols\00", align 1 ; [#uses=3 type=[14 x i8]*]
@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=24 type=[1 x i8]*]

; [#uses=0]
define void @sobel_filter(i8* %gmem0, i32* %gmem1, i32 %inter_pix, i32 %out_pix) {
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %gmem1), !map !23
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %gmem0), !map !29
  call void (...)* @_ssdm_op_SpecTopModule([13 x i8]* @sobel_filter_str) nounwind
  call void @llvm.dbg.value(metadata !{i32 %inter_pix}, i64 0, metadata !33), !dbg !48 ; [debug line = 95:27] [debug variable = inter_pix]
  call void @llvm.dbg.value(metadata !{i32 %out_pix}, i64 0, metadata !49), !dbg !51 ; [debug line = 95:60] [debug variable = out_pix]
  call void (...)* @_ssdm_op_SpecInterface(i8* %gmem0, [6 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [6 x i8]* @p_str4, [6 x i8]* @p_str5, [1 x i8]* @p_str, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32 %inter_pix, [10 x i8]* @mode, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @bundle, [6 x i8]* @p_str5, [1 x i8]* @p_str, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %gmem1, [6 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [6 x i8]* @p_str6, [6 x i8]* @p_str5, [1 x i8]* @p_str, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32 %out_pix, [10 x i8]* @mode3, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @bundle4, [6 x i8]* @p_str5, [1 x i8]* @p_str, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str7, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind, !dbg !52 ; [debug line = 99:1]
  br label %1, !dbg !54                           ; [debug line = 109:40]

; <label>:1                                       ; preds = %4, %0
  %i = phi i2 [ 0, %0 ], [ %i_1, %4 ]             ; [#uses=2 type=i2]
  %tmp = icmp eq i2 %i, -2, !dbg !54              ; [#uses=1 type=i1] [debug line = 109:40]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2) nounwind ; [#uses=0 type=i32]
  %i_1 = add i2 %i, 1, !dbg !56                   ; [#uses=1 type=i2] [debug line = 109:49]
  br i1 %tmp, label %.preheader.preheader, label %2, !dbg !54 ; [debug line = 109:40]

.preheader.preheader:                             ; preds = %1
  br label %.preheader, !dbg !57                  ; [debug line = 118:38]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @p_str9) nounwind, !dbg !59 ; [debug line = 109:55]
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([14 x i8]* @p_str9) nounwind, !dbg !59 ; [#uses=1 type=i32] [debug line = 109:55]
  br label %3, !dbg !61                           ; [debug line = 110:41]

; <label>:3                                       ; preds = %branch4, %2
  %j = phi i11 [ 0, %2 ], [ %j_1, %branch4 ]      ; [#uses=2 type=i11]
  %tmp_4 = icmp eq i11 %j, -128, !dbg !61         ; [#uses=1 type=i1] [debug line = 110:41]
  %empty_2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1920, i64 1920, i64 1920) nounwind ; [#uses=0 type=i32]
  %j_1 = add i11 %j, 1, !dbg !63                  ; [#uses=1 type=i11] [debug line = 110:53]
  br i1 %tmp_4, label %4, label %branch4, !dbg !61 ; [debug line = 110:41]

branch4:                                          ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @p_str10) nounwind, !dbg !64 ; [debug line = 110:59]
  %tmp_6 = call i32 (...)* @_ssdm_op_SpecRegionBegin([14 x i8]* @p_str10) nounwind, !dbg !64 ; [#uses=1 type=i32] [debug line = 110:59]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind, !dbg !66 ; [debug line = 111:1]
  %empty_3 = call i32 (...)* @_ssdm_op_SpecRegionEnd([14 x i8]* @p_str10, i32 %tmp_6) nounwind, !dbg !67 ; [#uses=0 type=i32] [debug line = 114:3]
  call void @llvm.dbg.value(metadata !{i11 %j_1}, i64 0, metadata !68), !dbg !63 ; [debug line = 110:53] [debug variable = j]
  br label %3, !dbg !63                           ; [debug line = 110:53]

; <label>:4                                       ; preds = %3
  %empty_4 = call i32 (...)* @_ssdm_op_SpecRegionEnd([14 x i8]* @p_str9, i32 %tmp_2) nounwind, !dbg !69 ; [#uses=0 type=i32] [debug line = 115:2]
  call void @llvm.dbg.value(metadata !{i2 %i_1}, i64 0, metadata !70), !dbg !56 ; [debug line = 109:49] [debug variable = i]
  br label %1, !dbg !56                           ; [debug line = 109:49]

.preheader:                                       ; preds = %7, %.preheader.preheader
  %i1 = phi i11 [ %i_2, %7 ], [ 0, %.preheader.preheader ] ; [#uses=2 type=i11]
  %tmp_3 = icmp eq i11 %i1, -968, !dbg !57        ; [#uses=1 type=i1] [debug line = 118:38]
  %empty_5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1080, i64 1080, i64 1080) nounwind ; [#uses=0 type=i32]
  %i_2 = add i11 %i1, 1, !dbg !71                 ; [#uses=1 type=i11] [debug line = 118:50]
  br i1 %tmp_3, label %8, label %5, !dbg !57      ; [debug line = 118:38]

; <label>:5                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str11) nounwind, !dbg !72 ; [debug line = 118:56]
  %tmp_5 = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str11) nounwind, !dbg !72 ; [#uses=1 type=i32] [debug line = 118:56]
  br label %6, !dbg !74                           ; [debug line = 119:39]

; <label>:6                                       ; preds = %._crit_edge, %5
  %j2 = phi i11 [ 0, %5 ], [ %j_2, %._crit_edge ] ; [#uses=2 type=i11]
  %tmp_s = icmp eq i11 %j2, -128, !dbg !74        ; [#uses=1 type=i1] [debug line = 119:39]
  %empty_6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1920, i64 1920, i64 1920) nounwind ; [#uses=0 type=i32]
  %j_2 = add i11 %j2, 1, !dbg !76                 ; [#uses=1 type=i11] [debug line = 119:51]
  br i1 %tmp_s, label %7, label %._crit_edge, !dbg !74 ; [debug line = 119:39]

._crit_edge:                                      ; preds = %6
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str12) nounwind, !dbg !77 ; [debug line = 119:57]
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str12) nounwind, !dbg !77 ; [#uses=1 type=i32] [debug line = 119:57]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind, !dbg !79 ; [debug line = 120:1]
  %empty_7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str12, i32 %tmp_1) nounwind, !dbg !80 ; [#uses=0 type=i32] [debug line = 137:3]
  call void @llvm.dbg.value(metadata !{i11 %j_2}, i64 0, metadata !81), !dbg !76 ; [debug line = 119:51] [debug variable = j]
  br label %6, !dbg !76                           ; [debug line = 119:51]

; <label>:7                                       ; preds = %6
  %empty_8 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str11, i32 %tmp_5) nounwind, !dbg !82 ; [#uses=0 type=i32] [debug line = 138:2]
  call void @llvm.dbg.value(metadata !{i11 %i_2}, i64 0, metadata !83), !dbg !71 ; [debug line = 118:50] [debug variable = i]
  br label %.preheader, !dbg !71                  ; [debug line = 118:50]

; <label>:8                                       ; preds = %.preheader
  ret void, !dbg !84                              ; [debug line = 141:1]
}

; [#uses=6]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=4]
define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

; [#uses=4]
define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

; [#uses=2]
define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

; [#uses=4]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=4]
define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

; [#uses=5]
define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

; [#uses=2]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

!opencl.kernels = !{!0, !7, !13}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}
!axi4.master.portmap = !{!19, !20}
!axi4.slave.bundlemap = !{!21, !22}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int", metadata !"uint8_t [1920]*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const", metadata !"const", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"rows", metadata !"cols", metadata !"image"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"uint8_t [3]*"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"image"}
!13 = metadata !{null, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !6}
!14 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!15 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!16 = metadata !{metadata !"kernel_arg_type", metadata !"uint8_t*", metadata !"uint*"}
!17 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!18 = metadata !{metadata !"kernel_arg_name", metadata !"inter_pix", metadata !"out_pix"}
!19 = metadata !{metadata !"gmem0", metadata !"inter_pix", metadata !""}
!20 = metadata !{metadata !"gmem1", metadata !"out_pix", metadata !""}
!21 = metadata !{metadata !"inter_pix", metadata !""}
!22 = metadata !{metadata !"out_pix", metadata !""}
!23 = metadata !{metadata !24}
!24 = metadata !{i32 0, i32 31, metadata !25}
!25 = metadata !{metadata !26}
!26 = metadata !{metadata !"out_pix", metadata !27, metadata !"unsigned int", i32 0, i32 31}
!27 = metadata !{metadata !28}
!28 = metadata !{i32 0, i32 2073599, i32 1}
!29 = metadata !{metadata !30}
!30 = metadata !{i32 0, i32 7, metadata !31}
!31 = metadata !{metadata !32}
!32 = metadata !{metadata !"inter_pix", metadata !27, metadata !"unsigned char", i32 0, i32 7}
!33 = metadata !{i32 786689, metadata !34, metadata !"inter_pix", null, i32 95, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!34 = metadata !{i32 786478, i32 0, metadata !35, metadata !"sobel_filter", metadata !"sobel_filter", metadata !"_Z12sobel_filterPhPj", metadata !35, i32 95, metadata !36, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !43, i32 96} ; [ DW_TAG_subprogram ]
!35 = metadata !{i32 786473, metadata !"sobellab4/Sobel.cpp", metadata !"X:\5CBureau\5CHDMI_3610\5C3610_4\5C1490679_1771119", null} ; [ DW_TAG_file_type ]
!36 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !37, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!37 = metadata !{null, metadata !38, metadata !41}
!38 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !39} ; [ DW_TAG_pointer_type ]
!39 = metadata !{i32 786454, null, metadata !"uint8_t", metadata !35, i32 36, i64 0, i64 0, i64 0, i32 0, metadata !40} ; [ DW_TAG_typedef ]
!40 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!41 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !42} ; [ DW_TAG_pointer_type ]
!42 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!43 = metadata !{metadata !44}
!44 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!45 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !39, metadata !46, i32 0, i32 0} ; [ DW_TAG_array_type ]
!46 = metadata !{metadata !47}
!47 = metadata !{i32 786465, i64 0, i64 2073599}  ; [ DW_TAG_subrange_type ]
!48 = metadata !{i32 95, i32 27, metadata !34, null}
!49 = metadata !{i32 786689, metadata !34, metadata !"out_pix", null, i32 95, metadata !50, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!50 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 66355200, i64 32, i32 0, i32 0, metadata !42, metadata !46, i32 0, i32 0} ; [ DW_TAG_array_type ]
!51 = metadata !{i32 95, i32 60, metadata !34, null}
!52 = metadata !{i32 99, i32 1, metadata !53, null}
!53 = metadata !{i32 786443, metadata !34, i32 96, i32 1, metadata !35, i32 10} ; [ DW_TAG_lexical_block ]
!54 = metadata !{i32 109, i32 40, metadata !55, null}
!55 = metadata !{i32 786443, metadata !53, i32 109, i32 17, metadata !35, i32 11} ; [ DW_TAG_lexical_block ]
!56 = metadata !{i32 109, i32 49, metadata !55, null}
!57 = metadata !{i32 118, i32 38, metadata !58, null}
!58 = metadata !{i32 786443, metadata !53, i32 118, i32 15, metadata !35, i32 15} ; [ DW_TAG_lexical_block ]
!59 = metadata !{i32 109, i32 55, metadata !60, null}
!60 = metadata !{i32 786443, metadata !55, i32 109, i32 54, metadata !35, i32 12} ; [ DW_TAG_lexical_block ]
!61 = metadata !{i32 110, i32 41, metadata !62, null}
!62 = metadata !{i32 786443, metadata !60, i32 110, i32 18, metadata !35, i32 13} ; [ DW_TAG_lexical_block ]
!63 = metadata !{i32 110, i32 53, metadata !62, null}
!64 = metadata !{i32 110, i32 59, metadata !65, null}
!65 = metadata !{i32 786443, metadata !62, i32 110, i32 58, metadata !35, i32 14} ; [ DW_TAG_lexical_block ]
!66 = metadata !{i32 111, i32 1, metadata !65, null}
!67 = metadata !{i32 114, i32 3, metadata !65, null}
!68 = metadata !{i32 786688, metadata !62, metadata !"j", metadata !35, i32 110, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!69 = metadata !{i32 115, i32 2, metadata !60, null}
!70 = metadata !{i32 786688, metadata !55, metadata !"i", metadata !35, i32 109, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!71 = metadata !{i32 118, i32 50, metadata !58, null}
!72 = metadata !{i32 118, i32 56, metadata !73, null}
!73 = metadata !{i32 786443, metadata !58, i32 118, i32 55, metadata !35, i32 16} ; [ DW_TAG_lexical_block ]
!74 = metadata !{i32 119, i32 39, metadata !75, null}
!75 = metadata !{i32 786443, metadata !73, i32 119, i32 16, metadata !35, i32 17} ; [ DW_TAG_lexical_block ]
!76 = metadata !{i32 119, i32 51, metadata !75, null}
!77 = metadata !{i32 119, i32 57, metadata !78, null}
!78 = metadata !{i32 786443, metadata !75, i32 119, i32 56, metadata !35, i32 18} ; [ DW_TAG_lexical_block ]
!79 = metadata !{i32 120, i32 1, metadata !78, null}
!80 = metadata !{i32 137, i32 3, metadata !78, null}
!81 = metadata !{i32 786688, metadata !75, metadata !"j", metadata !35, i32 119, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!82 = metadata !{i32 138, i32 2, metadata !73, null}
!83 = metadata !{i32 786688, metadata !58, metadata !"i", metadata !35, i32 118, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!84 = metadata !{i32 141, i32 1, metadata !53, null}
