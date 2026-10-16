"builtin.module"() ({
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 1 : i64, constant, dso_local, global_type = !llvm.array<67 x i8>, linkage = #llvm.linkage<private>, sym_name = "mlir.llvm.nameless_global_0", unnamed_addr = 2 : i64, value = ";tests/fixtures/lit/target/omptarget-nowait-llvm.in;unknown;8;10;;\00", visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, constant, global_type = i8, linkage = #llvm.linkage<weak>, sym_name = ".__omp_offloading_10302_72856d9__QPfoo_l9.region_id", unnamed_addr = 0 : i64, value = 0 : i8, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, constant, dso_local, global_type = !llvm.array<1 x i64>, linkage = #llvm.linkage<private>, sym_name = ".offload_sizes", unnamed_addr = 2 : i64, value = dense<4> : tensor<1xi64>, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, constant, dso_local, global_type = !llvm.array<1 x i64>, linkage = #llvm.linkage<private>, sym_name = ".offload_maptypes", unnamed_addr = 2 : i64, value = dense<800> : tensor<1xi64>, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, constant, dso_local, global_type = !llvm.array<1 x ptr>, linkage = #llvm.linkage<private>, sym_name = ".offload_mapnames", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %113 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_0}> : () -> !llvm.ptr
    %114 = "llvm.mlir.undef"() : () -> !llvm.array<1 x ptr>
    %115 = "llvm.insertvalue"(%114, %113) <{position = array<i64: 0>}> : (!llvm.array<1 x ptr>, !llvm.ptr) -> !llvm.array<1 x ptr>
    "llvm.return"(%115) : (!llvm.array<1 x ptr>) -> ()
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 1 : i64, constant, dso_local, global_type = !llvm.array<23 x i8>, linkage = #llvm.linkage<private>, sym_name = "mlir.llvm.nameless_global_1", unnamed_addr = 2 : i64, value = ";unknown;unknown;0;0;;\00", visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 8 : i64, constant, dso_local, global_type = !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, linkage = #llvm.linkage<private>, sym_name = "mlir.llvm.nameless_global_2", unnamed_addr = 2 : i64, visibility_ = 0 : i64}> ({
    %103 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_1}> : () -> !llvm.ptr
    %104 = "llvm.mlir.constant"() <{value = 22 : i32}> : () -> i32
    %105 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %106 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %107 = "llvm.mlir.undef"() : () -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %108 = "llvm.insertvalue"(%107, %105) <{position = array<i64: 0>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %109 = "llvm.insertvalue"(%108, %106) <{position = array<i64: 1>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %110 = "llvm.insertvalue"(%109, %105) <{position = array<i64: 2>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %111 = "llvm.insertvalue"(%110, %104) <{position = array<i64: 3>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %112 = "llvm.insertvalue"(%111, %103) <{position = array<i64: 4>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, !llvm.ptr) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    "llvm.return"(%112) : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>) -> ()
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 1 : i64, constant, dso_local, global_type = !llvm.array<41 x i8>, linkage = #llvm.linkage<internal>, section = ".llvm.rodata.offloading", sym_name = ".offloading.entry_name", unnamed_addr = 2 : i64, value = "__omp_offloading_10302_72856d9__QPfoo_l9\00", visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 8 : i64, constant, global_type = !llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>, linkage = #llvm.linkage<weak>, section = "llvm_offload_entries", sym_name = ".offloading.entry.__omp_offloading_10302_72856d9__QPfoo_l9", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %87 = "llvm.mlir.zero"() : () -> !llvm.ptr
    %88 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %89 = "llvm.mlir.addressof"() <{global_name = @".offloading.entry_name"}> : () -> !llvm.ptr
    %90 = "llvm.mlir.addressof"() <{global_name = @".__omp_offloading_10302_72856d9__QPfoo_l9.region_id"}> : () -> !llvm.ptr
    %91 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %92 = "llvm.mlir.constant"() <{value = 1 : i16}> : () -> i16
    %93 = "llvm.mlir.undef"() : () -> !llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>
    %94 = "llvm.insertvalue"(%93, %88) <{position = array<i64: 0>}> : (!llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>, i64) -> !llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>
    %95 = "llvm.insertvalue"(%94, %92) <{position = array<i64: 1>}> : (!llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>, i16) -> !llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>
    %96 = "llvm.insertvalue"(%95, %92) <{position = array<i64: 2>}> : (!llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>, i16) -> !llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>
    %97 = "llvm.insertvalue"(%96, %91) <{position = array<i64: 3>}> : (!llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>, i32) -> !llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>
    %98 = "llvm.insertvalue"(%97, %90) <{position = array<i64: 4>}> : (!llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>, !llvm.ptr) -> !llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>
    %99 = "llvm.insertvalue"(%98, %89) <{position = array<i64: 5>}> : (!llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>, !llvm.ptr) -> !llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>
    %100 = "llvm.insertvalue"(%99, %88) <{position = array<i64: 6>}> : (!llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>, i64) -> !llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>
    %101 = "llvm.insertvalue"(%100, %88) <{position = array<i64: 7>}> : (!llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>, i64) -> !llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>
    %102 = "llvm.insertvalue"(%101, %87) <{position = array<i64: 8>}> : (!llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>, !llvm.ptr) -> !llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>
    "llvm.return"(%102) : (!llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>) -> ()
  }) : () -> ()
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<warning, "Debug Info Version", 3 : i32>]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, sym_name = "_QPfoo", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %54 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %55 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %56 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %57 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %58 = "llvm.mlir.zero"() : () -> !llvm.ptr
    %59 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_2}> : () -> !llvm.ptr
    %60 = "llvm.mlir.constant"() <{value = 56 : i64}> : () -> i64
    %61 = "llvm.mlir.constant"() <{value = 8 : i64}> : () -> i64
    %62 = "llvm.mlir.addressof"() <{global_name = @".omp_target_task_proxy_func"}> : () -> !llvm.ptr
    %63 = "llvm.mlir.constant"() <{value = -1 : i64}> : () -> i64
    %64 = "llvm.alloca"(%54) <{alignment = 8 : i64, elem_type = !llvm.struct<(ptr)>}> : (i32) -> !llvm.ptr
    %65 = "llvm.alloca"(%54) <{alignment = 8 : i64, elem_type = !llvm.ptr}> : (i32) -> !llvm.ptr
    %66 = "llvm.alloca"(%54) <{alignment = 8 : i64, elem_type = !llvm.array<1 x ptr>}> : (i32) -> !llvm.ptr
    %67 = "llvm.alloca"(%54) <{alignment = 8 : i64, elem_type = !llvm.array<1 x ptr>}> : (i32) -> !llvm.ptr
    %68 = "llvm.alloca"(%54) <{alignment = 8 : i64, elem_type = !llvm.array<1 x ptr>}> : (i32) -> !llvm.ptr
    %69 = "llvm.alloca"(%55) <{alignment = 4 : i64, elem_type = i32}> : (i64) -> !llvm.ptr
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    %70 = "llvm.load"(%69) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.store"(%70, %65) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %71 = "llvm.load"(%65) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.ptr
    %72 = "llvm.getelementptr"(%66, %56, %56) <{elem_type = !llvm.array<1 x ptr>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    "llvm.store"(%71, %72) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %73 = "llvm.getelementptr"(%67, %56, %56) <{elem_type = !llvm.array<1 x ptr>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    "llvm.store"(%71, %73) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %74 = "llvm.getelementptr"(%68, %57, %57) <{elem_type = !llvm.array<1 x ptr>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i64) -> !llvm.ptr
    "llvm.store"(%58, %74) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %75 = "llvm.getelementptr"(%66, %56, %56) <{elem_type = !llvm.array<1 x ptr>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    %76 = "llvm.getelementptr"(%67, %56, %56) <{elem_type = !llvm.array<1 x ptr>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // pred: ^bb1
    %77 = "llvm.getelementptr"(%64, %56) <{elem_type = !llvm.struct<(ptr)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%69, %77) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %78 = "llvm.call"(%59) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_global_thread_num, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> i32
    %79 = "llvm.call"(%59, %78, %56, %60, %61, %62, %63) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_omp_target_task_alloc, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 7, 0>}> : (!llvm.ptr, i32, i32, i64, i64, !llvm.ptr, i64) -> !llvm.ptr
    %80 = "llvm.getelementptr"(%79, %56) <{elem_type = !llvm.struct<"struct.task_with_privates", (struct<"struct.kmp_task_ompbuilder_t", (ptr, ptr, i32, ptr, ptr)>, struct<"struct.privates", (array<1 x ptr>, array<1 x ptr>)>)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %81 = "llvm.getelementptr"(%80, %56) <{elem_type = !llvm.struct<"struct.kmp_task_ompbuilder_t", (ptr, ptr, i32, ptr, ptr)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %82 = "llvm.load"(%81) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.ptr
    "llvm.intr.memcpy"(%82, %64, %61) <{arg_attrs = [{llvm.align = 1 : i64}, {llvm.align = 1 : i64}, {}], isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %83 = "llvm.getelementptr"(%79, %56) <{elem_type = !llvm.struct<"struct.task_with_privates", (struct<"struct.kmp_task_ompbuilder_t", (ptr, ptr, i32, ptr, ptr)>, struct<"struct.privates", (array<1 x ptr>, array<1 x ptr>)>)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %84 = "llvm.getelementptr"(%83, %56) <{elem_type = !llvm.struct<"struct.privates", (array<1 x ptr>, array<1 x ptr>)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.intr.memcpy"(%84, %75, %61) <{arg_attrs = [{llvm.align = 1 : i64}, {llvm.align = 1 : i64}, {}], isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %85 = "llvm.getelementptr"(%83, %56) <{elem_type = !llvm.struct<"struct.privates", (array<1 x ptr>, array<1 x ptr>)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.intr.memcpy"(%85, %76, %61) <{arg_attrs = [{llvm.align = 1 : i64}, {llvm.align = 1 : i64}, {}], isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %86 = "llvm.call"(%59, %78, %79) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_omp_task, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (!llvm.ptr, i32, !llvm.ptr) -> i32
    "llvm.br"()[^bb3] : () -> ()
  ^bb3:  // pred: ^bb2
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<void (i32, ptr, ptr, ptr)>, linkage = #llvm.linkage<internal>, sym_name = "_QPfoo..omp_par", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: i32, %arg4: !llvm.ptr, %arg5: !llvm.ptr, %arg6: !llvm.ptr):
    %11 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %12 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %13 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %14 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %15 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %16 = "llvm.mlir.addressof"() <{global_name = @".offload_sizes"}> : () -> !llvm.ptr
    %17 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %18 = "llvm.mlir.addressof"() <{global_name = @".offload_maptypes"}> : () -> !llvm.ptr
    %19 = "llvm.mlir.constant"() <{value = 6 : i32}> : () -> i32
    %20 = "llvm.mlir.addressof"() <{global_name = @".offload_mapnames"}> : () -> !llvm.ptr
    %21 = "llvm.mlir.constant"() <{value = 7 : i32}> : () -> i32
    %22 = "llvm.mlir.zero"() : () -> !llvm.ptr
    %23 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %24 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %25 = "llvm.mlir.constant"() <{value = 9 : i32}> : () -> i32
    %26 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %27 = "llvm.mlir.constant"() <{value = 10 : i32}> : () -> i32
    %28 = "llvm.mlir.constant"() <{value = dense<[-1, 0, 0]> : tensor<3xi32>}> : () -> !llvm.array<3 x i32>
    %29 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %30 = "llvm.mlir.constant"() <{value = dense<0> : tensor<3xi32>}> : () -> !llvm.array<3 x i32>
    %31 = "llvm.mlir.constant"() <{value = 12 : i32}> : () -> i32
    %32 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_2}> : () -> !llvm.ptr
    %33 = "llvm.mlir.constant"() <{value = -1 : i64}> : () -> i64
    %34 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %35 = "llvm.mlir.addressof"() <{global_name = @".__omp_offloading_10302_72856d9__QPfoo_l9.region_id"}> : () -> !llvm.ptr
    %36 = "llvm.getelementptr"(%arg6, %11) <{elem_type = !llvm.struct<(ptr)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %37 = "llvm.load"(%36) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.ptr
    %38 = "llvm.alloca"(%12) <{alignment = 8 : i64, elem_type = !llvm.struct<"struct.__tgt_kernel_arguments", (i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, array<3 x i32>, array<3 x i32>, i32)>}> : (i32) -> !llvm.ptr
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    %39 = "llvm.getelementptr"(%38, %11) <{elem_type = !llvm.struct<"struct.__tgt_kernel_arguments", (i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, array<3 x i32>, array<3 x i32>, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%13, %39) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %40 = "llvm.getelementptr"(%38, %11) <{elem_type = !llvm.struct<"struct.__tgt_kernel_arguments", (i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, array<3 x i32>, array<3 x i32>, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%12, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %41 = "llvm.getelementptr"(%38, %11) <{elem_type = !llvm.struct<"struct.__tgt_kernel_arguments", (i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, array<3 x i32>, array<3 x i32>, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 2>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%arg4, %41) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %42 = "llvm.getelementptr"(%38, %11) <{elem_type = !llvm.struct<"struct.__tgt_kernel_arguments", (i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, array<3 x i32>, array<3 x i32>, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 3>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%arg5, %42) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %43 = "llvm.getelementptr"(%38, %11) <{elem_type = !llvm.struct<"struct.__tgt_kernel_arguments", (i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, array<3 x i32>, array<3 x i32>, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 4>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%16, %43) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %44 = "llvm.getelementptr"(%38, %11) <{elem_type = !llvm.struct<"struct.__tgt_kernel_arguments", (i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, array<3 x i32>, array<3 x i32>, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 5>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%18, %44) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %45 = "llvm.getelementptr"(%38, %11) <{elem_type = !llvm.struct<"struct.__tgt_kernel_arguments", (i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, array<3 x i32>, array<3 x i32>, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 6>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%20, %45) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %46 = "llvm.getelementptr"(%38, %11) <{elem_type = !llvm.struct<"struct.__tgt_kernel_arguments", (i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, array<3 x i32>, array<3 x i32>, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 7>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%22, %46) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %47 = "llvm.getelementptr"(%38, %11) <{elem_type = !llvm.struct<"struct.__tgt_kernel_arguments", (i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, array<3 x i32>, array<3 x i32>, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 8>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%24, %47) <{alignment = 8 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %48 = "llvm.getelementptr"(%38, %11) <{elem_type = !llvm.struct<"struct.__tgt_kernel_arguments", (i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, array<3 x i32>, array<3 x i32>, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 9>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%26, %48) <{alignment = 8 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %49 = "llvm.getelementptr"(%38, %11) <{elem_type = !llvm.struct<"struct.__tgt_kernel_arguments", (i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, array<3 x i32>, array<3 x i32>, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 10>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%28, %49) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.array<3 x i32>, !llvm.ptr) -> ()
    %50 = "llvm.getelementptr"(%38, %11) <{elem_type = !llvm.struct<"struct.__tgt_kernel_arguments", (i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, array<3 x i32>, array<3 x i32>, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 11>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%30, %50) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.array<3 x i32>, !llvm.ptr) -> ()
    %51 = "llvm.getelementptr"(%38, %11) <{elem_type = !llvm.struct<"struct.__tgt_kernel_arguments", (i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, array<3 x i32>, array<3 x i32>, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 12>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%11, %51) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %52 = "llvm.call"(%32, %33, %34, %11, %35, %38) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__tgt_target_kernel, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 6, 0>}> : (!llvm.ptr, i64, i32, i32, !llvm.ptr, !llvm.ptr) -> i32
    %53 = "llvm.icmp"(%52, %11) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%53)[^bb3, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb2:  // 2 preds: ^bb1, ^bb3
    "llvm.br"()[^bb4] : () -> ()
  ^bb3:  // pred: ^bb1
    "llvm.call"(%37) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__omp_offloading_10302_72856d9__QPfoo_l9, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb4:  // pred: ^bb2
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<internal>, sym_name = "__omp_offloading_10302_72856d9__QPfoo_l9", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: !llvm.ptr):
    %10 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // pred: ^bb1
    "llvm.br"()[^bb3] : () -> ()
  ^bb3:  // pred: ^bb2
    "llvm.store"(%10, %arg2) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb4] : () -> ()
  ^bb4:  // pred: ^bb3
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i64, i32, i32, ptr, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "__tgt_target_kernel", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<void (i32, ptr)>, linkage = #llvm.linkage<internal>, sym_name = ".omp_target_task_proxy_func", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i32, %arg1: !llvm.ptr):
    %0 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %2 = "llvm.mlir.constant"() <{value = 8 : i64}> : () -> i64
    %3 = "llvm.getelementptr"(%arg1, %0) <{elem_type = !llvm.struct<"struct.task_with_privates", (struct<"struct.kmp_task_ompbuilder_t", (ptr, ptr, i32, ptr, ptr)>, struct<"struct.privates", (array<1 x ptr>, array<1 x ptr>)>)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %4 = "llvm.getelementptr"(%3, %0) <{elem_type = !llvm.struct<"struct.privates", (array<1 x ptr>, array<1 x ptr>)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %5 = "llvm.getelementptr"(%3, %0) <{elem_type = !llvm.struct<"struct.privates", (array<1 x ptr>, array<1 x ptr>)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %6 = "llvm.alloca"(%1) <{alignment = 8 : i64, elem_type = !llvm.struct<(ptr)>}> : (i32) -> !llvm.ptr
    %7 = "llvm.getelementptr"(%arg1, %0) <{elem_type = !llvm.struct<"struct.task_with_privates", (struct<"struct.kmp_task_ompbuilder_t", (ptr, ptr, i32, ptr, ptr)>, struct<"struct.privates", (array<1 x ptr>, array<1 x ptr>)>)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %8 = "llvm.getelementptr"(%7, %0) <{elem_type = !llvm.struct<"struct.kmp_task_ompbuilder_t", (ptr, ptr, i32, ptr, ptr)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %9 = "llvm.load"(%8) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.ptr
    "llvm.intr.memcpy"(%6, %9, %2) <{arg_attrs = [{llvm.align = 8 : i64}, {llvm.align = 1 : i64}, {}], isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    "llvm.call"(%arg0, %4, %5, %6) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @_QPfoo..omp_par, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>}> : (i32, !llvm.ptr, !llvm.ptr, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<ptr (ptr, i32, i32, i64, i64, ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.noalias}], sym_name = "__kmpc_omp_target_task_alloc", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "__kmpc_global_thread_num", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "__kmpc_omp_task", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

