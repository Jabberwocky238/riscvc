#access_group = #llvm.access_group<id = distinct[0]<>>
#loop_vectorize = #llvm.loop_vectorize<disable = false>
#loop_annotation = #llvm.loop_annotation<vectorize = #loop_vectorize, parallelAccesses = #access_group>
"builtin.module"() ({
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<warning, "Debug Info Version", 3 : i32>]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "_QPtest", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: !llvm.ptr, %arg1: !llvm.ptr):
    %0 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %2 = "llvm.mlir.constant"() <{value = false}> : () -> i1
    %3 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %4 = "llvm.mlir.constant"() <{value = 48 : i32}> : () -> i32
    %5 = "llvm.mlir.constant"() <{value = 7 : i32}> : () -> i32
    %6 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %7 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %8 = "llvm.mlir.constant"() <{value = 2.000000e+01 : f32}> : () -> f32
    %9 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = !llvm.struct<(ptr, i64, i32, i8, i8, i8, i8, array<1 x array<3 x i64>>)>}> : (i32) -> !llvm.ptr
    %10 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = !llvm.struct<(ptr, i64, i32, i8, i8, i8, i8, array<1 x array<3 x i64>>)>}> : (i32) -> !llvm.ptr
    %11 = "llvm.alloca"(%1) <{alignment = 4 : i64, elem_type = i32}> : (i64) -> !llvm.ptr
    %12 = "llvm.load"(%arg0) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // pred: ^bb1
    "llvm.br"()[^bb3] : () -> ()
  ^bb3:  // pred: ^bb2
    %13 = "llvm.select"(%2, %12, %0) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %14 = "llvm.select"(%2, %0, %12) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %15 = "llvm.sub"(%14, %13) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %16 = "llvm.icmp"(%14, %13) <{predicate = 2 : i64}> : (i32, i32) -> i1
    %17 = "llvm.udiv"(%15, %0) : (i32, i32) -> i32
    %18 = "llvm.add"(%17, %0) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %19 = "llvm.select"(%16, %3, %18) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.br"()[^bb4] : () -> ()
  ^bb4:  // pred: ^bb3
    "llvm.br"(%3)[^bb5] : (i32) -> ()
  ^bb5(%20: i32):  // 2 preds: ^bb4, ^bb10
    "llvm.br"()[^bb6] : () -> ()
  ^bb6:  // pred: ^bb5
    %21 = "llvm.icmp"(%20, %19) <{predicate = 6 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%21)[^bb7, ^bb11] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb7:  // pred: ^bb6
    %22 = "llvm.mul"(%20, %0) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %23 = "llvm.add"(%22, %0) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.br"()[^bb8] : () -> ()
  ^bb8:  // pred: ^bb7
    "llvm.store"(%23, %11) <{access_groups = [#access_group], alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.intr.memcpy"(%10, %arg1, %4) <{access_groups = [#access_group], isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i32) -> ()
    %24 = "llvm.load"(%11) <{access_groups = [#access_group], alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %25 = "llvm.sext"(%24) : (i32) -> i64
    %26 = "llvm.getelementptr"(%10, %3) <{elem_type = !llvm.struct<(ptr, i64, i32, i8, i8, i8, i8, array<1 x array<3 x i64>>)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %27 = "llvm.load"(%26) <{access_groups = [#access_group], alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.ptr
    %28 = "llvm.getelementptr"(%10, %3, %6, %3) <{elem_type = !llvm.struct<(ptr, i64, i32, i8, i8, i8, i8, array<1 x array<3 x i64>>)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 7, -2147483648, -2147483648>}> : (!llvm.ptr, i32, i64, i32) -> !llvm.ptr
    %29 = "llvm.load"(%28) <{access_groups = [#access_group], alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    %30 = "llvm.getelementptr"(%10, %3, %6, %0) <{elem_type = !llvm.struct<(ptr, i64, i32, i8, i8, i8, i8, array<1 x array<3 x i64>>)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 7, -2147483648, -2147483648>}> : (!llvm.ptr, i32, i64, i32) -> !llvm.ptr
    %31 = "llvm.load"(%30) <{access_groups = [#access_group], alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    %32 = "llvm.getelementptr"(%10, %3, %6, %7) <{elem_type = !llvm.struct<(ptr, i64, i32, i8, i8, i8, i8, array<1 x array<3 x i64>>)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 7, -2147483648, -2147483648>}> : (!llvm.ptr, i32, i64, i32) -> !llvm.ptr
    %33 = "llvm.load"(%32) <{access_groups = [#access_group], alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    %34 = "llvm.sub"(%25, %29) <{overflowFlags = 1 : i32}> : (i64, i64) -> i64
    %35 = "llvm.mul"(%34, %1) <{overflowFlags = 1 : i32}> : (i64, i64) -> i64
    %36 = "llvm.mul"(%35, %1) <{overflowFlags = 1 : i32}> : (i64, i64) -> i64
    %37 = "llvm.add"(%36, %6) <{overflowFlags = 1 : i32}> : (i64, i64) -> i64
    %38 = "llvm.mul"(%1, %31) <{overflowFlags = 1 : i32}> : (i64, i64) -> i64
    %39 = "llvm.getelementptr"(%27, %37) <{elem_type = f32, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %40 = "llvm.load"(%39) <{access_groups = [#access_group], alignment = 4 : i64, nontemporal, ordering = 0 : i64}> : (!llvm.ptr) -> f32
    %41 = "llvm.fadd"(%40, %8) <{fastmathFlags = #llvm.fastmath<contract>}> : (f32, f32) -> f32
    "llvm.intr.memcpy"(%9, %arg1, %4) <{access_groups = [#access_group], isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i32) -> ()
    %42 = "llvm.load"(%11) <{access_groups = [#access_group], alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %43 = "llvm.sext"(%42) : (i32) -> i64
    %44 = "llvm.getelementptr"(%9, %3) <{elem_type = !llvm.struct<(ptr, i64, i32, i8, i8, i8, i8, array<1 x array<3 x i64>>)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %45 = "llvm.load"(%44) <{access_groups = [#access_group], alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.ptr
    %46 = "llvm.getelementptr"(%9, %3, %6, %3) <{elem_type = !llvm.struct<(ptr, i64, i32, i8, i8, i8, i8, array<1 x array<3 x i64>>)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 7, -2147483648, -2147483648>}> : (!llvm.ptr, i32, i64, i32) -> !llvm.ptr
    %47 = "llvm.load"(%46) <{access_groups = [#access_group], alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    %48 = "llvm.getelementptr"(%9, %3, %6, %0) <{elem_type = !llvm.struct<(ptr, i64, i32, i8, i8, i8, i8, array<1 x array<3 x i64>>)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 7, -2147483648, -2147483648>}> : (!llvm.ptr, i32, i64, i32) -> !llvm.ptr
    %49 = "llvm.load"(%48) <{access_groups = [#access_group], alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    %50 = "llvm.getelementptr"(%9, %3, %6, %7) <{elem_type = !llvm.struct<(ptr, i64, i32, i8, i8, i8, i8, array<1 x array<3 x i64>>)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, 7, -2147483648, -2147483648>}> : (!llvm.ptr, i32, i64, i32) -> !llvm.ptr
    %51 = "llvm.load"(%50) <{access_groups = [#access_group], alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    %52 = "llvm.sub"(%43, %47) <{overflowFlags = 1 : i32}> : (i64, i64) -> i64
    %53 = "llvm.mul"(%52, %1) <{overflowFlags = 1 : i32}> : (i64, i64) -> i64
    %54 = "llvm.mul"(%53, %1) <{overflowFlags = 1 : i32}> : (i64, i64) -> i64
    %55 = "llvm.add"(%54, %6) <{overflowFlags = 1 : i32}> : (i64, i64) -> i64
    %56 = "llvm.mul"(%1, %49) <{overflowFlags = 1 : i32}> : (i64, i64) -> i64
    %57 = "llvm.getelementptr"(%45, %55) <{elem_type = f32, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.store"(%41, %57) <{access_groups = [#access_group], alignment = 4 : i64, nontemporal, ordering = 0 : i64}> : (f32, !llvm.ptr) -> ()
    "llvm.br"()[^bb9] : () -> ()
  ^bb9:  // pred: ^bb8
    "llvm.br"()[^bb10] : () -> ()
  ^bb10:  // pred: ^bb9
    %58 = "llvm.add"(%20, %0) <{overflowFlags = 2 : i32}> : (i32, i32) -> i32
    "llvm.br"(%58)[^bb5] <{loop_annotation = #loop_annotation}> : (i32) -> ()
  ^bb11:  // pred: ^bb6
    "llvm.br"()[^bb12] : () -> ()
  ^bb12:  // pred: ^bb11
    "llvm.br"()[^bb13] : () -> ()
  ^bb13:  // pred: ^bb12
    "llvm.return"() : () -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

