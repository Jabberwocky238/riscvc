"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "callee_double_in_regs", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg11: i32, %arg12: f64):
    %28 = "llvm.fptosi"(%arg12) : (f64) -> i32
    %29 = "llvm.add"(%arg11, %28) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%29) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "caller_double_in_regs", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %25 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %26 = "llvm.mlir.constant"() <{value = 2.000000e+00 : f64}> : () -> f64
    %27 = "llvm.call"(%25, %26) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @callee_double_in_regs, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, f64) -> i32
    "llvm.return"(%27) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, f128, i32, i32, i64, i32, i32, f64, i32, array<2 x i32>)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "callee_aligned_stack", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: f128, %arg3: i32, %arg4: i32, %arg5: i64, %arg6: i32, %arg7: i32, %arg8: f64, %arg9: i32, %arg10: !llvm.array<2 x i32>):
    %15 = "llvm.bitcast"(%arg2) : (f128) -> i128
    %16 = "llvm.trunc"(%15) <{overflowFlags = 0 : i32}> : (i128) -> i32
    %17 = "llvm.add"(%16, %arg6) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %18 = "llvm.add"(%17, %arg7) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %19 = "llvm.bitcast"(%arg8) : (f64) -> i64
    %20 = "llvm.trunc"(%19) <{overflowFlags = 0 : i32}> : (i64) -> i32
    %21 = "llvm.add"(%18, %20) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %22 = "llvm.add"(%21, %arg9) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %23 = "llvm.extractvalue"(%arg10) <{position = array<i64: 0>}> : (!llvm.array<2 x i32>) -> i32
    %24 = "llvm.add"(%22, %23) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%24) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "caller_aligned_stack", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %3 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %4 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %5 = "llvm.mlir.constant"() <{value = 3.14000000000000012434497875801753253 : f128}> : () -> f128
    %6 = "llvm.mlir.constant"() <{value = 12 : i32}> : () -> i32
    %7 = "llvm.mlir.constant"() <{value = 13 : i32}> : () -> i32
    %8 = "llvm.mlir.constant"() <{value = 20000000000 : i64}> : () -> i64
    %9 = "llvm.mlir.constant"() <{value = 14 : i32}> : () -> i32
    %10 = "llvm.mlir.constant"() <{value = 15 : i32}> : () -> i32
    %11 = "llvm.mlir.constant"() <{value = 2.720000e+00 : f64}> : () -> f64
    %12 = "llvm.mlir.constant"() <{value = 16 : i32}> : () -> i32
    %13 = "llvm.mlir.constant"() <{value = dense<[17, 18]> : tensor<2xi32>}> : () -> !llvm.array<2 x i32>
    %14 = "llvm.call"(%3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @callee_aligned_stack, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 11, 0>}> : (i32, i32, f128, i32, i32, i64, i32, i32, f64, i32, !llvm.array<2 x i32>) -> i32
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "callee_small_scalar_ret", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %2 = "llvm.mlir.constant"() <{value = 1.000000e+00 : f64}> : () -> f64
    "llvm.return"(%2) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "caller_small_scalar_ret", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %0 = "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @callee_small_scalar_ret, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> f64
    %1 = "llvm.bitcast"(%0) : (f64) -> i64
    "llvm.return"(%1) : (i64) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

