#access_group = #llvm.access_group<id = distinct[0]<>>
#loop_vectorize = #llvm.loop_vectorize<disable = false>
#loop_annotation = #llvm.loop_annotation<vectorize = #loop_vectorize, parallelAccesses = #access_group>
"builtin.module"() ({
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<warning, "Debug Info Version", 3 : i32>]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (i64, i64, i64, ptr)>, linkage = #llvm.linkage<external>, sym_name = "simd_simple", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i64, %arg1: i64, %arg2: i64, %arg3: !llvm.ptr):
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
    "llvm.br"(%0)[^bb5] : (i64) -> ()
  ^bb5(%16: i64):  // 2 preds: ^bb4, ^bb10
    "llvm.br"()[^bb6] : () -> ()
  ^bb6:  // pred: ^bb5
    %17 = "llvm.icmp"(%16, %15) <{predicate = 6 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%17)[^bb7, ^bb11] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb7:  // pred: ^bb6
    %18 = "llvm.mul"(%16, %arg2) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %19 = "llvm.add"(%18, %arg0) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.br"()[^bb8] : () -> ()
  ^bb8:  // pred: ^bb7
    %20 = "llvm.getelementptr"(%arg3, %19) <{elem_type = f32, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.store"(%2, %20) <{access_groups = [#access_group], alignment = 4 : i64, ordering = 0 : i64}> : (f32, !llvm.ptr) -> ()
    "llvm.br"()[^bb9] : () -> ()
  ^bb9:  // pred: ^bb8
    "llvm.br"()[^bb10] : () -> ()
  ^bb10:  // pred: ^bb9
    %21 = "llvm.add"(%16, %1) <{overflowFlags = 2 : i32}> : (i64, i64) -> i64
    "llvm.br"(%21)[^bb5] <{loop_annotation = #loop_annotation}> : (i64) -> ()
  ^bb11:  // pred: ^bb6
    "llvm.br"()[^bb12] : () -> ()
  ^bb12:  // pred: ^bb11
    "llvm.br"()[^bb13] : () -> ()
  ^bb13:  // pred: ^bb12
    "llvm.return"() : () -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

