"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, sym_name = "test_phi", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %13 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %14 = "llvm.mlir.constant"() <{value = 1 : i16}> : () -> i16
    %15 = "llvm.mlir.zero"() : () -> !llvm.ptr
    %16 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %17 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    "llvm.br"(%13)[^bb2] : (i64) -> ()
  ^bb1:  // pred: ^bb2
    "llvm.return"(%17) : (i32) -> ()
  ^bb2(%18: i64):  // 2 preds: ^bb0, ^bb2
    "llvm.store"(%14, %15) <{alignment = 4 : i64, ordering = 0 : i64}> : (i16, !llvm.ptr) -> ()
    %19 = "llvm.icmp"(%18, %13) <{predicate = 0 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%19, %16)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.noalias}, {llvm.noalias}, {llvm.signext}], function_type = !llvm.func<void (ptr, ptr, i32)>, linkage = #llvm.linkage<external>, sym_name = "test_pipelined_1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: !llvm.ptr, %arg1: !llvm.ptr, %arg2: i32):
    %0 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %2 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %3 = "llvm.icmp"(%arg2, %0) <{predicate = 4 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%3, %0, %arg0, %arg1)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 3, 0>}> : (i1, i32, !llvm.ptr, !llvm.ptr) -> ()
  ^bb1(%4: i32, %5: !llvm.ptr, %6: !llvm.ptr):  // 2 preds: ^bb0, ^bb1
    %7 = "llvm.load"(%6) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %8 = "llvm.add"(%7, %1) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.store"(%8, %5) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %9 = "llvm.getelementptr"(%5, %2) <{elem_type = i8, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %10 = "llvm.getelementptr"(%6, %2) <{elem_type = i8, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %11 = "llvm.add"(%4, %1) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    %12 = "llvm.icmp"(%11, %arg2) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%12, %11, %9, %10)[^bb2, ^bb1] <{operandSegmentSizes = array<i32: 1, 0, 3>}> : (i1, i32, !llvm.ptr, !llvm.ptr) -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

