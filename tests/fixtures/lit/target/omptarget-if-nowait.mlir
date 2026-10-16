"builtin.module"() ({
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 1 : i64, constant, dso_local, global_type = !llvm.array<66 x i8>, linkage = #llvm.linkage<private>, sym_name = "mlir.llvm.nameless_global_0", unnamed_addr = 2 : i64, value = ";tests/fixtures/lit/target/omptarget-if-nowait.in;unknown;11;11;;\00", visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 1 : i64, constant, dso_local, global_type = !llvm.array<66 x i8>, linkage = #llvm.linkage<private>, sym_name = "mlir.llvm.nameless_global_1", unnamed_addr = 2 : i64, value = ";tests/fixtures/lit/target/omptarget-if-nowait.in;unknown;12;11;;\00", visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, constant, global_type = i8, linkage = #llvm.linkage<weak>, sym_name = ".__omp_offloading_10302_7285674_target_if_nowait_l13.region_id", unnamed_addr = 0 : i64, value = 0 : i8, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, constant, dso_local, global_type = !llvm.array<2 x i64>, linkage = #llvm.linkage<private>, sym_name = ".offload_sizes", unnamed_addr = 2 : i64, value = dense<4> : tensor<2xi64>, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, constant, dso_local, global_type = !llvm.array<2 x i64>, linkage = #llvm.linkage<private>, sym_name = ".offload_maptypes", unnamed_addr = 2 : i64, value = dense<800> : tensor<2xi64>, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, constant, dso_local, global_type = !llvm.array<2 x ptr>, linkage = #llvm.linkage<private>, sym_name = ".offload_mapnames", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %145 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_1}> : () -> !llvm.ptr
    %146 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_0}> : () -> !llvm.ptr
    %147 = "llvm.mlir.undef"() : () -> !llvm.array<2 x ptr>
    %148 = "llvm.insertvalue"(%147, %146) <{position = array<i64: 0>}> : (!llvm.array<2 x ptr>, !llvm.ptr) -> !llvm.array<2 x ptr>
    %149 = "llvm.insertvalue"(%148, %145) <{position = array<i64: 1>}> : (!llvm.array<2 x ptr>, !llvm.ptr) -> !llvm.array<2 x ptr>
    "llvm.return"(%149) : (!llvm.array<2 x ptr>) -> ()
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 1 : i64, constant, dso_local, global_type = !llvm.array<23 x i8>, linkage = #llvm.linkage<private>, sym_name = "mlir.llvm.nameless_global_2", unnamed_addr = 2 : i64, value = ";unknown;unknown;0;0;;\00", visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 8 : i64, constant, dso_local, global_type = !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, linkage = #llvm.linkage<private>, sym_name = "mlir.llvm.nameless_global_3", unnamed_addr = 2 : i64, visibility_ = 0 : i64}> ({
    %135 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_2}> : () -> !llvm.ptr
    %136 = "llvm.mlir.constant"() <{value = 22 : i32}> : () -> i32
    %137 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %138 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %139 = "llvm.mlir.undef"() : () -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %140 = "llvm.insertvalue"(%139, %137) <{position = array<i64: 0>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %141 = "llvm.insertvalue"(%140, %138) <{position = array<i64: 1>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %142 = "llvm.insertvalue"(%141, %137) <{position = array<i64: 2>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %143 = "llvm.insertvalue"(%142, %136) <{position = array<i64: 3>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %144 = "llvm.insertvalue"(%143, %135) <{position = array<i64: 4>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, !llvm.ptr) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    "llvm.return"(%144) : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>) -> ()
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 1 : i64, constant, dso_local, global_type = !llvm.array<52 x i8>, linkage = #llvm.linkage<internal>, section = ".llvm.rodata.offloading", sym_name = ".offloading.entry_name", unnamed_addr = 2 : i64, value = "__omp_offloading_10302_7285674_target_if_nowait_l13\00", visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 8 : i64, constant, global_type = !llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>, linkage = #llvm.linkage<weak>, section = "llvm_offload_entries", sym_name = ".offloading.entry.__omp_offloading_10302_7285674_target_if_nowait_l13", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %119 = "llvm.mlir.zero"() : () -> !llvm.ptr
    %120 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %121 = "llvm.mlir.addressof"() <{global_name = @".offloading.entry_name"}> : () -> !llvm.ptr
    %122 = "llvm.mlir.addressof"() <{global_name = @".__omp_offloading_10302_7285674_target_if_nowait_l13.region_id"}> : () -> !llvm.ptr
    %123 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %124 = "llvm.mlir.constant"() <{value = 1 : i16}> : () -> i16
    %125 = "llvm.mlir.undef"() : () -> !llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>
    %126 = "llvm.insertvalue"(%125, %120) <{position = array<i64: 0>}> : (!llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>, i64) -> !llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>
    %127 = "llvm.insertvalue"(%126, %124) <{position = array<i64: 1>}> : (!llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>, i16) -> !llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>
    %128 = "llvm.insertvalue"(%127, %124) <{position = array<i64: 2>}> : (!llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>, i16) -> !llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>
    %129 = "llvm.insertvalue"(%128, %123) <{position = array<i64: 3>}> : (!llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>, i32) -> !llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>
    %130 = "llvm.insertvalue"(%129, %122) <{position = array<i64: 4>}> : (!llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>, !llvm.ptr) -> !llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>
    %131 = "llvm.insertvalue"(%130, %121) <{position = array<i64: 5>}> : (!llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>, !llvm.ptr) -> !llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>
    %132 = "llvm.insertvalue"(%131, %120) <{position = array<i64: 6>}> : (!llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>, i64) -> !llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>
    %133 = "llvm.insertvalue"(%132, %120) <{position = array<i64: 7>}> : (!llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>, i64) -> !llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>
    %134 = "llvm.insertvalue"(%133, %119) <{position = array<i64: 8>}> : (!llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>, !llvm.ptr) -> !llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>
    "llvm.return"(%134) : (!llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>) -> ()
  }) : () -> ()
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<warning, "Debug Info Version", 3 : i32>]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "target_if_nowait", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: !llvm.ptr, %arg13: !llvm.ptr):
    %68 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %69 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %70 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %71 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_3}> : () -> !llvm.ptr
    %72 = "llvm.mlir.constant"() <{value = 40 : i64}> : () -> i64
    %73 = "llvm.mlir.constant"() <{value = 16 : i64}> : () -> i64
    %74 = "llvm.mlir.addressof"() <{global_name = @".omp_target_task_proxy_func.2"}> : () -> !llvm.ptr
    %75 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %76 = "llvm.mlir.zero"() : () -> !llvm.ptr
    %77 = "llvm.mlir.constant"() <{value = 72 : i64}> : () -> i64
    %78 = "llvm.mlir.addressof"() <{global_name = @".omp_target_task_proxy_func"}> : () -> !llvm.ptr
    %79 = "llvm.mlir.constant"() <{value = -1 : i64}> : () -> i64
    %80 = "llvm.alloca"(%68) <{alignment = 8 : i64, elem_type = !llvm.struct<(ptr, ptr)>}> : (i32) -> !llvm.ptr
    %81 = "llvm.alloca"(%68) <{alignment = 8 : i64, elem_type = !llvm.struct<(ptr, ptr)>}> : (i32) -> !llvm.ptr
    %82 = "llvm.alloca"(%68) <{alignment = 8 : i64, elem_type = !llvm.ptr}> : (i32) -> !llvm.ptr
    %83 = "llvm.alloca"(%68) <{alignment = 8 : i64, elem_type = !llvm.ptr}> : (i32) -> !llvm.ptr
    %84 = "llvm.alloca"(%68) <{alignment = 8 : i64, elem_type = !llvm.array<2 x ptr>}> : (i32) -> !llvm.ptr
    %85 = "llvm.alloca"(%68) <{alignment = 8 : i64, elem_type = !llvm.array<2 x ptr>}> : (i32) -> !llvm.ptr
    %86 = "llvm.alloca"(%68) <{alignment = 8 : i64, elem_type = !llvm.array<2 x ptr>}> : (i32) -> !llvm.ptr
    %87 = "llvm.alloca"(%69) <{alignment = 4 : i64, elem_type = i32}> : (i64) -> !llvm.ptr
    %88 = "llvm.load"(%87) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %89 = "llvm.icmp"(%88, %70) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    "llvm.cond_br"(%89)[^bb2, ^bb5] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb2:  // pred: ^bb1
    %90 = "llvm.load"(%arg12) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f32
    "llvm.store"(%90, %83) <{alignment = 4 : i64, ordering = 0 : i64}> : (f32, !llvm.ptr) -> ()
    %91 = "llvm.load"(%83) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.ptr
    %92 = "llvm.load"(%arg13) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f32
    "llvm.store"(%92, %82) <{alignment = 4 : i64, ordering = 0 : i64}> : (f32, !llvm.ptr) -> ()
    %93 = "llvm.load"(%82) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.ptr
    %94 = "llvm.getelementptr"(%84, %70, %70) <{elem_type = !llvm.array<2 x ptr>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    "llvm.store"(%91, %94) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %95 = "llvm.getelementptr"(%85, %70, %70) <{elem_type = !llvm.array<2 x ptr>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    "llvm.store"(%91, %95) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %96 = "llvm.getelementptr"(%86, %75, %75) <{elem_type = !llvm.array<2 x ptr>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i64) -> !llvm.ptr
    "llvm.store"(%76, %96) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %97 = "llvm.getelementptr"(%84, %70, %68) <{elem_type = !llvm.array<2 x ptr>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    "llvm.store"(%93, %97) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %98 = "llvm.getelementptr"(%85, %70, %68) <{elem_type = !llvm.array<2 x ptr>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    "llvm.store"(%93, %98) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %99 = "llvm.getelementptr"(%86, %75, %69) <{elem_type = !llvm.array<2 x ptr>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i64) -> !llvm.ptr
    "llvm.store"(%76, %99) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %100 = "llvm.getelementptr"(%84, %70, %70) <{elem_type = !llvm.array<2 x ptr>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    %101 = "llvm.getelementptr"(%85, %70, %70) <{elem_type = !llvm.array<2 x ptr>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    "llvm.br"()[^bb3] : () -> ()
  ^bb3:  // pred: ^bb2
    %102 = "llvm.getelementptr"(%81, %70) <{elem_type = !llvm.struct<(ptr, ptr)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%arg12, %102) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %103 = "llvm.getelementptr"(%81, %70) <{elem_type = !llvm.struct<(ptr, ptr)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%arg13, %103) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %104 = "llvm.call"(%71) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_global_thread_num, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> i32
    %105 = "llvm.call"(%71, %104, %70, %77, %73, %78, %79) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_omp_target_task_alloc, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 7, 0>}> : (!llvm.ptr, i32, i32, i64, i64, !llvm.ptr, i64) -> !llvm.ptr
    %106 = "llvm.getelementptr"(%105, %70) <{elem_type = !llvm.struct<"struct.task_with_privates", (struct<"struct.kmp_task_ompbuilder_t", (ptr, ptr, i32, ptr, ptr)>, struct<"struct.privates", (array<2 x ptr>, array<2 x ptr>)>)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %107 = "llvm.getelementptr"(%106, %70) <{elem_type = !llvm.struct<"struct.kmp_task_ompbuilder_t", (ptr, ptr, i32, ptr, ptr)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %108 = "llvm.load"(%107) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.ptr
    "llvm.intr.memcpy"(%108, %81, %73) <{arg_attrs = [{llvm.align = 1 : i64}, {llvm.align = 1 : i64}, {}], isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %109 = "llvm.getelementptr"(%105, %70) <{elem_type = !llvm.struct<"struct.task_with_privates", (struct<"struct.kmp_task_ompbuilder_t", (ptr, ptr, i32, ptr, ptr)>, struct<"struct.privates", (array<2 x ptr>, array<2 x ptr>)>)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %110 = "llvm.getelementptr"(%109, %70) <{elem_type = !llvm.struct<"struct.privates", (array<2 x ptr>, array<2 x ptr>)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.intr.memcpy"(%110, %100, %73) <{arg_attrs = [{llvm.align = 1 : i64}, {llvm.align = 1 : i64}, {}], isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %111 = "llvm.getelementptr"(%109, %70) <{elem_type = !llvm.struct<"struct.privates", (array<2 x ptr>, array<2 x ptr>)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.intr.memcpy"(%111, %101, %73) <{arg_attrs = [{llvm.align = 1 : i64}, {llvm.align = 1 : i64}, {}], isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %112 = "llvm.call"(%71, %104, %105) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_omp_task, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (!llvm.ptr, i32, !llvm.ptr) -> i32
    "llvm.br"()[^bb4] : () -> ()
  ^bb4:  // pred: ^bb3
    "llvm.br"()[^bb8] : () -> ()
  ^bb5:  // pred: ^bb1
    "llvm.br"()[^bb6] : () -> ()
  ^bb6:  // pred: ^bb5
    %113 = "llvm.getelementptr"(%80, %70) <{elem_type = !llvm.struct<(ptr, ptr)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%arg12, %113) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %114 = "llvm.getelementptr"(%80, %70) <{elem_type = !llvm.struct<(ptr, ptr)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%arg13, %114) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %115 = "llvm.call"(%71) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_global_thread_num, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> i32
    %116 = "llvm.call"(%71, %115, %70, %72, %73, %74) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_omp_task_alloc, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 6, 0>}> : (!llvm.ptr, i32, i32, i64, i64, !llvm.ptr) -> !llvm.ptr
    %117 = "llvm.getelementptr"(%116, %70) <{elem_type = !llvm.struct<"struct.kmp_task_ompbuilder_t", (ptr, ptr, i32, ptr, ptr)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %118 = "llvm.load"(%117) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.ptr
    "llvm.intr.memcpy"(%118, %80, %73) <{arg_attrs = [{llvm.align = 1 : i64}, {llvm.align = 1 : i64}, {}], isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    "llvm.call"(%71, %115, %116) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_omp_task_begin_if0, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (!llvm.ptr, i32, !llvm.ptr) -> ()
    "llvm.call"(%115, %116) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @".omp_target_task_proxy_func.2", fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, !llvm.ptr) -> ()
    "llvm.call"(%71, %115, %116) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_omp_task_complete_if0, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (!llvm.ptr, i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb7] : () -> ()
  ^bb7:  // pred: ^bb6
    "llvm.br"()[^bb8] : () -> ()
  ^bb8:  // 2 preds: ^bb4, ^bb7
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<void (i32, ptr)>, linkage = #llvm.linkage<internal>, sym_name = "target_if_nowait..omp_par.1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: i32, %arg11: !llvm.ptr):
    %62 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %63 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %64 = "llvm.getelementptr"(%arg11, %62) <{elem_type = !llvm.struct<(ptr, ptr)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %65 = "llvm.load"(%64) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.ptr
    %66 = "llvm.getelementptr"(%arg11, %62) <{elem_type = !llvm.struct<(ptr, ptr)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %67 = "llvm.load"(%66) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.ptr
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"(%65, %67) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__omp_offloading_10302_7285674_target_if_nowait_l13, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (!llvm.ptr, !llvm.ptr) -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // pred: ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<void (i32, ptr, ptr, ptr)>, linkage = #llvm.linkage<internal>, sym_name = "target_if_nowait..omp_par", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: i32, %arg7: !llvm.ptr, %arg8: !llvm.ptr, %arg9: !llvm.ptr):
    %17 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %18 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %19 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %20 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %21 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %22 = "llvm.mlir.addressof"() <{global_name = @".offload_sizes"}> : () -> !llvm.ptr
    %23 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %24 = "llvm.mlir.addressof"() <{global_name = @".offload_maptypes"}> : () -> !llvm.ptr
    %25 = "llvm.mlir.constant"() <{value = 6 : i32}> : () -> i32
    %26 = "llvm.mlir.addressof"() <{global_name = @".offload_mapnames"}> : () -> !llvm.ptr
    %27 = "llvm.mlir.constant"() <{value = 7 : i32}> : () -> i32
    %28 = "llvm.mlir.zero"() : () -> !llvm.ptr
    %29 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %30 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %31 = "llvm.mlir.constant"() <{value = 9 : i32}> : () -> i32
    %32 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %33 = "llvm.mlir.constant"() <{value = 10 : i32}> : () -> i32
    %34 = "llvm.mlir.constant"() <{value = dense<[-1, 0, 0]> : tensor<3xi32>}> : () -> !llvm.array<3 x i32>
    %35 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %36 = "llvm.mlir.constant"() <{value = dense<0> : tensor<3xi32>}> : () -> !llvm.array<3 x i32>
    %37 = "llvm.mlir.constant"() <{value = 12 : i32}> : () -> i32
    %38 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_3}> : () -> !llvm.ptr
    %39 = "llvm.mlir.constant"() <{value = -1 : i64}> : () -> i64
    %40 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %41 = "llvm.mlir.addressof"() <{global_name = @".__omp_offloading_10302_7285674_target_if_nowait_l13.region_id"}> : () -> !llvm.ptr
    %42 = "llvm.getelementptr"(%arg9, %17) <{elem_type = !llvm.struct<(ptr, ptr)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %43 = "llvm.load"(%42) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.ptr
    %44 = "llvm.getelementptr"(%arg9, %17) <{elem_type = !llvm.struct<(ptr, ptr)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %45 = "llvm.load"(%44) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.ptr
    %46 = "llvm.alloca"(%18) <{alignment = 8 : i64, elem_type = !llvm.struct<"struct.__tgt_kernel_arguments", (i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, array<3 x i32>, array<3 x i32>, i32)>}> : (i32) -> !llvm.ptr
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    %47 = "llvm.getelementptr"(%46, %17) <{elem_type = !llvm.struct<"struct.__tgt_kernel_arguments", (i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, array<3 x i32>, array<3 x i32>, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%19, %47) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %48 = "llvm.getelementptr"(%46, %17) <{elem_type = !llvm.struct<"struct.__tgt_kernel_arguments", (i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, array<3 x i32>, array<3 x i32>, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%20, %48) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %49 = "llvm.getelementptr"(%46, %17) <{elem_type = !llvm.struct<"struct.__tgt_kernel_arguments", (i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, array<3 x i32>, array<3 x i32>, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 2>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%arg7, %49) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %50 = "llvm.getelementptr"(%46, %17) <{elem_type = !llvm.struct<"struct.__tgt_kernel_arguments", (i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, array<3 x i32>, array<3 x i32>, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 3>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%arg8, %50) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %51 = "llvm.getelementptr"(%46, %17) <{elem_type = !llvm.struct<"struct.__tgt_kernel_arguments", (i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, array<3 x i32>, array<3 x i32>, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 4>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%22, %51) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %52 = "llvm.getelementptr"(%46, %17) <{elem_type = !llvm.struct<"struct.__tgt_kernel_arguments", (i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, array<3 x i32>, array<3 x i32>, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 5>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%24, %52) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %53 = "llvm.getelementptr"(%46, %17) <{elem_type = !llvm.struct<"struct.__tgt_kernel_arguments", (i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, array<3 x i32>, array<3 x i32>, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 6>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%26, %53) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %54 = "llvm.getelementptr"(%46, %17) <{elem_type = !llvm.struct<"struct.__tgt_kernel_arguments", (i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, array<3 x i32>, array<3 x i32>, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 7>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%28, %54) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %55 = "llvm.getelementptr"(%46, %17) <{elem_type = !llvm.struct<"struct.__tgt_kernel_arguments", (i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, array<3 x i32>, array<3 x i32>, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 8>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%30, %55) <{alignment = 8 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %56 = "llvm.getelementptr"(%46, %17) <{elem_type = !llvm.struct<"struct.__tgt_kernel_arguments", (i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, array<3 x i32>, array<3 x i32>, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 9>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%32, %56) <{alignment = 8 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %57 = "llvm.getelementptr"(%46, %17) <{elem_type = !llvm.struct<"struct.__tgt_kernel_arguments", (i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, array<3 x i32>, array<3 x i32>, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 10>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%34, %57) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.array<3 x i32>, !llvm.ptr) -> ()
    %58 = "llvm.getelementptr"(%46, %17) <{elem_type = !llvm.struct<"struct.__tgt_kernel_arguments", (i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, array<3 x i32>, array<3 x i32>, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 11>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%36, %58) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.array<3 x i32>, !llvm.ptr) -> ()
    %59 = "llvm.getelementptr"(%46, %17) <{elem_type = !llvm.struct<"struct.__tgt_kernel_arguments", (i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, array<3 x i32>, array<3 x i32>, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 12>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%17, %59) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %60 = "llvm.call"(%38, %39, %40, %17, %41, %46) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__tgt_target_kernel, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 6, 0>}> : (!llvm.ptr, i64, i32, i32, !llvm.ptr, !llvm.ptr) -> i32
    %61 = "llvm.icmp"(%60, %17) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%61)[^bb3, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb2:  // 2 preds: ^bb1, ^bb3
    "llvm.br"()[^bb4] : () -> ()
  ^bb3:  // pred: ^bb1
    "llvm.call"(%43, %45) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__omp_offloading_10302_7285674_target_if_nowait_l13, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (!llvm.ptr, !llvm.ptr) -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb4:  // pred: ^bb2
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<void (ptr, ptr)>, linkage = #llvm.linkage<internal>, sym_name = "__omp_offloading_10302_7285674_target_if_nowait_l13", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: !llvm.ptr, %arg5: !llvm.ptr):
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // pred: ^bb1
    "llvm.br"()[^bb3] : () -> ()
  ^bb3:  // pred: ^bb2
    %16 = "llvm.load"(%arg5) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f32
    "llvm.store"(%16, %arg4) <{alignment = 4 : i64, ordering = 0 : i64}> : (f32, !llvm.ptr) -> ()
    "llvm.br"()[^bb4] : () -> ()
  ^bb4:  // pred: ^bb3
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i64, i32, i32, ptr, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "__tgt_target_kernel", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<void (i32, ptr)>, linkage = #llvm.linkage<internal>, sym_name = ".omp_target_task_proxy_func", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i32, %arg3: !llvm.ptr):
    %6 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %7 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %8 = "llvm.mlir.constant"() <{value = 16 : i64}> : () -> i64
    %9 = "llvm.getelementptr"(%arg3, %6) <{elem_type = !llvm.struct<"struct.task_with_privates", (struct<"struct.kmp_task_ompbuilder_t", (ptr, ptr, i32, ptr, ptr)>, struct<"struct.privates", (array<2 x ptr>, array<2 x ptr>)>)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %10 = "llvm.getelementptr"(%9, %6) <{elem_type = !llvm.struct<"struct.privates", (array<2 x ptr>, array<2 x ptr>)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %11 = "llvm.getelementptr"(%9, %6) <{elem_type = !llvm.struct<"struct.privates", (array<2 x ptr>, array<2 x ptr>)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %12 = "llvm.alloca"(%7) <{alignment = 8 : i64, elem_type = !llvm.struct<(ptr, ptr)>}> : (i32) -> !llvm.ptr
    %13 = "llvm.getelementptr"(%arg3, %6) <{elem_type = !llvm.struct<"struct.task_with_privates", (struct<"struct.kmp_task_ompbuilder_t", (ptr, ptr, i32, ptr, ptr)>, struct<"struct.privates", (array<2 x ptr>, array<2 x ptr>)>)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %14 = "llvm.getelementptr"(%13, %6) <{elem_type = !llvm.struct<"struct.kmp_task_ompbuilder_t", (ptr, ptr, i32, ptr, ptr)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %15 = "llvm.load"(%14) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.ptr
    "llvm.intr.memcpy"(%12, %15, %8) <{arg_attrs = [{llvm.align = 8 : i64}, {llvm.align = 1 : i64}, {}], isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    "llvm.call"(%arg2, %10, %11, %12) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @target_if_nowait..omp_par, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>}> : (i32, !llvm.ptr, !llvm.ptr, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<ptr (ptr, i32, i32, i64, i64, ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.noalias}], sym_name = "__kmpc_omp_target_task_alloc", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "__kmpc_global_thread_num", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "__kmpc_omp_task", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<void (i32, ptr)>, linkage = #llvm.linkage<internal>, sym_name = ".omp_target_task_proxy_func.2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i32, %arg1: !llvm.ptr):
    %0 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %2 = "llvm.mlir.constant"() <{value = 16 : i64}> : () -> i64
    %3 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = !llvm.struct<(ptr, ptr)>}> : (i32) -> !llvm.ptr
    %4 = "llvm.getelementptr"(%arg1, %1) <{elem_type = !llvm.struct<"struct.kmp_task_ompbuilder_t", (ptr, ptr, i32, ptr, ptr)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %5 = "llvm.load"(%4) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.ptr
    "llvm.intr.memcpy"(%3, %5, %2) <{arg_attrs = [{llvm.align = 8 : i64}, {llvm.align = 1 : i64}, {}], isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    "llvm.call"(%arg0, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @target_if_nowait..omp_par.1, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<ptr (ptr, i32, i32, i64, i64, ptr)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.noalias}], sym_name = "__kmpc_omp_task_alloc", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i32, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "__kmpc_omp_task_begin_if0", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i32, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "__kmpc_omp_task_complete_if0", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

