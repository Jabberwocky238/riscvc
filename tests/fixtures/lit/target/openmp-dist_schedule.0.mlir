"builtin.module"() ({
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 1 : i64, constant, dso_local, global_type = !llvm.array<23 x i8>, linkage = #llvm.linkage<private>, sym_name = "mlir.llvm.nameless_global_0", unnamed_addr = 2 : i64, value = ";unknown;unknown;0;0;;\00", visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 8 : i64, constant, dso_local, global_type = !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, linkage = #llvm.linkage<private>, sym_name = "mlir.llvm.nameless_global_1", unnamed_addr = 2 : i64, visibility_ = 0 : i64}> ({
    %54 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_0}> : () -> !llvm.ptr
    %55 = "llvm.mlir.constant"() <{value = 22 : i32}> : () -> i32
    %56 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %57 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %58 = "llvm.mlir.undef"() : () -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %59 = "llvm.insertvalue"(%58, %56) <{position = array<i64: 0>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %60 = "llvm.insertvalue"(%59, %57) <{position = array<i64: 1>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %61 = "llvm.insertvalue"(%60, %56) <{position = array<i64: 2>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %62 = "llvm.insertvalue"(%61, %55) <{position = array<i64: 3>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %63 = "llvm.insertvalue"(%62, %54) <{position = array<i64: 4>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, !llvm.ptr) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    "llvm.return"(%63) : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>) -> ()
  }) : () -> ()
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<warning, "Debug Info Version", 3 : i32>]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "distribute_dist_schedule_chunk_size", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32):
    %0 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %2 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_1}> : () -> !llvm.ptr
    %3 = "llvm.mlir.constant"() <{value = 91 : i32}> : () -> i32
    %4 = "llvm.mlir.constant"() <{value = 1024 : i32}> : () -> i32
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // pred: ^bb1
    "llvm.br"()[^bb3] : () -> ()
  ^bb3:  // pred: ^bb2
    %5 = "llvm.alloca"(%0) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %6 = "llvm.alloca"(%0) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %7 = "llvm.alloca"(%0) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %8 = "llvm.alloca"(%0) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    "llvm.br"()[^bb4] : () -> ()
  ^bb4:  // pred: ^bb3
    "llvm.br"()[^bb5] : () -> ()
  ^bb5:  // pred: ^bb4
    %9 = "llvm.icmp"(%arg2, %1) <{predicate = 2 : i64}> : (i32, i32) -> i1
    %10 = "llvm.sub"(%1, %arg2) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %11 = "llvm.select"(%9, %10, %arg2) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %12 = "llvm.select"(%9, %arg1, %arg0) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %13 = "llvm.select"(%9, %arg0, %arg1) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %14 = "llvm.sub"(%13, %12) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %15 = "llvm.icmp"(%13, %12) <{predicate = 3 : i64}> : (i32, i32) -> i1
    %16 = "llvm.sub"(%14, %0) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %17 = "llvm.udiv"(%16, %11) : (i32, i32) -> i32
    %18 = "llvm.add"(%17, %0) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %19 = "llvm.icmp"(%14, %11) <{predicate = 7 : i64}> : (i32, i32) -> i1
    %20 = "llvm.select"(%19, %0, %18) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %21 = "llvm.select"(%15, %1, %20) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.br"()[^bb6] : () -> ()
  ^bb6:  // pred: ^bb5
    "llvm.store"(%1, %6) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %22 = "llvm.sub"(%21, %0) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %23 = "llvm.icmp"(%21, %1) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %24 = "llvm.select"(%23, %1, %22) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.store"(%24, %7) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.store"(%0, %8) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %25 = "llvm.call"(%2) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_global_thread_num, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> i32
    "llvm.call"(%2, %25, %3, %5, %6, %7, %8, %0, %4) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_for_static_init_4u, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 9, 0>}> : (!llvm.ptr, i32, i32, !llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    %26 = "llvm.load"(%6) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %27 = "llvm.load"(%7) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %28 = "llvm.add"(%27, %0) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %29 = "llvm.sub"(%28, %26) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %30 = "llvm.load"(%8) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %31 = "llvm.sub"(%21, %26) <{overflowFlags = 2 : i32}> : (i32, i32) -> i32
    %32 = "llvm.icmp"(%21, %26) <{predicate = 7 : i64}> : (i32, i32) -> i1
    %33 = "llvm.sub"(%31, %0) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %34 = "llvm.udiv"(%33, %30) : (i32, i32) -> i32
    %35 = "llvm.add"(%34, %0) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %36 = "llvm.icmp"(%31, %30) <{predicate = 7 : i64}> : (i32, i32) -> i1
    %37 = "llvm.select"(%36, %0, %35) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %38 = "llvm.select"(%32, %1, %37) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.br"()[^bb7] : () -> ()
  ^bb7:  // pred: ^bb6
    "llvm.br"(%1)[^bb8] : (i32) -> ()
  ^bb8(%39: i32):  // 2 preds: ^bb7, ^bb11
    "llvm.br"()[^bb9] : () -> ()
  ^bb9:  // pred: ^bb8
    %40 = "llvm.icmp"(%39, %38) <{predicate = 6 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%40)[^bb10, ^bb12] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb10:  // pred: ^bb9
    %41 = "llvm.mul"(%39, %30) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %42 = "llvm.add"(%41, %26) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.br"()[^bb14] : () -> ()
  ^bb11:  // pred: ^bb21
    %43 = "llvm.add"(%39, %0) <{overflowFlags = 2 : i32}> : (i32, i32) -> i32
    "llvm.br"(%43)[^bb8] : (i32) -> ()
  ^bb12:  // pred: ^bb9
    "llvm.call"(%2, %25) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_for_static_fini, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (!llvm.ptr, i32) -> ()
    "llvm.br"()[^bb13] : () -> ()
  ^bb13:  // pred: ^bb12
    "llvm.br"()[^bb22] : () -> ()
  ^bb14:  // pred: ^bb10
    %44 = "llvm.add"(%42, %29) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %45 = "llvm.icmp"(%44, %21) <{predicate = 9 : i64}> : (i32, i32) -> i1
    %46 = "llvm.sub"(%21, %42) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %47 = "llvm.select"(%45, %46, %29) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.br"(%1)[^bb15] : (i32) -> ()
  ^bb15(%48: i32):  // 2 preds: ^bb14, ^bb20
    "llvm.br"()[^bb16] : () -> ()
  ^bb16:  // pred: ^bb15
    %49 = "llvm.icmp"(%48, %47) <{predicate = 6 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%49)[^bb17, ^bb21] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb17:  // pred: ^bb16
    %50 = "llvm.add"(%48, %42) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %51 = "llvm.mul"(%50, %arg2) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %52 = "llvm.add"(%51, %arg0) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.br"()[^bb18] : () -> ()
  ^bb18:  // pred: ^bb17
    "llvm.br"()[^bb19] : () -> ()
  ^bb19:  // pred: ^bb18
    "llvm.br"()[^bb20] : () -> ()
  ^bb20:  // pred: ^bb19
    %53 = "llvm.add"(%48, %0) <{overflowFlags = 2 : i32}> : (i32, i32) -> i32
    "llvm.br"(%53)[^bb15] : (i32) -> ()
  ^bb21:  // pred: ^bb16
    "llvm.br"()[^bb11] : () -> ()
  ^bb22:  // pred: ^bb13
    "llvm.br"()[^bb23] : () -> ()
  ^bb23:  // pred: ^bb22
    "llvm.br"()[^bb24] : () -> ()
  ^bb24:  // pred: ^bb23
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "__kmpc_for_static_init_4u", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "__kmpc_for_static_fini", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "__kmpc_global_thread_num", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

