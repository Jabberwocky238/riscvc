"builtin.module"() ({
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<warning, "Debug Info Version", 3 : i32>]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i32, ptr, i1)>, linkage = #llvm.linkage<external>, sym_name = "omp_atomic_update", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: !llvm.ptr, %arg1: i32, %arg2: !llvm.ptr, %arg3: i1):
    %0 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "llvm.alloca"(%0) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    %2 = "llvm.load"(%arg0) <{alignment = 4 : i64, ordering = 2 : i64}> : (!llvm.ptr) -> i32
    "llvm.br"(%2)[^bb2] : (i32) -> ()
  ^bb2(%3: i32):  // 2 preds: ^bb1, ^bb2
    %4 = "llvm.mul"(%3, %arg1) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.store"(%4, %1) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %5 = "llvm.load"(%1) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %6 = "llvm.cmpxchg"(%arg0, %3, %5) <{alignment = 4 : i64, failure_ordering = 2 : i64, success_ordering = 2 : i64}> : (!llvm.ptr, i32, i32) -> !llvm.struct<(i32, i1)>
    %7 = "llvm.extractvalue"(%6) <{position = array<i64: 0>}> : (!llvm.struct<(i32, i1)>) -> i32
    %8 = "llvm.extractvalue"(%6) <{position = array<i64: 1>}> : (!llvm.struct<(i32, i1)>) -> i1
    "llvm.cond_br"(%8, %7)[^bb3, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb3:  // pred: ^bb2
    %9 = "llvm.atomicrmw"(%arg0, %arg1) <{alignment = 4 : i64, bin_op = 1 : i64, ordering = 2 : i64}> : (!llvm.ptr, i32) -> i32
    %10 = "llvm.add"(%9, %arg1) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"() : () -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

