"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i32)>, linkage = #llvm.linkage<external>, sym_name = "pr84653", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i32):
    %16 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %17 = "llvm.mlir.constant"() <{value = 2147483647 : i32}> : () -> i32
    %18 = "llvm.mlir.constant"() <{value = false}> : () -> i1
    %19 = "llvm.icmp"(%arg2, %16) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %20 = "llvm.sub"(%17, %arg2) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %21 = "llvm.icmp"(%arg2, %20) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %22 = "llvm.select"(%19, %21, %18) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i1, i1) -> i1
    "llvm.return"(%22) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64)>, linkage = #llvm.linkage<external>, sym_name = "pr85190", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: i64):
    %7 = "llvm.mlir.constant"() <{value = 7 : i64}> : () -> i64
    %8 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %9 = "llvm.mlir.constant"() <{value = -9223372036854775808 : i64}> : () -> i64
    %10 = "llvm.mlir.constant"() <{value = false}> : () -> i1
    %11 = "llvm.or"(%arg1, %7) : (i64, i64) -> i64
    %12 = "llvm.icmp"(%arg1, %8) <{predicate = 2 : i64}> : (i64, i64) -> i1
    %13 = "llvm.sub"(%9, %11) <{overflowFlags = 1 : i32}> : (i64, i64) -> i64
    %14 = "llvm.icmp"(%13, %arg1) <{predicate = 4 : i64}> : (i64, i64) -> i1
    %15 = "llvm.select"(%12, %14, %10) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i1, i1) -> i1
    "llvm.return"(%15) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i32)>, linkage = #llvm.linkage<external>, sym_name = "select_to_or", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i32):
    %0 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 2147483647 : i32}> : () -> i32
    %2 = "llvm.mlir.constant"() <{value = true}> : () -> i1
    %3 = "llvm.icmp"(%arg0, %0) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %4 = "llvm.sub"(%1, %arg0) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %5 = "llvm.icmp"(%arg0, %4) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %6 = "llvm.select"(%3, %2, %5) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i1, i1) -> i1
    "llvm.return"(%6) : (i1) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

