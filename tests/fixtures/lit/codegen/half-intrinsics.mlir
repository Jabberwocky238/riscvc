"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sqrt_f16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg51: f16):
    %40 = "llvm.intr.sqrt"(%arg51) <{fastmathFlags = #llvm.fastmath<none>}> : (f16) -> f16
    "llvm.return"(%40) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (f16, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "powi_f16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg49: f16, %arg50: i32):
    %39 = "llvm.intr.powi"(%arg49, %arg50) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, i32) -> f16
    "llvm.return"(%39) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sin_f16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg48: f16):
    %38 = "llvm.intr.sin"(%arg48) <{fastmathFlags = #llvm.fastmath<none>}> : (f16) -> f16
    "llvm.return"(%38) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "cos_f16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg47: f16):
    %37 = "llvm.intr.cos"(%arg47) <{fastmathFlags = #llvm.fastmath<none>}> : (f16) -> f16
    "llvm.return"(%37) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sincos_f16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg46: f16):
    %34 = "llvm.intr.sin"(%arg46) <{fastmathFlags = #llvm.fastmath<none>}> : (f16) -> f16
    %35 = "llvm.intr.cos"(%arg46) <{fastmathFlags = #llvm.fastmath<none>}> : (f16) -> f16
    %36 = "llvm.fadd"(%34, %35) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16) -> f16
    "llvm.return"(%36) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (f16, f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "pow_f16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg44: f16, %arg45: f16):
    %33 = "llvm.intr.pow"(%arg44, %arg45) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16) -> f16
    "llvm.return"(%33) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "exp_f16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg43: f16):
    %32 = "llvm.intr.exp"(%arg43) <{fastmathFlags = #llvm.fastmath<none>}> : (f16) -> f16
    "llvm.return"(%32) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "exp2_f16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg42: f16):
    %31 = "llvm.intr.exp2"(%arg42) <{fastmathFlags = #llvm.fastmath<none>}> : (f16) -> f16
    "llvm.return"(%31) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "exp10_f16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg41: f16):
    %30 = "llvm.intr.exp10"(%arg41) <{fastmathFlags = #llvm.fastmath<none>}> : (f16) -> f16
    "llvm.return"(%30) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "log_f16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg40: f16):
    %29 = "llvm.intr.log"(%arg40) <{fastmathFlags = #llvm.fastmath<none>}> : (f16) -> f16
    "llvm.return"(%29) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "log10_f16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg39: f16):
    %28 = "llvm.intr.log10"(%arg39) <{fastmathFlags = #llvm.fastmath<none>}> : (f16) -> f16
    "llvm.return"(%28) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "log2_f16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg38: f16):
    %27 = "llvm.intr.log2"(%arg38) <{fastmathFlags = #llvm.fastmath<none>}> : (f16) -> f16
    "llvm.return"(%27) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (f16, f16, f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fma_f16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg35: f16, %arg36: f16, %arg37: f16):
    %26 = "llvm.intr.fma"(%arg35, %arg36, %arg37) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16, f16) -> f16
    "llvm.return"(%26) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (f16, f16, f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fmuladd_f16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg32: f16, %arg33: f16, %arg34: f16):
    %25 = "llvm.intr.fmuladd"(%arg32, %arg33, %arg34) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16, f16) -> f16
    "llvm.return"(%25) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fabs_f16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg31: f16):
    %24 = "llvm.intr.fabs"(%arg31) <{fastmathFlags = #llvm.fastmath<none>}> : (f16) -> f16
    "llvm.return"(%24) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (f16, f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "minnum_f16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg29: f16, %arg30: f16):
    %23 = "llvm.intr.minnum"(%arg29, %arg30) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16) -> f16
    "llvm.return"(%23) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (f16, f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "maxnum_f16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg27: f16, %arg28: f16):
    %22 = "llvm.intr.maxnum"(%arg27, %arg28) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16) -> f16
    "llvm.return"(%22) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (f16, f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "copysign_f16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg25: f16, %arg26: f16):
    %21 = "llvm.intr.copysign"(%arg25, %arg26) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16) -> f16
    "llvm.return"(%21) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "floor_f16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg24: f16):
    %20 = "llvm.intr.floor"(%arg24) <{fastmathFlags = #llvm.fastmath<none>}> : (f16) -> f16
    "llvm.return"(%20) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "ceil_f16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg23: f16):
    %19 = "llvm.intr.ceil"(%arg23) <{fastmathFlags = #llvm.fastmath<none>}> : (f16) -> f16
    "llvm.return"(%19) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "trunc_f16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg22: f16):
    %18 = "llvm.intr.trunc"(%arg22) <{fastmathFlags = #llvm.fastmath<none>}> : (f16) -> f16
    "llvm.return"(%18) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "rint_f16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg21: f16):
    %17 = "llvm.intr.rint"(%arg21) <{fastmathFlags = #llvm.fastmath<none>}> : (f16) -> f16
    "llvm.return"(%17) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "nearbyint_f16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg20: f16):
    %16 = "llvm.intr.nearbyint"(%arg20) <{fastmathFlags = #llvm.fastmath<none>}> : (f16) -> f16
    "llvm.return"(%16) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "round_f16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg19: f16):
    %15 = "llvm.intr.round"(%arg19) <{fastmathFlags = #llvm.fastmath<none>}> : (f16) -> f16
    "llvm.return"(%15) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "roundeven_f16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg18: f16):
    %14 = "llvm.intr.roundeven"(%arg18) <{fastmathFlags = #llvm.fastmath<none>}> : (f16) -> f16
    "llvm.return"(%14) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (f16)>, linkage = #llvm.linkage<external>, sym_name = "isnan_d_fpclass", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg17: f16):
    %13 = "llvm.intr.is.fpclass"(%arg17) <{bit = 3 : i32}> : (f16) -> i1
    "llvm.return"(%13) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "tan_f16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg16: f16):
    %12 = "llvm.intr.tan"(%arg16) <{fastmathFlags = #llvm.fastmath<none>}> : (f16) -> f16
    "llvm.return"(%12) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (f16, f16)>, linkage = #llvm.linkage<external>, sym_name = "maximumnum_half", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: f16, %arg15: f16):
    %11 = "llvm.call_intrinsic"(%arg14, %arg15) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.maximumnum.f16", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (f16, f16) -> f16
    "llvm.return"(%11) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (f16, f16)>, linkage = #llvm.linkage<external>, sym_name = "minimumnum_half", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: f16, %arg13: f16):
    %10 = "llvm.call_intrinsic"(%arg12, %arg13) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.minimumnum.f16", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (f16, f16) -> f16
    "llvm.return"(%10) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.signext}], function_type = !llvm.func<f16 (f16, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "ldexp_half", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: f16, %arg11: i32):
    %9 = "llvm.intr.ldexp"(%arg10, %arg11) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, i32) -> f16
    "llvm.return"(%9) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<struct<(f16, i32)> (f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "frexp_half", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: f16):
    %8 = "llvm.intr.frexp"(%arg9) <{fastmathFlags = #llvm.fastmath<none>}> : (f16) -> !llvm.struct<(f16, i32)>
    "llvm.return"(%8) : (!llvm.struct<(f16, i32)>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "asin_f16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: f16):
    %7 = "llvm.intr.asin"(%arg8) <{fastmathFlags = #llvm.fastmath<none>}> : (f16) -> f16
    "llvm.return"(%7) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "acos_f16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg7: f16):
    %6 = "llvm.intr.acos"(%arg7) <{fastmathFlags = #llvm.fastmath<none>}> : (f16) -> f16
    "llvm.return"(%6) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atan_f16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: f16):
    %5 = "llvm.intr.atan"(%arg6) <{fastmathFlags = #llvm.fastmath<none>}> : (f16) -> f16
    "llvm.return"(%5) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (f16, f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atan2_f16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: f16, %arg5: f16):
    %4 = "llvm.intr.atan2"(%arg4, %arg5) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16) -> f16
    "llvm.return"(%4) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sinh_f16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: f16):
    %3 = "llvm.intr.sinh"(%arg3) <{fastmathFlags = #llvm.fastmath<none>}> : (f16) -> f16
    "llvm.return"(%3) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "cosh_f16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: f16):
    %2 = "llvm.intr.cosh"(%arg2) <{fastmathFlags = #llvm.fastmath<none>}> : (f16) -> f16
    "llvm.return"(%2) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "tanh_f16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: f16):
    %1 = "llvm.intr.tanh"(%arg1) <{fastmathFlags = #llvm.fastmath<none>}> : (f16) -> f16
    "llvm.return"(%1) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<struct<(f16, f16)> (f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_modf_f16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: f16):
    %0 = "llvm.call_intrinsic"(%arg0) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.modf.f16", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f16) -> !llvm.struct<(f16, f16)>
    "llvm.return"(%0) : (!llvm.struct<(f16, f16)>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (f16, f16)>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_unwind, passthrough = ["nocallback", "nocreateundeforpoison", "nofree", "nosync", "speculatable"], sym_name = "llvm.maximumnum.f16", unnamed_addr = 0 : i64, visibility_ = 0 : i64, will_return}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (f16, f16)>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_unwind, passthrough = ["nocallback", "nocreateundeforpoison", "nofree", "nosync", "speculatable"], sym_name = "llvm.minimumnum.f16", unnamed_addr = 0 : i64, visibility_ = 0 : i64, will_return}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<struct<(f16, f16)> (f16)>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_unwind, passthrough = ["nocallback", "nofree", "nosync", "speculatable"], sym_name = "llvm.modf.f16", unnamed_addr = 0 : i64, visibility_ = 0 : i64, will_return}> ({
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

