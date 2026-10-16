"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (f16, f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fminimum_f16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: f16, %arg13: f16):
    %9 = "llvm.intr.minimum"(%arg12, %arg13) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16) -> f16
    "llvm.return"(%9) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (f16, f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fmaximum_f16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: f16, %arg11: f16):
    %8 = "llvm.intr.maximum"(%arg10, %arg11) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16) -> f16
    "llvm.return"(%8) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (f16, f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fminimum_nnan_f16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: f16, %arg9: f16):
    %7 = "llvm.intr.minimum"(%arg8, %arg9) <{fastmathFlags = #llvm.fastmath<nnan>}> : (f16, f16) -> f16
    "llvm.return"(%7) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (f16, f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fmaximum_nnan_f16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: f16, %arg7: f16):
    %6 = "llvm.intr.maximum"(%arg6, %arg7) <{fastmathFlags = #llvm.fastmath<nnan>}> : (f16, f16) -> f16
    "llvm.return"(%6) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (f16, f16)>, linkage = #llvm.linkage<external>, no_nans_fp_math = true, no_unwind, sym_name = "fminimum_nnan_attr_f16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: f16, %arg5: f16):
    %5 = "llvm.intr.minimum"(%arg4, %arg5) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16) -> f16
    "llvm.return"(%5) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (f16, f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fminimum_nnan_op_f16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: f16, %arg3: f16):
    %3 = "llvm.fadd"(%arg2, %arg2) <{fastmathFlags = #llvm.fastmath<nnan>}> : (f16, f16) -> f16
    %4 = "llvm.intr.minimum"(%arg2, %3) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16) -> f16
    "llvm.return"(%4) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (f16, f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fmaximum_nnan_op_f16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: f16, %arg1: f16):
    %0 = "llvm.fadd"(%arg0, %arg1) <{fastmathFlags = #llvm.fastmath<nnan>}> : (f16, f16) -> f16
    %1 = "llvm.fsub"(%arg0, %arg1) <{fastmathFlags = #llvm.fastmath<nnan>}> : (f16, f16) -> f16
    %2 = "llvm.intr.maximum"(%0, %1) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16) -> f16
    "llvm.return"(%2) : (f16) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

