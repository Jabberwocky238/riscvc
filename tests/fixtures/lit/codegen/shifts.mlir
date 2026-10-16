"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "lshr64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg34: i64, %arg35: i64):
    %26 = "llvm.lshr"(%arg34, %arg35) : (i64, i64) -> i64
    "llvm.return"(%26) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, passthrough = ["minsize"], sym_name = "lshr64_minsize", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg32: i64, %arg33: i64):
    %25 = "llvm.lshr"(%arg32, %arg33) : (i64, i64) -> i64
    "llvm.return"(%25) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "ashr64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg30: i64, %arg31: i64):
    %24 = "llvm.ashr"(%arg30, %arg31) : (i64, i64) -> i64
    "llvm.return"(%24) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, passthrough = ["minsize"], sym_name = "ashr64_minsize", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg28: i64, %arg29: i64):
    %23 = "llvm.ashr"(%arg28, %arg29) : (i64, i64) -> i64
    "llvm.return"(%23) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "shl64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg26: i64, %arg27: i64):
    %22 = "llvm.shl"(%arg26, %arg27) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%22) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, passthrough = ["minsize"], sym_name = "shl64_minsize", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg24: i64, %arg25: i64):
    %21 = "llvm.shl"(%arg24, %arg25) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%21) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i128 (i128, i128)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "lshr128", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg22: i128, %arg23: i128):
    %20 = "llvm.lshr"(%arg22, %arg23) : (i128, i128) -> i128
    "llvm.return"(%20) : (i128) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i128 (i128, i128)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "ashr128", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg20: i128, %arg21: i128):
    %19 = "llvm.ashr"(%arg20, %arg21) : (i128, i128) -> i128
    "llvm.return"(%19) : (i128) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i128 (i128, i128)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "shl128", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg18: i128, %arg19: i128):
    %18 = "llvm.shl"(%arg18, %arg19) <{overflowFlags = 0 : i32}> : (i128, i128) -> i128
    "llvm.return"(%18) : (i128) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, passthrough = ["minsize"], sym_name = "fshr64_minsize", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg16: i64, %arg17: i64):
    %17 = "llvm.intr.fshr"(%arg16, %arg16, %arg17) : (i64, i64, i64) -> i64
    "llvm.return"(%17) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i128 (i128, i128)>, linkage = #llvm.linkage<external>, no_unwind, passthrough = ["minsize"], sym_name = "fshr128_minsize", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: i128, %arg15: i128):
    %16 = "llvm.intr.fshr"(%arg14, %arg14, %arg15) : (i128, i128, i128) -> i128
    "llvm.return"(%16) : (i128) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.signext}], function_type = !llvm.func<i64 (i64, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "lshr64_shamt32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: i64, %arg13: i32):
    %14 = "llvm.zext"(%arg13) <{nonNeg}> : (i32) -> i64
    %15 = "llvm.lshr"(%arg12, %14) : (i64, i64) -> i64
    "llvm.return"(%15) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.signext}], function_type = !llvm.func<i64 (i64, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "ashr64_shamt32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: i64, %arg11: i32):
    %12 = "llvm.zext"(%arg11) <{nonNeg}> : (i32) -> i64
    %13 = "llvm.ashr"(%arg10, %12) : (i64, i64) -> i64
    "llvm.return"(%13) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.signext}], function_type = !llvm.func<i64 (i64, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "shl64_shamt32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: i64, %arg9: i32):
    %10 = "llvm.zext"(%arg9) <{nonNeg}> : (i32) -> i64
    %11 = "llvm.shl"(%arg8, %10) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%11) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.signext}], function_type = !llvm.func<i128 (i128, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "lshr128_shamt32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: i128, %arg7: i32):
    %8 = "llvm.zext"(%arg7) <{nonNeg}> : (i32) -> i128
    %9 = "llvm.lshr"(%arg6, %8) : (i128, i128) -> i128
    "llvm.return"(%9) : (i128) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.signext}], function_type = !llvm.func<i128 (i128, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "ashr128_shamt32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i128, %arg5: i32):
    %6 = "llvm.zext"(%arg5) <{nonNeg}> : (i32) -> i128
    %7 = "llvm.ashr"(%arg4, %6) : (i128, i128) -> i128
    "llvm.return"(%7) : (i128) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.signext}], function_type = !llvm.func<i128 (i128, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "shl128_shamt32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i128, %arg3: i32):
    %4 = "llvm.zext"(%arg3) <{nonNeg}> : (i32) -> i128
    %5 = "llvm.shl"(%arg2, %4) <{overflowFlags = 0 : i32}> : (i128, i128) -> i128
    "llvm.return"(%5) : (i128) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.signext}], function_type = !llvm.func<i128 (i128, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "shl128_shamt32_arith", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i128, %arg1: i32):
    %0 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "llvm.add"(%arg1, %0) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %2 = "llvm.zext"(%1) <{nonNeg}> : (i32) -> i128
    %3 = "llvm.shl"(%arg0, %2) <{overflowFlags = 0 : i32}> : (i128, i128) -> i128
    "llvm.return"(%3) : (i128) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

