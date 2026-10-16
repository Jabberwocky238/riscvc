"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "urem", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg24: i32, %arg25: i32):
    %27 = "llvm.urem"(%arg24, %arg25) : (i32, i32) -> i32
    "llvm.return"(%27) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "urem_constant_lhs", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg23: i32):
    %25 = "llvm.mlir.constant"() <{value = 10 : i32}> : () -> i32
    %26 = "llvm.urem"(%25, %arg23) : (i32, i32) -> i32
    "llvm.return"(%26) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "srem", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg21: i32, %arg22: i32):
    %24 = "llvm.srem"(%arg21, %arg22) : (i32, i32) -> i32
    "llvm.return"(%24) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "srem_pow2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg20: i32):
    %22 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %23 = "llvm.srem"(%arg20, %22) : (i32, i32) -> i32
    "llvm.return"(%23) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "srem_pow2_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg19: i32):
    %20 = "llvm.mlir.constant"() <{value = 65536 : i32}> : () -> i32
    %21 = "llvm.srem"(%arg19, %20) : (i32, i32) -> i32
    "llvm.return"(%21) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "srem_constant_lhs", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg18: i32):
    %18 = "llvm.mlir.constant"() <{value = -10 : i32}> : () -> i32
    %19 = "llvm.srem"(%18, %arg18) : (i32, i32) -> i32
    "llvm.return"(%19) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "urem64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg16: i64, %arg17: i64):
    %17 = "llvm.urem"(%arg16, %arg17) : (i64, i64) -> i64
    "llvm.return"(%17) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "urem64_constant_lhs", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg15: i64):
    %15 = "llvm.mlir.constant"() <{value = 10 : i64}> : () -> i64
    %16 = "llvm.urem"(%15, %arg15) : (i64, i64) -> i64
    "llvm.return"(%16) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "srem64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg13: i64, %arg14: i64):
    %14 = "llvm.srem"(%arg13, %arg14) : (i64, i64) -> i64
    "llvm.return"(%14) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "srem64_constant_lhs", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: i64):
    %12 = "llvm.mlir.constant"() <{value = -10 : i64}> : () -> i64
    %13 = "llvm.srem"(%12, %arg12) : (i64, i64) -> i64
    "llvm.return"(%13) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "urem8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: i8, %arg11: i8):
    %11 = "llvm.urem"(%arg10, %arg11) : (i8, i8) -> i8
    "llvm.return"(%11) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "urem8_constant_lhs", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: i8):
    %9 = "llvm.mlir.constant"() <{value = 10 : i8}> : () -> i8
    %10 = "llvm.urem"(%9, %arg9) : (i8, i8) -> i8
    "llvm.return"(%10) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "srem8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg7: i8, %arg8: i8):
    %8 = "llvm.srem"(%arg7, %arg8) : (i8, i8) -> i8
    "llvm.return"(%8) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "srem8_constant_lhs", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: i8):
    %6 = "llvm.mlir.constant"() <{value = -10 : i8}> : () -> i8
    %7 = "llvm.srem"(%6, %arg6) : (i8, i8) -> i8
    "llvm.return"(%7) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "urem16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i16, %arg5: i16):
    %5 = "llvm.urem"(%arg4, %arg5) : (i16, i16) -> i16
    "llvm.return"(%5) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "urem16_constant_lhs", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: i16):
    %3 = "llvm.mlir.constant"() <{value = 10 : i16}> : () -> i16
    %4 = "llvm.urem"(%3, %arg3) : (i16, i16) -> i16
    "llvm.return"(%4) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "srem16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: i16, %arg2: i16):
    %2 = "llvm.srem"(%arg1, %arg2) : (i16, i16) -> i16
    "llvm.return"(%2) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "srem16_constant_lhs", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i16):
    %0 = "llvm.mlir.constant"() <{value = -10 : i16}> : () -> i16
    %1 = "llvm.srem"(%0, %arg0) : (i16, i16) -> i16
    "llvm.return"(%1) : (i16) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

