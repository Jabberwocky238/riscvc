"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}], function_type = !llvm.func<i64 (i64, i1)>, linkage = #llvm.linkage<external>, sym_name = "zero1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg182: i64, %arg183: i1):
    %182 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %183 = "llvm.select"(%arg183, %arg182, %182) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%183) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}], function_type = !llvm.func<i64 (i64, i1)>, linkage = #llvm.linkage<external>, sym_name = "zero2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg180: i64, %arg181: i1):
    %180 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %181 = "llvm.select"(%arg181, %180, %arg180) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%181) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "zero_singlebit1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg178: i64, %arg179: i64):
    %175 = "llvm.mlir.constant"() <{value = 4096 : i64}> : () -> i64
    %176 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %177 = "llvm.and"(%arg179, %175) : (i64, i64) -> i64
    %178 = "llvm.icmp"(%177, %176) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %179 = "llvm.select"(%178, %arg178, %176) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%179) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "zero_singlebit2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg176: i64, %arg177: i64):
    %170 = "llvm.mlir.constant"() <{value = 4096 : i64}> : () -> i64
    %171 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %172 = "llvm.and"(%arg177, %170) : (i64, i64) -> i64
    %173 = "llvm.icmp"(%172, %171) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %174 = "llvm.select"(%173, %171, %arg176) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%174) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {}, {}], function_type = !llvm.func<i64 (i1, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "add1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg173: i1, %arg174: i64, %arg175: i64):
    %168 = "llvm.add"(%arg174, %arg175) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %169 = "llvm.select"(%arg173, %168, %arg174) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%169) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {}, {}], function_type = !llvm.func<i64 (i1, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "add2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg170: i1, %arg171: i64, %arg172: i64):
    %166 = "llvm.add"(%arg171, %arg172) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %167 = "llvm.select"(%arg170, %166, %arg172) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%167) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {}, {}], function_type = !llvm.func<i64 (i1, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "add3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg167: i1, %arg168: i64, %arg169: i64):
    %164 = "llvm.add"(%arg168, %arg169) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %165 = "llvm.select"(%arg167, %arg168, %164) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%165) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {}, {}], function_type = !llvm.func<i64 (i1, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "add4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg164: i1, %arg165: i64, %arg166: i64):
    %162 = "llvm.add"(%arg165, %arg166) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %163 = "llvm.select"(%arg164, %arg166, %162) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%163) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {}, {}], function_type = !llvm.func<i64 (i1, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "sub1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg161: i1, %arg162: i64, %arg163: i64):
    %160 = "llvm.sub"(%arg162, %arg163) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %161 = "llvm.select"(%arg161, %160, %arg162) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%161) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {}, {}], function_type = !llvm.func<i64 (i1, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "sub2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg158: i1, %arg159: i64, %arg160: i64):
    %158 = "llvm.sub"(%arg159, %arg160) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %159 = "llvm.select"(%arg158, %arg159, %158) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%159) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {}, {}], function_type = !llvm.func<i64 (i1, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "or1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg155: i1, %arg156: i64, %arg157: i64):
    %156 = "llvm.or"(%arg156, %arg157) : (i64, i64) -> i64
    %157 = "llvm.select"(%arg155, %156, %arg156) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%157) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {}, {}], function_type = !llvm.func<i64 (i1, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "or2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg152: i1, %arg153: i64, %arg154: i64):
    %154 = "llvm.or"(%arg153, %arg154) : (i64, i64) -> i64
    %155 = "llvm.select"(%arg152, %154, %arg154) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%155) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {}, {}], function_type = !llvm.func<i64 (i1, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "or3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg149: i1, %arg150: i64, %arg151: i64):
    %152 = "llvm.or"(%arg150, %arg151) : (i64, i64) -> i64
    %153 = "llvm.select"(%arg149, %arg150, %152) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%153) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {}, {}], function_type = !llvm.func<i64 (i1, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "or4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg146: i1, %arg147: i64, %arg148: i64):
    %150 = "llvm.or"(%arg147, %arg148) : (i64, i64) -> i64
    %151 = "llvm.select"(%arg146, %arg148, %150) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%151) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {}, {}], function_type = !llvm.func<i64 (i1, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "xor1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg143: i1, %arg144: i64, %arg145: i64):
    %148 = "llvm.xor"(%arg144, %arg145) : (i64, i64) -> i64
    %149 = "llvm.select"(%arg143, %148, %arg144) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%149) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {}, {}], function_type = !llvm.func<i64 (i1, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "xor2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg140: i1, %arg141: i64, %arg142: i64):
    %146 = "llvm.xor"(%arg141, %arg142) : (i64, i64) -> i64
    %147 = "llvm.select"(%arg140, %146, %arg142) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%147) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {}, {}], function_type = !llvm.func<i64 (i1, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "xor3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg137: i1, %arg138: i64, %arg139: i64):
    %144 = "llvm.xor"(%arg138, %arg139) : (i64, i64) -> i64
    %145 = "llvm.select"(%arg137, %arg138, %144) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%145) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {}, {}], function_type = !llvm.func<i64 (i1, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "xor4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg134: i1, %arg135: i64, %arg136: i64):
    %142 = "llvm.xor"(%arg135, %arg136) : (i64, i64) -> i64
    %143 = "llvm.select"(%arg134, %arg136, %142) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%143) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {}, {}], function_type = !llvm.func<i64 (i1, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "and1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg131: i1, %arg132: i64, %arg133: i64):
    %140 = "llvm.and"(%arg132, %arg133) : (i64, i64) -> i64
    %141 = "llvm.select"(%arg131, %140, %arg132) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%141) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {}, {}], function_type = !llvm.func<i64 (i1, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "and2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg128: i1, %arg129: i64, %arg130: i64):
    %138 = "llvm.and"(%arg129, %arg130) : (i64, i64) -> i64
    %139 = "llvm.select"(%arg128, %138, %arg130) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%139) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {}, {}], function_type = !llvm.func<i64 (i1, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "and3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg125: i1, %arg126: i64, %arg127: i64):
    %136 = "llvm.and"(%arg126, %arg127) : (i64, i64) -> i64
    %137 = "llvm.select"(%arg125, %arg126, %136) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%137) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {}, {}], function_type = !llvm.func<i64 (i1, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "and4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg122: i1, %arg123: i64, %arg124: i64):
    %134 = "llvm.and"(%arg123, %arg124) : (i64, i64) -> i64
    %135 = "llvm.select"(%arg122, %arg124, %134) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%135) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {}, {}], function_type = !llvm.func<i64 (i1, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "basic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg119: i1, %arg120: i64, %arg121: i64):
    %133 = "llvm.select"(%arg119, %arg120, %arg121) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%133) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "seteq", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg115: i64, %arg116: i64, %arg117: i64, %arg118: i64):
    %131 = "llvm.icmp"(%arg115, %arg116) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %132 = "llvm.select"(%131, %arg117, %arg118) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%132) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "setne", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg111: i64, %arg112: i64, %arg113: i64, %arg114: i64):
    %129 = "llvm.icmp"(%arg111, %arg112) <{predicate = 1 : i64}> : (i64, i64) -> i1
    %130 = "llvm.select"(%129, %arg113, %arg114) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%130) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "setgt", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg107: i64, %arg108: i64, %arg109: i64, %arg110: i64):
    %127 = "llvm.icmp"(%arg107, %arg108) <{predicate = 4 : i64}> : (i64, i64) -> i1
    %128 = "llvm.select"(%127, %arg109, %arg110) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%128) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "setge", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg103: i64, %arg104: i64, %arg105: i64, %arg106: i64):
    %125 = "llvm.icmp"(%arg103, %arg104) <{predicate = 5 : i64}> : (i64, i64) -> i1
    %126 = "llvm.select"(%125, %arg105, %arg106) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%126) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "setlt", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg99: i64, %arg100: i64, %arg101: i64, %arg102: i64):
    %123 = "llvm.icmp"(%arg99, %arg100) <{predicate = 2 : i64}> : (i64, i64) -> i1
    %124 = "llvm.select"(%123, %arg101, %arg102) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%124) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "setle", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg95: i64, %arg96: i64, %arg97: i64, %arg98: i64):
    %121 = "llvm.icmp"(%arg95, %arg96) <{predicate = 3 : i64}> : (i64, i64) -> i1
    %122 = "llvm.select"(%121, %arg97, %arg98) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%122) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "setugt", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg91: i64, %arg92: i64, %arg93: i64, %arg94: i64):
    %119 = "llvm.icmp"(%arg91, %arg92) <{predicate = 8 : i64}> : (i64, i64) -> i1
    %120 = "llvm.select"(%119, %arg93, %arg94) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%120) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "setuge", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg87: i64, %arg88: i64, %arg89: i64, %arg90: i64):
    %117 = "llvm.icmp"(%arg87, %arg88) <{predicate = 9 : i64}> : (i64, i64) -> i1
    %118 = "llvm.select"(%117, %arg89, %arg90) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%118) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "setult", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg83: i64, %arg84: i64, %arg85: i64, %arg86: i64):
    %115 = "llvm.icmp"(%arg83, %arg84) <{predicate = 6 : i64}> : (i64, i64) -> i1
    %116 = "llvm.select"(%115, %arg85, %arg86) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%116) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "setule", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg79: i64, %arg80: i64, %arg81: i64, %arg82: i64):
    %113 = "llvm.icmp"(%arg79, %arg80) <{predicate = 7 : i64}> : (i64, i64) -> i1
    %114 = "llvm.select"(%113, %arg81, %arg82) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%114) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "seteq_zero", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg76: i64, %arg77: i64, %arg78: i64):
    %110 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %111 = "llvm.icmp"(%arg76, %110) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %112 = "llvm.select"(%111, %arg77, %arg78) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%112) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "setne_zero", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg73: i64, %arg74: i64, %arg75: i64):
    %107 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %108 = "llvm.icmp"(%arg73, %107) <{predicate = 1 : i64}> : (i64, i64) -> i1
    %109 = "llvm.select"(%108, %arg74, %arg75) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%109) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "seteq_constant", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg70: i64, %arg71: i64, %arg72: i64):
    %104 = "llvm.mlir.constant"() <{value = 123 : i64}> : () -> i64
    %105 = "llvm.icmp"(%arg70, %104) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %106 = "llvm.select"(%105, %arg71, %arg72) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%106) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "setne_constant", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg67: i64, %arg68: i64, %arg69: i64):
    %101 = "llvm.mlir.constant"() <{value = 456 : i64}> : () -> i64
    %102 = "llvm.icmp"(%arg67, %101) <{predicate = 1 : i64}> : (i64, i64) -> i1
    %103 = "llvm.select"(%102, %arg68, %arg69) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%103) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "seteq_2048", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg64: i64, %arg65: i64, %arg66: i64):
    %98 = "llvm.mlir.constant"() <{value = 2048 : i64}> : () -> i64
    %99 = "llvm.icmp"(%arg64, %98) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %100 = "llvm.select"(%99, %arg65, %arg66) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%100) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "seteq_neg2048", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg61: i64, %arg62: i64, %arg63: i64):
    %95 = "llvm.mlir.constant"() <{value = -2048 : i64}> : () -> i64
    %96 = "llvm.icmp"(%arg61, %95) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %97 = "llvm.select"(%96, %arg62, %arg63) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%97) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "setne_neg2048", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg58: i64, %arg59: i64, %arg60: i64):
    %92 = "llvm.mlir.constant"() <{value = -2048 : i64}> : () -> i64
    %93 = "llvm.icmp"(%arg58, %92) <{predicate = 1 : i64}> : (i64, i64) -> i1
    %94 = "llvm.select"(%93, %arg59, %arg60) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%94) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "zero1_seteq", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg55: i64, %arg56: i64, %arg57: i64):
    %89 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %90 = "llvm.icmp"(%arg55, %arg56) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %91 = "llvm.select"(%90, %arg57, %89) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%91) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "zero2_seteq", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg52: i64, %arg53: i64, %arg54: i64):
    %86 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %87 = "llvm.icmp"(%arg52, %arg53) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %88 = "llvm.select"(%87, %86, %arg54) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%88) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "zero1_setne", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg49: i64, %arg50: i64, %arg51: i64):
    %83 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %84 = "llvm.icmp"(%arg49, %arg50) <{predicate = 1 : i64}> : (i64, i64) -> i1
    %85 = "llvm.select"(%84, %arg51, %83) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%85) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "zero2_setne", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg46: i64, %arg47: i64, %arg48: i64):
    %80 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %81 = "llvm.icmp"(%arg46, %arg47) <{predicate = 1 : i64}> : (i64, i64) -> i1
    %82 = "llvm.select"(%81, %80, %arg48) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%82) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "zero1_seteq_zero", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg44: i64, %arg45: i64):
    %77 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %78 = "llvm.icmp"(%arg44, %77) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %79 = "llvm.select"(%78, %arg45, %77) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%79) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "zero2_seteq_zero", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg42: i64, %arg43: i64):
    %74 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %75 = "llvm.icmp"(%arg42, %74) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %76 = "llvm.select"(%75, %74, %arg43) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%76) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "zero1_setne_zero", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg40: i64, %arg41: i64):
    %71 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %72 = "llvm.icmp"(%arg40, %71) <{predicate = 1 : i64}> : (i64, i64) -> i1
    %73 = "llvm.select"(%72, %arg41, %71) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%73) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "zero2_setne_zero", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg38: i64, %arg39: i64):
    %68 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %69 = "llvm.icmp"(%arg38, %68) <{predicate = 1 : i64}> : (i64, i64) -> i1
    %70 = "llvm.select"(%69, %68, %arg39) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%70) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "zero1_seteq_constant", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg36: i64, %arg37: i64):
    %64 = "llvm.mlir.constant"() <{value = -231 : i64}> : () -> i64
    %65 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %66 = "llvm.icmp"(%arg36, %64) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %67 = "llvm.select"(%66, %arg37, %65) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%67) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "zero2_seteq_constant", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg34: i64, %arg35: i64):
    %60 = "llvm.mlir.constant"() <{value = 546 : i64}> : () -> i64
    %61 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %62 = "llvm.icmp"(%arg34, %60) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %63 = "llvm.select"(%62, %61, %arg35) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%63) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "zero1_setne_constant", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg32: i64, %arg33: i64):
    %56 = "llvm.mlir.constant"() <{value = 321 : i64}> : () -> i64
    %57 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %58 = "llvm.icmp"(%arg32, %56) <{predicate = 1 : i64}> : (i64, i64) -> i1
    %59 = "llvm.select"(%58, %arg33, %57) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%59) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "zero2_setne_constant", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg30: i64, %arg31: i64):
    %52 = "llvm.mlir.constant"() <{value = -654 : i64}> : () -> i64
    %53 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %54 = "llvm.icmp"(%arg30, %52) <{predicate = 1 : i64}> : (i64, i64) -> i1
    %55 = "llvm.select"(%54, %53, %arg31) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%55) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "zero1_seteq_neg2048", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg28: i64, %arg29: i64):
    %48 = "llvm.mlir.constant"() <{value = -2048 : i64}> : () -> i64
    %49 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %50 = "llvm.icmp"(%arg28, %48) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %51 = "llvm.select"(%50, %arg29, %49) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%51) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "zero2_seteq_neg2048", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg26: i64, %arg27: i64):
    %44 = "llvm.mlir.constant"() <{value = -2048 : i64}> : () -> i64
    %45 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %46 = "llvm.icmp"(%arg26, %44) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %47 = "llvm.select"(%46, %45, %arg27) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%47) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "zero1_setne_neg2048", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg24: i64, %arg25: i64):
    %40 = "llvm.mlir.constant"() <{value = -2048 : i64}> : () -> i64
    %41 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %42 = "llvm.icmp"(%arg24, %40) <{predicate = 1 : i64}> : (i64, i64) -> i1
    %43 = "llvm.select"(%42, %arg25, %41) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%43) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "zero2_setne_neg2048", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg22: i64, %arg23: i64):
    %36 = "llvm.mlir.constant"() <{value = -2048 : i64}> : () -> i64
    %37 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %38 = "llvm.icmp"(%arg22, %36) <{predicate = 1 : i64}> : (i64, i64) -> i1
    %39 = "llvm.select"(%38, %37, %arg23) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%39) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<void (i1, i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sextw_removal_maskc", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg19: i1, %arg20: i32, %arg21: i32):
    %30 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %31 = "llvm.select"(%arg19, %arg20, %30) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.br"(%31)[^bb1] : (i32) -> ()
  ^bb1(%32: i32):  // 2 preds: ^bb0, ^bb1
    %33 = "llvm.call"(%32) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, arg_attrs = [{llvm.signext}], callee = @bar, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>, res_attrs = [{llvm.signext}]}> : (i32) -> i32
    %34 = "llvm.shl"(%32, %arg21) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %35 = "llvm.icmp"(%33, %30) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%35, %34)[^bb2, ^bb1] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb2:  // pred: ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "bar", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<void (i1, i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sextw_removal_maskcn", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg16: i1, %arg17: i32, %arg18: i32):
    %24 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %25 = "llvm.select"(%arg16, %24, %arg17) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.br"(%25)[^bb1] : (i32) -> ()
  ^bb1(%26: i32):  // 2 preds: ^bb0, ^bb1
    %27 = "llvm.call"(%26) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, arg_attrs = [{llvm.signext}], callee = @bar, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>, res_attrs = [{llvm.signext}]}> : (i32) -> i32
    %28 = "llvm.shl"(%26, %arg18) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %29 = "llvm.icmp"(%27, %24) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%29, %28)[^bb2, ^bb1] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb2:  // pred: ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32, f32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "setune_32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: f32, %arg13: f32, %arg14: i32, %arg15: i32):
    %22 = "llvm.fcmp"(%arg12, %arg13) <{fastmathFlags = #llvm.fastmath<none>, predicate = 13 : i64}> : (f32, f32) -> i1
    %23 = "llvm.select"(%22, %arg14, %arg15) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%23) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (f32, f32, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "setune_64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: f32, %arg9: f32, %arg10: i64, %arg11: i64):
    %20 = "llvm.fcmp"(%arg8, %arg9) <{fastmathFlags = #llvm.fastmath<none>, predicate = 13 : i64}> : (f32, f32) -> i1
    %21 = "llvm.select"(%20, %arg10, %arg11) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%21) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<i16 (i16, i16, i16, i16)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "numsignbits", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i16, %arg5: i16, %arg6: i16, %arg7: i16):
    %16 = "llvm.mlir.constant"() <{value = 0 : i16}> : () -> i16
    %17 = "llvm.icmp"(%arg4, %16) <{predicate = 0 : i64}> : (i16, i16) -> i1
    %18 = "llvm.select"(%17, %arg7, %arg6) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i16, i16) -> i16
    %19 = "llvm.icmp"(%arg5, %16) <{predicate = 0 : i64}> : (i16, i16) -> i1
    "llvm.cond_br"(%19)[^bb2, ^bb1] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"(%18) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, arg_attrs = [{llvm.signext}], callee = @bat, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (i16) -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"(%18) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<void (i16)>, linkage = #llvm.linkage<external>, sym_name = "bat", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "single_bit", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: i64):
    %11 = "llvm.mlir.constant"() <{value = 1024 : i64}> : () -> i64
    %12 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %13 = "llvm.and"(%arg3, %11) : (i64, i64) -> i64
    %14 = "llvm.icmp"(%13, %12) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %15 = "llvm.select"(%14, %12, %arg3) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%15) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "single_bit2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i64):
    %6 = "llvm.mlir.constant"() <{value = 2048 : i64}> : () -> i64
    %7 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %8 = "llvm.and"(%arg2, %6) : (i64, i64) -> i64
    %9 = "llvm.icmp"(%8, %7) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %10 = "llvm.select"(%9, %7, %arg2) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%10) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i80, i64)>, linkage = #llvm.linkage<external>, sym_name = "single_bit3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i80, %arg1: i64):
    %0 = "llvm.mlir.constant"() <{value = 18446744073709551616 : i80}> : () -> i80
    %1 = "llvm.mlir.constant"() <{value = 0 : i80}> : () -> i80
    %2 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %3 = "llvm.and"(%arg0, %0) : (i80, i80) -> i80
    %4 = "llvm.icmp"(%3, %1) <{predicate = 0 : i64}> : (i80, i80) -> i1
    %5 = "llvm.select"(%4, %2, %arg1) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%5) : (i64) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

