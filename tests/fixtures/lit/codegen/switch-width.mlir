"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i64)>, linkage = #llvm.linkage<external>, sym_name = "native_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg7: i64):
    %34 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %35 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %36 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    "llvm.switch"(%arg7)[^bb3, ^bb1, ^bb2] <{case_operand_segments = array<i32: 0, 0>, case_values = dense<[1, -1]> : vector<2xi64>, operandSegmentSizes = array<i32: 1, 0, 0>}> : (i64) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.br"(%35)[^bb4] : (i32) -> ()
  ^bb2:  // pred: ^bb0
    "llvm.br"(%34)[^bb4] : (i32) -> ()
  ^bb3:  // pred: ^bb0
    "llvm.br"(%36)[^bb4] : (i32) -> ()
  ^bb4(%37: i32):  // 3 preds: ^bb1, ^bb2, ^bb3
    "llvm.return"(%37) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "native_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: i32):
    %30 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %31 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %32 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    "llvm.switch"(%arg6)[^bb3, ^bb1, ^bb2] <{case_operand_segments = array<i32: 0, 0>, case_values = dense<[1, -1]> : vector<2xi32>, operandSegmentSizes = array<i32: 1, 0, 0>}> : (i32) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.br"(%31)[^bb4] : (i32) -> ()
  ^bb2:  // pred: ^bb0
    "llvm.br"(%30)[^bb4] : (i32) -> ()
  ^bb3:  // pred: ^bb0
    "llvm.br"(%32)[^bb4] : (i32) -> ()
  ^bb4(%33: i32):  // 3 preds: ^bb1, ^bb2, ^bb3
    "llvm.return"(%33) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i64)>, linkage = #llvm.linkage<external>, sym_name = "trunc_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: i64):
    %25 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %26 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %27 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %28 = "llvm.trunc"(%arg5) <{overflowFlags = 0 : i32}> : (i64) -> i32
    "llvm.switch"(%28)[^bb3, ^bb1, ^bb2] <{case_operand_segments = array<i32: 0, 0>, case_values = dense<[1, -1]> : vector<2xi32>, operandSegmentSizes = array<i32: 1, 0, 0>}> : (i32) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.br"(%26)[^bb4] : (i32) -> ()
  ^bb2:  // pred: ^bb0
    "llvm.br"(%25)[^bb4] : (i32) -> ()
  ^bb3:  // pred: ^bb0
    "llvm.br"(%27)[^bb4] : (i32) -> ()
  ^bb4(%29: i32):  // 3 preds: ^bb1, ^bb2, ^bb3
    "llvm.return"(%29) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i64)>, linkage = #llvm.linkage<external>, sym_name = "trunc_i17", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i64):
    %20 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %21 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %22 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %23 = "llvm.trunc"(%arg4) <{overflowFlags = 0 : i32}> : (i64) -> i17
    "llvm.switch"(%23)[^bb3, ^bb1, ^bb2] <{case_operand_segments = array<i32: 0, 0>, case_values = dense<[1, -1]> : vector<2xi17>, operandSegmentSizes = array<i32: 1, 0, 0>}> : (i17) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.br"(%21)[^bb4] : (i32) -> ()
  ^bb2:  // pred: ^bb0
    "llvm.br"(%20)[^bb4] : (i32) -> ()
  ^bb3:  // pred: ^bb0
    "llvm.br"(%22)[^bb4] : (i32) -> ()
  ^bb4(%24: i32):  // 3 preds: ^bb1, ^bb2, ^bb3
    "llvm.return"(%24) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i64)>, linkage = #llvm.linkage<external>, sym_name = "trunc_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: i64):
    %15 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %16 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %17 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %18 = "llvm.trunc"(%arg3) <{overflowFlags = 0 : i32}> : (i64) -> i16
    "llvm.switch"(%18)[^bb3, ^bb1, ^bb2] <{case_operand_segments = array<i32: 0, 0>, case_values = dense<[1, -1]> : vector<2xi16>, operandSegmentSizes = array<i32: 1, 0, 0>}> : (i16) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.br"(%16)[^bb4] : (i32) -> ()
  ^bb2:  // pred: ^bb0
    "llvm.br"(%15)[^bb4] : (i32) -> ()
  ^bb3:  // pred: ^bb0
    "llvm.br"(%17)[^bb4] : (i32) -> ()
  ^bb4(%19: i32):  // 3 preds: ^bb1, ^bb2, ^bb3
    "llvm.return"(%19) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i64)>, linkage = #llvm.linkage<external>, sym_name = "trunc_i12", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i64):
    %10 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %11 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %12 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %13 = "llvm.trunc"(%arg2) <{overflowFlags = 0 : i32}> : (i64) -> i12
    "llvm.switch"(%13)[^bb3, ^bb1, ^bb2] <{case_operand_segments = array<i32: 0, 0>, case_values = dense<[1, -1]> : vector<2xi12>, operandSegmentSizes = array<i32: 1, 0, 0>}> : (i12) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.br"(%11)[^bb4] : (i32) -> ()
  ^bb2:  // pred: ^bb0
    "llvm.br"(%10)[^bb4] : (i32) -> ()
  ^bb3:  // pred: ^bb0
    "llvm.br"(%12)[^bb4] : (i32) -> ()
  ^bb4(%14: i32):  // 3 preds: ^bb1, ^bb2, ^bb3
    "llvm.return"(%14) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i64)>, linkage = #llvm.linkage<external>, sym_name = "trunc_i11", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: i64):
    %5 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %6 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %7 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %8 = "llvm.trunc"(%arg1) <{overflowFlags = 0 : i32}> : (i64) -> i11
    "llvm.switch"(%8)[^bb3, ^bb1, ^bb2] <{case_operand_segments = array<i32: 0, 0>, case_values = dense<[1, -1]> : vector<2xi11>, operandSegmentSizes = array<i32: 1, 0, 0>}> : (i11) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.br"(%6)[^bb4] : (i32) -> ()
  ^bb2:  // pred: ^bb0
    "llvm.br"(%5)[^bb4] : (i32) -> ()
  ^bb3:  // pred: ^bb0
    "llvm.br"(%7)[^bb4] : (i32) -> ()
  ^bb4(%9: i32):  // 3 preds: ^bb1, ^bb2, ^bb3
    "llvm.return"(%9) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i64)>, linkage = #llvm.linkage<external>, sym_name = "trunc_i10", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i64):
    %0 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %2 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %3 = "llvm.trunc"(%arg0) <{overflowFlags = 0 : i32}> : (i64) -> i10
    "llvm.switch"(%3)[^bb3, ^bb1, ^bb2] <{case_operand_segments = array<i32: 0, 0>, case_values = dense<[1, -1]> : vector<2xi10>, operandSegmentSizes = array<i32: 1, 0, 0>}> : (i10) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.br"(%1)[^bb4] : (i32) -> ()
  ^bb2:  // pred: ^bb0
    "llvm.br"(%0)[^bb4] : (i32) -> ()
  ^bb3:  // pred: ^bb0
    "llvm.br"(%2)[^bb4] : (i32) -> ()
  ^bb4(%4: i32):  // 3 preds: ^bb1, ^bb2, ^bb3
    "llvm.return"(%4) : (i32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

