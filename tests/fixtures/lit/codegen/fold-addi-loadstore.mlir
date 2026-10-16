"builtin.module"() ({
  "llvm.mlir.global"() <{addr_space = 0 : i32, dso_local, global_type = i64, linkage = #llvm.linkage<external>, sym_name = "g_0", unnamed_addr = 0 : i64, value = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 1 : i64, dso_local, global_type = i64, linkage = #llvm.linkage<external>, sym_name = "g_1", unnamed_addr = 0 : i64, value = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 2 : i64, dso_local, global_type = i64, linkage = #llvm.linkage<external>, sym_name = "g_2", unnamed_addr = 0 : i64, value = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 4 : i64, dso_local, global_type = i64, linkage = #llvm.linkage<external>, sym_name = "g_4", unnamed_addr = 0 : i64, value = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 8 : i64, dso_local, global_type = i64, linkage = #llvm.linkage<external>, sym_name = "g_8", unnamed_addr = 0 : i64, value = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 16 : i64, dso_local, global_type = i64, linkage = #llvm.linkage<external>, sym_name = "g_16", unnamed_addr = 0 : i64, value = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 4 : i64, global_type = i32, linkage = #llvm.linkage<external>, sym_name = "g_4_i32", unnamed_addr = 0 : i64, value = 0 : i32, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 4 : i64, dso_local, global_type = !llvm.array<2 x i32>, linkage = #llvm.linkage<external>, sym_name = "ga", unnamed_addr = 1 : i64, value = dense<0> : tensor<2xi32>, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 8 : i64, dso_local, global_type = !llvm.array<2 x i64>, linkage = #llvm.linkage<external>, sym_name = "ga_8", unnamed_addr = 1 : i64, value = dense<0> : tensor<2xi64>, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 16 : i64, dso_local, global_type = !llvm.array<2 x i64>, linkage = #llvm.linkage<external>, sym_name = "ga_16", unnamed_addr = 1 : i64, value = dense<0> : tensor<2xi64>, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 4 : i64, dso_local, global_type = i64, linkage = #llvm.linkage<external>, sym_name = "tl_4", thread_local_, unnamed_addr = 0 : i64, value = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 8 : i64, dso_local, global_type = i64, linkage = #llvm.linkage<external>, sym_name = "tl_8", thread_local_, unnamed_addr = 0 : i64, value = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, dso_local, global_type = !llvm.array<100 x array<100 x i8>>, linkage = #llvm.linkage<external>, sym_name = "g", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 1 : i64, dso_local, global_type = !llvm.array<0 x i8>, linkage = #llvm.linkage<external>, sym_name = "ki_end", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "load_g_0", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %85 = "llvm.mlir.addressof"() <{global_name = @g_0}> : () -> !llvm.ptr
    %86 = "llvm.load"(%85) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    "llvm.return"(%86) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "load_g_1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %83 = "llvm.mlir.addressof"() <{global_name = @g_1}> : () -> !llvm.ptr
    %84 = "llvm.load"(%83) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    "llvm.return"(%84) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "load_g_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %81 = "llvm.mlir.addressof"() <{global_name = @g_2}> : () -> !llvm.ptr
    %82 = "llvm.load"(%81) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    "llvm.return"(%82) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "load_g_4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %79 = "llvm.mlir.addressof"() <{global_name = @g_4}> : () -> !llvm.ptr
    %80 = "llvm.load"(%79) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    "llvm.return"(%80) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "load_g_8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %77 = "llvm.mlir.addressof"() <{global_name = @g_8}> : () -> !llvm.ptr
    %78 = "llvm.load"(%77) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    "llvm.return"(%78) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "load_g_16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %75 = "llvm.mlir.addressof"() <{global_name = @g_16}> : () -> !llvm.ptr
    %76 = "llvm.load"(%75) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    "llvm.return"(%76) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "store_g_4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %73 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %74 = "llvm.mlir.addressof"() <{global_name = @g_4}> : () -> !llvm.ptr
    "llvm.store"(%73, %74) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "store_g_8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %71 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %72 = "llvm.mlir.addressof"() <{global_name = @g_8}> : () -> !llvm.ptr
    "llvm.store"(%71, %72) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "inc_g_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %67 = "llvm.mlir.addressof"() <{global_name = @g_4_i32}> : () -> !llvm.ptr
    %68 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %69 = "llvm.load"(%67) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %70 = "llvm.add"(%69, %68) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.store"(%70, %67) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, sym_name = "load_ga", unnamed_addr = 1 : i64, visibility_ = 0 : i64}> ({
    %62 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %63 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %64 = "llvm.mlir.addressof"() <{global_name = @ga}> : () -> !llvm.ptr
    %65 = "llvm.getelementptr"(%64, %63, %62) <{elem_type = !llvm.array<2 x i32>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    %66 = "llvm.load"(%65) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.return"(%66) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "load_ga_8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %57 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %58 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %59 = "llvm.mlir.addressof"() <{global_name = @ga_8}> : () -> !llvm.ptr
    %60 = "llvm.getelementptr"(%59, %58, %57) <{elem_type = !llvm.array<2 x i64>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    %61 = "llvm.load"(%60) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    "llvm.return"(%61) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "load_ga_16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %52 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %53 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %54 = "llvm.mlir.addressof"() <{global_name = @ga_16}> : () -> !llvm.ptr
    %55 = "llvm.getelementptr"(%54, %53, %52) <{elem_type = !llvm.array<2 x i64>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    %56 = "llvm.load"(%55) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    "llvm.return"(%56) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<ptr ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "load_ba_1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %50 = "llvm.blockaddress"() <{block_addr = #llvm.blockaddress<function = @load_ba_1, tag = <id = 1>>}> : () -> !llvm.ptr
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    "llvm.blocktag"() <{tag = #llvm.blocktag<id = 1>}> : () -> ()
    %51 = "llvm.load"(%50) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.ptr
    "llvm.return"(%51) : (!llvm.ptr) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<ptr ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "load_ba_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %46 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %47 = "llvm.blockaddress"() <{block_addr = #llvm.blockaddress<function = @load_ba_2, tag = <id = 1>>}> : () -> !llvm.ptr
    %48 = "llvm.getelementptr"(%47, %46) <{elem_type = i8, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    "llvm.blocktag"() <{tag = #llvm.blocktag<id = 1>}> : () -> ()
    %49 = "llvm.load"(%48) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.ptr
    "llvm.return"(%49) : (!llvm.ptr) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "load_tl_4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %44 = "llvm.mlir.addressof"() <{global_name = @tl_4}> : () -> !llvm.ptr
    %45 = "llvm.load"(%44) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    "llvm.return"(%45) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "load_tl_8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %42 = "llvm.mlir.addressof"() <{global_name = @tl_8}> : () -> !llvm.ptr
    %43 = "llvm.load"(%42) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    "llvm.return"(%43) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "load_const_ok", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %39 = "llvm.mlir.constant"() <{value = 2040 : i32}> : () -> i32
    %40 = "llvm.inttoptr"(%39) : (i32) -> !llvm.ptr
    %41 = "llvm.load"(%40) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    "llvm.return"(%41) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "load_cost_overflow", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %36 = "llvm.mlir.constant"() <{value = 2044 : i64}> : () -> i64
    %37 = "llvm.inttoptr"(%36) : (i64) -> !llvm.ptr
    %38 = "llvm.load"(%37) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    "llvm.return"(%38) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "load_const_medium", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %33 = "llvm.mlir.constant"() <{value = 4080 : i64}> : () -> i64
    %34 = "llvm.inttoptr"(%33) : (i64) -> !llvm.ptr
    %35 = "llvm.load"(%34) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.return"(%35) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "load_const_large", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %30 = "llvm.mlir.constant"() <{value = 2147481600 : i64}> : () -> i64
    %31 = "llvm.inttoptr"(%30) : (i64) -> !llvm.ptr
    %32 = "llvm.load"(%31) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.return"(%32) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fold_addi_from_different_bb", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i64, %arg1: i64, %arg2: !llvm.ptr):
    %18 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %19 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %20 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %21 = "llvm.icmp"(%arg1, %18) <{predicate = 4 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%21, %18)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i64) -> ()
  ^bb1:  // pred: ^bb0
    %22 = "llvm.getelementptr"(%arg2, %arg0) <{elem_type = !llvm.struct<"struct.S", (i64, i64)>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.br"(%18, %18)[^bb3] : (i64, i64) -> ()
  ^bb2(%23: i64):  // 2 preds: ^bb0, ^bb3
    "llvm.return"(%23) : (i64) -> ()
  ^bb3(%24: i64, %25: i64):  // 2 preds: ^bb1, ^bb3
    "llvm.call"(%arg2) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @f, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> ()
    %26 = "llvm.load"(%22) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    %27 = "llvm.add"(%26, %25) <{overflowFlags = 1 : i32}> : (i64, i64) -> i64
    %28 = "llvm.add"(%24, %20) <{overflowFlags = 3 : i32}> : (i64, i64) -> i64
    %29 = "llvm.icmp"(%28, %arg1) <{predicate = 0 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%29, %27, %28, %27)[^bb2, ^bb3] <{operandSegmentSizes = array<i32: 1, 1, 2>}> : (i1, i64, i64, i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, sym_name = "f", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, sym_name = "crash", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %6 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %7 = "llvm.mlir.addressof"() <{global_name = @g}> : () -> !llvm.ptr
    %8 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %9 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %10 = "llvm.mlir.constant"() <{value = 0 : i8}> : () -> i8
    %11 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %12 = "llvm.mlir.zero"() : () -> !llvm.ptr
    %13 = "llvm.sext"(%6) : (i32) -> i64
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    %14 = "llvm.getelementptr"(%7, %8, %9, %13) <{elem_type = !llvm.array<100 x array<100 x i8>>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648, -2147483648>}> : (!llvm.ptr, i64, i64, i64) -> !llvm.ptr
    %15 = "llvm.load"(%14) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %16 = "llvm.icmp"(%15, %10) <{predicate = 0 : i64}> : (i8, i8) -> i1
    %17 = "llvm.select"(%16, %6, %11) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.store"(%17, %12) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"(%11) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "pr134525", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %0 = "llvm.mlir.constant"() <{value = -2145386496 : i64}> : () -> i64
    %1 = "llvm.mlir.addressof"() <{global_name = @ki_end}> : () -> !llvm.ptr
    %2 = "llvm.ptrtoint"(%1) : (!llvm.ptr) -> i64
    %3 = "llvm.sub"(%2, %0) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %4 = "llvm.mlir.constant"() <{value = 131073 : i64}> : () -> i64
    %5 = "llvm.icmp"(%3, %4) <{predicate = 6 : i64}> : (i64, i64) -> i1
    "llvm.return"(%5) : (i1) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

