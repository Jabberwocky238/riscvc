"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "test1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: i32):
    %20 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %21 = "llvm.mlir.constant"() <{value = 134217720 : i32}> : () -> i32
    %22 = "llvm.lshr"(%arg5, %20) : (i32, i32) -> i32
    %23 = "llvm.and"(%22, %21) : (i32, i32) -> i32
    "llvm.return"(%23) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "test2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i64):
    %16 = "llvm.mlir.constant"() <{value = 5 : i64}> : () -> i64
    %17 = "llvm.mlir.constant"() <{value = 576460752303423480 : i64}> : () -> i64
    %18 = "llvm.lshr"(%arg4, %16) : (i64, i64) -> i64
    %19 = "llvm.and"(%18, %17) : (i64, i64) -> i64
    "llvm.return"(%19) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "test3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: i32):
    %12 = "llvm.mlir.constant"() <{value = 6 : i32}> : () -> i32
    %13 = "llvm.mlir.constant"() <{value = 67092480 : i32}> : () -> i32
    %14 = "llvm.lshr"(%arg3, %12) : (i32, i32) -> i32
    %15 = "llvm.and"(%14, %13) : (i32, i32) -> i32
    "llvm.return"(%15) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "test4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i64):
    %8 = "llvm.mlir.constant"() <{value = 6 : i64}> : () -> i64
    %9 = "llvm.mlir.constant"() <{value = 288230376151695360 : i64}> : () -> i64
    %10 = "llvm.lshr"(%arg2, %8) : (i64, i64) -> i64
    %11 = "llvm.and"(%10, %9) : (i64, i64) -> i64
    "llvm.return"(%11) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "test5", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: i32):
    %4 = "llvm.mlir.constant"() <{value = 6 : i32}> : () -> i32
    %5 = "llvm.mlir.constant"() <{value = -65536 : i32}> : () -> i32
    %6 = "llvm.shl"(%arg1, %4) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %7 = "llvm.and"(%6, %5) : (i32, i32) -> i32
    "llvm.return"(%7) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "test6", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i64):
    %0 = "llvm.mlir.constant"() <{value = 6 : i64}> : () -> i64
    %1 = "llvm.mlir.constant"() <{value = -65536 : i64}> : () -> i64
    %2 = "llvm.shl"(%arg0, %0) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %3 = "llvm.and"(%2, %1) : (i64, i64) -> i64
    "llvm.return"(%3) : (i64) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

