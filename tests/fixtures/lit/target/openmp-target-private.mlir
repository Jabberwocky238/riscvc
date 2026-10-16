"builtin.module"() ({
  "llvm.comdat"() <{sym_name = "__llvm_global_comdat"}> ({
    "llvm.comdat_selector"() <{comdat = 0 : i64, sym_name = "_QQclX68656C6C6F"}> : () -> ()
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, comdat = @__llvm_global_comdat::@_QQclX68656C6C6F, constant, global_type = !llvm.array<5 x i8>, linkage = #llvm.linkage<linkonce>, sym_name = "_QQclX68656C6C6F", unnamed_addr = 0 : i64, value = "hello", visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 1 : i64, constant, dso_local, global_type = !llvm.array<67 x i8>, linkage = #llvm.linkage<private>, sym_name = "mlir.llvm.nameless_global_0", unnamed_addr = 2 : i64, value = ";tests/fixtures/lit/target/openmp-target-private.in;unknown;11;8;;\00", visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 1 : i64, constant, dso_local, global_type = !llvm.array<67 x i8>, linkage = #llvm.linkage<private>, sym_name = "mlir.llvm.nameless_global_1", unnamed_addr = 2 : i64, value = ";tests/fixtures/lit/target/openmp-target-private.in;unknown;31;8;;\00", visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 1 : i64, constant, dso_local, global_type = !llvm.array<68 x i8>, linkage = #llvm.linkage<private>, sym_name = "mlir.llvm.nameless_global_2", unnamed_addr = 2 : i64, value = ";tests/fixtures/lit/target/openmp-target-private.in;unknown;101;9;;\00", visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 1 : i64, constant, dso_local, global_type = !llvm.array<68 x i8>, linkage = #llvm.linkage<private>, sym_name = "mlir.llvm.nameless_global_3", unnamed_addr = 2 : i64, value = ";tests/fixtures/lit/target/openmp-target-private.in;unknown;103;9;;\00", visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 1 : i64, constant, dso_local, global_type = !llvm.array<68 x i8>, linkage = #llvm.linkage<private>, sym_name = "mlir.llvm.nameless_global_4", unnamed_addr = 2 : i64, value = ";tests/fixtures/lit/target/openmp-target-private.in;unknown;165;8;;\00", visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 1 : i64, constant, dso_local, global_type = !llvm.array<68 x i8>, linkage = #llvm.linkage<private>, sym_name = "mlir.llvm.nameless_global_5", unnamed_addr = 2 : i64, value = ";tests/fixtures/lit/target/openmp-target-private.in;unknown;166;8;;\00", visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<warning, "Debug Info Version", 3 : i32>]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, sym_name = "target_map_single_private", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %80 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %81 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %82 = "llvm.alloca"(%80) <{alignment = 4 : i64, elem_type = i32}> : (i64) -> !llvm.ptr
    %83 = "llvm.alloca"(%80) <{alignment = 4 : i64, elem_type = i32}> : (i64) -> !llvm.ptr
    "llvm.store"(%81, %83) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"(%83) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__omp_offloading_10302_728589a_target_map_single_private_l12, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, sym_name = "target_map_2_privates", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %75 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %76 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %77 = "llvm.alloca"(%75) <{alignment = 4 : i64, elem_type = i32}> : (i64) -> !llvm.ptr
    %78 = "llvm.alloca"(%75) <{alignment = 4 : i64, elem_type = f32}> : (i64) -> !llvm.ptr
    %79 = "llvm.alloca"(%75) <{alignment = 4 : i64, elem_type = i32}> : (i64) -> !llvm.ptr
    "llvm.store"(%76, %79) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"(%79) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__omp_offloading_10302_728589a_target_map_2_privates_l32, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, sym_name = "target_op_private_multi_block", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg7: !llvm.ptr):
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__omp_offloading_10302_728589a_target_op_private_multi_block_l61, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, sym_name = "target_boxchar_", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: !llvm.ptr):
    %64 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %65 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %66 = "llvm.mlir.undef"() : () -> !llvm.struct<(ptr, i64)>
    %67 = "llvm.alloca"(%64) <{alignment = 4 : i64, elem_type = i32}> : (i64) -> !llvm.ptr
    %68 = "llvm.alloca"(%64) <{alignment = 8 : i64, elem_type = !llvm.struct<(ptr, i64)>}> : (i64) -> !llvm.ptr
    %69 = "llvm.load"(%arg6) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    %70 = "llvm.icmp"(%69, %65) <{predicate = 4 : i64}> : (i64, i64) -> i1
    %71 = "llvm.select"(%70, %69, %65) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    %72 = "llvm.alloca"(%71) <{alignment = 1 : i64, elem_type = i8}> : (i64) -> !llvm.ptr
    %73 = "llvm.insertvalue"(%66, %72) <{position = array<i64: 0>}> : (!llvm.struct<(ptr, i64)>, !llvm.ptr) -> !llvm.struct<(ptr, i64)>
    %74 = "llvm.insertvalue"(%73, %71) <{position = array<i64: 1>}> : (!llvm.struct<(ptr, i64)>, i64) -> !llvm.struct<(ptr, i64)>
    "llvm.store"(%74, %68) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.struct<(ptr, i64)>, !llvm.ptr) -> ()
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"(%67, %68) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__omp_offloading_10302_728589a_target_boxchar__l104, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (!llvm.ptr, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, sym_name = "target_firstprivate_", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %61 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %62 = "llvm.alloca"(%61) <{alignment = 4 : i64, elem_type = i32}> : (i64) -> !llvm.ptr
    %63 = "llvm.alloca"(%61) <{alignment = 4 : i64, elem_type = f32}> : (i64) -> !llvm.ptr
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"(%62, %63) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__omp_offloading_10302_728589a_target_firstprivate__l167, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (!llvm.ptr, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<internal>, sym_name = "__omp_offloading_10302_728589a_target_map_single_private_l12", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: !llvm.ptr):
    %56 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %57 = "llvm.mlir.constant"() <{value = 10 : i32}> : () -> i32
    %58 = "llvm.alloca"(%56) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // pred: ^bb1
    "llvm.br"()[^bb3] : () -> ()
  ^bb3:  // pred: ^bb2
    "llvm.br"()[^bb4] : () -> ()
  ^bb4:  // pred: ^bb3
    %59 = "llvm.load"(%arg5) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %60 = "llvm.add"(%59, %57) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.store"(%60, %58) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb5] : () -> ()
  ^bb5:  // pred: ^bb4
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<internal>, sym_name = "__omp_offloading_10302_728589a_target_map_2_privates_l32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: !llvm.ptr):
    %46 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %47 = "llvm.mlir.constant"() <{value = 10 : i32}> : () -> i32
    %48 = "llvm.mlir.constant"() <{value = 1.100000e+01 : f32}> : () -> f32
    %49 = "llvm.alloca"(%46) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %50 = "llvm.alloca"(%46) <{alignment = 4 : i64, elem_type = f32}> : (i32) -> !llvm.ptr
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // pred: ^bb1
    "llvm.br"()[^bb3] : () -> ()
  ^bb3:  // pred: ^bb2
    "llvm.br"()[^bb4] : () -> ()
  ^bb4:  // pred: ^bb3
    %51 = "llvm.load"(%arg4) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %52 = "llvm.add"(%51, %47) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.store"(%52, %49) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %53 = "llvm.load"(%49) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %54 = "llvm.sitofp"(%53) : (i32) -> f32
    %55 = "llvm.fadd"(%54, %48) <{fastmathFlags = #llvm.fastmath<contract>}> : (f32, f32) -> f32
    "llvm.store"(%55, %50) <{alignment = 4 : i64, ordering = 0 : i64}> : (f32, !llvm.ptr) -> ()
    "llvm.br"()[^bb5] : () -> ()
  ^bb5:  // pred: ^bb4
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<internal>, sym_name = "__omp_offloading_10302_728589a_target_op_private_multi_block_l61", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %42 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %43 = "llvm.alloca"(%42) <{alignment = 4 : i64, elem_type = f32}> : (i32) -> !llvm.ptr
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // pred: ^bb1
    "llvm.br"()[^bb3] : () -> ()
  ^bb3:  // pred: ^bb2
    "llvm.br"()[^bb5] : () -> ()
  ^bb4:  // pred: ^bb5
    "llvm.br"(%43)[^bb6] : (!llvm.ptr) -> ()
  ^bb5:  // pred: ^bb3
    "llvm.br"()[^bb4] : () -> ()
  ^bb6(%44: !llvm.ptr):  // pred: ^bb4
    "llvm.br"()[^bb7] : () -> ()
  ^bb7:  // pred: ^bb6
    %45 = "llvm.load"(%44) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f32
    "llvm.br"()[^bb8] : () -> ()
  ^bb8:  // pred: ^bb7
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<void (ptr, ptr)>, linkage = #llvm.linkage<internal>, sym_name = "__omp_offloading_10302_728589a_target_boxchar__l104", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: !llvm.ptr, %arg3: !llvm.ptr):
    %13 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %14 = "llvm.mlir.undef"() : () -> !llvm.struct<(ptr, i64)>
    %15 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %16 = "llvm.mlir.constant"() <{value = 5 : i64}> : () -> i64
    %17 = "llvm.mlir.addressof"() <{global_name = @_QQclX68656C6C6F}> : () -> !llvm.ptr
    %18 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %19 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %20 = "llvm.mlir.constant"() <{value = " "}> : () -> !llvm.array<1 x i8>
    %21 = "llvm.alloca"(%13) <{alignment = 8 : i64, elem_type = !llvm.struct<(ptr, i64)>}> : (i32) -> !llvm.ptr
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // pred: ^bb1
    "llvm.br"()[^bb3] : () -> ()
  ^bb3:  // pred: ^bb2
    %22 = "llvm.load"(%arg3) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.struct<(ptr, i64)>
    %23 = "llvm.extractvalue"(%22) <{position = array<i64: 0>}> : (!llvm.struct<(ptr, i64)>) -> !llvm.ptr
    %24 = "llvm.extractvalue"(%22) <{position = array<i64: 1>}> : (!llvm.struct<(ptr, i64)>) -> i64
    %25 = "llvm.alloca"(%24) <{alignment = 1 : i64, elem_type = i8}> : (i64) -> !llvm.ptr
    %26 = "llvm.insertvalue"(%14, %25) <{position = array<i64: 0>}> : (!llvm.struct<(ptr, i64)>, !llvm.ptr) -> !llvm.struct<(ptr, i64)>
    %27 = "llvm.insertvalue"(%26, %24) <{position = array<i64: 1>}> : (!llvm.struct<(ptr, i64)>, i64) -> !llvm.struct<(ptr, i64)>
    %28 = "llvm.load"(%arg3) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.struct<(ptr, i64)>
    "llvm.br"()[^bb7] : () -> ()
  ^bb4:  // pred: ^bb6
    "llvm.br"()[^bb8] : () -> ()
  ^bb5:  // pred: ^bb6
    %29 = "llvm.getelementptr"(%35, %32) <{elem_type = !llvm.array<1 x i8>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.store"(%20, %29) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.array<1 x i8>, !llvm.ptr) -> ()
    %30 = "llvm.add"(%32, %18) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %31 = "llvm.sub"(%33, %18) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.br"(%30, %31)[^bb6] : (i64, i64) -> ()
  ^bb6(%32: i64, %33: i64):  // 2 preds: ^bb5, ^bb7
    %34 = "llvm.icmp"(%33, %19) <{predicate = 4 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%34)[^bb5, ^bb4] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb7:  // pred: ^bb3
    %35 = "llvm.extractvalue"(%27) <{position = array<i64: 0>}> : (!llvm.struct<(ptr, i64)>) -> !llvm.ptr
    %36 = "llvm.extractvalue"(%27) <{position = array<i64: 1>}> : (!llvm.struct<(ptr, i64)>) -> i64
    "llvm.store"(%15, %arg2) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %37 = "llvm.icmp"(%36, %16) <{predicate = 2 : i64}> : (i64, i64) -> i1
    %38 = "llvm.select"(%37, %36, %16) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.intr.memmove"(%35, %17, %38) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %39 = "llvm.sub"(%36, %18) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %40 = "llvm.sub"(%39, %38) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %41 = "llvm.add"(%40, %18) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.br"(%38, %41)[^bb6] : (i64, i64) -> ()
  ^bb8:  // pred: ^bb4
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<void (ptr, ptr)>, linkage = #llvm.linkage<internal>, sym_name = "__omp_offloading_10302_728589a_target_firstprivate__l167", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: !llvm.ptr, %arg1: !llvm.ptr):
    %0 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 10 : i32}> : () -> i32
    %2 = "llvm.mlir.constant"() <{value = 2.000000e+00 : f64}> : () -> f64
    %3 = "llvm.alloca"(%0) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %4 = "llvm.alloca"(%0) <{alignment = 4 : i64, elem_type = f32}> : (i32) -> !llvm.ptr
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // pred: ^bb1
    "llvm.br"()[^bb3] : () -> ()
  ^bb3:  // pred: ^bb2
    "llvm.br"()[^bb4] : () -> ()
  ^bb4:  // pred: ^bb3
    %5 = "llvm.load"(%arg0) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.store"(%5, %3) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %6 = "llvm.load"(%arg1) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f32
    "llvm.store"(%6, %4) <{alignment = 4 : i64, ordering = 0 : i64}> : (f32, !llvm.ptr) -> ()
    "llvm.br"()[^bb5] : () -> ()
  ^bb5:  // pred: ^bb4
    %7 = "llvm.load"(%3) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %8 = "llvm.add"(%7, %1) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.store"(%8, %3) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %9 = "llvm.load"(%4) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f32
    %10 = "llvm.fpext"(%9) : (f32) -> f64
    %11 = "llvm.fadd"(%10, %2) <{fastmathFlags = #llvm.fastmath<contract>}> : (f64, f64) -> f64
    %12 = "llvm.fptrunc"(%11) : (f64) -> f32
    "llvm.store"(%12, %4) <{alignment = 4 : i64, ordering = 0 : i64}> : (f32, !llvm.ptr) -> ()
    "llvm.br"()[^bb6] : () -> ()
  ^bb6:  // pred: ^bb5
    "llvm.return"() : () -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

