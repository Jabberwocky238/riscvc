"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<fastcc>, function_type = !llvm.func<void (i8, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "Perl_sv_setnv", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i8, %arg1: !llvm.ptr):
    %0 = "llvm.mlir.zero"() : () -> !llvm.ptr
    %1 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    "llvm.switch"(%arg0, %arg1)[^bb4, ^bb2, ^bb3, ^bb1, ^bb1] <{case_operand_segments = array<i32: 0, 0, 0, 0>, case_values = dense<[1, 12, 3, 0]> : vector<4xi8>, operandSegmentSizes = array<i32: 1, 1, 0>}> : (i8, !llvm.ptr) -> ()
  ^bb1:  // 2 preds: ^bb0, ^bb0
    "llvm.return"() : () -> ()
  ^bb2:  // pred: ^bb0
    "llvm.br"(%0)[^bb4] : (!llvm.ptr) -> ()
  ^bb3:  // pred: ^bb0
    "llvm.br"(%0)[^bb4] : (!llvm.ptr) -> ()
  ^bb4(%2: !llvm.ptr):  // 3 preds: ^bb0, ^bb2, ^bb3
    %3 = "llvm.call"(%0, %0, %1) <{CConv = #llvm.cconv<fastcc>, TailCallKind = #llvm.tailcallkind<tail>, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (!llvm.ptr, !llvm.ptr, i32) -> i64
    "llvm.call"(%0, %0, %2, %0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>, var_callee_type = !llvm.func<void (ptr, ...)>}> : (!llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.ptr) -> ()
    "llvm.unreachable"() : () -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

