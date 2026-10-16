"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32, f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fadd_s", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg65: f32, %arg66: f32):
    %78 = "llvm.fadd"(%arg65, %arg66) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    "llvm.return"(%78) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32, f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fsub_s", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg63: f32, %arg64: f32):
    %77 = "llvm.fsub"(%arg63, %arg64) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    "llvm.return"(%77) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32, f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fmul_s", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg61: f32, %arg62: f32):
    %76 = "llvm.fmul"(%arg61, %arg62) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    "llvm.return"(%76) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32, f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fdiv_s", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg59: f32, %arg60: f32):
    %75 = "llvm.fdiv"(%arg59, %arg60) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    "llvm.return"(%75) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fsqrt_s", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg58: f32):
    %74 = "llvm.intr.sqrt"(%arg58) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    "llvm.return"(%74) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32, f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fsgnj_s", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg56: f32, %arg57: f32):
    %73 = "llvm.intr.copysign"(%arg56, %arg57) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    "llvm.return"(%73) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32, f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fneg_s", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg54: f32, %arg55: f32):
    %69 = "llvm.fadd"(%arg54, %arg54) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %70 = "llvm.fneg"(%69) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    %71 = "llvm.fcmp"(%69, %70) <{fastmathFlags = #llvm.fastmath<none>, predicate = 1 : i64}> : (f32, f32) -> i1
    %72 = "llvm.zext"(%71) : (i1) -> i32
    "llvm.return"(%72) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32, f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fsgnjn_s", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg52: f32, %arg53: f32):
    %66 = "llvm.fadd"(%arg52, %arg53) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %67 = "llvm.fneg"(%66) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    %68 = "llvm.intr.copysign"(%arg52, %67) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    "llvm.return"(%68) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32, f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fabs_s", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg50: f32, %arg51: f32):
    %63 = "llvm.fadd"(%arg50, %arg51) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %64 = "llvm.intr.fabs"(%63) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    %65 = "llvm.fadd"(%64, %63) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    "llvm.return"(%65) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32, f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fmin_s", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg48: f32, %arg49: f32):
    %62 = "llvm.intr.minnum"(%arg48, %arg49) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    "llvm.return"(%62) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32, f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fmax_s", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg46: f32, %arg47: f32):
    %61 = "llvm.intr.maxnum"(%arg46, %arg47) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    "llvm.return"(%61) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32, f32, f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fmadd_s", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg43: f32, %arg44: f32, %arg45: f32):
    %60 = "llvm.intr.fma"(%arg43, %arg44, %arg45) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32, f32) -> f32
    "llvm.return"(%60) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32, f32, f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fmsub_s", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg40: f32, %arg41: f32, %arg42: f32):
    %55 = "llvm.mlir.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %56 = "llvm.mlir.constant"() <{value = -0.000000e+00 : f32}> : () -> f32
    %57 = "llvm.fadd"(%55, %arg42) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %58 = "llvm.fsub"(%56, %57) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %59 = "llvm.intr.fma"(%arg40, %arg41, %58) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32, f32) -> f32
    "llvm.return"(%59) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32, f32, f32, f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fmsub_s_fmul_fneg", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg36: f32, %arg37: f32, %arg38: f32, %arg39: f32):
    %52 = "llvm.fneg"(%arg39) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    %53 = "llvm.fmul"(%arg38, %52) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %54 = "llvm.intr.fma"(%arg36, %arg37, %53) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32, f32) -> f32
    "llvm.return"(%54) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32, f32, f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fnmadd_s", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg33: f32, %arg34: f32, %arg35: f32):
    %45 = "llvm.mlir.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %46 = "llvm.mlir.constant"() <{value = -0.000000e+00 : f32}> : () -> f32
    %47 = "llvm.fadd"(%45, %arg33) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %48 = "llvm.fadd"(%45, %arg35) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %49 = "llvm.fsub"(%46, %47) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %50 = "llvm.fsub"(%46, %48) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %51 = "llvm.intr.fma"(%49, %arg34, %50) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32, f32) -> f32
    "llvm.return"(%51) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32, f32, f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fnmadd_s_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg30: f32, %arg31: f32, %arg32: f32):
    %38 = "llvm.mlir.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %39 = "llvm.mlir.constant"() <{value = -0.000000e+00 : f32}> : () -> f32
    %40 = "llvm.fadd"(%38, %arg31) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %41 = "llvm.fadd"(%38, %arg32) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %42 = "llvm.fsub"(%39, %40) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %43 = "llvm.fsub"(%39, %41) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %44 = "llvm.intr.fma"(%arg30, %42, %43) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32, f32) -> f32
    "llvm.return"(%44) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32, f32, f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fnmadd_s_3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg27: f32, %arg28: f32, %arg29: f32):
    %36 = "llvm.intr.fma"(%arg27, %arg28, %arg29) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32, f32) -> f32
    %37 = "llvm.fneg"(%36) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    "llvm.return"(%37) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32, f32, f32, f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fnmadd_s_fmul_fneg", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg23: f32, %arg24: f32, %arg25: f32, %arg26: f32):
    %33 = "llvm.fneg"(%arg23) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    %34 = "llvm.fmul"(%arg24, %33) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %35 = "llvm.intr.fma"(%arg25, %arg26, %34) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32, f32) -> f32
    "llvm.return"(%35) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32, f32, f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fnmadd_nsz", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg20: f32, %arg21: f32, %arg22: f32):
    %31 = "llvm.intr.fma"(%arg20, %arg21, %arg22) <{fastmathFlags = #llvm.fastmath<nsz>}> : (f32, f32, f32) -> f32
    %32 = "llvm.fneg"(%31) <{fastmathFlags = #llvm.fastmath<nsz>}> : (f32) -> f32
    "llvm.return"(%32) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32, f32, f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fnmsub_s", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg17: f32, %arg18: f32, %arg19: f32):
    %26 = "llvm.mlir.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %27 = "llvm.mlir.constant"() <{value = -0.000000e+00 : f32}> : () -> f32
    %28 = "llvm.fadd"(%26, %arg17) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %29 = "llvm.fsub"(%27, %28) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %30 = "llvm.intr.fma"(%29, %arg18, %arg19) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32, f32) -> f32
    "llvm.return"(%30) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32, f32, f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fnmsub_s_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: f32, %arg15: f32, %arg16: f32):
    %21 = "llvm.mlir.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %22 = "llvm.mlir.constant"() <{value = -0.000000e+00 : f32}> : () -> f32
    %23 = "llvm.fadd"(%21, %arg15) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %24 = "llvm.fsub"(%22, %23) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %25 = "llvm.intr.fma"(%arg14, %24, %arg16) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32, f32) -> f32
    "llvm.return"(%25) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32, f32, f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fmadd_s_contract", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg11: f32, %arg12: f32, %arg13: f32):
    %19 = "llvm.fmul"(%arg11, %arg12) <{fastmathFlags = #llvm.fastmath<contract>}> : (f32, f32) -> f32
    %20 = "llvm.fadd"(%19, %arg13) <{fastmathFlags = #llvm.fastmath<contract>}> : (f32, f32) -> f32
    "llvm.return"(%20) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32, f32, f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fmsub_s_contract", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: f32, %arg9: f32, %arg10: f32):
    %15 = "llvm.mlir.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %16 = "llvm.fadd"(%15, %arg10) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %17 = "llvm.fmul"(%arg8, %arg9) <{fastmathFlags = #llvm.fastmath<contract>}> : (f32, f32) -> f32
    %18 = "llvm.fsub"(%17, %16) <{fastmathFlags = #llvm.fastmath<contract>}> : (f32, f32) -> f32
    "llvm.return"(%18) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32, f32, f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fnmadd_s_contract", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: f32, %arg6: f32, %arg7: f32):
    %8 = "llvm.mlir.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %9 = "llvm.fadd"(%8, %arg5) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %10 = "llvm.fadd"(%8, %arg6) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %11 = "llvm.fadd"(%8, %arg7) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %12 = "llvm.fmul"(%9, %10) <{fastmathFlags = #llvm.fastmath<contract>}> : (f32, f32) -> f32
    %13 = "llvm.fneg"(%12) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    %14 = "llvm.fsub"(%13, %11) <{fastmathFlags = #llvm.fastmath<contract>}> : (f32, f32) -> f32
    "llvm.return"(%14) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32, f32, f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fnmsub_s_contract", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: f32, %arg3: f32, %arg4: f32):
    %3 = "llvm.mlir.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %4 = "llvm.fadd"(%3, %arg2) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %5 = "llvm.fadd"(%3, %arg3) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %6 = "llvm.fmul"(%4, %5) <{fastmathFlags = #llvm.fastmath<contract>}> : (f32, f32) -> f32
    %7 = "llvm.fsub"(%arg4, %6) <{fastmathFlags = #llvm.fastmath<contract>}> : (f32, f32) -> f32
    "llvm.return"(%7) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32, f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fsgnjx_f32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: f32, %arg1: f32):
    %0 = "llvm.mlir.constant"() <{value = 1.000000e+00 : f32}> : () -> f32
    %1 = "llvm.intr.copysign"(%0, %arg0) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %2 = "llvm.fmul"(%1, %arg1) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    "llvm.return"(%2) : (f32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

