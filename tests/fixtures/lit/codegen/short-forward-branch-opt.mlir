"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "test1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg123: i32, %arg124: i32, %arg125: i32):
    %151 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %152 = "llvm.icmp"(%arg125, %151) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %153 = "llvm.select"(%152, %arg123, %arg124) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%153) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "test2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg120: i32, %arg121: i32, %arg122: i32):
    %148 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %149 = "llvm.icmp"(%arg122, %148) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %150 = "llvm.select"(%149, %arg121, %arg120) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%150) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {llvm.signext}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "test3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg115: i32, %arg116: i32, %arg117: i32, %arg118: i32, %arg119: i32):
    %143 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %144 = "llvm.icmp"(%arg119, %143) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %145 = "llvm.select"(%144, %arg116, %arg115) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %146 = "llvm.select"(%144, %arg117, %arg118) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %147 = "llvm.add"(%145, %146) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%147) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "test4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg113: i32, %arg114: i32):
    %140 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %141 = "llvm.icmp"(%arg114, %140) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %142 = "llvm.select"(%141, %arg113, %140) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%142) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "test5", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg111: i32, %arg112: i32):
    %137 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %138 = "llvm.icmp"(%arg112, %137) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %139 = "llvm.select"(%138, %137, %arg111) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%139) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "test6", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg109: i32, %arg110: i32):
    %133 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %134 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %135 = "llvm.icmp"(%arg110, %133) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %136 = "llvm.select"(%135, %arg109, %134) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%136) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "test7", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg107: i32, %arg108: i32):
    %129 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %130 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %131 = "llvm.icmp"(%arg108, %129) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %132 = "llvm.select"(%131, %130, %arg107) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%132) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16, i8)>, linkage = #llvm.linkage<external>, sym_name = "select_xor_1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg105: i16, %arg106: i8):
    %122 = "llvm.mlir.constant"() <{value = 1 : i8}> : () -> i8
    %123 = "llvm.mlir.constant"() <{value = 0 : i8}> : () -> i8
    %124 = "llvm.mlir.constant"() <{value = 43 : i16}> : () -> i16
    %125 = "llvm.and"(%arg106, %122) : (i8, i8) -> i8
    %126 = "llvm.icmp"(%125, %123) <{predicate = 0 : i64}> : (i8, i8) -> i1
    %127 = "llvm.xor"(%arg105, %124) : (i16, i16) -> i16
    %128 = "llvm.select"(%126, %arg105, %127) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i16, i16) -> i16
    "llvm.return"(%128) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16, i8)>, linkage = #llvm.linkage<external>, sym_name = "select_xor_1b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg103: i16, %arg104: i8):
    %116 = "llvm.mlir.constant"() <{value = 1 : i8}> : () -> i8
    %117 = "llvm.mlir.constant"() <{value = 43 : i16}> : () -> i16
    %118 = "llvm.and"(%arg104, %116) : (i8, i8) -> i8
    %119 = "llvm.icmp"(%118, %116) <{predicate = 1 : i64}> : (i8, i8) -> i1
    %120 = "llvm.xor"(%arg103, %117) : (i16, i16) -> i16
    %121 = "llvm.select"(%119, %arg103, %120) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i16, i16) -> i16
    "llvm.return"(%121) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i8)>, linkage = #llvm.linkage<external>, sym_name = "select_xor_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg100: i32, %arg101: i32, %arg102: i8):
    %110 = "llvm.mlir.constant"() <{value = 1 : i8}> : () -> i8
    %111 = "llvm.mlir.constant"() <{value = 0 : i8}> : () -> i8
    %112 = "llvm.and"(%arg102, %110) : (i8, i8) -> i8
    %113 = "llvm.icmp"(%112, %111) <{predicate = 0 : i64}> : (i8, i8) -> i1
    %114 = "llvm.xor"(%arg101, %arg100) : (i32, i32) -> i32
    %115 = "llvm.select"(%113, %arg100, %114) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%115) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i8)>, linkage = #llvm.linkage<external>, sym_name = "select_xor_2b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg97: i32, %arg98: i32, %arg99: i8):
    %105 = "llvm.mlir.constant"() <{value = 1 : i8}> : () -> i8
    %106 = "llvm.and"(%arg99, %105) : (i8, i8) -> i8
    %107 = "llvm.icmp"(%106, %105) <{predicate = 1 : i64}> : (i8, i8) -> i1
    %108 = "llvm.xor"(%arg98, %arg97) : (i32, i32) -> i32
    %109 = "llvm.select"(%107, %arg97, %108) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%109) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i8)>, linkage = #llvm.linkage<external>, sym_name = "select_or", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg94: i32, %arg95: i32, %arg96: i8):
    %99 = "llvm.mlir.constant"() <{value = 1 : i8}> : () -> i8
    %100 = "llvm.mlir.constant"() <{value = 0 : i8}> : () -> i8
    %101 = "llvm.and"(%arg96, %99) : (i8, i8) -> i8
    %102 = "llvm.icmp"(%101, %100) <{predicate = 0 : i64}> : (i8, i8) -> i1
    %103 = "llvm.or"(%arg95, %arg94) : (i32, i32) -> i32
    %104 = "llvm.select"(%102, %arg94, %103) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%104) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i8)>, linkage = #llvm.linkage<external>, sym_name = "select_or_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg91: i32, %arg92: i32, %arg93: i8):
    %94 = "llvm.mlir.constant"() <{value = 1 : i8}> : () -> i8
    %95 = "llvm.and"(%arg93, %94) : (i8, i8) -> i8
    %96 = "llvm.icmp"(%95, %94) <{predicate = 1 : i64}> : (i8, i8) -> i1
    %97 = "llvm.or"(%arg92, %arg91) : (i32, i32) -> i32
    %98 = "llvm.select"(%96, %arg91, %97) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%98) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_or_1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg88: i32, %arg89: i32, %arg90: i32):
    %88 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %89 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %90 = "llvm.and"(%arg90, %88) : (i32, i32) -> i32
    %91 = "llvm.icmp"(%90, %89) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %92 = "llvm.or"(%arg89, %arg88) : (i32, i32) -> i32
    %93 = "llvm.select"(%91, %arg88, %92) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%93) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_or_1b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg85: i32, %arg86: i32, %arg87: i32):
    %83 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %84 = "llvm.and"(%arg87, %83) : (i32, i32) -> i32
    %85 = "llvm.icmp"(%84, %83) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %86 = "llvm.or"(%arg86, %arg85) : (i32, i32) -> i32
    %87 = "llvm.select"(%85, %arg85, %86) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%87) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.signext}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<void (i1, i32, i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sextw_removal_ccor", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg81: i1, %arg82: i32, %arg83: i32, %arg84: i32):
    %76 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %77 = "llvm.select"(%arg81, %arg82, %76) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %78 = "llvm.or"(%77, %arg84) : (i32, i32) -> i32
    "llvm.br"(%78)[^bb1] : (i32) -> ()
  ^bb1(%79: i32):  // 2 preds: ^bb0, ^bb1
    %80 = "llvm.call"(%79) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, arg_attrs = [{llvm.signext}], callee = @bar, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>, res_attrs = [{llvm.signext}]}> : (i32) -> i32
    %81 = "llvm.shl"(%79, %arg83) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %82 = "llvm.icmp"(%80, %76) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%82, %81)[^bb2, ^bb1] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb2:  // pred: ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "bar", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.signext}, {llvm.signext}, {}], function_type = !llvm.func<void (i1, i32, i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sextw_removal_ccaddw", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg77: i1, %arg78: i32, %arg79: i32, %arg80: i32):
    %69 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %70 = "llvm.select"(%arg77, %arg80, %69) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %71 = "llvm.add"(%70, %arg78) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.br"(%71)[^bb1] : (i32) -> ()
  ^bb1(%72: i32):  // 2 preds: ^bb0, ^bb1
    %73 = "llvm.call"(%72) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, arg_attrs = [{llvm.signext}], callee = @bar, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>, res_attrs = [{llvm.signext}]}> : (i32) -> i32
    %74 = "llvm.shl"(%72, %arg79) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %75 = "llvm.icmp"(%73, %69) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%75, %74)[^bb2, ^bb1] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb2:  // pred: ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {}, {}, {llvm.zeroext}], function_type = !llvm.func<i32 (i32, i32, i32, i1)>, linkage = #llvm.linkage<external>, sym_name = "select_sllw", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg73: i32, %arg74: i32, %arg75: i32, %arg76: i1):
    %67 = "llvm.shl"(%arg73, %arg74) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %68 = "llvm.select"(%arg76, %arg75, %67) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%68) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {}, {}, {llvm.zeroext}], function_type = !llvm.func<i32 (i32, i32, i32, i1)>, linkage = #llvm.linkage<external>, sym_name = "select_srlw", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg69: i32, %arg70: i32, %arg71: i32, %arg72: i1):
    %65 = "llvm.lshr"(%arg69, %arg70) : (i32, i32) -> i32
    %66 = "llvm.select"(%arg72, %arg71, %65) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%66) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {}, {}, {llvm.zeroext}], function_type = !llvm.func<i32 (i32, i32, i32, i1)>, linkage = #llvm.linkage<external>, sym_name = "select_sraw", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg65: i32, %arg66: i32, %arg67: i32, %arg68: i1):
    %63 = "llvm.ashr"(%arg65, %arg66) : (i32, i32) -> i32
    %64 = "llvm.select"(%arg68, %arg67, %63) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%64) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {}, {}, {llvm.zeroext}], function_type = !llvm.func<i64 (i64, i64, i64, i1)>, linkage = #llvm.linkage<external>, sym_name = "select_sll", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg61: i64, %arg62: i64, %arg63: i64, %arg64: i1):
    %61 = "llvm.shl"(%arg61, %arg62) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %62 = "llvm.select"(%arg64, %arg63, %61) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%62) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {}, {}, {llvm.zeroext}], function_type = !llvm.func<i64 (i64, i64, i64, i1)>, linkage = #llvm.linkage<external>, sym_name = "select_srl", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg57: i64, %arg58: i64, %arg59: i64, %arg60: i1):
    %59 = "llvm.lshr"(%arg57, %arg58) : (i64, i64) -> i64
    %60 = "llvm.select"(%arg60, %arg59, %59) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%60) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {}, {}, {llvm.zeroext}], function_type = !llvm.func<i64 (i64, i64, i64, i1)>, linkage = #llvm.linkage<external>, sym_name = "select_sra", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg53: i64, %arg54: i64, %arg55: i64, %arg56: i1):
    %57 = "llvm.ashr"(%arg53, %arg54) : (i64, i64) -> i64
    %58 = "llvm.select"(%arg56, %arg55, %57) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%58) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {}, {llvm.zeroext}], function_type = !llvm.func<i32 (i32, i32, i1)>, linkage = #llvm.linkage<external>, sym_name = "select_addiw", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg50: i32, %arg51: i32, %arg52: i1):
    %54 = "llvm.mlir.constant"() <{value = 1234 : i32}> : () -> i32
    %55 = "llvm.add"(%arg50, %54) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %56 = "llvm.select"(%arg52, %arg51, %55) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%56) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {}, {llvm.zeroext}], function_type = !llvm.func<i64 (i64, i64, i1)>, linkage = #llvm.linkage<external>, sym_name = "select_addi", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg47: i64, %arg48: i64, %arg49: i1):
    %51 = "llvm.mlir.constant"() <{value = 1234 : i64}> : () -> i64
    %52 = "llvm.add"(%arg47, %51) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %53 = "llvm.select"(%arg49, %arg48, %52) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%53) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {}, {llvm.zeroext}], function_type = !llvm.func<i64 (i64, i64, i1)>, linkage = #llvm.linkage<external>, sym_name = "select_andi", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg44: i64, %arg45: i64, %arg46: i1):
    %48 = "llvm.mlir.constant"() <{value = 567 : i64}> : () -> i64
    %49 = "llvm.and"(%arg44, %48) : (i64, i64) -> i64
    %50 = "llvm.select"(%arg46, %arg45, %49) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%50) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {}, {llvm.zeroext}], function_type = !llvm.func<i64 (i64, i64, i1)>, linkage = #llvm.linkage<external>, sym_name = "select_ori", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg41: i64, %arg42: i64, %arg43: i1):
    %45 = "llvm.mlir.constant"() <{value = 890 : i64}> : () -> i64
    %46 = "llvm.or"(%arg41, %45) : (i64, i64) -> i64
    %47 = "llvm.select"(%arg43, %arg42, %46) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%47) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {}, {llvm.zeroext}], function_type = !llvm.func<i64 (i64, i64, i1)>, linkage = #llvm.linkage<external>, sym_name = "select_xori", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg38: i64, %arg39: i64, %arg40: i1):
    %42 = "llvm.mlir.constant"() <{value = 321 : i64}> : () -> i64
    %43 = "llvm.xor"(%arg38, %42) : (i64, i64) -> i64
    %44 = "llvm.select"(%arg40, %arg39, %43) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%44) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {}, {llvm.zeroext}], function_type = !llvm.func<i64 (i64, i64, i1)>, linkage = #llvm.linkage<external>, sym_name = "select_slli", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg35: i64, %arg36: i64, %arg37: i1):
    %39 = "llvm.mlir.constant"() <{value = 32 : i64}> : () -> i64
    %40 = "llvm.shl"(%arg35, %39) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %41 = "llvm.select"(%arg37, %arg36, %40) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%41) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {}, {llvm.zeroext}], function_type = !llvm.func<i64 (i64, i64, i1)>, linkage = #llvm.linkage<external>, sym_name = "select_srli", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg32: i64, %arg33: i64, %arg34: i1):
    %36 = "llvm.mlir.constant"() <{value = 35 : i64}> : () -> i64
    %37 = "llvm.lshr"(%arg32, %36) : (i64, i64) -> i64
    %38 = "llvm.select"(%arg34, %arg33, %37) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%38) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {}, {llvm.zeroext}], function_type = !llvm.func<i64 (i64, i64, i1)>, linkage = #llvm.linkage<external>, sym_name = "select_srai", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg29: i64, %arg30: i64, %arg31: i1):
    %33 = "llvm.mlir.constant"() <{value = 63 : i64}> : () -> i64
    %34 = "llvm.ashr"(%arg29, %33) : (i64, i64) -> i64
    %35 = "llvm.select"(%arg31, %arg30, %34) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%35) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {}, {llvm.zeroext}], function_type = !llvm.func<i32 (i32, i32, i1)>, linkage = #llvm.linkage<external>, sym_name = "select_slliw", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg26: i32, %arg27: i32, %arg28: i1):
    %30 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %31 = "llvm.shl"(%arg26, %30) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %32 = "llvm.select"(%arg28, %arg27, %31) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%32) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {}, {llvm.zeroext}], function_type = !llvm.func<i32 (i32, i32, i1)>, linkage = #llvm.linkage<external>, sym_name = "select_srliw", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg23: i32, %arg24: i32, %arg25: i1):
    %27 = "llvm.mlir.constant"() <{value = 17 : i32}> : () -> i32
    %28 = "llvm.lshr"(%arg23, %27) : (i32, i32) -> i32
    %29 = "llvm.select"(%arg25, %arg24, %28) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%29) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {}, {llvm.zeroext}], function_type = !llvm.func<i32 (i32, i32, i1)>, linkage = #llvm.linkage<external>, sym_name = "select_sraiw", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg20: i32, %arg21: i32, %arg22: i1):
    %24 = "llvm.mlir.constant"() <{value = 31 : i32}> : () -> i32
    %25 = "llvm.ashr"(%arg20, %24) : (i32, i32) -> i32
    %26 = "llvm.select"(%arg22, %arg21, %25) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%26) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "abs_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg19: i32):
    %23 = "llvm.intr.abs"(%arg19) <{is_int_min_poison = false}> : (i32) -> i32
    "llvm.return"(%23) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "abs_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg18: i64):
    %22 = "llvm.intr.abs"(%arg18) <{is_int_min_poison = false}> : (i64) -> i64
    "llvm.return"(%22) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {}, {}, {llvm.zeroext}], function_type = !llvm.func<i64 (i64, i64, i64, i1)>, linkage = #llvm.linkage<external>, sym_name = "select_andn", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: i64, %arg15: i64, %arg16: i64, %arg17: i1):
    %18 = "llvm.mlir.constant"() <{value = -1 : i64}> : () -> i64
    %19 = "llvm.xor"(%arg15, %18) : (i64, i64) -> i64
    %20 = "llvm.and"(%arg14, %19) : (i64, i64) -> i64
    %21 = "llvm.select"(%arg17, %arg16, %20) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%21) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {}, {}, {llvm.zeroext}], function_type = !llvm.func<i64 (i64, i64, i64, i1)>, linkage = #llvm.linkage<external>, sym_name = "select_orn", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: i64, %arg11: i64, %arg12: i64, %arg13: i1):
    %14 = "llvm.mlir.constant"() <{value = -1 : i64}> : () -> i64
    %15 = "llvm.xor"(%arg11, %14) : (i64, i64) -> i64
    %16 = "llvm.or"(%arg10, %15) : (i64, i64) -> i64
    %17 = "llvm.select"(%arg13, %arg12, %16) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%17) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {}, {}, {llvm.zeroext}], function_type = !llvm.func<i64 (i64, i64, i64, i1)>, linkage = #llvm.linkage<external>, sym_name = "select_xnor", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: i64, %arg7: i64, %arg8: i64, %arg9: i1):
    %10 = "llvm.mlir.constant"() <{value = -1 : i64}> : () -> i64
    %11 = "llvm.xor"(%arg6, %arg7) : (i64, i64) -> i64
    %12 = "llvm.xor"(%11, %10) : (i64, i64) -> i64
    %13 = "llvm.select"(%arg9, %arg8, %12) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%13) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {}, {llvm.zeroext}], function_type = !llvm.func<i64 (i64, i64, i1)>, linkage = #llvm.linkage<external>, sym_name = "select_bfoz", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: i64, %arg4: i64, %arg5: i1):
    %5 = "llvm.mlir.constant"() <{value = 23 : i64}> : () -> i64
    %6 = "llvm.mlir.constant"() <{value = 7 : i64}> : () -> i64
    %7 = "llvm.lshr"(%arg3, %5) : (i64, i64) -> i64
    %8 = "llvm.and"(%7, %6) : (i64, i64) -> i64
    %9 = "llvm.select"(%arg5, %arg4, %8) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%9) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {}, {llvm.zeroext}], function_type = !llvm.func<i64 (i64, i64, i1)>, linkage = #llvm.linkage<external>, sym_name = "select_bfos", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i64, %arg1: i64, %arg2: i1):
    %0 = "llvm.mlir.constant"() <{value = 31 : i64}> : () -> i64
    %1 = "llvm.mlir.constant"() <{value = 17 : i64}> : () -> i64
    %2 = "llvm.shl"(%arg0, %0) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %3 = "llvm.ashr"(%2, %1) : (i64, i64) -> i64
    %4 = "llvm.select"(%arg2, %arg1, %3) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%4) : (i64) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

