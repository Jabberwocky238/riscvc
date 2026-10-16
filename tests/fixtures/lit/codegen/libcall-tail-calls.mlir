"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {llvm.zeroext}], function_type = !llvm.func<i8 (i8, i8)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.zeroext}], sym_name = "udiv8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg22: i8, %arg23: i8):
    %14 = "llvm.udiv"(%arg22, %arg23) : (i8, i8) -> i8
    "llvm.return"(%14) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i16 (i16, i16)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "sdiv16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg20: i16, %arg21: i16):
    %13 = "llvm.sdiv"(%arg20, %arg21) : (i16, i16) -> i16
    "llvm.return"(%13) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "mul32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg18: i32, %arg19: i32):
    %12 = "llvm.mul"(%arg18, %arg19) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%12) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "mul64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg16: i64, %arg17: i64):
    %11 = "llvm.mul"(%arg16, %arg17) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%11) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sin_f16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg15: f16):
    %10 = "llvm.intr.sin"(%arg15) <{fastmathFlags = #llvm.fastmath<none>}> : (f16) -> f16
    "llvm.return"(%10) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sin_f32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: f32):
    %9 = "llvm.intr.sin"(%arg14) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    "llvm.return"(%9) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "powi_f32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: f32, %arg13: i32):
    %8 = "llvm.intr.powi"(%arg12, %arg13) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, i32) -> f32
    "llvm.return"(%8) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "llround_f32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg11: f32):
    %7 = "llvm.intr.llround"(%arg11) : (f32) -> i64
    "llvm.return"(%7) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sin_f64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: f64):
    %6 = "llvm.intr.sin"(%arg10) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    "llvm.return"(%6) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "powi_f64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: f64, %arg9: i32):
    %5 = "llvm.intr.powi"(%arg8, %arg9) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, i32) -> f64
    "llvm.return"(%5) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "llround_f64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg7: f64):
    %4 = "llvm.intr.llround"(%arg7) : (f64) -> i64
    "llvm.return"(%4) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomic_load_i8_unordered", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: !llvm.ptr):
    %3 = "llvm.load"(%arg6) <{alignment = 1 : i64, ordering = 1 : i64}> : (!llvm.ptr) -> i8
    "llvm.return"(%3) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_add_i16_release", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: !llvm.ptr, %arg5: i16):
    %2 = "llvm.atomicrmw"(%arg4, %arg5) <{alignment = 2 : i64, bin_op = 1 : i64, ordering = 5 : i64}> : (!llvm.ptr, i16) -> i16
    "llvm.return"(%2) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_xor_i32_acq_rel", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: !llvm.ptr, %arg3: i32):
    %1 = "llvm.atomicrmw"(%arg2, %arg3) <{alignment = 4 : i64, bin_op = 6 : i64, ordering = 6 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.return"(%1) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_nand_i64_seq_cst", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: !llvm.ptr, %arg1: i64):
    %0 = "llvm.atomicrmw"(%arg0, %arg1) <{alignment = 8 : i64, bin_op = 4 : i64, ordering = 7 : i64}> : (!llvm.ptr, i64) -> i64
    "llvm.return"(%0) : (i64) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

