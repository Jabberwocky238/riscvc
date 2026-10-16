"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (bf16, bf16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fcmp_false", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg30: bf16, %arg31: bf16):
    %30 = "llvm.fcmp"(%arg30, %arg31) <{fastmathFlags = #llvm.fastmath<none>, predicate = 0 : i64}> : (bf16, bf16) -> i1
    %31 = "llvm.zext"(%30) : (i1) -> i32
    "llvm.return"(%31) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (bf16, bf16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fcmp_oeq", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg28: bf16, %arg29: bf16):
    %28 = "llvm.fcmp"(%arg28, %arg29) <{fastmathFlags = #llvm.fastmath<none>, predicate = 1 : i64}> : (bf16, bf16) -> i1
    %29 = "llvm.zext"(%28) : (i1) -> i32
    "llvm.return"(%29) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (bf16, bf16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fcmp_ogt", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg26: bf16, %arg27: bf16):
    %26 = "llvm.fcmp"(%arg26, %arg27) <{fastmathFlags = #llvm.fastmath<none>, predicate = 2 : i64}> : (bf16, bf16) -> i1
    %27 = "llvm.zext"(%26) : (i1) -> i32
    "llvm.return"(%27) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (bf16, bf16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fcmp_oge", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg24: bf16, %arg25: bf16):
    %24 = "llvm.fcmp"(%arg24, %arg25) <{fastmathFlags = #llvm.fastmath<none>, predicate = 3 : i64}> : (bf16, bf16) -> i1
    %25 = "llvm.zext"(%24) : (i1) -> i32
    "llvm.return"(%25) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (bf16, bf16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fcmp_olt", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg22: bf16, %arg23: bf16):
    %22 = "llvm.fcmp"(%arg22, %arg23) <{fastmathFlags = #llvm.fastmath<none>, predicate = 4 : i64}> : (bf16, bf16) -> i1
    %23 = "llvm.zext"(%22) : (i1) -> i32
    "llvm.return"(%23) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (bf16, bf16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fcmp_ole", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg20: bf16, %arg21: bf16):
    %20 = "llvm.fcmp"(%arg20, %arg21) <{fastmathFlags = #llvm.fastmath<none>, predicate = 5 : i64}> : (bf16, bf16) -> i1
    %21 = "llvm.zext"(%20) : (i1) -> i32
    "llvm.return"(%21) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (bf16, bf16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fcmp_one", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg18: bf16, %arg19: bf16):
    %18 = "llvm.fcmp"(%arg18, %arg19) <{fastmathFlags = #llvm.fastmath<none>, predicate = 6 : i64}> : (bf16, bf16) -> i1
    %19 = "llvm.zext"(%18) : (i1) -> i32
    "llvm.return"(%19) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (bf16, bf16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fcmp_ord", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg16: bf16, %arg17: bf16):
    %16 = "llvm.fcmp"(%arg16, %arg17) <{fastmathFlags = #llvm.fastmath<none>, predicate = 7 : i64}> : (bf16, bf16) -> i1
    %17 = "llvm.zext"(%16) : (i1) -> i32
    "llvm.return"(%17) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (bf16, bf16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fcmp_ueq", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: bf16, %arg15: bf16):
    %14 = "llvm.fcmp"(%arg14, %arg15) <{fastmathFlags = #llvm.fastmath<none>, predicate = 8 : i64}> : (bf16, bf16) -> i1
    %15 = "llvm.zext"(%14) : (i1) -> i32
    "llvm.return"(%15) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (bf16, bf16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fcmp_ugt", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: bf16, %arg13: bf16):
    %12 = "llvm.fcmp"(%arg12, %arg13) <{fastmathFlags = #llvm.fastmath<none>, predicate = 9 : i64}> : (bf16, bf16) -> i1
    %13 = "llvm.zext"(%12) : (i1) -> i32
    "llvm.return"(%13) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (bf16, bf16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fcmp_uge", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: bf16, %arg11: bf16):
    %10 = "llvm.fcmp"(%arg10, %arg11) <{fastmathFlags = #llvm.fastmath<none>, predicate = 10 : i64}> : (bf16, bf16) -> i1
    %11 = "llvm.zext"(%10) : (i1) -> i32
    "llvm.return"(%11) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (bf16, bf16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fcmp_ult", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: bf16, %arg9: bf16):
    %8 = "llvm.fcmp"(%arg8, %arg9) <{fastmathFlags = #llvm.fastmath<none>, predicate = 11 : i64}> : (bf16, bf16) -> i1
    %9 = "llvm.zext"(%8) : (i1) -> i32
    "llvm.return"(%9) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (bf16, bf16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fcmp_ule", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: bf16, %arg7: bf16):
    %6 = "llvm.fcmp"(%arg6, %arg7) <{fastmathFlags = #llvm.fastmath<none>, predicate = 12 : i64}> : (bf16, bf16) -> i1
    %7 = "llvm.zext"(%6) : (i1) -> i32
    "llvm.return"(%7) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (bf16, bf16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fcmp_une", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: bf16, %arg5: bf16):
    %4 = "llvm.fcmp"(%arg4, %arg5) <{fastmathFlags = #llvm.fastmath<none>, predicate = 13 : i64}> : (bf16, bf16) -> i1
    %5 = "llvm.zext"(%4) : (i1) -> i32
    "llvm.return"(%5) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (bf16, bf16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fcmp_uno", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: bf16, %arg3: bf16):
    %2 = "llvm.fcmp"(%arg2, %arg3) <{fastmathFlags = #llvm.fastmath<none>, predicate = 14 : i64}> : (bf16, bf16) -> i1
    %3 = "llvm.zext"(%2) : (i1) -> i32
    "llvm.return"(%3) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (bf16, bf16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fcmp_true", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: bf16, %arg1: bf16):
    %0 = "llvm.fcmp"(%arg0, %arg1) <{fastmathFlags = #llvm.fastmath<none>, predicate = 15 : i64}> : (bf16, bf16) -> i1
    %1 = "llvm.zext"(%0) : (i1) -> i32
    "llvm.return"(%1) : (i32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

