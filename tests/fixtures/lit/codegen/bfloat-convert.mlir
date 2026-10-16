"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (bf16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fcvt_si_bf16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg39: bf16):
    %46 = "llvm.fptosi"(%arg39) : (bf16) -> i16
    "llvm.return"(%46) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (bf16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fcvt_si_bf16_sat", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg38: bf16):
    %45 = "llvm.call_intrinsic"(%arg38) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.fptosi.sat.i16.bf16", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (bf16) -> i16
    "llvm.return"(%45) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (bf16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fcvt_ui_bf16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg37: bf16):
    %44 = "llvm.fptoui"(%arg37) : (bf16) -> i16
    "llvm.return"(%44) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (bf16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fcvt_ui_bf16_sat", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg36: bf16):
    %43 = "llvm.call_intrinsic"(%arg36) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.fptoui.sat.i16.bf16", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (bf16) -> i16
    "llvm.return"(%43) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (bf16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fcvt_w_bf16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg35: bf16):
    %42 = "llvm.fptosi"(%arg35) : (bf16) -> i32
    "llvm.return"(%42) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (bf16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fcvt_w_bf16_sat", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg34: bf16):
    %41 = "llvm.call_intrinsic"(%arg34) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.fptosi.sat.i32.bf16", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (bf16) -> i32
    "llvm.return"(%41) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (bf16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fcvt_wu_bf16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg33: bf16):
    %40 = "llvm.fptoui"(%arg33) : (bf16) -> i32
    "llvm.return"(%40) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (bf16, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fcvt_wu_bf16_multiple_use", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg31: bf16, %arg32: !llvm.ptr):
    %35 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %36 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %37 = "llvm.fptoui"(%arg31) : (bf16) -> i32
    %38 = "llvm.icmp"(%37, %35) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %39 = "llvm.select"(%38, %36, %37) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%39) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (bf16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fcvt_wu_bf16_sat", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg30: bf16):
    %34 = "llvm.call_intrinsic"(%arg30) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.fptoui.sat.i32.bf16", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (bf16) -> i32
    "llvm.return"(%34) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (bf16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fcvt_l_bf16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg29: bf16):
    %33 = "llvm.fptosi"(%arg29) : (bf16) -> i64
    "llvm.return"(%33) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (bf16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fcvt_l_bf16_sat", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg28: bf16):
    %32 = "llvm.call_intrinsic"(%arg28) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.fptosi.sat.i64.bf16", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (bf16) -> i64
    "llvm.return"(%32) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (bf16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fcvt_lu_bf16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg27: bf16):
    %31 = "llvm.fptoui"(%arg27) : (bf16) -> i64
    "llvm.return"(%31) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (bf16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fcvt_lu_bf16_sat", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg26: bf16):
    %30 = "llvm.call_intrinsic"(%arg26) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.fptoui.sat.i64.bf16", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (bf16) -> i64
    "llvm.return"(%30) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<bf16 (i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fcvt_bf16_si", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg25: i16):
    %29 = "llvm.sitofp"(%arg25) : (i16) -> bf16
    "llvm.return"(%29) : (bf16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<bf16 (i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fcvt_bf16_si_signext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg24: i16):
    %28 = "llvm.sitofp"(%arg24) : (i16) -> bf16
    "llvm.return"(%28) : (bf16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<bf16 (i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fcvt_bf16_ui", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg23: i16):
    %27 = "llvm.uitofp"(%arg23) : (i16) -> bf16
    "llvm.return"(%27) : (bf16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}], function_type = !llvm.func<bf16 (i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fcvt_bf16_ui_zeroext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg22: i16):
    %26 = "llvm.uitofp"(%arg22) : (i16) -> bf16
    "llvm.return"(%26) : (bf16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<bf16 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fcvt_bf16_w", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg21: i32):
    %25 = "llvm.sitofp"(%arg21) : (i32) -> bf16
    "llvm.return"(%25) : (bf16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<bf16 (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fcvt_bf16_w_load", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg20: !llvm.ptr):
    %23 = "llvm.load"(%arg20) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %24 = "llvm.sitofp"(%23) : (i32) -> bf16
    "llvm.return"(%24) : (bf16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<bf16 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fcvt_bf16_wu", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg19: i32):
    %22 = "llvm.uitofp"(%arg19) : (i32) -> bf16
    "llvm.return"(%22) : (bf16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<bf16 (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fcvt_bf16_wu_load", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg18: !llvm.ptr):
    %20 = "llvm.load"(%arg18) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %21 = "llvm.uitofp"(%20) : (i32) -> bf16
    "llvm.return"(%21) : (bf16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<bf16 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fcvt_bf16_l", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg17: i64):
    %19 = "llvm.sitofp"(%arg17) : (i64) -> bf16
    "llvm.return"(%19) : (bf16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<bf16 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fcvt_bf16_lu", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg16: i64):
    %18 = "llvm.uitofp"(%arg16) : (i64) -> bf16
    "llvm.return"(%18) : (bf16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<bf16 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fcvt_bf16_s", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg15: f32):
    %17 = "llvm.fptrunc"(%arg15) : (f32) -> bf16
    "llvm.return"(%17) : (bf16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (bf16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fcvt_s_bf16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: bf16):
    %16 = "llvm.fpext"(%arg14) : (bf16) -> f32
    "llvm.return"(%16) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<bf16 (f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fcvt_bf16_d", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg13: f64):
    %15 = "llvm.fptrunc"(%arg13) : (f64) -> bf16
    "llvm.return"(%15) : (bf16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (bf16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fcvt_d_bf16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: bf16):
    %14 = "llvm.fpext"(%arg12) : (bf16) -> f64
    "llvm.return"(%14) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<bf16 (i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "bitcast_bf16_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg11: i16):
    %13 = "llvm.bitcast"(%arg11) : (i16) -> bf16
    "llvm.return"(%13) : (bf16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (bf16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "bitcast_i16_bf16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: bf16):
    %12 = "llvm.bitcast"(%arg10) : (bf16) -> i16
    "llvm.return"(%12) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {}], function_type = !llvm.func<i32 (i32, ptr)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "fcvt_bf16_w_demanded_bits", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: i32, %arg9: !llvm.ptr):
    %9 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %10 = "llvm.add"(%arg8, %9) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %11 = "llvm.sitofp"(%10) : (i32) -> bf16
    "llvm.store"(%11, %arg9) <{alignment = 2 : i64, ordering = 0 : i64}> : (bf16, !llvm.ptr) -> ()
    "llvm.return"(%10) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {}], function_type = !llvm.func<i32 (i32, ptr)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "fcvt_bf16_wu_demanded_bits", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: i32, %arg7: !llvm.ptr):
    %6 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %7 = "llvm.add"(%arg6, %6) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %8 = "llvm.uitofp"(%7) : (i32) -> bf16
    "llvm.store"(%8, %arg7) <{alignment = 2 : i64, ordering = 0 : i64}> : (bf16, !llvm.ptr) -> ()
    "llvm.return"(%7) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (bf16)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "fcvt_w_s_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: bf16):
    %5 = "llvm.fptosi"(%arg5) : (bf16) -> i8
    "llvm.return"(%5) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (bf16)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "fcvt_w_s_sat_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: bf16):
    %4 = "llvm.call_intrinsic"(%arg4) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.fptosi.sat.i8.bf16", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (bf16) -> i8
    "llvm.return"(%4) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (bf16)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.zeroext}], sym_name = "fcvt_wu_s_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: bf16):
    %3 = "llvm.fptoui"(%arg3) : (bf16) -> i8
    "llvm.return"(%3) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (bf16)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.zeroext}], sym_name = "fcvt_wu_s_sat_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: bf16):
    %2 = "llvm.call_intrinsic"(%arg2) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.fptoui.sat.i8.bf16", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (bf16) -> i8
    "llvm.return"(%2) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (bf16)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.zeroext}], sym_name = "fcvt_wu_bf16_sat_zext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: bf16):
    %1 = "llvm.call_intrinsic"(%arg1) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.fptoui.sat.i32.bf16", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (bf16) -> i32
    "llvm.return"(%1) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (bf16)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "fcvt_w_bf16_sat_sext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: bf16):
    %0 = "llvm.call_intrinsic"(%arg0) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.fptosi.sat.i32.bf16", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (bf16) -> i32
    "llvm.return"(%0) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (bf16)>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_unwind, passthrough = ["nocallback", "nocreateundeforpoison", "nofree", "nosync", "speculatable"], sym_name = "llvm.fptosi.sat.i16.bf16", unnamed_addr = 0 : i64, visibility_ = 0 : i64, will_return}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (bf16)>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_unwind, passthrough = ["nocallback", "nocreateundeforpoison", "nofree", "nosync", "speculatable"], sym_name = "llvm.fptosi.sat.i32.bf16", unnamed_addr = 0 : i64, visibility_ = 0 : i64, will_return}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (bf16)>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_unwind, passthrough = ["nocallback", "nocreateundeforpoison", "nofree", "nosync", "speculatable"], sym_name = "llvm.fptosi.sat.i64.bf16", unnamed_addr = 0 : i64, visibility_ = 0 : i64, will_return}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (bf16)>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_unwind, passthrough = ["nocallback", "nocreateundeforpoison", "nofree", "nosync", "speculatable"], sym_name = "llvm.fptosi.sat.i8.bf16", unnamed_addr = 0 : i64, visibility_ = 0 : i64, will_return}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (bf16)>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_unwind, passthrough = ["nocallback", "nocreateundeforpoison", "nofree", "nosync", "speculatable"], sym_name = "llvm.fptoui.sat.i16.bf16", unnamed_addr = 0 : i64, visibility_ = 0 : i64, will_return}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (bf16)>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_unwind, passthrough = ["nocallback", "nocreateundeforpoison", "nofree", "nosync", "speculatable"], sym_name = "llvm.fptoui.sat.i32.bf16", unnamed_addr = 0 : i64, visibility_ = 0 : i64, will_return}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (bf16)>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_unwind, passthrough = ["nocallback", "nocreateundeforpoison", "nofree", "nosync", "speculatable"], sym_name = "llvm.fptoui.sat.i64.bf16", unnamed_addr = 0 : i64, visibility_ = 0 : i64, will_return}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (bf16)>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_unwind, passthrough = ["nocallback", "nocreateundeforpoison", "nofree", "nosync", "speculatable"], sym_name = "llvm.fptoui.sat.i8.bf16", unnamed_addr = 0 : i64, visibility_ = 0 : i64, will_return}> ({
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

