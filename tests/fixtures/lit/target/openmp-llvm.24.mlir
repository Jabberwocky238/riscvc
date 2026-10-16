#access_group = #llvm.access_group<id = distinct[0]<>>
#loop_vectorize = #llvm.loop_vectorize<disable = false>
#loop_annotation = #llvm.loop_annotation<vectorize = #loop_vectorize, parallelAccesses = #access_group>
"builtin.module"() ({
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<warning, "Debug Info Version", 3 : i32>]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (i32, i32, i32, ptr)>, linkage = #llvm.linkage<external>, sym_name = "simd_linear", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: !llvm.ptr):
    %0 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // pred: ^bb1
    %2 = "llvm.alloca"(%0) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %3 = "llvm.alloca"(%0) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    "llvm.br"()[^bb3] : () -> ()
  ^bb3:  // pred: ^bb2
    %4 = "llvm.icmp"(%arg2, %1) <{predicate = 2 : i64}> : (i32, i32) -> i1
    %5 = "llvm.sub"(%1, %arg2) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %6 = "llvm.select"(%4, %5, %arg2) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %7 = "llvm.select"(%4, %arg1, %arg0) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %8 = "llvm.select"(%4, %arg0, %arg1) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %9 = "llvm.sub"(%8, %7) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %10 = "llvm.icmp"(%8, %7) <{predicate = 3 : i64}> : (i32, i32) -> i1
    %11 = "llvm.sub"(%9, %0) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %12 = "llvm.udiv"(%11, %6) : (i32, i32) -> i32
    %13 = "llvm.add"(%12, %0) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %14 = "llvm.icmp"(%9, %6) <{predicate = 7 : i64}> : (i32, i32) -> i1
    %15 = "llvm.select"(%14, %0, %13) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %16 = "llvm.select"(%10, %1, %15) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.br"()[^bb4] : () -> ()
  ^bb4:  // pred: ^bb3
    %17 = "llvm.load"(%arg3) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.store"(%17, %2) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"(%1)[^bb5] : (i32) -> ()
  ^bb5(%18: i32):  // 2 preds: ^bb4, ^bb10
    "llvm.br"()[^bb6] : () -> ()
  ^bb6:  // pred: ^bb5
    %19 = "llvm.icmp"(%18, %16) <{predicate = 6 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%19)[^bb7, ^bb11] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb7:  // pred: ^bb6
    %20 = "llvm.mul"(%18, %arg2) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %21 = "llvm.add"(%20, %arg0) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %22 = "llvm.load"(%2) <{access_groups = [#access_group], alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %23 = "llvm.mul"(%18, %arg2) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %24 = "llvm.add"(%22, %23) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.store"(%24, %3) <{access_groups = [#access_group], alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb8] : () -> ()
  ^bb8:  // pred: ^bb7
    "llvm.br"()[^bb9] : () -> ()
  ^bb9:  // pred: ^bb8
    "llvm.br"()[^bb10] : () -> ()
  ^bb10:  // pred: ^bb9
    %25 = "llvm.add"(%18, %0) <{overflowFlags = 2 : i32}> : (i32, i32) -> i32
    "llvm.br"(%25)[^bb5] <{loop_annotation = #loop_annotation}> : (i32) -> ()
  ^bb11:  // pred: ^bb6
    "llvm.br"()[^bb12] : () -> ()
  ^bb12:  // pred: ^bb11
    "llvm.br"()[^bb13] : () -> ()
  ^bb13:  // pred: ^bb12
    %26 = "llvm.load"(%3) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.store"(%26, %arg3) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

