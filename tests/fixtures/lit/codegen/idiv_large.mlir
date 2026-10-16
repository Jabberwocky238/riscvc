"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "udiv_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: i64, %arg7: i64):
    %3 = "llvm.udiv"(%arg6, %arg7) : (i64, i64) -> i64
    "llvm.return"(%3) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i65 (i65, i65)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "udiv_i65", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i65, %arg5: i65):
    %2 = "llvm.udiv"(%arg4, %arg5) : (i65, i65) -> i65
    "llvm.return"(%2) : (i65) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i128 (i128, i128)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "udiv_i128", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i128, %arg3: i128):
    %1 = "llvm.udiv"(%arg2, %arg3) : (i128, i128) -> i128
    "llvm.return"(%1) : (i128) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i129 (i129, i129)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "udiv_i129", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i129, %arg1: i129):
    %0 = "llvm.udiv"(%arg0, %arg1) : (i129, i129) -> i129
    "llvm.return"(%0) : (i129) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

