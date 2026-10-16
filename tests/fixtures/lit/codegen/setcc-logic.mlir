"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<i1 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "and_icmp_eq", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg147: i32, %arg148: i32, %arg149: i32, %arg150: i32):
    %130 = "llvm.icmp"(%arg147, %arg148) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %131 = "llvm.icmp"(%arg149, %arg150) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %132 = "llvm.and"(%130, %131) : (i1, i1) -> i1
    "llvm.return"(%132) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<i1 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "or_icmp_ne", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg143: i32, %arg144: i32, %arg145: i32, %arg146: i32):
    %127 = "llvm.icmp"(%arg143, %arg144) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %128 = "llvm.icmp"(%arg145, %arg146) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %129 = "llvm.or"(%127, %128) : (i1, i1) -> i1
    "llvm.return"(%129) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "or_icmps_const_1bit_diff", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg142: i64):
    %122 = "llvm.mlir.constant"() <{value = 17 : i64}> : () -> i64
    %123 = "llvm.mlir.constant"() <{value = 13 : i64}> : () -> i64
    %124 = "llvm.icmp"(%arg142, %122) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %125 = "llvm.icmp"(%arg142, %123) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %126 = "llvm.or"(%124, %125) : (i1, i1) -> i1
    "llvm.return"(%126) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "and_icmps_const_1bit_diff", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg141: i32):
    %117 = "llvm.mlir.constant"() <{value = 44 : i32}> : () -> i32
    %118 = "llvm.mlir.constant"() <{value = 60 : i32}> : () -> i32
    %119 = "llvm.icmp"(%arg141, %117) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %120 = "llvm.icmp"(%arg141, %118) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %121 = "llvm.and"(%119, %120) : (i1, i1) -> i1
    "llvm.return"(%121) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "and_icmps_const_not1bit_diff", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg140: i32):
    %112 = "llvm.mlir.constant"() <{value = 44 : i32}> : () -> i32
    %113 = "llvm.mlir.constant"() <{value = 92 : i32}> : () -> i32
    %114 = "llvm.icmp"(%arg140, %112) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %115 = "llvm.icmp"(%arg140, %113) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %116 = "llvm.and"(%114, %115) : (i1, i1) -> i1
    "llvm.return"(%116) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<i1 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "and_icmp_sge", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg136: i32, %arg137: i32, %arg138: i32, %arg139: i32):
    %109 = "llvm.icmp"(%arg136, %arg137) <{predicate = 5 : i64}> : (i32, i32) -> i1
    %110 = "llvm.icmp"(%arg138, %arg139) <{predicate = 5 : i64}> : (i32, i32) -> i1
    %111 = "llvm.and"(%109, %110) : (i1, i1) -> i1
    "llvm.return"(%111) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<i1 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "and_icmp_sle", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg132: i32, %arg133: i32, %arg134: i32, %arg135: i32):
    %106 = "llvm.icmp"(%arg132, %arg133) <{predicate = 3 : i64}> : (i32, i32) -> i1
    %107 = "llvm.icmp"(%arg134, %arg135) <{predicate = 3 : i64}> : (i32, i32) -> i1
    %108 = "llvm.and"(%106, %107) : (i1, i1) -> i1
    "llvm.return"(%108) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<i1 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "and_icmp_uge", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg128: i32, %arg129: i32, %arg130: i32, %arg131: i32):
    %103 = "llvm.icmp"(%arg128, %arg129) <{predicate = 9 : i64}> : (i32, i32) -> i1
    %104 = "llvm.icmp"(%arg130, %arg131) <{predicate = 9 : i64}> : (i32, i32) -> i1
    %105 = "llvm.and"(%103, %104) : (i1, i1) -> i1
    "llvm.return"(%105) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<i1 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "and_icmp_ule", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg124: i32, %arg125: i32, %arg126: i32, %arg127: i32):
    %100 = "llvm.icmp"(%arg124, %arg125) <{predicate = 7 : i64}> : (i32, i32) -> i1
    %101 = "llvm.icmp"(%arg126, %arg127) <{predicate = 7 : i64}> : (i32, i32) -> i1
    %102 = "llvm.and"(%100, %101) : (i1, i1) -> i1
    "llvm.return"(%102) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<i1 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "or_icmp_sge", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg120: i32, %arg121: i32, %arg122: i32, %arg123: i32):
    %97 = "llvm.icmp"(%arg120, %arg121) <{predicate = 5 : i64}> : (i32, i32) -> i1
    %98 = "llvm.icmp"(%arg122, %arg123) <{predicate = 5 : i64}> : (i32, i32) -> i1
    %99 = "llvm.or"(%97, %98) : (i1, i1) -> i1
    "llvm.return"(%99) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<i1 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "or_icmp_sle", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg116: i32, %arg117: i32, %arg118: i32, %arg119: i32):
    %94 = "llvm.icmp"(%arg116, %arg117) <{predicate = 3 : i64}> : (i32, i32) -> i1
    %95 = "llvm.icmp"(%arg118, %arg119) <{predicate = 3 : i64}> : (i32, i32) -> i1
    %96 = "llvm.or"(%94, %95) : (i1, i1) -> i1
    "llvm.return"(%96) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<i1 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "or_icmp_uge", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg112: i32, %arg113: i32, %arg114: i32, %arg115: i32):
    %91 = "llvm.icmp"(%arg112, %arg113) <{predicate = 9 : i64}> : (i32, i32) -> i1
    %92 = "llvm.icmp"(%arg114, %arg115) <{predicate = 9 : i64}> : (i32, i32) -> i1
    %93 = "llvm.or"(%91, %92) : (i1, i1) -> i1
    "llvm.return"(%93) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<i1 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "or_icmp_ule", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg108: i32, %arg109: i32, %arg110: i32, %arg111: i32):
    %88 = "llvm.icmp"(%arg108, %arg109) <{predicate = 7 : i64}> : (i32, i32) -> i1
    %89 = "llvm.icmp"(%arg110, %arg111) <{predicate = 7 : i64}> : (i32, i32) -> i1
    %90 = "llvm.or"(%88, %89) : (i1, i1) -> i1
    "llvm.return"(%90) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (...)>, linkage = #llvm.linkage<external>, sym_name = "bar", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<void (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "and_sge_eq", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg104: i32, %arg105: i32, %arg106: i32, %arg107: i32):
    %85 = "llvm.icmp"(%arg104, %arg105) <{predicate = 5 : i64}> : (i32, i32) -> i1
    %86 = "llvm.icmp"(%arg106, %arg107) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %87 = "llvm.and"(%85, %86) : (i1, i1) -> i1
    "llvm.cond_br"(%87)[^bb2, ^bb1] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @bar, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>, var_callee_type = !llvm.func<void (...)>}> : () -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<void (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "and_sle_eq", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg100: i32, %arg101: i32, %arg102: i32, %arg103: i32):
    %82 = "llvm.icmp"(%arg100, %arg101) <{predicate = 3 : i64}> : (i32, i32) -> i1
    %83 = "llvm.icmp"(%arg102, %arg103) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %84 = "llvm.and"(%82, %83) : (i1, i1) -> i1
    "llvm.cond_br"(%84)[^bb2, ^bb1] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @bar, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>, var_callee_type = !llvm.func<void (...)>}> : () -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<void (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "and_uge_eq", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg96: i32, %arg97: i32, %arg98: i32, %arg99: i32):
    %79 = "llvm.icmp"(%arg96, %arg97) <{predicate = 9 : i64}> : (i32, i32) -> i1
    %80 = "llvm.icmp"(%arg98, %arg99) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %81 = "llvm.and"(%79, %80) : (i1, i1) -> i1
    "llvm.cond_br"(%81)[^bb2, ^bb1] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @bar, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>, var_callee_type = !llvm.func<void (...)>}> : () -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<void (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "and_ule_eq", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg92: i32, %arg93: i32, %arg94: i32, %arg95: i32):
    %76 = "llvm.icmp"(%arg92, %arg93) <{predicate = 7 : i64}> : (i32, i32) -> i1
    %77 = "llvm.icmp"(%arg94, %arg95) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %78 = "llvm.and"(%76, %77) : (i1, i1) -> i1
    "llvm.cond_br"(%78)[^bb2, ^bb1] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @bar, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>, var_callee_type = !llvm.func<void (...)>}> : () -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<void (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "and_sge_ne", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg88: i32, %arg89: i32, %arg90: i32, %arg91: i32):
    %73 = "llvm.icmp"(%arg88, %arg89) <{predicate = 5 : i64}> : (i32, i32) -> i1
    %74 = "llvm.icmp"(%arg90, %arg91) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %75 = "llvm.and"(%73, %74) : (i1, i1) -> i1
    "llvm.cond_br"(%75)[^bb2, ^bb1] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @bar, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>, var_callee_type = !llvm.func<void (...)>}> : () -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<void (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "and_sle_ne", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg84: i32, %arg85: i32, %arg86: i32, %arg87: i32):
    %70 = "llvm.icmp"(%arg84, %arg85) <{predicate = 3 : i64}> : (i32, i32) -> i1
    %71 = "llvm.icmp"(%arg86, %arg87) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %72 = "llvm.and"(%70, %71) : (i1, i1) -> i1
    "llvm.cond_br"(%72)[^bb2, ^bb1] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @bar, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>, var_callee_type = !llvm.func<void (...)>}> : () -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<void (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "and_uge_ne", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg80: i32, %arg81: i32, %arg82: i32, %arg83: i32):
    %67 = "llvm.icmp"(%arg80, %arg81) <{predicate = 9 : i64}> : (i32, i32) -> i1
    %68 = "llvm.icmp"(%arg82, %arg83) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %69 = "llvm.and"(%67, %68) : (i1, i1) -> i1
    "llvm.cond_br"(%69)[^bb2, ^bb1] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @bar, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>, var_callee_type = !llvm.func<void (...)>}> : () -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<void (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "and_ule_ne", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg76: i32, %arg77: i32, %arg78: i32, %arg79: i32):
    %64 = "llvm.icmp"(%arg76, %arg77) <{predicate = 7 : i64}> : (i32, i32) -> i1
    %65 = "llvm.icmp"(%arg78, %arg79) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %66 = "llvm.and"(%64, %65) : (i1, i1) -> i1
    "llvm.cond_br"(%66)[^bb2, ^bb1] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @bar, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>, var_callee_type = !llvm.func<void (...)>}> : () -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<void (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "or_sge_eq", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg72: i32, %arg73: i32, %arg74: i32, %arg75: i32):
    %61 = "llvm.icmp"(%arg72, %arg73) <{predicate = 5 : i64}> : (i32, i32) -> i1
    %62 = "llvm.icmp"(%arg74, %arg75) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %63 = "llvm.or"(%61, %62) : (i1, i1) -> i1
    "llvm.cond_br"(%63)[^bb2, ^bb1] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @bar, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>, var_callee_type = !llvm.func<void (...)>}> : () -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<void (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "or_sle_eq", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg68: i32, %arg69: i32, %arg70: i32, %arg71: i32):
    %58 = "llvm.icmp"(%arg68, %arg69) <{predicate = 3 : i64}> : (i32, i32) -> i1
    %59 = "llvm.icmp"(%arg70, %arg71) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %60 = "llvm.or"(%58, %59) : (i1, i1) -> i1
    "llvm.cond_br"(%60)[^bb2, ^bb1] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @bar, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>, var_callee_type = !llvm.func<void (...)>}> : () -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<void (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "or_uge_eq", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg64: i32, %arg65: i32, %arg66: i32, %arg67: i32):
    %55 = "llvm.icmp"(%arg64, %arg65) <{predicate = 9 : i64}> : (i32, i32) -> i1
    %56 = "llvm.icmp"(%arg66, %arg67) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %57 = "llvm.or"(%55, %56) : (i1, i1) -> i1
    "llvm.cond_br"(%57)[^bb2, ^bb1] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @bar, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>, var_callee_type = !llvm.func<void (...)>}> : () -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<void (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "or_ule_eq", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg60: i32, %arg61: i32, %arg62: i32, %arg63: i32):
    %52 = "llvm.icmp"(%arg60, %arg61) <{predicate = 7 : i64}> : (i32, i32) -> i1
    %53 = "llvm.icmp"(%arg62, %arg63) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %54 = "llvm.or"(%52, %53) : (i1, i1) -> i1
    "llvm.cond_br"(%54)[^bb2, ^bb1] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @bar, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>, var_callee_type = !llvm.func<void (...)>}> : () -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<void (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "or_sge_ne", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg56: i32, %arg57: i32, %arg58: i32, %arg59: i32):
    %49 = "llvm.icmp"(%arg56, %arg57) <{predicate = 5 : i64}> : (i32, i32) -> i1
    %50 = "llvm.icmp"(%arg58, %arg59) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %51 = "llvm.or"(%49, %50) : (i1, i1) -> i1
    "llvm.cond_br"(%51)[^bb2, ^bb1] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @bar, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>, var_callee_type = !llvm.func<void (...)>}> : () -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<void (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "or_sle_ne", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg52: i32, %arg53: i32, %arg54: i32, %arg55: i32):
    %46 = "llvm.icmp"(%arg52, %arg53) <{predicate = 3 : i64}> : (i32, i32) -> i1
    %47 = "llvm.icmp"(%arg54, %arg55) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %48 = "llvm.or"(%46, %47) : (i1, i1) -> i1
    "llvm.cond_br"(%48)[^bb2, ^bb1] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @bar, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>, var_callee_type = !llvm.func<void (...)>}> : () -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<void (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "or_uge_ne", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg48: i32, %arg49: i32, %arg50: i32, %arg51: i32):
    %43 = "llvm.icmp"(%arg48, %arg49) <{predicate = 9 : i64}> : (i32, i32) -> i1
    %44 = "llvm.icmp"(%arg50, %arg51) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %45 = "llvm.or"(%43, %44) : (i1, i1) -> i1
    "llvm.cond_br"(%45)[^bb2, ^bb1] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @bar, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>, var_callee_type = !llvm.func<void (...)>}> : () -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<void (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "or_ule_ne", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg44: i32, %arg45: i32, %arg46: i32, %arg47: i32):
    %40 = "llvm.icmp"(%arg44, %arg45) <{predicate = 7 : i64}> : (i32, i32) -> i1
    %41 = "llvm.icmp"(%arg46, %arg47) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %42 = "llvm.or"(%40, %41) : (i1, i1) -> i1
    "llvm.cond_br"(%42)[^bb2, ^bb1] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @bar, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>, var_callee_type = !llvm.func<void (...)>}> : () -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<void (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "and_eq_sge", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg40: i32, %arg41: i32, %arg42: i32, %arg43: i32):
    %37 = "llvm.icmp"(%arg40, %arg41) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %38 = "llvm.icmp"(%arg42, %arg43) <{predicate = 5 : i64}> : (i32, i32) -> i1
    %39 = "llvm.and"(%37, %38) : (i1, i1) -> i1
    "llvm.cond_br"(%39)[^bb2, ^bb1] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @bar, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>, var_callee_type = !llvm.func<void (...)>}> : () -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<void (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "and_eq_sle", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg36: i32, %arg37: i32, %arg38: i32, %arg39: i32):
    %34 = "llvm.icmp"(%arg36, %arg37) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %35 = "llvm.icmp"(%arg38, %arg39) <{predicate = 3 : i64}> : (i32, i32) -> i1
    %36 = "llvm.and"(%34, %35) : (i1, i1) -> i1
    "llvm.cond_br"(%36)[^bb2, ^bb1] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @bar, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>, var_callee_type = !llvm.func<void (...)>}> : () -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<void (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "and_eq_uge", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg32: i32, %arg33: i32, %arg34: i32, %arg35: i32):
    %31 = "llvm.icmp"(%arg32, %arg33) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %32 = "llvm.icmp"(%arg34, %arg35) <{predicate = 9 : i64}> : (i32, i32) -> i1
    %33 = "llvm.and"(%31, %32) : (i1, i1) -> i1
    "llvm.cond_br"(%33)[^bb2, ^bb1] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @bar, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>, var_callee_type = !llvm.func<void (...)>}> : () -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<void (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "and_eq_ule", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg28: i32, %arg29: i32, %arg30: i32, %arg31: i32):
    %28 = "llvm.icmp"(%arg28, %arg29) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %29 = "llvm.icmp"(%arg30, %arg31) <{predicate = 7 : i64}> : (i32, i32) -> i1
    %30 = "llvm.and"(%28, %29) : (i1, i1) -> i1
    "llvm.cond_br"(%30)[^bb2, ^bb1] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @bar, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>, var_callee_type = !llvm.func<void (...)>}> : () -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<void (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "and_ne_sge", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg24: i32, %arg25: i32, %arg26: i32, %arg27: i32):
    %25 = "llvm.icmp"(%arg24, %arg25) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %26 = "llvm.icmp"(%arg26, %arg27) <{predicate = 5 : i64}> : (i32, i32) -> i1
    %27 = "llvm.and"(%25, %26) : (i1, i1) -> i1
    "llvm.cond_br"(%27)[^bb2, ^bb1] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @bar, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>, var_callee_type = !llvm.func<void (...)>}> : () -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<void (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "and_ne_sle", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg20: i32, %arg21: i32, %arg22: i32, %arg23: i32):
    %22 = "llvm.icmp"(%arg20, %arg21) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %23 = "llvm.icmp"(%arg22, %arg23) <{predicate = 3 : i64}> : (i32, i32) -> i1
    %24 = "llvm.and"(%22, %23) : (i1, i1) -> i1
    "llvm.cond_br"(%24)[^bb2, ^bb1] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @bar, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>, var_callee_type = !llvm.func<void (...)>}> : () -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<void (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "and_ne_uge", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg16: i32, %arg17: i32, %arg18: i32, %arg19: i32):
    %19 = "llvm.icmp"(%arg16, %arg17) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %20 = "llvm.icmp"(%arg18, %arg19) <{predicate = 9 : i64}> : (i32, i32) -> i1
    %21 = "llvm.and"(%19, %20) : (i1, i1) -> i1
    "llvm.cond_br"(%21)[^bb2, ^bb1] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @bar, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>, var_callee_type = !llvm.func<void (...)>}> : () -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<void (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "and_ne_ule", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32):
    %16 = "llvm.icmp"(%arg12, %arg13) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %17 = "llvm.icmp"(%arg14, %arg15) <{predicate = 7 : i64}> : (i32, i32) -> i1
    %18 = "llvm.and"(%16, %17) : (i1, i1) -> i1
    "llvm.cond_br"(%18)[^bb2, ^bb1] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @bar, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>, var_callee_type = !llvm.func<void (...)>}> : () -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<void (i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "and_sge_gt0", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: i32, %arg10: i32, %arg11: i32):
    %12 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %13 = "llvm.icmp"(%arg9, %arg10) <{predicate = 5 : i64}> : (i32, i32) -> i1
    %14 = "llvm.icmp"(%arg11, %12) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %15 = "llvm.and"(%13, %14) : (i1, i1) -> i1
    "llvm.cond_br"(%15)[^bb2, ^bb1] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @bar, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>, var_callee_type = !llvm.func<void (...)>}> : () -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<void (i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "and_sle_lt1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: i32, %arg7: i32, %arg8: i32):
    %8 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %9 = "llvm.icmp"(%arg6, %arg7) <{predicate = 3 : i64}> : (i32, i32) -> i1
    %10 = "llvm.icmp"(%arg8, %8) <{predicate = 2 : i64}> : (i32, i32) -> i1
    %11 = "llvm.and"(%9, %10) : (i1, i1) -> i1
    "llvm.cond_br"(%11)[^bb2, ^bb1] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @bar, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>, var_callee_type = !llvm.func<void (...)>}> : () -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<void (i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "or_uge_gt0", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: i32, %arg4: i32, %arg5: i32):
    %4 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %5 = "llvm.icmp"(%arg3, %arg4) <{predicate = 9 : i64}> : (i32, i32) -> i1
    %6 = "llvm.icmp"(%arg5, %4) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %7 = "llvm.or"(%5, %6) : (i1, i1) -> i1
    "llvm.cond_br"(%7)[^bb2, ^bb1] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @bar, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>, var_callee_type = !llvm.func<void (...)>}> : () -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<void (i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "or_ule_lt1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: i32):
    %0 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "llvm.icmp"(%arg0, %arg1) <{predicate = 7 : i64}> : (i32, i32) -> i1
    %2 = "llvm.icmp"(%arg2, %0) <{predicate = 2 : i64}> : (i32, i32) -> i1
    %3 = "llvm.or"(%1, %2) : (i1, i1) -> i1
    "llvm.cond_br"(%3)[^bb2, ^bb1] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @bar, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>, var_callee_type = !llvm.func<void (...)>}> : () -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

