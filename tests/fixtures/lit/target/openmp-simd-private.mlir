#access_group = #llvm.access_group<id = distinct[0]<>>
#access_group1 = #llvm.access_group<id = distinct[1]<>>
#loop_vectorize = #llvm.loop_vectorize<disable = false>
#loop_annotation = #llvm.loop_annotation<vectorize = #loop_vectorize, parallelAccesses = #access_group>
#loop_annotation1 = #llvm.loop_annotation<vectorize = #loop_vectorize, parallelAccesses = #access_group1>
"builtin.module"() ({
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<warning, "Debug Info Version", 3 : i32>]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, sym_name = "test_loop_var_privatization", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %17 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %18 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %19 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %20 = "llvm.mlir.constant"() <{value = 10 : i32}> : () -> i32
    %21 = "llvm.alloca"(%17) <{alignment = 4 : i64, elem_type = i32}> : (i64) -> !llvm.ptr
    %22 = "llvm.alloca"(%17) <{alignment = 4 : i64, elem_type = f32}> : (i64) -> !llvm.ptr
    %23 = "llvm.alloca"(%18) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
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
    "llvm.br"(%19)[^bb6] : (i32) -> ()
  ^bb6(%24: i32):  // 2 preds: ^bb5, ^bb11
    "llvm.br"()[^bb7] : () -> ()
  ^bb7:  // pred: ^bb6
    %25 = "llvm.icmp"(%24, %20) <{predicate = 6 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%25)[^bb8, ^bb12] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb8:  // pred: ^bb7
    %26 = "llvm.mul"(%24, %18) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %27 = "llvm.add"(%26, %18) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.br"()[^bb9] : () -> ()
  ^bb9:  // pred: ^bb8
    "llvm.store"(%27, %23) <{access_groups = [#access_group], alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %28 = "llvm.load"(%22) <{access_groups = [#access_group], alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f32
    %29 = "llvm.load"(%23) <{access_groups = [#access_group], alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %30 = "llvm.sitofp"(%29) : (i32) -> f32
    %31 = "llvm.fadd"(%28, %30) <{fastmathFlags = #llvm.fastmath<contract>}> : (f32, f32) -> f32
    "llvm.store"(%31, %22) <{access_groups = [#access_group], alignment = 4 : i64, ordering = 0 : i64}> : (f32, !llvm.ptr) -> ()
    "llvm.br"()[^bb10] : () -> ()
  ^bb10:  // pred: ^bb9
    "llvm.br"()[^bb11] : () -> ()
  ^bb11:  // pred: ^bb10
    %32 = "llvm.add"(%24, %18) <{overflowFlags = 2 : i32}> : (i32, i32) -> i32
    "llvm.br"(%32)[^bb6] <{loop_annotation = #loop_annotation}> : (i32) -> ()
  ^bb12:  // pred: ^bb7
    "llvm.br"()[^bb13] : () -> ()
  ^bb13:  // pred: ^bb12
    "llvm.br"()[^bb14] : () -> ()
  ^bb14:  // pred: ^bb13
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, sym_name = "test_private_clause", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %0 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %1 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %2 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %3 = "llvm.mlir.constant"() <{value = 10 : i32}> : () -> i32
    %4 = "llvm.alloca"(%0) <{alignment = 4 : i64, elem_type = i32}> : (i64) -> !llvm.ptr
    %5 = "llvm.alloca"(%0) <{alignment = 4 : i64, elem_type = f32}> : (i64) -> !llvm.ptr
    %6 = "llvm.alloca"(%1) <{alignment = 4 : i64, elem_type = f32}> : (i32) -> !llvm.ptr
    %7 = "llvm.alloca"(%1) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
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
    "llvm.br"(%2)[^bb6] : (i32) -> ()
  ^bb6(%8: i32):  // 2 preds: ^bb5, ^bb11
    "llvm.br"()[^bb7] : () -> ()
  ^bb7:  // pred: ^bb6
    %9 = "llvm.icmp"(%8, %3) <{predicate = 6 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%9)[^bb8, ^bb12] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb8:  // pred: ^bb7
    %10 = "llvm.mul"(%8, %1) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %11 = "llvm.add"(%10, %1) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.br"()[^bb9] : () -> ()
  ^bb9:  // pred: ^bb8
    "llvm.store"(%11, %7) <{access_groups = [#access_group1], alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %12 = "llvm.load"(%6) <{access_groups = [#access_group1], alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f32
    %13 = "llvm.load"(%7) <{access_groups = [#access_group1], alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %14 = "llvm.sitofp"(%13) : (i32) -> f32
    %15 = "llvm.fadd"(%12, %14) <{fastmathFlags = #llvm.fastmath<contract>}> : (f32, f32) -> f32
    "llvm.store"(%15, %6) <{access_groups = [#access_group1], alignment = 4 : i64, ordering = 0 : i64}> : (f32, !llvm.ptr) -> ()
    "llvm.br"()[^bb10] : () -> ()
  ^bb10:  // pred: ^bb9
    "llvm.br"()[^bb11] : () -> ()
  ^bb11:  // pred: ^bb10
    %16 = "llvm.add"(%8, %1) <{overflowFlags = 2 : i32}> : (i32, i32) -> i32
    "llvm.br"(%16)[^bb6] <{loop_annotation = #loop_annotation1}> : (i32) -> ()
  ^bb12:  // pred: ^bb7
    "llvm.br"()[^bb13] : () -> ()
  ^bb13:  // pred: ^bb12
    "llvm.br"()[^bb14] : () -> ()
  ^bb14:  // pred: ^bb13
    "llvm.return"() : () -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

