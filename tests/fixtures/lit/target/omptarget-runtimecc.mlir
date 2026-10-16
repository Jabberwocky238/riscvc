"builtin.module"() ({
  "llvm.mlir.global"() <{addr_space = 0 : i32, constant, dso_local, global_type = i8, linkage = #llvm.linkage<weak>, sym_name = "__omp_offloading_10302_7285737_target_if_variable_l7_exec_mode", unnamed_addr = 0 : i64, value = 1 : i8, visibility_ = 2 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, global_type = !llvm.array<1 x ptr>, linkage = #llvm.linkage<appending>, section = "llvm.metadata", sym_name = "llvm.compiler.used", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %37 = "llvm.mlir.addressof"() <{global_name = @__omp_offloading_10302_7285737_target_if_variable_l7_exec_mode}> : () -> !llvm.ptr
    %38 = "llvm.mlir.undef"() : () -> !llvm.array<1 x ptr>
    %39 = "llvm.insertvalue"(%38, %37) <{position = array<i64: 0>}> : (!llvm.array<1 x ptr>, !llvm.ptr) -> !llvm.array<1 x ptr>
    "llvm.return"(%39) : (!llvm.array<1 x ptr>) -> ()
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 1 : i64, constant, dso_local, global_type = !llvm.array<23 x i8>, linkage = #llvm.linkage<private>, sym_name = "mlir.llvm.nameless_global_0", unnamed_addr = 2 : i64, value = ";unknown;unknown;0;0;;\00", visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 8 : i64, constant, dso_local, global_type = !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, linkage = #llvm.linkage<private>, sym_name = "mlir.llvm.nameless_global_1", unnamed_addr = 2 : i64, visibility_ = 0 : i64}> ({
    %27 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_0}> : () -> !llvm.ptr
    %28 = "llvm.mlir.constant"() <{value = 22 : i32}> : () -> i32
    %29 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %30 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %31 = "llvm.mlir.undef"() : () -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %32 = "llvm.insertvalue"(%31, %29) <{position = array<i64: 0>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %33 = "llvm.insertvalue"(%32, %30) <{position = array<i64: 1>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %34 = "llvm.insertvalue"(%33, %29) <{position = array<i64: 2>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %35 = "llvm.insertvalue"(%34, %28) <{position = array<i64: 3>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %36 = "llvm.insertvalue"(%35, %27) <{position = array<i64: 4>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, !llvm.ptr) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    "llvm.return"(%36) : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>) -> ()
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, dso_local, global_type = !llvm.struct<"struct.DynamicEnvironmentTy", (i16)>, linkage = #llvm.linkage<weak_odr>, sym_name = "__omp_offloading_10302_7285737_target_if_variable_l7_dynamic_environment", unnamed_addr = 0 : i64, visibility_ = 2 : i64}> ({
    %25 = "llvm.mlir.constant"() <{value = 0 : i16}> : () -> i16
    %26 = "llvm.mlir.zero"() : () -> !llvm.struct<"struct.DynamicEnvironmentTy", (i16)>
    "llvm.return"(%26) : (!llvm.struct<"struct.DynamicEnvironmentTy", (i16)>) -> ()
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, constant, dso_local, global_type = !llvm.struct<"struct.KernelEnvironmentTy", (struct<"struct.ConfigurationEnvironmentTy", (i8, i8, i8, i32, i32, i32, i32, i32, i32)>, ptr, ptr)>, linkage = #llvm.linkage<weak_odr>, sym_name = "__omp_offloading_10302_7285737_target_if_variable_l7_kernel_environment", unnamed_addr = 0 : i64, visibility_ = 2 : i64}> ({
    %4 = "llvm.mlir.addressof"() <{global_name = @__omp_offloading_10302_7285737_target_if_variable_l7_dynamic_environment}> : () -> !llvm.ptr
    %5 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_1}> : () -> !llvm.ptr
    %6 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %7 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %8 = "llvm.mlir.constant"() <{value = 256 : i32}> : () -> i32
    %9 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %10 = "llvm.mlir.constant"() <{value = 1 : i8}> : () -> i8
    %11 = "llvm.mlir.undef"() : () -> !llvm.struct<"struct.ConfigurationEnvironmentTy", (i8, i8, i8, i32, i32, i32, i32, i32, i32)>
    %12 = "llvm.insertvalue"(%11, %10) <{position = array<i64: 0>}> : (!llvm.struct<"struct.ConfigurationEnvironmentTy", (i8, i8, i8, i32, i32, i32, i32, i32, i32)>, i8) -> !llvm.struct<"struct.ConfigurationEnvironmentTy", (i8, i8, i8, i32, i32, i32, i32, i32, i32)>
    %13 = "llvm.insertvalue"(%12, %10) <{position = array<i64: 1>}> : (!llvm.struct<"struct.ConfigurationEnvironmentTy", (i8, i8, i8, i32, i32, i32, i32, i32, i32)>, i8) -> !llvm.struct<"struct.ConfigurationEnvironmentTy", (i8, i8, i8, i32, i32, i32, i32, i32, i32)>
    %14 = "llvm.insertvalue"(%13, %10) <{position = array<i64: 2>}> : (!llvm.struct<"struct.ConfigurationEnvironmentTy", (i8, i8, i8, i32, i32, i32, i32, i32, i32)>, i8) -> !llvm.struct<"struct.ConfigurationEnvironmentTy", (i8, i8, i8, i32, i32, i32, i32, i32, i32)>
    %15 = "llvm.insertvalue"(%14, %9) <{position = array<i64: 3>}> : (!llvm.struct<"struct.ConfigurationEnvironmentTy", (i8, i8, i8, i32, i32, i32, i32, i32, i32)>, i32) -> !llvm.struct<"struct.ConfigurationEnvironmentTy", (i8, i8, i8, i32, i32, i32, i32, i32, i32)>
    %16 = "llvm.insertvalue"(%15, %8) <{position = array<i64: 4>}> : (!llvm.struct<"struct.ConfigurationEnvironmentTy", (i8, i8, i8, i32, i32, i32, i32, i32, i32)>, i32) -> !llvm.struct<"struct.ConfigurationEnvironmentTy", (i8, i8, i8, i32, i32, i32, i32, i32, i32)>
    %17 = "llvm.insertvalue"(%16, %7) <{position = array<i64: 5>}> : (!llvm.struct<"struct.ConfigurationEnvironmentTy", (i8, i8, i8, i32, i32, i32, i32, i32, i32)>, i32) -> !llvm.struct<"struct.ConfigurationEnvironmentTy", (i8, i8, i8, i32, i32, i32, i32, i32, i32)>
    %18 = "llvm.insertvalue"(%17, %7) <{position = array<i64: 6>}> : (!llvm.struct<"struct.ConfigurationEnvironmentTy", (i8, i8, i8, i32, i32, i32, i32, i32, i32)>, i32) -> !llvm.struct<"struct.ConfigurationEnvironmentTy", (i8, i8, i8, i32, i32, i32, i32, i32, i32)>
    %19 = "llvm.insertvalue"(%18, %6) <{position = array<i64: 7>}> : (!llvm.struct<"struct.ConfigurationEnvironmentTy", (i8, i8, i8, i32, i32, i32, i32, i32, i32)>, i32) -> !llvm.struct<"struct.ConfigurationEnvironmentTy", (i8, i8, i8, i32, i32, i32, i32, i32, i32)>
    %20 = "llvm.insertvalue"(%19, %6) <{position = array<i64: 8>}> : (!llvm.struct<"struct.ConfigurationEnvironmentTy", (i8, i8, i8, i32, i32, i32, i32, i32, i32)>, i32) -> !llvm.struct<"struct.ConfigurationEnvironmentTy", (i8, i8, i8, i32, i32, i32, i32, i32, i32)>
    %21 = "llvm.mlir.undef"() : () -> !llvm.struct<"struct.KernelEnvironmentTy", (struct<"struct.ConfigurationEnvironmentTy", (i8, i8, i8, i32, i32, i32, i32, i32, i32)>, ptr, ptr)>
    %22 = "llvm.insertvalue"(%21, %20) <{position = array<i64: 0>}> : (!llvm.struct<"struct.KernelEnvironmentTy", (struct<"struct.ConfigurationEnvironmentTy", (i8, i8, i8, i32, i32, i32, i32, i32, i32)>, ptr, ptr)>, !llvm.struct<"struct.ConfigurationEnvironmentTy", (i8, i8, i8, i32, i32, i32, i32, i32, i32)>) -> !llvm.struct<"struct.KernelEnvironmentTy", (struct<"struct.ConfigurationEnvironmentTy", (i8, i8, i8, i32, i32, i32, i32, i32, i32)>, ptr, ptr)>
    %23 = "llvm.insertvalue"(%22, %5) <{position = array<i64: 1>}> : (!llvm.struct<"struct.KernelEnvironmentTy", (struct<"struct.ConfigurationEnvironmentTy", (i8, i8, i8, i32, i32, i32, i32, i32, i32)>, ptr, ptr)>, !llvm.ptr) -> !llvm.struct<"struct.KernelEnvironmentTy", (struct<"struct.ConfigurationEnvironmentTy", (i8, i8, i8, i32, i32, i32, i32, i32, i32)>, ptr, ptr)>
    %24 = "llvm.insertvalue"(%23, %4) <{position = array<i64: 2>}> : (!llvm.struct<"struct.KernelEnvironmentTy", (struct<"struct.ConfigurationEnvironmentTy", (i8, i8, i8, i32, i32, i32, i32, i32, i32)>, ptr, ptr)>, !llvm.ptr) -> !llvm.struct<"struct.KernelEnvironmentTy", (struct<"struct.ConfigurationEnvironmentTy", (i8, i8, i8, i32, i32, i32, i32, i32, i32)>, ptr, ptr)>
    "llvm.return"(%24) : (!llvm.struct<"struct.KernelEnvironmentTy", (struct<"struct.ConfigurationEnvironmentTy", (i8, i8, i8, i32, i32, i32, i32, i32, i32)>, ptr, ptr)>) -> ()
  }) : () -> ()
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<warning, "Debug Info Version", 3 : i32>]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (i1)>, linkage = #llvm.linkage<external>, sym_name = "target_if_variable", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: i1):
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<spir_kernelcc>, dso_local, function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<weak_odr>, passthrough = [["nvvm.maxntid", "256"], ["omp_target_thread_limit", "256"]], sym_name = "__omp_offloading_10302_7285737_target_if_variable_l7", unnamed_addr = 0 : i64, visibility_ = 2 : i64}> ({
  ^bb0(%arg0: !llvm.ptr):
    %0 = "llvm.mlir.addressof"() <{global_name = @__omp_offloading_10302_7285737_target_if_variable_l7_kernel_environment}> : () -> !llvm.ptr
    %1 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %2 = "llvm.call"(%0, %arg0) <{CConv = #llvm.cconv<spir_funccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_target_init, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (!llvm.ptr, !llvm.ptr) -> i32
    %3 = "llvm.icmp"(%2, %1) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%3)[^bb1, ^bb6] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // pred: ^bb1
    "llvm.br"()[^bb3] : () -> ()
  ^bb3:  // pred: ^bb2
    "llvm.br"()[^bb4] : () -> ()
  ^bb4:  // pred: ^bb3
    "llvm.br"()[^bb5] : () -> ()
  ^bb5:  // pred: ^bb4
    "llvm.call"() <{CConv = #llvm.cconv<spir_funccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_target_deinit, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> ()
    "llvm.return"() : () -> ()
  ^bb6:  // pred: ^bb0
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<spir_funccc>, function_type = !llvm.func<i32 (ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "__kmpc_target_init", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<spir_funccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, sym_name = "__kmpc_target_deinit", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = "spirv64-intel"} : () -> ()

