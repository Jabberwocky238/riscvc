"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<vector<1xf16> (vector<1xf16>)>, linkage = #llvm.linkage<external>, sym_name = "exp10_v1f16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: vector<1xf16>):
    %10 = "llvm.intr.exp10"(%arg10) <{fastmathFlags = #llvm.fastmath<none>}> : (vector<1xf16>) -> vector<1xf16>
    "llvm.return"(%10) : (vector<1xf16>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<vector<2xf16> (vector<2xf16>)>, linkage = #llvm.linkage<external>, sym_name = "exp10_v2f16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: vector<2xf16>):
    %9 = "llvm.intr.exp10"(%arg9) <{fastmathFlags = #llvm.fastmath<none>}> : (vector<2xf16>) -> vector<2xf16>
    "llvm.return"(%9) : (vector<2xf16>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<vector<3xf16> (vector<3xf16>)>, linkage = #llvm.linkage<external>, sym_name = "exp10_v3f16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: vector<3xf16>):
    %8 = "llvm.intr.exp10"(%arg8) <{fastmathFlags = #llvm.fastmath<none>}> : (vector<3xf16>) -> vector<3xf16>
    "llvm.return"(%8) : (vector<3xf16>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<vector<4xf16> (vector<4xf16>)>, linkage = #llvm.linkage<external>, sym_name = "exp10_v4f16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg7: vector<4xf16>):
    %7 = "llvm.intr.exp10"(%arg7) <{fastmathFlags = #llvm.fastmath<none>}> : (vector<4xf16>) -> vector<4xf16>
    "llvm.return"(%7) : (vector<4xf16>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<vector<1xf32> (vector<1xf32>)>, linkage = #llvm.linkage<external>, sym_name = "exp10_v1f32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: vector<1xf32>):
    %6 = "llvm.intr.exp10"(%arg6) <{fastmathFlags = #llvm.fastmath<none>}> : (vector<1xf32>) -> vector<1xf32>
    "llvm.return"(%6) : (vector<1xf32>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<vector<2xf32> (vector<2xf32>)>, linkage = #llvm.linkage<external>, sym_name = "exp10_v2f32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: vector<2xf32>):
    %5 = "llvm.intr.exp10"(%arg5) <{fastmathFlags = #llvm.fastmath<none>}> : (vector<2xf32>) -> vector<2xf32>
    "llvm.return"(%5) : (vector<2xf32>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<vector<3xf32> (vector<3xf32>)>, linkage = #llvm.linkage<external>, sym_name = "exp10_v3f32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: vector<3xf32>):
    %4 = "llvm.intr.exp10"(%arg4) <{fastmathFlags = #llvm.fastmath<none>}> : (vector<3xf32>) -> vector<3xf32>
    "llvm.return"(%4) : (vector<3xf32>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<vector<4xf32> (vector<4xf32>)>, linkage = #llvm.linkage<external>, sym_name = "exp10_v4f32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: vector<4xf32>):
    %3 = "llvm.intr.exp10"(%arg3) <{fastmathFlags = #llvm.fastmath<none>}> : (vector<4xf32>) -> vector<4xf32>
    "llvm.return"(%3) : (vector<4xf32>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<vector<2xf64> (vector<2xf64>)>, linkage = #llvm.linkage<external>, sym_name = "exp10_v2f64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: vector<2xf64>):
    %2 = "llvm.intr.exp10"(%arg2) <{fastmathFlags = #llvm.fastmath<none>}> : (vector<2xf64>) -> vector<2xf64>
    "llvm.return"(%2) : (vector<2xf64>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<vector<3xf64> (vector<3xf64>)>, linkage = #llvm.linkage<external>, sym_name = "exp10_v3f64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: vector<3xf64>):
    %1 = "llvm.intr.exp10"(%arg1) <{fastmathFlags = #llvm.fastmath<none>}> : (vector<3xf64>) -> vector<3xf64>
    "llvm.return"(%1) : (vector<3xf64>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<vector<4xf64> (vector<4xf64>)>, linkage = #llvm.linkage<external>, sym_name = "exp10_v4f64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: vector<4xf64>):
    %0 = "llvm.intr.exp10"(%arg0) <{fastmathFlags = #llvm.fastmath<none>}> : (vector<4xf64>) -> vector<4xf64>
    "llvm.return"(%0) : (vector<4xf64>) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

