"builtin.module"() ({
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 1 : i64, constant, dso_local, global_type = !llvm.array<23 x i8>, linkage = #llvm.linkage<private>, sym_name = "mlir.llvm.nameless_global_0", unnamed_addr = 2 : i64, value = ";unknown;unknown;0;0;;\00", visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 8 : i64, constant, dso_local, global_type = !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, linkage = #llvm.linkage<private>, sym_name = "mlir.llvm.nameless_global_1", unnamed_addr = 2 : i64, visibility_ = 0 : i64}> ({
    %21 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_0}> : () -> !llvm.ptr
    %22 = "llvm.mlir.constant"() <{value = 22 : i32}> : () -> i32
    %23 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %24 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %25 = "llvm.mlir.undef"() : () -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %26 = "llvm.insertvalue"(%25, %23) <{position = array<i64: 0>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %27 = "llvm.insertvalue"(%26, %24) <{position = array<i64: 1>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %28 = "llvm.insertvalue"(%27, %23) <{position = array<i64: 2>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %29 = "llvm.insertvalue"(%28, %22) <{position = array<i64: 3>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %30 = "llvm.insertvalue"(%29, %21) <{position = array<i64: 4>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, !llvm.ptr) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    "llvm.return"(%30) : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>) -> ()
  }) : () -> ()
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<warning, "Debug Info Version", 3 : i32>]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, i32, ptr, ptr, f32)>, linkage = #llvm.linkage<external>, sym_name = "omp_atomic_capture_misc", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: !llvm.ptr, %arg1: !llvm.ptr, %arg2: i32, %arg3: !llvm.ptr, %arg4: !llvm.ptr, %arg5: f32):
    %0 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_1}> : () -> !llvm.ptr
    %2 = "llvm.alloca"(%0) <{alignment = 4 : i64, elem_type = f32}> : (i32) -> !llvm.ptr
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    %3 = "llvm.atomicrmw"(%arg0, %arg2) <{alignment = 4 : i64, bin_op = 0 : i64, ordering = 2 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.store"(%3, %arg1) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %4 = "llvm.load"(%arg3) <{alignment = 4 : i64, ordering = 2 : i64}> : (!llvm.ptr) -> i32
    "llvm.br"(%4)[^bb2] : (i32) -> ()
  ^bb2(%5: i32):  // 2 preds: ^bb1, ^bb2
    %6 = "llvm.bitcast"(%5) : (i32) -> f32
    "llvm.store"(%arg5, %2) <{alignment = 4 : i64, ordering = 0 : i64}> : (f32, !llvm.ptr) -> ()
    %7 = "llvm.load"(%2) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %8 = "llvm.cmpxchg"(%arg3, %5, %7) <{alignment = 4 : i64, failure_ordering = 2 : i64, success_ordering = 2 : i64}> : (!llvm.ptr, i32, i32) -> !llvm.struct<(i32, i1)>
    %9 = "llvm.extractvalue"(%8) <{position = array<i64: 0>}> : (!llvm.struct<(i32, i1)>) -> i32
    %10 = "llvm.extractvalue"(%8) <{position = array<i64: 1>}> : (!llvm.struct<(i32, i1)>) -> i1
    "llvm.cond_br"(%10, %9)[^bb3, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb3:  // pred: ^bb2
    "llvm.store"(%6, %arg4) <{alignment = 4 : i64, ordering = 0 : i64}> : (f32, !llvm.ptr) -> ()
    %11 = "llvm.atomicrmw"(%arg0, %arg2) <{alignment = 4 : i64, bin_op = 1 : i64, ordering = 7 : i64}> : (!llvm.ptr, i32) -> i32
    %12 = "llvm.add"(%11, %arg2) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.store"(%11, %arg1) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.call"(%1) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_flush, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> ()
    %13 = "llvm.atomicrmw"(%arg0, %arg2) <{alignment = 4 : i64, bin_op = 1 : i64, ordering = 4 : i64}> : (!llvm.ptr, i32) -> i32
    %14 = "llvm.add"(%13, %arg2) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.store"(%13, %arg1) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.call"(%1) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_flush, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> ()
    %15 = "llvm.atomicrmw"(%arg0, %arg2) <{alignment = 4 : i64, bin_op = 1 : i64, ordering = 5 : i64}> : (!llvm.ptr, i32) -> i32
    %16 = "llvm.add"(%15, %arg2) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.store"(%15, %arg1) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.call"(%1) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_flush, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> ()
    %17 = "llvm.atomicrmw"(%arg0, %arg2) <{alignment = 4 : i64, bin_op = 1 : i64, ordering = 2 : i64}> : (!llvm.ptr, i32) -> i32
    %18 = "llvm.add"(%17, %arg2) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.store"(%17, %arg1) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %19 = "llvm.atomicrmw"(%arg0, %arg2) <{alignment = 4 : i64, bin_op = 1 : i64, ordering = 6 : i64}> : (!llvm.ptr, i32) -> i32
    %20 = "llvm.add"(%19, %arg2) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.store"(%19, %arg1) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.call"(%1) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_flush, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, convergent, function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "__kmpc_flush", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

