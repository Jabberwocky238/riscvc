"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "callee_half_in_regs", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg26: i32, %arg27: f16):
    %39 = "llvm.fptosi"(%arg27) : (f16) -> i32
    %40 = "llvm.add"(%arg26, %39) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%40) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "caller_half_in_regs", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %36 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %37 = "llvm.mlir.constant"() <{value = 2.000000e+00 : f16}> : () -> f16
    %38 = "llvm.call"(%36, %37) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @callee_half_in_regs, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, f16) -> i32
    "llvm.return"(%38) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32, i32, i32, i32, i32, f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "callee_half_on_stack", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg17: i32, %arg18: i32, %arg19: i32, %arg20: i32, %arg21: i32, %arg22: i32, %arg23: i32, %arg24: i32, %arg25: f16):
    %34 = "llvm.fptosi"(%arg25) : (f16) -> i32
    %35 = "llvm.add"(%arg24, %34) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%35) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "caller_half_on_stack", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %24 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %25 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %26 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %27 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %28 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %29 = "llvm.mlir.constant"() <{value = 6 : i32}> : () -> i32
    %30 = "llvm.mlir.constant"() <{value = 7 : i32}> : () -> i32
    %31 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %32 = "llvm.mlir.constant"() <{value = 1.000000e+01 : f16}> : () -> f16
    %33 = "llvm.call"(%24, %25, %26, %27, %28, %29, %30, %31, %32) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @callee_half_on_stack, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 9, 0>}> : (i32, i32, i32, i32, i32, i32, i32, i32, f16) -> i32
    "llvm.return"(%33) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, f32, i32, f32, i32, f32, i32, f32, i32, f32, i32, f32, i32, f32, i32, f32, f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "callee_half_on_stack_exhausted_gprs_fprs", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i32, %arg1: f32, %arg2: i32, %arg3: f32, %arg4: i32, %arg5: f32, %arg6: i32, %arg7: f32, %arg8: i32, %arg9: f32, %arg10: i32, %arg11: f32, %arg12: i32, %arg13: f32, %arg14: i32, %arg15: f32, %arg16: f16):
    %22 = "llvm.fptosi"(%arg16) : (f16) -> i32
    %23 = "llvm.add"(%arg14, %22) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%23) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "caller_half_on_stack_exhausted_gprs_fprs", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %3 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %4 = "llvm.mlir.constant"() <{value = 1.000000e+00 : f32}> : () -> f32
    %5 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %6 = "llvm.mlir.constant"() <{value = 2.000000e+00 : f32}> : () -> f32
    %7 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %8 = "llvm.mlir.constant"() <{value = 3.000000e+00 : f32}> : () -> f32
    %9 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %10 = "llvm.mlir.constant"() <{value = 4.000000e+00 : f32}> : () -> f32
    %11 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %12 = "llvm.mlir.constant"() <{value = 5.000000e+00 : f32}> : () -> f32
    %13 = "llvm.mlir.constant"() <{value = 6 : i32}> : () -> i32
    %14 = "llvm.mlir.constant"() <{value = 6.000000e+00 : f32}> : () -> f32
    %15 = "llvm.mlir.constant"() <{value = 7 : i32}> : () -> i32
    %16 = "llvm.mlir.constant"() <{value = 7.000000e+00 : f32}> : () -> f32
    %17 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %18 = "llvm.mlir.constant"() <{value = 8.000000e+00 : f32}> : () -> f32
    %19 = "llvm.mlir.constant"() <{value = 1.000000e+01 : f16}> : () -> f16
    %20 = "llvm.mlir.addressof"() <{global_name = @callee_half_on_stack}> : () -> !llvm.ptr
    %21 = "llvm.call"(%20, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13, %14, %15, %16, %17, %18, %19) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 18, 0>}> : (!llvm.ptr, i32, f32, i32, f32, i32, f32, i32, f32, i32, f32, i32, f32, i32, f32, i32, f32, f16) -> i32
    "llvm.return"(%21) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "callee_half_ret", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %2 = "llvm.mlir.constant"() <{value = 1.000000e+00 : f16}> : () -> f16
    "llvm.return"(%2) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "caller_half_ret", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %0 = "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @callee_half_ret, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> f16
    %1 = "llvm.fptosi"(%0) : (f16) -> i32
    "llvm.return"(%1) : (i32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

