"builtin.module"() ({
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 1 : i64, constant, dso_local, global_type = !llvm.array<23 x i8>, linkage = #llvm.linkage<private>, sym_name = "mlir.llvm.nameless_global_0", unnamed_addr = 2 : i64, value = ";unknown;unknown;0;0;;\00", visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 8 : i64, constant, dso_local, global_type = !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, linkage = #llvm.linkage<private>, sym_name = "mlir.llvm.nameless_global_1", unnamed_addr = 2 : i64, visibility_ = 0 : i64}> ({
    %158 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_0}> : () -> !llvm.ptr
    %159 = "llvm.mlir.constant"() <{value = 22 : i32}> : () -> i32
    %160 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %161 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %162 = "llvm.mlir.undef"() : () -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %163 = "llvm.insertvalue"(%162, %160) <{position = array<i64: 0>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %164 = "llvm.insertvalue"(%163, %161) <{position = array<i64: 1>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %165 = "llvm.insertvalue"(%164, %160) <{position = array<i64: 2>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %166 = "llvm.insertvalue"(%165, %159) <{position = array<i64: 3>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %167 = "llvm.insertvalue"(%166, %158) <{position = array<i64: 4>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, !llvm.ptr) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    "llvm.return"(%167) : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>) -> ()
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 8 : i64, constant, dso_local, global_type = !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, linkage = #llvm.linkage<private>, sym_name = "mlir.llvm.nameless_global_2", unnamed_addr = 2 : i64, visibility_ = 0 : i64}> ({
    %148 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_0}> : () -> !llvm.ptr
    %149 = "llvm.mlir.constant"() <{value = 22 : i32}> : () -> i32
    %150 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %151 = "llvm.mlir.constant"() <{value = 66 : i32}> : () -> i32
    %152 = "llvm.mlir.undef"() : () -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %153 = "llvm.insertvalue"(%152, %150) <{position = array<i64: 0>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %154 = "llvm.insertvalue"(%153, %151) <{position = array<i64: 1>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %155 = "llvm.insertvalue"(%154, %150) <{position = array<i64: 2>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %156 = "llvm.insertvalue"(%155, %149) <{position = array<i64: 3>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %157 = "llvm.insertvalue"(%156, %148) <{position = array<i64: 4>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, !llvm.ptr) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    "llvm.return"(%157) : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>) -> ()
  }) : () -> ()
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<warning, "Debug Info Version", 3 : i32>]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr)>, linkage = #llvm.linkage<external>, sym_name = "collapse_wsloop", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: i32, %arg4: i32, %arg5: i32, %arg6: i32, %arg7: i32, %arg8: i32, %arg9: i32, %arg10: i32, %arg11: i32, %arg12: !llvm.ptr):
    %115 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %116 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_1}> : () -> !llvm.ptr
    %117 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %118 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %119 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %120 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %121 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %122 = "llvm.mlir.constant"() <{value = 6 : i32}> : () -> i32
    %123 = "llvm.mlir.constant"() <{value = 7 : i32}> : () -> i32
    %124 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %125 = "llvm.mlir.constant"() <{value = 9 : i32}> : () -> i32
    %126 = "llvm.mlir.addressof"() <{global_name = @collapse_wsloop..omp_par}> : () -> !llvm.ptr
    %127 = "llvm.alloca"(%115) <{alignment = 8 : i64, elem_type = !llvm.struct<(ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr)>}> : (i32) -> !llvm.ptr
    %128 = "llvm.alloca"(%115) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %129 = "llvm.alloca"(%115) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %130 = "llvm.alloca"(%115) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %131 = "llvm.alloca"(%115) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %132 = "llvm.alloca"(%115) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %133 = "llvm.alloca"(%115) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %134 = "llvm.alloca"(%115) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %135 = "llvm.alloca"(%115) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %136 = "llvm.alloca"(%115) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    %137 = "llvm.call"(%116) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_global_thread_num, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> i32
    "llvm.store"(%arg9, %128) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.store"(%arg6, %129) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.store"(%arg3, %130) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.store"(%arg10, %131) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.store"(%arg7, %132) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.store"(%arg4, %133) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.store"(%arg11, %134) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.store"(%arg8, %135) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.store"(%arg5, %136) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // pred: ^bb1
    %138 = "llvm.getelementptr"(%127, %117) <{elem_type = !llvm.struct<(ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%128, %138) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %139 = "llvm.getelementptr"(%127, %117) <{elem_type = !llvm.struct<(ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%129, %139) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %140 = "llvm.getelementptr"(%127, %117) <{elem_type = !llvm.struct<(ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 2>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%130, %140) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %141 = "llvm.getelementptr"(%127, %117) <{elem_type = !llvm.struct<(ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 3>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%131, %141) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %142 = "llvm.getelementptr"(%127, %117) <{elem_type = !llvm.struct<(ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 4>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%132, %142) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %143 = "llvm.getelementptr"(%127, %117) <{elem_type = !llvm.struct<(ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 5>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%133, %143) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %144 = "llvm.getelementptr"(%127, %117) <{elem_type = !llvm.struct<(ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 6>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%134, %144) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %145 = "llvm.getelementptr"(%127, %117) <{elem_type = !llvm.struct<(ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 7>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%135, %145) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %146 = "llvm.getelementptr"(%127, %117) <{elem_type = !llvm.struct<(ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 8>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%136, %146) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %147 = "llvm.getelementptr"(%127, %117) <{elem_type = !llvm.struct<(ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 9>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%arg12, %147) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    "llvm.call"(%116, %115, %126, %127) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_fork_call, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>, var_callee_type = !llvm.func<void (ptr, i32, ptr, ...)>}> : (!llvm.ptr, i32, !llvm.ptr, !llvm.ptr) -> ()
    "llvm.br"()[^bb3] : () -> ()
  ^bb3:  // pred: ^bb2
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.noalias}, {llvm.noalias}, {}], dso_local, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<internal>, no_unwind, sym_name = "collapse_wsloop..omp_par", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: !llvm.ptr, %arg1: !llvm.ptr, %arg2: !llvm.ptr):
    %0 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %2 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %3 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %4 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %5 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %6 = "llvm.mlir.constant"() <{value = 6 : i32}> : () -> i32
    %7 = "llvm.mlir.constant"() <{value = 7 : i32}> : () -> i32
    %8 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %9 = "llvm.mlir.constant"() <{value = 9 : i32}> : () -> i32
    %10 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_1}> : () -> !llvm.ptr
    %11 = "llvm.mlir.constant"() <{value = 34 : i32}> : () -> i32
    %12 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_2}> : () -> !llvm.ptr
    %13 = "llvm.getelementptr"(%arg2, %0) <{elem_type = !llvm.struct<(ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %14 = "llvm.load"(%13) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.ptr
    %15 = "llvm.getelementptr"(%arg2, %0) <{elem_type = !llvm.struct<(ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %16 = "llvm.load"(%15) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.ptr
    %17 = "llvm.getelementptr"(%arg2, %0) <{elem_type = !llvm.struct<(ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 2>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %18 = "llvm.load"(%17) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.ptr
    %19 = "llvm.getelementptr"(%arg2, %0) <{elem_type = !llvm.struct<(ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 3>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %20 = "llvm.load"(%19) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.ptr
    %21 = "llvm.getelementptr"(%arg2, %0) <{elem_type = !llvm.struct<(ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 4>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %22 = "llvm.load"(%21) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.ptr
    %23 = "llvm.getelementptr"(%arg2, %0) <{elem_type = !llvm.struct<(ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 5>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %24 = "llvm.load"(%23) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.ptr
    %25 = "llvm.getelementptr"(%arg2, %0) <{elem_type = !llvm.struct<(ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 6>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %26 = "llvm.load"(%25) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.ptr
    %27 = "llvm.getelementptr"(%arg2, %0) <{elem_type = !llvm.struct<(ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 7>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %28 = "llvm.load"(%27) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.ptr
    %29 = "llvm.getelementptr"(%arg2, %0) <{elem_type = !llvm.struct<(ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 8>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %30 = "llvm.load"(%29) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.ptr
    %31 = "llvm.getelementptr"(%arg2, %0) <{elem_type = !llvm.struct<(ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 9>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %32 = "llvm.load"(%31) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.ptr
    %33 = "llvm.alloca"(%1) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %34 = "llvm.alloca"(%1) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %35 = "llvm.alloca"(%1) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %36 = "llvm.alloca"(%1) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %37 = "llvm.alloca"(%1) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %38 = "llvm.load"(%arg0) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.store"(%38, %37) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %39 = "llvm.load"(%37) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %40 = "llvm.load"(%14) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %41 = "llvm.load"(%16) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %42 = "llvm.load"(%18) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %43 = "llvm.load"(%20) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %44 = "llvm.load"(%22) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %45 = "llvm.load"(%24) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %46 = "llvm.load"(%26) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %47 = "llvm.load"(%28) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %48 = "llvm.load"(%30) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
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
    %49 = "llvm.icmp"(%40, %0) <{predicate = 2 : i64}> : (i32, i32) -> i1
    %50 = "llvm.sub"(%0, %40) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %51 = "llvm.select"(%49, %50, %40) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %52 = "llvm.select"(%49, %41, %42) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %53 = "llvm.select"(%49, %42, %41) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %54 = "llvm.sub"(%53, %52) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %55 = "llvm.icmp"(%53, %52) <{predicate = 3 : i64}> : (i32, i32) -> i1
    %56 = "llvm.sub"(%54, %1) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %57 = "llvm.udiv"(%56, %51) : (i32, i32) -> i32
    %58 = "llvm.add"(%57, %1) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %59 = "llvm.icmp"(%54, %51) <{predicate = 7 : i64}> : (i32, i32) -> i1
    %60 = "llvm.select"(%59, %1, %58) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %61 = "llvm.select"(%55, %0, %60) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.br"()[^bb6] : () -> ()
  ^bb6:  // pred: ^bb5
    %62 = "llvm.icmp"(%43, %0) <{predicate = 2 : i64}> : (i32, i32) -> i1
    %63 = "llvm.sub"(%0, %43) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %64 = "llvm.select"(%62, %63, %43) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %65 = "llvm.select"(%62, %44, %45) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %66 = "llvm.select"(%62, %45, %44) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %67 = "llvm.sub"(%66, %65) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %68 = "llvm.icmp"(%66, %65) <{predicate = 3 : i64}> : (i32, i32) -> i1
    %69 = "llvm.sub"(%67, %1) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %70 = "llvm.udiv"(%69, %64) : (i32, i32) -> i32
    %71 = "llvm.add"(%70, %1) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %72 = "llvm.icmp"(%67, %64) <{predicate = 7 : i64}> : (i32, i32) -> i1
    %73 = "llvm.select"(%72, %1, %71) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %74 = "llvm.select"(%68, %0, %73) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %75 = "llvm.icmp"(%46, %0) <{predicate = 2 : i64}> : (i32, i32) -> i1
    %76 = "llvm.sub"(%0, %46) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %77 = "llvm.select"(%75, %76, %46) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %78 = "llvm.select"(%75, %47, %48) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %79 = "llvm.select"(%75, %48, %47) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %80 = "llvm.sub"(%79, %78) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %81 = "llvm.icmp"(%79, %78) <{predicate = 3 : i64}> : (i32, i32) -> i1
    %82 = "llvm.sub"(%80, %1) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %83 = "llvm.udiv"(%82, %77) : (i32, i32) -> i32
    %84 = "llvm.add"(%83, %1) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %85 = "llvm.icmp"(%80, %77) <{predicate = 7 : i64}> : (i32, i32) -> i1
    %86 = "llvm.select"(%85, %1, %84) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %87 = "llvm.select"(%81, %0, %86) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %88 = "llvm.mul"(%61, %74) <{overflowFlags = 2 : i32}> : (i32, i32) -> i32
    %89 = "llvm.mul"(%88, %87) <{overflowFlags = 2 : i32}> : (i32, i32) -> i32
    "llvm.br"()[^bb7] : () -> ()
  ^bb7:  // pred: ^bb6
    "llvm.store"(%0, %34) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %90 = "llvm.sub"(%89, %1) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.store"(%90, %35) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.store"(%1, %36) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %91 = "llvm.call"(%10) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_global_thread_num, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> i32
    "llvm.call"(%10, %91, %11, %33, %34, %35, %36, %1, %0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_for_static_init_4u, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 9, 0>}> : (!llvm.ptr, i32, i32, !llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    %92 = "llvm.load"(%34) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %93 = "llvm.load"(%35) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %94 = "llvm.sub"(%93, %92) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %95 = "llvm.add"(%94, %1) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.br"(%0)[^bb8] : (i32) -> ()
  ^bb8(%96: i32):  // 2 preds: ^bb7, ^bb27
    "llvm.br"()[^bb9] : () -> ()
  ^bb9:  // pred: ^bb8
    %97 = "llvm.icmp"(%96, %95) <{predicate = 6 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%97)[^bb17, ^bb10] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb10:  // pred: ^bb9
    "llvm.call"(%10, %91) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_for_static_fini, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (!llvm.ptr, i32) -> ()
    %98 = "llvm.call"(%10) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_global_thread_num, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> i32
    "llvm.call"(%12, %98) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_barrier, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (!llvm.ptr, i32) -> ()
    "llvm.br"()[^bb11] : () -> ()
  ^bb11:  // pred: ^bb10
    "llvm.br"()[^bb12] : () -> ()
  ^bb12:  // pred: ^bb11
    "llvm.br"()[^bb13] : () -> ()
  ^bb13:  // pred: ^bb12
    "llvm.br"()[^bb14] : () -> ()
  ^bb14:  // pred: ^bb13
    "llvm.br"()[^bb15] : () -> ()
  ^bb15:  // pred: ^bb14
    "llvm.br"()[^bb16] : () -> ()
  ^bb16:  // pred: ^bb15
    "llvm.br"()[^bb28] : () -> ()
  ^bb17:  // pred: ^bb9
    %99 = "llvm.add"(%96, %92) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %100 = "llvm.urem"(%99, %87) : (i32, i32) -> i32
    %101 = "llvm.udiv"(%99, %87) : (i32, i32) -> i32
    %102 = "llvm.urem"(%101, %74) : (i32, i32) -> i32
    %103 = "llvm.udiv"(%101, %74) : (i32, i32) -> i32
    "llvm.br"()[^bb18] : () -> ()
  ^bb18:  // pred: ^bb17
    %104 = "llvm.mul"(%103, %40) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %105 = "llvm.add"(%104, %42) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.br"()[^bb19] : () -> ()
  ^bb19:  // pred: ^bb18
    "llvm.br"()[^bb20] : () -> ()
  ^bb20:  // pred: ^bb19
    %106 = "llvm.mul"(%102, %43) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %107 = "llvm.add"(%106, %45) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.br"()[^bb21] : () -> ()
  ^bb21:  // pred: ^bb20
    "llvm.br"()[^bb22] : () -> ()
  ^bb22:  // pred: ^bb21
    %108 = "llvm.mul"(%100, %46) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %109 = "llvm.add"(%108, %48) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.br"()[^bb23] : () -> ()
  ^bb23:  // pred: ^bb22
    %110 = "llvm.load"(%32) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %111 = "llvm.add"(%110, %105) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %112 = "llvm.add"(%111, %107) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %113 = "llvm.add"(%112, %109) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.store"(%113, %32) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb24] : () -> ()
  ^bb24:  // pred: ^bb23
    "llvm.br"()[^bb25] : () -> ()
  ^bb25:  // pred: ^bb24
    "llvm.br"()[^bb26] : () -> ()
  ^bb26:  // pred: ^bb25
    "llvm.br"()[^bb27] : () -> ()
  ^bb27:  // pred: ^bb26
    %114 = "llvm.add"(%96, %1) <{overflowFlags = 2 : i32}> : (i32, i32) -> i32
    "llvm.br"(%114)[^bb8] : (i32) -> ()
  ^bb28:  // pred: ^bb16
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "__kmpc_global_thread_num", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "__kmpc_for_static_init_4u", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "__kmpc_for_static_fini", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, convergent, function_type = !llvm.func<void (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "__kmpc_barrier", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i32, ptr, ...)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "__kmpc_fork_call", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

