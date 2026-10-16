"builtin.module"() ({
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 1 : i64, constant, dso_local, global_type = !llvm.array<23 x i8>, linkage = #llvm.linkage<private>, sym_name = "mlir.llvm.nameless_global_0", unnamed_addr = 2 : i64, value = ";unknown;unknown;0;0;;\00", visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 8 : i64, constant, dso_local, global_type = !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, linkage = #llvm.linkage<private>, sym_name = "mlir.llvm.nameless_global_1", unnamed_addr = 2 : i64, visibility_ = 0 : i64}> ({
    %169 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_0}> : () -> !llvm.ptr
    %170 = "llvm.mlir.constant"() <{value = 22 : i32}> : () -> i32
    %171 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %172 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %173 = "llvm.mlir.undef"() : () -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %174 = "llvm.insertvalue"(%173, %171) <{position = array<i64: 0>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %175 = "llvm.insertvalue"(%174, %172) <{position = array<i64: 1>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %176 = "llvm.insertvalue"(%175, %171) <{position = array<i64: 2>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %177 = "llvm.insertvalue"(%176, %170) <{position = array<i64: 3>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %178 = "llvm.insertvalue"(%177, %169) <{position = array<i64: 4>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, !llvm.ptr) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    "llvm.return"(%178) : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>) -> ()
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 8 : i64, constant, dso_local, global_type = !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, linkage = #llvm.linkage<private>, sym_name = "mlir.llvm.nameless_global_2", unnamed_addr = 2 : i64, visibility_ = 0 : i64}> ({
    %159 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_0}> : () -> !llvm.ptr
    %160 = "llvm.mlir.constant"() <{value = 22 : i32}> : () -> i32
    %161 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %162 = "llvm.mlir.constant"() <{value = 66 : i32}> : () -> i32
    %163 = "llvm.mlir.undef"() : () -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %164 = "llvm.insertvalue"(%163, %161) <{position = array<i64: 0>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %165 = "llvm.insertvalue"(%164, %162) <{position = array<i64: 1>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %166 = "llvm.insertvalue"(%165, %161) <{position = array<i64: 2>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %167 = "llvm.insertvalue"(%166, %160) <{position = array<i64: 3>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %168 = "llvm.insertvalue"(%167, %159) <{position = array<i64: 4>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, !llvm.ptr) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    "llvm.return"(%168) : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>) -> ()
  }) : () -> ()
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<warning, "Debug Info Version", 3 : i32>]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "distribute_wsloop_schedule_chunked", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg15: i32, %arg16: i32, %arg17: i32):
    %152 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %153 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_1}> : () -> !llvm.ptr
    %154 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %155 = "llvm.mlir.addressof"() <{global_name = @distribute_wsloop_schedule_chunked..omp_par.1}> : () -> !llvm.ptr
    %156 = "llvm.alloca"(%152) <{alignment = 8 : i64, elem_type = !llvm.struct<(i32)>}> : (i32) -> !llvm.ptr
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    %157 = "llvm.call"(%153) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_global_thread_num, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> i32
    "llvm.call"(%153, %157, %arg16, %arg16, %arg17) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_push_num_teams_51, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 5, 0>}> : (!llvm.ptr, i32, i32, i32, i32) -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // pred: ^bb1
    %158 = "llvm.getelementptr"(%156, %154) <{elem_type = !llvm.struct<(i32)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%arg15, %158) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.call"(%153, %152, %155, %156) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_fork_teams, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>, var_callee_type = !llvm.func<void (ptr, i32, ptr, ...)>}> : (!llvm.ptr, i32, !llvm.ptr, !llvm.ptr) -> ()
    "llvm.br"()[^bb3] : () -> ()
  ^bb3:  // pred: ^bb2
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<internal>, sym_name = "distribute_wsloop_schedule_chunked..omp_par.1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: !llvm.ptr, %arg13: !llvm.ptr, %arg14: !llvm.ptr):
    %142 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %143 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %144 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_1}> : () -> !llvm.ptr
    %145 = "llvm.mlir.addressof"() <{global_name = @distribute_wsloop_schedule_chunked..omp_par}> : () -> !llvm.ptr
    %146 = "llvm.getelementptr"(%arg14, %142) <{elem_type = !llvm.struct<(i32)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %147 = "llvm.load"(%146) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %148 = "llvm.alloca"(%143) <{alignment = 8 : i64, elem_type = !llvm.struct<(ptr)>}> : (i32) -> !llvm.ptr
    %149 = "llvm.alloca"(%143) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // pred: ^bb1
    %150 = "llvm.call"(%144) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_global_thread_num, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> i32
    "llvm.store"(%147, %149) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb3] : () -> ()
  ^bb3:  // pred: ^bb2
    %151 = "llvm.getelementptr"(%148, %142) <{elem_type = !llvm.struct<(ptr)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%149, %151) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    "llvm.call"(%144, %143, %145, %148) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_fork_call, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>, var_callee_type = !llvm.func<void (ptr, i32, ptr, ...)>}> : (!llvm.ptr, i32, !llvm.ptr, !llvm.ptr) -> ()
    "llvm.br"()[^bb4] : () -> ()
  ^bb4:  // pred: ^bb3
    "llvm.br"()[^bb5] : () -> ()
  ^bb5:  // pred: ^bb4
    "llvm.br"()[^bb6] : () -> ()
  ^bb6:  // pred: ^bb5
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.noalias}, {llvm.noalias}, {}], dso_local, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<internal>, no_unwind, sym_name = "distribute_wsloop_schedule_chunked..omp_par", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: !llvm.ptr, %arg10: !llvm.ptr, %arg11: !llvm.ptr):
    %81 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %82 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %83 = "llvm.mlir.constant"() <{value = false}> : () -> i1
    %84 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_1}> : () -> !llvm.ptr
    %85 = "llvm.mlir.constant"() <{value = 33 : i32}> : () -> i32
    %86 = "llvm.mlir.constant"() <{value = 64 : i32}> : () -> i32
    %87 = "llvm.mlir.constant"() <{value = 92 : i32}> : () -> i32
    %88 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_2}> : () -> !llvm.ptr
    %89 = "llvm.getelementptr"(%arg11, %81) <{elem_type = !llvm.struct<(ptr)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %90 = "llvm.load"(%89) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.ptr
    %91 = "llvm.alloca"(%82) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %92 = "llvm.load"(%arg9) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.store"(%92, %91) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %93 = "llvm.load"(%91) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %94 = "llvm.load"(%90) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %95 = "llvm.alloca"(%82) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %96 = "llvm.alloca"(%82) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %97 = "llvm.alloca"(%82) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %98 = "llvm.alloca"(%82) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    "llvm.br"()[^bb2] : () -> ()
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
    "llvm.br"()[^bb9] : () -> ()
  ^bb9:  // pred: ^bb8
    %99 = "llvm.select"(%83, %94, %81) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %100 = "llvm.select"(%83, %81, %94) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %101 = "llvm.sub"(%100, %99) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %102 = "llvm.icmp"(%100, %99) <{predicate = 3 : i64}> : (i32, i32) -> i1
    %103 = "llvm.sub"(%101, %82) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %104 = "llvm.udiv"(%103, %82) : (i32, i32) -> i32
    %105 = "llvm.add"(%104, %82) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %106 = "llvm.icmp"(%101, %82) <{predicate = 7 : i64}> : (i32, i32) -> i1
    %107 = "llvm.select"(%106, %82, %105) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %108 = "llvm.select"(%102, %81, %107) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.br"()[^bb10] : () -> ()
  ^bb10:  // pred: ^bb9
    "llvm.store"(%81, %96) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %109 = "llvm.sub"(%108, %82) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %110 = "llvm.icmp"(%108, %81) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %111 = "llvm.select"(%110, %81, %109) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.store"(%111, %97) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.store"(%82, %98) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %112 = "llvm.call"(%84) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_global_thread_num, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> i32
    "llvm.call"(%84, %112, %85, %95, %96, %97, %98, %82, %86) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_for_static_init_4u, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 9, 0>}> : (!llvm.ptr, i32, i32, !llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    "llvm.call"(%84, %112, %87, %95, %96, %97, %98, %82, %81) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_for_static_init_4u, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 9, 0>}> : (!llvm.ptr, i32, i32, !llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    %113 = "llvm.load"(%96) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %114 = "llvm.load"(%97) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %115 = "llvm.add"(%114, %82) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %116 = "llvm.sub"(%115, %113) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %117 = "llvm.load"(%98) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %118 = "llvm.sub"(%108, %113) <{overflowFlags = 2 : i32}> : (i32, i32) -> i32
    %119 = "llvm.icmp"(%108, %113) <{predicate = 7 : i64}> : (i32, i32) -> i1
    %120 = "llvm.sub"(%118, %82) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %121 = "llvm.udiv"(%120, %117) : (i32, i32) -> i32
    %122 = "llvm.add"(%121, %82) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %123 = "llvm.icmp"(%118, %117) <{predicate = 7 : i64}> : (i32, i32) -> i1
    %124 = "llvm.select"(%123, %82, %122) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %125 = "llvm.select"(%119, %81, %124) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.br"()[^bb11] : () -> ()
  ^bb11:  // pred: ^bb10
    "llvm.br"(%81)[^bb12] : (i32) -> ()
  ^bb12(%126: i32):  // 2 preds: ^bb11, ^bb28
    "llvm.br"()[^bb13] : () -> ()
  ^bb13:  // pred: ^bb12
    %127 = "llvm.icmp"(%126, %125) <{predicate = 6 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%127)[^bb23, ^bb14] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb14:  // pred: ^bb13
    "llvm.call"(%84, %112) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_for_static_fini, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (!llvm.ptr, i32) -> ()
    %128 = "llvm.call"(%84) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_global_thread_num, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> i32
    "llvm.call"(%88, %128) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_barrier, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (!llvm.ptr, i32) -> ()
    "llvm.br"()[^bb15] : () -> ()
  ^bb15:  // pred: ^bb14
    "llvm.br"()[^bb16] : () -> ()
  ^bb16:  // pred: ^bb15
    "llvm.br"()[^bb17] : () -> ()
  ^bb17:  // pred: ^bb16
    "llvm.br"()[^bb18] : () -> ()
  ^bb18:  // pred: ^bb17
    "llvm.br"()[^bb19] : () -> ()
  ^bb19:  // pred: ^bb18
    "llvm.br"()[^bb20] : () -> ()
  ^bb20:  // pred: ^bb19
    "llvm.br"()[^bb21] : () -> ()
  ^bb21:  // pred: ^bb20
    "llvm.br"()[^bb22] : () -> ()
  ^bb22:  // pred: ^bb21
    "llvm.br"()[^bb33] : () -> ()
  ^bb23:  // pred: ^bb13
    %129 = "llvm.mul"(%126, %117) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %130 = "llvm.add"(%129, %113) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.br"()[^bb24] : () -> ()
  ^bb24:  // pred: ^bb23
    %131 = "llvm.add"(%130, %116) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %132 = "llvm.icmp"(%131, %108) <{predicate = 9 : i64}> : (i32, i32) -> i1
    %133 = "llvm.sub"(%108, %130) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %134 = "llvm.select"(%132, %133, %116) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.br"(%81)[^bb25] : (i32) -> ()
  ^bb25(%135: i32):  // 2 preds: ^bb24, ^bb32
    "llvm.br"()[^bb26] : () -> ()
  ^bb26:  // pred: ^bb25
    %136 = "llvm.icmp"(%135, %134) <{predicate = 6 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%136)[^bb29, ^bb27] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb27:  // pred: ^bb26
    "llvm.br"()[^bb28] : () -> ()
  ^bb28:  // pred: ^bb27
    %137 = "llvm.add"(%126, %82) <{overflowFlags = 2 : i32}> : (i32, i32) -> i32
    "llvm.br"(%137)[^bb12] : (i32) -> ()
  ^bb29:  // pred: ^bb26
    %138 = "llvm.add"(%135, %130) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %139 = "llvm.mul"(%138, %82) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %140 = "llvm.add"(%139, %81) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.br"()[^bb30] : () -> ()
  ^bb30:  // pred: ^bb29
    "llvm.br"()[^bb31] : () -> ()
  ^bb31:  // pred: ^bb30
    "llvm.br"()[^bb32] : () -> ()
  ^bb32:  // pred: ^bb31
    %141 = "llvm.add"(%135, %82) <{overflowFlags = 2 : i32}> : (i32, i32) -> i32
    "llvm.br"(%141)[^bb25] : (i32) -> ()
  ^bb33:  // pred: ^bb22
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "distribute_wsloop_schedule_chunked_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: i32, %arg7: i32, %arg8: i32):
    %73 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %74 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_1}> : () -> !llvm.ptr
    %75 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %76 = "llvm.mlir.addressof"() <{global_name = @distribute_wsloop_schedule_chunked_i64..omp_par.2}> : () -> !llvm.ptr
    %77 = "llvm.alloca"(%73) <{alignment = 8 : i64, elem_type = !llvm.struct<(i64)>}> : (i32) -> !llvm.ptr
    %78 = "llvm.zext"(%arg6) : (i32) -> i64
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    %79 = "llvm.call"(%74) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_global_thread_num, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> i32
    "llvm.call"(%74, %79, %arg7, %arg7, %arg8) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_push_num_teams_51, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 5, 0>}> : (!llvm.ptr, i32, i32, i32, i32) -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // pred: ^bb1
    %80 = "llvm.getelementptr"(%77, %75) <{elem_type = !llvm.struct<(i64)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%78, %80) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    "llvm.call"(%74, %73, %76, %77) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_fork_teams, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>, var_callee_type = !llvm.func<void (ptr, i32, ptr, ...)>}> : (!llvm.ptr, i32, !llvm.ptr, !llvm.ptr) -> ()
    "llvm.br"()[^bb3] : () -> ()
  ^bb3:  // pred: ^bb2
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<internal>, sym_name = "distribute_wsloop_schedule_chunked_i64..omp_par.2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: !llvm.ptr, %arg4: !llvm.ptr, %arg5: !llvm.ptr):
    %63 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %64 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %65 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_1}> : () -> !llvm.ptr
    %66 = "llvm.mlir.addressof"() <{global_name = @distribute_wsloop_schedule_chunked_i64..omp_par}> : () -> !llvm.ptr
    %67 = "llvm.getelementptr"(%arg5, %63) <{elem_type = !llvm.struct<(i64)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %68 = "llvm.load"(%67) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    %69 = "llvm.alloca"(%64) <{alignment = 8 : i64, elem_type = !llvm.struct<(ptr)>}> : (i32) -> !llvm.ptr
    %70 = "llvm.alloca"(%64) <{alignment = 8 : i64, elem_type = i64}> : (i32) -> !llvm.ptr
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // pred: ^bb1
    %71 = "llvm.call"(%65) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_global_thread_num, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> i32
    "llvm.store"(%68, %70) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    "llvm.br"()[^bb3] : () -> ()
  ^bb3:  // pred: ^bb2
    %72 = "llvm.getelementptr"(%69, %63) <{elem_type = !llvm.struct<(ptr)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%70, %72) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    "llvm.call"(%65, %64, %66, %69) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_fork_call, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>, var_callee_type = !llvm.func<void (ptr, i32, ptr, ...)>}> : (!llvm.ptr, i32, !llvm.ptr, !llvm.ptr) -> ()
    "llvm.br"()[^bb4] : () -> ()
  ^bb4:  // pred: ^bb3
    "llvm.br"()[^bb5] : () -> ()
  ^bb5:  // pred: ^bb4
    "llvm.br"()[^bb6] : () -> ()
  ^bb6:  // pred: ^bb5
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.noalias}, {llvm.noalias}, {}], dso_local, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<internal>, no_unwind, sym_name = "distribute_wsloop_schedule_chunked_i64..omp_par", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: !llvm.ptr, %arg1: !llvm.ptr, %arg2: !llvm.ptr):
    %0 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %2 = "llvm.mlir.constant"() <{value = false}> : () -> i1
    %3 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %4 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %5 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_1}> : () -> !llvm.ptr
    %6 = "llvm.mlir.constant"() <{value = 33 : i32}> : () -> i32
    %7 = "llvm.mlir.constant"() <{value = 64 : i64}> : () -> i64
    %8 = "llvm.mlir.constant"() <{value = 92 : i32}> : () -> i32
    %9 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_2}> : () -> !llvm.ptr
    %10 = "llvm.getelementptr"(%arg2, %0) <{elem_type = !llvm.struct<(ptr)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %11 = "llvm.load"(%10) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.ptr
    %12 = "llvm.alloca"(%1) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %13 = "llvm.load"(%arg0) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.store"(%13, %12) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %14 = "llvm.load"(%12) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %15 = "llvm.load"(%11) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    %16 = "llvm.alloca"(%1) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %17 = "llvm.alloca"(%1) <{alignment = 8 : i64, elem_type = i64}> : (i32) -> !llvm.ptr
    %18 = "llvm.alloca"(%1) <{alignment = 8 : i64, elem_type = i64}> : (i32) -> !llvm.ptr
    %19 = "llvm.alloca"(%1) <{alignment = 8 : i64, elem_type = i64}> : (i32) -> !llvm.ptr
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    "llvm.br"()[^bb2] : () -> ()
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
    "llvm.br"()[^bb9] : () -> ()
  ^bb9:  // pred: ^bb8
    %20 = "llvm.select"(%2, %15, %3) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    %21 = "llvm.select"(%2, %3, %15) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    %22 = "llvm.sub"(%21, %20) <{overflowFlags = 1 : i32}> : (i64, i64) -> i64
    %23 = "llvm.icmp"(%21, %20) <{predicate = 3 : i64}> : (i64, i64) -> i1
    %24 = "llvm.sub"(%22, %4) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %25 = "llvm.udiv"(%24, %4) : (i64, i64) -> i64
    %26 = "llvm.add"(%25, %4) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %27 = "llvm.icmp"(%22, %4) <{predicate = 7 : i64}> : (i64, i64) -> i1
    %28 = "llvm.select"(%27, %4, %26) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    %29 = "llvm.select"(%23, %3, %28) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.br"()[^bb10] : () -> ()
  ^bb10:  // pred: ^bb9
    "llvm.store"(%3, %17) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %30 = "llvm.sub"(%29, %4) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %31 = "llvm.icmp"(%29, %3) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %32 = "llvm.select"(%31, %3, %30) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.store"(%32, %18) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    "llvm.store"(%4, %19) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %33 = "llvm.call"(%5) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_global_thread_num, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> i32
    "llvm.call"(%5, %33, %6, %16, %17, %18, %19, %4, %7) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_for_static_init_8u, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 9, 0>}> : (!llvm.ptr, i32, i32, !llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.ptr, i64, i64) -> ()
    "llvm.call"(%5, %33, %8, %16, %17, %18, %19, %4, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_for_static_init_8u, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 9, 0>}> : (!llvm.ptr, i32, i32, !llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.ptr, i64, i64) -> ()
    %34 = "llvm.load"(%17) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    %35 = "llvm.load"(%18) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    %36 = "llvm.add"(%35, %4) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %37 = "llvm.sub"(%36, %34) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %38 = "llvm.load"(%19) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    %39 = "llvm.sub"(%29, %34) <{overflowFlags = 2 : i32}> : (i64, i64) -> i64
    %40 = "llvm.icmp"(%29, %34) <{predicate = 7 : i64}> : (i64, i64) -> i1
    %41 = "llvm.sub"(%39, %4) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %42 = "llvm.udiv"(%41, %38) : (i64, i64) -> i64
    %43 = "llvm.add"(%42, %4) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %44 = "llvm.icmp"(%39, %38) <{predicate = 7 : i64}> : (i64, i64) -> i1
    %45 = "llvm.select"(%44, %4, %43) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    %46 = "llvm.select"(%40, %3, %45) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.br"()[^bb11] : () -> ()
  ^bb11:  // pred: ^bb10
    "llvm.br"(%3)[^bb12] : (i64) -> ()
  ^bb12(%47: i64):  // 2 preds: ^bb11, ^bb28
    "llvm.br"()[^bb13] : () -> ()
  ^bb13:  // pred: ^bb12
    %48 = "llvm.icmp"(%47, %46) <{predicate = 6 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%48)[^bb23, ^bb14] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb14:  // pred: ^bb13
    "llvm.call"(%5, %33) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_for_static_fini, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (!llvm.ptr, i32) -> ()
    %49 = "llvm.call"(%5) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_global_thread_num, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> i32
    "llvm.call"(%9, %49) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_barrier, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (!llvm.ptr, i32) -> ()
    "llvm.br"()[^bb15] : () -> ()
  ^bb15:  // pred: ^bb14
    "llvm.br"()[^bb16] : () -> ()
  ^bb16:  // pred: ^bb15
    "llvm.br"()[^bb17] : () -> ()
  ^bb17:  // pred: ^bb16
    "llvm.br"()[^bb18] : () -> ()
  ^bb18:  // pred: ^bb17
    "llvm.br"()[^bb19] : () -> ()
  ^bb19:  // pred: ^bb18
    "llvm.br"()[^bb20] : () -> ()
  ^bb20:  // pred: ^bb19
    "llvm.br"()[^bb21] : () -> ()
  ^bb21:  // pred: ^bb20
    "llvm.br"()[^bb22] : () -> ()
  ^bb22:  // pred: ^bb21
    "llvm.br"()[^bb33] : () -> ()
  ^bb23:  // pred: ^bb13
    %50 = "llvm.mul"(%47, %38) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %51 = "llvm.add"(%50, %34) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.br"()[^bb24] : () -> ()
  ^bb24:  // pred: ^bb23
    %52 = "llvm.add"(%51, %37) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %53 = "llvm.icmp"(%52, %29) <{predicate = 9 : i64}> : (i64, i64) -> i1
    %54 = "llvm.sub"(%29, %51) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %55 = "llvm.select"(%53, %54, %37) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.br"(%3)[^bb25] : (i64) -> ()
  ^bb25(%56: i64):  // 2 preds: ^bb24, ^bb32
    "llvm.br"()[^bb26] : () -> ()
  ^bb26:  // pred: ^bb25
    %57 = "llvm.icmp"(%56, %55) <{predicate = 6 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%57)[^bb29, ^bb27] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb27:  // pred: ^bb26
    "llvm.br"()[^bb28] : () -> ()
  ^bb28:  // pred: ^bb27
    %58 = "llvm.add"(%47, %4) <{overflowFlags = 2 : i32}> : (i64, i64) -> i64
    "llvm.br"(%58)[^bb12] : (i64) -> ()
  ^bb29:  // pred: ^bb26
    %59 = "llvm.add"(%56, %51) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %60 = "llvm.mul"(%59, %4) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %61 = "llvm.add"(%60, %3) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.br"()[^bb30] : () -> ()
  ^bb30:  // pred: ^bb29
    "llvm.br"()[^bb31] : () -> ()
  ^bb31:  // pred: ^bb30
    "llvm.br"()[^bb32] : () -> ()
  ^bb32:  // pred: ^bb31
    %62 = "llvm.add"(%56, %4) <{overflowFlags = 2 : i32}> : (i64, i64) -> i64
    "llvm.br"(%62)[^bb25] : (i64) -> ()
  ^bb33:  // pred: ^bb22
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "__kmpc_global_thread_num", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "__kmpc_push_num_teams_51", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "__kmpc_for_static_init_4u", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "__kmpc_for_static_fini", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, convergent, function_type = !llvm.func<void (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "__kmpc_barrier", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "__kmpc_for_static_init_8u", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i32, ptr, ...)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "__kmpc_fork_call", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i32, ptr, ...)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "__kmpc_fork_teams", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

