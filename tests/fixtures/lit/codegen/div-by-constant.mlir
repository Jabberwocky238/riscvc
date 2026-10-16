"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "udiv_constant_no_add", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg23: i32):
    %46 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %47 = "llvm.udiv"(%arg23, %46) : (i32, i32) -> i32
    "llvm.return"(%47) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "udiv_constant_add", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg22: i32):
    %44 = "llvm.mlir.constant"() <{value = 7 : i32}> : () -> i32
    %45 = "llvm.udiv"(%arg22, %44) : (i32, i32) -> i32
    "llvm.return"(%45) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "udiv64_constant_no_add", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg21: i64):
    %42 = "llvm.mlir.constant"() <{value = 5 : i64}> : () -> i64
    %43 = "llvm.udiv"(%arg21, %42) : (i64, i64) -> i64
    "llvm.return"(%43) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "udiv64_constant_add", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg20: i64):
    %40 = "llvm.mlir.constant"() <{value = 7 : i64}> : () -> i64
    %41 = "llvm.udiv"(%arg20, %40) : (i64, i64) -> i64
    "llvm.return"(%41) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "udiv8_constant_no_add", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg19: i8):
    %38 = "llvm.mlir.constant"() <{value = 5 : i8}> : () -> i8
    %39 = "llvm.udiv"(%arg19, %38) : (i8, i8) -> i8
    "llvm.return"(%39) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "udiv8_constant_add", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg18: i8):
    %36 = "llvm.mlir.constant"() <{value = 7 : i8}> : () -> i8
    %37 = "llvm.udiv"(%arg18, %36) : (i8, i8) -> i8
    "llvm.return"(%37) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "udiv16_constant_no_add", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg17: i16):
    %34 = "llvm.mlir.constant"() <{value = 5 : i16}> : () -> i16
    %35 = "llvm.udiv"(%arg17, %34) : (i16, i16) -> i16
    "llvm.return"(%35) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "udiv16_constant_add", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg16: i16):
    %32 = "llvm.mlir.constant"() <{value = 7 : i16}> : () -> i16
    %33 = "llvm.udiv"(%arg16, %32) : (i16, i16) -> i16
    "llvm.return"(%33) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sdiv_constant_no_srai", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg15: i32):
    %30 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %31 = "llvm.sdiv"(%arg15, %30) : (i32, i32) -> i32
    "llvm.return"(%31) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sdiv_constant_srai", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: i32):
    %28 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %29 = "llvm.sdiv"(%arg14, %28) : (i32, i32) -> i32
    "llvm.return"(%29) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sdiv_constant_add_srai", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg13: i32):
    %26 = "llvm.mlir.constant"() <{value = 7 : i32}> : () -> i32
    %27 = "llvm.sdiv"(%arg13, %26) : (i32, i32) -> i32
    "llvm.return"(%27) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sdiv_constant_sub_srai", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: i32):
    %24 = "llvm.mlir.constant"() <{value = -7 : i32}> : () -> i32
    %25 = "llvm.sdiv"(%arg12, %24) : (i32, i32) -> i32
    "llvm.return"(%25) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sdiv64_constant_no_srai", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg11: i64):
    %22 = "llvm.mlir.constant"() <{value = 3 : i64}> : () -> i64
    %23 = "llvm.sdiv"(%arg11, %22) : (i64, i64) -> i64
    "llvm.return"(%23) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sdiv64_constant_srai", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: i64):
    %20 = "llvm.mlir.constant"() <{value = 5 : i64}> : () -> i64
    %21 = "llvm.sdiv"(%arg10, %20) : (i64, i64) -> i64
    "llvm.return"(%21) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sdiv64_constant_add_srai", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: i64):
    %18 = "llvm.mlir.constant"() <{value = 15 : i64}> : () -> i64
    %19 = "llvm.sdiv"(%arg9, %18) : (i64, i64) -> i64
    "llvm.return"(%19) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sdiv64_constant_sub_srai", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: i64):
    %16 = "llvm.mlir.constant"() <{value = -3 : i64}> : () -> i64
    %17 = "llvm.sdiv"(%arg8, %16) : (i64, i64) -> i64
    "llvm.return"(%17) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sdiv8_constant_no_srai", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg7: i8):
    %14 = "llvm.mlir.constant"() <{value = 3 : i8}> : () -> i8
    %15 = "llvm.sdiv"(%arg7, %14) : (i8, i8) -> i8
    "llvm.return"(%15) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sdiv8_constant_srai", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: i8):
    %12 = "llvm.mlir.constant"() <{value = 5 : i8}> : () -> i8
    %13 = "llvm.sdiv"(%arg6, %12) : (i8, i8) -> i8
    "llvm.return"(%13) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sdiv8_constant_add_srai", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: i8):
    %10 = "llvm.mlir.constant"() <{value = 7 : i8}> : () -> i8
    %11 = "llvm.sdiv"(%arg5, %10) : (i8, i8) -> i8
    "llvm.return"(%11) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sdiv8_constant_sub_srai", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i8):
    %8 = "llvm.mlir.constant"() <{value = -7 : i8}> : () -> i8
    %9 = "llvm.sdiv"(%arg4, %8) : (i8, i8) -> i8
    "llvm.return"(%9) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sdiv16_constant_no_srai", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: i16):
    %6 = "llvm.mlir.constant"() <{value = 3 : i16}> : () -> i16
    %7 = "llvm.sdiv"(%arg3, %6) : (i16, i16) -> i16
    "llvm.return"(%7) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sdiv16_constant_srai", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i16):
    %4 = "llvm.mlir.constant"() <{value = 5 : i16}> : () -> i16
    %5 = "llvm.sdiv"(%arg2, %4) : (i16, i16) -> i16
    "llvm.return"(%5) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sdiv16_constant_add_srai", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: i16):
    %2 = "llvm.mlir.constant"() <{value = 15 : i16}> : () -> i16
    %3 = "llvm.sdiv"(%arg1, %2) : (i16, i16) -> i16
    "llvm.return"(%3) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sdiv16_constant_sub_srai", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i16):
    %0 = "llvm.mlir.constant"() <{value = -15 : i16}> : () -> i16
    %1 = "llvm.sdiv"(%arg0, %0) : (i16, i16) -> i16
    "llvm.return"(%1) : (i16) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

