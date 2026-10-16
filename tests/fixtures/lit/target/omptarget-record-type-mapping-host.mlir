"builtin.module"() ({
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 1 : i64, constant, dso_local, global_type = !llvm.array<81 x i8>, linkage = #llvm.linkage<private>, sym_name = "mlir.llvm.nameless_global_0", unnamed_addr = 2 : i64, value = ";tests/fixtures/lit/target/omptarget-record-type-mapping-host.in;unknown;18;10;;\00", visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 1 : i64, constant, dso_local, global_type = !llvm.array<81 x i8>, linkage = #llvm.linkage<private>, sym_name = "mlir.llvm.nameless_global_1", unnamed_addr = 2 : i64, value = ";tests/fixtures/lit/target/omptarget-record-type-mapping-host.in;unknown;22;11;;\00", visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 1 : i64, constant, dso_local, global_type = !llvm.array<81 x i8>, linkage = #llvm.linkage<private>, sym_name = "mlir.llvm.nameless_global_2", unnamed_addr = 2 : i64, value = ";tests/fixtures/lit/target/omptarget-record-type-mapping-host.in;unknown;23;11;;\00", visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, constant, global_type = i8, linkage = #llvm.linkage<weak>, sym_name = ".__omp_offloading_10302_728572c__QQmain_l24.region_id", unnamed_addr = 0 : i64, value = 0 : i8, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, constant, dso_local, global_type = !llvm.array<3 x i64>, linkage = #llvm.linkage<private>, sym_name = ".offload_sizes", unnamed_addr = 2 : i64, value = dense<[0, 4, 16]> : tensor<3xi64>, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, constant, dso_local, global_type = !llvm.array<3 x i64>, linkage = #llvm.linkage<private>, sym_name = ".offload_maptypes", unnamed_addr = 2 : i64, value = dense<[32, 281474976710659, 281474976710659]> : tensor<3xi64>, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, constant, dso_local, global_type = !llvm.array<3 x ptr>, linkage = #llvm.linkage<private>, sym_name = ".offload_mapnames", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %97 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_1}> : () -> !llvm.ptr
    %98 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_0}> : () -> !llvm.ptr
    %99 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_2}> : () -> !llvm.ptr
    %100 = "llvm.mlir.undef"() : () -> !llvm.array<3 x ptr>
    %101 = "llvm.insertvalue"(%100, %99) <{position = array<i64: 0>}> : (!llvm.array<3 x ptr>, !llvm.ptr) -> !llvm.array<3 x ptr>
    %102 = "llvm.insertvalue"(%101, %98) <{position = array<i64: 1>}> : (!llvm.array<3 x ptr>, !llvm.ptr) -> !llvm.array<3 x ptr>
    %103 = "llvm.insertvalue"(%102, %97) <{position = array<i64: 2>}> : (!llvm.array<3 x ptr>, !llvm.ptr) -> !llvm.array<3 x ptr>
    "llvm.return"(%103) : (!llvm.array<3 x ptr>) -> ()
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 1 : i64, constant, dso_local, global_type = !llvm.array<23 x i8>, linkage = #llvm.linkage<private>, sym_name = "mlir.llvm.nameless_global_3", unnamed_addr = 2 : i64, value = ";unknown;unknown;0;0;;\00", visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 8 : i64, constant, dso_local, global_type = !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, linkage = #llvm.linkage<private>, sym_name = "mlir.llvm.nameless_global_4", unnamed_addr = 2 : i64, visibility_ = 0 : i64}> ({
    %87 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_3}> : () -> !llvm.ptr
    %88 = "llvm.mlir.constant"() <{value = 22 : i32}> : () -> i32
    %89 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %90 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %91 = "llvm.mlir.undef"() : () -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %92 = "llvm.insertvalue"(%91, %89) <{position = array<i64: 0>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %93 = "llvm.insertvalue"(%92, %90) <{position = array<i64: 1>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %94 = "llvm.insertvalue"(%93, %89) <{position = array<i64: 2>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %95 = "llvm.insertvalue"(%94, %88) <{position = array<i64: 3>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %96 = "llvm.insertvalue"(%95, %87) <{position = array<i64: 4>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, !llvm.ptr) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    "llvm.return"(%96) : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>) -> ()
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 1 : i64, constant, dso_local, global_type = !llvm.array<43 x i8>, linkage = #llvm.linkage<internal>, section = ".llvm.rodata.offloading", sym_name = ".offloading.entry_name", unnamed_addr = 2 : i64, value = "__omp_offloading_10302_728572c__QQmain_l24\00", visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 8 : i64, constant, global_type = !llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>, linkage = #llvm.linkage<weak>, section = "llvm_offload_entries", sym_name = ".offloading.entry.__omp_offloading_10302_728572c__QQmain_l24", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %71 = "llvm.mlir.zero"() : () -> !llvm.ptr
    %72 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %73 = "llvm.mlir.addressof"() <{global_name = @".offloading.entry_name"}> : () -> !llvm.ptr
    %74 = "llvm.mlir.addressof"() <{global_name = @".__omp_offloading_10302_728572c__QQmain_l24.region_id"}> : () -> !llvm.ptr
    %75 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %76 = "llvm.mlir.constant"() <{value = 1 : i16}> : () -> i16
    %77 = "llvm.mlir.undef"() : () -> !llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>
    %78 = "llvm.insertvalue"(%77, %72) <{position = array<i64: 0>}> : (!llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>, i64) -> !llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>
    %79 = "llvm.insertvalue"(%78, %76) <{position = array<i64: 1>}> : (!llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>, i16) -> !llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>
    %80 = "llvm.insertvalue"(%79, %76) <{position = array<i64: 2>}> : (!llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>, i16) -> !llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>
    %81 = "llvm.insertvalue"(%80, %75) <{position = array<i64: 3>}> : (!llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>, i32) -> !llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>
    %82 = "llvm.insertvalue"(%81, %74) <{position = array<i64: 4>}> : (!llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>, !llvm.ptr) -> !llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>
    %83 = "llvm.insertvalue"(%82, %73) <{position = array<i64: 5>}> : (!llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>, !llvm.ptr) -> !llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>
    %84 = "llvm.insertvalue"(%83, %72) <{position = array<i64: 6>}> : (!llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>, i64) -> !llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>
    %85 = "llvm.insertvalue"(%84, %72) <{position = array<i64: 7>}> : (!llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>, i64) -> !llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>
    %86 = "llvm.insertvalue"(%85, %71) <{position = array<i64: 8>}> : (!llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>, !llvm.ptr) -> !llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>
    "llvm.return"(%86) : (!llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>) -> ()
  }) : () -> ()
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<warning, "Debug Info Version", 3 : i32>]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, sym_name = "_QQmain", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %0 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %2 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %3 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %4 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %5 = "llvm.mlir.zero"() : () -> !llvm.ptr
    %6 = "llvm.getelementptr"(%5, %0) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %7 = "llvm.ptrtoint"(%6) : (!llvm.ptr) -> i64
    %8 = "llvm.mlir.addressof"() <{global_name = @".offload_sizes"}> : () -> !llvm.ptr
    %9 = "llvm.mlir.constant"() <{value = 24 : i64}> : () -> i64
    %10 = "llvm.mlir.constant"() <{value = 2 : i64}> : () -> i64
    %11 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %12 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %13 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %14 = "llvm.mlir.addressof"() <{global_name = @".offload_maptypes"}> : () -> !llvm.ptr
    %15 = "llvm.mlir.constant"() <{value = 6 : i32}> : () -> i32
    %16 = "llvm.mlir.addressof"() <{global_name = @".offload_mapnames"}> : () -> !llvm.ptr
    %17 = "llvm.mlir.constant"() <{value = 7 : i32}> : () -> i32
    %18 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %19 = "llvm.mlir.constant"() <{value = 9 : i32}> : () -> i32
    %20 = "llvm.mlir.constant"() <{value = 10 : i32}> : () -> i32
    %21 = "llvm.mlir.constant"() <{value = dense<[-1, 0, 0]> : tensor<3xi32>}> : () -> !llvm.array<3 x i32>
    %22 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %23 = "llvm.mlir.constant"() <{value = dense<0> : tensor<3xi32>}> : () -> !llvm.array<3 x i32>
    %24 = "llvm.mlir.constant"() <{value = 12 : i32}> : () -> i32
    %25 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_4}> : () -> !llvm.ptr
    %26 = "llvm.mlir.constant"() <{value = -1 : i64}> : () -> i64
    %27 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %28 = "llvm.mlir.addressof"() <{global_name = @".__omp_offloading_10302_728572c__QQmain_l24.region_id"}> : () -> !llvm.ptr
    %29 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = !llvm.array<3 x ptr>}> : (i32) -> !llvm.ptr
    %30 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = !llvm.array<3 x ptr>}> : (i32) -> !llvm.ptr
    %31 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = !llvm.array<3 x ptr>}> : (i32) -> !llvm.ptr
    %32 = "llvm.alloca"(%0) <{alignment = 4 : i64, elem_type = !llvm.array<3 x i64>}> : (i32) -> !llvm.ptr
    %33 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = !llvm.struct<"struct.__tgt_kernel_arguments", (i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, array<3 x i32>, array<3 x i32>, i32)>}> : (i32) -> !llvm.ptr
    %34 = "llvm.alloca"(%1) <{alignment = 8 : i64, elem_type = !llvm.struct<(f32, array<10 x i32>, i32)>}> : (i64) -> !llvm.ptr
    %35 = "llvm.getelementptr"(%34, %2) <{elem_type = !llvm.struct<(f32, array<10 x i32>, i32)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 2>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %36 = "llvm.getelementptr"(%34, %2) <{elem_type = !llvm.struct<(f32, array<10 x i32>, i32)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    %37 = "llvm.getelementptr"(%36, %4, %1) <{elem_type = !llvm.array<10 x i32>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i64) -> !llvm.ptr
    %38 = "llvm.getelementptr"(%35, %1) <{elem_type = i32, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %39 = "llvm.ptrtoint"(%38) : (!llvm.ptr) -> i64
    %40 = "llvm.ptrtoint"(%37) : (!llvm.ptr) -> i64
    %41 = "llvm.sub"(%39, %40) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %42 = "llvm.sdiv"(%41, %7) <{isExact}> : (i64, i64) -> i64
    "llvm.intr.memcpy"(%32, %8, %9) <{arg_attrs = [{llvm.align = 8 : i64}, {llvm.align = 4 : i64}, {}], isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %43 = "llvm.getelementptr"(%29, %2, %2) <{elem_type = !llvm.array<3 x ptr>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    "llvm.store"(%34, %43) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %44 = "llvm.getelementptr"(%30, %2, %2) <{elem_type = !llvm.array<3 x ptr>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    "llvm.store"(%37, %44) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %45 = "llvm.getelementptr"(%32, %2, %2) <{elem_type = !llvm.array<3 x i64>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    "llvm.store"(%42, %45) <{alignment = 8 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %46 = "llvm.getelementptr"(%31, %4, %4) <{elem_type = !llvm.array<3 x ptr>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i64) -> !llvm.ptr
    "llvm.store"(%5, %46) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %47 = "llvm.getelementptr"(%29, %2, %0) <{elem_type = !llvm.array<3 x ptr>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    "llvm.store"(%34, %47) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %48 = "llvm.getelementptr"(%30, %2, %0) <{elem_type = !llvm.array<3 x ptr>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    "llvm.store"(%35, %48) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %49 = "llvm.getelementptr"(%31, %4, %1) <{elem_type = !llvm.array<3 x ptr>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i64) -> !llvm.ptr
    "llvm.store"(%5, %49) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %50 = "llvm.getelementptr"(%29, %2, %3) <{elem_type = !llvm.array<3 x ptr>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    "llvm.store"(%34, %50) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %51 = "llvm.getelementptr"(%30, %2, %3) <{elem_type = !llvm.array<3 x ptr>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    "llvm.store"(%37, %51) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %52 = "llvm.getelementptr"(%31, %4, %10) <{elem_type = !llvm.array<3 x ptr>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i64) -> !llvm.ptr
    "llvm.store"(%5, %52) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %53 = "llvm.getelementptr"(%29, %2, %2) <{elem_type = !llvm.array<3 x ptr>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    %54 = "llvm.getelementptr"(%30, %2, %2) <{elem_type = !llvm.array<3 x ptr>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    %55 = "llvm.getelementptr"(%32, %2, %2) <{elem_type = !llvm.array<3 x i64>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    %56 = "llvm.getelementptr"(%33, %2) <{elem_type = !llvm.struct<"struct.__tgt_kernel_arguments", (i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, array<3 x i32>, array<3 x i32>, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%11, %56) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %57 = "llvm.getelementptr"(%33, %2) <{elem_type = !llvm.struct<"struct.__tgt_kernel_arguments", (i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, array<3 x i32>, array<3 x i32>, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%11, %57) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %58 = "llvm.getelementptr"(%33, %2) <{elem_type = !llvm.struct<"struct.__tgt_kernel_arguments", (i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, array<3 x i32>, array<3 x i32>, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 2>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%53, %58) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %59 = "llvm.getelementptr"(%33, %2) <{elem_type = !llvm.struct<"struct.__tgt_kernel_arguments", (i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, array<3 x i32>, array<3 x i32>, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 3>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%54, %59) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %60 = "llvm.getelementptr"(%33, %2) <{elem_type = !llvm.struct<"struct.__tgt_kernel_arguments", (i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, array<3 x i32>, array<3 x i32>, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 4>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%55, %60) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %61 = "llvm.getelementptr"(%33, %2) <{elem_type = !llvm.struct<"struct.__tgt_kernel_arguments", (i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, array<3 x i32>, array<3 x i32>, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 5>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%14, %61) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %62 = "llvm.getelementptr"(%33, %2) <{elem_type = !llvm.struct<"struct.__tgt_kernel_arguments", (i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, array<3 x i32>, array<3 x i32>, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 6>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%16, %62) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %63 = "llvm.getelementptr"(%33, %2) <{elem_type = !llvm.struct<"struct.__tgt_kernel_arguments", (i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, array<3 x i32>, array<3 x i32>, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 7>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%5, %63) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %64 = "llvm.getelementptr"(%33, %2) <{elem_type = !llvm.struct<"struct.__tgt_kernel_arguments", (i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, array<3 x i32>, array<3 x i32>, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 8>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%4, %64) <{alignment = 8 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %65 = "llvm.getelementptr"(%33, %2) <{elem_type = !llvm.struct<"struct.__tgt_kernel_arguments", (i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, array<3 x i32>, array<3 x i32>, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 9>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%4, %65) <{alignment = 8 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %66 = "llvm.getelementptr"(%33, %2) <{elem_type = !llvm.struct<"struct.__tgt_kernel_arguments", (i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, array<3 x i32>, array<3 x i32>, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 10>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%21, %66) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.array<3 x i32>, !llvm.ptr) -> ()
    %67 = "llvm.getelementptr"(%33, %2) <{elem_type = !llvm.struct<"struct.__tgt_kernel_arguments", (i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, array<3 x i32>, array<3 x i32>, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 11>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%23, %67) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.array<3 x i32>, !llvm.ptr) -> ()
    %68 = "llvm.getelementptr"(%33, %2) <{elem_type = !llvm.struct<"struct.__tgt_kernel_arguments", (i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, array<3 x i32>, array<3 x i32>, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 12>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%2, %68) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %69 = "llvm.call"(%25, %26, %27, %2, %28, %33) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__tgt_target_kernel, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 6, 0>}> : (!llvm.ptr, i64, i32, i32, !llvm.ptr, !llvm.ptr) -> i32
    %70 = "llvm.icmp"(%69, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%70)[^bb2, ^bb3] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb2:  // pred: ^bb1
    "llvm.call"(%34) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__omp_offloading_10302_728572c__QQmain_l24, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> ()
    "llvm.br"()[^bb3] : () -> ()
  ^bb3:  // 2 preds: ^bb1, ^bb2
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<internal>, sym_name = "__omp_offloading_10302_728572c__QQmain_l24", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
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

