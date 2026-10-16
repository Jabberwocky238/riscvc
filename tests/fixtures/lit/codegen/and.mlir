"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "and32_0x7ff", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg13: i32):
    %26 = "llvm.mlir.constant"() <{value = 2047 : i32}> : () -> i32
    %27 = "llvm.and"(%arg13, %26) : (i32, i32) -> i32
    "llvm.return"(%27) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "and32_0xfff", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: i32):
    %24 = "llvm.mlir.constant"() <{value = 4095 : i32}> : () -> i32
    %25 = "llvm.and"(%arg12, %24) : (i32, i32) -> i32
    "llvm.return"(%25) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "and64_0x7ff", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg11: i64):
    %22 = "llvm.mlir.constant"() <{value = 2047 : i64}> : () -> i64
    %23 = "llvm.and"(%arg11, %22) : (i64, i64) -> i64
    "llvm.return"(%23) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "and64_0xfff", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: i64):
    %20 = "llvm.mlir.constant"() <{value = 4095 : i64}> : () -> i64
    %21 = "llvm.and"(%arg10, %20) : (i64, i64) -> i64
    "llvm.return"(%21) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "and32_0x7ffff000", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: i32):
    %18 = "llvm.mlir.constant"() <{value = 2147479552 : i32}> : () -> i32
    %19 = "llvm.and"(%arg9, %18) : (i32, i32) -> i32
    "llvm.return"(%19) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "and32_0xfffff000", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: i32):
    %16 = "llvm.mlir.constant"() <{value = -4096 : i32}> : () -> i32
    %17 = "llvm.and"(%arg8, %16) : (i32, i32) -> i32
    "llvm.return"(%17) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "and32_0xfffffa00", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg7: i32):
    %14 = "llvm.mlir.constant"() <{value = -1536 : i32}> : () -> i32
    %15 = "llvm.and"(%arg7, %14) : (i32, i32) -> i32
    "llvm.return"(%15) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "and64_0x7ffffffffffff000", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: i64):
    %12 = "llvm.mlir.constant"() <{value = 9223372036854771712 : i64}> : () -> i64
    %13 = "llvm.and"(%arg6, %12) : (i64, i64) -> i64
    "llvm.return"(%13) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "and64_0xfffffffffffff000", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: i64):
    %10 = "llvm.mlir.constant"() <{value = -4096 : i64}> : () -> i64
    %11 = "llvm.and"(%arg5, %10) : (i64, i64) -> i64
    "llvm.return"(%11) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "and64_0xfffffffffffffa00", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i64):
    %8 = "llvm.mlir.constant"() <{value = -1536 : i64}> : () -> i64
    %9 = "llvm.and"(%arg4, %8) : (i64, i64) -> i64
    "llvm.return"(%9) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "and64_0xffffffff00000000", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: i64):
    %6 = "llvm.mlir.constant"() <{value = -4294967296 : i64}> : () -> i64
    %7 = "llvm.and"(%arg3, %6) : (i64, i64) -> i64
    "llvm.return"(%7) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "and64_0x7fffffff00000000", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i64):
    %4 = "llvm.mlir.constant"() <{value = 9223372032559808512 : i64}> : () -> i64
    %5 = "llvm.and"(%arg2, %4) : (i64, i64) -> i64
    "llvm.return"(%5) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "and64_0xffffffff80000000", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: i64):
    %2 = "llvm.mlir.constant"() <{value = -2147483648 : i64}> : () -> i64
    %3 = "llvm.and"(%arg1, %2) : (i64, i64) -> i64
    "llvm.return"(%3) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "and64_0x00000000fffffff8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i64):
    %0 = "llvm.mlir.constant"() <{value = 4294967288 : i64}> : () -> i64
    %1 = "llvm.and"(%arg0, %0) : (i64, i64) -> i64
    "llvm.return"(%1) : (i64) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

