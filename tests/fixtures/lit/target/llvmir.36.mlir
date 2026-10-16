"builtin.module"() ({
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<warning, "Debug Info Version", 3 : i32>]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "switch_args", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: i32):
    %6 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %7 = "llvm.mlir.constant"() <{value = 7 : i32}> : () -> i32
    %8 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    "llvm.switch"(%arg1, %6, %7, %8)[^bb1, ^bb2, ^bb3] <{case_operand_segments = array<i32: 1, 2>, case_values = dense<[-1, 1]> : vector<2xi32>, operandSegmentSizes = array<i32: 1, 0, 3>}> : (i32, i32, i32, i32) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.return"(%arg1) : (i32) -> ()
  ^bb2(%9: i32):  // pred: ^bb0
    "llvm.return"(%7) : (i32) -> ()
  ^bb3(%10: i32, %11: i32):  // pred: ^bb0
    "llvm.return"(%10) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "switch_weights", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i32):
    %0 = "llvm.mlir.constant"() <{value = 19 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 23 : i32}> : () -> i32
    %2 = "llvm.mlir.constant"() <{value = 29 : i32}> : () -> i32
    "llvm.switch"(%arg0, %0, %1, %2)[^bb1, ^bb2, ^bb3] <{branch_weights = array<i32: 13, 17, 19>, case_operand_segments = array<i32: 2, 0>, case_values = dense<[9, 99]> : vector<2xi32>, operandSegmentSizes = array<i32: 1, 1, 2>}> : (i32, i32, i32, i32) -> ()
  ^bb1(%3: i32):  // pred: ^bb0
    "llvm.return"(%3) : (i32) -> ()
  ^bb2(%4: i32, %5: i32):  // pred: ^bb0
    "llvm.return"(%5) : (i32) -> ()
  ^bb3:  // pred: ^bb0
    "llvm.return"(%arg0) : (i32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

