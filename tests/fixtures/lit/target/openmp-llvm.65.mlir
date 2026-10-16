"builtin.module"() ({
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 1 : i64, constant, dso_local, global_type = !llvm.array<23 x i8>, linkage = #llvm.linkage<private>, sym_name = "mlir.llvm.nameless_global_0", unnamed_addr = 2 : i64, value = ";unknown;unknown;0;0;;\00", visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 8 : i64, constant, dso_local, global_type = !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, linkage = #llvm.linkage<private>, sym_name = "mlir.llvm.nameless_global_1", unnamed_addr = 2 : i64, visibility_ = 0 : i64}> ({
    %48 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_0}> : () -> !llvm.ptr
    %49 = "llvm.mlir.constant"() <{value = 22 : i32}> : () -> i32
    %50 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %51 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %52 = "llvm.mlir.undef"() : () -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %53 = "llvm.insertvalue"(%52, %50) <{position = array<i64: 0>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %54 = "llvm.insertvalue"(%53, %51) <{position = array<i64: 1>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %55 = "llvm.insertvalue"(%54, %50) <{position = array<i64: 2>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %56 = "llvm.insertvalue"(%55, %49) <{position = array<i64: 3>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %57 = "llvm.insertvalue"(%56, %48) <{position = array<i64: 4>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, !llvm.ptr) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    "llvm.return"(%57) : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>) -> ()
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 8 : i64, constant, dso_local, global_type = !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, linkage = #llvm.linkage<private>, sym_name = "mlir.llvm.nameless_global_2", unnamed_addr = 2 : i64, visibility_ = 0 : i64}> ({
    %38 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_0}> : () -> !llvm.ptr
    %39 = "llvm.mlir.constant"() <{value = 22 : i32}> : () -> i32
    %40 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %41 = "llvm.mlir.constant"() <{value = 66 : i32}> : () -> i32
    %42 = "llvm.mlir.undef"() : () -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %43 = "llvm.insertvalue"(%42, %40) <{position = array<i64: 0>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %44 = "llvm.insertvalue"(%43, %41) <{position = array<i64: 1>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %45 = "llvm.insertvalue"(%44, %40) <{position = array<i64: 2>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %46 = "llvm.insertvalue"(%45, %39) <{position = array<i64: 3>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %47 = "llvm.insertvalue"(%46, %38) <{position = array<i64: 4>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, !llvm.ptr) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    "llvm.return"(%47) : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>) -> ()
  }) : () -> ()
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<warning, "Debug Info Version", 3 : i32>]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (i64, i64, i64, i1)>, linkage = #llvm.linkage<external>, sym_name = "repeated_successor", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i64, %arg1: i64, %arg2: i64, %arg3: i1):
    %0 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %2 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %3 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_1}> : () -> !llvm.ptr
    %4 = "llvm.mlir.constant"() <{value = 34 : i32}> : () -> i32
    %5 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_2}> : () -> !llvm.ptr
    %6 = "llvm.alloca"(%0) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %7 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = i64}> : (i32) -> !llvm.ptr
    %8 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = i64}> : (i32) -> !llvm.ptr
    %9 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = i64}> : (i32) -> !llvm.ptr
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // pred: ^bb1
    "llvm.br"()[^bb3] : () -> ()
  ^bb3:  // pred: ^bb2
    %10 = "llvm.icmp"(%arg2, %1) <{predicate = 2 : i64}> : (i64, i64) -> i1
    %11 = "llvm.sub"(%1, %arg2) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %12 = "llvm.select"(%10, %11, %arg2) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    %13 = "llvm.select"(%10, %arg1, %arg0) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    %14 = "llvm.select"(%10, %arg0, %arg1) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    %15 = "llvm.sub"(%14, %13) <{overflowFlags = 1 : i32}> : (i64, i64) -> i64
    %16 = "llvm.icmp"(%14, %13) <{predicate = 3 : i64}> : (i64, i64) -> i1
    %17 = "llvm.sub"(%15, %2) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %18 = "llvm.udiv"(%17, %12) : (i64, i64) -> i64
    %19 = "llvm.add"(%18, %2) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %20 = "llvm.icmp"(%15, %12) <{predicate = 7 : i64}> : (i64, i64) -> i1
    %21 = "llvm.select"(%20, %2, %19) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    %22 = "llvm.select"(%16, %1, %21) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.br"()[^bb4] : () -> ()
  ^bb4:  // pred: ^bb3
    "llvm.store"(%1, %7) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %23 = "llvm.sub"(%22, %2) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.store"(%23, %8) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    "llvm.store"(%2, %9) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %24 = "llvm.call"(%3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_global_thread_num, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> i32
    "llvm.call"(%3, %24, %4, %6, %7, %8, %9, %2, %1) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_for_static_init_8u, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 9, 0>}> : (!llvm.ptr, i32, i32, !llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.ptr, i64, i64) -> ()
    %25 = "llvm.load"(%7) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    %26 = "llvm.load"(%8) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    %27 = "llvm.sub"(%26, %25) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %28 = "llvm.add"(%27, %2) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.br"(%1)[^bb5] : (i64) -> ()
  ^bb5(%29: i64):  // 2 preds: ^bb4, ^bb12
    "llvm.br"()[^bb6] : () -> ()
  ^bb6:  // pred: ^bb5
    %30 = "llvm.icmp"(%29, %28) <{predicate = 6 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%30)[^bb7, ^bb13] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb7:  // pred: ^bb6
    %31 = "llvm.add"(%29, %25) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %32 = "llvm.mul"(%31, %arg2) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %33 = "llvm.add"(%32, %arg0) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.br"()[^bb10] : () -> ()
  ^bb8(%34: i64):  // pred: ^bb10
    "llvm.br"(%34)[^bb9] : (i64) -> ()
  ^bb9(%35: i64):  // 2 preds: ^bb8, ^bb10
    "llvm.br"()[^bb11] : () -> ()
  ^bb10:  // pred: ^bb7
    "llvm.cond_br"(%arg3, %arg0, %arg1)[^bb9, ^bb8] <{operandSegmentSizes = array<i32: 1, 1, 1>}> : (i1, i64, i64) -> ()
  ^bb11:  // pred: ^bb9
    "llvm.br"()[^bb12] : () -> ()
  ^bb12:  // pred: ^bb11
    %36 = "llvm.add"(%29, %2) <{overflowFlags = 2 : i32}> : (i64, i64) -> i64
    "llvm.br"(%36)[^bb5] : (i64) -> ()
  ^bb13:  // pred: ^bb6
    "llvm.call"(%3, %24) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_for_static_fini, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (!llvm.ptr, i32) -> ()
    %37 = "llvm.call"(%3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_global_thread_num, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> i32
    "llvm.call"(%5, %37) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_barrier, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (!llvm.ptr, i32) -> ()
    "llvm.br"()[^bb14] : () -> ()
  ^bb14:  // pred: ^bb13
    "llvm.br"()[^bb15] : () -> ()
  ^bb15:  // pred: ^bb14
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "__kmpc_for_static_init_8u", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "__kmpc_for_static_fini", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "__kmpc_global_thread_num", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, convergent, function_type = !llvm.func<void (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "__kmpc_barrier", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

