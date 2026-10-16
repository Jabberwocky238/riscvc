#access_group = #llvm.access_group<id = distinct[0]<>>
#loop_annotation = #llvm.loop_annotation<parallelAccesses = #access_group>
"builtin.module"() ({
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<warning, "Debug Info Version", 3 : i32>]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "simd_if", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: !llvm.ptr, %arg1: !llvm.ptr):
    %0 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %1 = "llvm.mlir.constant"() <{value = false}> : () -> i1
    %2 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %3 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %4 = "llvm.alloca"(%0) <{alignment = 4 : i64, elem_type = i32}> : (i64) -> !llvm.ptr
    %5 = "llvm.alloca"(%0) <{alignment = 4 : i64, elem_type = i32}> : (i64) -> !llvm.ptr
    %6 = "llvm.load"(%arg0) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %7 = "llvm.load"(%arg0) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %8 = "llvm.load"(%arg1) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %9 = "llvm.icmp"(%7, %8) <{predicate = 5 : i64}> : (i32, i32) -> i1
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // pred: ^bb1
    "llvm.br"()[^bb3] : () -> ()
  ^bb3:  // pred: ^bb2
    %10 = "llvm.select"(%1, %6, %2) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %11 = "llvm.select"(%1, %2, %6) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %12 = "llvm.sub"(%11, %10) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %13 = "llvm.icmp"(%11, %10) <{predicate = 2 : i64}> : (i32, i32) -> i1
    %14 = "llvm.udiv"(%12, %3) : (i32, i32) -> i32
    %15 = "llvm.add"(%14, %3) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %16 = "llvm.select"(%13, %2, %15) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.br"()[^bb4] : () -> ()
  ^bb4:  // pred: ^bb3
    "llvm.br"(%2)[^bb5] : (i32) -> ()
  ^bb5(%17: i32):  // 2 preds: ^bb4, ^bb12
    "llvm.br"()[^bb6] : () -> ()
  ^bb6:  // pred: ^bb5
    %18 = "llvm.icmp"(%17, %16) <{predicate = 6 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%18)[^bb7, ^bb17] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb7:  // pred: ^bb6
    "llvm.cond_br"(%9)[^bb8, ^bb13] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb8:  // pred: ^bb7
    %19 = "llvm.mul"(%17, %3) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %20 = "llvm.add"(%19, %2) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.br"()[^bb9] : () -> ()
  ^bb9:  // pred: ^bb8
    "llvm.store"(%20, %4) <{access_groups = [#access_group], alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb10] : () -> ()
  ^bb10:  // pred: ^bb9
    "llvm.br"()[^bb11] : () -> ()
  ^bb11:  // 2 preds: ^bb10, ^bb16
    "llvm.br"()[^bb12] : () -> ()
  ^bb12:  // pred: ^bb11
    %21 = "llvm.add"(%17, %3) <{overflowFlags = 2 : i32}> : (i32, i32) -> i32
    "llvm.br"(%21)[^bb5] <{loop_annotation = #loop_annotation}> : (i32) -> ()
  ^bb13:  // pred: ^bb7
    "llvm.br"()[^bb14] : () -> ()
  ^bb14:  // pred: ^bb13
    %22 = "llvm.mul"(%17, %3) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %23 = "llvm.add"(%22, %2) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.br"()[^bb15] : () -> ()
  ^bb15:  // pred: ^bb14
    "llvm.store"(%23, %4) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb16] : () -> ()
  ^bb16:  // pred: ^bb15
    "llvm.br"()[^bb11] : () -> ()
  ^bb17:  // pred: ^bb6
    "llvm.br"()[^bb18] : () -> ()
  ^bb18:  // pred: ^bb17
    "llvm.br"()[^bb19] : () -> ()
  ^bb19:  // pred: ^bb18
    "llvm.return"() : () -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

