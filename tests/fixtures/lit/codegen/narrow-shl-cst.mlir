"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "test1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: i32):
    %56 = "llvm.mlir.constant"() <{value = 10 : i32}> : () -> i32
    %57 = "llvm.mlir.constant"() <{value = 31744 : i32}> : () -> i32
    %58 = "llvm.shl"(%arg14, %56) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %59 = "llvm.or"(%58, %57) : (i32, i32) -> i32
    "llvm.return"(%59) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "test2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg13: i32):
    %52 = "llvm.mlir.constant"() <{value = 10 : i32}> : () -> i32
    %53 = "llvm.mlir.constant"() <{value = 31744 : i32}> : () -> i32
    %54 = "llvm.shl"(%arg13, %52) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %55 = "llvm.xor"(%54, %53) : (i32, i32) -> i32
    "llvm.return"(%55) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: i64):
    %48 = "llvm.mlir.constant"() <{value = 40 : i64}> : () -> i64
    %49 = "llvm.mlir.constant"() <{value = 264982302294016 : i64}> : () -> i64
    %50 = "llvm.shl"(%arg12, %48) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %51 = "llvm.and"(%50, %49) : (i64, i64) -> i64
    "llvm.return"(%51) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg11: i64):
    %44 = "llvm.mlir.constant"() <{value = 40 : i64}> : () -> i64
    %45 = "llvm.mlir.constant"() <{value = 264982302294016 : i64}> : () -> i64
    %46 = "llvm.shl"(%arg11, %44) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %47 = "llvm.or"(%46, %45) : (i64, i64) -> i64
    "llvm.return"(%47) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test5", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: i64):
    %40 = "llvm.mlir.constant"() <{value = 40 : i64}> : () -> i64
    %41 = "llvm.mlir.constant"() <{value = 34084860461056 : i64}> : () -> i64
    %42 = "llvm.shl"(%arg10, %40) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %43 = "llvm.or"(%42, %41) : (i64, i64) -> i64
    "llvm.return"(%43) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test6", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: i64):
    %36 = "llvm.mlir.constant"() <{value = 40 : i64}> : () -> i64
    %37 = "llvm.mlir.constant"() <{value = 264982302294016 : i64}> : () -> i64
    %38 = "llvm.shl"(%arg9, %36) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %39 = "llvm.xor"(%38, %37) : (i64, i64) -> i64
    "llvm.return"(%39) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test7", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: i64):
    %32 = "llvm.mlir.constant"() <{value = 40 : i64}> : () -> i64
    %33 = "llvm.mlir.constant"() <{value = 34084860461056 : i64}> : () -> i64
    %34 = "llvm.shl"(%arg8, %32) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %35 = "llvm.xor"(%34, %33) : (i64, i64) -> i64
    "llvm.return"(%35) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg7: i64):
    %28 = "llvm.mlir.constant"() <{value = 33 : i64}> : () -> i64
    %29 = "llvm.mlir.constant"() <{value = -2070174236672 : i64}> : () -> i64
    %30 = "llvm.shl"(%arg7, %28) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %31 = "llvm.and"(%30, %29) : (i64, i64) -> i64
    "llvm.return"(%31) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test9", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: i64):
    %24 = "llvm.mlir.constant"() <{value = 33 : i64}> : () -> i64
    %25 = "llvm.mlir.constant"() <{value = -2070174236672 : i64}> : () -> i64
    %26 = "llvm.shl"(%arg6, %24) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %27 = "llvm.or"(%26, %25) : (i64, i64) -> i64
    "llvm.return"(%27) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test10", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: i64):
    %20 = "llvm.mlir.constant"() <{value = 33 : i64}> : () -> i64
    %21 = "llvm.mlir.constant"() <{value = -2070174236672 : i64}> : () -> i64
    %22 = "llvm.shl"(%arg5, %20) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %23 = "llvm.xor"(%22, %21) : (i64, i64) -> i64
    "llvm.return"(%23) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "test11", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i32):
    %16 = "llvm.mlir.constant"() <{value = 17 : i32}> : () -> i32
    %17 = "llvm.mlir.constant"() <{value = -31588352 : i32}> : () -> i32
    %18 = "llvm.shl"(%arg4, %16) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %19 = "llvm.and"(%18, %17) : (i32, i32) -> i32
    "llvm.return"(%19) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "test12", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: i32):
    %12 = "llvm.mlir.constant"() <{value = 17 : i32}> : () -> i32
    %13 = "llvm.mlir.constant"() <{value = -31588352 : i32}> : () -> i32
    %14 = "llvm.shl"(%arg3, %12) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %15 = "llvm.or"(%14, %13) : (i32, i32) -> i32
    "llvm.return"(%15) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "test13", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i32):
    %8 = "llvm.mlir.constant"() <{value = 17 : i32}> : () -> i32
    %9 = "llvm.mlir.constant"() <{value = -31588352 : i32}> : () -> i32
    %10 = "llvm.shl"(%arg2, %8) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %11 = "llvm.xor"(%10, %9) : (i32, i32) -> i32
    "llvm.return"(%11) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "test14", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: i32):
    %4 = "llvm.mlir.constant"() <{value = 10 : i32}> : () -> i32
    %5 = "llvm.mlir.constant"() <{value = 31741 : i32}> : () -> i32
    %6 = "llvm.shl"(%arg1, %4) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %7 = "llvm.or"(%6, %5) : (i32, i32) -> i32
    "llvm.return"(%7) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "test15", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i32):
    %0 = "llvm.mlir.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 32253 : i32}> : () -> i32
    %2 = "llvm.shl"(%arg0, %0) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %3 = "llvm.xor"(%2, %1) : (i32, i32) -> i32
    "llvm.return"(%3) : (i32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

