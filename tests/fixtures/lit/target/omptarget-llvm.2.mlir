"builtin.module"() ({
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 1 : i64, constant, dso_local, global_type = !llvm.array<63 x i8>, linkage = #llvm.linkage<private>, sym_name = "mlir.llvm.nameless_global_0", unnamed_addr = 2 : i64, value = ";tests/fixtures/lit/target/omptarget-llvm.2.in;unknown;21;13;;\00", visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 1 : i64, constant, dso_local, global_type = !llvm.array<63 x i8>, linkage = #llvm.linkage<private>, sym_name = "mlir.llvm.nameless_global_1", unnamed_addr = 2 : i64, value = ";tests/fixtures/lit/target/omptarget-llvm.2.in;unknown;27;13;;\00", visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, constant, dso_local, global_type = !llvm.array<2 x i64>, linkage = #llvm.linkage<private>, sym_name = ".offload_sizes", unnamed_addr = 2 : i64, value = dense<[4096, 2048]> : tensor<2xi64>, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, constant, dso_local, global_type = !llvm.array<2 x i64>, linkage = #llvm.linkage<private>, sym_name = ".offload_maptypes", unnamed_addr = 2 : i64, value = dense<[1, 0]> : tensor<2xi64>, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, constant, dso_local, global_type = !llvm.array<2 x ptr>, linkage = #llvm.linkage<private>, sym_name = ".offload_mapnames", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %66 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_1}> : () -> !llvm.ptr
    %67 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_0}> : () -> !llvm.ptr
    %68 = "llvm.mlir.undef"() : () -> !llvm.array<2 x ptr>
    %69 = "llvm.insertvalue"(%68, %67) <{position = array<i64: 0>}> : (!llvm.array<2 x ptr>, !llvm.ptr) -> !llvm.array<2 x ptr>
    %70 = "llvm.insertvalue"(%69, %66) <{position = array<i64: 1>}> : (!llvm.array<2 x ptr>, !llvm.ptr) -> !llvm.array<2 x ptr>
    "llvm.return"(%70) : (!llvm.array<2 x ptr>) -> ()
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 1 : i64, constant, dso_local, global_type = !llvm.array<23 x i8>, linkage = #llvm.linkage<private>, sym_name = "mlir.llvm.nameless_global_2", unnamed_addr = 2 : i64, value = ";unknown;unknown;0;0;;\00", visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 8 : i64, constant, dso_local, global_type = !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, linkage = #llvm.linkage<private>, sym_name = "mlir.llvm.nameless_global_3", unnamed_addr = 2 : i64, visibility_ = 0 : i64}> ({
    %56 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_2}> : () -> !llvm.ptr
    %57 = "llvm.mlir.constant"() <{value = 22 : i32}> : () -> i32
    %58 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %59 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %60 = "llvm.mlir.undef"() : () -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %61 = "llvm.insertvalue"(%60, %58) <{position = array<i64: 0>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %62 = "llvm.insertvalue"(%61, %59) <{position = array<i64: 1>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %63 = "llvm.insertvalue"(%62, %58) <{position = array<i64: 2>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %64 = "llvm.insertvalue"(%63, %57) <{position = array<i64: 3>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %65 = "llvm.insertvalue"(%64, %56) <{position = array<i64: 4>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, !llvm.ptr) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    "llvm.return"(%65) : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>) -> ()
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 1 : i64, constant, dso_local, global_type = !llvm.array<63 x i8>, linkage = #llvm.linkage<private>, sym_name = "mlir.llvm.nameless_global_4", unnamed_addr = 2 : i64, value = ";tests/fixtures/lit/target/omptarget-llvm.2.in;unknown;38;13;;\00", visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 1 : i64, constant, dso_local, global_type = !llvm.array<63 x i8>, linkage = #llvm.linkage<private>, sym_name = "mlir.llvm.nameless_global_5", unnamed_addr = 2 : i64, value = ";tests/fixtures/lit/target/omptarget-llvm.2.in;unknown;44;13;;\00", visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, constant, dso_local, global_type = !llvm.array<2 x i64>, linkage = #llvm.linkage<private>, sym_name = ".offload_sizes.1", unnamed_addr = 2 : i64, value = dense<[4096, 2048]> : tensor<2xi64>, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, constant, dso_local, global_type = !llvm.array<2 x i64>, linkage = #llvm.linkage<private>, sym_name = ".offload_maptypes.2", unnamed_addr = 2 : i64, value = dense<[2, 0]> : tensor<2xi64>, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, constant, dso_local, global_type = !llvm.array<2 x ptr>, linkage = #llvm.linkage<private>, sym_name = ".offload_mapnames.3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %51 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_5}> : () -> !llvm.ptr
    %52 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_4}> : () -> !llvm.ptr
    %53 = "llvm.mlir.undef"() : () -> !llvm.array<2 x ptr>
    %54 = "llvm.insertvalue"(%53, %52) <{position = array<i64: 0>}> : (!llvm.array<2 x ptr>, !llvm.ptr) -> !llvm.array<2 x ptr>
    %55 = "llvm.insertvalue"(%54, %51) <{position = array<i64: 1>}> : (!llvm.array<2 x ptr>, !llvm.ptr) -> !llvm.array<2 x ptr>
    "llvm.return"(%55) : (!llvm.array<2 x ptr>) -> ()
  }) : () -> ()
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<warning, "Debug Info Version", 3 : i32>]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "_QPomp_target_enter_exit", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: !llvm.ptr, %arg1: !llvm.ptr):
    %0 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %2 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %3 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %4 = "llvm.mlir.constant"() <{value = 10 : i32}> : () -> i32
    %5 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %6 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %7 = "llvm.mlir.zero"() : () -> !llvm.ptr
    %8 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_3}> : () -> !llvm.ptr
    %9 = "llvm.mlir.addressof"() <{global_name = @".offload_sizes"}> : () -> !llvm.ptr
    %10 = "llvm.mlir.addressof"() <{global_name = @".offload_maptypes"}> : () -> !llvm.ptr
    %11 = "llvm.mlir.addressof"() <{global_name = @".offload_mapnames"}> : () -> !llvm.ptr
    %12 = "llvm.mlir.addressof"() <{global_name = @".offload_sizes.1"}> : () -> !llvm.ptr
    %13 = "llvm.mlir.addressof"() <{global_name = @".offload_maptypes.2"}> : () -> !llvm.ptr
    %14 = "llvm.mlir.addressof"() <{global_name = @".offload_mapnames.3"}> : () -> !llvm.ptr
    %15 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = !llvm.array<2 x ptr>}> : (i32) -> !llvm.ptr
    %16 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = !llvm.array<2 x ptr>}> : (i32) -> !llvm.ptr
    %17 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = !llvm.array<2 x ptr>}> : (i32) -> !llvm.ptr
    %18 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = !llvm.array<2 x ptr>}> : (i32) -> !llvm.ptr
    %19 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = !llvm.array<2 x ptr>}> : (i32) -> !llvm.ptr
    %20 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = !llvm.array<2 x ptr>}> : (i32) -> !llvm.ptr
    %21 = "llvm.alloca"(%1) <{alignment = 4 : i64, elem_type = i32}> : (i64) -> !llvm.ptr
    %22 = "llvm.alloca"(%1) <{alignment = 4 : i64, elem_type = i32}> : (i64) -> !llvm.ptr
    "llvm.store"(%2, %22) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.store"(%3, %21) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %23 = "llvm.load"(%22) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %24 = "llvm.icmp"(%23, %4) <{predicate = 2 : i64}> : (i32, i32) -> i1
    %25 = "llvm.load"(%21) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %26 = "llvm.sext"(%25) : (i32) -> i64
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    "llvm.cond_br"(%24)[^bb2, ^bb3] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb2:  // pred: ^bb1
    %27 = "llvm.getelementptr"(%arg0, %5, %5) <{elem_type = !llvm.array<1024 x i32>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i64) -> !llvm.ptr
    %28 = "llvm.getelementptr"(%arg1, %5, %5) <{elem_type = !llvm.array<512 x i32>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i64) -> !llvm.ptr
    %29 = "llvm.getelementptr"(%18, %6, %6) <{elem_type = !llvm.array<2 x ptr>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    "llvm.store"(%arg0, %29) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %30 = "llvm.getelementptr"(%19, %6, %6) <{elem_type = !llvm.array<2 x ptr>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    "llvm.store"(%27, %30) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %31 = "llvm.getelementptr"(%20, %5, %5) <{elem_type = !llvm.array<2 x ptr>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i64) -> !llvm.ptr
    "llvm.store"(%7, %31) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %32 = "llvm.getelementptr"(%18, %6, %0) <{elem_type = !llvm.array<2 x ptr>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    "llvm.store"(%arg1, %32) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %33 = "llvm.getelementptr"(%19, %6, %0) <{elem_type = !llvm.array<2 x ptr>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    "llvm.store"(%28, %33) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %34 = "llvm.getelementptr"(%20, %5, %1) <{elem_type = !llvm.array<2 x ptr>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i64) -> !llvm.ptr
    "llvm.store"(%7, %34) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %35 = "llvm.getelementptr"(%18, %6, %6) <{elem_type = !llvm.array<2 x ptr>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    %36 = "llvm.getelementptr"(%19, %6, %6) <{elem_type = !llvm.array<2 x ptr>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    "llvm.call"(%8, %26, %3, %35, %36, %9, %10, %11, %7) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__tgt_target_data_begin_mapper, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 9, 0>}> : (!llvm.ptr, i64, i32, !llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.ptr) -> ()
    "llvm.br"()[^bb4] : () -> ()
  ^bb3:  // pred: ^bb1
    "llvm.br"()[^bb4] : () -> ()
  ^bb4:  // 2 preds: ^bb2, ^bb3
    %37 = "llvm.load"(%22) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %38 = "llvm.icmp"(%37, %4) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %39 = "llvm.load"(%21) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %40 = "llvm.sext"(%39) : (i32) -> i64
    "llvm.cond_br"(%38)[^bb5, ^bb6] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb5:  // pred: ^bb4
    %41 = "llvm.getelementptr"(%arg0, %5, %5) <{elem_type = !llvm.array<1024 x i32>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i64) -> !llvm.ptr
    %42 = "llvm.getelementptr"(%arg1, %5, %5) <{elem_type = !llvm.array<512 x i32>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i64) -> !llvm.ptr
    %43 = "llvm.getelementptr"(%15, %6, %6) <{elem_type = !llvm.array<2 x ptr>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    "llvm.store"(%arg0, %43) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %44 = "llvm.getelementptr"(%16, %6, %6) <{elem_type = !llvm.array<2 x ptr>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    "llvm.store"(%41, %44) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %45 = "llvm.getelementptr"(%17, %5, %5) <{elem_type = !llvm.array<2 x ptr>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i64) -> !llvm.ptr
    "llvm.store"(%7, %45) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %46 = "llvm.getelementptr"(%15, %6, %0) <{elem_type = !llvm.array<2 x ptr>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    "llvm.store"(%arg1, %46) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %47 = "llvm.getelementptr"(%16, %6, %0) <{elem_type = !llvm.array<2 x ptr>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    "llvm.store"(%42, %47) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %48 = "llvm.getelementptr"(%17, %5, %1) <{elem_type = !llvm.array<2 x ptr>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i64) -> !llvm.ptr
    "llvm.store"(%7, %48) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %49 = "llvm.getelementptr"(%15, %6, %6) <{elem_type = !llvm.array<2 x ptr>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    %50 = "llvm.getelementptr"(%16, %6, %6) <{elem_type = !llvm.array<2 x ptr>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    "llvm.call"(%8, %40, %3, %49, %50, %12, %13, %14, %7) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__tgt_target_data_end_mapper, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 9, 0>}> : (!llvm.ptr, i64, i32, !llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.ptr) -> ()
    "llvm.br"()[^bb7] : () -> ()
  ^bb6:  // pred: ^bb4
    "llvm.br"()[^bb7] : () -> ()
  ^bb7:  // 2 preds: ^bb5, ^bb6
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i64, i32, ptr, ptr, ptr, ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "__tgt_target_data_begin_mapper", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i64, i32, ptr, ptr, ptr, ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "__tgt_target_data_end_mapper", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

