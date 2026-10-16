"builtin.module"() ({
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 1 : i64, constant, dso_local, global_type = !llvm.array<92 x i8>, linkage = #llvm.linkage<private>, sym_name = "mlir.llvm.nameless_global_0", unnamed_addr = 2 : i64, value = ";tests/fixtures/lit/target/omptarget-nested-ptr-record-type-mapping-host.in;unknown;21;11;;\00", visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 1 : i64, constant, dso_local, global_type = !llvm.array<92 x i8>, linkage = #llvm.linkage<private>, sym_name = "mlir.llvm.nameless_global_1", unnamed_addr = 2 : i64, value = ";tests/fixtures/lit/target/omptarget-nested-ptr-record-type-mapping-host.in;unknown;20;10;;\00", visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 1 : i64, constant, dso_local, global_type = !llvm.array<92 x i8>, linkage = #llvm.linkage<private>, sym_name = "mlir.llvm.nameless_global_2", unnamed_addr = 2 : i64, value = ";tests/fixtures/lit/target/omptarget-nested-ptr-record-type-mapping-host.in;unknown;22;11;;\00", visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, constant, global_type = i8, linkage = #llvm.linkage<weak>, sym_name = ".__omp_offloading_10302_72856d6_omp_nested_derived_type_alloca_map_l23.region_id", unnamed_addr = 0 : i64, value = 0 : i8, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, constant, dso_local, global_type = !llvm.array<4 x i64>, linkage = #llvm.linkage<private>, sym_name = ".offload_sizes", unnamed_addr = 2 : i64, value = dense<[0, 48, 8, 0]> : tensor<4xi64>, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, constant, dso_local, global_type = !llvm.array<4 x i64>, linkage = #llvm.linkage<private>, sym_name = ".offload_maptypes", unnamed_addr = 2 : i64, value = dense<[32, 281474976710659, 281474976710659, 281474976710675]> : tensor<4xi64>, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, constant, dso_local, global_type = !llvm.array<4 x ptr>, linkage = #llvm.linkage<private>, sym_name = ".offload_mapnames", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %106 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_1}> : () -> !llvm.ptr
    %107 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_0}> : () -> !llvm.ptr
    %108 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_2}> : () -> !llvm.ptr
    %109 = "llvm.mlir.undef"() : () -> !llvm.array<4 x ptr>
    %110 = "llvm.insertvalue"(%109, %108) <{position = array<i64: 0>}> : (!llvm.array<4 x ptr>, !llvm.ptr) -> !llvm.array<4 x ptr>
    %111 = "llvm.insertvalue"(%110, %107) <{position = array<i64: 1>}> : (!llvm.array<4 x ptr>, !llvm.ptr) -> !llvm.array<4 x ptr>
    %112 = "llvm.insertvalue"(%111, %106) <{position = array<i64: 2>}> : (!llvm.array<4 x ptr>, !llvm.ptr) -> !llvm.array<4 x ptr>
    %113 = "llvm.insertvalue"(%112, %106) <{position = array<i64: 3>}> : (!llvm.array<4 x ptr>, !llvm.ptr) -> !llvm.array<4 x ptr>
    "llvm.return"(%113) : (!llvm.array<4 x ptr>) -> ()
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 1 : i64, constant, dso_local, global_type = !llvm.array<23 x i8>, linkage = #llvm.linkage<private>, sym_name = "mlir.llvm.nameless_global_3", unnamed_addr = 2 : i64, value = ";unknown;unknown;0;0;;\00", visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 8 : i64, constant, dso_local, global_type = !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, linkage = #llvm.linkage<private>, sym_name = "mlir.llvm.nameless_global_4", unnamed_addr = 2 : i64, visibility_ = 0 : i64}> ({
    %96 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_3}> : () -> !llvm.ptr
    %97 = "llvm.mlir.constant"() <{value = 22 : i32}> : () -> i32
    %98 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %99 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %100 = "llvm.mlir.undef"() : () -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %101 = "llvm.insertvalue"(%100, %98) <{position = array<i64: 0>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %102 = "llvm.insertvalue"(%101, %99) <{position = array<i64: 1>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %103 = "llvm.insertvalue"(%102, %98) <{position = array<i64: 2>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %104 = "llvm.insertvalue"(%103, %97) <{position = array<i64: 3>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %105 = "llvm.insertvalue"(%104, %96) <{position = array<i64: 4>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, !llvm.ptr) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    "llvm.return"(%105) : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>) -> ()
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 1 : i64, constant, dso_local, global_type = !llvm.array<70 x i8>, linkage = #llvm.linkage<internal>, section = ".llvm.rodata.offloading", sym_name = ".offloading.entry_name", unnamed_addr = 2 : i64, value = "__omp_offloading_10302_72856d6_omp_nested_derived_type_alloca_map_l23\00", visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 8 : i64, constant, global_type = !llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>, linkage = #llvm.linkage<weak>, section = "llvm_offload_entries", sym_name = ".offloading.entry.__omp_offloading_10302_72856d6_omp_nested_derived_type_alloca_map_l23", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %80 = "llvm.mlir.zero"() : () -> !llvm.ptr
    %81 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %82 = "llvm.mlir.addressof"() <{global_name = @".offloading.entry_name"}> : () -> !llvm.ptr
    %83 = "llvm.mlir.addressof"() <{global_name = @".__omp_offloading_10302_72856d6_omp_nested_derived_type_alloca_map_l23.region_id"}> : () -> !llvm.ptr
    %84 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %85 = "llvm.mlir.constant"() <{value = 1 : i16}> : () -> i16
    %86 = "llvm.mlir.undef"() : () -> !llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>
    %87 = "llvm.insertvalue"(%86, %81) <{position = array<i64: 0>}> : (!llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>, i64) -> !llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>
    %88 = "llvm.insertvalue"(%87, %85) <{position = array<i64: 1>}> : (!llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>, i16) -> !llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>
    %89 = "llvm.insertvalue"(%88, %85) <{position = array<i64: 2>}> : (!llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>, i16) -> !llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>
    %90 = "llvm.insertvalue"(%89, %84) <{position = array<i64: 3>}> : (!llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>, i32) -> !llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>
    %91 = "llvm.insertvalue"(%90, %83) <{position = array<i64: 4>}> : (!llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>, !llvm.ptr) -> !llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>
    %92 = "llvm.insertvalue"(%91, %82) <{position = array<i64: 5>}> : (!llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>, !llvm.ptr) -> !llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>
    %93 = "llvm.insertvalue"(%92, %81) <{position = array<i64: 6>}> : (!llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>, i64) -> !llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>
    %94 = "llvm.insertvalue"(%93, %81) <{position = array<i64: 7>}> : (!llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>, i64) -> !llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>
    %95 = "llvm.insertvalue"(%94, %80) <{position = array<i64: 8>}> : (!llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>, !llvm.ptr) -> !llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>
    "llvm.return"(%95) : (!llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>) -> ()
  }) : () -> ()
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<warning, "Debug Info Version", 3 : i32>]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, sym_name = "omp_nested_derived_type_alloca_map", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: !llvm.ptr):
    %0 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %2 = "llvm.mlir.constant"() <{value = 6 : i32}> : () -> i32
    %3 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %4 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %5 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %6 = "llvm.mlir.zero"() : () -> !llvm.ptr
    %7 = "llvm.getelementptr"(%6, %0) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %8 = "llvm.ptrtoint"(%7) : (!llvm.ptr) -> i64
    %9 = "llvm.mlir.constant"() <{value = 20 : i64}> : () -> i64
    %10 = "llvm.mlir.addressof"() <{global_name = @".offload_sizes"}> : () -> !llvm.ptr
    %11 = "llvm.mlir.constant"() <{value = 32 : i64}> : () -> i64
    %12 = "llvm.mlir.constant"() <{value = 2 : i64}> : () -> i64
    %13 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %14 = "llvm.mlir.constant"() <{value = 3 : i64}> : () -> i64
    %15 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %16 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %17 = "llvm.mlir.addressof"() <{global_name = @".offload_maptypes"}> : () -> !llvm.ptr
    %18 = "llvm.mlir.addressof"() <{global_name = @".offload_mapnames"}> : () -> !llvm.ptr
    %19 = "llvm.mlir.constant"() <{value = 7 : i32}> : () -> i32
    %20 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %21 = "llvm.mlir.constant"() <{value = 9 : i32}> : () -> i32
    %22 = "llvm.mlir.constant"() <{value = 10 : i32}> : () -> i32
    %23 = "llvm.mlir.constant"() <{value = dense<[-1, 0, 0]> : tensor<3xi32>}> : () -> !llvm.array<3 x i32>
    %24 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %25 = "llvm.mlir.constant"() <{value = dense<0> : tensor<3xi32>}> : () -> !llvm.array<3 x i32>
    %26 = "llvm.mlir.constant"() <{value = 12 : i32}> : () -> i32
    %27 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_4}> : () -> !llvm.ptr
    %28 = "llvm.mlir.constant"() <{value = -1 : i64}> : () -> i64
    %29 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %30 = "llvm.mlir.addressof"() <{global_name = @".__omp_offloading_10302_72856d6_omp_nested_derived_type_alloca_map_l23.region_id"}> : () -> !llvm.ptr
    %31 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = !llvm.array<4 x ptr>}> : (i32) -> !llvm.ptr
    %32 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = !llvm.array<4 x ptr>}> : (i32) -> !llvm.ptr
    %33 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = !llvm.array<4 x ptr>}> : (i32) -> !llvm.ptr
    %34 = "llvm.alloca"(%0) <{alignment = 4 : i64, elem_type = !llvm.array<4 x i64>}> : (i32) -> !llvm.ptr
    %35 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = !llvm.struct<"struct.__tgt_kernel_arguments", (i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, array<3 x i32>, array<3 x i32>, i32)>}> : (i32) -> !llvm.ptr
    %36 = "llvm.getelementptr"(%arg1, %1) <{elem_type = !llvm.struct<(f32, struct<(ptr, i64, i32, i8, i8, i8, i8)>, array<10 x i32>, f32, struct<(ptr, i64, i32, i8, i8, i8, i8, array<1 x array<3 x i64>>)>, i32, struct<(f32, array<10 x i32>, struct<(ptr, i64, i32, i8, i8, i8, i8, array<1 x array<3 x i64>>)>, i32)>)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 6>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %37 = "llvm.getelementptr"(%36, %1) <{elem_type = !llvm.struct<(f32, array<10 x i32>, struct<(ptr, i64, i32, i8, i8, i8, i8, array<1 x array<3 x i64>>)>, i32)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 2>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %38 = "llvm.getelementptr"(%37, %1) <{elem_type = !llvm.struct<(ptr, i64, i32, i8, i8, i8, i8, array<1 x array<3 x i64>>)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    %39 = "llvm.load"(%38) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.ptr
    %40 = "llvm.getelementptr"(%39, %4) <{elem_type = i32, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %41 = "llvm.getelementptr"(%37, %5) <{elem_type = !llvm.struct<(ptr, i64, i32, i8, i8, i8, i8, array<1 x array<3 x i64>>)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %42 = "llvm.ptrtoint"(%41) : (!llvm.ptr) -> i64
    %43 = "llvm.ptrtoint"(%37) : (!llvm.ptr) -> i64
    %44 = "llvm.sub"(%42, %43) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %45 = "llvm.sdiv"(%44, %8) <{isExact}> : (i64, i64) -> i64
    %46 = "llvm.icmp"(%40, %6) <{predicate = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> i1
    %47 = "llvm.select"(%46, %4, %9) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.intr.memcpy"(%34, %10, %11) <{arg_attrs = [{llvm.align = 8 : i64}, {llvm.align = 4 : i64}, {}], isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %48 = "llvm.getelementptr"(%31, %1, %1) <{elem_type = !llvm.array<4 x ptr>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    "llvm.store"(%arg1, %48) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %49 = "llvm.getelementptr"(%32, %1, %1) <{elem_type = !llvm.array<4 x ptr>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    "llvm.store"(%37, %49) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %50 = "llvm.getelementptr"(%34, %1, %1) <{elem_type = !llvm.array<4 x i64>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    "llvm.store"(%45, %50) <{alignment = 8 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %51 = "llvm.getelementptr"(%33, %4, %4) <{elem_type = !llvm.array<4 x ptr>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i64) -> !llvm.ptr
    "llvm.store"(%6, %51) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %52 = "llvm.getelementptr"(%31, %1, %0) <{elem_type = !llvm.array<4 x ptr>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    "llvm.store"(%arg1, %52) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %53 = "llvm.getelementptr"(%32, %1, %0) <{elem_type = !llvm.array<4 x ptr>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    "llvm.store"(%37, %53) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %54 = "llvm.getelementptr"(%33, %4, %5) <{elem_type = !llvm.array<4 x ptr>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i64) -> !llvm.ptr
    "llvm.store"(%6, %54) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %55 = "llvm.getelementptr"(%31, %1, %3) <{elem_type = !llvm.array<4 x ptr>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    "llvm.store"(%arg1, %55) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %56 = "llvm.getelementptr"(%32, %1, %3) <{elem_type = !llvm.array<4 x ptr>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    "llvm.store"(%38, %56) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %57 = "llvm.getelementptr"(%33, %4, %12) <{elem_type = !llvm.array<4 x ptr>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i64) -> !llvm.ptr
    "llvm.store"(%6, %57) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %58 = "llvm.getelementptr"(%31, %1, %13) <{elem_type = !llvm.array<4 x ptr>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    "llvm.store"(%38, %58) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %59 = "llvm.getelementptr"(%32, %1, %13) <{elem_type = !llvm.array<4 x ptr>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    "llvm.store"(%40, %59) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %60 = "llvm.getelementptr"(%34, %1, %13) <{elem_type = !llvm.array<4 x i64>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    "llvm.store"(%47, %60) <{alignment = 8 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %61 = "llvm.getelementptr"(%33, %4, %14) <{elem_type = !llvm.array<4 x ptr>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i64) -> !llvm.ptr
    "llvm.store"(%6, %61) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %62 = "llvm.getelementptr"(%31, %1, %1) <{elem_type = !llvm.array<4 x ptr>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    %63 = "llvm.getelementptr"(%32, %1, %1) <{elem_type = !llvm.array<4 x ptr>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    %64 = "llvm.getelementptr"(%34, %1, %1) <{elem_type = !llvm.array<4 x i64>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    %65 = "llvm.getelementptr"(%35, %1) <{elem_type = !llvm.struct<"struct.__tgt_kernel_arguments", (i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, array<3 x i32>, array<3 x i32>, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%13, %65) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %66 = "llvm.getelementptr"(%35, %1) <{elem_type = !llvm.struct<"struct.__tgt_kernel_arguments", (i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, array<3 x i32>, array<3 x i32>, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%15, %66) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %67 = "llvm.getelementptr"(%35, %1) <{elem_type = !llvm.struct<"struct.__tgt_kernel_arguments", (i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, array<3 x i32>, array<3 x i32>, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 2>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%62, %67) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %68 = "llvm.getelementptr"(%35, %1) <{elem_type = !llvm.struct<"struct.__tgt_kernel_arguments", (i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, array<3 x i32>, array<3 x i32>, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 3>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%63, %68) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %69 = "llvm.getelementptr"(%35, %1) <{elem_type = !llvm.struct<"struct.__tgt_kernel_arguments", (i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, array<3 x i32>, array<3 x i32>, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 4>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%64, %69) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %70 = "llvm.getelementptr"(%35, %1) <{elem_type = !llvm.struct<"struct.__tgt_kernel_arguments", (i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, array<3 x i32>, array<3 x i32>, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 5>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%17, %70) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %71 = "llvm.getelementptr"(%35, %1) <{elem_type = !llvm.struct<"struct.__tgt_kernel_arguments", (i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, array<3 x i32>, array<3 x i32>, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 6>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%18, %71) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %72 = "llvm.getelementptr"(%35, %1) <{elem_type = !llvm.struct<"struct.__tgt_kernel_arguments", (i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, array<3 x i32>, array<3 x i32>, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 7>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%6, %72) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %73 = "llvm.getelementptr"(%35, %1) <{elem_type = !llvm.struct<"struct.__tgt_kernel_arguments", (i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, array<3 x i32>, array<3 x i32>, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 8>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%4, %73) <{alignment = 8 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %74 = "llvm.getelementptr"(%35, %1) <{elem_type = !llvm.struct<"struct.__tgt_kernel_arguments", (i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, array<3 x i32>, array<3 x i32>, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 9>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%4, %74) <{alignment = 8 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %75 = "llvm.getelementptr"(%35, %1) <{elem_type = !llvm.struct<"struct.__tgt_kernel_arguments", (i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, array<3 x i32>, array<3 x i32>, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 10>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%23, %75) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.array<3 x i32>, !llvm.ptr) -> ()
    %76 = "llvm.getelementptr"(%35, %1) <{elem_type = !llvm.struct<"struct.__tgt_kernel_arguments", (i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, array<3 x i32>, array<3 x i32>, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 11>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%25, %76) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.array<3 x i32>, !llvm.ptr) -> ()
    %77 = "llvm.getelementptr"(%35, %1) <{elem_type = !llvm.struct<"struct.__tgt_kernel_arguments", (i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, array<3 x i32>, array<3 x i32>, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 12>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%1, %77) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %78 = "llvm.call"(%27, %28, %29, %1, %30, %35) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__tgt_target_kernel, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 6, 0>}> : (!llvm.ptr, i64, i32, i32, !llvm.ptr, !llvm.ptr) -> i32
    %79 = "llvm.icmp"(%78, %1) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%79)[^bb2, ^bb3] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb2:  // pred: ^bb1
    "llvm.call"(%arg1) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__omp_offloading_10302_72856d6_omp_nested_derived_type_alloca_map_l23, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> ()
    "llvm.br"()[^bb3] : () -> ()
  ^bb3:  // 2 preds: ^bb1, ^bb2
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<internal>, sym_name = "__omp_offloading_10302_72856d6_omp_nested_derived_type_alloca_map_l23", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: !llvm.ptr):
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
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i64, i32, i32, ptr, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "__tgt_target_kernel", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

