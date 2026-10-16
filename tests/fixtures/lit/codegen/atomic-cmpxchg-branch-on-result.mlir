"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<void (ptr, i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "cmpxchg_and_branch1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg13: !llvm.ptr, %arg14: i32, %arg15: i32):
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // 2 preds: ^bb0, ^bb1
    %8 = "llvm.cmpxchg"(%arg13, %arg14, %arg15) <{alignment = 4 : i64, failure_ordering = 7 : i64, success_ordering = 7 : i64}> : (!llvm.ptr, i32, i32) -> !llvm.struct<(i32, i1)>
    %9 = "llvm.extractvalue"(%8) <{position = array<i64: 1>}> : (!llvm.struct<(i32, i1)>) -> i1
    "llvm.cond_br"(%9)[^bb2, ^bb1] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb2:  // pred: ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<void (ptr, i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "cmpxchg_and_branch2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: !llvm.ptr, %arg11: i32, %arg12: i32):
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // 2 preds: ^bb0, ^bb1
    %6 = "llvm.cmpxchg"(%arg10, %arg11, %arg12) <{alignment = 4 : i64, failure_ordering = 7 : i64, success_ordering = 7 : i64}> : (!llvm.ptr, i32, i32) -> !llvm.struct<(i32, i1)>
    %7 = "llvm.extractvalue"(%6) <{position = array<i64: 1>}> : (!llvm.struct<(i32, i1)>) -> i1
    "llvm.cond_br"(%7)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb2:  // pred: ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<void (ptr, i8, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "cmpxchg_masked_and_branch1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg7: !llvm.ptr, %arg8: i8, %arg9: i8):
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // 2 preds: ^bb0, ^bb1
    %4 = "llvm.cmpxchg"(%arg7, %arg8, %arg9) <{alignment = 1 : i64, failure_ordering = 7 : i64, success_ordering = 7 : i64}> : (!llvm.ptr, i8, i8) -> !llvm.struct<(i8, i1)>
    %5 = "llvm.extractvalue"(%4) <{position = array<i64: 1>}> : (!llvm.struct<(i8, i1)>) -> i1
    "llvm.cond_br"(%5)[^bb2, ^bb1] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb2:  // pred: ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<void (ptr, i8, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "cmpxchg_masked_and_branch2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: !llvm.ptr, %arg5: i8, %arg6: i8):
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // 2 preds: ^bb0, ^bb1
    %2 = "llvm.cmpxchg"(%arg4, %arg5, %arg6) <{alignment = 1 : i64, failure_ordering = 7 : i64, success_ordering = 7 : i64}> : (!llvm.ptr, i8, i8) -> !llvm.struct<(i8, i1)>
    %3 = "llvm.extractvalue"(%2) <{position = array<i64: 1>}> : (!llvm.struct<(i8, i1)>) -> i1
    "llvm.cond_br"(%3)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb2:  // pred: ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.signext}, {llvm.signext}, {llvm.zeroext}], function_type = !llvm.func<void (ptr, i32, i32, i1)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "cmpxchg_and_irrelevant_branch", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: !llvm.ptr, %arg1: i32, %arg2: i32, %arg3: i1):
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // 2 preds: ^bb0, ^bb1
    %0 = "llvm.cmpxchg"(%arg0, %arg1, %arg2) <{alignment = 4 : i64, failure_ordering = 7 : i64, success_ordering = 7 : i64}> : (!llvm.ptr, i32, i32) -> !llvm.struct<(i32, i1)>
    %1 = "llvm.extractvalue"(%0) <{position = array<i64: 1>}> : (!llvm.struct<(i32, i1)>) -> i1
    "llvm.cond_br"(%arg3)[^bb2, ^bb1] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb2:  // pred: ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

