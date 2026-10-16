"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "muli32_0x555", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg23: i32):
    %46 = "llvm.mlir.constant"() <{value = 1365 : i32}> : () -> i32
    %47 = "llvm.mul"(%arg23, %46) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%47) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "muli64_0x555", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg22: i64):
    %44 = "llvm.mlir.constant"() <{value = 1365 : i64}> : () -> i64
    %45 = "llvm.mul"(%arg22, %44) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%45) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "muli32_0x33333333", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg21: i32):
    %42 = "llvm.mlir.constant"() <{value = 858993459 : i32}> : () -> i32
    %43 = "llvm.mul"(%arg21, %42) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%43) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "muli64_0x33333333", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg20: i64):
    %40 = "llvm.mlir.constant"() <{value = 858993459 : i64}> : () -> i64
    %41 = "llvm.mul"(%arg20, %40) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%41) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "muli32_0xaaaaaaaa", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg19: i32):
    %38 = "llvm.mlir.constant"() <{value = -1431655766 : i32}> : () -> i32
    %39 = "llvm.mul"(%arg19, %38) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%39) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "muli64_0xaaaaaaaa", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg18: i64):
    %36 = "llvm.mlir.constant"() <{value = 2863311530 : i64}> : () -> i64
    %37 = "llvm.mul"(%arg18, %36) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%37) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "muli32_0x0fffffff", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg17: i32):
    %34 = "llvm.mlir.constant"() <{value = 268435455 : i32}> : () -> i32
    %35 = "llvm.mul"(%arg17, %34) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%35) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "muli64_0x0fffffff", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg16: i64):
    %32 = "llvm.mlir.constant"() <{value = 268435455 : i64}> : () -> i64
    %33 = "llvm.mul"(%arg16, %32) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%33) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "muli32_0xf0f0f0f0", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg15: i32):
    %30 = "llvm.mlir.constant"() <{value = -252645136 : i32}> : () -> i32
    %31 = "llvm.mul"(%arg15, %30) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%31) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "muli64_0xf0f0f0f0", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: i64):
    %28 = "llvm.mlir.constant"() <{value = 4042322160 : i64}> : () -> i64
    %29 = "llvm.mul"(%arg14, %28) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%29) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "muli32_0xf7f7f7f7", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg13: i32):
    %26 = "llvm.mlir.constant"() <{value = -134744073 : i32}> : () -> i32
    %27 = "llvm.mul"(%arg13, %26) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%27) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "muli64_0xf7f7f7f7", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: i64):
    %24 = "llvm.mlir.constant"() <{value = 4160223223 : i64}> : () -> i64
    %25 = "llvm.mul"(%arg12, %24) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%25) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "muli32_0x1000", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg11: i32):
    %22 = "llvm.mlir.constant"() <{value = 4096 : i32}> : () -> i32
    %23 = "llvm.mul"(%arg11, %22) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%23) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "muli64_0x1000", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: i64):
    %20 = "llvm.mlir.constant"() <{value = 4096 : i64}> : () -> i64
    %21 = "llvm.mul"(%arg10, %20) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%21) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "muli32_0x101", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: i32):
    %18 = "llvm.mlir.constant"() <{value = 257 : i32}> : () -> i32
    %19 = "llvm.mul"(%arg9, %18) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%19) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "muli64_0x101", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: i64):
    %16 = "llvm.mlir.constant"() <{value = 257 : i64}> : () -> i64
    %17 = "llvm.mul"(%arg8, %16) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%17) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "muli32_0xfff", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg7: i32):
    %14 = "llvm.mlir.constant"() <{value = 4095 : i32}> : () -> i32
    %15 = "llvm.mul"(%arg7, %14) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%15) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "muli64_0xfff", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: i64):
    %12 = "llvm.mlir.constant"() <{value = 4095 : i64}> : () -> i64
    %13 = "llvm.mul"(%arg6, %12) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%13) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "muli32_0x7fffffff", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: i32):
    %10 = "llvm.mlir.constant"() <{value = 2147483647 : i32}> : () -> i32
    %11 = "llvm.mul"(%arg5, %10) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%11) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "muli64_0x7fffffff", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i64):
    %8 = "llvm.mlir.constant"() <{value = 2147483647 : i64}> : () -> i64
    %9 = "llvm.mul"(%arg4, %8) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%9) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "muli32_0xdeadbeef", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: i32):
    %6 = "llvm.mlir.constant"() <{value = -559038737 : i32}> : () -> i32
    %7 = "llvm.mul"(%arg3, %6) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%7) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "muli64_0xdeadbeef", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i64):
    %4 = "llvm.mlir.constant"() <{value = 3735928559 : i64}> : () -> i64
    %5 = "llvm.mul"(%arg2, %4) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%5) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "muli32_0x12345678", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: i32):
    %2 = "llvm.mlir.constant"() <{value = 305419896 : i32}> : () -> i32
    %3 = "llvm.mul"(%arg1, %2) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%3) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "muli64_0x12345678", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i64):
    %0 = "llvm.mlir.constant"() <{value = 305419896 : i64}> : () -> i64
    %1 = "llvm.mul"(%arg0, %0) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%1) : (i64) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

