"builtin.module"() ({
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<min, "cf-protection-branch", 1 : i32>, #llvm.mlir.module_flag<error, "cf-branch-label-scheme", "unlabeled">]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16)>, linkage = #llvm.linkage<external>, passthrough = ["minsize"], sym_name = "test1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i16):
    %16 = "llvm.mlir.constant"() <{value = 5 : i16}> : () -> i16
    %17 = "llvm.mlir.constant"() <{value = 4 : i16}> : () -> i16
    %18 = "llvm.add"(%16, %arg4) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    %19 = "llvm.mul"(%17, %18) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    "llvm.return"(%19) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16)>, linkage = #llvm.linkage<external>, passthrough = ["minsize"], sym_name = "test2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: i16):
    %12 = "llvm.mlir.constant"() <{value = 5 : i16}> : () -> i16
    %13 = "llvm.mlir.constant"() <{value = 4 : i16}> : () -> i16
    %14 = "llvm.add"(%12, %arg3) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    %15 = "llvm.mul"(%13, %14) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    "llvm.return"(%15) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16)>, linkage = #llvm.linkage<external>, passthrough = ["minsize"], sym_name = "test3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i16):
    %8 = "llvm.mlir.constant"() <{value = 5 : i16}> : () -> i16
    %9 = "llvm.mlir.constant"() <{value = 4 : i16}> : () -> i16
    %10 = "llvm.add"(%8, %arg2) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    %11 = "llvm.mul"(%9, %10) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    "llvm.return"(%11) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16)>, linkage = #llvm.linkage<external>, passthrough = ["minsize"], sym_name = "test4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: i16):
    %4 = "llvm.mlir.constant"() <{value = 5 : i16}> : () -> i16
    %5 = "llvm.mlir.constant"() <{value = 4 : i16}> : () -> i16
    %6 = "llvm.add"(%4, %arg1) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    %7 = "llvm.mul"(%5, %6) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    "llvm.return"(%7) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16)>, linkage = #llvm.linkage<external>, passthrough = ["minsize"], sym_name = "main", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i16):
    %0 = "llvm.mlir.constant"() <{value = 5 : i16}> : () -> i16
    %1 = "llvm.mlir.constant"() <{value = 4 : i16}> : () -> i16
    %2 = "llvm.add"(%0, %arg0) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    %3 = "llvm.mul"(%1, %2) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    "llvm.return"(%3) : (i16) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

