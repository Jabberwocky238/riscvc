"builtin.module"() ({
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 1 : i64, constant, dso_local, global_type = !llvm.array<23 x i8>, linkage = #llvm.linkage<private>, sym_name = "mlir.llvm.nameless_global_0", unnamed_addr = 2 : i64, value = ";unknown;unknown;0;0;;\00", visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 8 : i64, constant, dso_local, global_type = !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, linkage = #llvm.linkage<private>, sym_name = "mlir.llvm.nameless_global_1", unnamed_addr = 2 : i64, visibility_ = 0 : i64}> ({
    %66 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_0}> : () -> !llvm.ptr
    %67 = "llvm.mlir.constant"() <{value = 22 : i32}> : () -> i32
    %68 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %69 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %70 = "llvm.mlir.undef"() : () -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %71 = "llvm.insertvalue"(%70, %68) <{position = array<i64: 0>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %72 = "llvm.insertvalue"(%71, %69) <{position = array<i64: 1>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %73 = "llvm.insertvalue"(%72, %68) <{position = array<i64: 2>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %74 = "llvm.insertvalue"(%73, %67) <{position = array<i64: 3>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %75 = "llvm.insertvalue"(%74, %66) <{position = array<i64: 4>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, !llvm.ptr) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    "llvm.return"(%75) : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>) -> ()
  }) : () -> ()
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<warning, "Debug Info Version", 3 : i32>]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, sym_name = "omp_task_with_deps", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: !llvm.ptr):
    %4 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %5 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_1}> : () -> !llvm.ptr
    %6 = "llvm.mlir.constant"() <{value = 40 : i64}> : () -> i64
    %7 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %8 = "llvm.mlir.addressof"() <{global_name = @omp_task_with_deps..omp_par}> : () -> !llvm.ptr
    %9 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %10 = "llvm.mlir.constant"() <{value = 8 : i64}> : () -> i64
    %11 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %12 = "llvm.mlir.constant"() <{value = 1 : i8}> : () -> i8
    %13 = "llvm.mlir.zero"() : () -> !llvm.ptr
    %14 = "llvm.mlir.addressof"() <{global_name = @omp_task_with_deps..omp_par.1}> : () -> !llvm.ptr
    %15 = "llvm.mlir.constant"() <{value = 3 : i8}> : () -> i8
    %16 = "llvm.mlir.addressof"() <{global_name = @omp_task_with_deps..omp_par.2}> : () -> !llvm.ptr
    %17 = "llvm.mlir.addressof"() <{global_name = @omp_task_with_deps..omp_par.3}> : () -> !llvm.ptr
    %18 = "llvm.mlir.constant"() <{value = 4 : i8}> : () -> i8
    %19 = "llvm.mlir.addressof"() <{global_name = @omp_task_with_deps..omp_par.4}> : () -> !llvm.ptr
    %20 = "llvm.mlir.constant"() <{value = 8 : i8}> : () -> i8
    %21 = "llvm.alloca"(%4) <{alignment = 8 : i64, elem_type = !llvm.array<1 x struct<"struct.kmp_dep_info", (i64, i64, i8)>>}> : (i32) -> !llvm.ptr
    %22 = "llvm.alloca"(%4) <{alignment = 8 : i64, elem_type = !llvm.array<1 x struct<"struct.kmp_dep_info", (i64, i64, i8)>>}> : (i32) -> !llvm.ptr
    %23 = "llvm.alloca"(%4) <{alignment = 8 : i64, elem_type = !llvm.array<1 x struct<"struct.kmp_dep_info", (i64, i64, i8)>>}> : (i32) -> !llvm.ptr
    %24 = "llvm.alloca"(%4) <{alignment = 8 : i64, elem_type = !llvm.array<1 x struct<"struct.kmp_dep_info", (i64, i64, i8)>>}> : (i32) -> !llvm.ptr
    %25 = "llvm.alloca"(%4) <{alignment = 8 : i64, elem_type = !llvm.array<1 x struct<"struct.kmp_dep_info", (i64, i64, i8)>>}> : (i32) -> !llvm.ptr
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // pred: ^bb1
    "llvm.br"()[^bb3] : () -> ()
  ^bb3:  // pred: ^bb2
    "llvm.br"()[^bb4] : () -> ()
  ^bb4:  // pred: ^bb3
    "llvm.br"()[^bb5] : () -> ()
  ^bb5:  // pred: ^bb4
    %26 = "llvm.call"(%5) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_global_thread_num, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> i32
    %27 = "llvm.call"(%5, %26, %4, %6, %7, %8) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_omp_task_alloc, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 6, 0>}> : (!llvm.ptr, i32, i32, i64, i64, !llvm.ptr) -> !llvm.ptr
    %28 = "llvm.getelementptr"(%21, %7, %7) <{elem_type = !llvm.array<1 x struct<"struct.kmp_dep_info", (i64, i64, i8)>>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i64) -> !llvm.ptr
    %29 = "llvm.getelementptr"(%28, %9) <{elem_type = !llvm.struct<"struct.kmp_dep_info", (i64, i64, i8)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %30 = "llvm.ptrtoint"(%arg5) : (!llvm.ptr) -> i64
    "llvm.store"(%30, %29) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %31 = "llvm.getelementptr"(%28, %9) <{elem_type = !llvm.struct<"struct.kmp_dep_info", (i64, i64, i8)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%10, %31) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %32 = "llvm.getelementptr"(%28, %9) <{elem_type = !llvm.struct<"struct.kmp_dep_info", (i64, i64, i8)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 2>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%12, %32) <{alignment = 1 : i64, ordering = 0 : i64}> : (i8, !llvm.ptr) -> ()
    %33 = "llvm.call"(%5, %26, %27, %4, %21, %9, %13) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_omp_task_with_deps, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 7, 0>}> : (!llvm.ptr, i32, !llvm.ptr, i32, !llvm.ptr, i32, !llvm.ptr) -> i32
    "llvm.br"()[^bb6] : () -> ()
  ^bb6:  // pred: ^bb5
    "llvm.br"()[^bb7] : () -> ()
  ^bb7:  // pred: ^bb6
    "llvm.br"()[^bb8] : () -> ()
  ^bb8:  // pred: ^bb7
    "llvm.br"()[^bb9] : () -> ()
  ^bb9:  // pred: ^bb8
    "llvm.br"()[^bb10] : () -> ()
  ^bb10:  // pred: ^bb9
    %34 = "llvm.call"(%5) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_global_thread_num, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> i32
    %35 = "llvm.call"(%5, %34, %4, %6, %7, %14) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_omp_task_alloc, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 6, 0>}> : (!llvm.ptr, i32, i32, i64, i64, !llvm.ptr) -> !llvm.ptr
    %36 = "llvm.getelementptr"(%22, %7, %7) <{elem_type = !llvm.array<1 x struct<"struct.kmp_dep_info", (i64, i64, i8)>>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i64) -> !llvm.ptr
    %37 = "llvm.getelementptr"(%36, %9) <{elem_type = !llvm.struct<"struct.kmp_dep_info", (i64, i64, i8)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %38 = "llvm.ptrtoint"(%arg5) : (!llvm.ptr) -> i64
    "llvm.store"(%38, %37) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %39 = "llvm.getelementptr"(%36, %9) <{elem_type = !llvm.struct<"struct.kmp_dep_info", (i64, i64, i8)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%10, %39) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %40 = "llvm.getelementptr"(%36, %9) <{elem_type = !llvm.struct<"struct.kmp_dep_info", (i64, i64, i8)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 2>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%15, %40) <{alignment = 1 : i64, ordering = 0 : i64}> : (i8, !llvm.ptr) -> ()
    %41 = "llvm.call"(%5, %34, %35, %4, %22, %9, %13) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_omp_task_with_deps, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 7, 0>}> : (!llvm.ptr, i32, !llvm.ptr, i32, !llvm.ptr, i32, !llvm.ptr) -> i32
    "llvm.br"()[^bb11] : () -> ()
  ^bb11:  // pred: ^bb10
    "llvm.br"()[^bb12] : () -> ()
  ^bb12:  // pred: ^bb11
    "llvm.br"()[^bb13] : () -> ()
  ^bb13:  // pred: ^bb12
    "llvm.br"()[^bb14] : () -> ()
  ^bb14:  // pred: ^bb13
    "llvm.br"()[^bb15] : () -> ()
  ^bb15:  // pred: ^bb14
    %42 = "llvm.call"(%5) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_global_thread_num, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> i32
    %43 = "llvm.call"(%5, %42, %4, %6, %7, %16) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_omp_task_alloc, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 6, 0>}> : (!llvm.ptr, i32, i32, i64, i64, !llvm.ptr) -> !llvm.ptr
    %44 = "llvm.getelementptr"(%23, %7, %7) <{elem_type = !llvm.array<1 x struct<"struct.kmp_dep_info", (i64, i64, i8)>>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i64) -> !llvm.ptr
    %45 = "llvm.getelementptr"(%44, %9) <{elem_type = !llvm.struct<"struct.kmp_dep_info", (i64, i64, i8)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %46 = "llvm.ptrtoint"(%arg5) : (!llvm.ptr) -> i64
    "llvm.store"(%46, %45) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %47 = "llvm.getelementptr"(%44, %9) <{elem_type = !llvm.struct<"struct.kmp_dep_info", (i64, i64, i8)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%10, %47) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %48 = "llvm.getelementptr"(%44, %9) <{elem_type = !llvm.struct<"struct.kmp_dep_info", (i64, i64, i8)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 2>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%15, %48) <{alignment = 1 : i64, ordering = 0 : i64}> : (i8, !llvm.ptr) -> ()
    %49 = "llvm.call"(%5, %42, %43, %4, %23, %9, %13) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_omp_task_with_deps, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 7, 0>}> : (!llvm.ptr, i32, !llvm.ptr, i32, !llvm.ptr, i32, !llvm.ptr) -> i32
    "llvm.br"()[^bb16] : () -> ()
  ^bb16:  // pred: ^bb15
    "llvm.br"()[^bb17] : () -> ()
  ^bb17:  // pred: ^bb16
    "llvm.br"()[^bb18] : () -> ()
  ^bb18:  // pred: ^bb17
    "llvm.br"()[^bb19] : () -> ()
  ^bb19:  // pred: ^bb18
    "llvm.br"()[^bb20] : () -> ()
  ^bb20:  // pred: ^bb19
    %50 = "llvm.call"(%5) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_global_thread_num, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> i32
    %51 = "llvm.call"(%5, %50, %4, %6, %7, %17) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_omp_task_alloc, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 6, 0>}> : (!llvm.ptr, i32, i32, i64, i64, !llvm.ptr) -> !llvm.ptr
    %52 = "llvm.getelementptr"(%24, %7, %7) <{elem_type = !llvm.array<1 x struct<"struct.kmp_dep_info", (i64, i64, i8)>>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i64) -> !llvm.ptr
    %53 = "llvm.getelementptr"(%52, %9) <{elem_type = !llvm.struct<"struct.kmp_dep_info", (i64, i64, i8)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %54 = "llvm.ptrtoint"(%arg5) : (!llvm.ptr) -> i64
    "llvm.store"(%54, %53) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %55 = "llvm.getelementptr"(%52, %9) <{elem_type = !llvm.struct<"struct.kmp_dep_info", (i64, i64, i8)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%10, %55) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %56 = "llvm.getelementptr"(%52, %9) <{elem_type = !llvm.struct<"struct.kmp_dep_info", (i64, i64, i8)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 2>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%18, %56) <{alignment = 1 : i64, ordering = 0 : i64}> : (i8, !llvm.ptr) -> ()
    %57 = "llvm.call"(%5, %50, %51, %4, %24, %9, %13) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_omp_task_with_deps, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 7, 0>}> : (!llvm.ptr, i32, !llvm.ptr, i32, !llvm.ptr, i32, !llvm.ptr) -> i32
    "llvm.br"()[^bb21] : () -> ()
  ^bb21:  // pred: ^bb20
    "llvm.br"()[^bb22] : () -> ()
  ^bb22:  // pred: ^bb21
    "llvm.br"()[^bb23] : () -> ()
  ^bb23:  // pred: ^bb22
    "llvm.br"()[^bb24] : () -> ()
  ^bb24:  // pred: ^bb23
    "llvm.br"()[^bb25] : () -> ()
  ^bb25:  // pred: ^bb24
    %58 = "llvm.call"(%5) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_global_thread_num, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> i32
    %59 = "llvm.call"(%5, %58, %4, %6, %7, %19) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_omp_task_alloc, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 6, 0>}> : (!llvm.ptr, i32, i32, i64, i64, !llvm.ptr) -> !llvm.ptr
    %60 = "llvm.getelementptr"(%25, %7, %7) <{elem_type = !llvm.array<1 x struct<"struct.kmp_dep_info", (i64, i64, i8)>>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i64) -> !llvm.ptr
    %61 = "llvm.getelementptr"(%60, %9) <{elem_type = !llvm.struct<"struct.kmp_dep_info", (i64, i64, i8)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %62 = "llvm.ptrtoint"(%arg5) : (!llvm.ptr) -> i64
    "llvm.store"(%62, %61) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %63 = "llvm.getelementptr"(%60, %9) <{elem_type = !llvm.struct<"struct.kmp_dep_info", (i64, i64, i8)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%10, %63) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %64 = "llvm.getelementptr"(%60, %9) <{elem_type = !llvm.struct<"struct.kmp_dep_info", (i64, i64, i8)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 2>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%20, %64) <{alignment = 1 : i64, ordering = 0 : i64}> : (i8, !llvm.ptr) -> ()
    %65 = "llvm.call"(%5, %58, %59, %4, %25, %9, %13) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_omp_task_with_deps, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 7, 0>}> : (!llvm.ptr, i32, !llvm.ptr, i32, !llvm.ptr, i32, !llvm.ptr) -> i32
    "llvm.br"()[^bb26] : () -> ()
  ^bb26:  // pred: ^bb25
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<void (i32)>, linkage = #llvm.linkage<internal>, sym_name = "omp_task_with_deps..omp_par.4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i32):
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // pred: ^bb1
    "llvm.br"()[^bb3] : () -> ()
  ^bb3:  // pred: ^bb2
    "llvm.br"()[^bb4] : () -> ()
  ^bb4:  // pred: ^bb3
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<void (i32)>, linkage = #llvm.linkage<internal>, sym_name = "omp_task_with_deps..omp_par.3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: i32):
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // pred: ^bb1
    "llvm.br"()[^bb3] : () -> ()
  ^bb3:  // pred: ^bb2
    "llvm.br"()[^bb4] : () -> ()
  ^bb4:  // pred: ^bb3
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<void (i32)>, linkage = #llvm.linkage<internal>, sym_name = "omp_task_with_deps..omp_par.2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i32):
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // pred: ^bb1
    "llvm.br"()[^bb3] : () -> ()
  ^bb3:  // pred: ^bb2
    "llvm.br"()[^bb4] : () -> ()
  ^bb4:  // pred: ^bb3
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<void (i32)>, linkage = #llvm.linkage<internal>, sym_name = "omp_task_with_deps..omp_par.1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: i32):
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // pred: ^bb1
    "llvm.br"()[^bb3] : () -> ()
  ^bb3:  // pred: ^bb2
    "llvm.br"()[^bb4] : () -> ()
  ^bb4:  // pred: ^bb3
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<void (i32)>, linkage = #llvm.linkage<internal>, sym_name = "omp_task_with_deps..omp_par", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i32):
    %0 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // pred: ^bb1
    %1 = "llvm.alloca"(%0) <{alignment = 4 : i64, elem_type = i32}> : (i64) -> !llvm.ptr
    %2 = "llvm.load"(%1) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %3 = "llvm.add"(%2, %2) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.store"(%3, %1) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb3] : () -> ()
  ^bb3:  // pred: ^bb2
    "llvm.br"()[^bb4] : () -> ()
  ^bb4:  // pred: ^bb3
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<ptr (ptr, i32, i32, i64, i64, ptr)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.noalias}], sym_name = "__kmpc_omp_task_alloc", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "__kmpc_global_thread_num", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32, ptr, i32, ptr, i32, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "__kmpc_omp_task_with_deps", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

