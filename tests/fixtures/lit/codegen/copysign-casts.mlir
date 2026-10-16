"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64, f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fold_promote_d_s", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: f64, %arg11: f32):
    %10 = "llvm.fpext"(%arg11) : (f32) -> f64
    %11 = "llvm.intr.copysign"(%arg10, %10) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.return"(%11) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64, f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fold_promote_d_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: f64, %arg9: f16):
    %8 = "llvm.fpext"(%arg9) : (f16) -> f64
    %9 = "llvm.intr.copysign"(%arg8, %8) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.return"(%9) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32, f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fold_promote_f_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: f32, %arg7: f16):
    %6 = "llvm.fpext"(%arg7) : (f16) -> f32
    %7 = "llvm.intr.copysign"(%arg6, %6) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    "llvm.return"(%7) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32, f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fold_demote_s_d", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: f32, %arg5: f64):
    %4 = "llvm.fptrunc"(%arg5) : (f64) -> f32
    %5 = "llvm.intr.copysign"(%arg4, %4) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    "llvm.return"(%5) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (f16, f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fold_demote_h_s", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: f16, %arg3: f32):
    %2 = "llvm.fptrunc"(%arg3) : (f32) -> f16
    %3 = "llvm.intr.copysign"(%arg2, %2) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16) -> f16
    "llvm.return"(%3) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (f16, f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fold_demote_h_d", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: f16, %arg1: f64):
    %0 = "llvm.fptrunc"(%arg1) : (f64) -> f16
    %1 = "llvm.intr.copysign"(%arg0, %0) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16) -> f16
    "llvm.return"(%1) : (f16) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

