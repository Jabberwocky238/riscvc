"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32, f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "select_fcmp_false", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg41: f32, %arg42: f32):
    %50 = "llvm.fcmp"(%arg41, %arg42) <{fastmathFlags = #llvm.fastmath<none>, predicate = 0 : i64}> : (f32, f32) -> i1
    %51 = "llvm.select"(%50, %arg41, %arg42) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, f32, f32) -> f32
    "llvm.return"(%51) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32, f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "select_fcmp_oeq", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg39: f32, %arg40: f32):
    %48 = "llvm.fcmp"(%arg39, %arg40) <{fastmathFlags = #llvm.fastmath<none>, predicate = 1 : i64}> : (f32, f32) -> i1
    %49 = "llvm.select"(%48, %arg39, %arg40) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, f32, f32) -> f32
    "llvm.return"(%49) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32, f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "select_fcmp_ogt", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg37: f32, %arg38: f32):
    %46 = "llvm.fcmp"(%arg37, %arg38) <{fastmathFlags = #llvm.fastmath<none>, predicate = 2 : i64}> : (f32, f32) -> i1
    %47 = "llvm.select"(%46, %arg37, %arg38) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, f32, f32) -> f32
    "llvm.return"(%47) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32, f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "select_fcmp_oge", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg35: f32, %arg36: f32):
    %44 = "llvm.fcmp"(%arg35, %arg36) <{fastmathFlags = #llvm.fastmath<none>, predicate = 3 : i64}> : (f32, f32) -> i1
    %45 = "llvm.select"(%44, %arg35, %arg36) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, f32, f32) -> f32
    "llvm.return"(%45) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32, f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "select_fcmp_olt", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg33: f32, %arg34: f32):
    %42 = "llvm.fcmp"(%arg33, %arg34) <{fastmathFlags = #llvm.fastmath<none>, predicate = 4 : i64}> : (f32, f32) -> i1
    %43 = "llvm.select"(%42, %arg33, %arg34) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, f32, f32) -> f32
    "llvm.return"(%43) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32, f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "select_fcmp_ole", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg31: f32, %arg32: f32):
    %40 = "llvm.fcmp"(%arg31, %arg32) <{fastmathFlags = #llvm.fastmath<none>, predicate = 5 : i64}> : (f32, f32) -> i1
    %41 = "llvm.select"(%40, %arg31, %arg32) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, f32, f32) -> f32
    "llvm.return"(%41) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32, f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "select_fcmp_one", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg29: f32, %arg30: f32):
    %38 = "llvm.fcmp"(%arg29, %arg30) <{fastmathFlags = #llvm.fastmath<none>, predicate = 6 : i64}> : (f32, f32) -> i1
    %39 = "llvm.select"(%38, %arg29, %arg30) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, f32, f32) -> f32
    "llvm.return"(%39) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32, f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "select_fcmp_ord", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg27: f32, %arg28: f32):
    %36 = "llvm.fcmp"(%arg27, %arg28) <{fastmathFlags = #llvm.fastmath<none>, predicate = 7 : i64}> : (f32, f32) -> i1
    %37 = "llvm.select"(%36, %arg27, %arg28) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, f32, f32) -> f32
    "llvm.return"(%37) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32, f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "select_fcmp_ueq", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg25: f32, %arg26: f32):
    %34 = "llvm.fcmp"(%arg25, %arg26) <{fastmathFlags = #llvm.fastmath<none>, predicate = 8 : i64}> : (f32, f32) -> i1
    %35 = "llvm.select"(%34, %arg25, %arg26) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, f32, f32) -> f32
    "llvm.return"(%35) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32, f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "select_fcmp_ugt", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg23: f32, %arg24: f32):
    %32 = "llvm.fcmp"(%arg23, %arg24) <{fastmathFlags = #llvm.fastmath<none>, predicate = 9 : i64}> : (f32, f32) -> i1
    %33 = "llvm.select"(%32, %arg23, %arg24) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, f32, f32) -> f32
    "llvm.return"(%33) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32, f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "select_fcmp_uge", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg21: f32, %arg22: f32):
    %30 = "llvm.fcmp"(%arg21, %arg22) <{fastmathFlags = #llvm.fastmath<none>, predicate = 10 : i64}> : (f32, f32) -> i1
    %31 = "llvm.select"(%30, %arg21, %arg22) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, f32, f32) -> f32
    "llvm.return"(%31) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32, f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "select_fcmp_ult", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg19: f32, %arg20: f32):
    %28 = "llvm.fcmp"(%arg19, %arg20) <{fastmathFlags = #llvm.fastmath<none>, predicate = 11 : i64}> : (f32, f32) -> i1
    %29 = "llvm.select"(%28, %arg19, %arg20) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, f32, f32) -> f32
    "llvm.return"(%29) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32, f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "select_fcmp_ule", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg17: f32, %arg18: f32):
    %26 = "llvm.fcmp"(%arg17, %arg18) <{fastmathFlags = #llvm.fastmath<none>, predicate = 12 : i64}> : (f32, f32) -> i1
    %27 = "llvm.select"(%26, %arg17, %arg18) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, f32, f32) -> f32
    "llvm.return"(%27) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32, f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "select_fcmp_une", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg15: f32, %arg16: f32):
    %24 = "llvm.fcmp"(%arg15, %arg16) <{fastmathFlags = #llvm.fastmath<none>, predicate = 13 : i64}> : (f32, f32) -> i1
    %25 = "llvm.select"(%24, %arg15, %arg16) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, f32, f32) -> f32
    "llvm.return"(%25) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32, f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "select_fcmp_uno", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg13: f32, %arg14: f32):
    %22 = "llvm.fcmp"(%arg13, %arg14) <{fastmathFlags = #llvm.fastmath<none>, predicate = 14 : i64}> : (f32, f32) -> i1
    %23 = "llvm.select"(%22, %arg13, %arg14) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, f32, f32) -> f32
    "llvm.return"(%23) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32, f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "select_fcmp_true", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg11: f32, %arg12: f32):
    %20 = "llvm.fcmp"(%arg11, %arg12) <{fastmathFlags = #llvm.fastmath<none>, predicate = 15 : i64}> : (f32, f32) -> i1
    %21 = "llvm.select"(%20, %arg11, %arg12) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, f32, f32) -> f32
    "llvm.return"(%21) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32, f32, i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "i32_select_fcmp_oeq", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg7: f32, %arg8: f32, %arg9: i32, %arg10: i32):
    %18 = "llvm.fcmp"(%arg7, %arg8) <{fastmathFlags = #llvm.fastmath<none>, predicate = 1 : i64}> : (f32, f32) -> i1
    %19 = "llvm.select"(%18, %arg9, %arg10) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%19) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32, f32)>, linkage = #llvm.linkage<external>, sym_name = "select_fcmp_oeq_1_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: f32, %arg6: f32):
    %14 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %15 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %16 = "llvm.fcmp"(%arg5, %arg6) <{fastmathFlags = #llvm.fastmath<fast>, predicate = 1 : i64}> : (f32, f32) -> i1
    %17 = "llvm.select"(%16, %14, %15) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%17) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32, f32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "select_fcmp_uge_negone_zero", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: f32, %arg4: f32):
    %10 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %11 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %12 = "llvm.fcmp"(%arg3, %arg4) <{fastmathFlags = #llvm.fastmath<none>, predicate = 9 : i64}> : (f32, f32) -> i1
    %13 = "llvm.select"(%12, %10, %11) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%13) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32, f32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "select_fcmp_uge_1_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: f32, %arg2: f32):
    %6 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %7 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %8 = "llvm.fcmp"(%arg1, %arg2) <{fastmathFlags = #llvm.fastmath<none>, predicate = 9 : i64}> : (f32, f32) -> i1
    %9 = "llvm.select"(%8, %6, %7) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%9) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.noundef}], function_type = !llvm.func<f32 (f32)>, linkage = #llvm.linkage<external>, sym_name = "CascadedSelect", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: f32):
    %0 = "llvm.mlir.constant"() <{value = 1.000000e+00 : f32}> : () -> f32
    %1 = "llvm.mlir.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %2 = "llvm.fcmp"(%arg0, %0) <{fastmathFlags = #llvm.fastmath<none>, predicate = 2 : i64}> : (f32, f32) -> i1
    %3 = "llvm.fcmp"(%arg0, %1) <{fastmathFlags = #llvm.fastmath<none>, predicate = 4 : i64}> : (f32, f32) -> i1
    %4 = "llvm.select"(%3, %1, %arg0) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, f32, f32) -> f32
    %5 = "llvm.select"(%2, %0, %4) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, f32, f32) -> f32
    "llvm.return"(%5) : (f32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

