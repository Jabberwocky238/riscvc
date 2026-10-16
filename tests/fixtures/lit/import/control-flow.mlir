"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "dominance_order", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i64):
    %15 = "llvm.mlir.constant"() <{value = 3 : i64}> : () -> i64
    "llvm.br"()[^bb2] : () -> ()
  ^bb1:  // pred: ^bb2
    "llvm.return"(%16) : (i64) -> ()
  ^bb2:  // pred: ^bb0
    %16 = "llvm.add"(%arg4, %15) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.br"()[^bb1] : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i1, i64)>, linkage = #llvm.linkage<external>, sym_name = "block_argument", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i1, %arg3: i64):
    %12 = "llvm.mlir.constant"() <{value = 3 : i64}> : () -> i64
    "llvm.cond_br"(%arg2, %arg3)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 1, 0>}> : (i1, i64) -> ()
  ^bb1(%13: i64):  // 2 preds: ^bb0, ^bb2
    "llvm.return"(%13) : (i64) -> ()
  ^bb2:  // pred: ^bb0
    %14 = "llvm.add"(%arg3, %12) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.br"(%14)[^bb1] : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "simple_switch", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: i64):
    %8 = "llvm.mlir.constant"() <{value = 42 : i64}> : () -> i64
    %9 = "llvm.add"(%arg1, %8) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %10 = "llvm.sub"(%arg1, %8) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %11 = "llvm.mul"(%arg1, %8) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.switch"(%arg1)[^bb3, ^bb1, ^bb2] <{case_operand_segments = array<i32: 0, 0>, case_values = dense<[0, 9]> : vector<2xi64>, operandSegmentSizes = array<i32: 1, 0, 0>}> : (i64) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.return"(%9) : (i64) -> ()
  ^bb2:  // pred: ^bb0
    "llvm.return"(%10) : (i64) -> ()
  ^bb3:  // pred: ^bb0
    "llvm.return"(%11) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "switch_args", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i32):
    %0 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "llvm.add"(%arg0, %0) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %2 = "llvm.sub"(%arg0, %0) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %3 = "llvm.mul"(%arg0, %0) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.switch"(%arg0, %3, %1, %2)[^bb2, ^bb1] <{case_operand_segments = array<i32: 2>, case_values = dense<0> : vector<1xi32>, operandSegmentSizes = array<i32: 1, 1, 2>}> : (i32, i32, i32, i32) -> ()
  ^bb1(%4: i32, %5: i32):  // pred: ^bb0
    %6 = "llvm.add"(%4, %5) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.br"(%6)[^bb2] : (i32) -> ()
  ^bb2(%7: i32):  // 2 preds: ^bb0, ^bb1
    "llvm.return"(%7) : (i32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

