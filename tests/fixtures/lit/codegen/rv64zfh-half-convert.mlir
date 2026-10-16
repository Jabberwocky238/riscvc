"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "aext_fptosi", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg19: f16):
    %22 = "llvm.fptosi"(%arg19) : (f16) -> i32
    "llvm.return"(%22) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f16)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "sext_fptosi", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg18: f16):
    %21 = "llvm.fptosi"(%arg18) : (f16) -> i32
    "llvm.return"(%21) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f16)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.zeroext}], sym_name = "zext_fptosi", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg17: f16):
    %20 = "llvm.fptosi"(%arg17) : (f16) -> i32
    "llvm.return"(%20) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "aext_fptoui", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg16: f16):
    %19 = "llvm.fptoui"(%arg16) : (f16) -> i32
    "llvm.return"(%19) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f16)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "sext_fptoui", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg15: f16):
    %18 = "llvm.fptoui"(%arg15) : (f16) -> i32
    "llvm.return"(%18) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f16)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.zeroext}], sym_name = "zext_fptoui", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: f16):
    %17 = "llvm.fptoui"(%arg14) : (f16) -> i32
    "llvm.return"(%17) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (f16, f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "bcvt_f16_to_aext_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: f16, %arg13: f16):
    %15 = "llvm.fadd"(%arg12, %arg13) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16) -> f16
    %16 = "llvm.bitcast"(%15) : (f16) -> i16
    "llvm.return"(%16) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (f16, f16)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "bcvt_f16_to_sext_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: f16, %arg11: f16):
    %13 = "llvm.fadd"(%arg10, %arg11) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16) -> f16
    %14 = "llvm.bitcast"(%13) : (f16) -> i16
    "llvm.return"(%14) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (f16, f16)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.zeroext}], sym_name = "bcvt_f16_to_zext_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: f16, %arg9: f16):
    %11 = "llvm.fadd"(%arg8, %arg9) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16) -> f16
    %12 = "llvm.bitcast"(%11) : (f16) -> i16
    "llvm.return"(%12) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "bcvt_i64_to_f16_via_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: i64, %arg7: i64):
    %6 = "llvm.trunc"(%arg6) <{overflowFlags = 0 : i32}> : (i64) -> i16
    %7 = "llvm.trunc"(%arg7) <{overflowFlags = 0 : i32}> : (i64) -> i16
    %8 = "llvm.bitcast"(%6) : (i16) -> f16
    %9 = "llvm.bitcast"(%7) : (i16) -> f16
    %10 = "llvm.fadd"(%8, %9) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16) -> f16
    "llvm.return"(%10) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "uitofp_aext_i32_to_f16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: i32):
    %5 = "llvm.uitofp"(%arg5) : (i32) -> f16
    "llvm.return"(%5) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<f16 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "uitofp_sext_i32_to_f16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i32):
    %4 = "llvm.uitofp"(%arg4) : (i32) -> f16
    "llvm.return"(%4) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}], function_type = !llvm.func<f16 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "uitofp_zext_i32_to_f16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: i32):
    %3 = "llvm.uitofp"(%arg3) : (i32) -> f16
    "llvm.return"(%3) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sitofp_aext_i32_to_f16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i32):
    %2 = "llvm.sitofp"(%arg2) : (i32) -> f16
    "llvm.return"(%2) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<f16 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sitofp_sext_i32_to_f16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: i32):
    %1 = "llvm.sitofp"(%arg1) : (i32) -> f16
    "llvm.return"(%1) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}], function_type = !llvm.func<f16 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sitofp_zext_i32_to_f16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i32):
    %0 = "llvm.sitofp"(%arg0) : (i32) -> f16
    "llvm.return"(%0) : (f16) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

