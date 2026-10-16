"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_cttz_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg19: i8):
    %49 = "llvm.mlir.constant"() <{value = -1 : i8}> : () -> i8
    %50 = "llvm.xor"(%arg19, %49) : (i8, i8) -> i8
    %51 = "llvm.intr.cttz"(%50) <{is_zero_poison = false}> : (i8) -> i8
    "llvm.return"(%51) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_cttz_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg18: i16):
    %46 = "llvm.mlir.constant"() <{value = -1 : i16}> : () -> i16
    %47 = "llvm.xor"(%arg18, %46) : (i16, i16) -> i16
    %48 = "llvm.intr.cttz"(%47) <{is_zero_poison = false}> : (i16) -> i16
    "llvm.return"(%48) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_cttz_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg17: i32):
    %43 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %44 = "llvm.xor"(%arg17, %43) : (i32, i32) -> i32
    %45 = "llvm.intr.cttz"(%44) <{is_zero_poison = false}> : (i32) -> i32
    "llvm.return"(%45) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_cttz_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg16: i64):
    %40 = "llvm.mlir.constant"() <{value = -1 : i64}> : () -> i64
    %41 = "llvm.xor"(%arg16, %40) : (i64, i64) -> i64
    %42 = "llvm.intr.cttz"(%41) <{is_zero_poison = false}> : (i64) -> i64
    "llvm.return"(%42) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_cttz_i8_zero_undef", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg15: i8):
    %37 = "llvm.mlir.constant"() <{value = -1 : i8}> : () -> i8
    %38 = "llvm.xor"(%arg15, %37) : (i8, i8) -> i8
    %39 = "llvm.intr.cttz"(%38) <{is_zero_poison = true}> : (i8) -> i8
    "llvm.return"(%39) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_cttz_i16_zero_undef", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: i16):
    %34 = "llvm.mlir.constant"() <{value = -1 : i16}> : () -> i16
    %35 = "llvm.xor"(%arg14, %34) : (i16, i16) -> i16
    %36 = "llvm.intr.cttz"(%35) <{is_zero_poison = true}> : (i16) -> i16
    "llvm.return"(%36) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_cttz_i32_zero_undef", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg13: i32):
    %31 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %32 = "llvm.xor"(%arg13, %31) : (i32, i32) -> i32
    %33 = "llvm.intr.cttz"(%32) <{is_zero_poison = true}> : (i32) -> i32
    "llvm.return"(%33) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_cttz_i64_zero_undef", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: i64):
    %28 = "llvm.mlir.constant"() <{value = -1 : i64}> : () -> i64
    %29 = "llvm.xor"(%arg12, %28) : (i64, i64) -> i64
    %30 = "llvm.intr.cttz"(%29) <{is_zero_poison = true}> : (i64) -> i64
    "llvm.return"(%30) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_ctlz_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg11: i8):
    %25 = "llvm.mlir.constant"() <{value = -1 : i8}> : () -> i8
    %26 = "llvm.xor"(%arg11, %25) : (i8, i8) -> i8
    %27 = "llvm.intr.ctlz"(%26) <{is_zero_poison = false}> : (i8) -> i8
    "llvm.return"(%27) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_ctlz_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: i16):
    %22 = "llvm.mlir.constant"() <{value = -1 : i16}> : () -> i16
    %23 = "llvm.xor"(%arg10, %22) : (i16, i16) -> i16
    %24 = "llvm.intr.ctlz"(%23) <{is_zero_poison = false}> : (i16) -> i16
    "llvm.return"(%24) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_ctlz_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: i32):
    %19 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %20 = "llvm.xor"(%arg9, %19) : (i32, i32) -> i32
    %21 = "llvm.intr.ctlz"(%20) <{is_zero_poison = false}> : (i32) -> i32
    "llvm.return"(%21) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_ctlz_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: i64):
    %16 = "llvm.mlir.constant"() <{value = -1 : i64}> : () -> i64
    %17 = "llvm.xor"(%arg8, %16) : (i64, i64) -> i64
    %18 = "llvm.intr.ctlz"(%17) <{is_zero_poison = false}> : (i64) -> i64
    "llvm.return"(%18) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_ctlz_i8_zero_undef", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg7: i8):
    %13 = "llvm.mlir.constant"() <{value = -1 : i8}> : () -> i8
    %14 = "llvm.xor"(%arg7, %13) : (i8, i8) -> i8
    %15 = "llvm.intr.ctlz"(%14) <{is_zero_poison = true}> : (i8) -> i8
    "llvm.return"(%15) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_ctlz_i16_zero_undef", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: i16):
    %10 = "llvm.mlir.constant"() <{value = -1 : i16}> : () -> i16
    %11 = "llvm.xor"(%arg6, %10) : (i16, i16) -> i16
    %12 = "llvm.intr.ctlz"(%11) <{is_zero_poison = true}> : (i16) -> i16
    "llvm.return"(%12) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_ctlz_i32_zero_undef", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: i32):
    %7 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %8 = "llvm.xor"(%arg5, %7) : (i32, i32) -> i32
    %9 = "llvm.intr.ctlz"(%8) <{is_zero_poison = true}> : (i32) -> i32
    "llvm.return"(%9) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_ctlz_i64_zero_undef", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i64):
    %4 = "llvm.mlir.constant"() <{value = -1 : i64}> : () -> i64
    %5 = "llvm.xor"(%arg4, %4) : (i64, i64) -> i64
    %6 = "llvm.intr.ctlz"(%5) <{is_zero_poison = true}> : (i64) -> i64
    "llvm.return"(%6) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8)>, linkage = #llvm.linkage<external>, sym_name = "brev_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: i8):
    %3 = "llvm.intr.bitreverse"(%arg3) : (i8) -> i8
    "llvm.return"(%3) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16)>, linkage = #llvm.linkage<external>, sym_name = "brev_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i16):
    %2 = "llvm.intr.bitreverse"(%arg2) : (i16) -> i16
    "llvm.return"(%2) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "brev_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: i32):
    %1 = "llvm.intr.bitreverse"(%arg1) : (i32) -> i32
    "llvm.return"(%1) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "brev_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i64):
    %0 = "llvm.intr.bitreverse"(%arg0) : (i64) -> i64
    "llvm.return"(%0) : (i64) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

