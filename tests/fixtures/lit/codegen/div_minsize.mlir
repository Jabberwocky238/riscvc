"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, passthrough = ["minsize"], sym_name = "testsize1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: i32):
    %10 = "llvm.mlir.constant"() <{value = 32 : i32}> : () -> i32
    %11 = "llvm.sdiv"(%arg5, %10) : (i32, i32) -> i32
    "llvm.return"(%11) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, passthrough = ["minsize"], sym_name = "testsize2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i32):
    %8 = "llvm.mlir.constant"() <{value = 33 : i32}> : () -> i32
    %9 = "llvm.sdiv"(%arg4, %8) : (i32, i32) -> i32
    "llvm.return"(%9) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, passthrough = ["minsize"], sym_name = "testsize3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: i32):
    %6 = "llvm.mlir.constant"() <{value = 32 : i32}> : () -> i32
    %7 = "llvm.udiv"(%arg3, %6) : (i32, i32) -> i32
    "llvm.return"(%7) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, passthrough = ["minsize"], sym_name = "testsize4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i32):
    %4 = "llvm.mlir.constant"() <{value = 33 : i32}> : () -> i32
    %5 = "llvm.udiv"(%arg2, %4) : (i32, i32) -> i32
    "llvm.return"(%5) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i128 (i128)>, linkage = #llvm.linkage<external>, no_unwind, passthrough = ["minsize"], sym_name = "i128_sdiv", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: i128):
    %2 = "llvm.mlir.constant"() <{value = 4 : i128}> : () -> i128
    %3 = "llvm.sdiv"(%arg1, %2) : (i128, i128) -> i128
    "llvm.return"(%3) : (i128) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i256 (i256)>, linkage = #llvm.linkage<external>, no_unwind, passthrough = ["minsize"], sym_name = "i256_sdiv", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i256):
    %0 = "llvm.mlir.constant"() <{value = 4 : i256}> : () -> i256
    %1 = "llvm.sdiv"(%arg0, %0) : (i256, i256) -> i256
    "llvm.return"(%1) : (i256) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

