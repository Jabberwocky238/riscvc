"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_eq_s1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg96: i32, %arg97: i32, %arg98: i32, %arg99: i32):
    %85 = "llvm.mlir.constant"() <{value = 12 : i32}> : () -> i32
    %86 = "llvm.trunc"(%arg96) <{overflowFlags = 0 : i32}> : (i32) -> i1
    %87 = "llvm.select"(%86, %arg98, %85) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%87) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_eq_s2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg92: i32, %arg93: i32, %arg94: i32, %arg95: i32):
    %82 = "llvm.mlir.constant"() <{value = 12 : i32}> : () -> i32
    %83 = "llvm.trunc"(%arg92) <{overflowFlags = 0 : i32}> : (i32) -> i1
    %84 = "llvm.select"(%83, %82, %arg94) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%84) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_eq_s3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg88: i32, %arg89: i32, %arg90: i32, %arg91: i32):
    %78 = "llvm.mlir.constant"() <{value = 12 : i32}> : () -> i32
    %79 = "llvm.mlir.constant"() <{value = 25 : i32}> : () -> i32
    %80 = "llvm.trunc"(%arg88) <{overflowFlags = 0 : i32}> : (i32) -> i1
    %81 = "llvm.select"(%80, %78, %79) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%81) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_eq", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg84: i32, %arg85: i32, %arg86: i32, %arg87: i32):
    %75 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %76 = "llvm.icmp"(%arg84, %75) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %77 = "llvm.select"(%76, %arg86, %arg87) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%77) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_eq_c", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg80: i32, %arg81: i32, %arg82: i32, %arg83: i32):
    %72 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %73 = "llvm.icmp"(%72, %arg80) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %74 = "llvm.select"(%73, %arg82, %arg83) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%74) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_ne", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg76: i32, %arg77: i32, %arg78: i32, %arg79: i32):
    %69 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %70 = "llvm.icmp"(%arg76, %69) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %71 = "llvm.select"(%70, %arg78, %arg79) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%71) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_ne_c", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg72: i32, %arg73: i32, %arg74: i32, %arg75: i32):
    %66 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %67 = "llvm.icmp"(%66, %arg72) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %68 = "llvm.select"(%67, %arg74, %arg75) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%68) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_eqi", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg68: i32, %arg69: i32, %arg70: i32, %arg71: i32):
    %63 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %64 = "llvm.icmp"(%arg68, %arg69) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %65 = "llvm.select"(%64, %arg70, %63) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%65) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_eqi_c", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg64: i32, %arg65: i32, %arg66: i32, %arg67: i32):
    %60 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %61 = "llvm.icmp"(%arg64, %arg65) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %62 = "llvm.select"(%61, %60, %arg66) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%62) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_nei", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg60: i32, %arg61: i32, %arg62: i32, %arg63: i32):
    %57 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %58 = "llvm.icmp"(%arg60, %arg61) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %59 = "llvm.select"(%58, %arg62, %57) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%59) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_nei_c", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg56: i32, %arg57: i32, %arg58: i32, %arg59: i32):
    %54 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %55 = "llvm.icmp"(%arg56, %arg57) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %56 = "llvm.select"(%55, %54, %arg58) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%56) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_ieqi", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg52: i32, %arg53: i32, %arg54: i32, %arg55: i32):
    %50 = "llvm.mlir.constant"() <{value = 12 : i32}> : () -> i32
    %51 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %52 = "llvm.icmp"(%arg52, %50) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %53 = "llvm.select"(%52, %arg54, %51) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%53) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_ieqi_c1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg48: i32, %arg49: i32, %arg50: i32, %arg51: i32):
    %46 = "llvm.mlir.constant"() <{value = 12 : i32}> : () -> i32
    %47 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %48 = "llvm.icmp"(%46, %arg48) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %49 = "llvm.select"(%48, %arg50, %47) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%49) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_ieqi_c2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg44: i32, %arg45: i32, %arg46: i32, %arg47: i32):
    %42 = "llvm.mlir.constant"() <{value = 12 : i32}> : () -> i32
    %43 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %44 = "llvm.icmp"(%arg44, %42) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %45 = "llvm.select"(%44, %43, %arg46) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%45) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_ieqi_c3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg40: i32, %arg41: i32, %arg42: i32, %arg43: i32):
    %38 = "llvm.mlir.constant"() <{value = 12 : i32}> : () -> i32
    %39 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %40 = "llvm.icmp"(%38, %arg40) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %41 = "llvm.select"(%40, %39, %arg42) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%41) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_inei", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg36: i32, %arg37: i32, %arg38: i32, %arg39: i32):
    %34 = "llvm.mlir.constant"() <{value = 12 : i32}> : () -> i32
    %35 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %36 = "llvm.icmp"(%arg36, %34) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %37 = "llvm.select"(%36, %arg38, %35) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%37) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_inei_c1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg32: i32, %arg33: i32, %arg34: i32, %arg35: i32):
    %30 = "llvm.mlir.constant"() <{value = 12 : i32}> : () -> i32
    %31 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %32 = "llvm.icmp"(%30, %arg32) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %33 = "llvm.select"(%32, %arg34, %31) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%33) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_inei_c2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg28: i32, %arg29: i32, %arg30: i32, %arg31: i32):
    %26 = "llvm.mlir.constant"() <{value = 12 : i32}> : () -> i32
    %27 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %28 = "llvm.icmp"(%arg28, %26) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %29 = "llvm.select"(%28, %27, %arg30) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%29) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_inei_c3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg24: i32, %arg25: i32, %arg26: i32, %arg27: i32):
    %22 = "llvm.mlir.constant"() <{value = 12 : i32}> : () -> i32
    %23 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %24 = "llvm.icmp"(%22, %arg24) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %25 = "llvm.select"(%24, %23, %arg26) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%25) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_eqii", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg20: i32, %arg21: i32, %arg22: i32, %arg23: i32):
    %18 = "llvm.mlir.constant"() <{value = 13 : i32}> : () -> i32
    %19 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %20 = "llvm.icmp"(%arg20, %arg21) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %21 = "llvm.select"(%20, %18, %19) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%21) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_neii", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg16: i32, %arg17: i32, %arg18: i32, %arg19: i32):
    %14 = "llvm.mlir.constant"() <{value = 13 : i32}> : () -> i32
    %15 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %16 = "llvm.icmp"(%arg16, %arg17) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %17 = "llvm.select"(%16, %14, %15) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%17) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_eq1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32):
    %11 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %12 = "llvm.icmp"(%arg13, %arg12) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %13 = "llvm.select"(%12, %arg14, %11) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%13) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_ne1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: i32, %arg9: i32, %arg10: i32, %arg11: i32):
    %8 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %9 = "llvm.icmp"(%arg9, %arg8) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %10 = "llvm.select"(%9, %arg10, %8) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%10) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_eq2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i32, %arg5: i32, %arg6: i32, %arg7: i32):
    %4 = "llvm.mlir.constant"() <{value = 15 : i32}> : () -> i32
    %5 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %6 = "llvm.icmp"(%arg5, %arg4) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %7 = "llvm.select"(%6, %4, %5) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%7) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_ne2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32):
    %0 = "llvm.mlir.constant"() <{value = 15 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %2 = "llvm.icmp"(%arg1, %arg0) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %3 = "llvm.select"(%2, %0, %1) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%3) : (i32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

