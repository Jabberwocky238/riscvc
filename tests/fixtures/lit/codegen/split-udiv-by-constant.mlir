"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i322 (i322)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_udiv_3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: i322):
    %20 = "llvm.mlir.constant"() <{value = 3 : i322}> : () -> i322
    %21 = "llvm.udiv"(%arg10, %20) : (i322, i322) -> i322
    "llvm.return"(%21) : (i322) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i322 (i322)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_udiv_5", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: i322):
    %18 = "llvm.mlir.constant"() <{value = 5 : i322}> : () -> i322
    %19 = "llvm.udiv"(%arg9, %18) : (i322, i322) -> i322
    "llvm.return"(%19) : (i322) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i322 (i322)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_udiv_7", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: i322):
    %16 = "llvm.mlir.constant"() <{value = 7 : i322}> : () -> i322
    %17 = "llvm.udiv"(%arg8, %16) : (i322, i322) -> i322
    "llvm.return"(%17) : (i322) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i322 (i322)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_udiv_9", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg7: i322):
    %14 = "llvm.mlir.constant"() <{value = 9 : i322}> : () -> i322
    %15 = "llvm.udiv"(%arg7, %14) : (i322, i322) -> i322
    "llvm.return"(%15) : (i322) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i322 (i322)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_udiv_15", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: i322):
    %12 = "llvm.mlir.constant"() <{value = 15 : i322}> : () -> i322
    %13 = "llvm.udiv"(%arg6, %12) : (i322, i322) -> i322
    "llvm.return"(%13) : (i322) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i322 (i322)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_udiv_17", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: i322):
    %10 = "llvm.mlir.constant"() <{value = 17 : i322}> : () -> i322
    %11 = "llvm.udiv"(%arg5, %10) : (i322, i322) -> i322
    "llvm.return"(%11) : (i322) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i322 (i322)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_udiv_255", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i322):
    %8 = "llvm.mlir.constant"() <{value = 255 : i322}> : () -> i322
    %9 = "llvm.udiv"(%arg4, %8) : (i322, i322) -> i322
    "llvm.return"(%9) : (i322) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i322 (i322)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_udiv_257", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: i322):
    %6 = "llvm.mlir.constant"() <{value = 257 : i322}> : () -> i322
    %7 = "llvm.udiv"(%arg3, %6) : (i322, i322) -> i322
    "llvm.return"(%7) : (i322) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i322 (i322)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_udiv_65535", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i322):
    %4 = "llvm.mlir.constant"() <{value = 65535 : i322}> : () -> i322
    %5 = "llvm.udiv"(%arg2, %4) : (i322, i322) -> i322
    "llvm.return"(%5) : (i322) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i322 (i322)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_udiv_65537", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: i322):
    %2 = "llvm.mlir.constant"() <{value = 65537 : i322}> : () -> i322
    %3 = "llvm.udiv"(%arg1, %2) : (i322, i322) -> i322
    "llvm.return"(%3) : (i322) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i322 (i322)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_udiv_12", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i322):
    %0 = "llvm.mlir.constant"() <{value = 12 : i322}> : () -> i322
    %1 = "llvm.udiv"(%arg0, %0) : (i322, i322) -> i322
    "llvm.return"(%1) : (i322) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

