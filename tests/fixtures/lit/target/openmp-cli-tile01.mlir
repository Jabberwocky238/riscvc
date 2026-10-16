"builtin.module"() ({
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<warning, "Debug Info Version", 3 : i32>]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "tile_trivial_loop", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: !llvm.ptr, %arg1: i32, %arg2: i32):
    %0 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %2 = "llvm.mlir.constant"() <{value = 4.200000e+01 : f32}> : () -> f32
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    %3 = "llvm.udiv"(%arg1, %arg2) : (i32, i32) -> i32
    %4 = "llvm.urem"(%arg1, %arg2) : (i32, i32) -> i32
    %5 = "llvm.icmp"(%4, %0) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %6 = "llvm.zext"(%5) : (i1) -> i32
    %7 = "llvm.add"(%3, %6) <{overflowFlags = 2 : i32}> : (i32, i32) -> i32
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // pred: ^bb1
    "llvm.br"(%0)[^bb3] : (i32) -> ()
  ^bb3(%8: i32):  // 2 preds: ^bb2, ^bb16
    "llvm.br"()[^bb4] : () -> ()
  ^bb4:  // pred: ^bb3
    %9 = "llvm.icmp"(%8, %7) <{predicate = 6 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%9)[^bb5, ^bb17] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb5:  // pred: ^bb4
    %10 = "llvm.icmp"(%8, %3) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %11 = "llvm.select"(%10, %4, %arg2) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.br"()[^bb6] : () -> ()
  ^bb6:  // pred: ^bb5
    "llvm.br"(%0)[^bb7] : (i32) -> ()
  ^bb7(%12: i32):  // 2 preds: ^bb6, ^bb13
    "llvm.br"()[^bb8] : () -> ()
  ^bb8:  // pred: ^bb7
    %13 = "llvm.icmp"(%12, %11) <{predicate = 6 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%13)[^bb9, ^bb14] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb9:  // pred: ^bb8
    %14 = "llvm.mul"(%arg2, %8) <{overflowFlags = 2 : i32}> : (i32, i32) -> i32
    %15 = "llvm.add"(%14, %12) <{overflowFlags = 2 : i32}> : (i32, i32) -> i32
    "llvm.br"()[^bb10] : () -> ()
  ^bb10:  // pred: ^bb9
    "llvm.br"()[^bb11] : () -> ()
  ^bb11:  // pred: ^bb10
    %16 = "llvm.getelementptr"(%arg0, %15) <{elem_type = f32, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%2, %16) <{alignment = 4 : i64, ordering = 0 : i64}> : (f32, !llvm.ptr) -> ()
    "llvm.br"()[^bb12] : () -> ()
  ^bb12:  // pred: ^bb11
    "llvm.br"()[^bb13] : () -> ()
  ^bb13:  // pred: ^bb12
    %17 = "llvm.add"(%12, %1) <{overflowFlags = 2 : i32}> : (i32, i32) -> i32
    "llvm.br"(%17)[^bb7] : (i32) -> ()
  ^bb14:  // pred: ^bb8
    "llvm.br"()[^bb15] : () -> ()
  ^bb15:  // pred: ^bb14
    "llvm.br"()[^bb16] : () -> ()
  ^bb16:  // pred: ^bb15
    %18 = "llvm.add"(%8, %1) <{overflowFlags = 2 : i32}> : (i32, i32) -> i32
    "llvm.br"(%18)[^bb3] : (i32) -> ()
  ^bb17:  // pred: ^bb4
    "llvm.br"()[^bb18] : () -> ()
  ^bb18:  // pred: ^bb17
    "llvm.br"()[^bb19] : () -> ()
  ^bb19:  // pred: ^bb18
    "llvm.return"() : () -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

