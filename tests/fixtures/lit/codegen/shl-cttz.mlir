"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8, i8)>, linkage = #llvm.linkage<external>, sym_name = "shl_cttz_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: i8, %arg15: i8):
    %22 = "llvm.intr.cttz"(%arg15) <{is_zero_poison = true}> : (i8) -> i8
    %23 = "llvm.shl"(%arg14, %22) <{overflowFlags = 0 : i32}> : (i8, i8) -> i8
    "llvm.return"(%23) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8)>, linkage = #llvm.linkage<external>, sym_name = "shl_cttz_constant_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg13: i8):
    %19 = "llvm.mlir.constant"() <{value = 4 : i8}> : () -> i8
    %20 = "llvm.intr.cttz"(%arg13) <{is_zero_poison = true}> : (i8) -> i8
    %21 = "llvm.shl"(%19, %20) <{overflowFlags = 0 : i32}> : (i8, i8) -> i8
    "llvm.return"(%21) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16, i16)>, linkage = #llvm.linkage<external>, sym_name = "shl_cttz_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg11: i16, %arg12: i16):
    %17 = "llvm.intr.cttz"(%arg12) <{is_zero_poison = true}> : (i16) -> i16
    %18 = "llvm.shl"(%arg11, %17) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    "llvm.return"(%18) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16)>, linkage = #llvm.linkage<external>, sym_name = "shl_cttz_constant_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: i16):
    %14 = "llvm.mlir.constant"() <{value = 4 : i16}> : () -> i16
    %15 = "llvm.intr.cttz"(%arg10) <{is_zero_poison = true}> : (i16) -> i16
    %16 = "llvm.shl"(%14, %15) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    "llvm.return"(%16) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "shl_cttz_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: i32, %arg9: i32):
    %12 = "llvm.intr.cttz"(%arg9) <{is_zero_poison = true}> : (i32) -> i32
    %13 = "llvm.shl"(%arg8, %12) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%13) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "shl_cttz_i32_zero_is_defined", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: i32, %arg7: i32):
    %10 = "llvm.intr.cttz"(%arg7) <{is_zero_poison = false}> : (i32) -> i32
    %11 = "llvm.shl"(%arg6, %10) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%11) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "shl_cttz_constant_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: i32):
    %7 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %8 = "llvm.intr.cttz"(%arg5) <{is_zero_poison = true}> : (i32) -> i32
    %9 = "llvm.shl"(%7, %8) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%9) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "shl_cttz_multiuse_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: i32, %arg4: i32):
    %5 = "llvm.intr.cttz"(%arg4) <{is_zero_poison = true}> : (i32) -> i32
    "llvm.call"(%5) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @use32, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (i32) -> ()
    %6 = "llvm.shl"(%arg3, %5) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%6) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "shl_cttz_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: i64, %arg2: i64):
    %3 = "llvm.intr.cttz"(%arg2) <{is_zero_poison = true}> : (i64) -> i64
    %4 = "llvm.shl"(%arg1, %3) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%4) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "shl_cttz_constant_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i64):
    %0 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %1 = "llvm.intr.cttz"(%arg0) <{is_zero_poison = true}> : (i64) -> i64
    %2 = "llvm.shl"(%0, %1) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%2) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<void (i32)>, linkage = #llvm.linkage<external>, sym_name = "use32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

