"builtin.module"() ({
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 1 : i64, constant, dso_local, global_type = !llvm.array<23 x i8>, linkage = #llvm.linkage<private>, sym_name = "mlir.llvm.nameless_global_0", unnamed_addr = 2 : i64, value = ";unknown;unknown;0;0;;\00", visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 8 : i64, constant, dso_local, global_type = !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, linkage = #llvm.linkage<private>, sym_name = "mlir.llvm.nameless_global_1", unnamed_addr = 2 : i64, visibility_ = 0 : i64}> ({
    %230 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_0}> : () -> !llvm.ptr
    %231 = "llvm.mlir.constant"() <{value = 22 : i32}> : () -> i32
    %232 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %233 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %234 = "llvm.mlir.undef"() : () -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %235 = "llvm.insertvalue"(%234, %232) <{position = array<i64: 0>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %236 = "llvm.insertvalue"(%235, %233) <{position = array<i64: 1>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %237 = "llvm.insertvalue"(%236, %232) <{position = array<i64: 2>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %238 = "llvm.insertvalue"(%237, %231) <{position = array<i64: 3>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %239 = "llvm.insertvalue"(%238, %230) <{position = array<i64: 4>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, !llvm.ptr) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    "llvm.return"(%239) : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>) -> ()
  }) : () -> ()
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<warning, "Debug Info Version", 3 : i32>]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.noalias, llvm.nocapture}], function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, sym_name = "_QPtest", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg17: !llvm.ptr):
    %200 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %201 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %202 = "llvm.mlir.zero"() : () -> !llvm.ptr
    %203 = "llvm.getelementptr"(%202, %200) <{elem_type = !llvm.struct<(i32)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %204 = "llvm.ptrtoint"(%203) : (!llvm.ptr) -> i64
    %205 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %206 = "llvm.mlir.constant"() <{value = 100 : i64}> : () -> i64
    %207 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %208 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %209 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_1}> : () -> !llvm.ptr
    %210 = "llvm.mlir.constant"() <{value = 40 : i64}> : () -> i64
    %211 = "llvm.mlir.constant"() <{value = 32 : i64}> : () -> i64
    %212 = "llvm.mlir.addressof"() <{global_name = @_QPtest..omp_par}> : () -> !llvm.ptr
    %213 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %214 = "llvm.mlir.addressof"() <{global_name = @omp_taskloop_dup}> : () -> !llvm.ptr
    %215 = "llvm.alloca"(%200) <{alignment = 8 : i64, elem_type = !llvm.struct<(i64, i64, i64, ptr)>}> : (i32) -> !llvm.ptr
    %216 = "llvm.alloca"(%201) <{alignment = 4 : i64, elem_type = i32}> : (i64) -> !llvm.ptr
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // pred: ^bb1
    %217 = "llvm.call"(%204) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @malloc, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (i64) -> !llvm.ptr
    %218 = "llvm.getelementptr"(%217, %205) <{elem_type = !llvm.struct<(i32)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.call"(%arg17, %218) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @_init, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (!llvm.ptr, !llvm.ptr) -> ()
    "llvm.br"()[^bb3] : () -> ()
  ^bb3:  // pred: ^bb2
    "llvm.br"()[^bb4] : () -> ()
  ^bb4:  // pred: ^bb3
    "llvm.call"(%arg17, %218) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @_copy, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (!llvm.ptr, !llvm.ptr) -> ()
    "llvm.br"()[^bb5] : () -> ()
  ^bb5:  // pred: ^bb4
    "llvm.br"()[^bb6] : () -> ()
  ^bb6:  // pred: ^bb5
    %219 = "llvm.getelementptr"(%215, %205) <{elem_type = !llvm.struct<(i64, i64, i64, ptr)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%201, %219) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %220 = "llvm.getelementptr"(%215, %205) <{elem_type = !llvm.struct<(i64, i64, i64, ptr)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%206, %220) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %221 = "llvm.getelementptr"(%215, %205) <{elem_type = !llvm.struct<(i64, i64, i64, ptr)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 2>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%201, %221) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %222 = "llvm.getelementptr"(%215, %205) <{elem_type = !llvm.struct<(i64, i64, i64, ptr)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 3>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%217, %222) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %223 = "llvm.call"(%209) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_global_thread_num, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> i32
    "llvm.call"(%209, %223) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_taskgroup, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (!llvm.ptr, i32) -> ()
    %224 = "llvm.call"(%209, %223, %200, %210, %211, %212) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_omp_task_alloc, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 6, 0>}> : (!llvm.ptr, i32, i32, i64, i64, !llvm.ptr) -> !llvm.ptr
    %225 = "llvm.load"(%224) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.ptr
    "llvm.intr.memcpy"(%225, %215, %211) <{arg_attrs = [{llvm.align = 1 : i64}, {llvm.align = 1 : i64}, {}], isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %226 = "llvm.getelementptr"(%225, %205) <{elem_type = !llvm.struct<(i64, i64, i64, ptr)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %227 = "llvm.getelementptr"(%225, %205) <{elem_type = !llvm.struct<(i64, i64, i64, ptr)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %228 = "llvm.getelementptr"(%225, %205) <{elem_type = !llvm.struct<(i64, i64, i64, ptr)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 2>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %229 = "llvm.load"(%228) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    "llvm.call"(%209, %223, %224, %200, %226, %227, %229, %200, %205, %213, %214) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_taskloop, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 11, 0>}> : (!llvm.ptr, i32, !llvm.ptr, i32, !llvm.ptr, !llvm.ptr, i64, i32, i32, i64, !llvm.ptr) -> ()
    "llvm.call"(%209, %223) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_end_taskgroup, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (!llvm.ptr, i32) -> ()
    "llvm.br"()[^bb7] : () -> ()
  ^bb7:  // pred: ^bb6
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<void (i32, ptr)>, linkage = #llvm.linkage<internal>, sym_name = "_QPtest..omp_par", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg15: i32, %arg16: !llvm.ptr):
    %169 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %170 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %171 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %172 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %173 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %174 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_1}> : () -> !llvm.ptr
    %175 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %176 = "llvm.load"(%arg16) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.ptr
    %177 = "llvm.getelementptr"(%176, %169) <{elem_type = !llvm.struct<(i64, i64, i64, ptr)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %178 = "llvm.load"(%177) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    %179 = "llvm.getelementptr"(%176, %169) <{elem_type = !llvm.struct<(i64, i64, i64, ptr)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %180 = "llvm.load"(%179) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    %181 = "llvm.getelementptr"(%176, %169) <{elem_type = !llvm.struct<(i64, i64, i64, ptr)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 2>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %182 = "llvm.load"(%181) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    %183 = "llvm.getelementptr"(%176, %169) <{elem_type = !llvm.struct<(i64, i64, i64, ptr)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 3>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %184 = "llvm.load"(%183) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.ptr
    %185 = "llvm.alloca"(%170) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    %186 = "llvm.getelementptr"(%184, %169) <{elem_type = !llvm.struct<(i32)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // pred: ^bb1
    "llvm.br"()[^bb3] : () -> ()
  ^bb3:  // pred: ^bb2
    %187 = "llvm.sub"(%180, %178) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %188 = "llvm.sdiv"(%187, %173) : (i64, i64) -> i64
    %189 = "llvm.add"(%188, %173) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %190 = "llvm.trunc"(%189) <{overflowFlags = 0 : i32}> : (i64) -> i32
    %191 = "llvm.trunc"(%178) <{overflowFlags = 0 : i32}> : (i64) -> i32
    "llvm.br"(%169)[^bb4] : (i32) -> ()
  ^bb4(%192: i32):  // 2 preds: ^bb3, ^bb15
    "llvm.br"()[^bb5] : () -> ()
  ^bb5:  // pred: ^bb4
    %193 = "llvm.icmp"(%192, %190) <{predicate = 6 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%193)[^bb9, ^bb6] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb6:  // pred: ^bb5
    "llvm.br"()[^bb7] : () -> ()
  ^bb7:  // pred: ^bb6
    "llvm.br"()[^bb8] : () -> ()
  ^bb8:  // 2 preds: ^bb7, ^bb12
    "llvm.call"(%186) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @_dealloc, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> ()
    "llvm.call"(%184) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @free, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> ()
    "llvm.br"()[^bb16] : () -> ()
  ^bb9:  // pred: ^bb5
    %194 = "llvm.mul"(%192, %170) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %195 = "llvm.add"(%194, %191) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.br"()[^bb10] : () -> ()
  ^bb10:  // pred: ^bb9
    "llvm.store"(%195, %185) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.call"(%186) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @_QPbefore, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> ()
    %196 = "llvm.call"(%174) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_global_thread_num, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> i32
    %197 = "llvm.call"(%174, %196, %175) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_cancel, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (!llvm.ptr, i32, i32) -> i32
    %198 = "llvm.icmp"(%197, %169) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%198)[^bb13, ^bb11] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb11:  // pred: ^bb10
    "llvm.br"()[^bb12] : () -> ()
  ^bb12:  // pred: ^bb11
    "llvm.br"()[^bb8] : () -> ()
  ^bb13:  // pred: ^bb10
    "llvm.call"(%186) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @_QPafter, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> ()
    "llvm.br"()[^bb14] : () -> ()
  ^bb14:  // pred: ^bb13
    "llvm.br"()[^bb15] : () -> ()
  ^bb15:  // pred: ^bb14
    %199 = "llvm.add"(%192, %170) <{overflowFlags = 2 : i32}> : (i32, i32) -> i32
    "llvm.br"(%199)[^bb4] : (i32) -> ()
  ^bb16:  // pred: ^bb8
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.noalias, llvm.nocapture}], function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, sym_name = "_QPtest2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: !llvm.ptr):
    %138 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %139 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %140 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_1}> : () -> !llvm.ptr
    %141 = "llvm.mlir.zero"() : () -> !llvm.ptr
    %142 = "llvm.getelementptr"(%141, %138) <{elem_type = !llvm.struct<(i32)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %143 = "llvm.ptrtoint"(%142) : (!llvm.ptr) -> i64
    %144 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %145 = "llvm.mlir.constant"() <{value = 100 : i64}> : () -> i64
    %146 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %147 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %148 = "llvm.mlir.constant"() <{value = 40 : i64}> : () -> i64
    %149 = "llvm.mlir.constant"() <{value = 32 : i64}> : () -> i64
    %150 = "llvm.mlir.addressof"() <{global_name = @_QPtest2..omp_par}> : () -> !llvm.ptr
    %151 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %152 = "llvm.mlir.addressof"() <{global_name = @omp_taskloop_dup.1}> : () -> !llvm.ptr
    %153 = "llvm.alloca"(%138) <{alignment = 8 : i64, elem_type = !llvm.struct<(i64, i64, i64, ptr)>}> : (i32) -> !llvm.ptr
    %154 = "llvm.alloca"(%139) <{alignment = 4 : i64, elem_type = i32}> : (i64) -> !llvm.ptr
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    %155 = "llvm.call"(%140) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_global_thread_num, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> i32
    "llvm.call"(%140, %155) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_taskgroup, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (!llvm.ptr, i32) -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // pred: ^bb1
    "llvm.br"()[^bb3] : () -> ()
  ^bb3:  // pred: ^bb2
    %156 = "llvm.call"(%143) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @malloc, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (i64) -> !llvm.ptr
    %157 = "llvm.getelementptr"(%156, %144) <{elem_type = !llvm.struct<(i32)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.call"(%arg14, %157) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @_init, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (!llvm.ptr, !llvm.ptr) -> ()
    "llvm.br"()[^bb4] : () -> ()
  ^bb4:  // pred: ^bb3
    "llvm.br"()[^bb5] : () -> ()
  ^bb5:  // pred: ^bb4
    "llvm.call"(%arg14, %157) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @_copy, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (!llvm.ptr, !llvm.ptr) -> ()
    "llvm.br"()[^bb8] : () -> ()
  ^bb6:  // pred: ^bb10
    "llvm.br"()[^bb7] : () -> ()
  ^bb7:  // pred: ^bb6
    "llvm.call"(%140, %155) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_end_taskgroup, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (!llvm.ptr, i32) -> ()
    "llvm.return"() : () -> ()
  ^bb8:  // pred: ^bb5
    "llvm.br"()[^bb9] : () -> ()
  ^bb9:  // pred: ^bb8
    %158 = "llvm.getelementptr"(%153, %144) <{elem_type = !llvm.struct<(i64, i64, i64, ptr)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%139, %158) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %159 = "llvm.getelementptr"(%153, %144) <{elem_type = !llvm.struct<(i64, i64, i64, ptr)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%145, %159) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %160 = "llvm.getelementptr"(%153, %144) <{elem_type = !llvm.struct<(i64, i64, i64, ptr)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 2>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%139, %160) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %161 = "llvm.getelementptr"(%153, %144) <{elem_type = !llvm.struct<(i64, i64, i64, ptr)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 3>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%156, %161) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %162 = "llvm.call"(%140) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_global_thread_num, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> i32
    %163 = "llvm.call"(%140, %162, %138, %148, %149, %150) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_omp_task_alloc, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 6, 0>}> : (!llvm.ptr, i32, i32, i64, i64, !llvm.ptr) -> !llvm.ptr
    %164 = "llvm.load"(%163) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.ptr
    "llvm.intr.memcpy"(%164, %153, %149) <{arg_attrs = [{llvm.align = 1 : i64}, {llvm.align = 1 : i64}, {}], isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %165 = "llvm.getelementptr"(%164, %144) <{elem_type = !llvm.struct<(i64, i64, i64, ptr)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %166 = "llvm.getelementptr"(%164, %144) <{elem_type = !llvm.struct<(i64, i64, i64, ptr)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %167 = "llvm.getelementptr"(%164, %144) <{elem_type = !llvm.struct<(i64, i64, i64, ptr)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 2>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %168 = "llvm.load"(%167) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    "llvm.call"(%140, %162, %163, %138, %165, %166, %168, %138, %144, %151, %152) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_taskloop, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 11, 0>}> : (!llvm.ptr, i32, !llvm.ptr, i32, !llvm.ptr, !llvm.ptr, i64, i32, i32, i64, !llvm.ptr) -> ()
    "llvm.br"()[^bb10] : () -> ()
  ^bb10:  // pred: ^bb9
    "llvm.br"()[^bb6] : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<void (i32, ptr)>, linkage = #llvm.linkage<internal>, sym_name = "_QPtest2..omp_par", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: i32, %arg13: !llvm.ptr):
    %107 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %108 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %109 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %110 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %111 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %112 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_1}> : () -> !llvm.ptr
    %113 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %114 = "llvm.load"(%arg13) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.ptr
    %115 = "llvm.getelementptr"(%114, %107) <{elem_type = !llvm.struct<(i64, i64, i64, ptr)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %116 = "llvm.load"(%115) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    %117 = "llvm.getelementptr"(%114, %107) <{elem_type = !llvm.struct<(i64, i64, i64, ptr)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %118 = "llvm.load"(%117) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    %119 = "llvm.getelementptr"(%114, %107) <{elem_type = !llvm.struct<(i64, i64, i64, ptr)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 2>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %120 = "llvm.load"(%119) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    %121 = "llvm.getelementptr"(%114, %107) <{elem_type = !llvm.struct<(i64, i64, i64, ptr)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 3>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %122 = "llvm.load"(%121) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.ptr
    %123 = "llvm.alloca"(%108) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    %124 = "llvm.getelementptr"(%122, %107) <{elem_type = !llvm.struct<(i32)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // pred: ^bb1
    "llvm.br"()[^bb3] : () -> ()
  ^bb3:  // pred: ^bb2
    %125 = "llvm.sub"(%118, %116) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %126 = "llvm.sdiv"(%125, %111) : (i64, i64) -> i64
    %127 = "llvm.add"(%126, %111) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %128 = "llvm.trunc"(%127) <{overflowFlags = 0 : i32}> : (i64) -> i32
    %129 = "llvm.trunc"(%116) <{overflowFlags = 0 : i32}> : (i64) -> i32
    "llvm.br"(%107)[^bb4] : (i32) -> ()
  ^bb4(%130: i32):  // 2 preds: ^bb3, ^bb15
    "llvm.br"()[^bb5] : () -> ()
  ^bb5:  // pred: ^bb4
    %131 = "llvm.icmp"(%130, %128) <{predicate = 6 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%131)[^bb9, ^bb6] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb6:  // pred: ^bb5
    "llvm.br"()[^bb7] : () -> ()
  ^bb7:  // pred: ^bb6
    "llvm.br"()[^bb8] : () -> ()
  ^bb8:  // 2 preds: ^bb7, ^bb12
    "llvm.call"(%124) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @_dealloc, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> ()
    "llvm.call"(%122) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @free, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> ()
    "llvm.br"()[^bb16] : () -> ()
  ^bb9:  // pred: ^bb5
    %132 = "llvm.mul"(%130, %108) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %133 = "llvm.add"(%132, %129) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.br"()[^bb10] : () -> ()
  ^bb10:  // pred: ^bb9
    "llvm.store"(%133, %123) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.call"(%124) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @_QPbefore, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> ()
    %134 = "llvm.call"(%112) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_global_thread_num, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> i32
    %135 = "llvm.call"(%112, %134, %113) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_cancel, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (!llvm.ptr, i32, i32) -> i32
    %136 = "llvm.icmp"(%135, %107) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%136)[^bb13, ^bb11] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb11:  // pred: ^bb10
    "llvm.br"()[^bb12] : () -> ()
  ^bb12:  // pred: ^bb11
    "llvm.br"()[^bb8] : () -> ()
  ^bb13:  // pred: ^bb10
    "llvm.call"(%124) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @_QPafter, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> ()
    "llvm.br"()[^bb14] : () -> ()
  ^bb14:  // pred: ^bb13
    "llvm.br"()[^bb15] : () -> ()
  ^bb15:  // pred: ^bb14
    %137 = "llvm.add"(%130, %108) <{overflowFlags = 2 : i32}> : (i32, i32) -> i32
    "llvm.br"(%137)[^bb4] : (i32) -> ()
  ^bb16:  // pred: ^bb8
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.noalias, llvm.nocapture}], function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, sym_name = "_QPtest3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg11: !llvm.ptr):
    %77 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %78 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %79 = "llvm.mlir.zero"() : () -> !llvm.ptr
    %80 = "llvm.getelementptr"(%79, %77) <{elem_type = !llvm.struct<(i32)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %81 = "llvm.ptrtoint"(%80) : (!llvm.ptr) -> i64
    %82 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %83 = "llvm.mlir.constant"() <{value = 100 : i64}> : () -> i64
    %84 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %85 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %86 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_1}> : () -> !llvm.ptr
    %87 = "llvm.mlir.constant"() <{value = 40 : i64}> : () -> i64
    %88 = "llvm.mlir.constant"() <{value = 32 : i64}> : () -> i64
    %89 = "llvm.mlir.addressof"() <{global_name = @_QPtest3..omp_par}> : () -> !llvm.ptr
    %90 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %91 = "llvm.mlir.addressof"() <{global_name = @omp_taskloop_dup.2}> : () -> !llvm.ptr
    %92 = "llvm.alloca"(%77) <{alignment = 8 : i64, elem_type = !llvm.struct<(i64, i64, i64, ptr)>}> : (i32) -> !llvm.ptr
    %93 = "llvm.alloca"(%78) <{alignment = 4 : i64, elem_type = i32}> : (i64) -> !llvm.ptr
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // pred: ^bb1
    %94 = "llvm.call"(%81) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @malloc, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (i64) -> !llvm.ptr
    %95 = "llvm.getelementptr"(%94, %82) <{elem_type = !llvm.struct<(i32)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.call"(%arg11, %95) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @_init, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (!llvm.ptr, !llvm.ptr) -> ()
    "llvm.br"()[^bb3] : () -> ()
  ^bb3:  // pred: ^bb2
    "llvm.br"()[^bb4] : () -> ()
  ^bb4:  // pred: ^bb3
    "llvm.call"(%arg11, %95) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @_copy, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (!llvm.ptr, !llvm.ptr) -> ()
    "llvm.br"()[^bb5] : () -> ()
  ^bb5:  // pred: ^bb4
    "llvm.br"()[^bb6] : () -> ()
  ^bb6:  // pred: ^bb5
    %96 = "llvm.getelementptr"(%92, %82) <{elem_type = !llvm.struct<(i64, i64, i64, ptr)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%78, %96) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %97 = "llvm.getelementptr"(%92, %82) <{elem_type = !llvm.struct<(i64, i64, i64, ptr)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%83, %97) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %98 = "llvm.getelementptr"(%92, %82) <{elem_type = !llvm.struct<(i64, i64, i64, ptr)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 2>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%78, %98) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %99 = "llvm.getelementptr"(%92, %82) <{elem_type = !llvm.struct<(i64, i64, i64, ptr)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 3>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%94, %99) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %100 = "llvm.call"(%86) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_global_thread_num, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> i32
    "llvm.call"(%86, %100) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_taskgroup, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (!llvm.ptr, i32) -> ()
    %101 = "llvm.call"(%86, %100, %77, %87, %88, %89) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_omp_task_alloc, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 6, 0>}> : (!llvm.ptr, i32, i32, i64, i64, !llvm.ptr) -> !llvm.ptr
    %102 = "llvm.load"(%101) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.ptr
    "llvm.intr.memcpy"(%102, %92, %88) <{arg_attrs = [{llvm.align = 1 : i64}, {llvm.align = 1 : i64}, {}], isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %103 = "llvm.getelementptr"(%102, %82) <{elem_type = !llvm.struct<(i64, i64, i64, ptr)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %104 = "llvm.getelementptr"(%102, %82) <{elem_type = !llvm.struct<(i64, i64, i64, ptr)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %105 = "llvm.getelementptr"(%102, %82) <{elem_type = !llvm.struct<(i64, i64, i64, ptr)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 2>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %106 = "llvm.load"(%105) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    "llvm.call"(%86, %100, %101, %77, %103, %104, %106, %77, %82, %90, %91) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_taskloop, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 11, 0>}> : (!llvm.ptr, i32, !llvm.ptr, i32, !llvm.ptr, !llvm.ptr, i64, i32, i32, i64, !llvm.ptr) -> ()
    "llvm.call"(%86, %100) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_end_taskgroup, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (!llvm.ptr, i32) -> ()
    "llvm.br"()[^bb7] : () -> ()
  ^bb7:  // pred: ^bb6
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<void (i32, ptr)>, linkage = #llvm.linkage<internal>, sym_name = "_QPtest3..omp_par", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: i32, %arg10: !llvm.ptr):
    %42 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %43 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %44 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %45 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %46 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %47 = "llvm.mlir.constant"() <{value = true}> : () -> i1
    %48 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_1}> : () -> !llvm.ptr
    %49 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %50 = "llvm.load"(%arg10) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.ptr
    %51 = "llvm.getelementptr"(%50, %42) <{elem_type = !llvm.struct<(i64, i64, i64, ptr)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %52 = "llvm.load"(%51) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    %53 = "llvm.getelementptr"(%50, %42) <{elem_type = !llvm.struct<(i64, i64, i64, ptr)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %54 = "llvm.load"(%53) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    %55 = "llvm.getelementptr"(%50, %42) <{elem_type = !llvm.struct<(i64, i64, i64, ptr)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 2>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %56 = "llvm.load"(%55) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    %57 = "llvm.getelementptr"(%50, %42) <{elem_type = !llvm.struct<(i64, i64, i64, ptr)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 3>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %58 = "llvm.load"(%57) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.ptr
    %59 = "llvm.alloca"(%43) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    %60 = "llvm.getelementptr"(%58, %42) <{elem_type = !llvm.struct<(i32)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // pred: ^bb1
    "llvm.br"()[^bb3] : () -> ()
  ^bb3:  // pred: ^bb2
    %61 = "llvm.sub"(%54, %52) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %62 = "llvm.sdiv"(%61, %46) : (i64, i64) -> i64
    %63 = "llvm.add"(%62, %46) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %64 = "llvm.trunc"(%63) <{overflowFlags = 0 : i32}> : (i64) -> i32
    %65 = "llvm.trunc"(%52) <{overflowFlags = 0 : i32}> : (i64) -> i32
    "llvm.br"(%42)[^bb4] : (i32) -> ()
  ^bb4(%66: i32):  // 2 preds: ^bb3, ^bb17
    "llvm.br"()[^bb5] : () -> ()
  ^bb5:  // pred: ^bb4
    %67 = "llvm.icmp"(%66, %64) <{predicate = 6 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%67)[^bb9, ^bb6] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb6:  // pred: ^bb5
    "llvm.br"()[^bb7] : () -> ()
  ^bb7:  // pred: ^bb6
    "llvm.br"()[^bb8] : () -> ()
  ^bb8:  // 2 preds: ^bb7, ^bb13
    "llvm.call"(%60) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @_dealloc, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> ()
    "llvm.call"(%58) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @free, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> ()
    "llvm.br"()[^bb21] : () -> ()
  ^bb9:  // pred: ^bb5
    %68 = "llvm.mul"(%66, %43) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %69 = "llvm.add"(%68, %65) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.br"()[^bb10] : () -> ()
  ^bb10:  // pred: ^bb9
    "llvm.store"(%69, %59) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.call"(%60) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @_QPbefore, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> ()
    "llvm.cond_br"(%47)[^bb18, ^bb11] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb11:  // pred: ^bb10
    %70 = "llvm.call"(%48) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_global_thread_num, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> i32
    %71 = "llvm.call"(%48, %70, %49) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_cancellationpoint, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (!llvm.ptr, i32, i32) -> i32
    %72 = "llvm.icmp"(%71, %42) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%72)[^bb14, ^bb12] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb12:  // pred: ^bb11
    "llvm.br"()[^bb13] : () -> ()
  ^bb13:  // 2 preds: ^bb12, ^bb19
    "llvm.br"()[^bb8] : () -> ()
  ^bb14:  // pred: ^bb11
    "llvm.br"()[^bb15] : () -> ()
  ^bb15:  // 2 preds: ^bb14, ^bb20
    "llvm.call"(%60) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @_QPafter, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> ()
    "llvm.br"()[^bb16] : () -> ()
  ^bb16:  // pred: ^bb15
    "llvm.br"()[^bb17] : () -> ()
  ^bb17:  // pred: ^bb16
    %73 = "llvm.add"(%66, %43) <{overflowFlags = 2 : i32}> : (i32, i32) -> i32
    "llvm.br"(%73)[^bb4] : (i32) -> ()
  ^bb18:  // pred: ^bb10
    %74 = "llvm.call"(%48) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_global_thread_num, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> i32
    %75 = "llvm.call"(%48, %74, %49) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_cancel, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (!llvm.ptr, i32, i32) -> i32
    %76 = "llvm.icmp"(%75, %42) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%76)[^bb20, ^bb19] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb19:  // pred: ^bb18
    "llvm.br"()[^bb13] : () -> ()
  ^bb20:  // pred: ^bb18
    "llvm.br"()[^bb15] : () -> ()
  ^bb21:  // pred: ^bb8
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, sym_name = "_QPbefore", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, sym_name = "_QPafter", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "_init", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "_copy", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, sym_name = "_dealloc", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<ptr (i64)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.noalias}], sym_name = "malloc", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "__kmpc_global_thread_num", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "__kmpc_cancel", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, sym_name = "free", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<void (ptr, ptr, i32)>, linkage = #llvm.linkage<internal>, sym_name = "omp_taskloop_dup", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: !llvm.ptr, %arg7: !llvm.ptr, %arg8: i32):
    %28 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %29 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %30 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %31 = "llvm.mlir.zero"() : () -> !llvm.ptr
    %32 = "llvm.getelementptr"(%31, %29) <{elem_type = !llvm.struct<(i32)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %33 = "llvm.ptrtoint"(%32) : (!llvm.ptr) -> i64
    %34 = "llvm.getelementptr"(%arg6, %28) <{elem_type = !llvm.struct<(struct<"struct.kmp_task_ompbuilder_t", (ptr, ptr, i32, ptr, ptr)>, struct<(i64, i64, i64, ptr)>)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %35 = "llvm.getelementptr"(%34, %28) <{elem_type = !llvm.struct<(i64, i64, i64, ptr)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 3>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %36 = "llvm.getelementptr"(%arg7, %28) <{elem_type = !llvm.struct<(struct<"struct.kmp_task_ompbuilder_t", (ptr, ptr, i32, ptr, ptr)>, struct<(i64, i64, i64, ptr)>)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %37 = "llvm.getelementptr"(%36, %28) <{elem_type = !llvm.struct<(i64, i64, i64, ptr)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 3>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %38 = "llvm.load"(%37) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.ptr
    %39 = "llvm.call"(%33) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @malloc, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (i64) -> !llvm.ptr
    "llvm.store"(%39, %35) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %40 = "llvm.getelementptr"(%38, %28) <{elem_type = !llvm.struct<(i32)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %41 = "llvm.getelementptr"(%39, %28) <{elem_type = !llvm.struct<(i32)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.call"(%40, %41) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @_init, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (!llvm.ptr, !llvm.ptr) -> ()
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"(%40, %41) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @_copy, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (!llvm.ptr, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, convergent, function_type = !llvm.func<void (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "__kmpc_taskgroup", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<void (ptr, ptr, i32)>, linkage = #llvm.linkage<internal>, sym_name = "omp_taskloop_dup.1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: !llvm.ptr, %arg4: !llvm.ptr, %arg5: i32):
    %14 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %15 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %16 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %17 = "llvm.mlir.zero"() : () -> !llvm.ptr
    %18 = "llvm.getelementptr"(%17, %15) <{elem_type = !llvm.struct<(i32)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %19 = "llvm.ptrtoint"(%18) : (!llvm.ptr) -> i64
    %20 = "llvm.getelementptr"(%arg3, %14) <{elem_type = !llvm.struct<(struct<"struct.kmp_task_ompbuilder_t", (ptr, ptr, i32, ptr, ptr)>, struct<(i64, i64, i64, ptr)>)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %21 = "llvm.getelementptr"(%20, %14) <{elem_type = !llvm.struct<(i64, i64, i64, ptr)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 3>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %22 = "llvm.getelementptr"(%arg4, %14) <{elem_type = !llvm.struct<(struct<"struct.kmp_task_ompbuilder_t", (ptr, ptr, i32, ptr, ptr)>, struct<(i64, i64, i64, ptr)>)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %23 = "llvm.getelementptr"(%22, %14) <{elem_type = !llvm.struct<(i64, i64, i64, ptr)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 3>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %24 = "llvm.load"(%23) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.ptr
    %25 = "llvm.call"(%19) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @malloc, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (i64) -> !llvm.ptr
    "llvm.store"(%25, %21) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %26 = "llvm.getelementptr"(%24, %14) <{elem_type = !llvm.struct<(i32)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %27 = "llvm.getelementptr"(%25, %14) <{elem_type = !llvm.struct<(i32)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.call"(%26, %27) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @_init, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (!llvm.ptr, !llvm.ptr) -> ()
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"(%26, %27) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @_copy, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (!llvm.ptr, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, convergent, function_type = !llvm.func<void (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "__kmpc_end_taskgroup", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "__kmpc_cancellationpoint", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<void (ptr, ptr, i32)>, linkage = #llvm.linkage<internal>, sym_name = "omp_taskloop_dup.2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: !llvm.ptr, %arg1: !llvm.ptr, %arg2: i32):
    %0 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %2 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %3 = "llvm.mlir.zero"() : () -> !llvm.ptr
    %4 = "llvm.getelementptr"(%3, %1) <{elem_type = !llvm.struct<(i32)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %5 = "llvm.ptrtoint"(%4) : (!llvm.ptr) -> i64
    %6 = "llvm.getelementptr"(%arg0, %0) <{elem_type = !llvm.struct<(struct<"struct.kmp_task_ompbuilder_t", (ptr, ptr, i32, ptr, ptr)>, struct<(i64, i64, i64, ptr)>)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %7 = "llvm.getelementptr"(%6, %0) <{elem_type = !llvm.struct<(i64, i64, i64, ptr)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 3>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %8 = "llvm.getelementptr"(%arg1, %0) <{elem_type = !llvm.struct<(struct<"struct.kmp_task_ompbuilder_t", (ptr, ptr, i32, ptr, ptr)>, struct<(i64, i64, i64, ptr)>)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %9 = "llvm.getelementptr"(%8, %0) <{elem_type = !llvm.struct<(i64, i64, i64, ptr)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 3>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %10 = "llvm.load"(%9) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.ptr
    %11 = "llvm.call"(%5) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @malloc, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (i64) -> !llvm.ptr
    "llvm.store"(%11, %7) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %12 = "llvm.getelementptr"(%10, %0) <{elem_type = !llvm.struct<(i32)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %13 = "llvm.getelementptr"(%11, %0) <{elem_type = !llvm.struct<(i32)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.call"(%12, %13) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @_init, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (!llvm.ptr, !llvm.ptr) -> ()
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"(%12, %13) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @_copy, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (!llvm.ptr, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<ptr (ptr, i32, i32, i64, i64, ptr)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.noalias}], sym_name = "__kmpc_omp_task_alloc", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i32, ptr, i32, ptr, ptr, i64, i32, i32, i64, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "__kmpc_taskloop", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

