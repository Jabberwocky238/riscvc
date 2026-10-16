"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i1)>, linkage = #llvm.linkage<external>, sym_name = "shl32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg45: i32, %arg46: i32, %arg47: i1):
    %30 = "llvm.shl"(%arg45, %arg46) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %31 = "llvm.select"(%arg47, %30, %arg45) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%31) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i1)>, linkage = #llvm.linkage<external>, sym_name = "ashr32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg42: i32, %arg43: i32, %arg44: i1):
    %28 = "llvm.ashr"(%arg42, %arg43) : (i32, i32) -> i32
    %29 = "llvm.select"(%arg44, %28, %arg42) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%29) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i1)>, linkage = #llvm.linkage<external>, sym_name = "lshr32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg39: i32, %arg40: i32, %arg41: i1):
    %26 = "llvm.lshr"(%arg39, %arg40) : (i32, i32) -> i32
    %27 = "llvm.select"(%arg41, %26, %arg39) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%27) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i1)>, linkage = #llvm.linkage<external>, sym_name = "sub32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg36: i32, %arg37: i32, %arg38: i1):
    %24 = "llvm.sub"(%arg36, %arg37) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %25 = "llvm.select"(%arg38, %24, %arg36) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%25) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i1)>, linkage = #llvm.linkage<external>, sym_name = "and32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg33: i32, %arg34: i32, %arg35: i1):
    %22 = "llvm.and"(%arg33, %arg34) : (i32, i32) -> i32
    %23 = "llvm.select"(%arg35, %22, %arg33) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%23) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i1)>, linkage = #llvm.linkage<external>, sym_name = "add32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg30: i32, %arg31: i32, %arg32: i1):
    %20 = "llvm.add"(%arg30, %arg31) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %21 = "llvm.select"(%arg32, %20, %arg30) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%21) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i1)>, linkage = #llvm.linkage<external>, sym_name = "or32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg27: i32, %arg28: i32, %arg29: i1):
    %18 = "llvm.or"(%arg27, %arg28) : (i32, i32) -> i32
    %19 = "llvm.select"(%arg29, %18, %arg27) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%19) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i1)>, linkage = #llvm.linkage<external>, sym_name = "xor32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg24: i32, %arg25: i32, %arg26: i1):
    %16 = "llvm.xor"(%arg24, %arg25) : (i32, i32) -> i32
    %17 = "llvm.select"(%arg26, %16, %arg24) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%17) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i1)>, linkage = #llvm.linkage<external>, sym_name = "shl64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg21: i64, %arg22: i64, %arg23: i1):
    %14 = "llvm.shl"(%arg21, %arg22) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %15 = "llvm.select"(%arg23, %14, %arg21) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%15) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i1)>, linkage = #llvm.linkage<external>, sym_name = "ashr64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg18: i64, %arg19: i64, %arg20: i1):
    %12 = "llvm.ashr"(%arg18, %arg19) : (i64, i64) -> i64
    %13 = "llvm.select"(%arg20, %12, %arg18) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%13) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i1)>, linkage = #llvm.linkage<external>, sym_name = "lshr64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg15: i64, %arg16: i64, %arg17: i1):
    %10 = "llvm.lshr"(%arg15, %arg16) : (i64, i64) -> i64
    %11 = "llvm.select"(%arg17, %10, %arg15) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%11) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i1)>, linkage = #llvm.linkage<external>, sym_name = "sub64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: i64, %arg13: i64, %arg14: i1):
    %8 = "llvm.sub"(%arg12, %arg13) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %9 = "llvm.select"(%arg14, %8, %arg12) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%9) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i1)>, linkage = #llvm.linkage<external>, sym_name = "and64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: i64, %arg10: i64, %arg11: i1):
    %6 = "llvm.and"(%arg9, %arg10) : (i64, i64) -> i64
    %7 = "llvm.select"(%arg11, %6, %arg9) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%7) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i1)>, linkage = #llvm.linkage<external>, sym_name = "add64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: i64, %arg7: i64, %arg8: i1):
    %4 = "llvm.add"(%arg6, %arg7) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %5 = "llvm.select"(%arg8, %4, %arg6) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%5) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i1)>, linkage = #llvm.linkage<external>, sym_name = "or64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: i64, %arg4: i64, %arg5: i1):
    %2 = "llvm.or"(%arg3, %arg4) : (i64, i64) -> i64
    %3 = "llvm.select"(%arg5, %2, %arg3) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%3) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i1)>, linkage = #llvm.linkage<external>, sym_name = "xor64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i64, %arg1: i64, %arg2: i1):
    %0 = "llvm.xor"(%arg0, %arg1) : (i64, i64) -> i64
    %1 = "llvm.select"(%arg2, %0, %arg0) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%1) : (i64) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

