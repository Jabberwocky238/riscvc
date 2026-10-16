"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i8 (i8, i8)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "smax_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg40: i8, %arg41: i8):
    %41 = "llvm.intr.smax"(%arg40, %arg41) : (i8, i8) -> i8
    "llvm.return"(%41) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i16 (i16, i16)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "smax_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg38: i16, %arg39: i16):
    %40 = "llvm.intr.smax"(%arg38, %arg39) : (i16, i16) -> i16
    "llvm.return"(%40) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "smax_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg36: i32, %arg37: i32):
    %39 = "llvm.intr.smax"(%arg36, %arg37) : (i32, i32) -> i32
    "llvm.return"(%39) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "smax_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg34: i64, %arg35: i64):
    %38 = "llvm.intr.smax"(%arg34, %arg35) : (i64, i64) -> i64
    "llvm.return"(%38) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i8 (i8, i8)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "smin_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg32: i8, %arg33: i8):
    %37 = "llvm.intr.smin"(%arg32, %arg33) : (i8, i8) -> i8
    "llvm.return"(%37) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i16 (i16, i16)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "smin_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg30: i16, %arg31: i16):
    %36 = "llvm.intr.smin"(%arg30, %arg31) : (i16, i16) -> i16
    "llvm.return"(%36) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "smin_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg28: i32, %arg29: i32):
    %35 = "llvm.intr.smin"(%arg28, %arg29) : (i32, i32) -> i32
    "llvm.return"(%35) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "smin_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg26: i64, %arg27: i64):
    %34 = "llvm.intr.smin"(%arg26, %arg27) : (i64, i64) -> i64
    "llvm.return"(%34) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {llvm.zeroext}], function_type = !llvm.func<i8 (i8, i8)>, linkage = #llvm.linkage<external>, sym_name = "umax_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg24: i8, %arg25: i8):
    %33 = "llvm.intr.umax"(%arg24, %arg25) : (i8, i8) -> i8
    "llvm.return"(%33) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {llvm.zeroext}], function_type = !llvm.func<i16 (i16, i16)>, linkage = #llvm.linkage<external>, sym_name = "umax_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg22: i16, %arg23: i16):
    %32 = "llvm.intr.umax"(%arg22, %arg23) : (i16, i16) -> i16
    "llvm.return"(%32) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "umax_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg20: i32, %arg21: i32):
    %31 = "llvm.intr.umax"(%arg20, %arg21) : (i32, i32) -> i32
    "llvm.return"(%31) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "umax_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg18: i64, %arg19: i64):
    %30 = "llvm.intr.umax"(%arg18, %arg19) : (i64, i64) -> i64
    "llvm.return"(%30) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {llvm.zeroext}], function_type = !llvm.func<i8 (i8, i8)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.zeroext}], sym_name = "umin_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg16: i8, %arg17: i8):
    %29 = "llvm.intr.umin"(%arg16, %arg17) : (i8, i8) -> i8
    "llvm.return"(%29) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {llvm.zeroext}], function_type = !llvm.func<i16 (i16, i16)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.zeroext}], sym_name = "umin_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: i16, %arg15: i16):
    %28 = "llvm.intr.umin"(%arg14, %arg15) : (i16, i16) -> i16
    "llvm.return"(%28) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "umin_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: i32, %arg13: i32):
    %27 = "llvm.intr.umin"(%arg12, %arg13) : (i32, i32) -> i32
    "llvm.return"(%27) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "umin_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: i64, %arg11: i64):
    %26 = "llvm.intr.umin"(%arg10, %arg11) : (i64, i64) -> i64
    "llvm.return"(%26) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "smin_same_op_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: i32):
    %25 = "llvm.intr.smin"(%arg9, %arg9) : (i32, i32) -> i32
    "llvm.return"(%25) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "smax_same_op_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: i32):
    %24 = "llvm.intr.smax"(%arg8, %arg8) : (i32, i32) -> i32
    "llvm.return"(%24) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "umin_same_op_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg7: i32):
    %23 = "llvm.intr.umin"(%arg7, %arg7) : (i32, i32) -> i32
    "llvm.return"(%23) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "umax_same_op_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: i32):
    %22 = "llvm.intr.umax"(%arg6, %arg6) : (i32, i32) -> i32
    "llvm.return"(%22) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "smin_undef_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %20 = "llvm.mlir.undef"() : () -> i32
    %21 = "llvm.intr.smin"(%20, %20) : (i32, i32) -> i32
    "llvm.return"(%21) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "smax_undef_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %18 = "llvm.mlir.undef"() : () -> i32
    %19 = "llvm.intr.smax"(%18, %18) : (i32, i32) -> i32
    "llvm.return"(%19) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "umin_undef_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %16 = "llvm.mlir.undef"() : () -> i32
    %17 = "llvm.intr.umin"(%16, %16) : (i32, i32) -> i32
    "llvm.return"(%17) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "umax_undef_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %14 = "llvm.mlir.undef"() : () -> i32
    %15 = "llvm.intr.umax"(%14, %14) : (i32, i32) -> i32
    "llvm.return"(%15) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "smax_i32_pos_constant", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: i32):
    %12 = "llvm.mlir.constant"() <{value = 10 : i32}> : () -> i32
    %13 = "llvm.intr.smax"(%arg5, %12) : (i32, i32) -> i32
    "llvm.return"(%13) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "smax_i32_pos_constant_trailing_zeros", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i32):
    %6 = "llvm.mlir.constant"() <{value = -8 : i32}> : () -> i32
    %7 = "llvm.mlir.constant"() <{value = 16 : i32}> : () -> i32
    %8 = "llvm.mlir.constant"() <{value = -4 : i32}> : () -> i32
    %9 = "llvm.and"(%arg4, %6) : (i32, i32) -> i32
    %10 = "llvm.intr.smax"(%9, %7) : (i32, i32) -> i32
    %11 = "llvm.and"(%10, %8) : (i32, i32) -> i32
    "llvm.return"(%11) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "smin_i32_negone", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: i32):
    %4 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %5 = "llvm.intr.smin"(%arg3, %4) : (i32, i32) -> i32
    "llvm.return"(%5) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "smin_i64_negone", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i64):
    %2 = "llvm.mlir.constant"() <{value = -1 : i64}> : () -> i64
    %3 = "llvm.intr.smin"(%arg2, %2) : (i64, i64) -> i64
    "llvm.return"(%3) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "umax_i64_one", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i64, %arg1: i64):
    %0 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %1 = "llvm.intr.umax"(%arg0, %0) : (i64, i64) -> i64
    "llvm.return"(%1) : (i64) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

