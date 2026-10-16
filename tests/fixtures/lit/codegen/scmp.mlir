"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i8 (i8, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "scmp.8.8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: i8, %arg15: i8):
    %7 = "llvm.intr.scmp"(%arg14, %arg15) : (i8, i8) -> i8
    "llvm.return"(%7) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i8 (i16, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "scmp.8.16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: i16, %arg13: i16):
    %6 = "llvm.intr.scmp"(%arg12, %arg13) : (i16, i16) -> i8
    "llvm.return"(%6) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "scmp.8.32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: i32, %arg11: i32):
    %5 = "llvm.intr.scmp"(%arg10, %arg11) : (i32, i32) -> i8
    "llvm.return"(%5) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "scmp.8.64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: i64, %arg9: i64):
    %4 = "llvm.intr.scmp"(%arg8, %arg9) : (i64, i64) -> i8
    "llvm.return"(%4) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i128, i128)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "scmp.8.128", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: i128, %arg7: i128):
    %3 = "llvm.intr.scmp"(%arg6, %arg7) : (i128, i128) -> i8
    "llvm.return"(%3) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "scmp.32.32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i32, %arg5: i32):
    %2 = "llvm.intr.scmp"(%arg4, %arg5) : (i32, i32) -> i32
    "llvm.return"(%2) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "scmp.32.64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i64, %arg3: i64):
    %1 = "llvm.intr.scmp"(%arg2, %arg3) : (i64, i64) -> i32
    "llvm.return"(%1) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "scmp.64.64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i64, %arg1: i64):
    %0 = "llvm.intr.scmp"(%arg0, %arg1) : (i64, i64) -> i64
    "llvm.return"(%0) : (i64) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

