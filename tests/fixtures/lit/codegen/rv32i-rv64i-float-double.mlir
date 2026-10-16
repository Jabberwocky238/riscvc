"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32, f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "float_test", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: f32, %arg3: f32):
    %2 = "llvm.fadd"(%arg2, %arg3) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %3 = "llvm.fdiv"(%2, %arg3) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    "llvm.return"(%3) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64, f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "double_test", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: f64, %arg1: f64):
    %0 = "llvm.fadd"(%arg0, %arg1) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %1 = "llvm.fdiv"(%0, %arg1) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.return"(%1) : (f64) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

