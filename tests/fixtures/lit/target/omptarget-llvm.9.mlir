"builtin.module"() ({
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 1 : i64, constant, dso_local, global_type = !llvm.array<63 x i8>, linkage = #llvm.linkage<private>, sym_name = "mlir.llvm.nameless_global_0", unnamed_addr = 2 : i64, value = ";tests/fixtures/lit/target/omptarget-llvm.9.in;unknown;15;10;;\00", visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, constant, dso_local, global_type = !llvm.array<1 x i64>, linkage = #llvm.linkage<private>, sym_name = ".offload_sizes", unnamed_addr = 2 : i64, value = dense<4> : tensor<1xi64>, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, constant, dso_local, global_type = !llvm.array<1 x i64>, linkage = #llvm.linkage<private>, sym_name = ".offload_maptypes", unnamed_addr = 2 : i64, value = dense<3> : tensor<1xi64>, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, constant, dso_local, global_type = !llvm.array<1 x ptr>, linkage = #llvm.linkage<private>, sym_name = ".offload_mapnames", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %85 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_0}> : () -> !llvm.ptr
    %86 = "llvm.mlir.undef"() : () -> !llvm.array<1 x ptr>
    %87 = "llvm.insertvalue"(%86, %85) <{position = array<i64: 0>}> : (!llvm.array<1 x ptr>, !llvm.ptr) -> !llvm.array<1 x ptr>
    "llvm.return"(%87) : (!llvm.array<1 x ptr>) -> ()
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 1 : i64, constant, dso_local, global_type = !llvm.array<62 x i8>, linkage = #llvm.linkage<private>, sym_name = "mlir.llvm.nameless_global_1", unnamed_addr = 2 : i64, value = ";tests/fixtures/lit/target/omptarget-llvm.9.in;unknown;8;10;;\00", visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 1 : i64, constant, dso_local, global_type = !llvm.array<62 x i8>, linkage = #llvm.linkage<private>, sym_name = "mlir.llvm.nameless_global_2", unnamed_addr = 2 : i64, value = ";tests/fixtures/lit/target/omptarget-llvm.9.in;unknown;7;10;;\00", visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 1 : i64, constant, dso_local, global_type = !llvm.array<23 x i8>, linkage = #llvm.linkage<private>, sym_name = "mlir.llvm.nameless_global_3", unnamed_addr = 2 : i64, value = ";unknown;unknown;0;0;;\00", visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 8 : i64, constant, dso_local, global_type = !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, linkage = #llvm.linkage<private>, sym_name = "mlir.llvm.nameless_global_4", unnamed_addr = 2 : i64, visibility_ = 0 : i64}> ({
    %75 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_3}> : () -> !llvm.ptr
    %76 = "llvm.mlir.constant"() <{value = 22 : i32}> : () -> i32
    %77 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %78 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %79 = "llvm.mlir.undef"() : () -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %80 = "llvm.insertvalue"(%79, %77) <{position = array<i64: 0>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %81 = "llvm.insertvalue"(%80, %78) <{position = array<i64: 1>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %82 = "llvm.insertvalue"(%81, %77) <{position = array<i64: 2>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %83 = "llvm.insertvalue"(%82, %76) <{position = array<i64: 3>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %84 = "llvm.insertvalue"(%83, %75) <{position = array<i64: 4>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, !llvm.ptr) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    "llvm.return"(%84) : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>) -> ()
  }) : () -> ()
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<warning, "Debug Info Version", 3 : i32>]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, sym_name = "_QPopenmp_target_data_mapper", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %52 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %53 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %54 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %55 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %56 = "llvm.mlir.addressof"() <{global_name = @".omp_mapper._QQFmy_testmy_mapper"}> : () -> !llvm.ptr
    %57 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_4}> : () -> !llvm.ptr
    %58 = "llvm.mlir.constant"() <{value = -1 : i64}> : () -> i64
    %59 = "llvm.mlir.addressof"() <{global_name = @".offload_sizes"}> : () -> !llvm.ptr
    %60 = "llvm.mlir.addressof"() <{global_name = @".offload_maptypes"}> : () -> !llvm.ptr
    %61 = "llvm.mlir.addressof"() <{global_name = @".offload_mapnames"}> : () -> !llvm.ptr
    %62 = "llvm.mlir.constant"() <{value = 10 : i32}> : () -> i32
    %63 = "llvm.alloca"(%52) <{alignment = 8 : i64, elem_type = !llvm.array<1 x ptr>}> : (i32) -> !llvm.ptr
    %64 = "llvm.alloca"(%52) <{alignment = 8 : i64, elem_type = !llvm.array<1 x ptr>}> : (i32) -> !llvm.ptr
    %65 = "llvm.alloca"(%52) <{alignment = 8 : i64, elem_type = !llvm.array<1 x ptr>}> : (i32) -> !llvm.ptr
    %66 = "llvm.alloca"(%53) <{alignment = 8 : i64, elem_type = !llvm.struct<"_QFmy_testTmy_type", (i32)>}> : (i64) -> !llvm.ptr
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    %67 = "llvm.getelementptr"(%63, %54, %54) <{elem_type = !llvm.array<1 x ptr>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    "llvm.store"(%66, %67) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %68 = "llvm.getelementptr"(%64, %54, %54) <{elem_type = !llvm.array<1 x ptr>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    "llvm.store"(%66, %68) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %69 = "llvm.getelementptr"(%65, %55, %55) <{elem_type = !llvm.array<1 x ptr>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i64) -> !llvm.ptr
    "llvm.store"(%56, %69) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %70 = "llvm.getelementptr"(%63, %54, %54) <{elem_type = !llvm.array<1 x ptr>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    %71 = "llvm.getelementptr"(%64, %54, %54) <{elem_type = !llvm.array<1 x ptr>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    "llvm.call"(%57, %58, %52, %70, %71, %59, %60, %61, %65) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__tgt_target_data_begin_mapper, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 9, 0>}> : (!llvm.ptr, i64, i32, !llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.ptr) -> ()
    %72 = "llvm.getelementptr"(%66, %54) <{elem_type = !llvm.struct<"_QFmy_testTmy_type", (i32)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%62, %72) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %73 = "llvm.getelementptr"(%63, %54, %54) <{elem_type = !llvm.array<1 x ptr>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    %74 = "llvm.getelementptr"(%64, %54, %54) <{elem_type = !llvm.array<1 x ptr>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    "llvm.call"(%57, %58, %52, %73, %74, %59, %60, %61, %65) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__tgt_target_data_end_mapper, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 9, 0>}> : (!llvm.ptr, i64, i32, !llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], dso_local, function_type = !llvm.func<void (ptr, ptr, ptr, i64, i64, ptr)>, linkage = #llvm.linkage<internal>, no_inline, no_unwind, sym_name = ".omp_mapper._QQFmy_testmy_mapper", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: !llvm.ptr, %arg1: !llvm.ptr, %arg2: !llvm.ptr, %arg3: i64, %arg4: i64, %arg5: !llvm.ptr):
    %0 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %1 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %2 = "llvm.mlir.constant"() <{value = 8 : i64}> : () -> i64
    %3 = "llvm.mlir.constant"() <{value = 16 : i64}> : () -> i64
    %4 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %5 = "llvm.mlir.constant"() <{value = -4 : i64}> : () -> i64
    %6 = "llvm.mlir.constant"() <{value = 512 : i64}> : () -> i64
    %7 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %8 = "llvm.mlir.constant"() <{value = 48 : i64}> : () -> i64
    %9 = "llvm.mlir.constant"() <{value = 3 : i64}> : () -> i64
    %10 = "llvm.mlir.constant"() <{value = 2 : i64}> : () -> i64
    %11 = "llvm.mlir.constant"() <{value = -2 : i64}> : () -> i64
    %12 = "llvm.mlir.constant"() <{value = -3 : i64}> : () -> i64
    %13 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_2}> : () -> !llvm.ptr
    %14 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %15 = "llvm.udiv"(%arg3, %0) <{isExact}> : (i64, i64) -> i64
    %16 = "llvm.getelementptr"(%arg2, %15) <{elem_type = !llvm.struct<"_QFmy_testTmy_type", (i32)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %17 = "llvm.icmp"(%15, %1) <{predicate = 4 : i64}> : (i64, i64) -> i1
    %18 = "llvm.and"(%arg4, %2) : (i64, i64) -> i64
    %19 = "llvm.icmp"(%arg1, %arg2) <{predicate = 1 : i64}> : (!llvm.ptr, !llvm.ptr) -> i1
    %20 = "llvm.and"(%arg4, %3) : (i64, i64) -> i64
    %21 = "llvm.icmp"(%20, %4) <{predicate = 1 : i64}> : (i64, i64) -> i1
    %22 = "llvm.and"(%19, %21) : (i1, i1) -> i1
    %23 = "llvm.or"(%17, %22) : (i1, i1) -> i1
    %24 = "llvm.icmp"(%18, %4) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %25 = "llvm.and"(%23, %24) : (i1, i1) -> i1
    "llvm.cond_br"(%25)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %26 = "llvm.mul"(%15, %0) <{overflowFlags = 2 : i32}> : (i64, i64) -> i64
    %27 = "llvm.and"(%arg4, %5) : (i64, i64) -> i64
    %28 = "llvm.or"(%27, %6) : (i64, i64) -> i64
    "llvm.call"(%arg0, %arg1, %arg2, %26, %28, %arg5) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__tgt_push_mapper_component, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 6, 0>}> : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i64, i64, !llvm.ptr) -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    %29 = "llvm.icmp"(%arg2, %16) <{predicate = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> i1
    "llvm.cond_br"(%29, %arg2)[^bb12, ^bb3] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, !llvm.ptr) -> ()
  ^bb3(%30: !llvm.ptr):  // 2 preds: ^bb2, ^bb9
    %31 = "llvm.getelementptr"(%30, %7) <{elem_type = !llvm.struct<"_QFmy_testTmy_type", (i32)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %32 = "llvm.call"(%arg0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__tgt_mapper_num_components, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> i64
    %33 = "llvm.shl"(%32, %8) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %34 = "llvm.add"(%9, %33) <{overflowFlags = 2 : i32}> : (i64, i64) -> i64
    %35 = "llvm.and"(%arg4, %9) : (i64, i64) -> i64
    %36 = "llvm.icmp"(%35, %4) <{predicate = 0 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%36)[^bb4, ^bb5] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb4:  // pred: ^bb3
    %37 = "llvm.and"(%34, %5) : (i64, i64) -> i64
    "llvm.br"(%37)[^bb9] : (i64) -> ()
  ^bb5:  // pred: ^bb3
    %38 = "llvm.icmp"(%35, %1) <{predicate = 0 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%38)[^bb6, ^bb7] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb6:  // pred: ^bb5
    %39 = "llvm.and"(%34, %12) : (i64, i64) -> i64
    "llvm.br"(%39)[^bb9] : (i64) -> ()
  ^bb7:  // pred: ^bb5
    %40 = "llvm.icmp"(%35, %10) <{predicate = 0 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%40, %34)[^bb8, ^bb9] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i64) -> ()
  ^bb8:  // pred: ^bb7
    %41 = "llvm.and"(%34, %11) : (i64, i64) -> i64
    "llvm.br"(%41)[^bb9] : (i64) -> ()
  ^bb9(%42: i64):  // 4 preds: ^bb4, ^bb6, ^bb7, ^bb8
    "llvm.call"(%arg0, %30, %31, %0, %42, %13) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__tgt_push_mapper_component, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 6, 0>}> : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i64, i64, !llvm.ptr) -> ()
    %43 = "llvm.getelementptr"(%30, %14) <{elem_type = !llvm.struct<"_QFmy_testTmy_type", (i32)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %44 = "llvm.icmp"(%43, %16) <{predicate = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> i1
    "llvm.cond_br"(%44, %43)[^bb10, ^bb3] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, !llvm.ptr) -> ()
  ^bb10:  // pred: ^bb9
    %45 = "llvm.icmp"(%15, %1) <{predicate = 4 : i64}> : (i64, i64) -> i1
    %46 = "llvm.and"(%arg4, %2) : (i64, i64) -> i64
    %47 = "llvm.icmp"(%46, %4) <{predicate = 1 : i64}> : (i64, i64) -> i1
    %48 = "llvm.and"(%45, %47) : (i1, i1) -> i1
    "llvm.cond_br"(%48)[^bb11, ^bb12] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb11:  // pred: ^bb10
    %49 = "llvm.mul"(%15, %0) <{overflowFlags = 2 : i32}> : (i64, i64) -> i64
    %50 = "llvm.and"(%arg4, %5) : (i64, i64) -> i64
    %51 = "llvm.or"(%50, %6) : (i64, i64) -> i64
    "llvm.call"(%arg0, %arg1, %arg2, %49, %51, %arg5) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__tgt_push_mapper_component, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 6, 0>}> : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i64, i64, !llvm.ptr) -> ()
    "llvm.br"()[^bb12] : () -> ()
  ^bb12:  // 3 preds: ^bb2, ^bb10, ^bb11
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr, i64, i64, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "__tgt_push_mapper_component", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "__tgt_mapper_num_components", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i64, i32, ptr, ptr, ptr, ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "__tgt_target_data_begin_mapper", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i64, i32, ptr, ptr, ptr, ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "__tgt_target_data_end_mapper", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

