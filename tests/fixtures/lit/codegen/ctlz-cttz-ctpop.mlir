"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_cttz_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg23: i8):
    %31 = "llvm.intr.cttz"(%arg23) <{is_zero_poison = false}> : (i8) -> i8
    "llvm.return"(%31) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_cttz_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg22: i16):
    %30 = "llvm.intr.cttz"(%arg22) <{is_zero_poison = false}> : (i16) -> i16
    "llvm.return"(%30) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_cttz_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg21: i32):
    %29 = "llvm.intr.cttz"(%arg21) <{is_zero_poison = false}> : (i32) -> i32
    "llvm.return"(%29) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_cttz_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg20: i64):
    %28 = "llvm.intr.cttz"(%arg20) <{is_zero_poison = false}> : (i64) -> i64
    "llvm.return"(%28) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_cttz_i8_zero_undef", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg19: i8):
    %27 = "llvm.intr.cttz"(%arg19) <{is_zero_poison = true}> : (i8) -> i8
    "llvm.return"(%27) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_cttz_i16_zero_undef", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg18: i16):
    %26 = "llvm.intr.cttz"(%arg18) <{is_zero_poison = true}> : (i16) -> i16
    "llvm.return"(%26) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_cttz_i32_zero_undef", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg17: i32):
    %25 = "llvm.intr.cttz"(%arg17) <{is_zero_poison = true}> : (i32) -> i32
    "llvm.return"(%25) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_cttz_i64_zero_undef", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg16: i64):
    %24 = "llvm.intr.cttz"(%arg16) <{is_zero_poison = true}> : (i64) -> i64
    "llvm.return"(%24) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_ctlz_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg15: i8):
    %23 = "llvm.intr.ctlz"(%arg15) <{is_zero_poison = false}> : (i8) -> i8
    "llvm.return"(%23) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_ctlz_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: i16):
    %22 = "llvm.intr.ctlz"(%arg14) <{is_zero_poison = false}> : (i16) -> i16
    "llvm.return"(%22) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_ctlz_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg13: i32):
    %21 = "llvm.intr.ctlz"(%arg13) <{is_zero_poison = false}> : (i32) -> i32
    "llvm.return"(%21) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_ctlz_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: i64):
    %20 = "llvm.intr.ctlz"(%arg12) <{is_zero_poison = false}> : (i64) -> i64
    "llvm.return"(%20) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_ctlz_i8_zero_undef", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg11: i8):
    %19 = "llvm.intr.ctlz"(%arg11) <{is_zero_poison = true}> : (i8) -> i8
    "llvm.return"(%19) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_ctlz_i16_zero_undef", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: i16):
    %18 = "llvm.intr.ctlz"(%arg10) <{is_zero_poison = true}> : (i16) -> i16
    "llvm.return"(%18) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_ctlz_i32_zero_undef", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: i32):
    %17 = "llvm.intr.ctlz"(%arg9) <{is_zero_poison = true}> : (i32) -> i32
    "llvm.return"(%17) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_ctlz_i64_zero_undef", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: i64):
    %16 = "llvm.intr.ctlz"(%arg8) <{is_zero_poison = true}> : (i64) -> i64
    "llvm.return"(%16) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_ctpop_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg7: i8):
    %15 = "llvm.intr.ctpop"(%arg7) : (i8) -> i8
    "llvm.return"(%15) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_ctpop_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: i16):
    %14 = "llvm.intr.ctpop"(%arg6) : (i16) -> i16
    "llvm.return"(%14) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_ctpop_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: i32):
    %13 = "llvm.intr.ctpop"(%arg5) : (i32) -> i32
    "llvm.return"(%13) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_ctpop_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i64):
    %12 = "llvm.intr.ctpop"(%arg4) : (i64) -> i64
    "llvm.return"(%12) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8)>, linkage = #llvm.linkage<external>, sym_name = "test_parity_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: i8):
    %9 = "llvm.mlir.constant"() <{value = 1 : i8}> : () -> i8
    %10 = "llvm.intr.ctpop"(%arg3) : (i8) -> i8
    %11 = "llvm.and"(%10, %9) : (i8, i8) -> i8
    "llvm.return"(%11) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16)>, linkage = #llvm.linkage<external>, sym_name = "test_parity_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i16):
    %6 = "llvm.mlir.constant"() <{value = 1 : i16}> : () -> i16
    %7 = "llvm.intr.ctpop"(%arg2) : (i16) -> i16
    %8 = "llvm.and"(%7, %6) : (i16, i16) -> i16
    "llvm.return"(%8) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "test_parity_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: i32):
    %3 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %4 = "llvm.intr.ctpop"(%arg1) : (i32) -> i32
    %5 = "llvm.and"(%4, %3) : (i32, i32) -> i32
    "llvm.return"(%5) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "test_parity_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i64):
    %0 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %1 = "llvm.intr.ctpop"(%arg0) : (i64) -> i64
    %2 = "llvm.and"(%1, %0) : (i64, i64) -> i64
    "llvm.return"(%2) : (i64) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

