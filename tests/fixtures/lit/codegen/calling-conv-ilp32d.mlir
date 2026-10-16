"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "callee_double_in_fpr", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg41: i32, %arg42: f64):
    %62 = "llvm.fptosi"(%arg42) : (f64) -> i32
    %63 = "llvm.add"(%arg41, %62) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%63) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "caller_double_in_fpr", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %59 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %60 = "llvm.mlir.constant"() <{value = 2.000000e+00 : f64}> : () -> f64
    %61 = "llvm.call"(%59, %60) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @callee_double_in_fpr, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, f64) -> i32
    "llvm.return"(%61) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i64, i64, i64, i64, i32, f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "callee_double_in_fpr_exhausted_gprs", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg35: i64, %arg36: i64, %arg37: i64, %arg38: i64, %arg39: i32, %arg40: f64):
    %57 = "llvm.fptosi"(%arg40) : (f64) -> i32
    %58 = "llvm.add"(%arg39, %57) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%58) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "caller_double_in_fpr_exhausted_gprs", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %50 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %51 = "llvm.mlir.constant"() <{value = 2 : i64}> : () -> i64
    %52 = "llvm.mlir.constant"() <{value = 3 : i64}> : () -> i64
    %53 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %54 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %55 = "llvm.mlir.constant"() <{value = 6.000000e+00 : f64}> : () -> f64
    %56 = "llvm.call"(%50, %51, %52, %53, %54, %55) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @callee_double_in_fpr_exhausted_gprs, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 6, 0>}> : (i64, i64, i64, i64, i32, f64) -> i32
    "llvm.return"(%56) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f64, f64, f64, f64, f64, f64, f64, f64, f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "callee_double_in_gpr_exhausted_fprs", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg26: f64, %arg27: f64, %arg28: f64, %arg29: f64, %arg30: f64, %arg31: f64, %arg32: f64, %arg33: f64, %arg34: f64):
    %47 = "llvm.fptosi"(%arg33) : (f64) -> i32
    %48 = "llvm.fptosi"(%arg34) : (f64) -> i32
    %49 = "llvm.add"(%47, %48) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%49) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "caller_double_in_gpr_exhausted_fprs", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %37 = "llvm.mlir.constant"() <{value = 1.000000e+00 : f64}> : () -> f64
    %38 = "llvm.mlir.constant"() <{value = 2.000000e+00 : f64}> : () -> f64
    %39 = "llvm.mlir.constant"() <{value = 3.000000e+00 : f64}> : () -> f64
    %40 = "llvm.mlir.constant"() <{value = 4.000000e+00 : f64}> : () -> f64
    %41 = "llvm.mlir.constant"() <{value = 5.000000e+00 : f64}> : () -> f64
    %42 = "llvm.mlir.constant"() <{value = 6.000000e+00 : f64}> : () -> f64
    %43 = "llvm.mlir.constant"() <{value = 7.000000e+00 : f64}> : () -> f64
    %44 = "llvm.mlir.constant"() <{value = 8.000000e+00 : f64}> : () -> f64
    %45 = "llvm.mlir.constant"() <{value = 9.000000e+00 : f64}> : () -> f64
    %46 = "llvm.call"(%37, %38, %39, %40, %41, %42, %43, %44, %45) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @callee_double_in_gpr_exhausted_fprs, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 9, 0>}> : (f64, f64, f64, f64, f64, f64, f64, f64, f64) -> i32
    "llvm.return"(%46) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i64, f64, i64, f64, i64, f64, i32, f64, f64, f64, f64, f64, f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "callee_double_in_gpr_and_stack_almost_exhausted_gprs_fprs", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg13: i64, %arg14: f64, %arg15: i64, %arg16: f64, %arg17: i64, %arg18: f64, %arg19: i32, %arg20: f64, %arg21: f64, %arg22: f64, %arg23: f64, %arg24: f64, %arg25: f64):
    %35 = "llvm.fptosi"(%arg25) : (f64) -> i32
    %36 = "llvm.add"(%arg19, %35) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%36) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "caller_double_in_gpr_and_stack_almost_exhausted_gprs_fprs", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %21 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %22 = "llvm.mlir.constant"() <{value = 2.000000e+00 : f64}> : () -> f64
    %23 = "llvm.mlir.constant"() <{value = 3 : i64}> : () -> i64
    %24 = "llvm.mlir.constant"() <{value = 4.000000e+00 : f64}> : () -> f64
    %25 = "llvm.mlir.constant"() <{value = 5 : i64}> : () -> i64
    %26 = "llvm.mlir.constant"() <{value = 6.000000e+00 : f64}> : () -> f64
    %27 = "llvm.mlir.constant"() <{value = 7 : i32}> : () -> i32
    %28 = "llvm.mlir.constant"() <{value = 8.000000e+00 : f64}> : () -> f64
    %29 = "llvm.mlir.constant"() <{value = 9.000000e+00 : f64}> : () -> f64
    %30 = "llvm.mlir.constant"() <{value = 1.000000e+01 : f64}> : () -> f64
    %31 = "llvm.mlir.constant"() <{value = 1.100000e+01 : f64}> : () -> f64
    %32 = "llvm.mlir.constant"() <{value = 1.200000e+01 : f64}> : () -> f64
    %33 = "llvm.mlir.constant"() <{value = 1.300000e+01 : f64}> : () -> f64
    %34 = "llvm.call"(%21, %22, %23, %24, %25, %26, %27, %28, %29, %30, %31, %32, %33) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @callee_double_in_gpr_and_stack_almost_exhausted_gprs_fprs, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 13, 0>}> : (i64, f64, i64, f64, i64, f64, i32, f64, f64, f64, f64, f64, f64) -> i32
    "llvm.return"(%34) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i64, f64, i64, f64, i64, f64, i64, f64, f64, f64, f64, f64, f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "callee_double_on_stack_exhausted_gprs_fprs", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i64, %arg1: f64, %arg2: i64, %arg3: f64, %arg4: i64, %arg5: f64, %arg6: i64, %arg7: f64, %arg8: f64, %arg9: f64, %arg10: f64, %arg11: f64, %arg12: f64):
    %18 = "llvm.trunc"(%arg6) <{overflowFlags = 0 : i32}> : (i64) -> i32
    %19 = "llvm.fptosi"(%arg12) : (f64) -> i32
    %20 = "llvm.add"(%18, %19) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%20) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "caller_double_on_stack_exhausted_gprs_fprs", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %4 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %5 = "llvm.mlir.constant"() <{value = 2.000000e+00 : f64}> : () -> f64
    %6 = "llvm.mlir.constant"() <{value = 3 : i64}> : () -> i64
    %7 = "llvm.mlir.constant"() <{value = 4.000000e+00 : f64}> : () -> f64
    %8 = "llvm.mlir.constant"() <{value = 5 : i64}> : () -> i64
    %9 = "llvm.mlir.constant"() <{value = 6.000000e+00 : f64}> : () -> f64
    %10 = "llvm.mlir.constant"() <{value = 7 : i64}> : () -> i64
    %11 = "llvm.mlir.constant"() <{value = 8.000000e+00 : f64}> : () -> f64
    %12 = "llvm.mlir.constant"() <{value = 9.000000e+00 : f64}> : () -> f64
    %13 = "llvm.mlir.constant"() <{value = 1.000000e+01 : f64}> : () -> f64
    %14 = "llvm.mlir.constant"() <{value = 1.100000e+01 : f64}> : () -> f64
    %15 = "llvm.mlir.constant"() <{value = 1.200000e+01 : f64}> : () -> f64
    %16 = "llvm.mlir.constant"() <{value = 1.300000e+01 : f64}> : () -> f64
    %17 = "llvm.call"(%4, %5, %6, %7, %8, %9, %10, %11, %12, %13, %14, %15, %16) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @callee_double_on_stack_exhausted_gprs_fprs, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 13, 0>}> : (i64, f64, i64, f64, i64, f64, i64, f64, f64, f64, f64, f64, f64) -> i32
    "llvm.return"(%17) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "callee_double_ret", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %3 = "llvm.mlir.constant"() <{value = 1.000000e+00 : f64}> : () -> f64
    "llvm.return"(%3) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "caller_double_ret", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %0 = "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @callee_double_ret, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> f64
    %1 = "llvm.bitcast"(%0) : (f64) -> i64
    %2 = "llvm.trunc"(%1) <{overflowFlags = 0 : i32}> : (i64) -> i32
    "llvm.return"(%2) : (i32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

