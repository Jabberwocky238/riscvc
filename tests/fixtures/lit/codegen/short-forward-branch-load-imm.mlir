"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {}, {llvm.zeroext}, {}], function_type = !llvm.func<i32 (i32, i32, i1, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_example_1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: i32, %arg9: i32, %arg10: i1, %arg11: i32):
    %4 = "llvm.mlir.constant"() <{value = 65536 : i32}> : () -> i32
    %5 = "llvm.select"(%arg10, %4, %arg9) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%5) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {}, {llvm.zeroext}, {}], function_type = !llvm.func<i32 (i32, i32, i1, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_example_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i32, %arg5: i32, %arg6: i1, %arg7: i32):
    %2 = "llvm.mlir.constant"() <{value = 65543 : i32}> : () -> i32
    %3 = "llvm.select"(%arg6, %2, %arg5) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%3) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {}, {llvm.zeroext}, {}], function_type = !llvm.func<i32 (i32, i32, i1, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_example_3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: i1, %arg3: i32):
    %0 = "llvm.mlir.constant"() <{value = 4198928 : i32}> : () -> i32
    %1 = "llvm.select"(%arg2, %0, %arg1) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%1) : (i32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

