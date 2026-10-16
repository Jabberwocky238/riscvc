"builtin.module"() ({
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 1 : i64, constant, dso_local, global_type = !llvm.array<23 x i8>, linkage = #llvm.linkage<private>, sym_name = "mlir.llvm.nameless_global_0", unnamed_addr = 2 : i64, value = ";unknown;unknown;0;0;;\00", visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 8 : i64, constant, dso_local, global_type = !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, linkage = #llvm.linkage<private>, sym_name = "mlir.llvm.nameless_global_1", unnamed_addr = 2 : i64, visibility_ = 0 : i64}> ({
    %76 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_0}> : () -> !llvm.ptr
    %77 = "llvm.mlir.constant"() <{value = 22 : i32}> : () -> i32
    %78 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %79 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %80 = "llvm.mlir.undef"() : () -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %81 = "llvm.insertvalue"(%80, %78) <{position = array<i64: 0>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %82 = "llvm.insertvalue"(%81, %79) <{position = array<i64: 1>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %83 = "llvm.insertvalue"(%82, %78) <{position = array<i64: 2>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %84 = "llvm.insertvalue"(%83, %77) <{position = array<i64: 3>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %85 = "llvm.insertvalue"(%84, %76) <{position = array<i64: 4>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, !llvm.ptr) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    "llvm.return"(%85) : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>) -> ()
  }) : () -> ()
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<warning, "Debug Info Version", 3 : i32>]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, sym_name = "_QPtest", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %43 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %44 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %45 = "llvm.mlir.constant"() <{value = 20 : i32}> : () -> i32
    %46 = "llvm.mlir.zero"() : () -> !llvm.ptr
    %47 = "llvm.getelementptr"(%46, %43) <{elem_type = !llvm.struct<(i32)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %48 = "llvm.ptrtoint"(%47) : (!llvm.ptr) -> i64
    %49 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %50 = "llvm.mlir.constant"() <{value = 5 : i64}> : () -> i64
    %51 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %52 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %53 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_1}> : () -> !llvm.ptr
    %54 = "llvm.mlir.constant"() <{value = 40 : i64}> : () -> i64
    %55 = "llvm.mlir.constant"() <{value = 32 : i64}> : () -> i64
    %56 = "llvm.mlir.addressof"() <{global_name = @_QPtest..omp_par}> : () -> !llvm.ptr
    %57 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %58 = "llvm.mlir.addressof"() <{global_name = @omp_taskloop_dup}> : () -> !llvm.ptr
    %59 = "llvm.alloca"(%43) <{alignment = 8 : i64, elem_type = !llvm.struct<(i64, i64, i64, ptr)>}> : (i32) -> !llvm.ptr
    %60 = "llvm.alloca"(%44) <{alignment = 4 : i64, elem_type = i32}> : (i64) -> !llvm.ptr
    %61 = "llvm.alloca"(%44) <{alignment = 4 : i64, elem_type = i32}> : (i64) -> !llvm.ptr
    "llvm.store"(%45, %61) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // pred: ^bb1
    %62 = "llvm.call"(%48) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @malloc, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (i64) -> !llvm.ptr
    %63 = "llvm.getelementptr"(%62, %49) <{elem_type = !llvm.struct<(i32)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.br"()[^bb3] : () -> ()
  ^bb3:  // pred: ^bb2
    "llvm.br"()[^bb4] : () -> ()
  ^bb4:  // pred: ^bb3
    %64 = "llvm.load"(%61) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.store"(%64, %63) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb5] : () -> ()
  ^bb5:  // pred: ^bb4
    "llvm.br"()[^bb6] : () -> ()
  ^bb6:  // pred: ^bb5
    %65 = "llvm.getelementptr"(%59, %49) <{elem_type = !llvm.struct<(i64, i64, i64, ptr)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%44, %65) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %66 = "llvm.getelementptr"(%59, %49) <{elem_type = !llvm.struct<(i64, i64, i64, ptr)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%50, %66) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %67 = "llvm.getelementptr"(%59, %49) <{elem_type = !llvm.struct<(i64, i64, i64, ptr)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 2>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%44, %67) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %68 = "llvm.getelementptr"(%59, %49) <{elem_type = !llvm.struct<(i64, i64, i64, ptr)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 3>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%62, %68) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %69 = "llvm.call"(%53) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_global_thread_num, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> i32
    "llvm.call"(%53, %69) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_taskgroup, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (!llvm.ptr, i32) -> ()
    %70 = "llvm.call"(%53, %69, %52, %54, %55, %56) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_omp_task_alloc, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 6, 0>}> : (!llvm.ptr, i32, i32, i64, i64, !llvm.ptr) -> !llvm.ptr
    %71 = "llvm.load"(%70) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.ptr
    "llvm.intr.memcpy"(%71, %59, %55) <{arg_attrs = [{llvm.align = 1 : i64}, {llvm.align = 1 : i64}, {}], isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %72 = "llvm.getelementptr"(%71, %49) <{elem_type = !llvm.struct<(i64, i64, i64, ptr)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %73 = "llvm.getelementptr"(%71, %49) <{elem_type = !llvm.struct<(i64, i64, i64, ptr)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %74 = "llvm.getelementptr"(%71, %49) <{elem_type = !llvm.struct<(i64, i64, i64, ptr)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 2>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %75 = "llvm.load"(%74) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    "llvm.call"(%53, %69, %70, %43, %72, %73, %75, %43, %49, %57, %58) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_taskloop, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 11, 0>}> : (!llvm.ptr, i32, !llvm.ptr, i32, !llvm.ptr, !llvm.ptr, i64, i32, i32, i64, !llvm.ptr) -> ()
    "llvm.call"(%53, %69) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_end_taskgroup, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (!llvm.ptr, i32) -> ()
    "llvm.br"()[^bb7] : () -> ()
  ^bb7:  // pred: ^bb6
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<void (i32, ptr)>, linkage = #llvm.linkage<internal>, sym_name = "_QPtest..omp_par", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: i32, %arg4: !llvm.ptr):
    %15 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %16 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %17 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %18 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %19 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %20 = "llvm.load"(%arg4) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.ptr
    %21 = "llvm.getelementptr"(%20, %15) <{elem_type = !llvm.struct<(i64, i64, i64, ptr)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %22 = "llvm.load"(%21) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    %23 = "llvm.getelementptr"(%20, %15) <{elem_type = !llvm.struct<(i64, i64, i64, ptr)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %24 = "llvm.load"(%23) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    %25 = "llvm.getelementptr"(%20, %15) <{elem_type = !llvm.struct<(i64, i64, i64, ptr)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 2>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %26 = "llvm.load"(%25) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    %27 = "llvm.getelementptr"(%20, %15) <{elem_type = !llvm.struct<(i64, i64, i64, ptr)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 3>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %28 = "llvm.load"(%27) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.ptr
    %29 = "llvm.alloca"(%16) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    %30 = "llvm.getelementptr"(%28, %15) <{elem_type = !llvm.struct<(i32)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // pred: ^bb1
    "llvm.br"()[^bb3] : () -> ()
  ^bb3:  // pred: ^bb2
    %31 = "llvm.sub"(%24, %22) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %32 = "llvm.sdiv"(%31, %19) : (i64, i64) -> i64
    %33 = "llvm.add"(%32, %19) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %34 = "llvm.trunc"(%33) <{overflowFlags = 0 : i32}> : (i64) -> i32
    %35 = "llvm.trunc"(%22) <{overflowFlags = 0 : i32}> : (i64) -> i32
    "llvm.br"(%15)[^bb4] : (i32) -> ()
  ^bb4(%36: i32):  // 2 preds: ^bb3, ^bb12
    "llvm.br"()[^bb5] : () -> ()
  ^bb5:  // pred: ^bb4
    %37 = "llvm.icmp"(%36, %34) <{predicate = 6 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%37)[^bb9, ^bb6] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb6:  // pred: ^bb5
    "llvm.br"()[^bb7] : () -> ()
  ^bb7:  // pred: ^bb6
    "llvm.br"()[^bb8] : () -> ()
  ^bb8:  // pred: ^bb7
    "llvm.call"(%28) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @free, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> ()
    "llvm.br"()[^bb13] : () -> ()
  ^bb9:  // pred: ^bb5
    %38 = "llvm.mul"(%36, %16) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %39 = "llvm.add"(%38, %35) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.br"()[^bb10] : () -> ()
  ^bb10:  // pred: ^bb9
    "llvm.store"(%39, %29) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %40 = "llvm.load"(%30) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %41 = "llvm.add"(%40, %16) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.store"(%41, %30) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb11] : () -> ()
  ^bb11:  // pred: ^bb10
    "llvm.br"()[^bb12] : () -> ()
  ^bb12:  // pred: ^bb11
    %42 = "llvm.add"(%36, %16) <{overflowFlags = 2 : i32}> : (i32, i32) -> i32
    "llvm.br"(%42)[^bb4] : (i32) -> ()
  ^bb13:  // pred: ^bb8
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<ptr (i64)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.noalias}], sym_name = "malloc", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, sym_name = "free", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<void (ptr, ptr, i32)>, linkage = #llvm.linkage<internal>, sym_name = "omp_taskloop_dup", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: !llvm.ptr, %arg1: !llvm.ptr, %arg2: i32):
    %0 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %2 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %3 = "llvm.mlir.zero"() : () -> !llvm.ptr
    %4 = "llvm.getelementptr"(%3, %1) <{elem_type = !llvm.struct<(i32)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %5 = "llvm.ptrtoint"(%4) : (!llvm.ptr) -> i64
    %6 = "llvm.getelementptr"(%arg0, %0) <{elem_type = !llvm.struct<(struct<"struct.kmp_task_ompbuilder_t", (ptr, ptr, i32, ptr, ptr)>, struct<(i64, i64, i64, ptr)>)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %7 = "llvm.getelementptr"(%6, %0) <{elem_type = !llvm.struct<(i64, i64, i64, ptr)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 3>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %8 = "llvm.getelementptr"(%arg1, %0) <{elem_type = !llvm.struct<(struct<"struct.kmp_task_ompbuilder_t", (ptr, ptr, i32, ptr, ptr)>, struct<(i64, i64, i64, ptr)>)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %9 = "llvm.getelementptr"(%8, %0) <{elem_type = !llvm.struct<(i64, i64, i64, ptr)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 3>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %10 = "llvm.load"(%9) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.ptr
    %11 = "llvm.call"(%5) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @malloc, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (i64) -> !llvm.ptr
    "llvm.store"(%11, %7) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %12 = "llvm.getelementptr"(%10, %0) <{elem_type = !llvm.struct<(i32)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %13 = "llvm.getelementptr"(%11, %0) <{elem_type = !llvm.struct<(i32)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    %14 = "llvm.load"(%12) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.store"(%14, %13) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<ptr (ptr, i32, i32, i64, i64, ptr)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.noalias}], sym_name = "__kmpc_omp_task_alloc", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "__kmpc_global_thread_num", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, convergent, function_type = !llvm.func<void (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "__kmpc_taskgroup", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i32, ptr, i32, ptr, ptr, i64, i32, i32, i64, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "__kmpc_taskloop", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, convergent, function_type = !llvm.func<void (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "__kmpc_end_taskgroup", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

