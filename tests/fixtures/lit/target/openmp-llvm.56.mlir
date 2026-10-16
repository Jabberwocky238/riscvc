"builtin.module"() ({
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<warning, "Debug Info Version", 3 : i32>]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i32)>, linkage = #llvm.linkage<external>, sym_name = "omp_atomic_update_intrinsic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: !llvm.ptr, %arg1: i32):
    %0 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "llvm.alloca"(%0) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %2 = "llvm.alloca"(%0) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    %3 = "llvm.load"(%arg0) <{alignment = 4 : i64, ordering = 2 : i64}> : (!llvm.ptr) -> i32
    "llvm.br"(%3)[^bb2] : (i32) -> ()
  ^bb2(%4: i32):  // 2 preds: ^bb1, ^bb2
    %5 = "llvm.intr.smax"(%4, %arg1) : (i32, i32) -> i32
    "llvm.store"(%5, %2) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %6 = "llvm.load"(%2) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %7 = "llvm.cmpxchg"(%arg0, %4, %6) <{alignment = 4 : i64, failure_ordering = 2 : i64, success_ordering = 2 : i64}> : (!llvm.ptr, i32, i32) -> !llvm.struct<(i32, i1)>
    %8 = "llvm.extractvalue"(%7) <{position = array<i64: 0>}> : (!llvm.struct<(i32, i1)>) -> i32
    %9 = "llvm.extractvalue"(%7) <{position = array<i64: 1>}> : (!llvm.struct<(i32, i1)>) -> i1
    "llvm.cond_br"(%9, %8)[^bb3, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb3:  // pred: ^bb2
    %10 = "llvm.load"(%arg0) <{alignment = 4 : i64, ordering = 2 : i64}> : (!llvm.ptr) -> i32
    "llvm.br"(%10)[^bb4] : (i32) -> ()
  ^bb4(%11: i32):  // 2 preds: ^bb3, ^bb4
    %12 = "llvm.intr.umax"(%11, %arg1) : (i32, i32) -> i32
    "llvm.store"(%12, %1) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %13 = "llvm.load"(%1) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %14 = "llvm.cmpxchg"(%arg0, %11, %13) <{alignment = 4 : i64, failure_ordering = 2 : i64, success_ordering = 2 : i64}> : (!llvm.ptr, i32, i32) -> !llvm.struct<(i32, i1)>
    %15 = "llvm.extractvalue"(%14) <{position = array<i64: 0>}> : (!llvm.struct<(i32, i1)>) -> i32
    %16 = "llvm.extractvalue"(%14) <{position = array<i64: 1>}> : (!llvm.struct<(i32, i1)>) -> i1
    "llvm.cond_br"(%16, %15)[^bb5, ^bb4] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb5:  // pred: ^bb4
    "llvm.return"() : () -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

