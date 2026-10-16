"builtin.module"() ({
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<warning, "Debug Info Version", 3 : i32>]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (vector<2xi16>, vector<4xi8>, i32)>, linkage = #llvm.linkage<external>, sym_name = "nvvm_dot_accumulate_2way", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: vector<2xi16>, %arg1: vector<4xi8>, %arg2: i32):
    %0 = "llvm.mlir.constant"() <{value = false}> : () -> i1
    %1 = "llvm.mlir.constant"() <{value = true}> : () -> i1
    %2 = "llvm.bitcast"(%arg0) : (vector<2xi16>) -> i32
    %3 = "llvm.bitcast"(%arg1) : (vector<4xi8>) -> i32
    %4 = "llvm.call_intrinsic"(%2, %3, %0, %arg2) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.nvvm.idp2a.u.u", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>}> : (i32, i32, i1, i32) -> i32
    %5 = "llvm.bitcast"(%arg0) : (vector<2xi16>) -> i32
    %6 = "llvm.bitcast"(%arg1) : (vector<4xi8>) -> i32
    %7 = "llvm.call_intrinsic"(%5, %6, %1, %arg2) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.nvvm.idp2a.u.u", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>}> : (i32, i32, i1, i32) -> i32
    %8 = "llvm.bitcast"(%arg0) : (vector<2xi16>) -> i32
    %9 = "llvm.bitcast"(%arg1) : (vector<4xi8>) -> i32
    %10 = "llvm.call_intrinsic"(%8, %9, %0, %arg2) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.nvvm.idp2a.s.u", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>}> : (i32, i32, i1, i32) -> i32
    %11 = "llvm.bitcast"(%arg0) : (vector<2xi16>) -> i32
    %12 = "llvm.bitcast"(%arg1) : (vector<4xi8>) -> i32
    %13 = "llvm.call_intrinsic"(%11, %12, %1, %arg2) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.nvvm.idp2a.s.u", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>}> : (i32, i32, i1, i32) -> i32
    %14 = "llvm.bitcast"(%arg0) : (vector<2xi16>) -> i32
    %15 = "llvm.bitcast"(%arg1) : (vector<4xi8>) -> i32
    %16 = "llvm.call_intrinsic"(%14, %15, %0, %arg2) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.nvvm.idp2a.u.s", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>}> : (i32, i32, i1, i32) -> i32
    %17 = "llvm.bitcast"(%arg0) : (vector<2xi16>) -> i32
    %18 = "llvm.bitcast"(%arg1) : (vector<4xi8>) -> i32
    %19 = "llvm.call_intrinsic"(%17, %18, %1, %arg2) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.nvvm.idp2a.u.s", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>}> : (i32, i32, i1, i32) -> i32
    %20 = "llvm.bitcast"(%arg0) : (vector<2xi16>) -> i32
    %21 = "llvm.bitcast"(%arg1) : (vector<4xi8>) -> i32
    %22 = "llvm.call_intrinsic"(%20, %21, %0, %arg2) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.nvvm.idp2a.s.s", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>}> : (i32, i32, i1, i32) -> i32
    %23 = "llvm.bitcast"(%arg0) : (vector<2xi16>) -> i32
    %24 = "llvm.bitcast"(%arg1) : (vector<4xi8>) -> i32
    %25 = "llvm.call_intrinsic"(%23, %24, %1, %arg2) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.nvvm.idp2a.s.s", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>}> : (i32, i32, i1, i32) -> i32
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i1, i32)>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_unwind, passthrough = ["nocallback", "nofree", "nosync", "speculatable"], sym_name = "llvm.nvvm.idp2a.u.u", unnamed_addr = 0 : i64, visibility_ = 0 : i64, will_return}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i1, i32)>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_unwind, passthrough = ["nocallback", "nofree", "nosync", "speculatable"], sym_name = "llvm.nvvm.idp2a.s.u", unnamed_addr = 0 : i64, visibility_ = 0 : i64, will_return}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i1, i32)>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_unwind, passthrough = ["nocallback", "nofree", "nosync", "speculatable"], sym_name = "llvm.nvvm.idp2a.u.s", unnamed_addr = 0 : i64, visibility_ = 0 : i64, will_return}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i1, i32)>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_unwind, passthrough = ["nocallback", "nofree", "nosync", "speculatable"], sym_name = "llvm.nvvm.idp2a.s.s", unnamed_addr = 0 : i64, visibility_ = 0 : i64, will_return}> ({
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

