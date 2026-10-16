"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_fixed_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: i8, %arg15: i8):
    %43 = "llvm.mlir.constant"() <{value = 1 : i8}> : () -> i8
    %44 = "llvm.or"(%arg14, %arg15) : (i8, i8) -> i8
    %45 = "llvm.xor"(%arg14, %arg15) : (i8, i8) -> i8
    %46 = "llvm.ashr"(%45, %43) : (i8, i8) -> i8
    %47 = "llvm.sub"(%44, %46) <{overflowFlags = 0 : i32}> : (i8, i8) -> i8
    "llvm.return"(%47) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_ext_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: i8, %arg13: i8):
    %36 = "llvm.mlir.constant"() <{value = 1 : i16}> : () -> i16
    %37 = "llvm.sext"(%arg12) : (i8) -> i16
    %38 = "llvm.sext"(%arg13) : (i8) -> i16
    %39 = "llvm.add"(%37, %38) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    %40 = "llvm.add"(%39, %36) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    %41 = "llvm.ashr"(%40, %36) : (i16, i16) -> i16
    %42 = "llvm.trunc"(%41) <{overflowFlags = 0 : i32}> : (i16) -> i8
    "llvm.return"(%42) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_fixed_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: i16, %arg11: i16):
    %31 = "llvm.mlir.constant"() <{value = 1 : i16}> : () -> i16
    %32 = "llvm.or"(%arg10, %arg11) : (i16, i16) -> i16
    %33 = "llvm.xor"(%arg10, %arg11) : (i16, i16) -> i16
    %34 = "llvm.ashr"(%33, %31) : (i16, i16) -> i16
    %35 = "llvm.sub"(%32, %34) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    "llvm.return"(%35) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_ext_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: i16, %arg9: i16):
    %24 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %25 = "llvm.sext"(%arg8) : (i16) -> i32
    %26 = "llvm.sext"(%arg9) : (i16) -> i32
    %27 = "llvm.add"(%25, %26) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %28 = "llvm.add"(%27, %24) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %29 = "llvm.ashr"(%28, %24) : (i32, i32) -> i32
    %30 = "llvm.trunc"(%29) <{overflowFlags = 0 : i32}> : (i32) -> i16
    "llvm.return"(%30) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_fixed_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: i32, %arg7: i32):
    %19 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %20 = "llvm.or"(%arg6, %arg7) : (i32, i32) -> i32
    %21 = "llvm.xor"(%arg7, %arg6) : (i32, i32) -> i32
    %22 = "llvm.ashr"(%21, %19) : (i32, i32) -> i32
    %23 = "llvm.sub"(%20, %22) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%23) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_ext_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i32, %arg5: i32):
    %12 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %13 = "llvm.sext"(%arg4) : (i32) -> i64
    %14 = "llvm.sext"(%arg5) : (i32) -> i64
    %15 = "llvm.add"(%13, %14) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %16 = "llvm.add"(%15, %12) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %17 = "llvm.ashr"(%16, %12) : (i64, i64) -> i64
    %18 = "llvm.trunc"(%17) <{overflowFlags = 0 : i32}> : (i64) -> i32
    "llvm.return"(%18) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_fixed_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i64, %arg3: i64):
    %7 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %8 = "llvm.or"(%arg2, %arg3) : (i64, i64) -> i64
    %9 = "llvm.xor"(%arg3, %arg2) : (i64, i64) -> i64
    %10 = "llvm.ashr"(%9, %7) : (i64, i64) -> i64
    %11 = "llvm.sub"(%8, %10) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%11) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_ext_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i64, %arg1: i64):
    %0 = "llvm.mlir.constant"() <{value = 1 : i128}> : () -> i128
    %1 = "llvm.sext"(%arg0) : (i64) -> i128
    %2 = "llvm.sext"(%arg1) : (i64) -> i128
    %3 = "llvm.add"(%1, %2) <{overflowFlags = 0 : i32}> : (i128, i128) -> i128
    %4 = "llvm.add"(%3, %0) <{overflowFlags = 0 : i32}> : (i128, i128) -> i128
    %5 = "llvm.ashr"(%4, %0) : (i128, i128) -> i128
    %6 = "llvm.trunc"(%5) <{overflowFlags = 0 : i32}> : (i128) -> i64
    "llvm.return"(%6) : (i64) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

