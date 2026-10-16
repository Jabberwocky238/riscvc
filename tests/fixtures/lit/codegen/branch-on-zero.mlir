"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "optbranch_32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: i32):
    %31 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %32 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %33 = "llvm.icmp"(%arg5, %31) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%33)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.return"(%31) : (i32) -> ()
  ^bb2:  // pred: ^bb0
    %34 = "llvm.add"(%arg5, %32) <{overflowFlags = 2 : i32}> : (i32, i32) -> i32
    "llvm.return"(%34) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "optbranch_64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i64):
    %27 = "llvm.mlir.constant"() <{value = -1 : i64}> : () -> i64
    %28 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %29 = "llvm.icmp"(%arg4, %27) <{predicate = 0 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%29)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.return"(%27) : (i64) -> ()
  ^bb2:  // pred: ^bb0
    %30 = "llvm.add"(%arg4, %28) <{overflowFlags = 2 : i32}> : (i64, i64) -> i64
    "llvm.return"(%30) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "test_lshr", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: i32):
    %16 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %17 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %18 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %19 = "llvm.icmp"(%arg3, %16) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%19, %16, %16, %arg3)[^bb2, ^bb1] <{operandSegmentSizes = array<i32: 1, 1, 2>}> : (i1, i32, i32, i32) -> ()
  ^bb1(%20: i32, %21: i32):  // 2 preds: ^bb0, ^bb1
    %22 = "llvm.and"(%21, %17) : (i32, i32) -> i32
    %23 = "llvm.add"(%20, %22) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %24 = "llvm.lshr"(%21, %17) : (i32, i32) -> i32
    %25 = "llvm.icmp"(%21, %18) <{predicate = 6 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%25, %23, %23, %24)[^bb2, ^bb1] <{operandSegmentSizes = array<i32: 1, 1, 2>}> : (i1, i32, i32, i32) -> ()
  ^bb2(%26: i32):  // 2 preds: ^bb0, ^bb1
    "llvm.return"(%26) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.nocapture}, {llvm.nocapture, llvm.readonly}, {}], function_type = !llvm.func<i32 (ptr, ptr, i32)>, linkage = #llvm.linkage<external>, sym_name = "test_lshr2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: !llvm.ptr, %arg1: !llvm.ptr, %arg2: i32):
    %0 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %2 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %3 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %4 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %5 = "llvm.icmp"(%arg2, %0) <{predicate = 6 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%5)[^bb3, ^bb1] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %6 = "llvm.lshr"(%arg2, %1) : (i32, i32) -> i32
    "llvm.br"(%6, %arg0, %arg1)[^bb2] : (i32, !llvm.ptr, !llvm.ptr) -> ()
  ^bb2(%7: i32, %8: !llvm.ptr, %9: !llvm.ptr):  // 2 preds: ^bb1, ^bb2
    %10 = "llvm.getelementptr"(%9, %2) <{elem_type = i32, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %11 = "llvm.load"(%9) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %12 = "llvm.shl"(%11, %2) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %13 = "llvm.getelementptr"(%8, %2) <{elem_type = i32, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%12, %8) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %14 = "llvm.add"(%7, %3) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %15 = "llvm.icmp"(%14, %4) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%15, %14, %13, %10)[^bb3, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 3>}> : (i1, i32, !llvm.ptr, !llvm.ptr) -> ()
  ^bb3:  // 2 preds: ^bb0, ^bb2
    "llvm.return"(%4) : (i32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

