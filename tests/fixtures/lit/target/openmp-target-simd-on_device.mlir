#loop_vectorize = #llvm.loop_vectorize<disable = false>
#loop_annotation = #llvm.loop_annotation<vectorize = #loop_vectorize>
"builtin.module"() ({
  "llvm.mlir.global"() <{addr_space = 0 : i32, constant, dso_local, global_type = i8, linkage = #llvm.linkage<weak>, sym_name = "__omp_offloading_10302_728589c_test_target_simd_l10_exec_mode", unnamed_addr = 0 : i64, value = 1 : i8, visibility_ = 2 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, global_type = !llvm.array<1 x ptr>, linkage = #llvm.linkage<appending>, section = "llvm.metadata", sym_name = "llvm.compiler.used", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %44 = "llvm.mlir.addressof"() <{global_name = @__omp_offloading_10302_728589c_test_target_simd_l10_exec_mode}> : () -> !llvm.ptr
    %45 = "llvm.mlir.undef"() : () -> !llvm.array<1 x ptr>
    %46 = "llvm.insertvalue"(%45, %44) <{position = array<i64: 0>}> : (!llvm.array<1 x ptr>, !llvm.ptr) -> !llvm.array<1 x ptr>
    "llvm.return"(%46) : (!llvm.array<1 x ptr>) -> ()
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 1 : i64, constant, dso_local, global_type = !llvm.array<23 x i8>, linkage = #llvm.linkage<private>, sym_name = "mlir.llvm.nameless_global_0", unnamed_addr = 2 : i64, value = ";unknown;unknown;0;0;;\00", visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 8 : i64, constant, dso_local, global_type = !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, linkage = #llvm.linkage<private>, sym_name = "mlir.llvm.nameless_global_1", unnamed_addr = 2 : i64, visibility_ = 0 : i64}> ({
    %34 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_0}> : () -> !llvm.ptr
    %35 = "llvm.mlir.constant"() <{value = 22 : i32}> : () -> i32
    %36 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %37 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %38 = "llvm.mlir.undef"() : () -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %39 = "llvm.insertvalue"(%38, %36) <{position = array<i64: 0>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %40 = "llvm.insertvalue"(%39, %37) <{position = array<i64: 1>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %41 = "llvm.insertvalue"(%40, %36) <{position = array<i64: 2>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %42 = "llvm.insertvalue"(%41, %35) <{position = array<i64: 3>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %43 = "llvm.insertvalue"(%42, %34) <{position = array<i64: 4>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, !llvm.ptr) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    "llvm.return"(%43) : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>) -> ()
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, dso_local, global_type = !llvm.struct<"struct.DynamicEnvironmentTy", (i16)>, linkage = #llvm.linkage<weak_odr>, sym_name = "__omp_offloading_10302_728589c_test_target_simd_l10_dynamic_environment", unnamed_addr = 0 : i64, visibility_ = 2 : i64}> ({
    %32 = "llvm.mlir.constant"() <{value = 0 : i16}> : () -> i16
    %33 = "llvm.mlir.zero"() : () -> !llvm.struct<"struct.DynamicEnvironmentTy", (i16)>
    "llvm.return"(%33) : (!llvm.struct<"struct.DynamicEnvironmentTy", (i16)>) -> ()
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, constant, dso_local, global_type = !llvm.struct<"struct.KernelEnvironmentTy", (struct<"struct.ConfigurationEnvironmentTy", (i8, i8, i8, i32, i32, i32, i32, i32, i32)>, ptr, ptr)>, linkage = #llvm.linkage<weak_odr>, sym_name = "__omp_offloading_10302_728589c_test_target_simd_l10_kernel_environment", unnamed_addr = 0 : i64, visibility_ = 2 : i64}> ({
    %13 = "llvm.mlir.addressof"() <{global_name = @__omp_offloading_10302_728589c_test_target_simd_l10_dynamic_environment}> : () -> !llvm.ptr
    %14 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_1}> : () -> !llvm.ptr
    %15 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %16 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %17 = "llvm.mlir.constant"() <{value = 1 : i8}> : () -> i8
    %18 = "llvm.mlir.undef"() : () -> !llvm.struct<"struct.ConfigurationEnvironmentTy", (i8, i8, i8, i32, i32, i32, i32, i32, i32)>
    %19 = "llvm.insertvalue"(%18, %17) <{position = array<i64: 0>}> : (!llvm.struct<"struct.ConfigurationEnvironmentTy", (i8, i8, i8, i32, i32, i32, i32, i32, i32)>, i8) -> !llvm.struct<"struct.ConfigurationEnvironmentTy", (i8, i8, i8, i32, i32, i32, i32, i32, i32)>
    %20 = "llvm.insertvalue"(%19, %17) <{position = array<i64: 1>}> : (!llvm.struct<"struct.ConfigurationEnvironmentTy", (i8, i8, i8, i32, i32, i32, i32, i32, i32)>, i8) -> !llvm.struct<"struct.ConfigurationEnvironmentTy", (i8, i8, i8, i32, i32, i32, i32, i32, i32)>
    %21 = "llvm.insertvalue"(%20, %17) <{position = array<i64: 2>}> : (!llvm.struct<"struct.ConfigurationEnvironmentTy", (i8, i8, i8, i32, i32, i32, i32, i32, i32)>, i8) -> !llvm.struct<"struct.ConfigurationEnvironmentTy", (i8, i8, i8, i32, i32, i32, i32, i32, i32)>
    %22 = "llvm.insertvalue"(%21, %16) <{position = array<i64: 3>}> : (!llvm.struct<"struct.ConfigurationEnvironmentTy", (i8, i8, i8, i32, i32, i32, i32, i32, i32)>, i32) -> !llvm.struct<"struct.ConfigurationEnvironmentTy", (i8, i8, i8, i32, i32, i32, i32, i32, i32)>
    %23 = "llvm.insertvalue"(%22, %16) <{position = array<i64: 4>}> : (!llvm.struct<"struct.ConfigurationEnvironmentTy", (i8, i8, i8, i32, i32, i32, i32, i32, i32)>, i32) -> !llvm.struct<"struct.ConfigurationEnvironmentTy", (i8, i8, i8, i32, i32, i32, i32, i32, i32)>
    %24 = "llvm.insertvalue"(%23, %16) <{position = array<i64: 5>}> : (!llvm.struct<"struct.ConfigurationEnvironmentTy", (i8, i8, i8, i32, i32, i32, i32, i32, i32)>, i32) -> !llvm.struct<"struct.ConfigurationEnvironmentTy", (i8, i8, i8, i32, i32, i32, i32, i32, i32)>
    %25 = "llvm.insertvalue"(%24, %16) <{position = array<i64: 6>}> : (!llvm.struct<"struct.ConfigurationEnvironmentTy", (i8, i8, i8, i32, i32, i32, i32, i32, i32)>, i32) -> !llvm.struct<"struct.ConfigurationEnvironmentTy", (i8, i8, i8, i32, i32, i32, i32, i32, i32)>
    %26 = "llvm.insertvalue"(%25, %15) <{position = array<i64: 7>}> : (!llvm.struct<"struct.ConfigurationEnvironmentTy", (i8, i8, i8, i32, i32, i32, i32, i32, i32)>, i32) -> !llvm.struct<"struct.ConfigurationEnvironmentTy", (i8, i8, i8, i32, i32, i32, i32, i32, i32)>
    %27 = "llvm.insertvalue"(%26, %15) <{position = array<i64: 8>}> : (!llvm.struct<"struct.ConfigurationEnvironmentTy", (i8, i8, i8, i32, i32, i32, i32, i32, i32)>, i32) -> !llvm.struct<"struct.ConfigurationEnvironmentTy", (i8, i8, i8, i32, i32, i32, i32, i32, i32)>
    %28 = "llvm.mlir.undef"() : () -> !llvm.struct<"struct.KernelEnvironmentTy", (struct<"struct.ConfigurationEnvironmentTy", (i8, i8, i8, i32, i32, i32, i32, i32, i32)>, ptr, ptr)>
    %29 = "llvm.insertvalue"(%28, %27) <{position = array<i64: 0>}> : (!llvm.struct<"struct.KernelEnvironmentTy", (struct<"struct.ConfigurationEnvironmentTy", (i8, i8, i8, i32, i32, i32, i32, i32, i32)>, ptr, ptr)>, !llvm.struct<"struct.ConfigurationEnvironmentTy", (i8, i8, i8, i32, i32, i32, i32, i32, i32)>) -> !llvm.struct<"struct.KernelEnvironmentTy", (struct<"struct.ConfigurationEnvironmentTy", (i8, i8, i8, i32, i32, i32, i32, i32, i32)>, ptr, ptr)>
    %30 = "llvm.insertvalue"(%29, %14) <{position = array<i64: 1>}> : (!llvm.struct<"struct.KernelEnvironmentTy", (struct<"struct.ConfigurationEnvironmentTy", (i8, i8, i8, i32, i32, i32, i32, i32, i32)>, ptr, ptr)>, !llvm.ptr) -> !llvm.struct<"struct.KernelEnvironmentTy", (struct<"struct.ConfigurationEnvironmentTy", (i8, i8, i8, i32, i32, i32, i32, i32, i32)>, ptr, ptr)>
    %31 = "llvm.insertvalue"(%30, %13) <{position = array<i64: 2>}> : (!llvm.struct<"struct.KernelEnvironmentTy", (struct<"struct.ConfigurationEnvironmentTy", (i8, i8, i8, i32, i32, i32, i32, i32, i32)>, ptr, ptr)>, !llvm.ptr) -> !llvm.struct<"struct.KernelEnvironmentTy", (struct<"struct.ConfigurationEnvironmentTy", (i8, i8, i8, i32, i32, i32, i32, i32, i32)>, ptr, ptr)>
    "llvm.return"(%31) : (!llvm.struct<"struct.KernelEnvironmentTy", (struct<"struct.ConfigurationEnvironmentTy", (i8, i8, i8, i32, i32, i32, i32, i32, i32)>, ptr, ptr)>) -> ()
  }) : () -> ()
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<warning, "Debug Info Version", 3 : i32>]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, sym_name = "test_target_simd", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<weak_odr>, passthrough = [["nvvm.maxntid", "1"], ["omp_target_num_teams", "1"], ["omp_target_thread_limit", "1"]], sym_name = "__omp_offloading_10302_728589c_test_target_simd_l10", unnamed_addr = 0 : i64, visibility_ = 2 : i64}> ({
  ^bb0(%arg0: !llvm.ptr):
    %0 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "llvm.mlir.addressof"() <{global_name = @__omp_offloading_10302_728589c_test_target_simd_l10_kernel_environment}> : () -> !llvm.ptr
    %2 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %3 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %4 = "llvm.alloca"(%0) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %5 = "llvm.call"(%1, %arg0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_target_init, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (!llvm.ptr, !llvm.ptr) -> i32
    %6 = "llvm.icmp"(%5, %2) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %7 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = !llvm.ptr}> : (i32) -> !llvm.ptr
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    "llvm.cond_br"(%6)[^bb2, ^bb19] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb2:  // pred: ^bb1
    "llvm.br"()[^bb3] : () -> ()
  ^bb3:  // pred: ^bb2
    "llvm.br"()[^bb4] : () -> ()
  ^bb4:  // pred: ^bb3
    "llvm.br"()[^bb5] : () -> ()
  ^bb5:  // pred: ^bb4
    "llvm.br"()[^bb6] : () -> ()
  ^bb6:  // pred: ^bb5
    "llvm.br"()[^bb7] : () -> ()
  ^bb7:  // pred: ^bb6
    "llvm.br"()[^bb8] : () -> ()
  ^bb8:  // pred: ^bb7
    "llvm.br"(%3)[^bb9] : (i32) -> ()
  ^bb9(%8: i32):  // 2 preds: ^bb8, ^bb14
    "llvm.br"()[^bb10] : () -> ()
  ^bb10:  // pred: ^bb9
    %9 = "llvm.icmp"(%8, %0) <{predicate = 6 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%9)[^bb11, ^bb15] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb11:  // pred: ^bb10
    %10 = "llvm.mul"(%8, %0) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %11 = "llvm.add"(%10, %0) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.br"()[^bb12] : () -> ()
  ^bb12:  // pred: ^bb11
    "llvm.br"()[^bb13] : () -> ()
  ^bb13:  // pred: ^bb12
    "llvm.br"()[^bb14] : () -> ()
  ^bb14:  // pred: ^bb13
    %12 = "llvm.add"(%8, %0) <{overflowFlags = 2 : i32}> : (i32, i32) -> i32
    "llvm.br"(%12)[^bb9] <{loop_annotation = #loop_annotation}> : (i32) -> ()
  ^bb15:  // pred: ^bb10
    "llvm.br"()[^bb16] : () -> ()
  ^bb16:  // pred: ^bb15
    "llvm.br"()[^bb17] : () -> ()
  ^bb17:  // pred: ^bb16
    "llvm.br"()[^bb18] : () -> ()
  ^bb18:  // pred: ^bb17
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_target_deinit, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> ()
    "llvm.return"() : () -> ()
  ^bb19:  // pred: ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "__kmpc_target_init", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, sym_name = "__kmpc_target_deinit", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

