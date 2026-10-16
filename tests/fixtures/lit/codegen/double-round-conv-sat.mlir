"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f64)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "test_floor_si32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg23: f64):
    %46 = "llvm.intr.floor"(%arg23) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    %47 = "llvm.call_intrinsic"(%46) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.fptosi.sat.i32.f64", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f64) -> i32
    "llvm.return"(%47) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_floor_si64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg22: f64):
    %44 = "llvm.intr.floor"(%arg22) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    %45 = "llvm.call_intrinsic"(%44) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.fptosi.sat.i64.f64", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f64) -> i64
    "llvm.return"(%45) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f64)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "test_floor_ui32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg21: f64):
    %42 = "llvm.intr.floor"(%arg21) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    %43 = "llvm.call_intrinsic"(%42) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.fptoui.sat.i32.f64", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f64) -> i32
    "llvm.return"(%43) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_floor_ui64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg20: f64):
    %40 = "llvm.intr.floor"(%arg20) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    %41 = "llvm.call_intrinsic"(%40) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.fptoui.sat.i64.f64", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f64) -> i64
    "llvm.return"(%41) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f64)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "test_ceil_si32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg19: f64):
    %38 = "llvm.intr.ceil"(%arg19) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    %39 = "llvm.call_intrinsic"(%38) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.fptosi.sat.i32.f64", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f64) -> i32
    "llvm.return"(%39) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_ceil_si64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg18: f64):
    %36 = "llvm.intr.ceil"(%arg18) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    %37 = "llvm.call_intrinsic"(%36) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.fptosi.sat.i64.f64", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f64) -> i64
    "llvm.return"(%37) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f64)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "test_ceil_ui32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg17: f64):
    %34 = "llvm.intr.ceil"(%arg17) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    %35 = "llvm.call_intrinsic"(%34) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.fptoui.sat.i32.f64", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f64) -> i32
    "llvm.return"(%35) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_ceil_ui64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg16: f64):
    %32 = "llvm.intr.ceil"(%arg16) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    %33 = "llvm.call_intrinsic"(%32) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.fptoui.sat.i64.f64", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f64) -> i64
    "llvm.return"(%33) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f64)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "test_trunc_si32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg15: f64):
    %30 = "llvm.intr.trunc"(%arg15) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    %31 = "llvm.call_intrinsic"(%30) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.fptosi.sat.i32.f64", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f64) -> i32
    "llvm.return"(%31) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_trunc_si64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: f64):
    %28 = "llvm.intr.trunc"(%arg14) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    %29 = "llvm.call_intrinsic"(%28) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.fptosi.sat.i64.f64", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f64) -> i64
    "llvm.return"(%29) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f64)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "test_trunc_ui32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg13: f64):
    %26 = "llvm.intr.trunc"(%arg13) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    %27 = "llvm.call_intrinsic"(%26) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.fptoui.sat.i32.f64", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f64) -> i32
    "llvm.return"(%27) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_trunc_ui64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: f64):
    %24 = "llvm.intr.trunc"(%arg12) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    %25 = "llvm.call_intrinsic"(%24) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.fptoui.sat.i64.f64", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f64) -> i64
    "llvm.return"(%25) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f64)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "test_round_si32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg11: f64):
    %22 = "llvm.intr.round"(%arg11) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    %23 = "llvm.call_intrinsic"(%22) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.fptosi.sat.i32.f64", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f64) -> i32
    "llvm.return"(%23) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_round_si64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: f64):
    %20 = "llvm.intr.round"(%arg10) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    %21 = "llvm.call_intrinsic"(%20) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.fptosi.sat.i64.f64", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f64) -> i64
    "llvm.return"(%21) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f64)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "test_round_ui32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: f64):
    %18 = "llvm.intr.round"(%arg9) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    %19 = "llvm.call_intrinsic"(%18) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.fptoui.sat.i32.f64", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f64) -> i32
    "llvm.return"(%19) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_round_ui64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: f64):
    %16 = "llvm.intr.round"(%arg8) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    %17 = "llvm.call_intrinsic"(%16) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.fptoui.sat.i64.f64", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f64) -> i64
    "llvm.return"(%17) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f64)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "test_roundeven_si32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg7: f64):
    %14 = "llvm.intr.roundeven"(%arg7) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    %15 = "llvm.call_intrinsic"(%14) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.fptosi.sat.i32.f64", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f64) -> i32
    "llvm.return"(%15) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_roundeven_si64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: f64):
    %12 = "llvm.intr.roundeven"(%arg6) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    %13 = "llvm.call_intrinsic"(%12) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.fptosi.sat.i64.f64", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f64) -> i64
    "llvm.return"(%13) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f64)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "test_roundeven_ui32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: f64):
    %10 = "llvm.intr.roundeven"(%arg5) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    %11 = "llvm.call_intrinsic"(%10) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.fptoui.sat.i32.f64", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f64) -> i32
    "llvm.return"(%11) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_roundeven_ui64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: f64):
    %8 = "llvm.intr.roundeven"(%arg4) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    %9 = "llvm.call_intrinsic"(%8) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.fptoui.sat.i64.f64", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f64) -> i64
    "llvm.return"(%9) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f64)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "test_rint_si32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: f64):
    %6 = "llvm.intr.rint"(%arg3) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    %7 = "llvm.call_intrinsic"(%6) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.fptosi.sat.i32.f64", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f64) -> i32
    "llvm.return"(%7) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_rint_si64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: f64):
    %4 = "llvm.intr.rint"(%arg2) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    %5 = "llvm.call_intrinsic"(%4) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.fptosi.sat.i64.f64", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f64) -> i64
    "llvm.return"(%5) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f64)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "test_rint_ui32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: f64):
    %2 = "llvm.intr.rint"(%arg1) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    %3 = "llvm.call_intrinsic"(%2) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.fptoui.sat.i32.f64", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f64) -> i32
    "llvm.return"(%3) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_rint_ui64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: f64):
    %0 = "llvm.intr.rint"(%arg0) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    %1 = "llvm.call_intrinsic"(%0) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.fptoui.sat.i64.f64", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f64) -> i64
    "llvm.return"(%1) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f64)>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_unwind, passthrough = ["nocallback", "nocreateundeforpoison", "nofree", "nosync", "speculatable"], sym_name = "llvm.fptosi.sat.i32.f64", unnamed_addr = 0 : i64, visibility_ = 0 : i64, will_return}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (f64)>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_unwind, passthrough = ["nocallback", "nocreateundeforpoison", "nofree", "nosync", "speculatable"], sym_name = "llvm.fptosi.sat.i64.f64", unnamed_addr = 0 : i64, visibility_ = 0 : i64, will_return}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f64)>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_unwind, passthrough = ["nocallback", "nocreateundeforpoison", "nofree", "nosync", "speculatable"], sym_name = "llvm.fptoui.sat.i32.f64", unnamed_addr = 0 : i64, visibility_ = 0 : i64, will_return}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (f64)>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_unwind, passthrough = ["nocallback", "nocreateundeforpoison", "nofree", "nosync", "speculatable"], sym_name = "llvm.fptoui.sat.i64.f64", unnamed_addr = 0 : i64, visibility_ = 0 : i64, will_return}> ({
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

