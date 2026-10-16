#access_group = #llvm.access_group<id = distinct[0]<>>
#access_group1 = #llvm.access_group<id = distinct[1]<>>
#loop_vectorize = #llvm.loop_vectorize<disable = false>
#loop_annotation = #llvm.loop_annotation<vectorize = #loop_vectorize, parallelAccesses = #access_group>
#loop_annotation1 = #llvm.loop_annotation<vectorize = #loop_vectorize, parallelAccesses = #access_group1>
#loop_annotation2 = #llvm.loop_annotation<vectorize = #loop_vectorize>
"builtin.module"() ({
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<warning, "Debug Info Version", 3 : i32>]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, sym_name = "_QPsimd_aligned_pointer", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %41 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %42 = "llvm.mlir.constant"() <{value = true}> : () -> i1
    %43 = "llvm.mlir.constant"() <{value = 256 : i64}> : () -> i64
    %44 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %45 = "llvm.mlir.constant"() <{value = 10 : i32}> : () -> i32
    %46 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %47 = "llvm.alloca"(%41) <{alignment = 8 : i64, elem_type = !llvm.struct<(ptr, i64, i32, i8, i8, i8, i8)>}> : (i64) -> !llvm.ptr
    %48 = "llvm.alloca"(%41) <{alignment = 4 : i64, elem_type = i32}> : (i64) -> !llvm.ptr
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // pred: ^bb1
    %49 = "llvm.load"(%47) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.ptr
    "llvm.intr.assume"(%42, %49, %43) <{op_bundle_sizes = array<i32: 2>, op_bundle_tags = ["align"]}> : (i1, !llvm.ptr, i64) -> ()
    "llvm.br"()[^bb3] : () -> ()
  ^bb3:  // pred: ^bb2
    "llvm.br"()[^bb4] : () -> ()
  ^bb4:  // pred: ^bb3
    "llvm.br"(%44)[^bb5] : (i32) -> ()
  ^bb5(%50: i32):  // 2 preds: ^bb4, ^bb10
    "llvm.br"()[^bb6] : () -> ()
  ^bb6:  // pred: ^bb5
    %51 = "llvm.icmp"(%50, %45) <{predicate = 6 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%51)[^bb7, ^bb11] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb7:  // pred: ^bb6
    %52 = "llvm.mul"(%50, %46) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %53 = "llvm.add"(%52, %46) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.br"()[^bb8] : () -> ()
  ^bb8:  // pred: ^bb7
    "llvm.store"(%53, %48) <{access_groups = [#access_group], alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb9] : () -> ()
  ^bb9:  // pred: ^bb8
    "llvm.br"()[^bb10] : () -> ()
  ^bb10:  // pred: ^bb9
    %54 = "llvm.add"(%50, %46) <{overflowFlags = 2 : i32}> : (i32, i32) -> i32
    "llvm.br"(%54)[^bb5] <{loop_annotation = #loop_annotation}> : (i32) -> ()
  ^bb11:  // pred: ^bb6
    "llvm.br"()[^bb12] : () -> ()
  ^bb12:  // pred: ^bb11
    "llvm.br"()[^bb13] : () -> ()
  ^bb13:  // pred: ^bb12
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, sym_name = "_QPsimd_aligned_cptr", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %27 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %28 = "llvm.mlir.constant"() <{value = true}> : () -> i1
    %29 = "llvm.mlir.constant"() <{value = 256 : i64}> : () -> i64
    %30 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %31 = "llvm.mlir.constant"() <{value = 10 : i32}> : () -> i32
    %32 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %33 = "llvm.alloca"(%27) <{alignment = 8 : i64, elem_type = !llvm.struct<"_QM__fortran_builtinsT__builtin_c_ptr", (i64)>}> : (i64) -> !llvm.ptr
    %34 = "llvm.alloca"(%27) <{alignment = 4 : i64, elem_type = i32}> : (i64) -> !llvm.ptr
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // pred: ^bb1
    %35 = "llvm.load"(%33) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.ptr
    "llvm.intr.assume"(%28, %35, %29) <{op_bundle_sizes = array<i32: 2>, op_bundle_tags = ["align"]}> : (i1, !llvm.ptr, i64) -> ()
    "llvm.br"()[^bb3] : () -> ()
  ^bb3:  // pred: ^bb2
    "llvm.br"()[^bb4] : () -> ()
  ^bb4:  // pred: ^bb3
    "llvm.br"(%30)[^bb5] : (i32) -> ()
  ^bb5(%36: i32):  // 2 preds: ^bb4, ^bb10
    "llvm.br"()[^bb6] : () -> ()
  ^bb6:  // pred: ^bb5
    %37 = "llvm.icmp"(%36, %31) <{predicate = 6 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%37)[^bb7, ^bb11] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb7:  // pred: ^bb6
    %38 = "llvm.mul"(%36, %32) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %39 = "llvm.add"(%38, %32) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.br"()[^bb8] : () -> ()
  ^bb8:  // pred: ^bb7
    "llvm.store"(%39, %34) <{access_groups = [#access_group1], alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb9] : () -> ()
  ^bb9:  // pred: ^bb8
    "llvm.br"()[^bb10] : () -> ()
  ^bb10:  // pred: ^bb9
    %40 = "llvm.add"(%36, %32) <{overflowFlags = 2 : i32}> : (i32, i32) -> i32
    "llvm.br"(%40)[^bb5] <{loop_annotation = #loop_annotation1}> : (i32) -> ()
  ^bb11:  // pred: ^bb6
    "llvm.br"()[^bb12] : () -> ()
  ^bb12:  // pred: ^bb11
    "llvm.br"()[^bb13] : () -> ()
  ^bb13:  // pred: ^bb12
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, sym_name = "_QPsimd_aligned_allocatable", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %14 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %15 = "llvm.mlir.constant"() <{value = true}> : () -> i1
    %16 = "llvm.mlir.constant"() <{value = 256 : i64}> : () -> i64
    %17 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %18 = "llvm.mlir.constant"() <{value = 10 : i32}> : () -> i32
    %19 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %20 = "llvm.alloca"(%14) <{alignment = 8 : i64, elem_type = !llvm.struct<(ptr, i64, i32, i8, i8, i8, i8, array<1 x array<3 x i64>>)>}> : (i64) -> !llvm.ptr
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // pred: ^bb1
    %21 = "llvm.load"(%20) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.ptr
    "llvm.intr.assume"(%15, %21, %16) <{op_bundle_sizes = array<i32: 2>, op_bundle_tags = ["align"]}> : (i1, !llvm.ptr, i64) -> ()
    "llvm.br"()[^bb3] : () -> ()
  ^bb3:  // pred: ^bb2
    "llvm.br"()[^bb4] : () -> ()
  ^bb4:  // pred: ^bb3
    "llvm.br"(%17)[^bb5] : (i32) -> ()
  ^bb5(%22: i32):  // 2 preds: ^bb4, ^bb10
    "llvm.br"()[^bb6] : () -> ()
  ^bb6:  // pred: ^bb5
    %23 = "llvm.icmp"(%22, %18) <{predicate = 6 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%23)[^bb7, ^bb11] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb7:  // pred: ^bb6
    %24 = "llvm.mul"(%22, %19) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %25 = "llvm.add"(%24, %19) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.br"()[^bb8] : () -> ()
  ^bb8:  // pred: ^bb7
    "llvm.br"()[^bb9] : () -> ()
  ^bb9:  // pred: ^bb8
    "llvm.br"()[^bb10] : () -> ()
  ^bb10:  // pred: ^bb9
    %26 = "llvm.add"(%22, %19) <{overflowFlags = 2 : i32}> : (i32, i32) -> i32
    "llvm.br"(%26)[^bb5] <{loop_annotation = #loop_annotation2}> : (i32) -> ()
  ^bb11:  // pred: ^bb6
    "llvm.br"()[^bb12] : () -> ()
  ^bb12:  // pred: ^bb11
    "llvm.br"()[^bb13] : () -> ()
  ^bb13:  // pred: ^bb12
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, sym_name = "_QPsimd_aligned_non_power_of_two", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %0 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %1 = "llvm.mlir.constant"() <{value = true}> : () -> i1
    %2 = "llvm.mlir.constant"() <{value = 64 : i64}> : () -> i64
    %3 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %4 = "llvm.mlir.constant"() <{value = 10 : i32}> : () -> i32
    %5 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %6 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = !llvm.struct<(ptr, i64, i32, i8, i8, i8, i8, array<1 x array<3 x i64>>)>}> : (i64) -> !llvm.ptr
    %7 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = !llvm.struct<(ptr, i64, i32, i8, i8, i8, i8, array<1 x array<3 x i64>>)>}> : (i64) -> !llvm.ptr
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // pred: ^bb1
    %8 = "llvm.load"(%7) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.ptr
    "llvm.intr.assume"(%1, %8, %2) <{op_bundle_sizes = array<i32: 2>, op_bundle_tags = ["align"]}> : (i1, !llvm.ptr, i64) -> ()
    "llvm.br"()[^bb3] : () -> ()
  ^bb3:  // pred: ^bb2
    "llvm.br"()[^bb4] : () -> ()
  ^bb4:  // pred: ^bb3
    "llvm.br"(%3)[^bb5] : (i32) -> ()
  ^bb5(%9: i32):  // 2 preds: ^bb4, ^bb10
    "llvm.br"()[^bb6] : () -> ()
  ^bb6:  // pred: ^bb5
    %10 = "llvm.icmp"(%9, %4) <{predicate = 6 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%10)[^bb7, ^bb11] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb7:  // pred: ^bb6
    %11 = "llvm.mul"(%9, %5) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %12 = "llvm.add"(%11, %5) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.br"()[^bb8] : () -> ()
  ^bb8:  // pred: ^bb7
    "llvm.br"()[^bb9] : () -> ()
  ^bb9:  // pred: ^bb8
    "llvm.br"()[^bb10] : () -> ()
  ^bb10:  // pred: ^bb9
    %13 = "llvm.add"(%9, %5) <{overflowFlags = 2 : i32}> : (i32, i32) -> i32
    "llvm.br"(%13)[^bb5] <{loop_annotation = #loop_annotation2}> : (i32) -> ()
  ^bb11:  // pred: ^bb6
    "llvm.br"()[^bb12] : () -> ()
  ^bb12:  // pred: ^bb11
    "llvm.br"()[^bb13] : () -> ()
  ^bb13:  // pred: ^bb12
    "llvm.return"() : () -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

