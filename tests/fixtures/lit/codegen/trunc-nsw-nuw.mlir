"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i8 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "trunc_nsw_add", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: i32):
    %16 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %17 = "llvm.add"(%arg5, %16) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %18 = "llvm.trunc"(%17) <{overflowFlags = 1 : i32}> : (i32) -> i8
    "llvm.return"(%18) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i64)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "trunc_nuw_nsw_urem", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i64):
    %13 = "llvm.mlir.constant"() <{value = 10000 : i32}> : () -> i32
    %14 = "llvm.trunc"(%arg4) <{overflowFlags = 3 : i32}> : (i64) -> i32
    %15 = "llvm.urem"(%14, %13) : (i32, i32) -> i32
    "llvm.return"(%15) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "zext_nneg_udiv_trunc_nuw", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: i64):
    %9 = "llvm.mlir.constant"() <{value = 160 : i16}> : () -> i16
    %10 = "llvm.trunc"(%arg3) <{overflowFlags = 2 : i32}> : (i64) -> i16
    %11 = "llvm.udiv"(%10, %9) : (i16, i16) -> i16
    %12 = "llvm.zext"(%11) <{nonNeg}> : (i16) -> i64
    "llvm.return"(%12) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sext_udiv_trunc_nuw", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i64):
    %5 = "llvm.mlir.constant"() <{value = 160 : i16}> : () -> i16
    %6 = "llvm.trunc"(%arg2) <{overflowFlags = 2 : i32}> : (i64) -> i16
    %7 = "llvm.udiv"(%6, %5) : (i16, i16) -> i16
    %8 = "llvm.sext"(%7) : (i16) -> i64
    "llvm.return"(%8) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<ptr (ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "gep_nusw_zext_nneg_add_trunc_nuw_nsw", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: !llvm.ptr, %arg1: i64):
    %0 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %1 = "llvm.trunc"(%arg1) <{overflowFlags = 3 : i32}> : (i64) -> i32
    %2 = "llvm.add"(%1, %0) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    %3 = "llvm.zext"(%2) <{nonNeg}> : (i32) -> i64
    %4 = "llvm.getelementptr"(%arg0, %3) <{elem_type = f32, noWrapFlags = 2 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.return"(%4) : (!llvm.ptr) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

