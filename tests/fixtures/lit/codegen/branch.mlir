"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (i32, ptr, i1)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "foo", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i32, %arg1: !llvm.ptr, %arg2: i1):
    %0 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %2 = "llvm.load"(%arg1) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i32
    %3 = "llvm.icmp"(%2, %arg0) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%3)[^bb14, ^bb1] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %4 = "llvm.load"(%arg1) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i32
    %5 = "llvm.icmp"(%4, %arg0) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%5)[^bb14, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb2:  // pred: ^bb1
    %6 = "llvm.load"(%arg1) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i32
    %7 = "llvm.icmp"(%6, %arg0) <{predicate = 2 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%7)[^bb14, ^bb3] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb3:  // pred: ^bb2
    %8 = "llvm.load"(%arg1) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i32
    %9 = "llvm.icmp"(%8, %arg0) <{predicate = 5 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%9)[^bb14, ^bb4] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb4:  // pred: ^bb3
    %10 = "llvm.load"(%arg1) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i32
    %11 = "llvm.icmp"(%10, %arg0) <{predicate = 6 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%11)[^bb14, ^bb5] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb5:  // pred: ^bb4
    %12 = "llvm.load"(%arg1) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i32
    %13 = "llvm.icmp"(%12, %arg0) <{predicate = 9 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%13)[^bb14, ^bb6] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb6:  // pred: ^bb5
    %14 = "llvm.load"(%arg1) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i32
    %15 = "llvm.icmp"(%14, %arg0) <{predicate = 4 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%15)[^bb14, ^bb7] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb7:  // pred: ^bb6
    %16 = "llvm.load"(%arg1) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i32
    %17 = "llvm.icmp"(%16, %arg0) <{predicate = 3 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%17)[^bb14, ^bb8] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb8:  // pred: ^bb7
    %18 = "llvm.load"(%arg1) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i32
    %19 = "llvm.icmp"(%18, %arg0) <{predicate = 8 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%19)[^bb14, ^bb9] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb9:  // pred: ^bb8
    %20 = "llvm.load"(%arg1) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i32
    %21 = "llvm.icmp"(%20, %arg0) <{predicate = 7 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%21)[^bb14, ^bb10] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb10:  // pred: ^bb9
    %22 = "llvm.load"(%arg1) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i32
    "llvm.cond_br"(%arg2)[^bb14, ^bb11] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb11:  // pred: ^bb10
    %23 = "llvm.load"(%arg1) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i32
    %24 = "llvm.icmp"(%23, %0) <{predicate = 4 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%24)[^bb14, ^bb12] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb12:  // pred: ^bb11
    %25 = "llvm.load"(%arg1) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i32
    %26 = "llvm.icmp"(%25, %1) <{predicate = 2 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%26)[^bb14, ^bb13] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb13:  // pred: ^bb12
    %27 = "llvm.load"(%arg1) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i32
    "llvm.br"()[^bb14] : () -> ()
  ^bb14:  // 14 preds: ^bb0, ^bb1, ^bb2, ^bb3, ^bb4, ^bb5, ^bb6, ^bb7, ^bb8, ^bb9, ^bb10, ^bb11, ^bb12, ^bb13
    "llvm.return"() : () -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

