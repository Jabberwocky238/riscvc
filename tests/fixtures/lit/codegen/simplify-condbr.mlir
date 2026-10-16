"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<fastcc>, function_type = !llvm.func<i1 ()>, linkage = #llvm.linkage<external>, sym_name = "S_reginclass", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<fastcc>, function_type = !llvm.func<ptr (i64)>, linkage = #llvm.linkage<external>, sym_name = "Perl_av_store", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<fastcc>, function_type = !llvm.func<i32 (ptr, i32, i8, i1)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "S_regrepeat", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: !llvm.ptr, %arg5: i32, %arg6: i8, %arg7: i1):
    %9 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %10 = "llvm.mlir.zero"() : () -> !llvm.ptr
    %11 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    "llvm.switch"(%arg6)[^bb8, ^bb4, ^bb4, ^bb1, ^bb1] <{case_operand_segments = array<i32: 0, 0, 0, 0>, case_values = dense<[19, 20, 1, 0]> : vector<4xi8>, operandSegmentSizes = array<i32: 1, 0, 0>}> : (i8) -> ()
  ^bb1:  // 2 preds: ^bb0, ^bb0
    "llvm.cond_br"(%arg7, %9)[^bb2, ^bb3] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb2:  // pred: ^bb1
    %12 = "llvm.load"(%10) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i32
    "llvm.br"(%11)[^bb3] : (i32) -> ()
  ^bb3(%13: i32):  // 2 preds: ^bb1, ^bb2
    "llvm.br"(%13)[^bb7] : (i32) -> ()
  ^bb4:  // 2 preds: ^bb0, ^bb0
    "llvm.br"(%9)[^bb5] : (i32) -> ()
  ^bb5(%14: i32):  // 2 preds: ^bb4, ^bb6
    %15 = "llvm.call"() <{CConv = #llvm.cconv<fastcc>, TailCallKind = #llvm.tailcallkind<none>, callee = @S_reginclass, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> i1
    "llvm.cond_br"(%15, %14)[^bb6, ^bb7] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb6:  // pred: ^bb5
    %16 = "llvm.add"(%14, %11) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.cond_br"(%arg7, %16, %9)[^bb5, ^bb9] <{operandSegmentSizes = array<i32: 1, 1, 1>}> : (i1, i32, i32) -> ()
  ^bb7(%17: i32):  // 2 preds: ^bb3, ^bb5
    %18 = "llvm.icmp"(%17, %9) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%18, %arg5)[^bb8, ^bb9] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb8:  // 2 preds: ^bb0, ^bb7
    "llvm.br"(%9)[^bb9] : (i32) -> ()
  ^bb9(%19: i32):  // 3 preds: ^bb6, ^bb7, ^bb8
    "llvm.return"(%19) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<ptr (ptr, i1, i1, i1)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "Perl_pp_refassign", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: !llvm.ptr, %arg1: i1, %arg2: i1, %arg3: i1):
    %0 = "llvm.mlir.zero"() : () -> !llvm.ptr
    %1 = "llvm.mlir.constant"() <{value = false}> : () -> i1
    "llvm.cond_br"(%arg1, %0)[^bb2, ^bb1] <{operandSegmentSizes = array<i32: 1, 1, 0>}> : (i1, !llvm.ptr) -> ()
  ^bb1:  // pred: ^bb0
    %2 = "llvm.load"(%arg0) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.ptr
    "llvm.br"(%2)[^bb2] : (!llvm.ptr) -> ()
  ^bb2(%3: !llvm.ptr):  // 2 preds: ^bb0, ^bb1
    "llvm.cond_br"(%arg2, %1)[^bb4, ^bb3] <{operandSegmentSizes = array<i32: 1, 1, 0>}> : (i1, i1) -> ()
  ^bb3:  // pred: ^bb2
    %4 = "llvm.load"(%arg0) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.ptr
    %5 = "llvm.icmp"(%4, %0) <{predicate = 1 : i64}> : (!llvm.ptr, !llvm.ptr) -> i1
    "llvm.br"(%5)[^bb4] : (i1) -> ()
  ^bb4(%6: i1):  // 2 preds: ^bb2, ^bb3
    "llvm.cond_br"(%arg3)[^bb6, ^bb5] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb5:  // pred: ^bb4
    "llvm.intr.assume"(%arg1) <{op_bundle_sizes = array<i32>}> : (i1) -> ()
    "llvm.br"()[^bb6] : () -> ()
  ^bb6:  // 2 preds: ^bb4, ^bb5
    "llvm.cond_br"(%6)[^bb8, ^bb7] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb7:  // 2 preds: ^bb6, ^bb8
    "llvm.return"(%0) : (!llvm.ptr) -> ()
  ^bb8:  // pred: ^bb6
    %7 = "llvm.load"(%3) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    %8 = "llvm.call"(%7) <{CConv = #llvm.cconv<fastcc>, TailCallKind = #llvm.tailcallkind<none>, callee = @Perl_av_store, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (i64) -> !llvm.ptr
    "llvm.br"()[^bb7] : () -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

