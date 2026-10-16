"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "c_not", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg17: i64, %arg18: i64, %arg19: i64):
    %18 = "llvm.mlir.constant"() <{value = -1 : i64}> : () -> i64
    %19 = "llvm.mlir.constant"() <{value = 1234 : i64}> : () -> i64
    %20 = "llvm.xor"(%arg18, %18) : (i64, i64) -> i64
    %21 = "llvm.mul"(%20, %19) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%21) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "c_mul", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64):
    %15 = "llvm.mlir.constant"() <{value = 4096 : i64}> : () -> i64
    %16 = "llvm.mul"(%arg14, %arg15) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %17 = "llvm.or"(%16, %15) : (i64, i64) -> i64
    "llvm.return"(%17) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i8, i64)>, linkage = #llvm.linkage<external>, sym_name = "c_sext_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: i64, %arg11: i8, %arg12: i64):
    %12 = "llvm.mlir.constant"() <{value = 4096 : i64}> : () -> i64
    %13 = "llvm.sext"(%arg11) : (i8) -> i64
    %14 = "llvm.or"(%13, %12) : (i64, i64) -> i64
    "llvm.return"(%14) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i16, i64)>, linkage = #llvm.linkage<external>, sym_name = "c_sext_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg7: i64, %arg8: i16, %arg9: i64):
    %9 = "llvm.mlir.constant"() <{value = 4096 : i64}> : () -> i64
    %10 = "llvm.sext"(%arg8) : (i16) -> i64
    %11 = "llvm.or"(%10, %9) : (i64, i64) -> i64
    "llvm.return"(%11) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i8, i64)>, linkage = #llvm.linkage<external>, sym_name = "c_zext_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i64, %arg5: i8, %arg6: i64):
    %6 = "llvm.mlir.constant"() <{value = 4096 : i64}> : () -> i64
    %7 = "llvm.zext"(%arg5) : (i8) -> i64
    %8 = "llvm.or"(%7, %6) : (i64, i64) -> i64
    "llvm.return"(%8) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i16)>, linkage = #llvm.linkage<external>, sym_name = "c_zext_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i64, %arg3: i16):
    %3 = "llvm.mlir.constant"() <{value = 16777216 : i64}> : () -> i64
    %4 = "llvm.zext"(%arg3) : (i16) -> i64
    %5 = "llvm.or"(%4, %3) : (i64, i64) -> i64
    "llvm.return"(%5) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i32)>, linkage = #llvm.linkage<external>, sym_name = "c_zext_w", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i64, %arg1: i32):
    %0 = "llvm.mlir.constant"() <{value = 1234 : i64}> : () -> i64
    %1 = "llvm.zext"(%arg1) : (i32) -> i64
    %2 = "llvm.mul"(%1, %0) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%2) : (i64) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

