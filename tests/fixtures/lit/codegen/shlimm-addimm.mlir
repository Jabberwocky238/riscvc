"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "shl5_add1184_a", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg17: i32):
    %68 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %69 = "llvm.mlir.constant"() <{value = 1184 : i32}> : () -> i32
    %70 = "llvm.shl"(%arg17, %68) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %71 = "llvm.add"(%70, %69) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%71) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "shl5_add1184_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg16: i32):
    %64 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %65 = "llvm.mlir.constant"() <{value = 1184 : i32}> : () -> i32
    %66 = "llvm.shl"(%arg16, %64) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %67 = "llvm.add"(%66, %65) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%67) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "shl5_add1184_c", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg15: i64):
    %60 = "llvm.mlir.constant"() <{value = 5 : i64}> : () -> i64
    %61 = "llvm.mlir.constant"() <{value = 1184 : i64}> : () -> i64
    %62 = "llvm.shl"(%arg15, %60) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %63 = "llvm.add"(%62, %61) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%63) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "shl5_add101024_a", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: i32):
    %56 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %57 = "llvm.mlir.constant"() <{value = 101024 : i32}> : () -> i32
    %58 = "llvm.shl"(%arg14, %56) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %59 = "llvm.add"(%58, %57) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%59) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "shl5_add101024_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg13: i32):
    %52 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %53 = "llvm.mlir.constant"() <{value = 101024 : i32}> : () -> i32
    %54 = "llvm.shl"(%arg13, %52) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %55 = "llvm.add"(%54, %53) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%55) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "shl5_add101024_c", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: i64):
    %48 = "llvm.mlir.constant"() <{value = 5 : i64}> : () -> i64
    %49 = "llvm.mlir.constant"() <{value = 101024 : i64}> : () -> i64
    %50 = "llvm.shl"(%arg12, %48) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %51 = "llvm.add"(%50, %49) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%51) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "shl5_add47968_a", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg11: i32):
    %44 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %45 = "llvm.mlir.constant"() <{value = 47968 : i32}> : () -> i32
    %46 = "llvm.shl"(%arg11, %44) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %47 = "llvm.add"(%46, %45) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%47) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "shl5_add47968_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: i32):
    %40 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %41 = "llvm.mlir.constant"() <{value = 47968 : i32}> : () -> i32
    %42 = "llvm.shl"(%arg10, %40) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %43 = "llvm.add"(%42, %41) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%43) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "shl5_add47968_c", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: i64):
    %36 = "llvm.mlir.constant"() <{value = 5 : i64}> : () -> i64
    %37 = "llvm.mlir.constant"() <{value = 47968 : i64}> : () -> i64
    %38 = "llvm.shl"(%arg9, %36) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %39 = "llvm.add"(%38, %37) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%39) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "shl5_add47969_a", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: i32):
    %32 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %33 = "llvm.mlir.constant"() <{value = 47969 : i32}> : () -> i32
    %34 = "llvm.shl"(%arg8, %32) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %35 = "llvm.add"(%34, %33) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%35) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "shl5_add47969_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg7: i32):
    %28 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %29 = "llvm.mlir.constant"() <{value = 47969 : i32}> : () -> i32
    %30 = "llvm.shl"(%arg7, %28) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %31 = "llvm.add"(%30, %29) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%31) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "shl5_add47969_c", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: i64):
    %24 = "llvm.mlir.constant"() <{value = 5 : i64}> : () -> i64
    %25 = "llvm.mlir.constant"() <{value = 47969 : i64}> : () -> i64
    %26 = "llvm.shl"(%arg6, %24) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %27 = "llvm.add"(%26, %25) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%27) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "shl5_sub47968_a", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: i32):
    %20 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %21 = "llvm.mlir.constant"() <{value = -47968 : i32}> : () -> i32
    %22 = "llvm.shl"(%arg5, %20) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %23 = "llvm.add"(%22, %21) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%23) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "shl5_sub47968_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i32):
    %16 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %17 = "llvm.mlir.constant"() <{value = -47968 : i32}> : () -> i32
    %18 = "llvm.shl"(%arg4, %16) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %19 = "llvm.add"(%18, %17) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%19) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "shl5_sub47968_c", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: i64):
    %12 = "llvm.mlir.constant"() <{value = 5 : i64}> : () -> i64
    %13 = "llvm.mlir.constant"() <{value = -47968 : i64}> : () -> i64
    %14 = "llvm.shl"(%arg3, %12) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %15 = "llvm.add"(%14, %13) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%15) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "shl5_sub47969_a", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i32):
    %8 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %9 = "llvm.mlir.constant"() <{value = -47969 : i32}> : () -> i32
    %10 = "llvm.shl"(%arg2, %8) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %11 = "llvm.add"(%10, %9) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%11) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "shl5_sub47969_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: i32):
    %4 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %5 = "llvm.mlir.constant"() <{value = -47969 : i32}> : () -> i32
    %6 = "llvm.shl"(%arg1, %4) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %7 = "llvm.add"(%6, %5) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%7) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "shl5_sub47969_c", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i64):
    %0 = "llvm.mlir.constant"() <{value = 5 : i64}> : () -> i64
    %1 = "llvm.mlir.constant"() <{value = -47969 : i64}> : () -> i64
    %2 = "llvm.shl"(%arg0, %0) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %3 = "llvm.add"(%2, %1) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%3) : (i64) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

