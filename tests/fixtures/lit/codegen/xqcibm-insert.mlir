"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_ori", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg22: i32):
    %57 = "llvm.mlir.constant"() <{value = 511 : i32}> : () -> i32
    %58 = "llvm.or"(%arg22, %57) : (i32, i32) -> i32
    "llvm.return"(%58) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_insbi_mask", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg21: i32):
    %55 = "llvm.mlir.constant"() <{value = 65535 : i32}> : () -> i32
    %56 = "llvm.or"(%arg21, %55) : (i32, i32) -> i32
    "llvm.return"(%56) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_insbi_mask_mv", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg19: i32, %arg20: i32):
    %53 = "llvm.mlir.constant"() <{value = 65535 : i32}> : () -> i32
    %54 = "llvm.or"(%arg20, %53) : (i32, i32) -> i32
    "llvm.return"(%54) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_insbi_shifted_mask", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg18: i32):
    %51 = "llvm.mlir.constant"() <{value = 61440 : i32}> : () -> i32
    %52 = "llvm.or"(%arg18, %51) : (i32, i32) -> i32
    "llvm.return"(%52) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_insbi_shifted_mask_multiple_uses", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg17: i32):
    %46 = "llvm.mlir.constant"() <{value = 61440 : i32}> : () -> i32
    %47 = "llvm.mlir.constant"() <{value = 10 : i32}> : () -> i32
    %48 = "llvm.or"(%arg17, %46) : (i32, i32) -> i32
    %49 = "llvm.add"(%arg17, %47) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %50 = "llvm.xor"(%48, %49) : (i32, i32) -> i32
    "llvm.return"(%50) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_single_bit_set", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg16: i32):
    %44 = "llvm.mlir.constant"() <{value = 4096 : i32}> : () -> i32
    %45 = "llvm.or"(%arg16, %44) : (i32, i32) -> i32
    "llvm.return"(%45) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "test1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg15: i32):
    %40 = "llvm.mlir.constant"() <{value = -16 : i32}> : () -> i32
    %41 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %42 = "llvm.and"(%arg15, %40) : (i32, i32) -> i32
    %43 = "llvm.or"(%42, %41) : (i32, i32) -> i32
    "llvm.return"(%43) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "test2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: i32):
    %36 = "llvm.mlir.constant"() <{value = -62914561 : i32}> : () -> i32
    %37 = "llvm.mlir.constant"() <{value = 41943040 : i32}> : () -> i32
    %38 = "llvm.and"(%arg14, %36) : (i32, i32) -> i32
    %39 = "llvm.or"(%38, %37) : (i32, i32) -> i32
    "llvm.return"(%39) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "test3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg13: i64):
    %32 = "llvm.mlir.constant"() <{value = -8 : i64}> : () -> i64
    %33 = "llvm.mlir.constant"() <{value = 5 : i64}> : () -> i64
    %34 = "llvm.and"(%arg13, %32) : (i64, i64) -> i64
    %35 = "llvm.or"(%34, %33) : (i64, i64) -> i64
    "llvm.return"(%35) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "test4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: i64):
    %28 = "llvm.mlir.constant"() <{value = -255 : i64}> : () -> i64
    %29 = "llvm.mlir.constant"() <{value = 18 : i64}> : () -> i64
    %30 = "llvm.and"(%arg12, %28) : (i64, i64) -> i64
    %31 = "llvm.or"(%30, %29) : (i64, i64) -> i64
    "llvm.return"(%31) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "test5", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg11: i32):
    %24 = "llvm.mlir.constant"() <{value = -16 : i32}> : () -> i32
    %25 = "llvm.mlir.constant"() <{value = 6 : i32}> : () -> i32
    %26 = "llvm.and"(%arg11, %24) : (i32, i32) -> i32
    %27 = "llvm.or"(%26, %25) : (i32, i32) -> i32
    "llvm.return"(%27) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "test6", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: i32):
    %20 = "llvm.mlir.constant"() <{value = -1048576 : i32}> : () -> i32
    %21 = "llvm.mlir.constant"() <{value = 744146 : i32}> : () -> i32
    %22 = "llvm.and"(%arg10, %20) : (i32, i32) -> i32
    %23 = "llvm.or"(%22, %21) : (i32, i32) -> i32
    "llvm.return"(%23) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "test7", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: i32):
    %16 = "llvm.mlir.constant"() <{value = -1048575 : i32}> : () -> i32
    %17 = "llvm.mlir.constant"() <{value = 744146 : i32}> : () -> i32
    %18 = "llvm.and"(%arg9, %16) : (i32, i32) -> i32
    %19 = "llvm.or"(%18, %17) : (i32, i32) -> i32
    "llvm.return"(%19) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "test8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: i64):
    %12 = "llvm.mlir.constant"() <{value = -72057594037927681 : i64}> : () -> i64
    %13 = "llvm.mlir.constant"() <{value = 157601565442048 : i64}> : () -> i64
    %14 = "llvm.and"(%arg8, %12) : (i64, i64) -> i64
    %15 = "llvm.or"(%14, %13) : (i64, i64) -> i64
    "llvm.return"(%15) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "no_bseti_1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: i32, %arg6: i32, %arg7: i32):
    %10 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %11 = "llvm.or"(%arg6, %10) : (i32, i32) -> i32
    "llvm.return"(%11) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "bseti_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i32, %arg3: i32, %arg4: i32):
    %8 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %9 = "llvm.or"(%arg3, %8) : (i32, i32) -> i32
    "llvm.return"(%9) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "bseti_i32_10", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: i32):
    %6 = "llvm.mlir.constant"() <{value = 1024 : i32}> : () -> i32
    %7 = "llvm.or"(%arg1, %6) : (i32, i32) -> i32
    "llvm.return"(%7) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i32)>, linkage = #llvm.linkage<external>, sym_name = "no_insbi_known_bits", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i32):
    %0 = "llvm.mlir.constant"() <{value = 2147483647 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 127 : i32}> : () -> i32
    %2 = "llvm.or"(%arg0, %0) : (i32, i32) -> i32
    %3 = "llvm.intr.bswap"(%2) : (i32) -> i32
    %4 = "llvm.and"(%3, %1) : (i32, i32) -> i32
    %5 = "llvm.icmp"(%4, %1) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.return"(%5) : (i1) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

