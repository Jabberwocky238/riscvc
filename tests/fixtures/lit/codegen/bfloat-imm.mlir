"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<bf16 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "bfloat_imm", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %4 = "llvm.mlir.constant"() <{value = 3.000000e+00 : bf16}> : () -> bf16
    "llvm.return"(%4) : (bf16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<bf16 (bf16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "bfloat_imm_op", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: bf16):
    %2 = "llvm.mlir.constant"() <{value = 1.000000e+00 : bf16}> : () -> bf16
    %3 = "llvm.fadd"(%arg0, %2) <{fastmathFlags = #llvm.fastmath<none>}> : (bf16, bf16) -> bf16
    "llvm.return"(%3) : (bf16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<bf16 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "bfloat_zero", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %1 = "llvm.mlir.constant"() <{value = 0.000000e+00 : bf16}> : () -> bf16
    "llvm.return"(%1) : (bf16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<bf16 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "bfloat_negative_zero", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %0 = "llvm.mlir.constant"() <{value = -0.000000e+00 : bf16}> : () -> bf16
    "llvm.return"(%0) : (bf16) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

