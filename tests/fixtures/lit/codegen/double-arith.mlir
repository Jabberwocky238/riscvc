"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64, f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fadd_d", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg65: f64, %arg66: f64):
    %78 = "llvm.fadd"(%arg65, %arg66) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.return"(%78) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64, f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fsub_d", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg63: f64, %arg64: f64):
    %77 = "llvm.fsub"(%arg63, %arg64) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.return"(%77) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64, f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fmul_d", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg61: f64, %arg62: f64):
    %76 = "llvm.fmul"(%arg61, %arg62) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.return"(%76) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64, f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fdiv_d", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg59: f64, %arg60: f64):
    %75 = "llvm.fdiv"(%arg59, %arg60) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.return"(%75) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fsqrt_d", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg58: f64):
    %74 = "llvm.intr.sqrt"(%arg58) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    "llvm.return"(%74) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64, f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fsgnj_d", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg56: f64, %arg57: f64):
    %73 = "llvm.intr.copysign"(%arg56, %arg57) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.return"(%73) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f64, f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fneg_d", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg54: f64, %arg55: f64):
    %69 = "llvm.fadd"(%arg54, %arg54) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %70 = "llvm.fneg"(%69) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    %71 = "llvm.fcmp"(%69, %70) <{fastmathFlags = #llvm.fastmath<none>, predicate = 1 : i64}> : (f64, f64) -> i1
    %72 = "llvm.zext"(%71) : (i1) -> i32
    "llvm.return"(%72) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64, f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fsgnjn_d", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg52: f64, %arg53: f64):
    %66 = "llvm.mlir.constant"() <{value = -0.000000e+00 : f64}> : () -> f64
    %67 = "llvm.fsub"(%66, %arg53) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %68 = "llvm.intr.copysign"(%arg52, %67) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.return"(%68) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64, f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fabs_d", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg50: f64, %arg51: f64):
    %63 = "llvm.fadd"(%arg50, %arg51) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %64 = "llvm.intr.fabs"(%63) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    %65 = "llvm.fadd"(%64, %63) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.return"(%65) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64, f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fmin_d", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg48: f64, %arg49: f64):
    %62 = "llvm.intr.minnum"(%arg48, %arg49) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.return"(%62) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64, f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fmax_d", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg46: f64, %arg47: f64):
    %61 = "llvm.intr.maxnum"(%arg46, %arg47) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.return"(%61) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64, f64, f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fmadd_d", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg43: f64, %arg44: f64, %arg45: f64):
    %60 = "llvm.intr.fma"(%arg43, %arg44, %arg45) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64, f64) -> f64
    "llvm.return"(%60) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64, f64, f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fmsub_d", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg40: f64, %arg41: f64, %arg42: f64):
    %55 = "llvm.mlir.constant"() <{value = 0.000000e+00 : f64}> : () -> f64
    %56 = "llvm.mlir.constant"() <{value = -0.000000e+00 : f64}> : () -> f64
    %57 = "llvm.fadd"(%55, %arg42) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %58 = "llvm.fsub"(%56, %57) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %59 = "llvm.intr.fma"(%arg40, %arg41, %58) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64, f64) -> f64
    "llvm.return"(%59) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64, f64, f64, f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fmsub_d_fmul_fneg", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg36: f64, %arg37: f64, %arg38: f64, %arg39: f64):
    %52 = "llvm.fneg"(%arg39) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    %53 = "llvm.fmul"(%arg38, %52) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %54 = "llvm.intr.fma"(%arg36, %arg37, %53) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64, f64) -> f64
    "llvm.return"(%54) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64, f64, f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fnmadd_d", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg33: f64, %arg34: f64, %arg35: f64):
    %45 = "llvm.mlir.constant"() <{value = 0.000000e+00 : f64}> : () -> f64
    %46 = "llvm.mlir.constant"() <{value = -0.000000e+00 : f64}> : () -> f64
    %47 = "llvm.fadd"(%45, %arg33) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %48 = "llvm.fadd"(%45, %arg35) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %49 = "llvm.fsub"(%46, %47) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %50 = "llvm.fsub"(%46, %48) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %51 = "llvm.intr.fma"(%49, %arg34, %50) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64, f64) -> f64
    "llvm.return"(%51) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64, f64, f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fnmadd_d_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg30: f64, %arg31: f64, %arg32: f64):
    %38 = "llvm.mlir.constant"() <{value = 0.000000e+00 : f64}> : () -> f64
    %39 = "llvm.mlir.constant"() <{value = -0.000000e+00 : f64}> : () -> f64
    %40 = "llvm.fadd"(%38, %arg31) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %41 = "llvm.fadd"(%38, %arg32) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %42 = "llvm.fsub"(%39, %40) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %43 = "llvm.fsub"(%39, %41) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %44 = "llvm.intr.fma"(%arg30, %42, %43) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64, f64) -> f64
    "llvm.return"(%44) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64, f64, f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fnmadd_d_3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg27: f64, %arg28: f64, %arg29: f64):
    %36 = "llvm.intr.fma"(%arg27, %arg28, %arg29) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64, f64) -> f64
    %37 = "llvm.fneg"(%36) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    "llvm.return"(%37) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64, f64, f64, f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fnmadd_d_fmul_fneg", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg23: f64, %arg24: f64, %arg25: f64, %arg26: f64):
    %33 = "llvm.fneg"(%arg23) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    %34 = "llvm.fmul"(%arg24, %33) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %35 = "llvm.intr.fma"(%arg25, %arg26, %34) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64, f64) -> f64
    "llvm.return"(%35) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64, f64, f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fnmadd_nsz", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg20: f64, %arg21: f64, %arg22: f64):
    %31 = "llvm.intr.fma"(%arg20, %arg21, %arg22) <{fastmathFlags = #llvm.fastmath<nsz>}> : (f64, f64, f64) -> f64
    %32 = "llvm.fneg"(%31) <{fastmathFlags = #llvm.fastmath<nsz>}> : (f64) -> f64
    "llvm.return"(%32) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64, f64, f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fnmsub_d", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg17: f64, %arg18: f64, %arg19: f64):
    %26 = "llvm.mlir.constant"() <{value = 0.000000e+00 : f64}> : () -> f64
    %27 = "llvm.mlir.constant"() <{value = -0.000000e+00 : f64}> : () -> f64
    %28 = "llvm.fadd"(%26, %arg17) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %29 = "llvm.fsub"(%27, %28) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %30 = "llvm.intr.fma"(%29, %arg18, %arg19) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64, f64) -> f64
    "llvm.return"(%30) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64, f64, f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fnmsub_d_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: f64, %arg15: f64, %arg16: f64):
    %21 = "llvm.mlir.constant"() <{value = 0.000000e+00 : f64}> : () -> f64
    %22 = "llvm.mlir.constant"() <{value = -0.000000e+00 : f64}> : () -> f64
    %23 = "llvm.fadd"(%21, %arg15) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %24 = "llvm.fsub"(%22, %23) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %25 = "llvm.intr.fma"(%arg14, %24, %arg16) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64, f64) -> f64
    "llvm.return"(%25) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64, f64, f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fmadd_d_contract", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg11: f64, %arg12: f64, %arg13: f64):
    %19 = "llvm.fmul"(%arg11, %arg12) <{fastmathFlags = #llvm.fastmath<contract>}> : (f64, f64) -> f64
    %20 = "llvm.fadd"(%19, %arg13) <{fastmathFlags = #llvm.fastmath<contract>}> : (f64, f64) -> f64
    "llvm.return"(%20) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64, f64, f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fmsub_d_contract", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: f64, %arg9: f64, %arg10: f64):
    %15 = "llvm.mlir.constant"() <{value = 0.000000e+00 : f64}> : () -> f64
    %16 = "llvm.fadd"(%15, %arg10) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %17 = "llvm.fmul"(%arg8, %arg9) <{fastmathFlags = #llvm.fastmath<contract>}> : (f64, f64) -> f64
    %18 = "llvm.fsub"(%17, %16) <{fastmathFlags = #llvm.fastmath<contract>}> : (f64, f64) -> f64
    "llvm.return"(%18) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64, f64, f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fnmadd_d_contract", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: f64, %arg6: f64, %arg7: f64):
    %8 = "llvm.mlir.constant"() <{value = 0.000000e+00 : f64}> : () -> f64
    %9 = "llvm.fadd"(%8, %arg5) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %10 = "llvm.fadd"(%8, %arg6) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %11 = "llvm.fadd"(%8, %arg7) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %12 = "llvm.fmul"(%9, %10) <{fastmathFlags = #llvm.fastmath<contract>}> : (f64, f64) -> f64
    %13 = "llvm.fneg"(%12) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    %14 = "llvm.fsub"(%13, %11) <{fastmathFlags = #llvm.fastmath<contract>}> : (f64, f64) -> f64
    "llvm.return"(%14) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64, f64, f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fnmsub_d_contract", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: f64, %arg3: f64, %arg4: f64):
    %3 = "llvm.mlir.constant"() <{value = 0.000000e+00 : f64}> : () -> f64
    %4 = "llvm.fadd"(%3, %arg2) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %5 = "llvm.fadd"(%3, %arg3) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %6 = "llvm.fmul"(%4, %5) <{fastmathFlags = #llvm.fastmath<contract>}> : (f64, f64) -> f64
    %7 = "llvm.fsub"(%arg4, %6) <{fastmathFlags = #llvm.fastmath<contract>}> : (f64, f64) -> f64
    "llvm.return"(%7) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64, f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fsgnjx_f64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: f64, %arg1: f64):
    %0 = "llvm.mlir.constant"() <{value = 1.000000e+00 : f64}> : () -> f64
    %1 = "llvm.intr.copysign"(%0, %arg0) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %2 = "llvm.fmul"(%1, %arg1) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.return"(%2) : (f64) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

