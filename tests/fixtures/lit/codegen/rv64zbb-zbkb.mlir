"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "andn_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg103: i32, %arg104: i32):
    %145 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %146 = "llvm.xor"(%arg104, %145) : (i32, i32) -> i32
    %147 = "llvm.and"(%146, %arg103) : (i32, i32) -> i32
    "llvm.return"(%147) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "andn_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg101: i64, %arg102: i64):
    %142 = "llvm.mlir.constant"() <{value = -1 : i64}> : () -> i64
    %143 = "llvm.xor"(%arg102, %142) : (i64, i64) -> i64
    %144 = "llvm.and"(%143, %arg101) : (i64, i64) -> i64
    "llvm.return"(%144) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "orn_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg99: i32, %arg100: i32):
    %139 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %140 = "llvm.xor"(%arg100, %139) : (i32, i32) -> i32
    %141 = "llvm.or"(%140, %arg99) : (i32, i32) -> i32
    "llvm.return"(%141) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "orn_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg97: i64, %arg98: i64):
    %136 = "llvm.mlir.constant"() <{value = -1 : i64}> : () -> i64
    %137 = "llvm.xor"(%arg98, %136) : (i64, i64) -> i64
    %138 = "llvm.or"(%137, %arg97) : (i64, i64) -> i64
    "llvm.return"(%138) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "xnor_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg95: i32, %arg96: i32):
    %133 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %134 = "llvm.xor"(%arg95, %133) : (i32, i32) -> i32
    %135 = "llvm.xor"(%134, %arg96) : (i32, i32) -> i32
    "llvm.return"(%135) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "xnor_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg93: i64, %arg94: i64):
    %130 = "llvm.mlir.constant"() <{value = -1 : i64}> : () -> i64
    %131 = "llvm.xor"(%arg93, %130) : (i64, i64) -> i64
    %132 = "llvm.xor"(%131, %arg94) : (i64, i64) -> i64
    "llvm.return"(%132) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "disjoint_or_xnor_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg91: i32, %arg92: i32):
    %127 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %128 = "llvm.or"(%arg91, %arg92) <{isDisjoint}> : (i32, i32) -> i32
    %129 = "llvm.xor"(%128, %127) : (i32, i32) -> i32
    "llvm.return"(%129) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "disjoint_or_xnor_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg89: i64, %arg90: i64):
    %124 = "llvm.mlir.constant"() <{value = -1 : i64}> : () -> i64
    %125 = "llvm.or"(%arg89, %arg90) <{isDisjoint}> : (i64, i64) -> i64
    %126 = "llvm.xor"(%125, %124) : (i64, i64) -> i64
    "llvm.return"(%126) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "disjoint_or_xnor_knownbits_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg86: i32, %arg87: i32, %arg88: i32):
    %117 = "llvm.mlir.constant"() <{value = 126 : i32}> : () -> i32
    %118 = "llvm.mlir.constant"() <{value = -127 : i32}> : () -> i32
    %119 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %120 = "llvm.and"(%arg86, %117) : (i32, i32) -> i32
    %121 = "llvm.and"(%arg87, %118) : (i32, i32) -> i32
    %122 = "llvm.or"(%120, %121) : (i32, i32) -> i32
    %123 = "llvm.xor"(%122, %119) : (i32, i32) -> i32
    "llvm.return"(%123) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "disjoint_or_xnor_knownbits_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg83: i64, %arg84: i64, %arg85: i64):
    %110 = "llvm.mlir.constant"() <{value = 126 : i64}> : () -> i64
    %111 = "llvm.mlir.constant"() <{value = -127 : i64}> : () -> i64
    %112 = "llvm.mlir.constant"() <{value = -1 : i64}> : () -> i64
    %113 = "llvm.and"(%arg83, %110) : (i64, i64) -> i64
    %114 = "llvm.and"(%arg84, %111) : (i64, i64) -> i64
    %115 = "llvm.or"(%113, %114) : (i64, i64) -> i64
    %116 = "llvm.xor"(%115, %112) : (i64, i64) -> i64
    "llvm.return"(%116) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "inverted_masked_merge_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg80: i32, %arg81: i32, %arg82: i32):
    %104 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %105 = "llvm.and"(%arg80, %arg81) : (i32, i32) -> i32
    %106 = "llvm.xor"(%arg80, %104) : (i32, i32) -> i32
    %107 = "llvm.and"(%106, %arg82) : (i32, i32) -> i32
    %108 = "llvm.or"(%105, %107) : (i32, i32) -> i32
    %109 = "llvm.xor"(%108, %104) : (i32, i32) -> i32
    "llvm.return"(%109) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "inverted_masked_merge_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg77: i64, %arg78: i64, %arg79: i64):
    %98 = "llvm.mlir.constant"() <{value = -1 : i64}> : () -> i64
    %99 = "llvm.and"(%arg77, %arg78) : (i64, i64) -> i64
    %100 = "llvm.xor"(%arg77, %98) : (i64, i64) -> i64
    %101 = "llvm.and"(%100, %arg79) : (i64, i64) -> i64
    %102 = "llvm.or"(%99, %101) : (i64, i64) -> i64
    %103 = "llvm.xor"(%102, %98) : (i64, i64) -> i64
    "llvm.return"(%103) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "rol_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg75: i32, %arg76: i32):
    %97 = "llvm.intr.fshl"(%arg75, %arg75, %arg76) : (i32, i32, i32) -> i32
    "llvm.return"(%97) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {}], function_type = !llvm.func<void (i32, i32, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "rol_i32_nosext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg72: i32, %arg73: i32, %arg74: !llvm.ptr):
    %96 = "llvm.intr.fshl"(%arg72, %arg72, %arg73) : (i32, i32, i32) -> i32
    "llvm.store"(%96, %arg74) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "rol_i32_neg_constant_rhs", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg71: i32):
    %94 = "llvm.mlir.constant"() <{value = -2 : i32}> : () -> i32
    %95 = "llvm.intr.fshl"(%94, %94, %arg71) : (i32, i32, i32) -> i32
    "llvm.return"(%95) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "rol_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg69: i64, %arg70: i64):
    %93 = "llvm.intr.fshl"(%arg69, %arg69, %arg70) : (i64, i64, i64) -> i64
    "llvm.return"(%93) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "ror_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg67: i32, %arg68: i32):
    %92 = "llvm.intr.fshr"(%arg67, %arg67, %arg68) : (i32, i32, i32) -> i32
    "llvm.return"(%92) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {}], function_type = !llvm.func<void (i32, i32, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "ror_i32_nosext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg64: i32, %arg65: i32, %arg66: !llvm.ptr):
    %91 = "llvm.intr.fshr"(%arg64, %arg64, %arg65) : (i32, i32, i32) -> i32
    "llvm.store"(%91, %arg66) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "ror_i32_neg_constant_rhs", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg63: i32):
    %89 = "llvm.mlir.constant"() <{value = -2 : i32}> : () -> i32
    %90 = "llvm.intr.fshr"(%89, %89, %arg63) : (i32, i32, i32) -> i32
    "llvm.return"(%90) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "ror_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg61: i64, %arg62: i64):
    %88 = "llvm.intr.fshr"(%arg61, %arg61, %arg62) : (i64, i64, i64) -> i64
    "llvm.return"(%88) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "rori_i32_fshl", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg60: i32):
    %86 = "llvm.mlir.constant"() <{value = 31 : i32}> : () -> i32
    %87 = "llvm.intr.fshl"(%arg60, %arg60, %86) : (i32, i32, i32) -> i32
    "llvm.return"(%87) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {}], function_type = !llvm.func<void (i32, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "rori_i32_fshl_nosext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg58: i32, %arg59: !llvm.ptr):
    %84 = "llvm.mlir.constant"() <{value = 31 : i32}> : () -> i32
    %85 = "llvm.intr.fshl"(%arg58, %arg58, %84) : (i32, i32, i32) -> i32
    "llvm.store"(%85, %arg59) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "rori_i32_fshr", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg57: i32):
    %82 = "llvm.mlir.constant"() <{value = 31 : i32}> : () -> i32
    %83 = "llvm.intr.fshr"(%arg57, %arg57, %82) : (i32, i32, i32) -> i32
    "llvm.return"(%83) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {}], function_type = !llvm.func<void (i32, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "rori_i32_fshr_nosext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg55: i32, %arg56: !llvm.ptr):
    %80 = "llvm.mlir.constant"() <{value = 31 : i32}> : () -> i32
    %81 = "llvm.intr.fshr"(%arg55, %arg55, %80) : (i32, i32, i32) -> i32
    "llvm.store"(%81, %arg56) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "not_rori_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg53: i32, %arg54: i32):
    %75 = "llvm.mlir.constant"() <{value = 31 : i32}> : () -> i32
    %76 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %77 = "llvm.shl"(%arg53, %75) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %78 = "llvm.lshr"(%arg54, %76) : (i32, i32) -> i32
    %79 = "llvm.or"(%77, %78) : (i32, i32) -> i32
    "llvm.return"(%79) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "roriw_bug", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg52: i64):
    %64 = "llvm.mlir.constant"() <{value = 31 : i64}> : () -> i64
    %65 = "llvm.mlir.constant"() <{value = -2 : i64}> : () -> i64
    %66 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %67 = "llvm.mlir.constant"() <{value = 32 : i64}> : () -> i64
    %68 = "llvm.shl"(%arg52, %64) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %69 = "llvm.and"(%arg52, %65) : (i64, i64) -> i64
    %70 = "llvm.lshr"(%69, %66) : (i64, i64) -> i64
    %71 = "llvm.or"(%68, %70) : (i64, i64) -> i64
    %72 = "llvm.shl"(%71, %67) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %73 = "llvm.ashr"(%72, %67) : (i64, i64) -> i64
    %74 = "llvm.xor"(%69, %73) : (i64, i64) -> i64
    "llvm.return"(%74) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "rori_i64_fshl", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg51: i64):
    %62 = "llvm.mlir.constant"() <{value = 63 : i64}> : () -> i64
    %63 = "llvm.intr.fshl"(%arg51, %arg51, %62) : (i64, i64, i64) -> i64
    "llvm.return"(%63) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "rori_i64_fshr", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg50: i64):
    %60 = "llvm.mlir.constant"() <{value = 63 : i64}> : () -> i64
    %61 = "llvm.intr.fshr"(%arg50, %arg50, %60) : (i64, i64, i64) -> i64
    "llvm.return"(%61) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "not_shl_one_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg49: i32):
    %56 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %57 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %58 = "llvm.shl"(%56, %arg49) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %59 = "llvm.xor"(%58, %57) : (i32, i32) -> i32
    "llvm.return"(%59) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "not_shl_one_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg48: i64):
    %52 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %53 = "llvm.mlir.constant"() <{value = -1 : i64}> : () -> i64
    %54 = "llvm.shl"(%52, %arg48) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %55 = "llvm.xor"(%54, %53) : (i64, i64) -> i64
    "llvm.return"(%55) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "srli_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg47: i8):
    %50 = "llvm.mlir.constant"() <{value = 6 : i8}> : () -> i8
    %51 = "llvm.lshr"(%arg47, %50) : (i8, i8) -> i8
    "llvm.return"(%51) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "srai_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg46: i8):
    %48 = "llvm.mlir.constant"() <{value = 5 : i8}> : () -> i8
    %49 = "llvm.ashr"(%arg46, %48) : (i8, i8) -> i8
    "llvm.return"(%49) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "srli_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg45: i16):
    %46 = "llvm.mlir.constant"() <{value = 6 : i16}> : () -> i16
    %47 = "llvm.lshr"(%arg45, %46) : (i16, i16) -> i16
    "llvm.return"(%47) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "srai_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg44: i16):
    %44 = "llvm.mlir.constant"() <{value = 9 : i16}> : () -> i16
    %45 = "llvm.ashr"(%arg44, %44) : (i16, i16) -> i16
    "llvm.return"(%45) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i1 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "andn_seqz_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg42: i32, %arg43: i32):
    %42 = "llvm.and"(%arg42, %arg43) : (i32, i32) -> i32
    %43 = "llvm.icmp"(%42, %arg43) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.return"(%43) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "andn_seqz_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg40: i64, %arg41: i64):
    %40 = "llvm.and"(%arg40, %arg41) : (i64, i64) -> i64
    %41 = "llvm.icmp"(%40, %arg41) <{predicate = 0 : i64}> : (i64, i64) -> i1
    "llvm.return"(%41) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i1 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "andn_snez_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg38: i32, %arg39: i32):
    %38 = "llvm.and"(%arg38, %arg39) : (i32, i32) -> i32
    %39 = "llvm.icmp"(%38, %arg39) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.return"(%39) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "andn_snez_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg36: i64, %arg37: i64):
    %36 = "llvm.and"(%arg36, %arg37) : (i64, i64) -> i64
    %37 = "llvm.icmp"(%36, %arg37) <{predicate = 1 : i64}> : (i64, i64) -> i1
    "llvm.return"(%37) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {}, {llvm.zeroext}], function_type = !llvm.func<i32 (i32, i32, i1)>, linkage = #llvm.linkage<external>, sym_name = "and_hoisted_not_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg33: i32, %arg34: i32, %arg35: i1):
    %33 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %34 = "llvm.xor"(%arg34, %33) : (i32, i32) -> i32
    "llvm.cond_br"(%arg35)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %35 = "llvm.and"(%34, %arg33) : (i32, i32) -> i32
    "llvm.return"(%35) : (i32) -> ()
  ^bb2:  // pred: ^bb0
    "llvm.return"(%arg33) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {}, {llvm.zeroext}], function_type = !llvm.func<i32 (i32, i32, i1)>, linkage = #llvm.linkage<external>, sym_name = "and_hoisted_not_i32_swapped", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg30: i32, %arg31: i32, %arg32: i1):
    %30 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %31 = "llvm.xor"(%arg31, %30) : (i32, i32) -> i32
    "llvm.cond_br"(%arg32)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %32 = "llvm.and"(%arg30, %31) : (i32, i32) -> i32
    "llvm.return"(%32) : (i32) -> ()
  ^bb2:  // pred: ^bb0
    "llvm.return"(%arg30) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {}, {llvm.zeroext}], function_type = !llvm.func<i64 (i64, i64, i1)>, linkage = #llvm.linkage<external>, sym_name = "and_hoisted_not_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg27: i64, %arg28: i64, %arg29: i1):
    %27 = "llvm.mlir.constant"() <{value = -1 : i64}> : () -> i64
    %28 = "llvm.xor"(%arg28, %27) : (i64, i64) -> i64
    "llvm.cond_br"(%arg29)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %29 = "llvm.and"(%28, %arg27) : (i64, i64) -> i64
    "llvm.return"(%29) : (i64) -> ()
  ^bb2:  // pred: ^bb0
    "llvm.return"(%arg27) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {}, {llvm.zeroext}], function_type = !llvm.func<i64 (i64, i64, i1)>, linkage = #llvm.linkage<external>, sym_name = "and_hoisted_not_i64_swapped", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg24: i64, %arg25: i64, %arg26: i1):
    %24 = "llvm.mlir.constant"() <{value = -1 : i64}> : () -> i64
    %25 = "llvm.xor"(%arg25, %24) : (i64, i64) -> i64
    "llvm.cond_br"(%arg26)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %26 = "llvm.and"(%arg24, %25) : (i64, i64) -> i64
    "llvm.return"(%26) : (i64) -> ()
  ^bb2:  // pred: ^bb0
    "llvm.return"(%arg24) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {}, {llvm.zeroext}], function_type = !llvm.func<i32 (i32, i32, i1)>, linkage = #llvm.linkage<external>, sym_name = "or_hoisted_not_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg21: i32, %arg22: i32, %arg23: i1):
    %21 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %22 = "llvm.xor"(%arg22, %21) : (i32, i32) -> i32
    "llvm.cond_br"(%arg23)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %23 = "llvm.or"(%22, %arg21) : (i32, i32) -> i32
    "llvm.return"(%23) : (i32) -> ()
  ^bb2:  // pred: ^bb0
    "llvm.return"(%arg21) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {}, {llvm.zeroext}], function_type = !llvm.func<i32 (i32, i32, i1)>, linkage = #llvm.linkage<external>, sym_name = "or_hoisted_not_i32_swapped", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg18: i32, %arg19: i32, %arg20: i1):
    %18 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %19 = "llvm.xor"(%arg19, %18) : (i32, i32) -> i32
    "llvm.cond_br"(%arg20)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %20 = "llvm.or"(%arg18, %19) : (i32, i32) -> i32
    "llvm.return"(%20) : (i32) -> ()
  ^bb2:  // pred: ^bb0
    "llvm.return"(%arg18) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {}, {llvm.zeroext}], function_type = !llvm.func<i64 (i64, i64, i1)>, linkage = #llvm.linkage<external>, sym_name = "or_hoisted_not_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg15: i64, %arg16: i64, %arg17: i1):
    %15 = "llvm.mlir.constant"() <{value = -1 : i64}> : () -> i64
    %16 = "llvm.xor"(%arg16, %15) : (i64, i64) -> i64
    "llvm.cond_br"(%arg17)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %17 = "llvm.or"(%16, %arg15) : (i64, i64) -> i64
    "llvm.return"(%17) : (i64) -> ()
  ^bb2:  // pred: ^bb0
    "llvm.return"(%arg15) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {}, {llvm.zeroext}], function_type = !llvm.func<i64 (i64, i64, i1)>, linkage = #llvm.linkage<external>, sym_name = "or_hoisted_not_i64_swapped", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: i64, %arg13: i64, %arg14: i1):
    %12 = "llvm.mlir.constant"() <{value = -1 : i64}> : () -> i64
    %13 = "llvm.xor"(%arg13, %12) : (i64, i64) -> i64
    "llvm.cond_br"(%arg14)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %14 = "llvm.or"(%arg12, %13) : (i64, i64) -> i64
    "llvm.return"(%14) : (i64) -> ()
  ^bb2:  // pred: ^bb0
    "llvm.return"(%arg12) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {}, {llvm.zeroext}], function_type = !llvm.func<i32 (i32, i32, i1)>, linkage = #llvm.linkage<external>, sym_name = "xor_hoisted_not_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: i32, %arg10: i32, %arg11: i1):
    %9 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %10 = "llvm.xor"(%arg10, %9) : (i32, i32) -> i32
    "llvm.cond_br"(%arg11)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %11 = "llvm.xor"(%10, %arg9) : (i32, i32) -> i32
    "llvm.return"(%11) : (i32) -> ()
  ^bb2:  // pred: ^bb0
    "llvm.return"(%arg9) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {}, {llvm.zeroext}], function_type = !llvm.func<i32 (i32, i32, i1)>, linkage = #llvm.linkage<external>, sym_name = "xor_hoisted_not_i32_swapped", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: i32, %arg7: i32, %arg8: i1):
    %6 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %7 = "llvm.xor"(%arg7, %6) : (i32, i32) -> i32
    "llvm.cond_br"(%arg8)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %8 = "llvm.xor"(%arg6, %7) : (i32, i32) -> i32
    "llvm.return"(%8) : (i32) -> ()
  ^bb2:  // pred: ^bb0
    "llvm.return"(%arg6) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {}, {llvm.zeroext}], function_type = !llvm.func<i64 (i64, i64, i1)>, linkage = #llvm.linkage<external>, sym_name = "xor_hoisted_not_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: i64, %arg4: i64, %arg5: i1):
    %3 = "llvm.mlir.constant"() <{value = -1 : i64}> : () -> i64
    %4 = "llvm.xor"(%arg4, %3) : (i64, i64) -> i64
    "llvm.cond_br"(%arg5)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %5 = "llvm.xor"(%4, %arg3) : (i64, i64) -> i64
    "llvm.return"(%5) : (i64) -> ()
  ^bb2:  // pred: ^bb0
    "llvm.return"(%arg3) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {}, {llvm.zeroext}], function_type = !llvm.func<i64 (i64, i64, i1)>, linkage = #llvm.linkage<external>, sym_name = "xor_hoisted_not_i64_swapped", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i64, %arg1: i64, %arg2: i1):
    %0 = "llvm.mlir.constant"() <{value = -1 : i64}> : () -> i64
    %1 = "llvm.xor"(%arg1, %0) : (i64, i64) -> i64
    "llvm.cond_br"(%arg2)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %2 = "llvm.xor"(%arg0, %1) : (i64, i64) -> i64
    "llvm.return"(%2) : (i64) -> ()
  ^bb2:  // pred: ^bb0
    "llvm.return"(%arg0) : (i64) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

