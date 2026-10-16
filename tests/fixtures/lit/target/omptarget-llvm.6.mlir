"builtin.module"() ({
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 1 : i64, constant, dso_local, global_type = !llvm.array<62 x i8>, linkage = #llvm.linkage<private>, sym_name = "mlir.llvm.nameless_global_0", unnamed_addr = 2 : i64, value = ";tests/fixtures/lit/target/omptarget-llvm.6.in;unknown;8;12;;\00", visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 1 : i64, constant, dso_local, global_type = !llvm.array<62 x i8>, linkage = #llvm.linkage<private>, sym_name = "mlir.llvm.nameless_global_1", unnamed_addr = 2 : i64, value = ";tests/fixtures/lit/target/omptarget-llvm.6.in;unknown;9;13;;\00", visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, constant, dso_local, global_type = !llvm.array<2 x i64>, linkage = #llvm.linkage<private>, sym_name = ".offload_sizes", unnamed_addr = 2 : i64, value = dense<[8, 0]> : tensor<2xi64>, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, constant, dso_local, global_type = !llvm.array<2 x i64>, linkage = #llvm.linkage<private>, sym_name = ".offload_maptypes", unnamed_addr = 2 : i64, value = dense<[2, 64]> : tensor<2xi64>, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, constant, dso_local, global_type = !llvm.array<2 x ptr>, linkage = #llvm.linkage<private>, sym_name = ".offload_mapnames", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %41 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_1}> : () -> !llvm.ptr
    %42 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_0}> : () -> !llvm.ptr
    %43 = "llvm.mlir.undef"() : () -> !llvm.array<2 x ptr>
    %44 = "llvm.insertvalue"(%43, %42) <{position = array<i64: 0>}> : (!llvm.array<2 x ptr>, !llvm.ptr) -> !llvm.array<2 x ptr>
    %45 = "llvm.insertvalue"(%44, %41) <{position = array<i64: 1>}> : (!llvm.array<2 x ptr>, !llvm.ptr) -> !llvm.array<2 x ptr>
    "llvm.return"(%45) : (!llvm.array<2 x ptr>) -> ()
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 1 : i64, constant, dso_local, global_type = !llvm.array<23 x i8>, linkage = #llvm.linkage<private>, sym_name = "mlir.llvm.nameless_global_2", unnamed_addr = 2 : i64, value = ";unknown;unknown;0;0;;\00", visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 8 : i64, constant, dso_local, global_type = !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, linkage = #llvm.linkage<private>, sym_name = "mlir.llvm.nameless_global_3", unnamed_addr = 2 : i64, visibility_ = 0 : i64}> ({
    %31 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_2}> : () -> !llvm.ptr
    %32 = "llvm.mlir.constant"() <{value = 22 : i32}> : () -> i32
    %33 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %34 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %35 = "llvm.mlir.undef"() : () -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %36 = "llvm.insertvalue"(%35, %33) <{position = array<i64: 0>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %37 = "llvm.insertvalue"(%36, %34) <{position = array<i64: 1>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %38 = "llvm.insertvalue"(%37, %33) <{position = array<i64: 2>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %39 = "llvm.insertvalue"(%38, %32) <{position = array<i64: 3>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %40 = "llvm.insertvalue"(%39, %31) <{position = array<i64: 4>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, !llvm.ptr) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    "llvm.return"(%40) : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>) -> ()
  }) : () -> ()
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<warning, "Debug Info Version", 3 : i32>]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, sym_name = "_QPopenmp_target_use_dev_addr_nomap", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %0 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %2 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %3 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %4 = "llvm.mlir.zero"() : () -> !llvm.ptr
    %5 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_3}> : () -> !llvm.ptr
    %6 = "llvm.mlir.constant"() <{value = -1 : i64}> : () -> i64
    %7 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %8 = "llvm.mlir.addressof"() <{global_name = @".offload_sizes"}> : () -> !llvm.ptr
    %9 = "llvm.mlir.addressof"() <{global_name = @".offload_maptypes"}> : () -> !llvm.ptr
    %10 = "llvm.mlir.addressof"() <{global_name = @".offload_mapnames"}> : () -> !llvm.ptr
    %11 = "llvm.mlir.constant"() <{value = 10 : i32}> : () -> i32
    %12 = "llvm.mlir.constant"() <{value = 20 : i32}> : () -> i32
    %13 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = !llvm.array<2 x ptr>}> : (i32) -> !llvm.ptr
    %14 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = !llvm.array<2 x ptr>}> : (i32) -> !llvm.ptr
    %15 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = !llvm.array<2 x ptr>}> : (i32) -> !llvm.ptr
    %16 = "llvm.alloca"(%1) <{alignment = 8 : i64, elem_type = !llvm.ptr}> : (i64) -> !llvm.ptr
    %17 = "llvm.alloca"(%1) <{alignment = 8 : i64, elem_type = !llvm.ptr}> : (i64) -> !llvm.ptr
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    %18 = "llvm.getelementptr"(%13, %2, %2) <{elem_type = !llvm.array<2 x ptr>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    "llvm.store"(%17, %18) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %19 = "llvm.getelementptr"(%14, %2, %2) <{elem_type = !llvm.array<2 x ptr>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    "llvm.store"(%17, %19) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %20 = "llvm.getelementptr"(%15, %3, %3) <{elem_type = !llvm.array<2 x ptr>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i64) -> !llvm.ptr
    "llvm.store"(%4, %20) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %21 = "llvm.getelementptr"(%13, %2, %0) <{elem_type = !llvm.array<2 x ptr>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    "llvm.store"(%16, %21) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %22 = "llvm.getelementptr"(%14, %2, %0) <{elem_type = !llvm.array<2 x ptr>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    "llvm.store"(%16, %22) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %23 = "llvm.getelementptr"(%15, %3, %1) <{elem_type = !llvm.array<2 x ptr>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i64) -> !llvm.ptr
    "llvm.store"(%4, %23) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %24 = "llvm.getelementptr"(%13, %2, %2) <{elem_type = !llvm.array<2 x ptr>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    %25 = "llvm.getelementptr"(%14, %2, %2) <{elem_type = !llvm.array<2 x ptr>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    "llvm.call"(%5, %6, %7, %24, %25, %8, %9, %10, %4) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__tgt_target_data_begin_mapper, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 9, 0>}> : (!llvm.ptr, i64, i32, !llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.ptr) -> ()
    %26 = "llvm.load"(%21) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.ptr
    %27 = "llvm.load"(%26) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.ptr
    "llvm.store"(%11, %27) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %28 = "llvm.load"(%17) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.ptr
    "llvm.store"(%12, %28) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %29 = "llvm.getelementptr"(%13, %2, %2) <{elem_type = !llvm.array<2 x ptr>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    %30 = "llvm.getelementptr"(%14, %2, %2) <{elem_type = !llvm.array<2 x ptr>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    "llvm.call"(%5, %6, %7, %29, %30, %8, %9, %10, %4) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__tgt_target_data_end_mapper, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 9, 0>}> : (!llvm.ptr, i64, i32, !llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i64, i32, ptr, ptr, ptr, ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "__tgt_target_data_begin_mapper", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i64, i32, ptr, ptr, ptr, ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "__tgt_target_data_end_mapper", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

