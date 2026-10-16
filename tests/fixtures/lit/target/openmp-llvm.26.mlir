#access_group = #llvm.access_group<id = distinct[0]<>>
#loop_vectorize = #llvm.loop_vectorize<disable = false>
#loop_annotation = #llvm.loop_annotation<vectorize = #loop_vectorize, parallelAccesses = #access_group>
"builtin.module"() ({
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<warning, "Debug Info Version", 3 : i32>]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (i32, i32, ptr)>, linkage = #llvm.linkage<external>, sym_name = "simd_linear_f64_var_i32_step", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: !llvm.ptr):
    %0 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = false}> : () -> i1
    %2 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // pred: ^bb1
    %3 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = f64}> : (i32) -> !llvm.ptr
    %4 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = f64}> : (i32) -> !llvm.ptr
    "llvm.br"()[^bb3] : () -> ()
  ^bb3:  // pred: ^bb2
    %5 = "llvm.select"(%1, %arg1, %arg0) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %6 = "llvm.select"(%1, %arg0, %arg1) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %7 = "llvm.sub"(%6, %5) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %8 = "llvm.icmp"(%6, %5) <{predicate = 3 : i64}> : (i32, i32) -> i1
    %9 = "llvm.sub"(%7, %0) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %10 = "llvm.udiv"(%9, %0) : (i32, i32) -> i32
    %11 = "llvm.add"(%10, %0) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %12 = "llvm.icmp"(%7, %0) <{predicate = 7 : i64}> : (i32, i32) -> i1
    %13 = "llvm.select"(%12, %0, %11) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %14 = "llvm.select"(%8, %2, %13) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.br"()[^bb4] : () -> ()
  ^bb4:  // pred: ^bb3
    %15 = "llvm.load"(%arg2) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    "llvm.store"(%15, %3) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    "llvm.br"(%2)[^bb5] : (i32) -> ()
  ^bb5(%16: i32):  // 2 preds: ^bb4, ^bb10
    "llvm.br"()[^bb6] : () -> ()
  ^bb6:  // pred: ^bb5
    %17 = "llvm.icmp"(%16, %14) <{predicate = 6 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%17)[^bb7, ^bb11] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb7:  // pred: ^bb6
    %18 = "llvm.mul"(%16, %0) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %19 = "llvm.add"(%18, %arg0) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %20 = "llvm.mul"(%16, %0) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %21 = "llvm.load"(%3) <{access_groups = [#access_group], alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %22 = "llvm.sitofp"(%20) : (i32) -> f64
    %23 = "llvm.fadd"(%21, %22) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.store"(%23, %4) <{access_groups = [#access_group], alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    "llvm.br"()[^bb8] : () -> ()
  ^bb8:  // pred: ^bb7
    "llvm.br"()[^bb9] : () -> ()
  ^bb9:  // pred: ^bb8
    "llvm.br"()[^bb10] : () -> ()
  ^bb10:  // pred: ^bb9
    %24 = "llvm.add"(%16, %0) <{overflowFlags = 2 : i32}> : (i32, i32) -> i32
    "llvm.br"(%24)[^bb5] <{loop_annotation = #loop_annotation}> : (i32) -> ()
  ^bb11:  // pred: ^bb6
    "llvm.br"()[^bb12] : () -> ()
  ^bb12:  // pred: ^bb11
    "llvm.br"()[^bb13] : () -> ()
  ^bb13:  // pred: ^bb12
    %25 = "llvm.load"(%4) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    "llvm.store"(%25, %arg2) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

