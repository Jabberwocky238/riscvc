"builtin.module"() ({
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<warning, "Debug Info Version", 3 : i32>]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (i64, i64, i64, i64, i64, i64, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "simd_simple_multiple_safelen", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i64, %arg1: i64, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: !llvm.ptr, %arg7: !llvm.ptr):
    %0 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %1 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %2 = "llvm.mlir.constant"() <{value = 2.000000e+00 : f32}> : () -> f32
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // pred: ^bb1
    "llvm.br"()[^bb3] : () -> ()
  ^bb3:  // pred: ^bb2
    %3 = "llvm.icmp"(%arg2, %0) <{predicate = 2 : i64}> : (i64, i64) -> i1
    %4 = "llvm.sub"(%0, %arg2) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %5 = "llvm.select"(%3, %4, %arg2) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    %6 = "llvm.select"(%3, %arg1, %arg0) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    %7 = "llvm.select"(%3, %arg0, %arg1) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    %8 = "llvm.sub"(%7, %6) <{overflowFlags = 1 : i32}> : (i64, i64) -> i64
    %9 = "llvm.icmp"(%7, %6) <{predicate = 3 : i64}> : (i64, i64) -> i1
    %10 = "llvm.sub"(%8, %1) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %11 = "llvm.udiv"(%10, %5) : (i64, i64) -> i64
    %12 = "llvm.add"(%11, %1) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %13 = "llvm.icmp"(%8, %5) <{predicate = 7 : i64}> : (i64, i64) -> i1
    %14 = "llvm.select"(%13, %1, %12) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    %15 = "llvm.select"(%9, %0, %14) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.br"()[^bb4] : () -> ()
  ^bb4:  // pred: ^bb3
    %16 = "llvm.icmp"(%arg5, %0) <{predicate = 2 : i64}> : (i64, i64) -> i1
    %17 = "llvm.sub"(%0, %arg5) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %18 = "llvm.select"(%16, %17, %arg5) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    %19 = "llvm.select"(%16, %arg4, %arg3) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    %20 = "llvm.select"(%16, %arg3, %arg4) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    %21 = "llvm.sub"(%20, %19) <{overflowFlags = 1 : i32}> : (i64, i64) -> i64
    %22 = "llvm.icmp"(%20, %19) <{predicate = 3 : i64}> : (i64, i64) -> i1
    %23 = "llvm.sub"(%21, %1) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %24 = "llvm.udiv"(%23, %18) : (i64, i64) -> i64
    %25 = "llvm.add"(%24, %1) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %26 = "llvm.icmp"(%21, %18) <{predicate = 7 : i64}> : (i64, i64) -> i1
    %27 = "llvm.select"(%26, %1, %25) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    %28 = "llvm.select"(%22, %0, %27) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    %29 = "llvm.mul"(%15, %28) <{overflowFlags = 2 : i32}> : (i64, i64) -> i64
    "llvm.br"()[^bb5] : () -> ()
  ^bb5:  // pred: ^bb4
    "llvm.br"(%0)[^bb6] : (i64) -> ()
  ^bb6(%30: i64):  // 2 preds: ^bb5, ^bb15
    "llvm.br"()[^bb7] : () -> ()
  ^bb7:  // pred: ^bb6
    %31 = "llvm.icmp"(%30, %29) <{predicate = 6 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%31)[^bb8, ^bb16] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb8:  // pred: ^bb7
    %32 = "llvm.urem"(%30, %28) : (i64, i64) -> i64
    %33 = "llvm.udiv"(%30, %28) : (i64, i64) -> i64
    "llvm.br"()[^bb9] : () -> ()
  ^bb9:  // pred: ^bb8
    %34 = "llvm.mul"(%33, %arg2) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %35 = "llvm.add"(%34, %arg0) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.br"()[^bb10] : () -> ()
  ^bb10:  // pred: ^bb9
    "llvm.br"()[^bb11] : () -> ()
  ^bb11:  // pred: ^bb10
    %36 = "llvm.mul"(%32, %arg5) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %37 = "llvm.add"(%36, %arg3) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.br"()[^bb12] : () -> ()
  ^bb12:  // pred: ^bb11
    %38 = "llvm.getelementptr"(%arg6, %35) <{elem_type = f32, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %39 = "llvm.getelementptr"(%arg7, %37) <{elem_type = f32, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.store"(%2, %38) <{alignment = 4 : i64, ordering = 0 : i64}> : (f32, !llvm.ptr) -> ()
    "llvm.store"(%2, %39) <{alignment = 4 : i64, ordering = 0 : i64}> : (f32, !llvm.ptr) -> ()
    "llvm.br"()[^bb13] : () -> ()
  ^bb13:  // pred: ^bb12
    "llvm.br"()[^bb14] : () -> ()
  ^bb14:  // pred: ^bb13
    "llvm.br"()[^bb15] : () -> ()
  ^bb15:  // pred: ^bb14
    %40 = "llvm.add"(%30, %1) <{overflowFlags = 2 : i32}> : (i64, i64) -> i64
    "llvm.br"(%40)[^bb6] : (i64) -> ()
  ^bb16:  // pred: ^bb7
    "llvm.br"()[^bb17] : () -> ()
  ^bb17:  // pred: ^bb16
    "llvm.br"()[^bb18] : () -> ()
  ^bb18:  // pred: ^bb17
    "llvm.br"()[^bb19] : () -> ()
  ^bb19:  // pred: ^bb18
    "llvm.return"() : () -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

