"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "addcarry", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i64, %arg5: i64):
    %15 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %16 = "llvm.call_intrinsic"(%arg4, %arg5, %15) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.smul.fix.i64", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (i64, i64, i32) -> i64
    "llvm.return"(%16) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<struct<(i32, i32, i1)> (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "addcarry_2x32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32):
    %0 = "llvm.mlir.poison"() : () -> !llvm.struct<(i32, i32, i1)>
    %1 = "llvm.intr.uadd.with.overflow"(%arg0, %arg2) : (i32, i32) -> !llvm.struct<(i32, i1)>
    %2 = "llvm.extractvalue"(%1) <{position = array<i64: 0>}> : (!llvm.struct<(i32, i1)>) -> i32
    %3 = "llvm.extractvalue"(%1) <{position = array<i64: 1>}> : (!llvm.struct<(i32, i1)>) -> i1
    %4 = "llvm.intr.uadd.with.overflow"(%arg1, %arg3) : (i32, i32) -> !llvm.struct<(i32, i1)>
    %5 = "llvm.extractvalue"(%4) <{position = array<i64: 0>}> : (!llvm.struct<(i32, i1)>) -> i32
    %6 = "llvm.extractvalue"(%4) <{position = array<i64: 1>}> : (!llvm.struct<(i32, i1)>) -> i1
    %7 = "llvm.zext"(%3) : (i1) -> i32
    %8 = "llvm.intr.uadd.with.overflow"(%5, %7) : (i32, i32) -> !llvm.struct<(i32, i1)>
    %9 = "llvm.extractvalue"(%8) <{position = array<i64: 0>}> : (!llvm.struct<(i32, i1)>) -> i32
    %10 = "llvm.extractvalue"(%8) <{position = array<i64: 1>}> : (!llvm.struct<(i32, i1)>) -> i1
    %11 = "llvm.or"(%6, %10) : (i1, i1) -> i1
    %12 = "llvm.insertvalue"(%0, %2) <{position = array<i64: 0>}> : (!llvm.struct<(i32, i32, i1)>, i32) -> !llvm.struct<(i32, i32, i1)>
    %13 = "llvm.insertvalue"(%12, %9) <{position = array<i64: 1>}> : (!llvm.struct<(i32, i32, i1)>, i32) -> !llvm.struct<(i32, i32, i1)>
    %14 = "llvm.insertvalue"(%13, %11) <{position = array<i64: 2>}> : (!llvm.struct<(i32, i32, i1)>, i1) -> !llvm.struct<(i32, i32, i1)>
    "llvm.return"(%14) : (!llvm.struct<(i32, i32, i1)>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i32)>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_unwind, passthrough = ["nocallback", "nofree", "nosync", "speculatable"], sym_name = "llvm.smul.fix.i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64, will_return}> ({
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

