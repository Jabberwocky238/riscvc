"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "addw", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: i32, %arg4: i32, %arg5: i32):
    %19 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %20 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %21 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %22 = "llvm.mlir.constant"() <{value = -2 : i32}> : () -> i32
    %23 = "llvm.mlir.constant"() <{value = 1 : i33}> : () -> i33
    %24 = "llvm.icmp"(%arg3, %arg4) <{predicate = 2 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%24, %19)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb1:  // pred: ^bb0
    %25 = "llvm.xor"(%arg3, %20) : (i32, i32) -> i32
    %26 = "llvm.add"(%25, %arg4) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %27 = "llvm.add"(%arg3, %21) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %28 = "llvm.mul"(%26, %27) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %29 = "llvm.zext"(%26) : (i32) -> i33
    %30 = "llvm.add"(%arg4, %22) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %31 = "llvm.sub"(%30, %arg3) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %32 = "llvm.zext"(%31) : (i32) -> i33
    %33 = "llvm.mul"(%29, %32) <{overflowFlags = 0 : i32}> : (i33, i33) -> i33
    %34 = "llvm.lshr"(%33, %23) : (i33, i33) -> i33
    %35 = "llvm.trunc"(%34) <{overflowFlags = 0 : i32}> : (i33) -> i32
    %36 = "llvm.add"(%28, %arg3) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %37 = "llvm.add"(%36, %35) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.br"(%37)[^bb2] : (i32) -> ()
  ^bb2(%38: i32):  // 2 preds: ^bb0, ^bb1
    "llvm.return"(%38) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "subw", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: i32):
    %0 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %2 = "llvm.mlir.constant"() <{value = -2 : i32}> : () -> i32
    %3 = "llvm.mlir.constant"() <{value = 1 : i33}> : () -> i33
    %4 = "llvm.icmp"(%arg0, %arg1) <{predicate = 2 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%4, %0)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb1:  // pred: ^bb0
    %5 = "llvm.xor"(%arg0, %1) : (i32, i32) -> i32
    %6 = "llvm.add"(%5, %arg1) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %7 = "llvm.xor"(%arg0, %1) : (i32, i32) -> i32
    %8 = "llvm.mul"(%6, %7) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %9 = "llvm.zext"(%6) : (i32) -> i33
    %10 = "llvm.add"(%arg1, %2) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %11 = "llvm.sub"(%10, %arg0) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %12 = "llvm.zext"(%11) : (i32) -> i33
    %13 = "llvm.mul"(%9, %12) <{overflowFlags = 0 : i32}> : (i33, i33) -> i33
    %14 = "llvm.lshr"(%13, %3) : (i33, i33) -> i33
    %15 = "llvm.trunc"(%14) <{overflowFlags = 0 : i32}> : (i33) -> i32
    %16 = "llvm.sub"(%8, %arg0) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %17 = "llvm.sub"(%16, %15) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.br"(%17)[^bb2] : (i32) -> ()
  ^bb2(%18: i32):  // 2 preds: ^bb0, ^bb1
    "llvm.return"(%18) : (i32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

