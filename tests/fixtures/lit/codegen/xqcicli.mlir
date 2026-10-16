"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_eq", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg140: i32, %arg141: i32, %arg142: i32, %arg143: i32):
    %129 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %130 = "llvm.icmp"(%arg141, %arg142) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %131 = "llvm.select"(%130, %129, %arg140) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%131) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_ne", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg136: i32, %arg137: i32, %arg138: i32, %arg139: i32):
    %126 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %127 = "llvm.icmp"(%arg137, %arg138) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %128 = "llvm.select"(%127, %126, %arg136) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%128) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_slt", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg132: i32, %arg133: i32, %arg134: i32, %arg135: i32):
    %123 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %124 = "llvm.icmp"(%arg133, %arg134) <{predicate = 2 : i64}> : (i32, i32) -> i1
    %125 = "llvm.select"(%124, %123, %arg132) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%125) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_sge", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg128: i32, %arg129: i32, %arg130: i32, %arg131: i32):
    %120 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %121 = "llvm.icmp"(%arg129, %arg130) <{predicate = 5 : i64}> : (i32, i32) -> i1
    %122 = "llvm.select"(%121, %120, %arg128) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%122) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_uge", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg124: i32, %arg125: i32, %arg126: i32, %arg127: i32):
    %117 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %118 = "llvm.icmp"(%arg125, %arg126) <{predicate = 9 : i64}> : (i32, i32) -> i1
    %119 = "llvm.select"(%118, %117, %arg124) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%119) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_ult", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg120: i32, %arg121: i32, %arg122: i32, %arg123: i32):
    %114 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %115 = "llvm.icmp"(%arg121, %arg122) <{predicate = 6 : i64}> : (i32, i32) -> i1
    %116 = "llvm.select"(%115, %114, %arg120) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%116) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_eq_c", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg116: i32, %arg117: i32, %arg118: i32, %arg119: i32):
    %111 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %112 = "llvm.icmp"(%arg117, %arg118) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %113 = "llvm.select"(%112, %arg116, %111) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%113) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_ne_c", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg112: i32, %arg113: i32, %arg114: i32, %arg115: i32):
    %108 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %109 = "llvm.icmp"(%arg113, %arg114) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %110 = "llvm.select"(%109, %arg112, %108) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%110) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_slt_c", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg108: i32, %arg109: i32, %arg110: i32, %arg111: i32):
    %105 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %106 = "llvm.icmp"(%arg109, %arg110) <{predicate = 2 : i64}> : (i32, i32) -> i1
    %107 = "llvm.select"(%106, %arg108, %105) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%107) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_sge_c", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg104: i32, %arg105: i32, %arg106: i32, %arg107: i32):
    %102 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %103 = "llvm.icmp"(%arg105, %arg106) <{predicate = 5 : i64}> : (i32, i32) -> i1
    %104 = "llvm.select"(%103, %arg104, %102) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%104) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_uge_c", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg100: i32, %arg101: i32, %arg102: i32, %arg103: i32):
    %99 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %100 = "llvm.icmp"(%arg101, %arg102) <{predicate = 9 : i64}> : (i32, i32) -> i1
    %101 = "llvm.select"(%100, %arg100, %99) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%101) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_ult_c", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg96: i32, %arg97: i32, %arg98: i32, %arg99: i32):
    %96 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %97 = "llvm.icmp"(%arg97, %arg98) <{predicate = 6 : i64}> : (i32, i32) -> i1
    %98 = "llvm.select"(%97, %arg96, %96) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%98) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_eqi", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg92: i32, %arg93: i32, %arg94: i32, %arg95: i32):
    %92 = "llvm.mlir.constant"() <{value = 12 : i32}> : () -> i32
    %93 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %94 = "llvm.icmp"(%arg93, %92) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %95 = "llvm.select"(%94, %93, %arg92) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%95) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_nei", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg88: i32, %arg89: i32, %arg90: i32, %arg91: i32):
    %88 = "llvm.mlir.constant"() <{value = 12 : i32}> : () -> i32
    %89 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %90 = "llvm.icmp"(%arg89, %88) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %91 = "llvm.select"(%90, %89, %arg88) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%91) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_slti", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg84: i32, %arg85: i32, %arg86: i32, %arg87: i32):
    %84 = "llvm.mlir.constant"() <{value = 12 : i32}> : () -> i32
    %85 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %86 = "llvm.icmp"(%arg85, %84) <{predicate = 2 : i64}> : (i32, i32) -> i1
    %87 = "llvm.select"(%86, %85, %arg84) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%87) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_sgei", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg80: i32, %arg81: i32, %arg82: i32, %arg83: i32):
    %80 = "llvm.mlir.constant"() <{value = 12 : i32}> : () -> i32
    %81 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %82 = "llvm.icmp"(%arg81, %80) <{predicate = 5 : i64}> : (i32, i32) -> i1
    %83 = "llvm.select"(%82, %81, %arg80) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%83) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_ulti", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg76: i32, %arg77: i32, %arg78: i32, %arg79: i32):
    %76 = "llvm.mlir.constant"() <{value = 12 : i32}> : () -> i32
    %77 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %78 = "llvm.icmp"(%arg77, %76) <{predicate = 6 : i64}> : (i32, i32) -> i1
    %79 = "llvm.select"(%78, %77, %arg76) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%79) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_ugei", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg72: i32, %arg73: i32, %arg74: i32, %arg75: i32):
    %72 = "llvm.mlir.constant"() <{value = 12 : i32}> : () -> i32
    %73 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %74 = "llvm.icmp"(%arg73, %72) <{predicate = 9 : i64}> : (i32, i32) -> i1
    %75 = "llvm.select"(%74, %73, %arg72) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%75) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_eqi_c1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg68: i32, %arg69: i32, %arg70: i32, %arg71: i32):
    %68 = "llvm.mlir.constant"() <{value = 12 : i32}> : () -> i32
    %69 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %70 = "llvm.icmp"(%68, %arg69) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %71 = "llvm.select"(%70, %69, %arg68) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%71) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_nei_c1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg64: i32, %arg65: i32, %arg66: i32, %arg67: i32):
    %64 = "llvm.mlir.constant"() <{value = 12 : i32}> : () -> i32
    %65 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %66 = "llvm.icmp"(%64, %arg65) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %67 = "llvm.select"(%66, %65, %arg64) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%67) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_slti_c1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg60: i32, %arg61: i32, %arg62: i32, %arg63: i32):
    %60 = "llvm.mlir.constant"() <{value = 12 : i32}> : () -> i32
    %61 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %62 = "llvm.icmp"(%60, %arg61) <{predicate = 2 : i64}> : (i32, i32) -> i1
    %63 = "llvm.select"(%62, %61, %arg60) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%63) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_sgei_c1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg56: i32, %arg57: i32, %arg58: i32, %arg59: i32):
    %56 = "llvm.mlir.constant"() <{value = 12 : i32}> : () -> i32
    %57 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %58 = "llvm.icmp"(%56, %arg57) <{predicate = 5 : i64}> : (i32, i32) -> i1
    %59 = "llvm.select"(%58, %57, %arg56) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%59) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_ulti_c1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg52: i32, %arg53: i32, %arg54: i32, %arg55: i32):
    %52 = "llvm.mlir.constant"() <{value = 12 : i32}> : () -> i32
    %53 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %54 = "llvm.icmp"(%52, %arg53) <{predicate = 6 : i64}> : (i32, i32) -> i1
    %55 = "llvm.select"(%54, %53, %arg52) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%55) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_ugei_c1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg48: i32, %arg49: i32, %arg50: i32, %arg51: i32):
    %48 = "llvm.mlir.constant"() <{value = 12 : i32}> : () -> i32
    %49 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %50 = "llvm.icmp"(%48, %arg49) <{predicate = 9 : i64}> : (i32, i32) -> i1
    %51 = "llvm.select"(%50, %49, %arg48) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%51) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_eqi_c2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg44: i32, %arg45: i32, %arg46: i32, %arg47: i32):
    %44 = "llvm.mlir.constant"() <{value = 12 : i32}> : () -> i32
    %45 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %46 = "llvm.icmp"(%44, %arg45) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %47 = "llvm.select"(%46, %arg44, %45) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%47) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_nei_c2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg40: i32, %arg41: i32, %arg42: i32, %arg43: i32):
    %40 = "llvm.mlir.constant"() <{value = 12 : i32}> : () -> i32
    %41 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %42 = "llvm.icmp"(%40, %arg41) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %43 = "llvm.select"(%42, %arg40, %41) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%43) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_slti_c2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg36: i32, %arg37: i32, %arg38: i32, %arg39: i32):
    %36 = "llvm.mlir.constant"() <{value = 12 : i32}> : () -> i32
    %37 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %38 = "llvm.icmp"(%36, %arg37) <{predicate = 2 : i64}> : (i32, i32) -> i1
    %39 = "llvm.select"(%38, %arg36, %37) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%39) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_sgei_c2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg32: i32, %arg33: i32, %arg34: i32, %arg35: i32):
    %32 = "llvm.mlir.constant"() <{value = 12 : i32}> : () -> i32
    %33 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %34 = "llvm.icmp"(%32, %arg33) <{predicate = 5 : i64}> : (i32, i32) -> i1
    %35 = "llvm.select"(%34, %arg32, %33) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%35) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_ulti_c2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg28: i32, %arg29: i32, %arg30: i32, %arg31: i32):
    %28 = "llvm.mlir.constant"() <{value = 12 : i32}> : () -> i32
    %29 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %30 = "llvm.icmp"(%28, %arg29) <{predicate = 6 : i64}> : (i32, i32) -> i1
    %31 = "llvm.select"(%30, %arg28, %29) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%31) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_ugei_c2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg24: i32, %arg25: i32, %arg26: i32, %arg27: i32):
    %24 = "llvm.mlir.constant"() <{value = 12 : i32}> : () -> i32
    %25 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %26 = "llvm.icmp"(%24, %arg25) <{predicate = 9 : i64}> : (i32, i32) -> i1
    %27 = "llvm.select"(%26, %arg24, %25) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%27) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_eqi_c3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg20: i32, %arg21: i32, %arg22: i32, %arg23: i32):
    %20 = "llvm.mlir.constant"() <{value = 12 : i32}> : () -> i32
    %21 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %22 = "llvm.icmp"(%arg21, %20) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %23 = "llvm.select"(%22, %arg20, %21) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%23) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_nei_c3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg16: i32, %arg17: i32, %arg18: i32, %arg19: i32):
    %16 = "llvm.mlir.constant"() <{value = 12 : i32}> : () -> i32
    %17 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %18 = "llvm.icmp"(%arg17, %16) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %19 = "llvm.select"(%18, %arg16, %17) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%19) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_slti_c3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32):
    %12 = "llvm.mlir.constant"() <{value = 12 : i32}> : () -> i32
    %13 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %14 = "llvm.icmp"(%arg13, %12) <{predicate = 2 : i64}> : (i32, i32) -> i1
    %15 = "llvm.select"(%14, %arg12, %13) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%15) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_sgei_c3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: i32, %arg9: i32, %arg10: i32, %arg11: i32):
    %8 = "llvm.mlir.constant"() <{value = 12 : i32}> : () -> i32
    %9 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %10 = "llvm.icmp"(%arg9, %8) <{predicate = 5 : i64}> : (i32, i32) -> i1
    %11 = "llvm.select"(%10, %arg8, %9) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%11) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_ulti_c3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i32, %arg5: i32, %arg6: i32, %arg7: i32):
    %4 = "llvm.mlir.constant"() <{value = 12 : i32}> : () -> i32
    %5 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %6 = "llvm.icmp"(%arg5, %4) <{predicate = 6 : i64}> : (i32, i32) -> i1
    %7 = "llvm.select"(%6, %arg4, %5) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%7) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cc_example_ugei_c3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32):
    %0 = "llvm.mlir.constant"() <{value = 12 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %2 = "llvm.icmp"(%arg1, %0) <{predicate = 9 : i64}> : (i32, i32) -> i1
    %3 = "llvm.select"(%2, %arg0, %1) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%3) : (i32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

