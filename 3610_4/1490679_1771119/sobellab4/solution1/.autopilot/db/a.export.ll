; ModuleID = 'X:/Bureau/HDMI_3610/3610_4/1490679_1771119/sobellab4/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@sobel_filter_str = internal unnamed_addr constant [13 x i8] c"sobel_filter\00"
@mode3 = internal constant [10 x i8] c"s_axilite\00"
@mode = internal constant [10 x i8] c"s_axilite\00"
@bundle4 = internal constant [1 x i8] zeroinitializer
@bundle = internal constant [1 x i8] zeroinitializer
@p_str9 = private unnamed_addr constant [14 x i8] c"FillCacheRows\00", align 1
@p_str7 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1
@p_str6 = private unnamed_addr constant [6 x i8] c"gmem1\00", align 1
@p_str5 = private unnamed_addr constant [6 x i8] c"slave\00", align 1
@p_str4 = private unnamed_addr constant [6 x i8] c"gmem0\00", align 1
@p_str3 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1
@p_str12 = private unnamed_addr constant [11 x i8] c"FilterCols\00", align 1
@p_str11 = private unnamed_addr constant [11 x i8] c"FilterRows\00", align 1
@p_str10 = private unnamed_addr constant [14 x i8] c"FillCacheCols\00", align 1
@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

define void @sobel_filter(i8* %gmem0, i32* %gmem1, i32 %inter_pix, i32 %out_pix) {
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %gmem1), !map !23
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %gmem0), !map !29
  call void (...)* @_ssdm_op_SpecTopModule([13 x i8]* @sobel_filter_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %gmem0, [6 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [6 x i8]* @p_str4, [6 x i8]* @p_str5, [1 x i8]* @p_str, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32 %inter_pix, [10 x i8]* @mode, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @bundle, [6 x i8]* @p_str5, [1 x i8]* @p_str, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %gmem1, [6 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [6 x i8]* @p_str6, [6 x i8]* @p_str5, [1 x i8]* @p_str, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32 %out_pix, [10 x i8]* @mode3, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @bundle4, [6 x i8]* @p_str5, [1 x i8]* @p_str, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str7, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  br label %1

; <label>:1                                       ; preds = %4, %0
  %i = phi i2 [ 0, %0 ], [ %i_1, %4 ]
  %tmp = icmp eq i2 %i, -2
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2) nounwind
  %i_1 = add i2 %i, 1
  br i1 %tmp, label %.preheader.preheader, label %2

.preheader.preheader:                             ; preds = %1
  br label %.preheader

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @p_str9) nounwind
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([14 x i8]* @p_str9) nounwind
  br label %3

; <label>:3                                       ; preds = %branch4, %2
  %j = phi i11 [ 0, %2 ], [ %j_1, %branch4 ]
  %tmp_4 = icmp eq i11 %j, -128
  %empty_2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1920, i64 1920, i64 1920) nounwind
  %j_1 = add i11 %j, 1
  br i1 %tmp_4, label %4, label %branch4

branch4:                                          ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @p_str10) nounwind
  %tmp_6 = call i32 (...)* @_ssdm_op_SpecRegionBegin([14 x i8]* @p_str10) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %empty_3 = call i32 (...)* @_ssdm_op_SpecRegionEnd([14 x i8]* @p_str10, i32 %tmp_6) nounwind
  br label %3

; <label>:4                                       ; preds = %3
  %empty_4 = call i32 (...)* @_ssdm_op_SpecRegionEnd([14 x i8]* @p_str9, i32 %tmp_2) nounwind
  br label %1

.preheader:                                       ; preds = %.preheader.preheader, %7
  %i1 = phi i11 [ %i_2, %7 ], [ 0, %.preheader.preheader ]
  %tmp_3 = icmp eq i11 %i1, -968
  %empty_5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1080, i64 1080, i64 1080) nounwind
  %i_2 = add i11 %i1, 1
  br i1 %tmp_3, label %8, label %5

; <label>:5                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str11) nounwind
  %tmp_5 = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str11) nounwind
  br label %6

; <label>:6                                       ; preds = %._crit_edge, %5
  %j2 = phi i11 [ 0, %5 ], [ %j_2, %._crit_edge ]
  %tmp_s = icmp eq i11 %j2, -128
  %empty_6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1920, i64 1920, i64 1920) nounwind
  %j_2 = add i11 %j2, 1
  br i1 %tmp_s, label %7, label %._crit_edge

._crit_edge:                                      ; preds = %6
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str12) nounwind
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str12) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %empty_7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str12, i32 %tmp_1) nounwind
  br label %6

; <label>:7                                       ; preds = %6
  %empty_8 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str11, i32 %tmp_5) nounwind
  br label %.preheader

; <label>:8                                       ; preds = %.preheader
  ret void
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

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
