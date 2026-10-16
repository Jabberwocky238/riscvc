"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<bf16 (bf16, bf16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fadd_bf16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg55: bf16, %arg56: bf16):
    %69 = "llvm.fadd"(%arg55, %arg56) <{fastmathFlags = #llvm.fastmath<none>}> : (bf16, bf16) -> bf16
    "llvm.return"(%69) : (bf16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<bf16 (bf16, bf16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fsub_bf16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg53: bf16, %arg54: bf16):
    %68 = "llvm.fsub"(%arg53, %arg54) <{fastmathFlags = #llvm.fastmath<none>}> : (bf16, bf16) -> bf16
    "llvm.return"(%68) : (bf16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<bf16 (bf16, bf16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fmul_bf16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg51: bf16, %arg52: bf16):
    %67 = "llvm.fmul"(%arg51, %arg52) <{fastmathFlags = #llvm.fastmath<none>}> : (bf16, bf16) -> bf16
    "llvm.return"(%67) : (bf16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<bf16 (bf16, bf16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fdiv_bf16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg49: bf16, %arg50: bf16):
    %66 = "llvm.fdiv"(%arg49, %arg50) <{fastmathFlags = #llvm.fastmath<none>}> : (bf16, bf16) -> bf16
    "llvm.return"(%66) : (bf16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<bf16 (bf16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fsqrt_bf16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg48: bf16):
    %65 = "llvm.intr.sqrt"(%arg48) <{fastmathFlags = #llvm.fastmath<none>}> : (bf16) -> bf16
    "llvm.return"(%65) : (bf16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<bf16 (bf16, bf16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fsgnj_bf16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg46: bf16, %arg47: bf16):
    %64 = "llvm.intr.copysign"(%arg46, %arg47) <{fastmathFlags = #llvm.fastmath<none>}> : (bf16, bf16) -> bf16
    "llvm.return"(%64) : (bf16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (bf16, bf16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fneg_bf16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg44: bf16, %arg45: bf16):
    %60 = "llvm.fadd"(%arg44, %arg44) <{fastmathFlags = #llvm.fastmath<none>}> : (bf16, bf16) -> bf16
    %61 = "llvm.fneg"(%60) <{fastmathFlags = #llvm.fastmath<none>}> : (bf16) -> bf16
    %62 = "llvm.fcmp"(%60, %61) <{fastmathFlags = #llvm.fastmath<none>, predicate = 1 : i64}> : (bf16, bf16) -> i1
    %63 = "llvm.zext"(%62) : (i1) -> i32
    "llvm.return"(%63) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<bf16 (bf16, bf16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fsgnjn_bf16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg42: bf16, %arg43: bf16):
    %57 = "llvm.fadd"(%arg42, %arg43) <{fastmathFlags = #llvm.fastmath<none>}> : (bf16, bf16) -> bf16
    %58 = "llvm.fneg"(%57) <{fastmathFlags = #llvm.fastmath<none>}> : (bf16) -> bf16
    %59 = "llvm.intr.copysign"(%arg42, %58) <{fastmathFlags = #llvm.fastmath<none>}> : (bf16, bf16) -> bf16
    "llvm.return"(%59) : (bf16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<bf16 (bf16, bf16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fabs_bf16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg40: bf16, %arg41: bf16):
    %54 = "llvm.fadd"(%arg40, %arg41) <{fastmathFlags = #llvm.fastmath<none>}> : (bf16, bf16) -> bf16
    %55 = "llvm.intr.fabs"(%54) <{fastmathFlags = #llvm.fastmath<none>}> : (bf16) -> bf16
    %56 = "llvm.fadd"(%55, %54) <{fastmathFlags = #llvm.fastmath<none>}> : (bf16, bf16) -> bf16
    "llvm.return"(%56) : (bf16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<bf16 (bf16, bf16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fmin_bf16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg38: bf16, %arg39: bf16):
    %53 = "llvm.intr.minnum"(%arg38, %arg39) <{fastmathFlags = #llvm.fastmath<none>}> : (bf16, bf16) -> bf16
    "llvm.return"(%53) : (bf16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<bf16 (bf16, bf16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fmax_bf16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg36: bf16, %arg37: bf16):
    %52 = "llvm.intr.maxnum"(%arg36, %arg37) <{fastmathFlags = #llvm.fastmath<none>}> : (bf16, bf16) -> bf16
    "llvm.return"(%52) : (bf16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<bf16 (bf16, bf16, bf16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fmadd_bf16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg33: bf16, %arg34: bf16, %arg35: bf16):
    %51 = "llvm.intr.fma"(%arg33, %arg34, %arg35) <{fastmathFlags = #llvm.fastmath<none>}> : (bf16, bf16, bf16) -> bf16
    "llvm.return"(%51) : (bf16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<bf16 (bf16, bf16, bf16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fmsub_bf16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg30: bf16, %arg31: bf16, %arg32: bf16):
    %46 = "llvm.mlir.constant"() <{value = 0.000000e+00 : bf16}> : () -> bf16
    %47 = "llvm.mlir.constant"() <{value = -0.000000e+00 : bf16}> : () -> bf16
    %48 = "llvm.fadd"(%46, %arg32) <{fastmathFlags = #llvm.fastmath<none>}> : (bf16, bf16) -> bf16
    %49 = "llvm.fsub"(%47, %48) <{fastmathFlags = #llvm.fastmath<none>}> : (bf16, bf16) -> bf16
    %50 = "llvm.intr.fma"(%arg30, %arg31, %49) <{fastmathFlags = #llvm.fastmath<none>}> : (bf16, bf16, bf16) -> bf16
    "llvm.return"(%50) : (bf16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<bf16 (bf16, bf16, bf16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fnmadd_bf16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg27: bf16, %arg28: bf16, %arg29: bf16):
    %39 = "llvm.mlir.constant"() <{value = 0.000000e+00 : bf16}> : () -> bf16
    %40 = "llvm.mlir.constant"() <{value = -0.000000e+00 : bf16}> : () -> bf16
    %41 = "llvm.fadd"(%39, %arg27) <{fastmathFlags = #llvm.fastmath<none>}> : (bf16, bf16) -> bf16
    %42 = "llvm.fadd"(%39, %arg29) <{fastmathFlags = #llvm.fastmath<none>}> : (bf16, bf16) -> bf16
    %43 = "llvm.fsub"(%40, %41) <{fastmathFlags = #llvm.fastmath<none>}> : (bf16, bf16) -> bf16
    %44 = "llvm.fsub"(%40, %42) <{fastmathFlags = #llvm.fastmath<none>}> : (bf16, bf16) -> bf16
    %45 = "llvm.intr.fma"(%43, %arg28, %44) <{fastmathFlags = #llvm.fastmath<none>}> : (bf16, bf16, bf16) -> bf16
    "llvm.return"(%45) : (bf16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<bf16 (bf16, bf16, bf16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fnmadd_s_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg24: bf16, %arg25: bf16, %arg26: bf16):
    %32 = "llvm.mlir.constant"() <{value = 0.000000e+00 : bf16}> : () -> bf16
    %33 = "llvm.mlir.constant"() <{value = -0.000000e+00 : bf16}> : () -> bf16
    %34 = "llvm.fadd"(%32, %arg25) <{fastmathFlags = #llvm.fastmath<none>}> : (bf16, bf16) -> bf16
    %35 = "llvm.fadd"(%32, %arg26) <{fastmathFlags = #llvm.fastmath<none>}> : (bf16, bf16) -> bf16
    %36 = "llvm.fsub"(%33, %34) <{fastmathFlags = #llvm.fastmath<none>}> : (bf16, bf16) -> bf16
    %37 = "llvm.fsub"(%33, %35) <{fastmathFlags = #llvm.fastmath<none>}> : (bf16, bf16) -> bf16
    %38 = "llvm.intr.fma"(%arg24, %36, %37) <{fastmathFlags = #llvm.fastmath<none>}> : (bf16, bf16, bf16) -> bf16
    "llvm.return"(%38) : (bf16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<bf16 (bf16, bf16, bf16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fnmadd_s_3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg21: bf16, %arg22: bf16, %arg23: bf16):
    %30 = "llvm.intr.fma"(%arg21, %arg22, %arg23) <{fastmathFlags = #llvm.fastmath<none>}> : (bf16, bf16, bf16) -> bf16
    %31 = "llvm.fneg"(%30) <{fastmathFlags = #llvm.fastmath<none>}> : (bf16) -> bf16
    "llvm.return"(%31) : (bf16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<bf16 (bf16, bf16, bf16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fnmadd_nsz", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg18: bf16, %arg19: bf16, %arg20: bf16):
    %28 = "llvm.intr.fma"(%arg18, %arg19, %arg20) <{fastmathFlags = #llvm.fastmath<nsz>}> : (bf16, bf16, bf16) -> bf16
    %29 = "llvm.fneg"(%28) <{fastmathFlags = #llvm.fastmath<nsz>}> : (bf16) -> bf16
    "llvm.return"(%29) : (bf16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<bf16 (bf16, bf16, bf16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fnmsub_bf16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg15: bf16, %arg16: bf16, %arg17: bf16):
    %23 = "llvm.mlir.constant"() <{value = 0.000000e+00 : bf16}> : () -> bf16
    %24 = "llvm.mlir.constant"() <{value = -0.000000e+00 : bf16}> : () -> bf16
    %25 = "llvm.fadd"(%23, %arg15) <{fastmathFlags = #llvm.fastmath<none>}> : (bf16, bf16) -> bf16
    %26 = "llvm.fsub"(%24, %25) <{fastmathFlags = #llvm.fastmath<none>}> : (bf16, bf16) -> bf16
    %27 = "llvm.intr.fma"(%26, %arg16, %arg17) <{fastmathFlags = #llvm.fastmath<none>}> : (bf16, bf16, bf16) -> bf16
    "llvm.return"(%27) : (bf16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<bf16 (bf16, bf16, bf16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fnmsub_bf16_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: bf16, %arg13: bf16, %arg14: bf16):
    %18 = "llvm.mlir.constant"() <{value = 0.000000e+00 : bf16}> : () -> bf16
    %19 = "llvm.mlir.constant"() <{value = -0.000000e+00 : bf16}> : () -> bf16
    %20 = "llvm.fadd"(%18, %arg13) <{fastmathFlags = #llvm.fastmath<none>}> : (bf16, bf16) -> bf16
    %21 = "llvm.fsub"(%19, %20) <{fastmathFlags = #llvm.fastmath<none>}> : (bf16, bf16) -> bf16
    %22 = "llvm.intr.fma"(%arg12, %21, %arg14) <{fastmathFlags = #llvm.fastmath<none>}> : (bf16, bf16, bf16) -> bf16
    "llvm.return"(%22) : (bf16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<bf16 (bf16, bf16, bf16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fmadd_bf16_contract", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: bf16, %arg10: bf16, %arg11: bf16):
    %16 = "llvm.fmul"(%arg9, %arg10) <{fastmathFlags = #llvm.fastmath<contract>}> : (bf16, bf16) -> bf16
    %17 = "llvm.fadd"(%16, %arg11) <{fastmathFlags = #llvm.fastmath<contract>}> : (bf16, bf16) -> bf16
    "llvm.return"(%17) : (bf16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<bf16 (bf16, bf16, bf16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fmsub_bf16_contract", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: bf16, %arg7: bf16, %arg8: bf16):
    %12 = "llvm.mlir.constant"() <{value = 0.000000e+00 : bf16}> : () -> bf16
    %13 = "llvm.fadd"(%12, %arg8) <{fastmathFlags = #llvm.fastmath<none>}> : (bf16, bf16) -> bf16
    %14 = "llvm.fmul"(%arg6, %arg7) <{fastmathFlags = #llvm.fastmath<contract>}> : (bf16, bf16) -> bf16
    %15 = "llvm.fsub"(%14, %13) <{fastmathFlags = #llvm.fastmath<contract>}> : (bf16, bf16) -> bf16
    "llvm.return"(%15) : (bf16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<bf16 (bf16, bf16, bf16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fnmadd_bf16_contract", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: bf16, %arg4: bf16, %arg5: bf16):
    %5 = "llvm.mlir.constant"() <{value = 0.000000e+00 : bf16}> : () -> bf16
    %6 = "llvm.fadd"(%5, %arg3) <{fastmathFlags = #llvm.fastmath<none>}> : (bf16, bf16) -> bf16
    %7 = "llvm.fadd"(%5, %arg4) <{fastmathFlags = #llvm.fastmath<none>}> : (bf16, bf16) -> bf16
    %8 = "llvm.fadd"(%5, %arg5) <{fastmathFlags = #llvm.fastmath<none>}> : (bf16, bf16) -> bf16
    %9 = "llvm.fmul"(%6, %7) <{fastmathFlags = #llvm.fastmath<contract>}> : (bf16, bf16) -> bf16
    %10 = "llvm.fneg"(%9) <{fastmathFlags = #llvm.fastmath<none>}> : (bf16) -> bf16
    %11 = "llvm.fsub"(%10, %8) <{fastmathFlags = #llvm.fastmath<contract>}> : (bf16, bf16) -> bf16
    "llvm.return"(%11) : (bf16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<bf16 (bf16, bf16, bf16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fnmsub_bf16_contract", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: bf16, %arg1: bf16, %arg2: bf16):
    %0 = "llvm.mlir.constant"() <{value = 0.000000e+00 : bf16}> : () -> bf16
    %1 = "llvm.fadd"(%0, %arg0) <{fastmathFlags = #llvm.fastmath<none>}> : (bf16, bf16) -> bf16
    %2 = "llvm.fadd"(%0, %arg1) <{fastmathFlags = #llvm.fastmath<none>}> : (bf16, bf16) -> bf16
    %3 = "llvm.fmul"(%1, %2) <{fastmathFlags = #llvm.fastmath<contract>}> : (bf16, bf16) -> bf16
    %4 = "llvm.fsub"(%arg2, %3) <{fastmathFlags = #llvm.fastmath<contract>}> : (bf16, bf16) -> bf16
    "llvm.return"(%4) : (bf16) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

