"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (f32, f32, i1)>, linkage = #llvm.linkage<external>, sym_name = "fastmath_inst", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: f32, %arg7: f32, %arg8: i1):
    %10 = "llvm.fadd"(%arg6, %arg7) <{fastmathFlags = #llvm.fastmath<nnan, ninf>}> : (f32, f32) -> f32
    %11 = "llvm.fsub"(%arg6, %arg7) <{fastmathFlags = #llvm.fastmath<nsz>}> : (f32, f32) -> f32
    %12 = "llvm.fmul"(%arg6, %arg7) <{fastmathFlags = #llvm.fastmath<arcp, contract>}> : (f32, f32) -> f32
    %13 = "llvm.fdiv"(%arg6, %arg7) <{fastmathFlags = #llvm.fastmath<afn, reassoc>}> : (f32, f32) -> f32
    %14 = "llvm.fneg"(%arg6) <{fastmathFlags = #llvm.fastmath<fast>}> : (f32) -> f32
    %15 = "llvm.select"(%arg8, %arg6, %arg7) <{fastmathFlags = #llvm.fastmath<contract>}> : (i1, f32, f32) -> f32
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (f32, f32)>, linkage = #llvm.linkage<external>, sym_name = "fastmath_fcmp", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: f32, %arg5: f32):
    %9 = "llvm.fcmp"(%arg4, %arg5) <{fastmathFlags = #llvm.fastmath<nsz>, predicate = 3 : i64}> : (f32, f32) -> i1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32)>, linkage = #llvm.linkage<external>, sym_name = "fn", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (f32)>, linkage = #llvm.linkage<external>, sym_name = "fastmath_call", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: f32):
    %8 = "llvm.call"(%arg3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @fn, fastmathFlags = #llvm.fastmath<ninf>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f32) -> f32
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (f32, i32, vector<2xf32>)>, linkage = #llvm.linkage<external>, sym_name = "fastmath_intr", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: f32, %arg1: i32, %arg2: vector<2xf32>):
    %0 = "llvm.intr.exp"(%arg0) <{fastmathFlags = #llvm.fastmath<nnan, ninf>}> : (f32) -> f32
    %1 = "llvm.intr.powi"(%arg0, %arg1) <{fastmathFlags = #llvm.fastmath<fast>}> : (f32, i32) -> f32
    %2 = "llvm.intr.pow"(%arg0, %arg0) <{fastmathFlags = #llvm.fastmath<fast>}> : (f32, f32) -> f32
    %3 = "llvm.intr.fmuladd"(%arg0, %arg0, %arg0) <{fastmathFlags = #llvm.fastmath<fast>}> : (f32, f32, f32) -> f32
    %4 = "llvm.intr.vector.reduce.fmin"(%arg2) <{fastmathFlags = #llvm.fastmath<nnan>}> : (vector<2xf32>) -> f32
    %5 = "llvm.intr.vector.reduce.fmax"(%arg2) <{fastmathFlags = #llvm.fastmath<nnan>}> : (vector<2xf32>) -> f32
    %6 = "llvm.intr.vector.reduce.fminimum"(%arg2) <{fastmathFlags = #llvm.fastmath<nnan>}> : (vector<2xf32>) -> f32
    %7 = "llvm.intr.vector.reduce.fmaximum"(%arg2) <{fastmathFlags = #llvm.fastmath<nnan>}> : (vector<2xf32>) -> f32
    "llvm.return"() : () -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

