"builtin.module"() ({
  "llvm.mlir.global"() <{addr_space = 0 : i32, global_type = !llvm.ptr, linkage = #llvm.linkage<external>, sym_name = "addr", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %13 = "llvm.mlir.zero"() : () -> !llvm.ptr
    "llvm.return"(%13) : (!llvm.ptr) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr)>, linkage = #llvm.linkage<external>, sym_name = "basic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: !llvm.ptr):
    %11 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %12 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    "llvm.indirectbr"(%arg4)[^bb1, ^bb2] <{indbr_operand_segments = array<i32: 0, 0>}> : (!llvm.ptr) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.return"(%12) : (i32) -> ()
  ^bb2:  // pred: ^bb0
    "llvm.return"(%11) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, sym_name = "test_indirectbr", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %8 = "llvm.blockaddress"() <{block_addr = #llvm.blockaddress<function = @test_indirectbr, tag = <id = 1>>}> : () -> !llvm.ptr
    %9 = "llvm.mlir.addressof"() <{global_name = @addr}> : () -> !llvm.ptr
    "llvm.store"(%8, %9) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %10 = "llvm.load"(%9) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.ptr
    "llvm.indirectbr"(%10)[^bb1] <{indbr_operand_segments = array<i32: 0>}> : (!llvm.ptr) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.blocktag"() <{tag = #llvm.blocktag<id = 1>}> : () -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "callee", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, ptr, ptr, i32)>, linkage = #llvm.linkage<external>, sym_name = "test_indirectbr_phi", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: !llvm.ptr, %arg1: !llvm.ptr, %arg2: !llvm.ptr, %arg3: i32):
    %0 = "llvm.mlir.poison"() : () -> i1
    %1 = "llvm.blockaddress"() <{block_addr = #llvm.blockaddress<function = @test_indirectbr_phi, tag = <id = 1>>}> : () -> !llvm.ptr
    %2 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %3 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %4 = "llvm.select"(%0, %1, %arg0) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, !llvm.ptr, !llvm.ptr) -> !llvm.ptr
    "llvm.indirectbr"(%4, %2)[^bb1, ^bb2] <{indbr_operand_segments = array<i32: 0, 1>}> : (!llvm.ptr, i32) -> ()
  ^bb1:  // pred: ^bb0
    %5 = "llvm.select"(%0, %1, %arg0) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, !llvm.ptr, !llvm.ptr) -> !llvm.ptr
    "llvm.indirectbr"(%5, %3)[^bb2, ^bb3] <{indbr_operand_segments = array<i32: 1, 0>}> : (!llvm.ptr, i32) -> ()
  ^bb2(%6: i32):  // 2 preds: ^bb0, ^bb1
    %7 = "llvm.call"(%arg1, %arg3, %6) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @callee, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (!llvm.ptr, i32, i32) -> i32
    "llvm.return"(%7) : (i32) -> ()
  ^bb3:  // pred: ^bb1
    "llvm.blocktag"() <{tag = #llvm.blocktag<id = 1>}> : () -> ()
    "llvm.return"(%arg3) : (i32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

