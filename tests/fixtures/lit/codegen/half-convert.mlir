"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fcvt_si_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg46: f16):
    %53 = "llvm.fptosi"(%arg46) : (f16) -> i16
    "llvm.return"(%53) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fcvt_si_h_sat", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg45: f16):
    %52 = "llvm.call_intrinsic"(%arg45) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.fptosi.sat.i16.f16", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f16) -> i16
    "llvm.return"(%52) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fcvt_ui_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg44: f16):
    %51 = "llvm.fptoui"(%arg44) : (f16) -> i16
    "llvm.return"(%51) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fcvt_ui_h_sat", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg43: f16):
    %50 = "llvm.call_intrinsic"(%arg43) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.fptoui.sat.i16.f16", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f16) -> i16
    "llvm.return"(%50) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fcvt_w_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg42: f16):
    %49 = "llvm.fptosi"(%arg42) : (f16) -> i32
    "llvm.return"(%49) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fcvt_w_h_sat", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg41: f16):
    %48 = "llvm.call_intrinsic"(%arg41) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.fptosi.sat.i32.f16", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f16) -> i32
    "llvm.return"(%48) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fcvt_wu_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg40: f16):
    %47 = "llvm.fptoui"(%arg40) : (f16) -> i32
    "llvm.return"(%47) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f16, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fcvt_wu_h_multiple_use", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg38: f16, %arg39: !llvm.ptr):
    %42 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %43 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %44 = "llvm.fptoui"(%arg38) : (f16) -> i32
    %45 = "llvm.icmp"(%44, %42) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %46 = "llvm.select"(%45, %43, %44) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%46) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fcvt_wu_h_sat", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg37: f16):
    %41 = "llvm.call_intrinsic"(%arg37) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.fptoui.sat.i32.f16", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f16) -> i32
    "llvm.return"(%41) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fcvt_l_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg36: f16):
    %40 = "llvm.fptosi"(%arg36) : (f16) -> i64
    "llvm.return"(%40) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fcvt_l_h_sat", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg35: f16):
    %39 = "llvm.call_intrinsic"(%arg35) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.fptosi.sat.i64.f16", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f16) -> i64
    "llvm.return"(%39) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fcvt_lu_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg34: f16):
    %38 = "llvm.fptoui"(%arg34) : (f16) -> i64
    "llvm.return"(%38) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fcvt_lu_h_sat", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg33: f16):
    %37 = "llvm.call_intrinsic"(%arg33) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.fptoui.sat.i64.f16", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f16) -> i64
    "llvm.return"(%37) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fcvt_h_si", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg32: i16):
    %36 = "llvm.sitofp"(%arg32) : (i16) -> f16
    "llvm.return"(%36) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<f16 (i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fcvt_h_si_signext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg31: i16):
    %35 = "llvm.sitofp"(%arg31) : (i16) -> f16
    "llvm.return"(%35) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fcvt_h_ui", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg30: i16):
    %34 = "llvm.uitofp"(%arg30) : (i16) -> f16
    "llvm.return"(%34) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}], function_type = !llvm.func<f16 (i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fcvt_h_ui_zeroext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg29: i16):
    %33 = "llvm.uitofp"(%arg29) : (i16) -> f16
    "llvm.return"(%33) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fcvt_h_w", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg28: i32):
    %32 = "llvm.sitofp"(%arg28) : (i32) -> f16
    "llvm.return"(%32) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fcvt_h_w_load", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg27: !llvm.ptr):
    %30 = "llvm.load"(%arg27) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %31 = "llvm.sitofp"(%30) : (i32) -> f16
    "llvm.return"(%31) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fcvt_h_wu", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg26: i32):
    %29 = "llvm.uitofp"(%arg26) : (i32) -> f16
    "llvm.return"(%29) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fcvt_h_wu_load", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg25: !llvm.ptr):
    %27 = "llvm.load"(%arg25) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %28 = "llvm.uitofp"(%27) : (i32) -> f16
    "llvm.return"(%28) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fcvt_h_l", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg24: i64):
    %26 = "llvm.sitofp"(%arg24) : (i64) -> f16
    "llvm.return"(%26) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fcvt_h_lu", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg23: i64):
    %25 = "llvm.uitofp"(%arg23) : (i64) -> f16
    "llvm.return"(%25) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fcvt_h_s", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg22: f32):
    %24 = "llvm.fptrunc"(%arg22) : (f32) -> f16
    "llvm.return"(%24) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fcvt_s_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg21: f16):
    %23 = "llvm.fpext"(%arg21) : (f16) -> f32
    "llvm.return"(%23) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fcvt_h_d", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg20: f64):
    %22 = "llvm.fptrunc"(%arg20) : (f64) -> f16
    "llvm.return"(%22) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fcvt_d_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg19: f16):
    %21 = "llvm.fpext"(%arg19) : (f16) -> f64
    "llvm.return"(%21) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "bitcast_h_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg18: i16):
    %20 = "llvm.bitcast"(%arg18) : (i16) -> f16
    "llvm.return"(%20) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "bitcast_i16_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg17: f16):
    %19 = "llvm.bitcast"(%arg17) : (f16) -> i16
    "llvm.return"(%19) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {}], function_type = !llvm.func<i32 (i32, ptr)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "fcvt_h_w_demanded_bits", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg15: i32, %arg16: !llvm.ptr):
    %16 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %17 = "llvm.add"(%arg15, %16) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %18 = "llvm.sitofp"(%17) : (i32) -> f16
    "llvm.store"(%18, %arg16) <{alignment = 2 : i64, ordering = 0 : i64}> : (f16, !llvm.ptr) -> ()
    "llvm.return"(%17) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {}], function_type = !llvm.func<i32 (i32, ptr)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "fcvt_h_wu_demanded_bits", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg13: i32, %arg14: !llvm.ptr):
    %13 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %14 = "llvm.add"(%arg13, %13) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %15 = "llvm.uitofp"(%14) : (i32) -> f16
    "llvm.store"(%15, %arg14) <{alignment = 2 : i64, ordering = 0 : i64}> : (f16, !llvm.ptr) -> ()
    "llvm.return"(%14) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (f16)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "fcvt_w_s_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: f16):
    %12 = "llvm.fptosi"(%arg12) : (f16) -> i16
    "llvm.return"(%12) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (f16)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "fcvt_w_s_sat_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg11: f16):
    %11 = "llvm.call_intrinsic"(%arg11) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.fptosi.sat.i16.f16", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f16) -> i16
    "llvm.return"(%11) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (f16)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.zeroext}], sym_name = "fcvt_wu_s_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: f16):
    %10 = "llvm.fptoui"(%arg10) : (f16) -> i16
    "llvm.return"(%10) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (f16)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.zeroext}], sym_name = "fcvt_wu_s_sat_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: f16):
    %9 = "llvm.call_intrinsic"(%arg9) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.fptoui.sat.i16.f16", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f16) -> i16
    "llvm.return"(%9) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (f16)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "fcvt_w_s_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: f16):
    %8 = "llvm.fptosi"(%arg8) : (f16) -> i8
    "llvm.return"(%8) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (f16)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "fcvt_w_s_sat_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg7: f16):
    %7 = "llvm.call_intrinsic"(%arg7) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.fptosi.sat.i8.f16", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f16) -> i8
    "llvm.return"(%7) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (f16)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.zeroext}], sym_name = "fcvt_wu_s_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: f16):
    %6 = "llvm.fptoui"(%arg6) : (f16) -> i8
    "llvm.return"(%6) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (f16)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.zeroext}], sym_name = "fcvt_wu_s_sat_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: f16):
    %5 = "llvm.call_intrinsic"(%arg5) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.fptoui.sat.i8.f16", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f16) -> i8
    "llvm.return"(%5) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f16)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.zeroext}], sym_name = "fcvt_wu_h_sat_zext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: f16):
    %4 = "llvm.call_intrinsic"(%arg4) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.fptoui.sat.i32.f16", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f16) -> i32
    "llvm.return"(%4) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f16)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "fcvt_w_h_sat_sext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: f16):
    %3 = "llvm.call_intrinsic"(%arg3) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.fptosi.sat.i32.f16", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f16) -> i32
    "llvm.return"(%3) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (f128, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fcvt_h_q", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: f128, %arg2: !llvm.ptr):
    %2 = "llvm.fptrunc"(%arg1) : (f128) -> f16
    "llvm.store"(%2, %arg2) <{alignment = 2 : i64, ordering = 0 : i64}> : (f16, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f128 (ptr)>, linkage = #llvm.linkage<external>, sym_name = "fcvt_q_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: !llvm.ptr):
    %0 = "llvm.load"(%arg0) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f16
    %1 = "llvm.fpext"(%0) : (f16) -> f128
    "llvm.return"(%1) : (f128) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (f16)>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_unwind, passthrough = ["nocallback", "nocreateundeforpoison", "nofree", "nosync", "speculatable"], sym_name = "llvm.fptosi.sat.i16.f16", unnamed_addr = 0 : i64, visibility_ = 0 : i64, will_return}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f16)>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_unwind, passthrough = ["nocallback", "nocreateundeforpoison", "nofree", "nosync", "speculatable"], sym_name = "llvm.fptosi.sat.i32.f16", unnamed_addr = 0 : i64, visibility_ = 0 : i64, will_return}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (f16)>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_unwind, passthrough = ["nocallback", "nocreateundeforpoison", "nofree", "nosync", "speculatable"], sym_name = "llvm.fptosi.sat.i64.f16", unnamed_addr = 0 : i64, visibility_ = 0 : i64, will_return}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (f16)>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_unwind, passthrough = ["nocallback", "nocreateundeforpoison", "nofree", "nosync", "speculatable"], sym_name = "llvm.fptosi.sat.i8.f16", unnamed_addr = 0 : i64, visibility_ = 0 : i64, will_return}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (f16)>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_unwind, passthrough = ["nocallback", "nocreateundeforpoison", "nofree", "nosync", "speculatable"], sym_name = "llvm.fptoui.sat.i16.f16", unnamed_addr = 0 : i64, visibility_ = 0 : i64, will_return}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f16)>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_unwind, passthrough = ["nocallback", "nocreateundeforpoison", "nofree", "nosync", "speculatable"], sym_name = "llvm.fptoui.sat.i32.f16", unnamed_addr = 0 : i64, visibility_ = 0 : i64, will_return}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (f16)>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_unwind, passthrough = ["nocallback", "nocreateundeforpoison", "nofree", "nosync", "speculatable"], sym_name = "llvm.fptoui.sat.i64.f16", unnamed_addr = 0 : i64, visibility_ = 0 : i64, will_return}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (f16)>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_unwind, passthrough = ["nocallback", "nocreateundeforpoison", "nofree", "nosync", "speculatable"], sym_name = "llvm.fptoui.sat.i8.f16", unnamed_addr = 0 : i64, visibility_ = 0 : i64, will_return}> ({
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

