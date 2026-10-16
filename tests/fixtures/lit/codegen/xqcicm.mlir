"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_example", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg164: i32, %arg165: i32, %arg166: i32):
    %108 = "llvm.trunc"(%arg164) <{overflowFlags = 0 : i32}> : (i32) -> i1
    %109 = "llvm.select"(%108, %arg165, %arg166) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%109) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_eq", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg160: i32, %arg161: i32, %arg162: i32, %arg163: i32):
    %105 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %106 = "llvm.icmp"(%arg160, %105) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %107 = "llvm.select"(%106, %arg162, %arg163) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%107) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_eq1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg156: i32, %arg157: i32, %arg158: i32, %arg159: i32):
    %102 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %103 = "llvm.icmp"(%102, %arg156) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %104 = "llvm.select"(%103, %arg158, %arg159) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%104) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_ne", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg152: i32, %arg153: i32, %arg154: i32, %arg155: i32):
    %99 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %100 = "llvm.icmp"(%arg152, %99) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %101 = "llvm.select"(%100, %arg154, %arg155) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%101) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_ne1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg148: i32, %arg149: i32, %arg150: i32, %arg151: i32):
    %96 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %97 = "llvm.icmp"(%96, %arg148) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %98 = "llvm.select"(%97, %arg150, %arg151) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%98) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_slt", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg144: i32, %arg145: i32, %arg146: i32, %arg147: i32):
    %93 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %94 = "llvm.icmp"(%arg144, %93) <{predicate = 2 : i64}> : (i32, i32) -> i1
    %95 = "llvm.select"(%94, %arg146, %arg147) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%95) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_slt1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg140: i32, %arg141: i32, %arg142: i32, %arg143: i32):
    %90 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %91 = "llvm.icmp"(%90, %arg140) <{predicate = 2 : i64}> : (i32, i32) -> i1
    %92 = "llvm.select"(%91, %arg142, %arg143) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%92) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_sle", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg136: i32, %arg137: i32, %arg138: i32, %arg139: i32):
    %87 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %88 = "llvm.icmp"(%arg136, %87) <{predicate = 3 : i64}> : (i32, i32) -> i1
    %89 = "llvm.select"(%88, %arg138, %arg139) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%89) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_sle1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg132: i32, %arg133: i32, %arg134: i32, %arg135: i32):
    %84 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %85 = "llvm.icmp"(%84, %arg132) <{predicate = 3 : i64}> : (i32, i32) -> i1
    %86 = "llvm.select"(%85, %arg134, %arg135) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%86) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_sgt", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg128: i32, %arg129: i32, %arg130: i32, %arg131: i32):
    %81 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %82 = "llvm.icmp"(%arg128, %81) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %83 = "llvm.select"(%82, %arg130, %arg131) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%83) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_sgt1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg124: i32, %arg125: i32, %arg126: i32, %arg127: i32):
    %78 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %79 = "llvm.icmp"(%78, %arg124) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %80 = "llvm.select"(%79, %arg126, %arg127) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%80) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_sge", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg120: i32, %arg121: i32, %arg122: i32, %arg123: i32):
    %75 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %76 = "llvm.icmp"(%arg120, %75) <{predicate = 5 : i64}> : (i32, i32) -> i1
    %77 = "llvm.select"(%76, %arg122, %arg123) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%77) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_sge1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg116: i32, %arg117: i32, %arg118: i32, %arg119: i32):
    %72 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %73 = "llvm.icmp"(%72, %arg116) <{predicate = 5 : i64}> : (i32, i32) -> i1
    %74 = "llvm.select"(%73, %arg118, %arg119) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%74) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_ule", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg112: i32, %arg113: i32, %arg114: i32, %arg115: i32):
    %69 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %70 = "llvm.icmp"(%arg112, %69) <{predicate = 7 : i64}> : (i32, i32) -> i1
    %71 = "llvm.select"(%70, %arg114, %arg115) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%71) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_ule1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg108: i32, %arg109: i32, %arg110: i32, %arg111: i32):
    %66 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %67 = "llvm.icmp"(%66, %arg108) <{predicate = 7 : i64}> : (i32, i32) -> i1
    %68 = "llvm.select"(%67, %arg110, %arg111) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%68) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_ugt", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg104: i32, %arg105: i32, %arg106: i32, %arg107: i32):
    %63 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %64 = "llvm.icmp"(%arg104, %63) <{predicate = 8 : i64}> : (i32, i32) -> i1
    %65 = "llvm.select"(%64, %arg106, %arg107) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%65) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_ugt1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg100: i32, %arg101: i32, %arg102: i32, %arg103: i32):
    %60 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %61 = "llvm.icmp"(%60, %arg100) <{predicate = 8 : i64}> : (i32, i32) -> i1
    %62 = "llvm.select"(%61, %arg102, %arg103) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%62) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_ult", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg96: i32, %arg97: i32, %arg98: i32, %arg99: i32):
    %57 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %58 = "llvm.icmp"(%arg96, %57) <{predicate = 6 : i64}> : (i32, i32) -> i1
    %59 = "llvm.select"(%58, %arg98, %arg99) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%59) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_ult1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg92: i32, %arg93: i32, %arg94: i32, %arg95: i32):
    %54 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %55 = "llvm.icmp"(%54, %arg92) <{predicate = 6 : i64}> : (i32, i32) -> i1
    %56 = "llvm.select"(%55, %arg94, %arg95) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%56) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_uge", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg88: i32, %arg89: i32, %arg90: i32, %arg91: i32):
    %51 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %52 = "llvm.icmp"(%arg88, %51) <{predicate = 9 : i64}> : (i32, i32) -> i1
    %53 = "llvm.select"(%52, %arg90, %arg91) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%53) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_uge1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg84: i32, %arg85: i32, %arg86: i32, %arg87: i32):
    %48 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %49 = "llvm.icmp"(%48, %arg84) <{predicate = 9 : i64}> : (i32, i32) -> i1
    %50 = "llvm.select"(%49, %arg86, %arg87) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%50) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_eq_reg", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg80: i32, %arg81: i32, %arg82: i32, %arg83: i32):
    %46 = "llvm.icmp"(%arg80, %arg81) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %47 = "llvm.select"(%46, %arg82, %arg83) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%47) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_ne_reg", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg76: i32, %arg77: i32, %arg78: i32, %arg79: i32):
    %44 = "llvm.icmp"(%arg76, %arg77) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %45 = "llvm.select"(%44, %arg78, %arg79) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%45) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_slt_reg", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg72: i32, %arg73: i32, %arg74: i32, %arg75: i32):
    %42 = "llvm.icmp"(%arg72, %arg73) <{predicate = 2 : i64}> : (i32, i32) -> i1
    %43 = "llvm.select"(%42, %arg74, %arg75) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%43) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_sge_reg", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg68: i32, %arg69: i32, %arg70: i32, %arg71: i32):
    %40 = "llvm.icmp"(%arg68, %arg69) <{predicate = 5 : i64}> : (i32, i32) -> i1
    %41 = "llvm.select"(%40, %arg70, %arg71) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%41) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_sgt_reg", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg64: i32, %arg65: i32, %arg66: i32, %arg67: i32):
    %38 = "llvm.icmp"(%arg64, %arg65) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %39 = "llvm.select"(%38, %arg66, %arg67) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%39) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_sle_reg", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg60: i32, %arg61: i32, %arg62: i32, %arg63: i32):
    %36 = "llvm.icmp"(%arg60, %arg61) <{predicate = 3 : i64}> : (i32, i32) -> i1
    %37 = "llvm.select"(%36, %arg62, %arg63) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%37) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_ugt_reg", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg56: i32, %arg57: i32, %arg58: i32, %arg59: i32):
    %34 = "llvm.icmp"(%arg56, %arg57) <{predicate = 8 : i64}> : (i32, i32) -> i1
    %35 = "llvm.select"(%34, %arg58, %arg59) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%35) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_ult_reg", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg52: i32, %arg53: i32, %arg54: i32, %arg55: i32):
    %32 = "llvm.icmp"(%arg52, %arg53) <{predicate = 6 : i64}> : (i32, i32) -> i1
    %33 = "llvm.select"(%32, %arg54, %arg55) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%33) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_uge_reg", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg48: i32, %arg49: i32, %arg50: i32, %arg51: i32):
    %30 = "llvm.icmp"(%arg48, %arg49) <{predicate = 9 : i64}> : (i32, i32) -> i1
    %31 = "llvm.select"(%30, %arg50, %arg51) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%31) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_ule_reg", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg44: i32, %arg45: i32, %arg46: i32, %arg47: i32):
    %28 = "llvm.icmp"(%arg44, %arg45) <{predicate = 7 : i64}> : (i32, i32) -> i1
    %29 = "llvm.select"(%28, %arg46, %arg47) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%29) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_ule_neg", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg40: i32, %arg41: i32, %arg42: i32, %arg43: i32):
    %25 = "llvm.mlir.constant"() <{value = -11 : i32}> : () -> i32
    %26 = "llvm.icmp"(%arg40, %25) <{predicate = 7 : i64}> : (i32, i32) -> i1
    %27 = "llvm.select"(%26, %arg42, %arg43) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%27) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_eq_mv", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg36: i32, %arg37: i32, %arg38: i32, %arg39: i32):
    %23 = "llvm.icmp"(%arg38, %arg37) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %24 = "llvm.select"(%23, %arg36, %arg39) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%24) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_lt_mv", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg32: i32, %arg33: i32, %arg34: i32, %arg35: i32):
    %21 = "llvm.icmp"(%arg34, %arg33) <{predicate = 2 : i64}> : (i32, i32) -> i1
    %22 = "llvm.select"(%21, %arg32, %arg35) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%22) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_ge_mv", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg28: i32, %arg29: i32, %arg30: i32, %arg31: i32):
    %19 = "llvm.icmp"(%arg30, %arg29) <{predicate = 5 : i64}> : (i32, i32) -> i1
    %20 = "llvm.select"(%19, %arg28, %arg31) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%20) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_ult_mv", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg24: i32, %arg25: i32, %arg26: i32, %arg27: i32):
    %17 = "llvm.icmp"(%arg26, %arg25) <{predicate = 6 : i64}> : (i32, i32) -> i1
    %18 = "llvm.select"(%17, %arg24, %arg27) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%18) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_uge_mv", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg20: i32, %arg21: i32, %arg22: i32, %arg23: i32):
    %15 = "llvm.icmp"(%arg22, %arg21) <{predicate = 9 : i64}> : (i32, i32) -> i1
    %16 = "llvm.select"(%15, %arg20, %arg23) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%16) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_eq_imm_mv", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg16: i32, %arg17: i32, %arg18: i32, %arg19: i32):
    %12 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %13 = "llvm.icmp"(%arg18, %12) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %14 = "llvm.select"(%13, %arg16, %arg19) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%14) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_lt_imm_mv", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32):
    %9 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %10 = "llvm.icmp"(%arg14, %9) <{predicate = 2 : i64}> : (i32, i32) -> i1
    %11 = "llvm.select"(%10, %arg12, %arg15) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%11) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_ge_imm_mv", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: i32, %arg9: i32, %arg10: i32, %arg11: i32):
    %6 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %7 = "llvm.icmp"(%arg10, %6) <{predicate = 5 : i64}> : (i32, i32) -> i1
    %8 = "llvm.select"(%7, %arg8, %arg11) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%8) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_ult_imm_mv", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i32, %arg5: i32, %arg6: i32, %arg7: i32):
    %3 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %4 = "llvm.icmp"(%arg6, %3) <{predicate = 6 : i64}> : (i32, i32) -> i1
    %5 = "llvm.select"(%4, %arg4, %arg7) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%5) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_uge_imm_mv", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32):
    %0 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %1 = "llvm.icmp"(%arg2, %0) <{predicate = 9 : i64}> : (i32, i32) -> i1
    %2 = "llvm.select"(%1, %arg0, %arg3) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%2) : (i32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

