"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sqrt_f64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg56: f64):
    %45 = "llvm.intr.sqrt"(%arg56) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    "llvm.return"(%45) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "powi_f64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg54: f64, %arg55: i32):
    %44 = "llvm.intr.powi"(%arg54, %arg55) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, i32) -> f64
    "llvm.return"(%44) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sin_f64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg53: f64):
    %43 = "llvm.intr.sin"(%arg53) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    "llvm.return"(%43) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "cos_f64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg52: f64):
    %42 = "llvm.intr.cos"(%arg52) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    "llvm.return"(%42) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sincos_f64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg51: f64):
    %39 = "llvm.intr.sin"(%arg51) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    %40 = "llvm.intr.cos"(%arg51) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    %41 = "llvm.fadd"(%39, %40) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.return"(%41) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64, f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "pow_f64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg49: f64, %arg50: f64):
    %38 = "llvm.intr.pow"(%arg49, %arg50) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.return"(%38) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "exp_f64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg48: f64):
    %37 = "llvm.intr.exp"(%arg48) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    "llvm.return"(%37) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "exp2_f64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg47: f64):
    %36 = "llvm.intr.exp2"(%arg47) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    "llvm.return"(%36) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "exp10_f64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg46: f64):
    %35 = "llvm.intr.exp10"(%arg46) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    "llvm.return"(%35) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "log_f64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg45: f64):
    %34 = "llvm.intr.log"(%arg45) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    "llvm.return"(%34) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "log10_f64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg44: f64):
    %33 = "llvm.intr.log10"(%arg44) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    "llvm.return"(%33) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "log2_f64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg43: f64):
    %32 = "llvm.intr.log2"(%arg43) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    "llvm.return"(%32) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64, f64, f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fma_f64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg40: f64, %arg41: f64, %arg42: f64):
    %31 = "llvm.intr.fma"(%arg40, %arg41, %arg42) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64, f64) -> f64
    "llvm.return"(%31) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64, f64, f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fmuladd_f64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg37: f64, %arg38: f64, %arg39: f64):
    %30 = "llvm.intr.fmuladd"(%arg37, %arg38, %arg39) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64, f64) -> f64
    "llvm.return"(%30) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fabs_f64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg36: f64):
    %29 = "llvm.intr.fabs"(%arg36) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    "llvm.return"(%29) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64, f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "minnum_f64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg34: f64, %arg35: f64):
    %28 = "llvm.intr.minnum"(%arg34, %arg35) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.return"(%28) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64, f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "maxnum_f64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg32: f64, %arg33: f64):
    %27 = "llvm.intr.maxnum"(%arg32, %arg33) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.return"(%27) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64, f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "copysign_f64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg30: f64, %arg31: f64):
    %26 = "llvm.intr.copysign"(%arg30, %arg31) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.return"(%26) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "floor_f64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg29: f64):
    %25 = "llvm.intr.floor"(%arg29) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    "llvm.return"(%25) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "ceil_f64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg28: f64):
    %24 = "llvm.intr.ceil"(%arg28) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    "llvm.return"(%24) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "trunc_f64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg27: f64):
    %23 = "llvm.intr.trunc"(%arg27) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    "llvm.return"(%23) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "rint_f64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg26: f64):
    %22 = "llvm.intr.rint"(%arg26) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    "llvm.return"(%22) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "nearbyint_f64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg25: f64):
    %21 = "llvm.intr.nearbyint"(%arg25) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    "llvm.return"(%21) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "round_f64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg24: f64):
    %20 = "llvm.intr.round"(%arg24) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    "llvm.return"(%20) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "roundeven_f64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg23: f64):
    %19 = "llvm.intr.roundeven"(%arg23) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    "llvm.return"(%19) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "lrint_f64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg22: f64):
    %18 = "llvm.intr.lrint"(%arg22) : (f64) -> i32
    "llvm.return"(%18) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "lround_f64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg21: f64):
    %17 = "llvm.intr.lround"(%arg21) : (f64) -> i32
    "llvm.return"(%17) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "lround_i32_f64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg20: f64):
    %16 = "llvm.intr.lround"(%arg20) : (f64) -> i32
    "llvm.return"(%16) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "llrint_f64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg19: f64):
    %15 = "llvm.intr.llrint"(%arg19) : (f64) -> i64
    "llvm.return"(%15) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "llround_f64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg18: f64):
    %14 = "llvm.intr.llround"(%arg18) : (f64) -> i64
    "llvm.return"(%14) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (f64)>, linkage = #llvm.linkage<external>, sym_name = "isnan_d_fpclass", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg17: f64):
    %13 = "llvm.intr.is.fpclass"(%arg17) <{bit = 3 : i32}> : (f64) -> i1
    "llvm.return"(%13) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "tan_f64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg16: f64):
    %12 = "llvm.intr.tan"(%arg16) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    "llvm.return"(%12) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64, f64)>, linkage = #llvm.linkage<external>, sym_name = "maximumnum_double", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: f64, %arg15: f64):
    %11 = "llvm.call_intrinsic"(%arg14, %arg15) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.maximumnum.f64", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (f64, f64) -> f64
    "llvm.return"(%11) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64, f64)>, linkage = #llvm.linkage<external>, sym_name = "minimumnum_double", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: f64, %arg13: f64):
    %10 = "llvm.call_intrinsic"(%arg12, %arg13) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.minimumnum.f64", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (f64, f64) -> f64
    "llvm.return"(%10) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.signext}], function_type = !llvm.func<f64 (f64, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "ldexp_double", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: f64, %arg11: i32):
    %9 = "llvm.intr.ldexp"(%arg10, %arg11) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, i32) -> f64
    "llvm.return"(%9) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<struct<(f64, i32)> (f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "frexp_double", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: f64):
    %8 = "llvm.intr.frexp"(%arg9) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> !llvm.struct<(f64, i32)>
    "llvm.return"(%8) : (!llvm.struct<(f64, i32)>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "asin_f64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: f64):
    %7 = "llvm.intr.asin"(%arg8) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    "llvm.return"(%7) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "acos_f64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg7: f64):
    %6 = "llvm.intr.acos"(%arg7) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    "llvm.return"(%6) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atan_f64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: f64):
    %5 = "llvm.intr.atan"(%arg6) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    "llvm.return"(%5) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64, f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atan2_f64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: f64, %arg5: f64):
    %4 = "llvm.intr.atan2"(%arg4, %arg5) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.return"(%4) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sinh_f64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: f64):
    %3 = "llvm.intr.sinh"(%arg3) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    "llvm.return"(%3) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "cosh_f64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: f64):
    %2 = "llvm.intr.cosh"(%arg2) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    "llvm.return"(%2) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "tanh_f64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: f64):
    %1 = "llvm.intr.tanh"(%arg1) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    "llvm.return"(%1) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<struct<(f64, f64)> (f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_modf_f64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: f64):
    %0 = "llvm.call_intrinsic"(%arg0) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.modf.f64", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f64) -> !llvm.struct<(f64, f64)>
    "llvm.return"(%0) : (!llvm.struct<(f64, f64)>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64, f64)>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_unwind, passthrough = ["nocallback", "nocreateundeforpoison", "nofree", "nosync", "speculatable"], sym_name = "llvm.maximumnum.f64", unnamed_addr = 0 : i64, visibility_ = 0 : i64, will_return}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64, f64)>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_unwind, passthrough = ["nocallback", "nocreateundeforpoison", "nofree", "nosync", "speculatable"], sym_name = "llvm.minimumnum.f64", unnamed_addr = 0 : i64, visibility_ = 0 : i64, will_return}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<struct<(f64, f64)> (f64)>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_unwind, passthrough = ["nocallback", "nofree", "nosync", "speculatable"], sym_name = "llvm.modf.f64", unnamed_addr = 0 : i64, visibility_ = 0 : i64, will_return}> ({
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

