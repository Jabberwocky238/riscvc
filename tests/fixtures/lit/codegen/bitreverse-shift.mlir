"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_bitreverse_srli_bitreverse_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg7: i8):
    %28 = "llvm.mlir.constant"() <{value = 3 : i8}> : () -> i8
    %29 = "llvm.intr.bitreverse"(%arg7) : (i8) -> i8
    %30 = "llvm.lshr"(%29, %28) : (i8, i8) -> i8
    %31 = "llvm.intr.bitreverse"(%30) : (i8) -> i8
    "llvm.return"(%31) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_bitreverse_srli_bitreverse_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: i16):
    %24 = "llvm.mlir.constant"() <{value = 7 : i16}> : () -> i16
    %25 = "llvm.intr.bitreverse"(%arg6) : (i16) -> i16
    %26 = "llvm.lshr"(%25, %24) : (i16, i16) -> i16
    %27 = "llvm.intr.bitreverse"(%26) : (i16) -> i16
    "llvm.return"(%27) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_bitreverse_srli_bitreverse_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: i32):
    %20 = "llvm.mlir.constant"() <{value = 15 : i32}> : () -> i32
    %21 = "llvm.intr.bitreverse"(%arg5) : (i32) -> i32
    %22 = "llvm.lshr"(%21, %20) : (i32, i32) -> i32
    %23 = "llvm.intr.bitreverse"(%22) : (i32) -> i32
    "llvm.return"(%23) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_bitreverse_srli_bitreverse_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i64):
    %16 = "llvm.mlir.constant"() <{value = 33 : i64}> : () -> i64
    %17 = "llvm.intr.bitreverse"(%arg4) : (i64) -> i64
    %18 = "llvm.lshr"(%17, %16) : (i64, i64) -> i64
    %19 = "llvm.intr.bitreverse"(%18) : (i64) -> i64
    "llvm.return"(%19) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_bitreverse_shli_bitreverse_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: i8):
    %12 = "llvm.mlir.constant"() <{value = 3 : i8}> : () -> i8
    %13 = "llvm.intr.bitreverse"(%arg3) : (i8) -> i8
    %14 = "llvm.shl"(%13, %12) <{overflowFlags = 0 : i32}> : (i8, i8) -> i8
    %15 = "llvm.intr.bitreverse"(%14) : (i8) -> i8
    "llvm.return"(%15) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_bitreverse_shli_bitreverse_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i16):
    %8 = "llvm.mlir.constant"() <{value = 7 : i16}> : () -> i16
    %9 = "llvm.intr.bitreverse"(%arg2) : (i16) -> i16
    %10 = "llvm.shl"(%9, %8) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    %11 = "llvm.intr.bitreverse"(%10) : (i16) -> i16
    "llvm.return"(%11) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_bitreverse_shli_bitreverse_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: i32):
    %4 = "llvm.mlir.constant"() <{value = 15 : i32}> : () -> i32
    %5 = "llvm.intr.bitreverse"(%arg1) : (i32) -> i32
    %6 = "llvm.shl"(%5, %4) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %7 = "llvm.intr.bitreverse"(%6) : (i32) -> i32
    "llvm.return"(%7) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_bitreverse_shli_bitreverse_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i64):
    %0 = "llvm.mlir.constant"() <{value = 33 : i64}> : () -> i64
    %1 = "llvm.intr.bitreverse"(%arg0) : (i64) -> i64
    %2 = "llvm.shl"(%1, %0) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %3 = "llvm.intr.bitreverse"(%2) : (i64) -> i64
    "llvm.return"(%3) : (i64) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

