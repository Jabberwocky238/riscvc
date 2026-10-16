"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "mula_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg30: i32, %arg31: i32, %arg32: i32):
    %28 = "llvm.mul"(%arg31, %arg32) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %29 = "llvm.add"(%arg30, %28) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%29) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "muls_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg27: i32, %arg28: i32, %arg29: i32):
    %26 = "llvm.mul"(%arg28, %arg29) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %27 = "llvm.sub"(%arg27, %26) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%27) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "mula_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg24: i64, %arg25: i64, %arg26: i64):
    %24 = "llvm.mul"(%arg25, %arg26) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %25 = "llvm.add"(%arg24, %24) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%25) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "mulaw_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg21: i32, %arg22: i32, %arg23: i32):
    %21 = "llvm.mul"(%arg22, %arg23) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %22 = "llvm.add"(%arg21, %21) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %23 = "llvm.sext"(%22) : (i32) -> i64
    "llvm.return"(%23) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i32, i16, i16)>, linkage = #llvm.linkage<external>, sym_name = "mulah_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg18: i32, %arg19: i16, %arg20: i16):
    %16 = "llvm.sext"(%arg19) : (i16) -> i32
    %17 = "llvm.sext"(%arg20) : (i16) -> i32
    %18 = "llvm.mul"(%16, %17) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %19 = "llvm.add"(%arg18, %18) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %20 = "llvm.sext"(%19) : (i32) -> i64
    "llvm.return"(%20) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "muls_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg15: i64, %arg16: i64, %arg17: i64):
    %14 = "llvm.mul"(%arg16, %arg17) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %15 = "llvm.sub"(%arg15, %14) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%15) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "mulsw_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: i32, %arg13: i32, %arg14: i32):
    %11 = "llvm.mul"(%arg13, %arg14) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %12 = "llvm.sub"(%arg12, %11) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %13 = "llvm.sext"(%12) : (i32) -> i64
    "llvm.return"(%13) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i32, i16, i16)>, linkage = #llvm.linkage<external>, sym_name = "mulsh_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: i32, %arg10: i16, %arg11: i16):
    %6 = "llvm.sext"(%arg10) : (i16) -> i32
    %7 = "llvm.sext"(%arg11) : (i16) -> i32
    %8 = "llvm.mul"(%6, %7) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %9 = "llvm.sub"(%arg9, %8) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %10 = "llvm.sext"(%9) : (i32) -> i64
    "llvm.return"(%10) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "commutative1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: i32, %arg7: i32, %arg8: i32):
    %4 = "llvm.mul"(%arg7, %arg6) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %5 = "llvm.add"(%4, %arg8) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%5) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "commutative2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: i32, %arg4: i32, %arg5: i32):
    %2 = "llvm.mul"(%arg4, %arg5) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %3 = "llvm.add"(%2, %arg3) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%3) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "commutative3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: i32):
    %0 = "llvm.mul"(%arg2, %arg0) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %1 = "llvm.add"(%0, %arg1) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%1) : (i32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

