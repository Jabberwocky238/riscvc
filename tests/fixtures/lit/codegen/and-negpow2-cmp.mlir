"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64)>, linkage = #llvm.linkage<external>, sym_name = "test1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: i64):
    %60 = "llvm.mlir.constant"() <{value = -1073741824 : i64}> : () -> i64
    %61 = "llvm.mlir.constant"() <{value = -2147483648 : i64}> : () -> i64
    %62 = "llvm.and"(%arg12, %60) : (i64, i64) -> i64
    %63 = "llvm.icmp"(%62, %61) <{predicate = 0 : i64}> : (i64, i64) -> i1
    "llvm.return"(%63) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i1 (i32)>, linkage = #llvm.linkage<external>, sym_name = "test2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg11: i32):
    %56 = "llvm.mlir.constant"() <{value = -1073741824 : i32}> : () -> i32
    %57 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %58 = "llvm.and"(%arg11, %56) : (i32, i32) -> i32
    %59 = "llvm.icmp"(%58, %57) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.return"(%59) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i1 (i32)>, linkage = #llvm.linkage<external>, sym_name = "test3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: i32):
    %52 = "llvm.mlir.constant"() <{value = -536870912 : i32}> : () -> i32
    %53 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %54 = "llvm.and"(%arg10, %52) : (i32, i32) -> i32
    %55 = "llvm.icmp"(%54, %53) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.return"(%55) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64)>, linkage = #llvm.linkage<external>, sym_name = "test4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: i64):
    %48 = "llvm.mlir.constant"() <{value = -70368744177664 : i64}> : () -> i64
    %49 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %50 = "llvm.and"(%arg9, %48) : (i64, i64) -> i64
    %51 = "llvm.icmp"(%50, %49) <{predicate = 0 : i64}> : (i64, i64) -> i1
    "llvm.return"(%51) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64)>, linkage = #llvm.linkage<external>, sym_name = "test5", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: i64):
    %44 = "llvm.mlir.constant"() <{value = 3758096384 : i64}> : () -> i64
    %45 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %46 = "llvm.and"(%arg8, %44) : (i64, i64) -> i64
    %47 = "llvm.icmp"(%46, %45) <{predicate = 0 : i64}> : (i64, i64) -> i1
    "llvm.return"(%47) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64)>, linkage = #llvm.linkage<external>, sym_name = "test6", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg7: i64):
    %40 = "llvm.mlir.constant"() <{value = 3758096384 : i64}> : () -> i64
    %41 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %42 = "llvm.and"(%arg7, %40) : (i64, i64) -> i64
    %43 = "llvm.icmp"(%42, %41) <{predicate = 1 : i64}> : (i64, i64) -> i1
    "llvm.return"(%43) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64)>, linkage = #llvm.linkage<external>, sym_name = "test7", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: i64):
    %36 = "llvm.mlir.constant"() <{value = 3758096384 : i64}> : () -> i64
    %37 = "llvm.mlir.constant"() <{value = 3221225472 : i64}> : () -> i64
    %38 = "llvm.and"(%arg6, %36) : (i64, i64) -> i64
    %39 = "llvm.icmp"(%38, %37) <{predicate = 0 : i64}> : (i64, i64) -> i1
    "llvm.return"(%39) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64)>, linkage = #llvm.linkage<external>, sym_name = "test8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: i64):
    %32 = "llvm.mlir.constant"() <{value = 4293918720 : i64}> : () -> i64
    %33 = "llvm.mlir.constant"() <{value = 2147483648 : i64}> : () -> i64
    %34 = "llvm.and"(%arg5, %32) : (i64, i64) -> i64
    %35 = "llvm.icmp"(%34, %33) <{predicate = 1 : i64}> : (i64, i64) -> i1
    "llvm.return"(%35) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64)>, linkage = #llvm.linkage<external>, sym_name = "test9", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i64):
    %28 = "llvm.mlir.constant"() <{value = 4294901760 : i64}> : () -> i64
    %29 = "llvm.mlir.constant"() <{value = 134217728 : i64}> : () -> i64
    %30 = "llvm.and"(%arg4, %28) : (i64, i64) -> i64
    %31 = "llvm.icmp"(%30, %29) <{predicate = 0 : i64}> : (i64, i64) -> i1
    "llvm.return"(%31) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "test10", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: i64):
    %21 = "llvm.mlir.constant"() <{value = 4294967295 : i64}> : () -> i64
    %22 = "llvm.mlir.constant"() <{value = 4294967280 : i64}> : () -> i64
    %23 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %24 = "llvm.add"(%arg3, %21) <{overflowFlags = 3 : i32}> : (i64, i64) -> i64
    %25 = "llvm.and"(%24, %22) : (i64, i64) -> i64
    %26 = "llvm.icmp"(%25, %23) <{predicate = 1 : i64}> : (i64, i64) -> i1
    %27 = "llvm.zext"(%26) : (i1) -> i64
    "llvm.return"(%27) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "test11", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i64):
    %14 = "llvm.mlir.constant"() <{value = 4294967295 : i64}> : () -> i64
    %15 = "llvm.mlir.constant"() <{value = 4294967280 : i64}> : () -> i64
    %16 = "llvm.mlir.constant"() <{value = 4294941360 : i64}> : () -> i64
    %17 = "llvm.add"(%arg2, %14) <{overflowFlags = 3 : i32}> : (i64, i64) -> i64
    %18 = "llvm.and"(%17, %15) : (i64, i64) -> i64
    %19 = "llvm.icmp"(%18, %16) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %20 = "llvm.zext"(%19) : (i1) -> i64
    "llvm.return"(%20) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "test12", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: i64):
    %7 = "llvm.mlir.constant"() <{value = 4294967280 : i64}> : () -> i64
    %8 = "llvm.mlir.constant"() <{value = 4294967295 : i64}> : () -> i64
    %9 = "llvm.mlir.constant"() <{value = 4294967283 : i64}> : () -> i64
    %10 = "llvm.add"(%arg1, %7) <{overflowFlags = 3 : i32}> : (i64, i64) -> i64
    %11 = "llvm.and"(%10, %8) : (i64, i64) -> i64
    %12 = "llvm.icmp"(%11, %9) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %13 = "llvm.zext"(%12) : (i1) -> i64
    "llvm.return"(%13) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "test13", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i64):
    %0 = "llvm.mlir.constant"() <{value = 2147483663 : i64}> : () -> i64
    %1 = "llvm.mlir.constant"() <{value = 2147483648 : i64}> : () -> i64
    %2 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %3 = "llvm.add"(%arg0, %0) <{overflowFlags = 3 : i32}> : (i64, i64) -> i64
    %4 = "llvm.and"(%3, %1) : (i64, i64) -> i64
    %5 = "llvm.icmp"(%4, %2) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %6 = "llvm.zext"(%5) : (i1) -> i64
    "llvm.return"(%6) : (i64) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

