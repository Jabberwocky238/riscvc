"builtin.module"() ({
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<warning, "Debug Info Version", 3 : i32>]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (vector<4xi8>, vector<4xi8>, i32)>, linkage = #llvm.linkage<external>, sym_name = "nvvm_dot_accumulate_4way", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: vector<4xi8>, %arg1: vector<4xi8>, %arg2: i32):
    %0 = "llvm.bitcast"(%arg0) : (vector<4xi8>) -> i32
    %1 = "llvm.bitcast"(%arg1) : (vector<4xi8>) -> i32
    %2 = "llvm.call_intrinsic"(%0, %1, %arg2) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.nvvm.idp4a.u.u", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (i32, i32, i32) -> i32
    %3 = "llvm.bitcast"(%arg0) : (vector<4xi8>) -> i32
    %4 = "llvm.bitcast"(%arg1) : (vector<4xi8>) -> i32
    %5 = "llvm.call_intrinsic"(%3, %4, %arg2) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.nvvm.idp4a.s.u", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (i32, i32, i32) -> i32
    %6 = "llvm.bitcast"(%arg0) : (vector<4xi8>) -> i32
    %7 = "llvm.bitcast"(%arg1) : (vector<4xi8>) -> i32
    %8 = "llvm.call_intrinsic"(%6, %7, %arg2) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.nvvm.idp4a.u.s", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (i32, i32, i32) -> i32
    %9 = "llvm.bitcast"(%arg0) : (vector<4xi8>) -> i32
    %10 = "llvm.bitcast"(%arg1) : (vector<4xi8>) -> i32
    %11 = "llvm.call_intrinsic"(%9, %10, %arg2) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.nvvm.idp4a.s.s", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (i32, i32, i32) -> i32
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_unwind, passthrough = ["nocallback", "nofree", "nosync", "speculatable"], sym_name = "llvm.nvvm.idp4a.u.u", unnamed_addr = 0 : i64, visibility_ = 0 : i64, will_return}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_unwind, passthrough = ["nocallback", "nofree", "nosync", "speculatable"], sym_name = "llvm.nvvm.idp4a.s.u", unnamed_addr = 0 : i64, visibility_ = 0 : i64, will_return}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_unwind, passthrough = ["nocallback", "nofree", "nosync", "speculatable"], sym_name = "llvm.nvvm.idp4a.u.s", unnamed_addr = 0 : i64, visibility_ = 0 : i64, will_return}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_unwind, passthrough = ["nocallback", "nofree", "nosync", "speculatable"], sym_name = "llvm.nvvm.idp4a.s.s", unnamed_addr = 0 : i64, visibility_ = 0 : i64, will_return}> ({
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

