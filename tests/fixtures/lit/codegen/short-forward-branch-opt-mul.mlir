"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {}, {llvm.zeroext}, {}], function_type = !llvm.func<i32 (i32, i32, i1, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_example_mul_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i32, %arg5: i32, %arg6: i1, %arg7: i32):
    %2 = "llvm.mul"(%arg4, %arg7) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %3 = "llvm.select"(%arg6, %2, %arg5) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%3) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {}, {llvm.zeroext}, {}], function_type = !llvm.func<i64 (i64, i64, i1, i64)>, linkage = #llvm.linkage<external>, sym_name = "select_example_mul_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i64, %arg1: i64, %arg2: i1, %arg3: i64):
    %0 = "llvm.mul"(%arg0, %arg3) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %1 = "llvm.select"(%arg2, %0, %arg1) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%1) : (i64) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

