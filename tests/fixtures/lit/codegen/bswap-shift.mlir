"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_bswap_srli_7_bswap_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg11: i16):
    %44 = "llvm.mlir.constant"() <{value = 7 : i16}> : () -> i16
    %45 = "llvm.intr.bswap"(%arg11) : (i16) -> i16
    %46 = "llvm.lshr"(%45, %44) : (i16, i16) -> i16
    %47 = "llvm.intr.bswap"(%46) : (i16) -> i16
    "llvm.return"(%47) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_bswap_srli_8_bswap_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: i16):
    %40 = "llvm.mlir.constant"() <{value = 8 : i16}> : () -> i16
    %41 = "llvm.intr.bswap"(%arg10) : (i16) -> i16
    %42 = "llvm.lshr"(%41, %40) : (i16, i16) -> i16
    %43 = "llvm.intr.bswap"(%42) : (i16) -> i16
    "llvm.return"(%43) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_bswap_srli_8_bswap_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: i32):
    %36 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %37 = "llvm.intr.bswap"(%arg9) : (i32) -> i32
    %38 = "llvm.lshr"(%37, %36) : (i32, i32) -> i32
    %39 = "llvm.intr.bswap"(%38) : (i32) -> i32
    "llvm.return"(%39) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_bswap_srli_16_bswap_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: i32):
    %32 = "llvm.mlir.constant"() <{value = 16 : i32}> : () -> i32
    %33 = "llvm.intr.bswap"(%arg8) : (i32) -> i32
    %34 = "llvm.lshr"(%33, %32) : (i32, i32) -> i32
    %35 = "llvm.intr.bswap"(%34) : (i32) -> i32
    "llvm.return"(%35) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_bswap_srli_24_bswap_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg7: i32):
    %28 = "llvm.mlir.constant"() <{value = 24 : i32}> : () -> i32
    %29 = "llvm.intr.bswap"(%arg7) : (i32) -> i32
    %30 = "llvm.lshr"(%29, %28) : (i32, i32) -> i32
    %31 = "llvm.intr.bswap"(%30) : (i32) -> i32
    "llvm.return"(%31) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_bswap_srli_48_bswap_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: i64):
    %24 = "llvm.mlir.constant"() <{value = 48 : i64}> : () -> i64
    %25 = "llvm.intr.bswap"(%arg6) : (i64) -> i64
    %26 = "llvm.lshr"(%25, %24) : (i64, i64) -> i64
    %27 = "llvm.intr.bswap"(%26) : (i64) -> i64
    "llvm.return"(%27) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_bswap_shli_7_bswap_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: i16):
    %20 = "llvm.mlir.constant"() <{value = 7 : i16}> : () -> i16
    %21 = "llvm.intr.bswap"(%arg5) : (i16) -> i16
    %22 = "llvm.shl"(%21, %20) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    %23 = "llvm.intr.bswap"(%22) : (i16) -> i16
    "llvm.return"(%23) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_bswap_shli_8_bswap_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i16):
    %16 = "llvm.mlir.constant"() <{value = 8 : i16}> : () -> i16
    %17 = "llvm.intr.bswap"(%arg4) : (i16) -> i16
    %18 = "llvm.shl"(%17, %16) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    %19 = "llvm.intr.bswap"(%18) : (i16) -> i16
    "llvm.return"(%19) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_bswap_shli_8_bswap_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: i32):
    %12 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %13 = "llvm.intr.bswap"(%arg3) : (i32) -> i32
    %14 = "llvm.shl"(%13, %12) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %15 = "llvm.intr.bswap"(%14) : (i32) -> i32
    "llvm.return"(%15) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_bswap_shli_16_bswap_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i32):
    %8 = "llvm.mlir.constant"() <{value = 16 : i32}> : () -> i32
    %9 = "llvm.intr.bswap"(%arg2) : (i32) -> i32
    %10 = "llvm.shl"(%9, %8) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %11 = "llvm.intr.bswap"(%10) : (i32) -> i32
    "llvm.return"(%11) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_bswap_shli_24_bswap_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: i32):
    %4 = "llvm.mlir.constant"() <{value = 24 : i32}> : () -> i32
    %5 = "llvm.intr.bswap"(%arg1) : (i32) -> i32
    %6 = "llvm.shl"(%5, %4) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %7 = "llvm.intr.bswap"(%6) : (i32) -> i32
    "llvm.return"(%7) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_bswap_shli_48_bswap_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i64):
    %0 = "llvm.mlir.constant"() <{value = 48 : i64}> : () -> i64
    %1 = "llvm.intr.bswap"(%arg0) : (i64) -> i64
    %2 = "llvm.shl"(%1, %0) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %3 = "llvm.intr.bswap"(%2) : (i64) -> i64
    "llvm.return"(%3) : (i64) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

