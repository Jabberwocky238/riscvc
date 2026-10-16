"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "udiv", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg39: i32, %arg40: i32):
    %56 = "llvm.udiv"(%arg39, %arg40) : (i32, i32) -> i32
    "llvm.return"(%56) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "udiv_constant", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg38: i32):
    %54 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %55 = "llvm.udiv"(%arg38, %54) : (i32, i32) -> i32
    "llvm.return"(%55) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "udiv_pow2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg37: i32):
    %52 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %53 = "llvm.udiv"(%arg37, %52) : (i32, i32) -> i32
    "llvm.return"(%53) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "udiv_constant_lhs", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg36: i32):
    %50 = "llvm.mlir.constant"() <{value = 10 : i32}> : () -> i32
    %51 = "llvm.udiv"(%50, %arg36) : (i32, i32) -> i32
    "llvm.return"(%51) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "udiv64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg34: i64, %arg35: i64):
    %49 = "llvm.udiv"(%arg34, %arg35) : (i64, i64) -> i64
    "llvm.return"(%49) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "udiv64_constant", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg33: i64):
    %47 = "llvm.mlir.constant"() <{value = 5 : i64}> : () -> i64
    %48 = "llvm.udiv"(%arg33, %47) : (i64, i64) -> i64
    "llvm.return"(%48) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "udiv64_constant_lhs", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg32: i64):
    %45 = "llvm.mlir.constant"() <{value = 10 : i64}> : () -> i64
    %46 = "llvm.udiv"(%45, %arg32) : (i64, i64) -> i64
    "llvm.return"(%46) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "udiv8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg30: i8, %arg31: i8):
    %44 = "llvm.udiv"(%arg30, %arg31) : (i8, i8) -> i8
    "llvm.return"(%44) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "udiv8_constant", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg29: i8):
    %42 = "llvm.mlir.constant"() <{value = 5 : i8}> : () -> i8
    %43 = "llvm.udiv"(%arg29, %42) : (i8, i8) -> i8
    "llvm.return"(%43) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "udiv8_pow2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg28: i8):
    %40 = "llvm.mlir.constant"() <{value = 8 : i8}> : () -> i8
    %41 = "llvm.udiv"(%arg28, %40) : (i8, i8) -> i8
    "llvm.return"(%41) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "udiv8_constant_lhs", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg27: i8):
    %38 = "llvm.mlir.constant"() <{value = 10 : i8}> : () -> i8
    %39 = "llvm.udiv"(%38, %arg27) : (i8, i8) -> i8
    "llvm.return"(%39) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "udiv16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg25: i16, %arg26: i16):
    %37 = "llvm.udiv"(%arg25, %arg26) : (i16, i16) -> i16
    "llvm.return"(%37) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "udiv16_constant", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg24: i16):
    %35 = "llvm.mlir.constant"() <{value = 5 : i16}> : () -> i16
    %36 = "llvm.udiv"(%arg24, %35) : (i16, i16) -> i16
    "llvm.return"(%36) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "udiv16_pow2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg23: i16):
    %33 = "llvm.mlir.constant"() <{value = 8 : i16}> : () -> i16
    %34 = "llvm.udiv"(%arg23, %33) : (i16, i16) -> i16
    "llvm.return"(%34) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "udiv16_constant_lhs", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg22: i16):
    %31 = "llvm.mlir.constant"() <{value = 10 : i16}> : () -> i16
    %32 = "llvm.udiv"(%31, %arg22) : (i16, i16) -> i16
    "llvm.return"(%32) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sdiv", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg20: i32, %arg21: i32):
    %30 = "llvm.sdiv"(%arg20, %arg21) : (i32, i32) -> i32
    "llvm.return"(%30) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sdiv_constant", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg19: i32):
    %28 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %29 = "llvm.sdiv"(%arg19, %28) : (i32, i32) -> i32
    "llvm.return"(%29) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sdiv_pow2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg18: i32):
    %26 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %27 = "llvm.sdiv"(%arg18, %26) : (i32, i32) -> i32
    "llvm.return"(%27) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sdiv_pow2_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg17: i32):
    %24 = "llvm.mlir.constant"() <{value = 65536 : i32}> : () -> i32
    %25 = "llvm.sdiv"(%arg17, %24) : (i32, i32) -> i32
    "llvm.return"(%25) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sdiv_constant_lhs", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg16: i32):
    %22 = "llvm.mlir.constant"() <{value = -10 : i32}> : () -> i32
    %23 = "llvm.sdiv"(%22, %arg16) : (i32, i32) -> i32
    "llvm.return"(%23) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sdiv64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: i64, %arg15: i64):
    %21 = "llvm.sdiv"(%arg14, %arg15) : (i64, i64) -> i64
    "llvm.return"(%21) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sdiv64_constant", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg13: i64):
    %19 = "llvm.mlir.constant"() <{value = 5 : i64}> : () -> i64
    %20 = "llvm.sdiv"(%arg13, %19) : (i64, i64) -> i64
    "llvm.return"(%20) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sdiv64_constant_lhs", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: i64):
    %17 = "llvm.mlir.constant"() <{value = 10 : i64}> : () -> i64
    %18 = "llvm.sdiv"(%17, %arg12) : (i64, i64) -> i64
    "llvm.return"(%18) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sdiv64_sext_operands", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: i32, %arg11: i32):
    %14 = "llvm.sext"(%arg10) : (i32) -> i64
    %15 = "llvm.sext"(%arg11) : (i32) -> i64
    %16 = "llvm.sdiv"(%14, %15) : (i64, i64) -> i64
    "llvm.return"(%16) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sdiv8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: i8, %arg9: i8):
    %13 = "llvm.sdiv"(%arg8, %arg9) : (i8, i8) -> i8
    "llvm.return"(%13) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sdiv8_constant", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg7: i8):
    %11 = "llvm.mlir.constant"() <{value = 5 : i8}> : () -> i8
    %12 = "llvm.sdiv"(%arg7, %11) : (i8, i8) -> i8
    "llvm.return"(%12) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sdiv8_pow2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: i8):
    %9 = "llvm.mlir.constant"() <{value = 8 : i8}> : () -> i8
    %10 = "llvm.sdiv"(%arg6, %9) : (i8, i8) -> i8
    "llvm.return"(%10) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sdiv8_constant_lhs", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: i8):
    %7 = "llvm.mlir.constant"() <{value = -10 : i8}> : () -> i8
    %8 = "llvm.sdiv"(%7, %arg5) : (i8, i8) -> i8
    "llvm.return"(%8) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sdiv16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: i16, %arg4: i16):
    %6 = "llvm.sdiv"(%arg3, %arg4) : (i16, i16) -> i16
    "llvm.return"(%6) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sdiv16_constant", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i16):
    %4 = "llvm.mlir.constant"() <{value = 5 : i16}> : () -> i16
    %5 = "llvm.sdiv"(%arg2, %4) : (i16, i16) -> i16
    "llvm.return"(%5) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sdiv16_pow2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: i16):
    %2 = "llvm.mlir.constant"() <{value = 8 : i16}> : () -> i16
    %3 = "llvm.sdiv"(%arg1, %2) : (i16, i16) -> i16
    "llvm.return"(%3) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sdiv16_constant_lhs", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i16):
    %0 = "llvm.mlir.constant"() <{value = -10 : i16}> : () -> i16
    %1 = "llvm.sdiv"(%0, %arg0) : (i16, i16) -> i16
    "llvm.return"(%1) : (i16) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

