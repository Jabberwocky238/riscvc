"builtin.module"() ({
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<warning, "Debug Info Version", 3 : i32>]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32)>, linkage = #llvm.linkage<external>, sym_name = "fastmathFlagsFunc", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (f32, vector<2xf32>)>, linkage = #llvm.linkage<external>, sym_name = "fastmathFlags", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: f32, %arg1: vector<2xf32>):
    %0 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = true}> : () -> i1
    %2 = "llvm.fadd"(%arg0, %arg0) <{fastmathFlags = #llvm.fastmath<nnan, ninf>}> : (f32, f32) -> f32
    %3 = "llvm.fsub"(%arg0, %arg0) <{fastmathFlags = #llvm.fastmath<nnan, ninf>}> : (f32, f32) -> f32
    %4 = "llvm.fmul"(%arg0, %arg0) <{fastmathFlags = #llvm.fastmath<nnan, ninf>}> : (f32, f32) -> f32
    %5 = "llvm.fdiv"(%arg0, %arg0) <{fastmathFlags = #llvm.fastmath<nnan, ninf>}> : (f32, f32) -> f32
    %6 = "llvm.frem"(%arg0, %arg0) <{fastmathFlags = #llvm.fastmath<nnan, ninf>}> : (f32, f32) -> f32
    %7 = "llvm.fcmp"(%arg0, %arg0) <{fastmathFlags = #llvm.fastmath<nnan, ninf>, predicate = 1 : i64}> : (f32, f32) -> i1
    %8 = "llvm.fneg"(%arg0) <{fastmathFlags = #llvm.fastmath<nnan, ninf>}> : (f32) -> f32
    %9 = "llvm.call"(%arg0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @fastmathFlagsFunc, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f32) -> f32
    %10 = "llvm.call"(%arg0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @fastmathFlagsFunc, fastmathFlags = #llvm.fastmath<nnan>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f32) -> f32
    %11 = "llvm.call"(%arg0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @fastmathFlagsFunc, fastmathFlags = #llvm.fastmath<ninf>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f32) -> f32
    %12 = "llvm.call"(%arg0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @fastmathFlagsFunc, fastmathFlags = #llvm.fastmath<nsz>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f32) -> f32
    %13 = "llvm.call"(%arg0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @fastmathFlagsFunc, fastmathFlags = #llvm.fastmath<arcp>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f32) -> f32
    %14 = "llvm.call"(%arg0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @fastmathFlagsFunc, fastmathFlags = #llvm.fastmath<contract>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f32) -> f32
    %15 = "llvm.call"(%arg0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @fastmathFlagsFunc, fastmathFlags = #llvm.fastmath<afn>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f32) -> f32
    %16 = "llvm.call"(%arg0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @fastmathFlagsFunc, fastmathFlags = #llvm.fastmath<reassoc>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f32) -> f32
    %17 = "llvm.call"(%arg0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @fastmathFlagsFunc, fastmathFlags = #llvm.fastmath<fast>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f32) -> f32
    %18 = "llvm.intr.copysign"(%arg0, %arg0) <{fastmathFlags = #llvm.fastmath<fast>}> : (f32, f32) -> f32
    %19 = "llvm.intr.copysign"(%arg0, %arg0) <{fastmathFlags = #llvm.fastmath<afn>}> : (f32, f32) -> f32
    %20 = "llvm.intr.powi"(%arg0, %0) <{fastmathFlags = #llvm.fastmath<fast>}> : (f32, i32) -> f32
    %21 = "llvm.intr.powi"(%arg0, %0) <{fastmathFlags = #llvm.fastmath<afn>}> : (f32, i32) -> f32
    %22 = "llvm.intr.vector.reduce.fmax"(%arg1) <{fastmathFlags = #llvm.fastmath<nnan>}> : (vector<2xf32>) -> f32
    %23 = "llvm.intr.vector.reduce.fmin"(%arg1) <{fastmathFlags = #llvm.fastmath<nnan>}> : (vector<2xf32>) -> f32
    %24 = "llvm.intr.vector.reduce.fmaximum"(%arg1) <{fastmathFlags = #llvm.fastmath<nnan>}> : (vector<2xf32>) -> f32
    %25 = "llvm.intr.vector.reduce.fminimum"(%arg1) <{fastmathFlags = #llvm.fastmath<nnan>}> : (vector<2xf32>) -> f32
    %26 = "llvm.select"(%1, %arg0, %21) <{fastmathFlags = #llvm.fastmath<contract>}> : (i1, f32, f32) -> f32
    "llvm.return"() : () -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

