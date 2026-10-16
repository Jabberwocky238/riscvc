"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f16)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "test_floor_si32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg23: f16):
    %46 = "llvm.intr.floor"(%arg23) <{fastmathFlags = #llvm.fastmath<none>}> : (f16) -> f16
    %47 = "llvm.call_intrinsic"(%46) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.fptosi.sat.i32.f16", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f16) -> i32
    "llvm.return"(%47) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_floor_si64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg22: f16):
    %44 = "llvm.intr.floor"(%arg22) <{fastmathFlags = #llvm.fastmath<none>}> : (f16) -> f16
    %45 = "llvm.call_intrinsic"(%44) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.fptosi.sat.i64.f16", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f16) -> i64
    "llvm.return"(%45) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f16)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "test_floor_ui32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg21: f16):
    %42 = "llvm.intr.floor"(%arg21) <{fastmathFlags = #llvm.fastmath<none>}> : (f16) -> f16
    %43 = "llvm.call_intrinsic"(%42) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.fptoui.sat.i32.f16", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f16) -> i32
    "llvm.return"(%43) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_floor_ui64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg20: f16):
    %40 = "llvm.intr.floor"(%arg20) <{fastmathFlags = #llvm.fastmath<none>}> : (f16) -> f16
    %41 = "llvm.call_intrinsic"(%40) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.fptoui.sat.i64.f16", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f16) -> i64
    "llvm.return"(%41) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f16)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "test_ceil_si32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg19: f16):
    %38 = "llvm.intr.ceil"(%arg19) <{fastmathFlags = #llvm.fastmath<none>}> : (f16) -> f16
    %39 = "llvm.call_intrinsic"(%38) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.fptosi.sat.i32.f16", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f16) -> i32
    "llvm.return"(%39) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_ceil_si64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg18: f16):
    %36 = "llvm.intr.ceil"(%arg18) <{fastmathFlags = #llvm.fastmath<none>}> : (f16) -> f16
    %37 = "llvm.call_intrinsic"(%36) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.fptosi.sat.i64.f16", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f16) -> i64
    "llvm.return"(%37) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f16)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "test_ceil_ui32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg17: f16):
    %34 = "llvm.intr.ceil"(%arg17) <{fastmathFlags = #llvm.fastmath<none>}> : (f16) -> f16
    %35 = "llvm.call_intrinsic"(%34) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.fptoui.sat.i32.f16", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f16) -> i32
    "llvm.return"(%35) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_ceil_ui64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg16: f16):
    %32 = "llvm.intr.ceil"(%arg16) <{fastmathFlags = #llvm.fastmath<none>}> : (f16) -> f16
    %33 = "llvm.call_intrinsic"(%32) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.fptoui.sat.i64.f16", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f16) -> i64
    "llvm.return"(%33) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f16)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "test_trunc_si32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg15: f16):
    %30 = "llvm.intr.trunc"(%arg15) <{fastmathFlags = #llvm.fastmath<none>}> : (f16) -> f16
    %31 = "llvm.call_intrinsic"(%30) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.fptosi.sat.i32.f16", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f16) -> i32
    "llvm.return"(%31) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_trunc_si64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: f16):
    %28 = "llvm.intr.trunc"(%arg14) <{fastmathFlags = #llvm.fastmath<none>}> : (f16) -> f16
    %29 = "llvm.call_intrinsic"(%28) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.fptosi.sat.i64.f16", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f16) -> i64
    "llvm.return"(%29) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f16)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "test_trunc_ui32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg13: f16):
    %26 = "llvm.intr.trunc"(%arg13) <{fastmathFlags = #llvm.fastmath<none>}> : (f16) -> f16
    %27 = "llvm.call_intrinsic"(%26) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.fptoui.sat.i32.f16", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f16) -> i32
    "llvm.return"(%27) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_trunc_ui64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: f16):
    %24 = "llvm.intr.trunc"(%arg12) <{fastmathFlags = #llvm.fastmath<none>}> : (f16) -> f16
    %25 = "llvm.call_intrinsic"(%24) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.fptoui.sat.i64.f16", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f16) -> i64
    "llvm.return"(%25) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f16)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "test_round_si32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg11: f16):
    %22 = "llvm.intr.round"(%arg11) <{fastmathFlags = #llvm.fastmath<none>}> : (f16) -> f16
    %23 = "llvm.call_intrinsic"(%22) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.fptosi.sat.i32.f16", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f16) -> i32
    "llvm.return"(%23) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_round_si64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: f16):
    %20 = "llvm.intr.round"(%arg10) <{fastmathFlags = #llvm.fastmath<none>}> : (f16) -> f16
    %21 = "llvm.call_intrinsic"(%20) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.fptosi.sat.i64.f16", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f16) -> i64
    "llvm.return"(%21) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f16)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "test_round_ui32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: f16):
    %18 = "llvm.intr.round"(%arg9) <{fastmathFlags = #llvm.fastmath<none>}> : (f16) -> f16
    %19 = "llvm.call_intrinsic"(%18) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.fptoui.sat.i32.f16", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f16) -> i32
    "llvm.return"(%19) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_round_ui64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: f16):
    %16 = "llvm.intr.round"(%arg8) <{fastmathFlags = #llvm.fastmath<none>}> : (f16) -> f16
    %17 = "llvm.call_intrinsic"(%16) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.fptoui.sat.i64.f16", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f16) -> i64
    "llvm.return"(%17) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f16)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "test_roundeven_si32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg7: f16):
    %14 = "llvm.intr.roundeven"(%arg7) <{fastmathFlags = #llvm.fastmath<none>}> : (f16) -> f16
    %15 = "llvm.call_intrinsic"(%14) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.fptosi.sat.i32.f16", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f16) -> i32
    "llvm.return"(%15) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_roundeven_si64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: f16):
    %12 = "llvm.intr.roundeven"(%arg6) <{fastmathFlags = #llvm.fastmath<none>}> : (f16) -> f16
    %13 = "llvm.call_intrinsic"(%12) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.fptosi.sat.i64.f16", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f16) -> i64
    "llvm.return"(%13) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f16)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "test_roundeven_ui32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: f16):
    %10 = "llvm.intr.roundeven"(%arg5) <{fastmathFlags = #llvm.fastmath<none>}> : (f16) -> f16
    %11 = "llvm.call_intrinsic"(%10) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.fptoui.sat.i32.f16", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f16) -> i32
    "llvm.return"(%11) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_roundeven_ui64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: f16):
    %8 = "llvm.intr.roundeven"(%arg4) <{fastmathFlags = #llvm.fastmath<none>}> : (f16) -> f16
    %9 = "llvm.call_intrinsic"(%8) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.fptoui.sat.i64.f16", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f16) -> i64
    "llvm.return"(%9) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f16)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "test_rint_si32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: f16):
    %6 = "llvm.intr.rint"(%arg3) <{fastmathFlags = #llvm.fastmath<none>}> : (f16) -> f16
    %7 = "llvm.call_intrinsic"(%6) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.fptosi.sat.i32.f16", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f16) -> i32
    "llvm.return"(%7) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_rint_si64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: f16):
    %4 = "llvm.intr.rint"(%arg2) <{fastmathFlags = #llvm.fastmath<none>}> : (f16) -> f16
    %5 = "llvm.call_intrinsic"(%4) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.fptosi.sat.i64.f16", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f16) -> i64
    "llvm.return"(%5) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f16)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "test_rint_ui32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: f16):
    %2 = "llvm.intr.rint"(%arg1) <{fastmathFlags = #llvm.fastmath<none>}> : (f16) -> f16
    %3 = "llvm.call_intrinsic"(%2) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.fptoui.sat.i32.f16", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f16) -> i32
    "llvm.return"(%3) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_rint_ui64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: f16):
    %0 = "llvm.intr.rint"(%arg0) <{fastmathFlags = #llvm.fastmath<none>}> : (f16) -> f16
    %1 = "llvm.call_intrinsic"(%0) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.fptoui.sat.i64.f16", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f16) -> i64
    "llvm.return"(%1) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f16)>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_unwind, passthrough = ["nocallback", "nocreateundeforpoison", "nofree", "nosync", "speculatable"], sym_name = "llvm.fptosi.sat.i32.f16", unnamed_addr = 0 : i64, visibility_ = 0 : i64, will_return}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (f16)>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_unwind, passthrough = ["nocallback", "nocreateundeforpoison", "nofree", "nosync", "speculatable"], sym_name = "llvm.fptosi.sat.i64.f16", unnamed_addr = 0 : i64, visibility_ = 0 : i64, will_return}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f16)>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_unwind, passthrough = ["nocallback", "nocreateundeforpoison", "nofree", "nosync", "speculatable"], sym_name = "llvm.fptoui.sat.i32.f16", unnamed_addr = 0 : i64, visibility_ = 0 : i64, will_return}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (f16)>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_unwind, passthrough = ["nocallback", "nocreateundeforpoison", "nofree", "nosync", "speculatable"], sym_name = "llvm.fptoui.sat.i64.f16", unnamed_addr = 0 : i64, visibility_ = 0 : i64, will_return}> ({
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

