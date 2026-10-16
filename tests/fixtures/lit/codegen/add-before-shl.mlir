"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "add_small_const", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i32):
    %18 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %19 = "llvm.mlir.constant"() <{value = 24 : i32}> : () -> i32
    %20 = "llvm.add"(%arg4, %18) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %21 = "llvm.shl"(%20, %19) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %22 = "llvm.ashr"(%21, %19) : (i32, i32) -> i32
    "llvm.return"(%22) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "add_large_const", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: i32):
    %13 = "llvm.mlir.constant"() <{value = 4095 : i32}> : () -> i32
    %14 = "llvm.mlir.constant"() <{value = 16 : i32}> : () -> i32
    %15 = "llvm.add"(%arg3, %13) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %16 = "llvm.shl"(%15, %14) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %17 = "llvm.ashr"(%16, %14) : (i32, i32) -> i32
    "llvm.return"(%17) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "add_huge_const", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i32):
    %8 = "llvm.mlir.constant"() <{value = 32767 : i32}> : () -> i32
    %9 = "llvm.mlir.constant"() <{value = 16 : i32}> : () -> i32
    %10 = "llvm.add"(%arg2, %8) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %11 = "llvm.shl"(%10, %9) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %12 = "llvm.ashr"(%11, %9) : (i32, i32) -> i32
    "llvm.return"(%12) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i24 (i24)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "add_non_machine_type", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: i24):
    %4 = "llvm.mlir.constant"() <{value = 256 : i24}> : () -> i24
    %5 = "llvm.mlir.constant"() <{value = 12 : i24}> : () -> i24
    %6 = "llvm.add"(%arg1, %4) <{overflowFlags = 0 : i32}> : (i24, i24) -> i24
    %7 = "llvm.shl"(%6, %5) <{overflowFlags = 0 : i32}> : (i24, i24) -> i24
    "llvm.return"(%7) : (i24) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i128 (i128)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "add_wide_operand", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i128):
    %0 = "llvm.mlir.constant"() <{value = 5192296858534827628530496329220096 : i128}> : () -> i128
    %1 = "llvm.mlir.constant"() <{value = 3 : i128}> : () -> i128
    %2 = "llvm.add"(%arg0, %0) <{overflowFlags = 0 : i32}> : (i128, i128) -> i128
    %3 = "llvm.shl"(%2, %1) <{overflowFlags = 0 : i32}> : (i128, i128) -> i128
    "llvm.return"(%3) : (i128) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

