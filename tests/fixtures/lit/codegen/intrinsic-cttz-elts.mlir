"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (vector<4xi32>)>, linkage = #llvm.linkage<external>, sym_name = "ctz_v4i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: vector<4xi32>):
    %2 = "llvm.mlir.constant"() <{value = false}> : () -> i1
    %3 = "llvm.call_intrinsic"(%arg1, %2) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.experimental.cttz.elts.i16.v4i32", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (vector<4xi32>, i1) -> i16
    "llvm.return"(%3) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (vector<2xi1>)>, linkage = #llvm.linkage<external>, sym_name = "ctz_v2i1_poison", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: vector<2xi1>):
    %0 = "llvm.mlir.constant"() <{value = true}> : () -> i1
    %1 = "llvm.call_intrinsic"(%arg0, %0) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.experimental.cttz.elts.i32.v2i1", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (vector<2xi1>, i1) -> i32
    "llvm.return"(%1) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (vector<4xi32>, i1)>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_unwind, passthrough = ["nocallback", "nofree", "nosync", "speculatable"], sym_name = "llvm.experimental.cttz.elts.i16.v4i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64, will_return}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (vector<2xi1>, i1)>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_unwind, passthrough = ["nocallback", "nofree", "nosync", "speculatable"], sym_name = "llvm.experimental.cttz.elts.i32.v2i1", unnamed_addr = 0 : i64, visibility_ = 0 : i64, will_return}> ({
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

