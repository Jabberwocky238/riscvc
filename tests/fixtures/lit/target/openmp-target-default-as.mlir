"builtin.module"() ({
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 1 : i64, constant, dso_local, global_type = !llvm.array<71 x i8>, linkage = #llvm.linkage<private>, sym_name = "mlir.llvm.nameless_global_0", unnamed_addr = 2 : i64, value = ";tests/fixtures/lit/target/openmp-target-default-as.in;unknown;15;12;;\00", visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, constant, dso_local, global_type = i8, linkage = #llvm.linkage<weak>, sym_name = "__omp_offloading_10302_728585d_omp_target_region__l16_exec_mode", unnamed_addr = 0 : i64, value = 1 : i8, visibility_ = 2 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, global_type = !llvm.array<1 x ptr>, linkage = #llvm.linkage<appending>, section = "llvm.metadata", sym_name = "llvm.compiler.used", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %50 = "llvm.mlir.addressof"() <{global_name = @__omp_offloading_10302_728585d_omp_target_region__l16_exec_mode}> : () -> !llvm.ptr
    %51 = "llvm.mlir.undef"() : () -> !llvm.array<1 x ptr>
    %52 = "llvm.insertvalue"(%51, %50) <{position = array<i64: 0>}> : (!llvm.array<1 x ptr>, !llvm.ptr) -> !llvm.array<1 x ptr>
    "llvm.return"(%52) : (!llvm.array<1 x ptr>) -> ()
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 1 : i64, constant, dso_local, global_type = !llvm.array<23 x i8>, linkage = #llvm.linkage<private>, sym_name = "mlir.llvm.nameless_global_1", unnamed_addr = 2 : i64, value = ";unknown;unknown;0;0;;\00", visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 8 : i64, constant, dso_local, global_type = !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr<4>)>, linkage = #llvm.linkage<private>, sym_name = "mlir.llvm.nameless_global_2", unnamed_addr = 2 : i64, visibility_ = 0 : i64}> ({
    %39 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_1}> : () -> !llvm.ptr
    %40 = "llvm.addrspacecast"(%39) : (!llvm.ptr) -> !llvm.ptr<4>
    %41 = "llvm.mlir.constant"() <{value = 22 : i32}> : () -> i32
    %42 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %43 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %44 = "llvm.mlir.undef"() : () -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr<4>)>
    %45 = "llvm.insertvalue"(%44, %42) <{position = array<i64: 0>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr<4>)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr<4>)>
    %46 = "llvm.insertvalue"(%45, %43) <{position = array<i64: 1>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr<4>)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr<4>)>
    %47 = "llvm.insertvalue"(%46, %42) <{position = array<i64: 2>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr<4>)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr<4>)>
    %48 = "llvm.insertvalue"(%47, %41) <{position = array<i64: 3>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr<4>)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr<4>)>
    %49 = "llvm.insertvalue"(%48, %40) <{position = array<i64: 4>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr<4>)>, !llvm.ptr<4>) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr<4>)>
    "llvm.return"(%49) : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr<4>)>) -> ()
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, dso_local, global_type = !llvm.struct<"struct.DynamicEnvironmentTy", (i16)>, linkage = #llvm.linkage<weak_odr>, sym_name = "__omp_offloading_10302_728585d_omp_target_region__l16_dynamic_environment", unnamed_addr = 0 : i64, visibility_ = 2 : i64}> ({
    %37 = "llvm.mlir.constant"() <{value = 0 : i16}> : () -> i16
    %38 = "llvm.mlir.zero"() : () -> !llvm.struct<"struct.DynamicEnvironmentTy", (i16)>
    "llvm.return"(%38) : (!llvm.struct<"struct.DynamicEnvironmentTy", (i16)>) -> ()
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, constant, dso_local, global_type = !llvm.struct<"struct.KernelEnvironmentTy", (struct<"struct.ConfigurationEnvironmentTy", (i8, i8, i8, i32, i32, i32, i32, i32, i32)>, ptr<4>, ptr<4>)>, linkage = #llvm.linkage<weak_odr>, sym_name = "__omp_offloading_10302_728585d_omp_target_region__l16_kernel_environment", unnamed_addr = 0 : i64, visibility_ = 2 : i64}> ({
    %14 = "llvm.mlir.addressof"() <{global_name = @__omp_offloading_10302_728585d_omp_target_region__l16_dynamic_environment}> : () -> !llvm.ptr
    %15 = "llvm.addrspacecast"(%14) : (!llvm.ptr) -> !llvm.ptr<4>
    %16 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_2}> : () -> !llvm.ptr
    %17 = "llvm.addrspacecast"(%16) : (!llvm.ptr) -> !llvm.ptr<4>
    %18 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %19 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %20 = "llvm.mlir.constant"() <{value = 256 : i32}> : () -> i32
    %21 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %22 = "llvm.mlir.constant"() <{value = 1 : i8}> : () -> i8
    %23 = "llvm.mlir.undef"() : () -> !llvm.struct<"struct.ConfigurationEnvironmentTy", (i8, i8, i8, i32, i32, i32, i32, i32, i32)>
    %24 = "llvm.insertvalue"(%23, %22) <{position = array<i64: 0>}> : (!llvm.struct<"struct.ConfigurationEnvironmentTy", (i8, i8, i8, i32, i32, i32, i32, i32, i32)>, i8) -> !llvm.struct<"struct.ConfigurationEnvironmentTy", (i8, i8, i8, i32, i32, i32, i32, i32, i32)>
    %25 = "llvm.insertvalue"(%24, %22) <{position = array<i64: 1>}> : (!llvm.struct<"struct.ConfigurationEnvironmentTy", (i8, i8, i8, i32, i32, i32, i32, i32, i32)>, i8) -> !llvm.struct<"struct.ConfigurationEnvironmentTy", (i8, i8, i8, i32, i32, i32, i32, i32, i32)>
    %26 = "llvm.insertvalue"(%25, %22) <{position = array<i64: 2>}> : (!llvm.struct<"struct.ConfigurationEnvironmentTy", (i8, i8, i8, i32, i32, i32, i32, i32, i32)>, i8) -> !llvm.struct<"struct.ConfigurationEnvironmentTy", (i8, i8, i8, i32, i32, i32, i32, i32, i32)>
    %27 = "llvm.insertvalue"(%26, %21) <{position = array<i64: 3>}> : (!llvm.struct<"struct.ConfigurationEnvironmentTy", (i8, i8, i8, i32, i32, i32, i32, i32, i32)>, i32) -> !llvm.struct<"struct.ConfigurationEnvironmentTy", (i8, i8, i8, i32, i32, i32, i32, i32, i32)>
    %28 = "llvm.insertvalue"(%27, %20) <{position = array<i64: 4>}> : (!llvm.struct<"struct.ConfigurationEnvironmentTy", (i8, i8, i8, i32, i32, i32, i32, i32, i32)>, i32) -> !llvm.struct<"struct.ConfigurationEnvironmentTy", (i8, i8, i8, i32, i32, i32, i32, i32, i32)>
    %29 = "llvm.insertvalue"(%28, %19) <{position = array<i64: 5>}> : (!llvm.struct<"struct.ConfigurationEnvironmentTy", (i8, i8, i8, i32, i32, i32, i32, i32, i32)>, i32) -> !llvm.struct<"struct.ConfigurationEnvironmentTy", (i8, i8, i8, i32, i32, i32, i32, i32, i32)>
    %30 = "llvm.insertvalue"(%29, %19) <{position = array<i64: 6>}> : (!llvm.struct<"struct.ConfigurationEnvironmentTy", (i8, i8, i8, i32, i32, i32, i32, i32, i32)>, i32) -> !llvm.struct<"struct.ConfigurationEnvironmentTy", (i8, i8, i8, i32, i32, i32, i32, i32, i32)>
    %31 = "llvm.insertvalue"(%30, %18) <{position = array<i64: 7>}> : (!llvm.struct<"struct.ConfigurationEnvironmentTy", (i8, i8, i8, i32, i32, i32, i32, i32, i32)>, i32) -> !llvm.struct<"struct.ConfigurationEnvironmentTy", (i8, i8, i8, i32, i32, i32, i32, i32, i32)>
    %32 = "llvm.insertvalue"(%31, %18) <{position = array<i64: 8>}> : (!llvm.struct<"struct.ConfigurationEnvironmentTy", (i8, i8, i8, i32, i32, i32, i32, i32, i32)>, i32) -> !llvm.struct<"struct.ConfigurationEnvironmentTy", (i8, i8, i8, i32, i32, i32, i32, i32, i32)>
    %33 = "llvm.mlir.undef"() : () -> !llvm.struct<"struct.KernelEnvironmentTy", (struct<"struct.ConfigurationEnvironmentTy", (i8, i8, i8, i32, i32, i32, i32, i32, i32)>, ptr<4>, ptr<4>)>
    %34 = "llvm.insertvalue"(%33, %32) <{position = array<i64: 0>}> : (!llvm.struct<"struct.KernelEnvironmentTy", (struct<"struct.ConfigurationEnvironmentTy", (i8, i8, i8, i32, i32, i32, i32, i32, i32)>, ptr<4>, ptr<4>)>, !llvm.struct<"struct.ConfigurationEnvironmentTy", (i8, i8, i8, i32, i32, i32, i32, i32, i32)>) -> !llvm.struct<"struct.KernelEnvironmentTy", (struct<"struct.ConfigurationEnvironmentTy", (i8, i8, i8, i32, i32, i32, i32, i32, i32)>, ptr<4>, ptr<4>)>
    %35 = "llvm.insertvalue"(%34, %17) <{position = array<i64: 1>}> : (!llvm.struct<"struct.KernelEnvironmentTy", (struct<"struct.ConfigurationEnvironmentTy", (i8, i8, i8, i32, i32, i32, i32, i32, i32)>, ptr<4>, ptr<4>)>, !llvm.ptr<4>) -> !llvm.struct<"struct.KernelEnvironmentTy", (struct<"struct.ConfigurationEnvironmentTy", (i8, i8, i8, i32, i32, i32, i32, i32, i32)>, ptr<4>, ptr<4>)>
    %36 = "llvm.insertvalue"(%35, %15) <{position = array<i64: 2>}> : (!llvm.struct<"struct.KernelEnvironmentTy", (struct<"struct.ConfigurationEnvironmentTy", (i8, i8, i8, i32, i32, i32, i32, i32, i32)>, ptr<4>, ptr<4>)>, !llvm.ptr<4>) -> !llvm.struct<"struct.KernelEnvironmentTy", (struct<"struct.ConfigurationEnvironmentTy", (i8, i8, i8, i32, i32, i32, i32, i32, i32)>, ptr<4>, ptr<4>)>
    "llvm.return"(%36) : (!llvm.struct<"struct.KernelEnvironmentTy", (struct<"struct.ConfigurationEnvironmentTy", (i8, i8, i8, i32, i32, i32, i32, i32, i32)>, ptr<4>, ptr<4>)>) -> ()
  }) : () -> ()
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<warning, "Debug Info Version", 3 : i32>]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, sym_name = "omp_target_region_", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %10 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %11 = "llvm.mlir.constant"() <{value = 10 : i32}> : () -> i32
    %12 = "llvm.alloca"(%10) <{alignment = 4 : i64, elem_type = i32}> : (i64) -> !llvm.ptr<5>
    %13 = "llvm.addrspacecast"(%12) : (!llvm.ptr<5>) -> !llvm.ptr
    "llvm.store"(%11, %13) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<spir_kernelcc>, dso_local, function_type = !llvm.func<void (ptr, ptr)>, linkage = #llvm.linkage<weak_odr>, passthrough = [["nvvm.maxntid", "256"], ["omp_target_thread_limit", "256"]], sym_name = "__omp_offloading_10302_728585d_omp_target_region__l16", unnamed_addr = 0 : i64, visibility_ = 2 : i64}> ({
  ^bb0(%arg0: !llvm.ptr, %arg1: !llvm.ptr):
    %0 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "llvm.mlir.addressof"() <{global_name = @__omp_offloading_10302_728585d_omp_target_region__l16_kernel_environment}> : () -> !llvm.ptr
    %2 = "llvm.addrspacecast"(%1) : (!llvm.ptr) -> !llvm.ptr<4>
    %3 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %4 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = !llvm.ptr}> : (i32) -> !llvm.ptr
    %5 = "llvm.addrspacecast"(%4) : (!llvm.ptr) -> !llvm.ptr<4>
    "llvm.store"(%arg1, %5) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr<4>) -> ()
    %6 = "llvm.addrspacecast"(%arg0) : (!llvm.ptr) -> !llvm.ptr<4>
    %7 = "llvm.call"(%2, %6) <{CConv = #llvm.cconv<spir_funccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_target_init, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (!llvm.ptr<4>, !llvm.ptr<4>) -> i32
    %8 = "llvm.icmp"(%7, %3) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%8)[^bb1, ^bb6] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %9 = "llvm.load"(%5) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr<4>) -> !llvm.ptr<4>
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
  "llvm.func"() <{CConv = #llvm.cconv<spir_funccc>, function_type = !llvm.func<i32 (ptr<4>, ptr<4>)>, linkage = #llvm.linkage<external>, sym_name = "__kmpc_target_init", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<spir_funccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, sym_name = "__kmpc_target_deinit", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.program_memory_space" = 4 : ui64, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = "spirv64-intel"} : () -> ()

