"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (f16, f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fadd_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg57: f16, %arg58: f16):
    %72 = "llvm.fadd"(%arg57, %arg58) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16) -> f16
    "llvm.return"(%72) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (f16, f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fsub_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg55: f16, %arg56: f16):
    %71 = "llvm.fsub"(%arg55, %arg56) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16) -> f16
    "llvm.return"(%71) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (f16, f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fmul_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg53: f16, %arg54: f16):
    %70 = "llvm.fmul"(%arg53, %arg54) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16) -> f16
    "llvm.return"(%70) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (f16, f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fdiv_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg51: f16, %arg52: f16):
    %69 = "llvm.fdiv"(%arg51, %arg52) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16) -> f16
    "llvm.return"(%69) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fsqrt_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg50: f16):
    %68 = "llvm.intr.sqrt"(%arg50) <{fastmathFlags = #llvm.fastmath<none>}> : (f16) -> f16
    "llvm.return"(%68) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (f16, f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fsgnj_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg48: f16, %arg49: f16):
    %67 = "llvm.intr.copysign"(%arg48, %arg49) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16) -> f16
    "llvm.return"(%67) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f16, f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fneg_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg46: f16, %arg47: f16):
    %63 = "llvm.fadd"(%arg46, %arg46) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16) -> f16
    %64 = "llvm.fneg"(%63) <{fastmathFlags = #llvm.fastmath<none>}> : (f16) -> f16
    %65 = "llvm.fcmp"(%63, %64) <{fastmathFlags = #llvm.fastmath<none>, predicate = 1 : i64}> : (f16, f16) -> i1
    %66 = "llvm.zext"(%65) : (i1) -> i32
    "llvm.return"(%66) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (f16, f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fsgnjn_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg44: f16, %arg45: f16):
    %60 = "llvm.fadd"(%arg44, %arg45) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16) -> f16
    %61 = "llvm.fneg"(%60) <{fastmathFlags = #llvm.fastmath<none>}> : (f16) -> f16
    %62 = "llvm.intr.copysign"(%arg44, %61) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16) -> f16
    "llvm.return"(%62) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (f16, f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fabs_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg42: f16, %arg43: f16):
    %57 = "llvm.fadd"(%arg42, %arg43) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16) -> f16
    %58 = "llvm.intr.fabs"(%57) <{fastmathFlags = #llvm.fastmath<none>}> : (f16) -> f16
    %59 = "llvm.fadd"(%58, %57) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16) -> f16
    "llvm.return"(%59) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (f16, f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fmin_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg40: f16, %arg41: f16):
    %56 = "llvm.intr.minnum"(%arg40, %arg41) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16) -> f16
    "llvm.return"(%56) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (f16, f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fmax_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg38: f16, %arg39: f16):
    %55 = "llvm.intr.maxnum"(%arg38, %arg39) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16) -> f16
    "llvm.return"(%55) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (f16, f16, f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fmadd_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg35: f16, %arg36: f16, %arg37: f16):
    %54 = "llvm.intr.fma"(%arg35, %arg36, %arg37) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16, f16) -> f16
    "llvm.return"(%54) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (f16, f16, f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fmsub_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg32: f16, %arg33: f16, %arg34: f16):
    %49 = "llvm.mlir.constant"() <{value = 0.000000e+00 : f16}> : () -> f16
    %50 = "llvm.mlir.constant"() <{value = -0.000000e+00 : f16}> : () -> f16
    %51 = "llvm.fadd"(%49, %arg34) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16) -> f16
    %52 = "llvm.fsub"(%50, %51) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16) -> f16
    %53 = "llvm.intr.fma"(%arg32, %arg33, %52) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16, f16) -> f16
    "llvm.return"(%53) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (f16, f16, f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fnmadd_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg29: f16, %arg30: f16, %arg31: f16):
    %42 = "llvm.mlir.constant"() <{value = 0.000000e+00 : f16}> : () -> f16
    %43 = "llvm.mlir.constant"() <{value = -0.000000e+00 : f16}> : () -> f16
    %44 = "llvm.fadd"(%42, %arg29) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16) -> f16
    %45 = "llvm.fadd"(%42, %arg31) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16) -> f16
    %46 = "llvm.fsub"(%43, %44) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16) -> f16
    %47 = "llvm.fsub"(%43, %45) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16) -> f16
    %48 = "llvm.intr.fma"(%46, %arg30, %47) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16, f16) -> f16
    "llvm.return"(%48) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (f16, f16, f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fnmadd_h_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg26: f16, %arg27: f16, %arg28: f16):
    %35 = "llvm.mlir.constant"() <{value = 0.000000e+00 : f16}> : () -> f16
    %36 = "llvm.mlir.constant"() <{value = -0.000000e+00 : f16}> : () -> f16
    %37 = "llvm.fadd"(%35, %arg27) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16) -> f16
    %38 = "llvm.fadd"(%35, %arg28) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16) -> f16
    %39 = "llvm.fsub"(%36, %37) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16) -> f16
    %40 = "llvm.fsub"(%36, %38) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16) -> f16
    %41 = "llvm.intr.fma"(%arg26, %39, %40) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16, f16) -> f16
    "llvm.return"(%41) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (f16, f16, f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fnmadd_h_3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg23: f16, %arg24: f16, %arg25: f16):
    %33 = "llvm.intr.fma"(%arg23, %arg24, %arg25) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16, f16) -> f16
    %34 = "llvm.fneg"(%33) <{fastmathFlags = #llvm.fastmath<none>}> : (f16) -> f16
    "llvm.return"(%34) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (f16, f16, f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fnmadd_nsz", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg20: f16, %arg21: f16, %arg22: f16):
    %31 = "llvm.intr.fma"(%arg20, %arg21, %arg22) <{fastmathFlags = #llvm.fastmath<nsz>}> : (f16, f16, f16) -> f16
    %32 = "llvm.fneg"(%31) <{fastmathFlags = #llvm.fastmath<nsz>}> : (f16) -> f16
    "llvm.return"(%32) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (f16, f16, f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fnmsub_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg17: f16, %arg18: f16, %arg19: f16):
    %26 = "llvm.mlir.constant"() <{value = 0.000000e+00 : f16}> : () -> f16
    %27 = "llvm.mlir.constant"() <{value = -0.000000e+00 : f16}> : () -> f16
    %28 = "llvm.fadd"(%26, %arg17) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16) -> f16
    %29 = "llvm.fsub"(%27, %28) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16) -> f16
    %30 = "llvm.intr.fma"(%29, %arg18, %arg19) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16, f16) -> f16
    "llvm.return"(%30) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (f16, f16, f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fnmsub_h_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: f16, %arg15: f16, %arg16: f16):
    %21 = "llvm.mlir.constant"() <{value = 0.000000e+00 : f16}> : () -> f16
    %22 = "llvm.mlir.constant"() <{value = -0.000000e+00 : f16}> : () -> f16
    %23 = "llvm.fadd"(%21, %arg15) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16) -> f16
    %24 = "llvm.fsub"(%22, %23) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16) -> f16
    %25 = "llvm.intr.fma"(%arg14, %24, %arg16) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16, f16) -> f16
    "llvm.return"(%25) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (f16, f16, f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fmadd_h_contract", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg11: f16, %arg12: f16, %arg13: f16):
    %19 = "llvm.fmul"(%arg11, %arg12) <{fastmathFlags = #llvm.fastmath<contract>}> : (f16, f16) -> f16
    %20 = "llvm.fadd"(%19, %arg13) <{fastmathFlags = #llvm.fastmath<contract>}> : (f16, f16) -> f16
    "llvm.return"(%20) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (f16, f16, f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fmsub_h_contract", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: f16, %arg9: f16, %arg10: f16):
    %15 = "llvm.mlir.constant"() <{value = 0.000000e+00 : f16}> : () -> f16
    %16 = "llvm.fadd"(%15, %arg10) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16) -> f16
    %17 = "llvm.fmul"(%arg8, %arg9) <{fastmathFlags = #llvm.fastmath<contract>}> : (f16, f16) -> f16
    %18 = "llvm.fsub"(%17, %16) <{fastmathFlags = #llvm.fastmath<contract>}> : (f16, f16) -> f16
    "llvm.return"(%18) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (f16, f16, f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fnmadd_h_contract", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: f16, %arg6: f16, %arg7: f16):
    %8 = "llvm.mlir.constant"() <{value = 0.000000e+00 : f16}> : () -> f16
    %9 = "llvm.fadd"(%8, %arg5) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16) -> f16
    %10 = "llvm.fadd"(%8, %arg6) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16) -> f16
    %11 = "llvm.fadd"(%8, %arg7) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16) -> f16
    %12 = "llvm.fmul"(%9, %10) <{fastmathFlags = #llvm.fastmath<contract>}> : (f16, f16) -> f16
    %13 = "llvm.fneg"(%12) <{fastmathFlags = #llvm.fastmath<none>}> : (f16) -> f16
    %14 = "llvm.fsub"(%13, %11) <{fastmathFlags = #llvm.fastmath<contract>}> : (f16, f16) -> f16
    "llvm.return"(%14) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (f16, f16, f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fnmsub_h_contract", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: f16, %arg3: f16, %arg4: f16):
    %3 = "llvm.mlir.constant"() <{value = 0.000000e+00 : f16}> : () -> f16
    %4 = "llvm.fadd"(%3, %arg2) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16) -> f16
    %5 = "llvm.fadd"(%3, %arg3) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16) -> f16
    %6 = "llvm.fmul"(%4, %5) <{fastmathFlags = #llvm.fastmath<contract>}> : (f16, f16) -> f16
    %7 = "llvm.fsub"(%arg4, %6) <{fastmathFlags = #llvm.fastmath<contract>}> : (f16, f16) -> f16
    "llvm.return"(%7) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (f16, f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fsgnjx_f16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: f16, %arg1: f16):
    %0 = "llvm.mlir.constant"() <{value = 1.000000e+00 : f16}> : () -> f16
    %1 = "llvm.intr.copysign"(%0, %arg0) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16) -> f16
    %2 = "llvm.fmul"(%1, %arg1) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16) -> f16
    "llvm.return"(%2) : (f16) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

