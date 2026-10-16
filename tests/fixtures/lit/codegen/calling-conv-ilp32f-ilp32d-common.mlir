"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "callee_float_in_fpr", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg28: i32, %arg29: f32):
    %45 = "llvm.fptosi"(%arg29) : (f32) -> i32
    %46 = "llvm.add"(%arg28, %45) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%46) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "caller_float_in_fpr", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %42 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %43 = "llvm.mlir.constant"() <{value = 2.000000e+00 : f32}> : () -> f32
    %44 = "llvm.call"(%42, %43) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @callee_float_in_fpr, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, f32) -> i32
    "llvm.return"(%44) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i64, i64, i64, i64, i32, f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "callee_float_in_fpr_exhausted_gprs", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg22: i64, %arg23: i64, %arg24: i64, %arg25: i64, %arg26: i32, %arg27: f32):
    %40 = "llvm.fptosi"(%arg27) : (f32) -> i32
    %41 = "llvm.add"(%arg26, %40) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%41) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "caller_float_in_fpr_exhausted_gprs", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %33 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %34 = "llvm.mlir.constant"() <{value = 2 : i64}> : () -> i64
    %35 = "llvm.mlir.constant"() <{value = 3 : i64}> : () -> i64
    %36 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %37 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %38 = "llvm.mlir.constant"() <{value = 6.000000e+00 : f32}> : () -> f32
    %39 = "llvm.call"(%33, %34, %35, %36, %37, %38) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @callee_float_in_fpr_exhausted_gprs, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 6, 0>}> : (i64, i64, i64, i64, i32, f32) -> i32
    "llvm.return"(%39) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32, f32, f32, f32, f32, f32, f32, f32, f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "callee_float_in_gpr_exhausted_fprs", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg13: f32, %arg14: f32, %arg15: f32, %arg16: f32, %arg17: f32, %arg18: f32, %arg19: f32, %arg20: f32, %arg21: f32):
    %30 = "llvm.fptosi"(%arg20) : (f32) -> i32
    %31 = "llvm.fptosi"(%arg21) : (f32) -> i32
    %32 = "llvm.add"(%30, %31) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%32) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "caller_float_in_gpr_exhausted_fprs", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %20 = "llvm.mlir.constant"() <{value = 1.000000e+00 : f32}> : () -> f32
    %21 = "llvm.mlir.constant"() <{value = 2.000000e+00 : f32}> : () -> f32
    %22 = "llvm.mlir.constant"() <{value = 3.000000e+00 : f32}> : () -> f32
    %23 = "llvm.mlir.constant"() <{value = 4.000000e+00 : f32}> : () -> f32
    %24 = "llvm.mlir.constant"() <{value = 5.000000e+00 : f32}> : () -> f32
    %25 = "llvm.mlir.constant"() <{value = 6.000000e+00 : f32}> : () -> f32
    %26 = "llvm.mlir.constant"() <{value = 7.000000e+00 : f32}> : () -> f32
    %27 = "llvm.mlir.constant"() <{value = 8.000000e+00 : f32}> : () -> f32
    %28 = "llvm.mlir.constant"() <{value = 9.000000e+00 : f32}> : () -> f32
    %29 = "llvm.call"(%20, %21, %22, %23, %24, %25, %26, %27, %28) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @callee_float_in_gpr_exhausted_fprs, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 9, 0>}> : (f32, f32, f32, f32, f32, f32, f32, f32, f32) -> i32
    "llvm.return"(%29) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i64, f32, i64, f32, i64, f32, i64, f32, f32, f32, f32, f32, f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "callee_float_on_stack_exhausted_gprs_fprs", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i64, %arg1: f32, %arg2: i64, %arg3: f32, %arg4: i64, %arg5: f32, %arg6: i64, %arg7: f32, %arg8: f32, %arg9: f32, %arg10: f32, %arg11: f32, %arg12: f32):
    %17 = "llvm.trunc"(%arg6) <{overflowFlags = 0 : i32}> : (i64) -> i32
    %18 = "llvm.fptosi"(%arg12) : (f32) -> i32
    %19 = "llvm.add"(%17, %18) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%19) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "caller_float_on_stack_exhausted_gprs_fprs", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %3 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %4 = "llvm.mlir.constant"() <{value = 2.000000e+00 : f32}> : () -> f32
    %5 = "llvm.mlir.constant"() <{value = 3 : i64}> : () -> i64
    %6 = "llvm.mlir.constant"() <{value = 4.000000e+00 : f32}> : () -> f32
    %7 = "llvm.mlir.constant"() <{value = 5 : i64}> : () -> i64
    %8 = "llvm.mlir.constant"() <{value = 6.000000e+00 : f32}> : () -> f32
    %9 = "llvm.mlir.constant"() <{value = 7 : i64}> : () -> i64
    %10 = "llvm.mlir.constant"() <{value = 8.000000e+00 : f32}> : () -> f32
    %11 = "llvm.mlir.constant"() <{value = 9.000000e+00 : f32}> : () -> f32
    %12 = "llvm.mlir.constant"() <{value = 1.000000e+01 : f32}> : () -> f32
    %13 = "llvm.mlir.constant"() <{value = 1.100000e+01 : f32}> : () -> f32
    %14 = "llvm.mlir.constant"() <{value = 1.200000e+01 : f32}> : () -> f32
    %15 = "llvm.mlir.constant"() <{value = 1.300000e+01 : f32}> : () -> f32
    %16 = "llvm.call"(%3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13, %14, %15) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @callee_float_on_stack_exhausted_gprs_fprs, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 13, 0>}> : (i64, f32, i64, f32, i64, f32, i64, f32, f32, f32, f32, f32, f32) -> i32
    "llvm.return"(%16) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "callee_float_ret", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %2 = "llvm.mlir.constant"() <{value = 1.000000e+00 : f32}> : () -> f32
    "llvm.return"(%2) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "caller_float_ret", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %0 = "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @callee_float_ret, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> f32
    %1 = "llvm.bitcast"(%0) : (f32) -> i32
    "llvm.return"(%1) : (i32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

