"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {}, {}], function_type = !llvm.func<i64 (i32, i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "cmovcc64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg27: i32, %arg28: i64, %arg29: i64):
    %17 = "llvm.mlir.constant"() <{value = 123 : i32}> : () -> i32
    %18 = "llvm.icmp"(%arg27, %17) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %19 = "llvm.select"(%18, %arg28, %arg29) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%19) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {}, {}], function_type = !llvm.func<i128 (i64, i128, i128)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "cmovcc128", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg24: i64, %arg25: i128, %arg26: i128):
    %14 = "llvm.mlir.constant"() <{value = 123 : i64}> : () -> i64
    %15 = "llvm.icmp"(%arg24, %14) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %16 = "llvm.select"(%15, %arg25, %arg26) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i128, i128) -> i128
    "llvm.return"(%16) : (i128) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i1, i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "cmov64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg21: i1, %arg22: i64, %arg23: i64):
    %13 = "llvm.select"(%arg21, %arg22, %arg23) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%13) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i128 (i1, i128, i128)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "cmov128", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg18: i1, %arg19: i128, %arg20: i128):
    %12 = "llvm.select"(%arg18, %arg19, %arg20) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i128, i128) -> i128
    "llvm.return"(%12) : (i128) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (i1, f32, f32, f32, f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "cmovfloat", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg13: i1, %arg14: f32, %arg15: f32, %arg16: f32, %arg17: f32):
    %9 = "llvm.select"(%arg13, %arg14, %arg15) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, f32, f32) -> f32
    %10 = "llvm.select"(%arg13, %arg16, %arg17) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, f32, f32) -> f32
    %11 = "llvm.fadd"(%9, %10) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    "llvm.return"(%11) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (i1, f64, f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "cmovdouble", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: i1, %arg11: f64, %arg12: f64):
    %8 = "llvm.select"(%arg10, %arg11, %arg12) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, f64, f64) -> f64
    "llvm.return"(%8) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {}, {}, {}], function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "cmovccdep", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: i32, %arg7: i32, %arg8: i32, %arg9: i32):
    %3 = "llvm.mlir.constant"() <{value = 123 : i32}> : () -> i32
    %4 = "llvm.icmp"(%arg6, %3) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %5 = "llvm.select"(%4, %arg7, %arg8) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %6 = "llvm.select"(%4, %5, %arg9) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %7 = "llvm.add"(%5, %6) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%7) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i1, i1, i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "cmovdiffcc", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i1, %arg1: i1, %arg2: i32, %arg3: i32, %arg4: i32, %arg5: i32):
    %0 = "llvm.select"(%arg0, %arg2, %arg3) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %1 = "llvm.select"(%arg1, %arg4, %arg5) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %2 = "llvm.add"(%0, %1) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%2) : (i32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

