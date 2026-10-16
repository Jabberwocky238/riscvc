"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "complex_float_add", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i64, %arg1: i64):
    %0 = "llvm.mlir.constant"() <{value = 32 : i64}> : () -> i64
    %1 = "llvm.trunc"(%arg0) <{overflowFlags = 0 : i32}> : (i64) -> i32
    %2 = "llvm.bitcast"(%1) : (i32) -> f32
    %3 = "llvm.lshr"(%arg0, %0) : (i64, i64) -> i64
    %4 = "llvm.trunc"(%3) <{overflowFlags = 0 : i32}> : (i64) -> i32
    %5 = "llvm.bitcast"(%4) : (i32) -> f32
    %6 = "llvm.trunc"(%arg1) <{overflowFlags = 0 : i32}> : (i64) -> i32
    %7 = "llvm.bitcast"(%6) : (i32) -> f32
    %8 = "llvm.lshr"(%arg1, %0) : (i64, i64) -> i64
    %9 = "llvm.trunc"(%8) <{overflowFlags = 0 : i32}> : (i64) -> i32
    %10 = "llvm.bitcast"(%9) : (i32) -> f32
    %11 = "llvm.fadd"(%2, %7) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %12 = "llvm.fadd"(%5, %10) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %13 = "llvm.bitcast"(%11) : (f32) -> i32
    %14 = "llvm.bitcast"(%12) : (f32) -> i32
    %15 = "llvm.zext"(%14) : (i32) -> i64
    %16 = "llvm.shl"(%15, %0) <{overflowFlags = 2 : i32}> : (i64, i64) -> i64
    %17 = "llvm.zext"(%13) : (i32) -> i64
    %18 = "llvm.or"(%16, %17) : (i64, i64) -> i64
    "llvm.return"(%18) : (i64) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

