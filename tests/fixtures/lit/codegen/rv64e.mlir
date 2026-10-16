"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i64, i64, i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "exhausted", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i64, %arg1: i64, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64):
    %0 = "llvm.add"(%arg0, %arg1) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %1 = "llvm.add"(%arg2, %0) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %2 = "llvm.add"(%arg3, %1) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %3 = "llvm.add"(%arg4, %2) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %4 = "llvm.add"(%arg5, %3) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %5 = "llvm.add"(%arg6, %4) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%5) : (i64) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

