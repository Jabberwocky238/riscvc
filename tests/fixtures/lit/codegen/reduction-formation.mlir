"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (vector<4xi32>)>, linkage = #llvm.linkage<external>, sym_name = "reduce_sum_4xi32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: vector<4xi32>):
    %22 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %23 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %24 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %25 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %26 = "llvm.extractelement"(%arg2, %22) : (vector<4xi32>, i32) -> i32
    %27 = "llvm.extractelement"(%arg2, %23) : (vector<4xi32>, i32) -> i32
    %28 = "llvm.extractelement"(%arg2, %24) : (vector<4xi32>, i32) -> i32
    %29 = "llvm.extractelement"(%arg2, %25) : (vector<4xi32>, i32) -> i32
    %30 = "llvm.add"(%26, %27) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %31 = "llvm.add"(%30, %28) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %32 = "llvm.add"(%31, %29) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%32) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (vector<4xi32>)>, linkage = #llvm.linkage<external>, sym_name = "reduce_xor_4xi32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: vector<4xi32>):
    %11 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %12 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %13 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %14 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %15 = "llvm.extractelement"(%arg1, %11) : (vector<4xi32>, i32) -> i32
    %16 = "llvm.extractelement"(%arg1, %12) : (vector<4xi32>, i32) -> i32
    %17 = "llvm.extractelement"(%arg1, %13) : (vector<4xi32>, i32) -> i32
    %18 = "llvm.extractelement"(%arg1, %14) : (vector<4xi32>, i32) -> i32
    %19 = "llvm.xor"(%15, %16) : (i32, i32) -> i32
    %20 = "llvm.xor"(%19, %17) : (i32, i32) -> i32
    %21 = "llvm.xor"(%20, %18) : (i32, i32) -> i32
    "llvm.return"(%21) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (vector<4xi32>)>, linkage = #llvm.linkage<external>, sym_name = "reduce_or_4xi32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: vector<4xi32>):
    %0 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %2 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %3 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %4 = "llvm.extractelement"(%arg0, %0) : (vector<4xi32>, i32) -> i32
    %5 = "llvm.extractelement"(%arg0, %1) : (vector<4xi32>, i32) -> i32
    %6 = "llvm.extractelement"(%arg0, %2) : (vector<4xi32>, i32) -> i32
    %7 = "llvm.extractelement"(%arg0, %3) : (vector<4xi32>, i32) -> i32
    %8 = "llvm.or"(%4, %5) : (i32, i32) -> i32
    %9 = "llvm.or"(%8, %6) : (i32, i32) -> i32
    %10 = "llvm.or"(%9, %7) : (i32, i32) -> i32
    "llvm.return"(%10) : (i32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

