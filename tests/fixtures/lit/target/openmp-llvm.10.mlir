#access_group = #llvm.access_group<id = distinct[0]<>>
#loop_annotation = #llvm.loop_annotation<parallelAccesses = #access_group>
"builtin.module"() ({
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 1 : i64, constant, dso_local, global_type = !llvm.array<23 x i8>, linkage = #llvm.linkage<private>, sym_name = "mlir.llvm.nameless_global_0", unnamed_addr = 2 : i64, value = ";unknown;unknown;0;0;;\00", visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 8 : i64, constant, dso_local, global_type = !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, linkage = #llvm.linkage<private>, sym_name = "mlir.llvm.nameless_global_1", unnamed_addr = 2 : i64, visibility_ = 0 : i64}> ({
    %66 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_0}> : () -> !llvm.ptr
    %67 = "llvm.mlir.constant"() <{value = 22 : i32}> : () -> i32
    %68 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %69 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %70 = "llvm.mlir.undef"() : () -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %71 = "llvm.insertvalue"(%70, %68) <{position = array<i64: 0>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %72 = "llvm.insertvalue"(%71, %69) <{position = array<i64: 1>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %73 = "llvm.insertvalue"(%72, %68) <{position = array<i64: 2>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %74 = "llvm.insertvalue"(%73, %67) <{position = array<i64: 3>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %75 = "llvm.insertvalue"(%74, %66) <{position = array<i64: 4>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, !llvm.ptr) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    "llvm.return"(%75) : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>) -> ()
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 8 : i64, constant, dso_local, global_type = !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, linkage = #llvm.linkage<private>, sym_name = "mlir.llvm.nameless_global_2", unnamed_addr = 2 : i64, visibility_ = 0 : i64}> ({
    %56 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_0}> : () -> !llvm.ptr
    %57 = "llvm.mlir.constant"() <{value = 22 : i32}> : () -> i32
    %58 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %59 = "llvm.mlir.constant"() <{value = 66 : i32}> : () -> i32
    %60 = "llvm.mlir.undef"() : () -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %61 = "llvm.insertvalue"(%60, %58) <{position = array<i64: 0>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %62 = "llvm.insertvalue"(%61, %59) <{position = array<i64: 1>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %63 = "llvm.insertvalue"(%62, %58) <{position = array<i64: 2>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %64 = "llvm.insertvalue"(%63, %57) <{position = array<i64: 3>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, i32) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    %65 = "llvm.insertvalue"(%64, %56) <{position = array<i64: 4>}> : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>, !llvm.ptr) -> !llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>
    "llvm.return"(%65) : (!llvm.struct<"struct.ident_t", (i32, i32, i32, i32, ptr)>) -> ()
  }) : () -> ()
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<warning, "Debug Info Version", 3 : i32>]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (i32)>, linkage = #llvm.linkage<external>, sym_name = "body", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "test_omp_wsloop_static_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: i32):
    %0 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %2 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_1}> : () -> !llvm.ptr
    %3 = "llvm.mlir.constant"() <{value = 33 : i32}> : () -> i32
    %4 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %5 = "llvm.mlir.addressof"() <{global_name = @mlir.llvm.nameless_global_2}> : () -> !llvm.ptr
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    %6 = "llvm.alloca"(%0) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %7 = "llvm.alloca"(%0) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %8 = "llvm.alloca"(%0) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %9 = "llvm.alloca"(%0) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // pred: ^bb1
    "llvm.br"()[^bb3] : () -> ()
  ^bb3:  // pred: ^bb2
    %10 = "llvm.icmp"(%arg2, %1) <{predicate = 2 : i64}> : (i32, i32) -> i1
    %11 = "llvm.sub"(%1, %arg2) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %12 = "llvm.select"(%10, %11, %arg2) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %13 = "llvm.select"(%10, %arg1, %arg0) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %14 = "llvm.select"(%10, %arg0, %arg1) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %15 = "llvm.sub"(%14, %13) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %16 = "llvm.icmp"(%14, %13) <{predicate = 3 : i64}> : (i32, i32) -> i1
    %17 = "llvm.sub"(%15, %0) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %18 = "llvm.udiv"(%17, %12) : (i32, i32) -> i32
    %19 = "llvm.add"(%18, %0) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %20 = "llvm.icmp"(%15, %12) <{predicate = 7 : i64}> : (i32, i32) -> i1
    %21 = "llvm.select"(%20, %0, %19) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %22 = "llvm.select"(%16, %1, %21) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.br"()[^bb4] : () -> ()
  ^bb4:  // pred: ^bb3
    "llvm.store"(%1, %7) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %23 = "llvm.sub"(%22, %0) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %24 = "llvm.icmp"(%22, %1) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %25 = "llvm.select"(%24, %1, %23) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.store"(%25, %8) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.store"(%0, %9) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %26 = "llvm.call"(%2) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_global_thread_num, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> i32
    "llvm.call"(%2, %26, %3, %6, %7, %8, %9, %0, %4) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_for_static_init_4u, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 9, 0>}> : (!llvm.ptr, i32, i32, !llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    %27 = "llvm.load"(%7) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %28 = "llvm.load"(%8) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %29 = "llvm.add"(%28, %0) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %30 = "llvm.sub"(%29, %27) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %31 = "llvm.load"(%9) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %32 = "llvm.sub"(%22, %27) <{overflowFlags = 2 : i32}> : (i32, i32) -> i32
    %33 = "llvm.icmp"(%22, %27) <{predicate = 7 : i64}> : (i32, i32) -> i1
    %34 = "llvm.sub"(%32, %0) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %35 = "llvm.udiv"(%34, %31) : (i32, i32) -> i32
    %36 = "llvm.add"(%35, %0) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %37 = "llvm.icmp"(%32, %31) <{predicate = 7 : i64}> : (i32, i32) -> i1
    %38 = "llvm.select"(%37, %0, %36) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %39 = "llvm.select"(%33, %1, %38) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.br"()[^bb5] : () -> ()
  ^bb5:  // pred: ^bb4
    "llvm.br"(%1)[^bb6] : (i32) -> ()
  ^bb6(%40: i32):  // 2 preds: ^bb5, ^bb9
    "llvm.br"()[^bb7] : () -> ()
  ^bb7:  // pred: ^bb6
    %41 = "llvm.icmp"(%40, %39) <{predicate = 6 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%41)[^bb8, ^bb10] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb8:  // pred: ^bb7
    %42 = "llvm.mul"(%40, %31) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %43 = "llvm.add"(%42, %27) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.br"()[^bb12] : () -> ()
  ^bb9:  // pred: ^bb19
    %44 = "llvm.add"(%40, %0) <{overflowFlags = 2 : i32}> : (i32, i32) -> i32
    "llvm.br"(%44)[^bb6] : (i32) -> ()
  ^bb10:  // pred: ^bb7
    "llvm.call"(%2, %26) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_for_static_fini, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (!llvm.ptr, i32) -> ()
    %45 = "llvm.call"(%2) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_global_thread_num, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> i32
    "llvm.call"(%5, %45) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__kmpc_barrier, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (!llvm.ptr, i32) -> ()
    "llvm.br"()[^bb11] : () -> ()
  ^bb11:  // pred: ^bb10
    "llvm.br"()[^bb20] : () -> ()
  ^bb12:  // pred: ^bb8
    %46 = "llvm.add"(%43, %30) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %47 = "llvm.icmp"(%46, %22) <{predicate = 9 : i64}> : (i32, i32) -> i1
    %48 = "llvm.sub"(%22, %43) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %49 = "llvm.select"(%47, %48, %30) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.br"(%1)[^bb13] : (i32) -> ()
  ^bb13(%50: i32):  // 2 preds: ^bb12, ^bb18
    "llvm.br"()[^bb14] : () -> ()
  ^bb14:  // pred: ^bb13
    %51 = "llvm.icmp"(%50, %49) <{predicate = 6 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%51)[^bb15, ^bb19] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb15:  // pred: ^bb14
    %52 = "llvm.add"(%50, %43) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %53 = "llvm.mul"(%52, %arg2) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %54 = "llvm.add"(%53, %arg0) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.br"()[^bb16] : () -> ()
  ^bb16:  // pred: ^bb15
    "llvm.call"(%54) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, access_groups = [#access_group], callee = @body, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (i32) -> ()
    "llvm.br"()[^bb17] : () -> ()
  ^bb17:  // pred: ^bb16
    "llvm.br"()[^bb18] : () -> ()
  ^bb18:  // pred: ^bb17
    %55 = "llvm.add"(%50, %0) <{overflowFlags = 2 : i32}> : (i32, i32) -> i32
    "llvm.br"(%55)[^bb13] <{loop_annotation = #loop_annotation}> : (i32) -> ()
  ^bb19:  // pred: ^bb14
    "llvm.br"()[^bb9] : () -> ()
  ^bb20:  // pred: ^bb11
    "llvm.br"()[^bb21] : () -> ()
  ^bb21:  // pred: ^bb20
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "__kmpc_for_static_init_4u", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "__kmpc_for_static_fini", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "__kmpc_global_thread_num", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, convergent, function_type = !llvm.func<void (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "__kmpc_barrier", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

