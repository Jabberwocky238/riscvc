"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "test1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg33: i32, %arg34: i32, %arg35: i32):
    %61 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %62 = "llvm.icmp"(%arg35, %61) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %63 = "llvm.xor"(%arg33, %arg34) : (i32, i32) -> i32
    %64 = "llvm.select"(%62, %63, %arg33) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%64) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "test2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg30: i32, %arg31: i32, %arg32: i32):
    %57 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %58 = "llvm.icmp"(%arg32, %57) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %59 = "llvm.xor"(%arg30, %arg31) : (i32, i32) -> i32
    %60 = "llvm.select"(%58, %arg30, %59) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%60) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {llvm.signext}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "test3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg25: i32, %arg26: i32, %arg27: i32, %arg28: i32, %arg29: i32):
    %50 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %51 = "llvm.icmp"(%arg29, %50) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %52 = "llvm.xor"(%arg25, %arg26) : (i32, i32) -> i32
    %53 = "llvm.select"(%51, %arg25, %52) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %54 = "llvm.xor"(%arg27, %arg28) : (i32, i32) -> i32
    %55 = "llvm.select"(%51, %arg27, %54) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %56 = "llvm.add"(%53, %55) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%56) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "test4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg22: i32, %arg23: i32, %arg24: i32):
    %46 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %47 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %48 = "llvm.icmp"(%arg24, %46) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %49 = "llvm.select"(%48, %47, %46) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%49) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16, i8)>, linkage = #llvm.linkage<external>, sym_name = "select_xor_1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg20: i16, %arg21: i8):
    %39 = "llvm.mlir.constant"() <{value = 1 : i8}> : () -> i8
    %40 = "llvm.mlir.constant"() <{value = 0 : i8}> : () -> i8
    %41 = "llvm.mlir.constant"() <{value = 43 : i16}> : () -> i16
    %42 = "llvm.and"(%arg21, %39) : (i8, i8) -> i8
    %43 = "llvm.icmp"(%42, %40) <{predicate = 0 : i64}> : (i8, i8) -> i1
    %44 = "llvm.xor"(%arg20, %41) : (i16, i16) -> i16
    %45 = "llvm.select"(%43, %arg20, %44) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i16, i16) -> i16
    "llvm.return"(%45) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16, i8)>, linkage = #llvm.linkage<external>, sym_name = "select_xor_1b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg18: i16, %arg19: i8):
    %33 = "llvm.mlir.constant"() <{value = 1 : i8}> : () -> i8
    %34 = "llvm.mlir.constant"() <{value = 43 : i16}> : () -> i16
    %35 = "llvm.and"(%arg19, %33) : (i8, i8) -> i8
    %36 = "llvm.icmp"(%35, %33) <{predicate = 1 : i64}> : (i8, i8) -> i1
    %37 = "llvm.xor"(%arg18, %34) : (i16, i16) -> i16
    %38 = "llvm.select"(%36, %arg18, %37) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i16, i16) -> i16
    "llvm.return"(%38) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i8)>, linkage = #llvm.linkage<external>, sym_name = "select_xor_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg15: i32, %arg16: i32, %arg17: i8):
    %27 = "llvm.mlir.constant"() <{value = 1 : i8}> : () -> i8
    %28 = "llvm.mlir.constant"() <{value = 0 : i8}> : () -> i8
    %29 = "llvm.and"(%arg17, %27) : (i8, i8) -> i8
    %30 = "llvm.icmp"(%29, %28) <{predicate = 0 : i64}> : (i8, i8) -> i1
    %31 = "llvm.xor"(%arg16, %arg15) : (i32, i32) -> i32
    %32 = "llvm.select"(%30, %arg15, %31) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%32) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i8)>, linkage = #llvm.linkage<external>, sym_name = "select_xor_2b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: i32, %arg13: i32, %arg14: i8):
    %22 = "llvm.mlir.constant"() <{value = 1 : i8}> : () -> i8
    %23 = "llvm.and"(%arg14, %22) : (i8, i8) -> i8
    %24 = "llvm.icmp"(%23, %22) <{predicate = 1 : i64}> : (i8, i8) -> i1
    %25 = "llvm.xor"(%arg13, %arg12) : (i32, i32) -> i32
    %26 = "llvm.select"(%24, %arg12, %25) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%26) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i8)>, linkage = #llvm.linkage<external>, sym_name = "select_or", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: i32, %arg10: i32, %arg11: i8):
    %16 = "llvm.mlir.constant"() <{value = 1 : i8}> : () -> i8
    %17 = "llvm.mlir.constant"() <{value = 0 : i8}> : () -> i8
    %18 = "llvm.and"(%arg11, %16) : (i8, i8) -> i8
    %19 = "llvm.icmp"(%18, %17) <{predicate = 0 : i64}> : (i8, i8) -> i1
    %20 = "llvm.or"(%arg10, %arg9) : (i32, i32) -> i32
    %21 = "llvm.select"(%19, %arg9, %20) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%21) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i8)>, linkage = #llvm.linkage<external>, sym_name = "select_or_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: i32, %arg7: i32, %arg8: i8):
    %11 = "llvm.mlir.constant"() <{value = 1 : i8}> : () -> i8
    %12 = "llvm.and"(%arg8, %11) : (i8, i8) -> i8
    %13 = "llvm.icmp"(%12, %11) <{predicate = 1 : i64}> : (i8, i8) -> i1
    %14 = "llvm.or"(%arg7, %arg6) : (i32, i32) -> i32
    %15 = "llvm.select"(%13, %arg6, %14) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%15) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_or_1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: i32, %arg4: i32, %arg5: i32):
    %5 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %6 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %7 = "llvm.and"(%arg5, %5) : (i32, i32) -> i32
    %8 = "llvm.icmp"(%7, %6) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %9 = "llvm.or"(%arg4, %arg3) : (i32, i32) -> i32
    %10 = "llvm.select"(%8, %arg3, %9) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%10) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_or_1b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: i32):
    %0 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "llvm.and"(%arg2, %0) : (i32, i32) -> i32
    %2 = "llvm.icmp"(%1, %0) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %3 = "llvm.or"(%arg1, %arg0) : (i32, i32) -> i32
    %4 = "llvm.select"(%2, %arg0, %3) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%4) : (i32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

