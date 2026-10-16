"builtin.module"() ({
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 1 : i64, constant, dso_local, global_type = !llvm.array<23 x i8>, linkage = #llvm.linkage<private>, sym_name = "mlir.llvm.nameless_global_0", unnamed_addr = 2 : i64, value = ";unknown;unknown;0;0;;\00", visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 8 : i64, constant, dso_local, global_type = !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, linkage = #llvm.linkage<private>, sym_name = "mlir.llvm.nameless_global_1", unnamed_addr = 2 : i64, visibility_ = 0 : i64}> ({
    %103 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_0}> : () -> !llvm.ptr
    %104 = "llvm.mlir.constant"() <{value = 22 : i32}> : () -> i32
    %105 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %106 = "llvm.mlir.constant"() <{value = 34 : i32}> : () -> i32
    %107 = "llvm.mlir.undef"() : () -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %108 = "llvm.insertvalue"(%107, %105) <{position = array<i64: 0>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %109 = "llvm.insertvalue"(%108, %106) <{position = array<i64: 1>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %110 = "llvm.insertvalue"(%109, %105) <{position = array<i64: 2>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %111 = "llvm.insertvalue"(%110, %104) <{position = array<i64: 3>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %112 = "llvm.insertvalue"(%111, %103) <{position = array<i64: 4>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, !llvm.ptr) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    "llvm.return"(%112) : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>) -> ()
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 8 : i64, constant, dso_local, global_type = !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, linkage = #llvm.linkage<private>, sym_name = "mlir.llvm.nameless_global_2", unnamed_addr = 2 : i64, visibility_ = 0 : i64}> ({
    %93 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_0}> : () -> !llvm.ptr
    %94 = "llvm.mlir.constant"() <{value = 22 : i32}> : () -> i32
    %95 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %96 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %97 = "llvm.mlir.undef"() : () -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %98 = "llvm.insertvalue"(%97, %95) <{position = array<i64: 0>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %99 = "llvm.insertvalue"(%98, %96) <{position = array<i64: 1>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %100 = "llvm.insertvalue"(%99, %95) <{position = array<i64: 2>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %101 = "llvm.insertvalue"(%100, %94) <{position = array<i64: 3>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %102 = "llvm.insertvalue"(%101, %93) <{position = array<i64: 4>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, !llvm.ptr) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    "llvm.return"(%102) : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>) -> ()
  }) : () -> ()
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<warning, "Debug Info Version", 3 : i32>]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, sym_name = "test_stand_alone_directives", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %85 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_2}> : () -> !llvm.ptr
    %86 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_1}> : () -> !llvm.ptr
    %87 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %88 = "llvm.call"(%85) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_global_thread_num, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> i32
    "llvm.call"(%86, %88) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_barrier, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (!llvm.ptr, i32) -> ()
    %89 = "llvm.call"(%85) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_global_thread_num, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> i32
    %90 = "llvm.call"(%85, %89) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_omp_taskwait, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (!llvm.ptr, i32) -> i32
    %91 = "llvm.call"(%85) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_global_thread_num, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> i32
    %92 = "llvm.call"(%85, %91, %87) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_omp_taskyield, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (!llvm.ptr, i32, i32) -> i32
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_flush_construct", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg16: !llvm.ptr):
    %81 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_2}> : () -> !llvm.ptr
    %82 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    "llvm.call"(%81) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_flush, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> ()
    "llvm.call"(%81) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_flush, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> ()
    "llvm.call"(%81) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_flush, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> ()
    %83 = "llvm.alloca"(%82) <{alignment = 4 : i64, elem_type = i32}> : (i64) -> !llvm.ptr
    "llvm.call"(%81) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_flush, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> ()
    %84 = "llvm.load"(%83) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, sym_name = "test_omp_parallel_1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %77 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_2}> : () -> !llvm.ptr
    %78 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %79 = "llvm.mlir.addressof"() <{global_name = @test_omp_parallel_1..omp_par}> : () -> !llvm.ptr
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    %80 = "llvm.call"(%77) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_global_thread_num, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> i32
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // pred: ^bb1
    "llvm.call"(%77, %78, %79) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_fork_call, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>, var_callee_type = !llvm.func<void (ptr, i32, ptr, ...)>}> : (!llvm.ptr, i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb3] : () -> ()
  ^bb3:  // pred: ^bb2
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.noalias}, {llvm.noalias}], dso_local, function_type = !llvm.func<void (ptr, ptr)>, linkage = #llvm.linkage<internal>, no_unwind, sym_name = "test_omp_parallel_1..omp_par", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: !llvm.ptr, %arg15: !llvm.ptr):
    %70 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %71 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_2}> : () -> !llvm.ptr
    %72 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_1}> : () -> !llvm.ptr
    %73 = "llvm.alloca"(%70) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %74 = "llvm.load"(%arg14) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.store"(%74, %73) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %75 = "llvm.load"(%73) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // pred: ^bb1
    "llvm.br"()[^bb3] : () -> ()
  ^bb3:  // pred: ^bb2
    %76 = "llvm.call"(%71) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_global_thread_num, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> i32
    "llvm.call"(%72, %76) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_barrier, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (!llvm.ptr, i32) -> ()
    "llvm.br"()[^bb4] : () -> ()
  ^bb4:  // pred: ^bb3
    "llvm.br"()[^bb5] : () -> ()
  ^bb5:  // pred: ^bb4
    "llvm.br"()[^bb6] : () -> ()
  ^bb6:  // pred: ^bb5
    "llvm.br"()[^bb7] : () -> ()
  ^bb7:  // pred: ^bb6
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (i64)>, linkage = #llvm.linkage<external>, sym_name = "body", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, sym_name = "test_omp_parallel_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %66 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_2}> : () -> !llvm.ptr
    %67 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %68 = "llvm.mlir.addressof"() <{global_name = @test_omp_parallel_2..omp_par}> : () -> !llvm.ptr
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    %69 = "llvm.call"(%66) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_global_thread_num, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> i32
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // pred: ^bb1
    "llvm.call"(%66, %67, %68) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_fork_call, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>, var_callee_type = !llvm.func<void (ptr, i32, ptr, ...)>}> : (!llvm.ptr, i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb3] : () -> ()
  ^bb3:  // pred: ^bb2
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.noalias}, {llvm.noalias}], dso_local, function_type = !llvm.func<void (ptr, ptr)>, linkage = #llvm.linkage<internal>, no_unwind, sym_name = "test_omp_parallel_2..omp_par", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: !llvm.ptr, %arg13: !llvm.ptr):
    %59 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %60 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %61 = "llvm.mlir.constant"() <{value = 42 : i64}> : () -> i64
    %62 = "llvm.mlir.constant"() <{value = 43 : i64}> : () -> i64
    %63 = "llvm.alloca"(%59) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %64 = "llvm.load"(%arg12) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.store"(%64, %63) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %65 = "llvm.load"(%63) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // pred: ^bb1
    "llvm.br"()[^bb3] : () -> ()
  ^bb3:  // pred: ^bb2
    "llvm.call"(%60) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @body, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (i64) -> ()
    "llvm.call"(%61) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @body, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (i64) -> ()
    "llvm.br"()[^bb4] : () -> ()
  ^bb4:  // pred: ^bb3
    "llvm.call"(%62) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @body, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (i64) -> ()
    "llvm.br"()[^bb5] : () -> ()
  ^bb5:  // pred: ^bb4
    "llvm.br"()[^bb6] : () -> ()
  ^bb6:  // pred: ^bb5
    "llvm.br"()[^bb7] : () -> ()
  ^bb7:  // pred: ^bb6
    "llvm.br"()[^bb8] : () -> ()
  ^bb8:  // pred: ^bb7
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (i32)>, linkage = #llvm.linkage<external>, sym_name = "test_omp_parallel_num_threads_1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg11: i32):
    %55 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_2}> : () -> !llvm.ptr
    %56 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %57 = "llvm.mlir.addressof"() <{global_name = @test_omp_parallel_num_threads_1..omp_par}> : () -> !llvm.ptr
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    %58 = "llvm.call"(%55) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_global_thread_num, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> i32
    "llvm.call"(%55, %58, %arg11) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_push_num_threads, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (!llvm.ptr, i32, i32) -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // pred: ^bb1
    "llvm.call"(%55, %56, %57) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_fork_call, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>, var_callee_type = !llvm.func<void (ptr, i32, ptr, ...)>}> : (!llvm.ptr, i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb3] : () -> ()
  ^bb3:  // pred: ^bb2
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.noalias}, {llvm.noalias}], dso_local, function_type = !llvm.func<void (ptr, ptr)>, linkage = #llvm.linkage<internal>, no_unwind, sym_name = "test_omp_parallel_num_threads_1..omp_par", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: !llvm.ptr, %arg10: !llvm.ptr):
    %48 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %49 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_2}> : () -> !llvm.ptr
    %50 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_1}> : () -> !llvm.ptr
    %51 = "llvm.alloca"(%48) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %52 = "llvm.load"(%arg9) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.store"(%52, %51) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %53 = "llvm.load"(%51) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // pred: ^bb1
    "llvm.br"()[^bb3] : () -> ()
  ^bb3:  // pred: ^bb2
    %54 = "llvm.call"(%49) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_global_thread_num, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> i32
    "llvm.call"(%50, %54) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_barrier, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (!llvm.ptr, i32) -> ()
    "llvm.br"()[^bb4] : () -> ()
  ^bb4:  // pred: ^bb3
    "llvm.br"()[^bb5] : () -> ()
  ^bb5:  // pred: ^bb4
    "llvm.br"()[^bb6] : () -> ()
  ^bb6:  // pred: ^bb5
    "llvm.br"()[^bb7] : () -> ()
  ^bb7:  // pred: ^bb6
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, sym_name = "test_omp_parallel_num_threads_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %43 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_2}> : () -> !llvm.ptr
    %44 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %45 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %46 = "llvm.mlir.addressof"() <{global_name = @test_omp_parallel_num_threads_2..omp_par}> : () -> !llvm.ptr
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    %47 = "llvm.call"(%43) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_global_thread_num, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> i32
    "llvm.call"(%43, %47, %44) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_push_num_threads, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (!llvm.ptr, i32, i32) -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // pred: ^bb1
    "llvm.call"(%43, %45, %46) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_fork_call, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>, var_callee_type = !llvm.func<void (ptr, i32, ptr, ...)>}> : (!llvm.ptr, i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb3] : () -> ()
  ^bb3:  // pred: ^bb2
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.noalias}, {llvm.noalias}], dso_local, function_type = !llvm.func<void (ptr, ptr)>, linkage = #llvm.linkage<internal>, no_unwind, sym_name = "test_omp_parallel_num_threads_2..omp_par", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg7: !llvm.ptr, %arg8: !llvm.ptr):
    %36 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %37 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_2}> : () -> !llvm.ptr
    %38 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_1}> : () -> !llvm.ptr
    %39 = "llvm.alloca"(%36) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %40 = "llvm.load"(%arg7) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.store"(%40, %39) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %41 = "llvm.load"(%39) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // pred: ^bb1
    "llvm.br"()[^bb3] : () -> ()
  ^bb3:  // pred: ^bb2
    %42 = "llvm.call"(%37) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_global_thread_num, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> i32
    "llvm.call"(%38, %42) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_barrier, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (!llvm.ptr, i32) -> ()
    "llvm.br"()[^bb4] : () -> ()
  ^bb4:  // pred: ^bb3
    "llvm.br"()[^bb5] : () -> ()
  ^bb5:  // pred: ^bb4
    "llvm.br"()[^bb6] : () -> ()
  ^bb6:  // pred: ^bb5
    "llvm.br"()[^bb7] : () -> ()
  ^bb7:  // pred: ^bb6
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, sym_name = "test_omp_parallel_num_threads_3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %28 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_2}> : () -> !llvm.ptr
    %29 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %30 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %31 = "llvm.mlir.addressof"() <{global_name = @test_omp_parallel_num_threads_3..omp_par}> : () -> !llvm.ptr
    %32 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %33 = "llvm.mlir.addressof"() <{global_name = @test_omp_parallel_num_threads_3..omp_par.1}> : () -> !llvm.ptr
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    %34 = "llvm.call"(%28) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_global_thread_num, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> i32
    "llvm.call"(%28, %34, %29) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_push_num_threads, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (!llvm.ptr, i32, i32) -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // pred: ^bb1
    "llvm.call"(%28, %30, %31) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_fork_call, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>, var_callee_type = !llvm.func<void (ptr, i32, ptr, ...)>}> : (!llvm.ptr, i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb3] : () -> ()
  ^bb3:  // pred: ^bb2
    %35 = "llvm.call"(%28) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_global_thread_num, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> i32
    "llvm.call"(%28, %35, %32) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_push_num_threads, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (!llvm.ptr, i32, i32) -> ()
    "llvm.br"()[^bb4] : () -> ()
  ^bb4:  // pred: ^bb3
    "llvm.call"(%28, %30, %33) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_fork_call, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>, var_callee_type = !llvm.func<void (ptr, i32, ptr, ...)>}> : (!llvm.ptr, i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb5] : () -> ()
  ^bb5:  // pred: ^bb4
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.noalias}, {llvm.noalias}], dso_local, function_type = !llvm.func<void (ptr, ptr)>, linkage = #llvm.linkage<internal>, no_unwind, sym_name = "test_omp_parallel_num_threads_3..omp_par.1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: !llvm.ptr, %arg6: !llvm.ptr):
    %21 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %22 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_2}> : () -> !llvm.ptr
    %23 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_1}> : () -> !llvm.ptr
    %24 = "llvm.alloca"(%21) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %25 = "llvm.load"(%arg5) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.store"(%25, %24) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %26 = "llvm.load"(%24) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // pred: ^bb1
    "llvm.br"()[^bb3] : () -> ()
  ^bb3:  // pred: ^bb2
    %27 = "llvm.call"(%22) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_global_thread_num, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> i32
    "llvm.call"(%23, %27) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_barrier, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (!llvm.ptr, i32) -> ()
    "llvm.br"()[^bb4] : () -> ()
  ^bb4:  // pred: ^bb3
    "llvm.br"()[^bb5] : () -> ()
  ^bb5:  // pred: ^bb4
    "llvm.br"()[^bb6] : () -> ()
  ^bb6:  // pred: ^bb5
    "llvm.br"()[^bb7] : () -> ()
  ^bb7:  // pred: ^bb6
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.noalias}, {llvm.noalias}], dso_local, function_type = !llvm.func<void (ptr, ptr)>, linkage = #llvm.linkage<internal>, no_unwind, sym_name = "test_omp_parallel_num_threads_3..omp_par", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: !llvm.ptr, %arg4: !llvm.ptr):
    %14 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %15 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_2}> : () -> !llvm.ptr
    %16 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_1}> : () -> !llvm.ptr
    %17 = "llvm.alloca"(%14) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %18 = "llvm.load"(%arg3) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.store"(%18, %17) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %19 = "llvm.load"(%17) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // pred: ^bb1
    "llvm.br"()[^bb3] : () -> ()
  ^bb3:  // pred: ^bb2
    %20 = "llvm.call"(%15) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_global_thread_num, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> i32
    "llvm.call"(%16, %20) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_barrier, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (!llvm.ptr, i32) -> ()
    "llvm.br"()[^bb4] : () -> ()
  ^bb4:  // pred: ^bb3
    "llvm.br"()[^bb5] : () -> ()
  ^bb5:  // pred: ^bb4
    "llvm.br"()[^bb6] : () -> ()
  ^bb6:  // pred: ^bb5
    "llvm.br"()[^bb7] : () -> ()
  ^bb7:  // pred: ^bb6
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (i32)>, linkage = #llvm.linkage<external>, sym_name = "test_omp_parallel_if_1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i32):
    %7 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %8 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_2}> : () -> !llvm.ptr
    %9 = "llvm.mlir.addressof"() <{global_name = @test_omp_parallel_if_1..omp_par}> : () -> !llvm.ptr
    %10 = "llvm.mlir.zero"() : () -> !llvm.ptr
    %11 = "llvm.icmp"(%arg2, %7) <{predicate = 2 : i64}> : (i32, i32) -> i1
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    %12 = "llvm.call"(%8) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_global_thread_num, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> i32
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // pred: ^bb1
    %13 = "llvm.sext"(%11) : (i1) -> i32
    "llvm.call"(%8, %7, %9, %13, %10) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_fork_call_if, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 5, 0>}> : (!llvm.ptr, i32, !llvm.ptr, i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb3] : () -> ()
  ^bb3:  // pred: ^bb2
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.noalias}, {llvm.noalias}], dso_local, function_type = !llvm.func<void (ptr, ptr)>, linkage = #llvm.linkage<internal>, no_unwind, sym_name = "test_omp_parallel_if_1..omp_par", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: !llvm.ptr, %arg1: !llvm.ptr):
    %0 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_2}> : () -> !llvm.ptr
    %2 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_1}> : () -> !llvm.ptr
    %3 = "llvm.alloca"(%0) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %4 = "llvm.load"(%arg0) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.store"(%4, %3) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %5 = "llvm.load"(%3) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // pred: ^bb1
    "llvm.br"()[^bb3] : () -> ()
  ^bb3:  // pred: ^bb2
    %6 = "llvm.call"(%1) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_global_thread_num, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> i32
    "llvm.call"(%2, %6) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_barrier, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (!llvm.ptr, i32) -> ()
    "llvm.br"()[^bb4] : () -> ()
  ^bb4:  // pred: ^bb3
    "llvm.br"()[^bb5] : () -> ()
  ^bb5:  // pred: ^bb4
    "llvm.br"()[^bb6] : () -> ()
  ^bb6:  // pred: ^bb5
    "llvm.br"()[^bb7] : () -> ()
  ^bb7:  // pred: ^bb6
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "__kmpc_global_thread_num", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, convergent, function_type = !llvm.func<void (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "__kmpc_barrier", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, convergent, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "__kmpc_omp_taskwait", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "__kmpc_omp_taskyield", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, convergent, function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "__kmpc_flush", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "__kmpc_push_num_threads", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i32, ptr, ...)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "__kmpc_fork_call", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i32, ptr, i32, ptr)>, linkage = #llvm.linkage<external>, sym_name = "__kmpc_fork_call_if", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

