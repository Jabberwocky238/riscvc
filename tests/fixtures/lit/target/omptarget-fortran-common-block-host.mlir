"builtin.module"() ({
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 4 : i64, global_type = !llvm.array<8 x i8>, linkage = #llvm.linkage<common>, sym_name = "var_common_", unnamed_addr = 0 : i64, value = dense<0> : tensor<8xi8>, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 1 : i64, constant, dso_local, global_type = !llvm.array<82 x i8>, linkage = #llvm.linkage<private>, sym_name = "mlir.llvm.nameless_global_0", unnamed_addr = 2 : i64, value = ";tests/fixtures/lit/target/omptarget-fortran-common-block-host.in;unknown;15;10;;\00", visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 1 : i64, constant, dso_local, global_type = !llvm.array<82 x i8>, linkage = #llvm.linkage<private>, sym_name = "mlir.llvm.nameless_global_1", unnamed_addr = 2 : i64, value = ";tests/fixtures/lit/target/omptarget-fortran-common-block-host.in;unknown;16;10;;\00", visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, constant, global_type = i8, linkage = #llvm.linkage<weak>, sym_name = ".__omp_offloading_10302_72856c7_omp_map_common_block_using_common_block_members_l17.region_id", unnamed_addr = 0 : i64, value = 0 : i8, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, constant, dso_local, global_type = !llvm.array<2 x i64>, linkage = #llvm.linkage<private>, sym_name = ".offload_sizes", unnamed_addr = 2 : i64, value = dense<4> : tensor<2xi64>, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, constant, dso_local, global_type = !llvm.array<2 x i64>, linkage = #llvm.linkage<private>, sym_name = ".offload_maptypes", unnamed_addr = 2 : i64, value = dense<35> : tensor<2xi64>, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, constant, dso_local, global_type = !llvm.array<2 x ptr>, linkage = #llvm.linkage<private>, sym_name = ".offload_mapnames", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %149 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_1}> : () -> !llvm.ptr
    %150 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_0}> : () -> !llvm.ptr
    %151 = "llvm.mlir.undef"() : () -> !llvm.array<2 x ptr>
    %152 = "llvm.insertvalue"(%151, %150) <{position = array<i64: 0>}> : (!llvm.array<2 x ptr>, !llvm.ptr) -> !llvm.array<2 x ptr>
    %153 = "llvm.insertvalue"(%152, %149) <{position = array<i64: 1>}> : (!llvm.array<2 x ptr>, !llvm.ptr) -> !llvm.array<2 x ptr>
    "llvm.return"(%153) : (!llvm.array<2 x ptr>) -> ()
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 1 : i64, constant, dso_local, global_type = !llvm.array<23 x i8>, linkage = #llvm.linkage<private>, sym_name = "mlir.llvm.nameless_global_2", unnamed_addr = 2 : i64, value = ";unknown;unknown;0;0;;\00", visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 8 : i64, constant, dso_local, global_type = !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, linkage = #llvm.linkage<private>, sym_name = "mlir.llvm.nameless_global_3", unnamed_addr = 2 : i64, visibility_ = 0 : i64}> ({
    %139 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_2}> : () -> !llvm.ptr
    %140 = "llvm.mlir.constant"() <{value = 22 : i32}> : () -> i32
    %141 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %142 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %143 = "llvm.mlir.undef"() : () -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %144 = "llvm.insertvalue"(%143, %141) <{position = array<i64: 0>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %145 = "llvm.insertvalue"(%144, %142) <{position = array<i64: 1>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %146 = "llvm.insertvalue"(%145, %141) <{position = array<i64: 2>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %147 = "llvm.insertvalue"(%146, %140) <{position = array<i64: 3>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %148 = "llvm.insertvalue"(%147, %139) <{position = array<i64: 4>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, !llvm.ptr) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    "llvm.return"(%148) : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>) -> ()
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 1 : i64, constant, dso_local, global_type = !llvm.array<82 x i8>, linkage = #llvm.linkage<private>, sym_name = "mlir.llvm.nameless_global_4", unnamed_addr = 2 : i64, value = ";tests/fixtures/lit/target/omptarget-fortran-common-block-host.in;unknown;25;10;;\00", visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, constant, global_type = i8, linkage = #llvm.linkage<weak>, sym_name = ".__omp_offloading_10302_72856c7_omp_map_common_block_using_common_block_symbol_l26.region_id", unnamed_addr = 0 : i64, value = 0 : i8, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, constant, dso_local, global_type = !llvm.array<1 x i64>, linkage = #llvm.linkage<private>, sym_name = ".offload_sizes.1", unnamed_addr = 2 : i64, value = dense<8> : tensor<1xi64>, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, constant, dso_local, global_type = !llvm.array<1 x i64>, linkage = #llvm.linkage<private>, sym_name = ".offload_maptypes.2", unnamed_addr = 2 : i64, value = dense<35> : tensor<1xi64>, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, constant, dso_local, global_type = !llvm.array<1 x ptr>, linkage = #llvm.linkage<private>, sym_name = ".offload_mapnames.3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %136 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_4}> : () -> !llvm.ptr
    %137 = "llvm.mlir.undef"() : () -> !llvm.array<1 x ptr>
    %138 = "llvm.insertvalue"(%137, %136) <{position = array<i64: 0>}> : (!llvm.array<1 x ptr>, !llvm.ptr) -> !llvm.array<1 x ptr>
    "llvm.return"(%138) : (!llvm.array<1 x ptr>) -> ()
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 1 : i64, constant, dso_local, global_type = !llvm.array<83 x i8>, linkage = #llvm.linkage<internal>, section = ".llvm.rodata.offloading", sym_name = ".offloading.entry_name", unnamed_addr = 2 : i64, value = "__omp_offloading_10302_72856c7_omp_map_common_block_using_common_block_members_l17\00", visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 8 : i64, constant, global_type = !llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>, linkage = #llvm.linkage<weak>, section = "llvm_offload_entries", sym_name = ".offloading.entry.__omp_offloading_10302_72856c7_omp_map_common_block_using_common_block_members_l17", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %120 = "llvm.mlir.zero"() : () -> !llvm.ptr
    %121 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %122 = "llvm.mlir.addressof"() <{global_name = @".offloading.entry_name"}> : () -> !llvm.ptr
    %123 = "llvm.mlir.addressof"() <{global_name = @".__omp_offloading_10302_72856c7_omp_map_common_block_using_common_block_members_l17.region_id"}> : () -> !llvm.ptr
    %124 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %125 = "llvm.mlir.constant"() <{value = 1 : i16}> : () -> i16
    %126 = "llvm.mlir.undef"() : () -> !llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>
    %127 = "llvm.insertvalue"(%126, %121) <{position = array<i64: 0>}> : (!llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>, i64) -> !llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>
    %128 = "llvm.insertvalue"(%127, %125) <{position = array<i64: 1>}> : (!llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>, i16) -> !llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>
    %129 = "llvm.insertvalue"(%128, %125) <{position = array<i64: 2>}> : (!llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>, i16) -> !llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>
    %130 = "llvm.insertvalue"(%129, %124) <{position = array<i64: 3>}> : (!llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>, i32) -> !llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>
    %131 = "llvm.insertvalue"(%130, %123) <{position = array<i64: 4>}> : (!llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>, !llvm.ptr) -> !llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>
    %132 = "llvm.insertvalue"(%131, %122) <{position = array<i64: 5>}> : (!llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>, !llvm.ptr) -> !llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>
    %133 = "llvm.insertvalue"(%132, %121) <{position = array<i64: 6>}> : (!llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>, i64) -> !llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>
    %134 = "llvm.insertvalue"(%133, %121) <{position = array<i64: 7>}> : (!llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>, i64) -> !llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>
    %135 = "llvm.insertvalue"(%134, %120) <{position = array<i64: 8>}> : (!llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>, !llvm.ptr) -> !llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>
    "llvm.return"(%135) : (!llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>) -> ()
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 1 : i64, constant, dso_local, global_type = !llvm.array<82 x i8>, linkage = #llvm.linkage<internal>, section = ".llvm.rodata.offloading", sym_name = ".offloading.entry_name.4", unnamed_addr = 2 : i64, value = "__omp_offloading_10302_72856c7_omp_map_common_block_using_common_block_symbol_l26\00", visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 8 : i64, constant, global_type = !llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>, linkage = #llvm.linkage<weak>, section = "llvm_offload_entries", sym_name = ".offloading.entry.__omp_offloading_10302_72856c7_omp_map_common_block_using_common_block_symbol_l26", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %104 = "llvm.mlir.zero"() : () -> !llvm.ptr
    %105 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %106 = "llvm.mlir.addressof"() <{global_name = @".offloading.entry_name.4"}> : () -> !llvm.ptr
    %107 = "llvm.mlir.addressof"() <{global_name = @".__omp_offloading_10302_72856c7_omp_map_common_block_using_common_block_symbol_l26.region_id"}> : () -> !llvm.ptr
    %108 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %109 = "llvm.mlir.constant"() <{value = 1 : i16}> : () -> i16
    %110 = "llvm.mlir.undef"() : () -> !llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>
    %111 = "llvm.insertvalue"(%110, %105) <{position = array<i64: 0>}> : (!llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>, i64) -> !llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>
    %112 = "llvm.insertvalue"(%111, %109) <{position = array<i64: 1>}> : (!llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>, i16) -> !llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>
    %113 = "llvm.insertvalue"(%112, %109) <{position = array<i64: 2>}> : (!llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>, i16) -> !llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>
    %114 = "llvm.insertvalue"(%113, %108) <{position = array<i64: 3>}> : (!llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>, i32) -> !llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>
    %115 = "llvm.insertvalue"(%114, %107) <{position = array<i64: 4>}> : (!llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>, !llvm.ptr) -> !llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>
    %116 = "llvm.insertvalue"(%115, %106) <{position = array<i64: 5>}> : (!llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>, !llvm.ptr) -> !llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>
    %117 = "llvm.insertvalue"(%116, %105) <{position = array<i64: 6>}> : (!llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>, i64) -> !llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>
    %118 = "llvm.insertvalue"(%117, %105) <{position = array<i64: 7>}> : (!llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>, i64) -> !llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>
    %119 = "llvm.insertvalue"(%118, %104) <{position = array<i64: 8>}> : (!llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>, !llvm.ptr) -> !llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>
    "llvm.return"(%119) : (!llvm.struct<"struct.__tgt_offload_entry", (i64, i16, i16, i32, ptr, ptr, i64, i64, ptr)>) -> ()
  }) : () -> ()
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<warning, "Debug Info Version", 3 : i32>]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, sym_name = "omp_map_common_block_using_common_block_members", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %49 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %50 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %51 = "llvm.mlir.addressof"() <{global_name = @var_common_}> : () -> !llvm.ptr
    %52 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %53 = "llvm.mlir.zero"() : () -> !llvm.ptr
    %54 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %55 = "llvm.getelementptr"(%51, %54) <{elem_type = i8, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %56 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %57 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %58 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %59 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %60 = "llvm.mlir.addressof"() <{global_name = @".offload_sizes"}> : () -> !llvm.ptr
    %61 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %62 = "llvm.mlir.addressof"() <{global_name = @".offload_maptypes"}> : () -> !llvm.ptr
    %63 = "llvm.mlir.constant"() <{value = 6 : i32}> : () -> i32
    %64 = "llvm.mlir.addressof"() <{global_name = @".offload_mapnames"}> : () -> !llvm.ptr
    %65 = "llvm.mlir.constant"() <{value = 7 : i32}> : () -> i32
    %66 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %67 = "llvm.mlir.constant"() <{value = 9 : i32}> : () -> i32
    %68 = "llvm.mlir.constant"() <{value = 10 : i32}> : () -> i32
    %69 = "llvm.mlir.constant"() <{value = dense<[-1, 0, 0]> : tensor<3xi32>}> : () -> !llvm.array<3 x i32>
    %70 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %71 = "llvm.mlir.constant"() <{value = dense<0> : tensor<3xi32>}> : () -> !llvm.array<3 x i32>
    %72 = "llvm.mlir.constant"() <{value = 12 : i32}> : () -> i32
    %73 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_3}> : () -> !llvm.ptr
    %74 = "llvm.mlir.constant"() <{value = -1 : i64}> : () -> i64
    %75 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %76 = "llvm.mlir.addressof"() <{global_name = @".__omp_offloading_10302_72856c7_omp_map_common_block_using_common_block_members_l17.region_id"}> : () -> !llvm.ptr
    %77 = "llvm.alloca"(%49) <{alignment = 8 : i64, elem_type = !llvm.array<2 x ptr>}> : (i32) -> !llvm.ptr
    %78 = "llvm.alloca"(%49) <{alignment = 8 : i64, elem_type = !llvm.array<2 x ptr>}> : (i32) -> !llvm.ptr
    %79 = "llvm.alloca"(%49) <{alignment = 8 : i64, elem_type = !llvm.array<2 x ptr>}> : (i32) -> !llvm.ptr
    %80 = "llvm.alloca"(%49) <{alignment = 8 : i64, elem_type = !llvm.struct<"struct.__tgt_kernel_arguments", (i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, array<3 x i32>, array<3 x i32>, i32)>}> : (i32) -> !llvm.ptr
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    %81 = "llvm.getelementptr"(%77, %50, %50) <{elem_type = !llvm.array<2 x ptr>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    "llvm.store"(%51, %81) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %82 = "llvm.getelementptr"(%78, %50, %50) <{elem_type = !llvm.array<2 x ptr>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    "llvm.store"(%51, %82) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %83 = "llvm.getelementptr"(%79, %52, %52) <{elem_type = !llvm.array<2 x ptr>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i64) -> !llvm.ptr
    "llvm.store"(%53, %83) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %84 = "llvm.getelementptr"(%77, %50, %49) <{elem_type = !llvm.array<2 x ptr>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    "llvm.store"(%55, %84) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %85 = "llvm.getelementptr"(%78, %50, %49) <{elem_type = !llvm.array<2 x ptr>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    "llvm.store"(%55, %85) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %86 = "llvm.getelementptr"(%79, %52, %56) <{elem_type = !llvm.array<2 x ptr>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i64) -> !llvm.ptr
    "llvm.store"(%53, %86) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %87 = "llvm.getelementptr"(%77, %50, %50) <{elem_type = !llvm.array<2 x ptr>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    %88 = "llvm.getelementptr"(%78, %50, %50) <{elem_type = !llvm.array<2 x ptr>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    %89 = "llvm.getelementptr"(%80, %50) <{elem_type = !llvm.struct<"struct.__tgt_kernel_arguments", (i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, array<3 x i32>, array<3 x i32>, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%57, %89) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %90 = "llvm.getelementptr"(%80, %50) <{elem_type = !llvm.struct<"struct.__tgt_kernel_arguments", (i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, array<3 x i32>, array<3 x i32>, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%58, %90) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %91 = "llvm.getelementptr"(%80, %50) <{elem_type = !llvm.struct<"struct.__tgt_kernel_arguments", (i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, array<3 x i32>, array<3 x i32>, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 2>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%87, %91) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %92 = "llvm.getelementptr"(%80, %50) <{elem_type = !llvm.struct<"struct.__tgt_kernel_arguments", (i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, array<3 x i32>, array<3 x i32>, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 3>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%88, %92) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %93 = "llvm.getelementptr"(%80, %50) <{elem_type = !llvm.struct<"struct.__tgt_kernel_arguments", (i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, array<3 x i32>, array<3 x i32>, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 4>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%60, %93) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %94 = "llvm.getelementptr"(%80, %50) <{elem_type = !llvm.struct<"struct.__tgt_kernel_arguments", (i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, array<3 x i32>, array<3 x i32>, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 5>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%62, %94) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %95 = "llvm.getelementptr"(%80, %50) <{elem_type = !llvm.struct<"struct.__tgt_kernel_arguments", (i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, array<3 x i32>, array<3 x i32>, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 6>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%64, %95) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %96 = "llvm.getelementptr"(%80, %50) <{elem_type = !llvm.struct<"struct.__tgt_kernel_arguments", (i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, array<3 x i32>, array<3 x i32>, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 7>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%53, %96) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %97 = "llvm.getelementptr"(%80, %50) <{elem_type = !llvm.struct<"struct.__tgt_kernel_arguments", (i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, array<3 x i32>, array<3 x i32>, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 8>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%52, %97) <{alignment = 8 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %98 = "llvm.getelementptr"(%80, %50) <{elem_type = !llvm.struct<"struct.__tgt_kernel_arguments", (i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, array<3 x i32>, array<3 x i32>, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 9>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%52, %98) <{alignment = 8 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %99 = "llvm.getelementptr"(%80, %50) <{elem_type = !llvm.struct<"struct.__tgt_kernel_arguments", (i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, array<3 x i32>, array<3 x i32>, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 10>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%69, %99) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.array<3 x i32>, !llvm.ptr) -> ()
    %100 = "llvm.getelementptr"(%80, %50) <{elem_type = !llvm.struct<"struct.__tgt_kernel_arguments", (i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, array<3 x i32>, array<3 x i32>, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 11>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%71, %100) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.array<3 x i32>, !llvm.ptr) -> ()
    %101 = "llvm.getelementptr"(%80, %50) <{elem_type = !llvm.struct<"struct.__tgt_kernel_arguments", (i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, array<3 x i32>, array<3 x i32>, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 12>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%50, %101) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %102 = "llvm.call"(%73, %74, %75, %50, %76, %80) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__tgt_target_kernel, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 6, 0>}> : (!llvm.ptr, i64, i32, i32, !llvm.ptr, !llvm.ptr) -> i32
    %103 = "llvm.icmp"(%102, %50) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%103)[^bb2, ^bb3] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb2:  // pred: ^bb1
    "llvm.call"(%51, %55) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__omp_offloading_10302_72856c7_omp_map_common_block_using_common_block_members_l17, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (!llvm.ptr, !llvm.ptr) -> ()
    "llvm.br"()[^bb3] : () -> ()
  ^bb3:  // 2 preds: ^bb1, ^bb2
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, sym_name = "omp_map_common_block_using_common_block_symbol", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %0 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %2 = "llvm.mlir.addressof"() <{global_name = @var_common_}> : () -> !llvm.ptr
    %3 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %4 = "llvm.mlir.zero"() : () -> !llvm.ptr
    %5 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %6 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %7 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %8 = "llvm.mlir.addressof"() <{global_name = @".offload_sizes.1"}> : () -> !llvm.ptr
    %9 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %10 = "llvm.mlir.addressof"() <{global_name = @".offload_maptypes.2"}> : () -> !llvm.ptr
    %11 = "llvm.mlir.constant"() <{value = 6 : i32}> : () -> i32
    %12 = "llvm.mlir.addressof"() <{global_name = @".offload_mapnames.3"}> : () -> !llvm.ptr
    %13 = "llvm.mlir.constant"() <{value = 7 : i32}> : () -> i32
    %14 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %15 = "llvm.mlir.constant"() <{value = 9 : i32}> : () -> i32
    %16 = "llvm.mlir.constant"() <{value = 10 : i32}> : () -> i32
    %17 = "llvm.mlir.constant"() <{value = dense<[-1, 0, 0]> : tensor<3xi32>}> : () -> !llvm.array<3 x i32>
    %18 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %19 = "llvm.mlir.constant"() <{value = dense<0> : tensor<3xi32>}> : () -> !llvm.array<3 x i32>
    %20 = "llvm.mlir.constant"() <{value = 12 : i32}> : () -> i32
    %21 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_3}> : () -> !llvm.ptr
    %22 = "llvm.mlir.constant"() <{value = -1 : i64}> : () -> i64
    %23 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %24 = "llvm.mlir.addressof"() <{global_name = @".__omp_offloading_10302_72856c7_omp_map_common_block_using_common_block_symbol_l26.region_id"}> : () -> !llvm.ptr
    %25 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = !llvm.array<1 x ptr>}> : (i32) -> !llvm.ptr
    %26 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = !llvm.array<1 x ptr>}> : (i32) -> !llvm.ptr
    %27 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = !llvm.array<1 x ptr>}> : (i32) -> !llvm.ptr
    %28 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = !llvm.struct<"struct.__tgt_kernel_arguments", (i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, array<3 x i32>, array<3 x i32>, i32)>}> : (i32) -> !llvm.ptr
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    %29 = "llvm.getelementptr"(%25, %1, %1) <{elem_type = !llvm.array<1 x ptr>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    "llvm.store"(%2, %29) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %30 = "llvm.getelementptr"(%26, %1, %1) <{elem_type = !llvm.array<1 x ptr>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    "llvm.store"(%2, %30) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %31 = "llvm.getelementptr"(%27, %3, %3) <{elem_type = !llvm.array<1 x ptr>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i64) -> !llvm.ptr
    "llvm.store"(%4, %31) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %32 = "llvm.getelementptr"(%25, %1, %1) <{elem_type = !llvm.array<1 x ptr>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    %33 = "llvm.getelementptr"(%26, %1, %1) <{elem_type = !llvm.array<1 x ptr>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    %34 = "llvm.getelementptr"(%28, %1) <{elem_type = !llvm.struct<"struct.__tgt_kernel_arguments", (i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, array<3 x i32>, array<3 x i32>, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%5, %34) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %35 = "llvm.getelementptr"(%28, %1) <{elem_type = !llvm.struct<"struct.__tgt_kernel_arguments", (i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, array<3 x i32>, array<3 x i32>, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%0, %35) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %36 = "llvm.getelementptr"(%28, %1) <{elem_type = !llvm.struct<"struct.__tgt_kernel_arguments", (i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, array<3 x i32>, array<3 x i32>, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 2>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%32, %36) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %37 = "llvm.getelementptr"(%28, %1) <{elem_type = !llvm.struct<"struct.__tgt_kernel_arguments", (i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, array<3 x i32>, array<3 x i32>, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 3>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%33, %37) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %38 = "llvm.getelementptr"(%28, %1) <{elem_type = !llvm.struct<"struct.__tgt_kernel_arguments", (i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, array<3 x i32>, array<3 x i32>, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 4>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%8, %38) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %39 = "llvm.getelementptr"(%28, %1) <{elem_type = !llvm.struct<"struct.__tgt_kernel_arguments", (i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, array<3 x i32>, array<3 x i32>, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 5>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%10, %39) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %40 = "llvm.getelementptr"(%28, %1) <{elem_type = !llvm.struct<"struct.__tgt_kernel_arguments", (i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, array<3 x i32>, array<3 x i32>, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 6>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%12, %40) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %41 = "llvm.getelementptr"(%28, %1) <{elem_type = !llvm.struct<"struct.__tgt_kernel_arguments", (i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, array<3 x i32>, array<3 x i32>, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 7>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%4, %41) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %42 = "llvm.getelementptr"(%28, %1) <{elem_type = !llvm.struct<"struct.__tgt_kernel_arguments", (i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, array<3 x i32>, array<3 x i32>, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 8>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%3, %42) <{alignment = 8 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %43 = "llvm.getelementptr"(%28, %1) <{elem_type = !llvm.struct<"struct.__tgt_kernel_arguments", (i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, array<3 x i32>, array<3 x i32>, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 9>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%3, %43) <{alignment = 8 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %44 = "llvm.getelementptr"(%28, %1) <{elem_type = !llvm.struct<"struct.__tgt_kernel_arguments", (i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, array<3 x i32>, array<3 x i32>, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 10>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%17, %44) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.array<3 x i32>, !llvm.ptr) -> ()
    %45 = "llvm.getelementptr"(%28, %1) <{elem_type = !llvm.struct<"struct.__tgt_kernel_arguments", (i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, array<3 x i32>, array<3 x i32>, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 11>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%19, %45) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.array<3 x i32>, !llvm.ptr) -> ()
    %46 = "llvm.getelementptr"(%28, %1) <{elem_type = !llvm.struct<"struct.__tgt_kernel_arguments", (i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, array<3 x i32>, array<3 x i32>, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 12>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%1, %46) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %47 = "llvm.call"(%21, %22, %23, %1, %24, %28) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__tgt_target_kernel, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 6, 0>}> : (!llvm.ptr, i64, i32, i32, !llvm.ptr, !llvm.ptr) -> i32
    %48 = "llvm.icmp"(%47, %1) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%48)[^bb2, ^bb3] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb2:  // pred: ^bb1
    "llvm.call"(%2) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__omp_offloading_10302_72856c7_omp_map_common_block_using_common_block_symbol_l26, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> ()
    "llvm.br"()[^bb3] : () -> ()
  ^bb3:  // 2 preds: ^bb1, ^bb2
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<void (ptr, ptr)>, linkage = #llvm.linkage<internal>, sym_name = "__omp_offloading_10302_72856c7_omp_map_common_block_using_common_block_members_l17", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: !llvm.ptr, %arg2: !llvm.ptr):
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
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<internal>, sym_name = "__omp_offloading_10302_72856c7_omp_map_common_block_using_common_block_symbol_l26", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
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
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

