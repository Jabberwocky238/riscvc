"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sqrt_f32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg66: f32):
    %55 = "llvm.intr.sqrt"(%arg66) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    "llvm.return"(%55) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "powi_f32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg64: f32, %arg65: i32):
    %54 = "llvm.intr.powi"(%arg64, %arg65) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, i32) -> f32
    "llvm.return"(%54) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sin_f32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg63: f32):
    %53 = "llvm.intr.sin"(%arg63) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    "llvm.return"(%53) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "cos_f32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg62: f32):
    %52 = "llvm.intr.cos"(%arg62) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    "llvm.return"(%52) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sincos_f32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg61: f32):
    %49 = "llvm.intr.sin"(%arg61) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    %50 = "llvm.intr.cos"(%arg61) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    %51 = "llvm.fadd"(%49, %50) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    "llvm.return"(%51) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32, f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "pow_f32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg59: f32, %arg60: f32):
    %48 = "llvm.intr.pow"(%arg59, %arg60) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    "llvm.return"(%48) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "exp_f32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg58: f32):
    %47 = "llvm.intr.exp"(%arg58) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    "llvm.return"(%47) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "exp2_f32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg57: f32):
    %46 = "llvm.intr.exp2"(%arg57) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    "llvm.return"(%46) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "exp10_f32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg56: f32):
    %45 = "llvm.intr.exp10"(%arg56) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    "llvm.return"(%45) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "log_f32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg55: f32):
    %44 = "llvm.intr.log"(%arg55) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    "llvm.return"(%44) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "log10_f32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg54: f32):
    %43 = "llvm.intr.log10"(%arg54) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    "llvm.return"(%43) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "log2_f32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg53: f32):
    %42 = "llvm.intr.log2"(%arg53) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    "llvm.return"(%42) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32, f32, f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fma_f32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg50: f32, %arg51: f32, %arg52: f32):
    %41 = "llvm.intr.fma"(%arg50, %arg51, %arg52) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32, f32) -> f32
    "llvm.return"(%41) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32, f32, f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fmuladd_f32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg47: f32, %arg48: f32, %arg49: f32):
    %40 = "llvm.intr.fmuladd"(%arg47, %arg48, %arg49) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32, f32) -> f32
    "llvm.return"(%40) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fabs_f32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg46: f32):
    %39 = "llvm.intr.fabs"(%arg46) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    "llvm.return"(%39) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32, f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "minnum_f32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg44: f32, %arg45: f32):
    %38 = "llvm.intr.minnum"(%arg44, %arg45) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    "llvm.return"(%38) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32, f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "maxnum_f32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg42: f32, %arg43: f32):
    %37 = "llvm.intr.maxnum"(%arg42, %arg43) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    "llvm.return"(%37) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32, f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "copysign_f32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg40: f32, %arg41: f32):
    %36 = "llvm.intr.copysign"(%arg40, %arg41) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    "llvm.return"(%36) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "floor_f32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg39: f32):
    %35 = "llvm.intr.floor"(%arg39) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    "llvm.return"(%35) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "ceil_f32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg38: f32):
    %34 = "llvm.intr.ceil"(%arg38) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    "llvm.return"(%34) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "trunc_f32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg37: f32):
    %33 = "llvm.intr.trunc"(%arg37) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    "llvm.return"(%33) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "rint_f32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg36: f32):
    %32 = "llvm.intr.rint"(%arg36) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    "llvm.return"(%32) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "nearbyint_f32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg35: f32):
    %31 = "llvm.intr.nearbyint"(%arg35) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    "llvm.return"(%31) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "round_f32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg34: f32):
    %30 = "llvm.intr.round"(%arg34) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    "llvm.return"(%30) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "roundeven_f32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg33: f32):
    %29 = "llvm.intr.roundeven"(%arg33) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    "llvm.return"(%29) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "lrint_f32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg32: f32):
    %28 = "llvm.intr.lrint"(%arg32) : (f32) -> i32
    "llvm.return"(%28) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "lround_f32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg31: f32):
    %27 = "llvm.intr.lround"(%arg31) : (f32) -> i32
    "llvm.return"(%27) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "lround_i32_f32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg30: f32):
    %26 = "llvm.intr.lround"(%arg30) : (f32) -> i32
    "llvm.return"(%26) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "llrint_f32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg29: f32):
    %25 = "llvm.intr.llrint"(%arg29) : (f32) -> i64
    "llvm.return"(%25) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "llround_f32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg28: f32):
    %24 = "llvm.intr.llround"(%arg28) : (f32) -> i64
    "llvm.return"(%24) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (f32)>, linkage = #llvm.linkage<external>, sym_name = "fpclass", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg27: f32):
    %23 = "llvm.intr.is.fpclass"(%arg27) <{bit = 639 : i32}> : (f32) -> i1
    "llvm.return"(%23) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (f32)>, linkage = #llvm.linkage<external>, sym_name = "isnan_fpclass", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg26: f32):
    %22 = "llvm.intr.is.fpclass"(%arg26) <{bit = 3 : i32}> : (f32) -> i1
    "llvm.return"(%22) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (f32)>, linkage = #llvm.linkage<external>, sym_name = "isqnan_fpclass", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg25: f32):
    %21 = "llvm.intr.is.fpclass"(%arg25) <{bit = 2 : i32}> : (f32) -> i1
    "llvm.return"(%21) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (f32)>, linkage = #llvm.linkage<external>, sym_name = "issnan_fpclass", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg24: f32):
    %20 = "llvm.intr.is.fpclass"(%arg24) <{bit = 1 : i32}> : (f32) -> i1
    "llvm.return"(%20) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (f32)>, linkage = #llvm.linkage<external>, sym_name = "isinf_fpclass", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg23: f32):
    %19 = "llvm.intr.is.fpclass"(%arg23) <{bit = 516 : i32}> : (f32) -> i1
    "llvm.return"(%19) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (f32)>, linkage = #llvm.linkage<external>, sym_name = "isposinf_fpclass", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg22: f32):
    %18 = "llvm.intr.is.fpclass"(%arg22) <{bit = 512 : i32}> : (f32) -> i1
    "llvm.return"(%18) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (f32)>, linkage = #llvm.linkage<external>, sym_name = "isneginf_fpclass", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg21: f32):
    %17 = "llvm.intr.is.fpclass"(%arg21) <{bit = 4 : i32}> : (f32) -> i1
    "llvm.return"(%17) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (f32)>, linkage = #llvm.linkage<external>, sym_name = "isfinite_fpclass", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg20: f32):
    %16 = "llvm.intr.is.fpclass"(%arg20) <{bit = 504 : i32}> : (f32) -> i1
    "llvm.return"(%16) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (f32)>, linkage = #llvm.linkage<external>, sym_name = "isposfinite_fpclass", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg19: f32):
    %15 = "llvm.intr.is.fpclass"(%arg19) <{bit = 448 : i32}> : (f32) -> i1
    "llvm.return"(%15) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (f32)>, linkage = #llvm.linkage<external>, sym_name = "isnegfinite_fpclass", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg18: f32):
    %14 = "llvm.intr.is.fpclass"(%arg18) <{bit = 56 : i32}> : (f32) -> i1
    "llvm.return"(%14) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (f32)>, linkage = #llvm.linkage<external>, sym_name = "isnotfinite_fpclass", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg17: f32):
    %13 = "llvm.intr.is.fpclass"(%arg17) <{bit = 519 : i32}> : (f32) -> i1
    "llvm.return"(%13) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "tan_f32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg16: f32):
    %12 = "llvm.intr.tan"(%arg16) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    "llvm.return"(%12) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32, f32)>, linkage = #llvm.linkage<external>, sym_name = "maximumnum_float", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: f32, %arg15: f32):
    %11 = "llvm.call_intrinsic"(%arg14, %arg15) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.maximumnum.f32", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (f32, f32) -> f32
    "llvm.return"(%11) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32, f32)>, linkage = #llvm.linkage<external>, sym_name = "minimumnum_float", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: f32, %arg13: f32):
    %10 = "llvm.call_intrinsic"(%arg12, %arg13) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.minimumnum.f32", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (f32, f32) -> f32
    "llvm.return"(%10) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.signext}], function_type = !llvm.func<f32 (f32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "ldexp_float", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: f32, %arg11: i32):
    %9 = "llvm.intr.ldexp"(%arg10, %arg11) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, i32) -> f32
    "llvm.return"(%9) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<struct<(f32, i32)> (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "frexp_float", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: f32):
    %8 = "llvm.intr.frexp"(%arg9) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> !llvm.struct<(f32, i32)>
    "llvm.return"(%8) : (!llvm.struct<(f32, i32)>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "asin_f32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: f32):
    %7 = "llvm.intr.asin"(%arg8) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    "llvm.return"(%7) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "acos_f32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg7: f32):
    %6 = "llvm.intr.acos"(%arg7) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    "llvm.return"(%6) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atan_f32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: f32):
    %5 = "llvm.intr.atan"(%arg6) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    "llvm.return"(%5) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32, f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atan2_f32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: f32, %arg5: f32):
    %4 = "llvm.intr.atan2"(%arg4, %arg5) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    "llvm.return"(%4) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sinh_f32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: f32):
    %3 = "llvm.intr.sinh"(%arg3) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    "llvm.return"(%3) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "cosh_f32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: f32):
    %2 = "llvm.intr.cosh"(%arg2) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    "llvm.return"(%2) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "tanh_f32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: f32):
    %1 = "llvm.intr.tanh"(%arg1) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    "llvm.return"(%1) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<struct<(f32, f32)> (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_modf_f32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: f32):
    %0 = "llvm.call_intrinsic"(%arg0) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.modf.f32", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f32) -> !llvm.struct<(f32, f32)>
    "llvm.return"(%0) : (!llvm.struct<(f32, f32)>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32, f32)>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_unwind, passthrough = ["nocallback", "nocreateundeforpoison", "nofree", "nosync", "speculatable"], sym_name = "llvm.maximumnum.f32", unnamed_addr = 0 : i64, visibility_ = 0 : i64, will_return}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32, f32)>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_unwind, passthrough = ["nocallback", "nocreateundeforpoison", "nofree", "nosync", "speculatable"], sym_name = "llvm.minimumnum.f32", unnamed_addr = 0 : i64, visibility_ = 0 : i64, will_return}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<struct<(f32, f32)> (f32)>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_unwind, passthrough = ["nocallback", "nofree", "nosync", "speculatable"], sym_name = "llvm.modf.f32", unnamed_addr = 0 : i64, visibility_ = 0 : i64, will_return}> ({
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

