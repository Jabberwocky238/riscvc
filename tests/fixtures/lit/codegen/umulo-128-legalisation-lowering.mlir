"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<struct<(i128, i8)> (i128, i128)>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_unwind, sym_name = "muloti_test", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i128, %arg1: i128):
    %0 = "llvm.mlir.poison"() : () -> !llvm.struct<(i128, i8)>
    %1 = "llvm.intr.umul.with.overflow"(%arg0, %arg1) : (i128, i128) -> !llvm.struct<(i128, i1)>
    %2 = "llvm.extractvalue"(%1) <{position = array<i64: 0>}> : (!llvm.struct<(i128, i1)>) -> i128
    %3 = "llvm.extractvalue"(%1) <{position = array<i64: 1>}> : (!llvm.struct<(i128, i1)>) -> i1
    %4 = "llvm.zext"(%3) : (i1) -> i8
    %5 = "llvm.insertvalue"(%0, %2) <{position = array<i64: 0>}> : (!llvm.struct<(i128, i8)>, i128) -> !llvm.struct<(i128, i8)>
    %6 = "llvm.insertvalue"(%5, %4) <{position = array<i64: 1>}> : (!llvm.struct<(i128, i8)>, i8) -> !llvm.struct<(i128, i8)>
    "llvm.return"(%6) : (!llvm.struct<(i128, i8)>) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

