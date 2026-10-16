"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "func32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: i32, %arg13: i32, %arg14: i32):
    %8 = "llvm.mul"(%arg13, %arg14) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %9 = "llvm.intr.ssub.sat"(%arg12, %8) : (i32, i32) -> i32
    "llvm.return"(%9) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "func64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: i64, %arg10: i64, %arg11: i64):
    %6 = "llvm.mul"(%arg10, %arg11) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %7 = "llvm.intr.ssub.sat"(%arg9, %arg11) : (i64, i64) -> i64
    "llvm.return"(%7) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16, i16, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "func16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: i16, %arg7: i16, %arg8: i16):
    %4 = "llvm.mul"(%arg7, %arg8) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    %5 = "llvm.intr.ssub.sat"(%arg6, %4) : (i16, i16) -> i16
    "llvm.return"(%5) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8, i8, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "func8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: i8, %arg4: i8, %arg5: i8):
    %2 = "llvm.mul"(%arg4, %arg5) <{overflowFlags = 0 : i32}> : (i8, i8) -> i8
    %3 = "llvm.intr.ssub.sat"(%arg3, %2) : (i8, i8) -> i8
    "llvm.return"(%3) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i4 (i4, i4, i4)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "func4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i4, %arg1: i4, %arg2: i4):
    %0 = "llvm.mul"(%arg1, %arg2) <{overflowFlags = 0 : i32}> : (i4, i4) -> i4
    %1 = "llvm.intr.ssub.sat"(%arg0, %0) : (i4, i4) -> i4
    "llvm.return"(%1) : (i4) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

