"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<bf16 (bf16, bf16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "select_fcmp_false", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg40: bf16, %arg41: bf16):
    %44 = "llvm.fcmp"(%arg40, %arg41) <{fastmathFlags = #llvm.fastmath<none>, predicate = 0 : i64}> : (bf16, bf16) -> i1
    %45 = "llvm.select"(%44, %arg40, %arg41) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, bf16, bf16) -> bf16
    "llvm.return"(%45) : (bf16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<bf16 (bf16, bf16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "select_fcmp_oeq", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg38: bf16, %arg39: bf16):
    %42 = "llvm.fcmp"(%arg38, %arg39) <{fastmathFlags = #llvm.fastmath<none>, predicate = 1 : i64}> : (bf16, bf16) -> i1
    %43 = "llvm.select"(%42, %arg38, %arg39) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, bf16, bf16) -> bf16
    "llvm.return"(%43) : (bf16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<bf16 (bf16, bf16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "select_fcmp_ogt", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg36: bf16, %arg37: bf16):
    %40 = "llvm.fcmp"(%arg36, %arg37) <{fastmathFlags = #llvm.fastmath<none>, predicate = 2 : i64}> : (bf16, bf16) -> i1
    %41 = "llvm.select"(%40, %arg36, %arg37) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, bf16, bf16) -> bf16
    "llvm.return"(%41) : (bf16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<bf16 (bf16, bf16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "select_fcmp_oge", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg34: bf16, %arg35: bf16):
    %38 = "llvm.fcmp"(%arg34, %arg35) <{fastmathFlags = #llvm.fastmath<none>, predicate = 3 : i64}> : (bf16, bf16) -> i1
    %39 = "llvm.select"(%38, %arg34, %arg35) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, bf16, bf16) -> bf16
    "llvm.return"(%39) : (bf16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<bf16 (bf16, bf16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "select_fcmp_olt", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg32: bf16, %arg33: bf16):
    %36 = "llvm.fcmp"(%arg32, %arg33) <{fastmathFlags = #llvm.fastmath<none>, predicate = 4 : i64}> : (bf16, bf16) -> i1
    %37 = "llvm.select"(%36, %arg32, %arg33) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, bf16, bf16) -> bf16
    "llvm.return"(%37) : (bf16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<bf16 (bf16, bf16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "select_fcmp_ole", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg30: bf16, %arg31: bf16):
    %34 = "llvm.fcmp"(%arg30, %arg31) <{fastmathFlags = #llvm.fastmath<none>, predicate = 5 : i64}> : (bf16, bf16) -> i1
    %35 = "llvm.select"(%34, %arg30, %arg31) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, bf16, bf16) -> bf16
    "llvm.return"(%35) : (bf16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<bf16 (bf16, bf16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "select_fcmp_one", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg28: bf16, %arg29: bf16):
    %32 = "llvm.fcmp"(%arg28, %arg29) <{fastmathFlags = #llvm.fastmath<none>, predicate = 6 : i64}> : (bf16, bf16) -> i1
    %33 = "llvm.select"(%32, %arg28, %arg29) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, bf16, bf16) -> bf16
    "llvm.return"(%33) : (bf16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<bf16 (bf16, bf16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "select_fcmp_ord", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg26: bf16, %arg27: bf16):
    %30 = "llvm.fcmp"(%arg26, %arg27) <{fastmathFlags = #llvm.fastmath<none>, predicate = 7 : i64}> : (bf16, bf16) -> i1
    %31 = "llvm.select"(%30, %arg26, %arg27) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, bf16, bf16) -> bf16
    "llvm.return"(%31) : (bf16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<bf16 (bf16, bf16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "select_fcmp_ueq", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg24: bf16, %arg25: bf16):
    %28 = "llvm.fcmp"(%arg24, %arg25) <{fastmathFlags = #llvm.fastmath<none>, predicate = 8 : i64}> : (bf16, bf16) -> i1
    %29 = "llvm.select"(%28, %arg24, %arg25) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, bf16, bf16) -> bf16
    "llvm.return"(%29) : (bf16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<bf16 (bf16, bf16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "select_fcmp_ugt", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg22: bf16, %arg23: bf16):
    %26 = "llvm.fcmp"(%arg22, %arg23) <{fastmathFlags = #llvm.fastmath<none>, predicate = 9 : i64}> : (bf16, bf16) -> i1
    %27 = "llvm.select"(%26, %arg22, %arg23) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, bf16, bf16) -> bf16
    "llvm.return"(%27) : (bf16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<bf16 (bf16, bf16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "select_fcmp_uge", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg20: bf16, %arg21: bf16):
    %24 = "llvm.fcmp"(%arg20, %arg21) <{fastmathFlags = #llvm.fastmath<none>, predicate = 10 : i64}> : (bf16, bf16) -> i1
    %25 = "llvm.select"(%24, %arg20, %arg21) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, bf16, bf16) -> bf16
    "llvm.return"(%25) : (bf16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<bf16 (bf16, bf16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "select_fcmp_ult", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg18: bf16, %arg19: bf16):
    %22 = "llvm.fcmp"(%arg18, %arg19) <{fastmathFlags = #llvm.fastmath<none>, predicate = 11 : i64}> : (bf16, bf16) -> i1
    %23 = "llvm.select"(%22, %arg18, %arg19) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, bf16, bf16) -> bf16
    "llvm.return"(%23) : (bf16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<bf16 (bf16, bf16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "select_fcmp_ule", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg16: bf16, %arg17: bf16):
    %20 = "llvm.fcmp"(%arg16, %arg17) <{fastmathFlags = #llvm.fastmath<none>, predicate = 12 : i64}> : (bf16, bf16) -> i1
    %21 = "llvm.select"(%20, %arg16, %arg17) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, bf16, bf16) -> bf16
    "llvm.return"(%21) : (bf16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<bf16 (bf16, bf16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "select_fcmp_une", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: bf16, %arg15: bf16):
    %18 = "llvm.fcmp"(%arg14, %arg15) <{fastmathFlags = #llvm.fastmath<none>, predicate = 13 : i64}> : (bf16, bf16) -> i1
    %19 = "llvm.select"(%18, %arg14, %arg15) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, bf16, bf16) -> bf16
    "llvm.return"(%19) : (bf16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<bf16 (bf16, bf16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "select_fcmp_uno", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: bf16, %arg13: bf16):
    %16 = "llvm.fcmp"(%arg12, %arg13) <{fastmathFlags = #llvm.fastmath<none>, predicate = 14 : i64}> : (bf16, bf16) -> i1
    %17 = "llvm.select"(%16, %arg12, %arg13) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, bf16, bf16) -> bf16
    "llvm.return"(%17) : (bf16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<bf16 (bf16, bf16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "select_fcmp_true", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: bf16, %arg11: bf16):
    %14 = "llvm.fcmp"(%arg10, %arg11) <{fastmathFlags = #llvm.fastmath<none>, predicate = 15 : i64}> : (bf16, bf16) -> i1
    %15 = "llvm.select"(%14, %arg10, %arg11) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, bf16, bf16) -> bf16
    "llvm.return"(%15) : (bf16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (bf16, bf16, i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "i32_select_fcmp_oeq", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: bf16, %arg7: bf16, %arg8: i32, %arg9: i32):
    %12 = "llvm.fcmp"(%arg6, %arg7) <{fastmathFlags = #llvm.fastmath<none>, predicate = 1 : i64}> : (bf16, bf16) -> i1
    %13 = "llvm.select"(%12, %arg8, %arg9) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%13) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (bf16, bf16)>, linkage = #llvm.linkage<external>, sym_name = "select_fcmp_oeq_1_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: bf16, %arg5: bf16):
    %8 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %9 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %10 = "llvm.fcmp"(%arg4, %arg5) <{fastmathFlags = #llvm.fastmath<fast>, predicate = 1 : i64}> : (bf16, bf16) -> i1
    %11 = "llvm.select"(%10, %8, %9) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%11) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (bf16, bf16)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "select_fcmp_uge_negone_zero", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: bf16, %arg3: bf16):
    %4 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %5 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %6 = "llvm.fcmp"(%arg2, %arg3) <{fastmathFlags = #llvm.fastmath<none>, predicate = 9 : i64}> : (bf16, bf16) -> i1
    %7 = "llvm.select"(%6, %4, %5) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%7) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (bf16, bf16)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "select_fcmp_uge_1_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: bf16, %arg1: bf16):
    %0 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %2 = "llvm.fcmp"(%arg0, %arg1) <{fastmathFlags = #llvm.fastmath<none>, predicate = 9 : i64}> : (bf16, bf16) -> i1
    %3 = "llvm.select"(%2, %0, %1) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%3) : (i32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

