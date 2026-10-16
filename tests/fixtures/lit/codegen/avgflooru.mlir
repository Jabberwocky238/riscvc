"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_fixed_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: i8, %arg15: i8):
    %39 = "llvm.mlir.constant"() <{value = 1 : i8}> : () -> i8
    %40 = "llvm.and"(%arg14, %arg15) : (i8, i8) -> i8
    %41 = "llvm.xor"(%arg14, %arg15) : (i8, i8) -> i8
    %42 = "llvm.lshr"(%41, %39) : (i8, i8) -> i8
    %43 = "llvm.add"(%40, %42) <{overflowFlags = 0 : i32}> : (i8, i8) -> i8
    "llvm.return"(%43) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_ext_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: i8, %arg13: i8):
    %33 = "llvm.mlir.constant"() <{value = 1 : i16}> : () -> i16
    %34 = "llvm.zext"(%arg12) : (i8) -> i16
    %35 = "llvm.zext"(%arg13) : (i8) -> i16
    %36 = "llvm.add"(%34, %35) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    %37 = "llvm.lshr"(%36, %33) : (i16, i16) -> i16
    %38 = "llvm.trunc"(%37) <{overflowFlags = 0 : i32}> : (i16) -> i8
    "llvm.return"(%38) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_fixed_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: i16, %arg11: i16):
    %28 = "llvm.mlir.constant"() <{value = 1 : i16}> : () -> i16
    %29 = "llvm.and"(%arg10, %arg11) : (i16, i16) -> i16
    %30 = "llvm.xor"(%arg10, %arg11) : (i16, i16) -> i16
    %31 = "llvm.lshr"(%30, %28) : (i16, i16) -> i16
    %32 = "llvm.add"(%29, %31) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    "llvm.return"(%32) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_ext_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: i16, %arg9: i16):
    %22 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %23 = "llvm.zext"(%arg8) : (i16) -> i32
    %24 = "llvm.zext"(%arg9) : (i16) -> i32
    %25 = "llvm.add"(%23, %24) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %26 = "llvm.lshr"(%25, %22) : (i32, i32) -> i32
    %27 = "llvm.trunc"(%26) <{overflowFlags = 0 : i32}> : (i32) -> i16
    "llvm.return"(%27) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_fixed_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: i32, %arg7: i32):
    %17 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %18 = "llvm.and"(%arg6, %arg7) : (i32, i32) -> i32
    %19 = "llvm.xor"(%arg7, %arg6) : (i32, i32) -> i32
    %20 = "llvm.lshr"(%19, %17) : (i32, i32) -> i32
    %21 = "llvm.add"(%18, %20) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%21) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_ext_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i32, %arg5: i32):
    %11 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %12 = "llvm.zext"(%arg4) : (i32) -> i64
    %13 = "llvm.zext"(%arg5) : (i32) -> i64
    %14 = "llvm.add"(%12, %13) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %15 = "llvm.lshr"(%14, %11) : (i64, i64) -> i64
    %16 = "llvm.trunc"(%15) <{overflowFlags = 0 : i32}> : (i64) -> i32
    "llvm.return"(%16) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_fixed_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i64, %arg3: i64):
    %6 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %7 = "llvm.and"(%arg2, %arg3) : (i64, i64) -> i64
    %8 = "llvm.xor"(%arg3, %arg2) : (i64, i64) -> i64
    %9 = "llvm.lshr"(%8, %6) : (i64, i64) -> i64
    %10 = "llvm.add"(%7, %9) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%10) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_ext_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i64, %arg1: i64):
    %0 = "llvm.mlir.constant"() <{value = 1 : i128}> : () -> i128
    %1 = "llvm.zext"(%arg0) : (i64) -> i128
    %2 = "llvm.zext"(%arg1) : (i64) -> i128
    %3 = "llvm.add"(%1, %2) <{overflowFlags = 0 : i32}> : (i128, i128) -> i128
    %4 = "llvm.lshr"(%3, %0) : (i128, i128) -> i128
    %5 = "llvm.trunc"(%4) <{overflowFlags = 0 : i32}> : (i128) -> i64
    "llvm.return"(%5) : (i64) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

