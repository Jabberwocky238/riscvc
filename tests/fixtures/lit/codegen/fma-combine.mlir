"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (ptr, ptr, ptr, f64)>, linkage = #llvm.linkage<external>, sym_name = "fnmadd_non_trivial", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: !llvm.ptr, %arg1: !llvm.ptr, %arg2: !llvm.ptr, %arg3: f64):
    %0 = "llvm.mlir.constant"() <{value = 0.94999999999999996 : f64}> : () -> f64
    %1 = "llvm.mlir.constant"() <{value = -3.000000e+00 : f64}> : () -> f64
    %2 = "llvm.mlir.constant"() <{value = 4.500000e+00 : f64}> : () -> f64
    %3 = "llvm.mlir.constant"() <{value = 3.000000e+00 : f64}> : () -> f64
    %4 = "llvm.mlir.constant"() <{value = 0.000000e+00 : f64}> : () -> f64
    %5 = "llvm.mlir.constant"() <{value = 1.000000e+00 : f64}> : () -> f64
    "llvm.store"(%0, %arg2) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    %6 = "llvm.fmul"(%arg3, %1) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.store"(%6, %arg0) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    %7 = "llvm.fmul"(%arg3, %2) <{fastmathFlags = #llvm.fastmath<contract>}> : (f64, f64) -> f64
    %8 = "llvm.fadd"(%7, %3) <{fastmathFlags = #llvm.fastmath<nsz, contract>}> : (f64, f64) -> f64
    %9 = "llvm.fmul"(%8, %4) <{fastmathFlags = #llvm.fastmath<contract>}> : (f64, f64) -> f64
    %10 = "llvm.fadd"(%9, %5) <{fastmathFlags = #llvm.fastmath<nsz, contract>}> : (f64, f64) -> f64
    %11 = "llvm.fmul"(%10, %4) <{fastmathFlags = #llvm.fastmath<contract>}> : (f64, f64) -> f64
    %12 = "llvm.fsub"(%11, %arg3) <{fastmathFlags = #llvm.fastmath<nsz, contract>}> : (f64, f64) -> f64
    "llvm.store"(%12, %arg1) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    %13 = "llvm.fmul"(%arg3, %4) <{fastmathFlags = #llvm.fastmath<contract>}> : (f64, f64) -> f64
    %14 = "llvm.fsub"(%4, %arg3) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %15 = "llvm.fmul"(%14, %2) <{fastmathFlags = #llvm.fastmath<contract>}> : (f64, f64) -> f64
    %16 = "llvm.fadd"(%15, %3) <{fastmathFlags = #llvm.fastmath<nsz, contract>}> : (f64, f64) -> f64
    %17 = "llvm.fmul"(%16, %4) <{fastmathFlags = #llvm.fastmath<contract>}> : (f64, f64) -> f64
    %18 = "llvm.fadd"(%17, %5) <{fastmathFlags = #llvm.fastmath<nsz, contract>}> : (f64, f64) -> f64
    %19 = "llvm.fsub"(%18, %13) <{fastmathFlags = #llvm.fastmath<nsz, contract>}> : (f64, f64) -> f64
    "llvm.return"(%19) : (f64) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

