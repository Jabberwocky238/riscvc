#access_group = #llvm.access_group<id = distinct[0]<>>
#loop_annotation = #llvm.loop_annotation<parallelAccesses = #access_group>
"builtin.module"() ({
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<warning, "Debug Info Version", 3 : i32>]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, sym_name = "simd_order", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %0 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %1 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %2 = "llvm.mlir.constant"() <{value = 10 : i64}> : () -> i64
    %3 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = i64}> : (i64) -> !llvm.ptr
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // pred: ^bb1
    "llvm.br"()[^bb3] : () -> ()
  ^bb3:  // pred: ^bb2
    "llvm.br"()[^bb4] : () -> ()
  ^bb4:  // pred: ^bb3
    "llvm.br"(%1)[^bb5] : (i64) -> ()
  ^bb5(%4: i64):  // 2 preds: ^bb4, ^bb10
    "llvm.br"()[^bb6] : () -> ()
  ^bb6:  // pred: ^bb5
    %5 = "llvm.icmp"(%4, %2) <{predicate = 6 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%5)[^bb7, ^bb11] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb7:  // pred: ^bb6
    %6 = "llvm.mul"(%4, %0) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %7 = "llvm.add"(%6, %0) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.br"()[^bb8] : () -> ()
  ^bb8:  // pred: ^bb7
    "llvm.store"(%7, %3) <{access_groups = [#access_group], alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    "llvm.br"()[^bb9] : () -> ()
  ^bb9:  // pred: ^bb8
    "llvm.br"()[^bb10] : () -> ()
  ^bb10:  // pred: ^bb9
    %8 = "llvm.add"(%4, %0) <{overflowFlags = 2 : i32}> : (i64, i64) -> i64
    "llvm.br"(%8)[^bb5] <{loop_annotation = #loop_annotation}> : (i64) -> ()
  ^bb11:  // pred: ^bb6
    "llvm.br"()[^bb12] : () -> ()
  ^bb12:  // pred: ^bb11
    "llvm.br"()[^bb13] : () -> ()
  ^bb13:  // pred: ^bb12
    "llvm.return"() : () -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

