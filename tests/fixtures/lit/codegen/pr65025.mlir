"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<ptr (ptr, i8, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "cmpxchg_masked_and_branch1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: !llvm.ptr, %arg1: i8, %arg2: i8):
    %0 = "llvm.mlir.zero"() : () -> !llvm.ptr
    %1 = "llvm.cmpxchg"(%arg0, %arg1, %arg2) <{alignment = 1 : i64, failure_ordering = 7 : i64, success_ordering = 7 : i64}> : (!llvm.ptr, i8, i8) -> !llvm.struct<(i8, i1)>
    %2 = "llvm.extractvalue"(%1) <{position = array<i64: 1>}> : (!llvm.struct<(i8, i1)>) -> i1
    %3 = "llvm.select"(%2, %arg0, %0) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, !llvm.ptr, !llvm.ptr) -> !llvm.ptr
    "llvm.cond_br"(%2)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.return"(%3) : (!llvm.ptr) -> ()
  ^bb2:  // pred: ^bb0
    "llvm.return"(%0) : (!llvm.ptr) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

