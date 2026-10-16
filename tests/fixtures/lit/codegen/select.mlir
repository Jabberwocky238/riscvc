"builtin.module"() ({
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 4 : i64, global_type = i32, linkage = #llvm.linkage<external>, sym_name = "select_redundant_czero_eqz_data", unnamed_addr = 0 : i64, value = 0 : i32, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16, i8)>, linkage = #llvm.linkage<external>, sym_name = "select_xor_1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg138: i16, %arg139: i8):
    %228 = "llvm.mlir.constant"() <{value = 1 : i8}> : () -> i8
    %229 = "llvm.mlir.constant"() <{value = 0 : i8}> : () -> i8
    %230 = "llvm.mlir.constant"() <{value = 43 : i16}> : () -> i16
    %231 = "llvm.and"(%arg139, %228) : (i8, i8) -> i8
    %232 = "llvm.icmp"(%231, %229) <{predicate = 0 : i64}> : (i8, i8) -> i1
    %233 = "llvm.xor"(%arg138, %230) : (i16, i16) -> i16
    %234 = "llvm.select"(%232, %arg138, %233) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i16, i16) -> i16
    "llvm.return"(%234) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16, i8)>, linkage = #llvm.linkage<external>, sym_name = "select_xor_1b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg136: i16, %arg137: i8):
    %222 = "llvm.mlir.constant"() <{value = 1 : i8}> : () -> i8
    %223 = "llvm.mlir.constant"() <{value = 43 : i16}> : () -> i16
    %224 = "llvm.and"(%arg137, %222) : (i8, i8) -> i8
    %225 = "llvm.icmp"(%224, %222) <{predicate = 1 : i64}> : (i8, i8) -> i1
    %226 = "llvm.xor"(%arg136, %223) : (i16, i16) -> i16
    %227 = "llvm.select"(%225, %arg136, %226) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i16, i16) -> i16
    "llvm.return"(%227) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i8)>, linkage = #llvm.linkage<external>, sym_name = "select_xor_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg133: i32, %arg134: i32, %arg135: i8):
    %216 = "llvm.mlir.constant"() <{value = 1 : i8}> : () -> i8
    %217 = "llvm.mlir.constant"() <{value = 0 : i8}> : () -> i8
    %218 = "llvm.and"(%arg135, %216) : (i8, i8) -> i8
    %219 = "llvm.icmp"(%218, %217) <{predicate = 0 : i64}> : (i8, i8) -> i1
    %220 = "llvm.xor"(%arg134, %arg133) : (i32, i32) -> i32
    %221 = "llvm.select"(%219, %arg133, %220) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%221) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i8)>, linkage = #llvm.linkage<external>, sym_name = "select_xor_2b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg130: i32, %arg131: i32, %arg132: i8):
    %211 = "llvm.mlir.constant"() <{value = 1 : i8}> : () -> i8
    %212 = "llvm.and"(%arg132, %211) : (i8, i8) -> i8
    %213 = "llvm.icmp"(%212, %211) <{predicate = 1 : i64}> : (i8, i8) -> i1
    %214 = "llvm.xor"(%arg131, %arg130) : (i32, i32) -> i32
    %215 = "llvm.select"(%213, %arg130, %214) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%215) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16, i8)>, linkage = #llvm.linkage<external>, sym_name = "select_xor_3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg128: i16, %arg129: i8):
    %204 = "llvm.mlir.constant"() <{value = 1 : i8}> : () -> i8
    %205 = "llvm.mlir.constant"() <{value = 0 : i8}> : () -> i8
    %206 = "llvm.mlir.constant"() <{value = 43 : i16}> : () -> i16
    %207 = "llvm.and"(%arg129, %204) : (i8, i8) -> i8
    %208 = "llvm.icmp"(%207, %205) <{predicate = 0 : i64}> : (i8, i8) -> i1
    %209 = "llvm.xor"(%arg128, %206) : (i16, i16) -> i16
    %210 = "llvm.select"(%208, %209, %arg128) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i16, i16) -> i16
    "llvm.return"(%210) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16, i8)>, linkage = #llvm.linkage<external>, sym_name = "select_xor_3b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg126: i16, %arg127: i8):
    %198 = "llvm.mlir.constant"() <{value = 1 : i8}> : () -> i8
    %199 = "llvm.mlir.constant"() <{value = 43 : i16}> : () -> i16
    %200 = "llvm.and"(%arg127, %198) : (i8, i8) -> i8
    %201 = "llvm.icmp"(%200, %198) <{predicate = 1 : i64}> : (i8, i8) -> i1
    %202 = "llvm.xor"(%arg126, %199) : (i16, i16) -> i16
    %203 = "llvm.select"(%201, %202, %arg126) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i16, i16) -> i16
    "llvm.return"(%203) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i8)>, linkage = #llvm.linkage<external>, sym_name = "select_xor_4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg123: i32, %arg124: i32, %arg125: i8):
    %192 = "llvm.mlir.constant"() <{value = 1 : i8}> : () -> i8
    %193 = "llvm.mlir.constant"() <{value = 0 : i8}> : () -> i8
    %194 = "llvm.and"(%arg125, %192) : (i8, i8) -> i8
    %195 = "llvm.icmp"(%194, %193) <{predicate = 0 : i64}> : (i8, i8) -> i1
    %196 = "llvm.xor"(%arg124, %arg123) : (i32, i32) -> i32
    %197 = "llvm.select"(%195, %196, %arg123) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%197) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i8)>, linkage = #llvm.linkage<external>, sym_name = "select_xor_4b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg120: i32, %arg121: i32, %arg122: i8):
    %187 = "llvm.mlir.constant"() <{value = 1 : i8}> : () -> i8
    %188 = "llvm.and"(%arg122, %187) : (i8, i8) -> i8
    %189 = "llvm.icmp"(%188, %187) <{predicate = 1 : i64}> : (i8, i8) -> i1
    %190 = "llvm.xor"(%arg121, %arg120) : (i32, i32) -> i32
    %191 = "llvm.select"(%189, %190, %arg120) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%191) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {}], function_type = !llvm.func<i32 (i1, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_xor_5", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg118: i1, %arg119: i32):
    %184 = "llvm.mlir.constant"() <{value = 128 : i32}> : () -> i32
    %185 = "llvm.xor"(%arg119, %184) : (i32, i32) -> i32
    %186 = "llvm.select"(%arg118, %184, %185) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%186) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i8)>, linkage = #llvm.linkage<external>, sym_name = "select_or", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg115: i32, %arg116: i32, %arg117: i8):
    %178 = "llvm.mlir.constant"() <{value = 1 : i8}> : () -> i8
    %179 = "llvm.mlir.constant"() <{value = 0 : i8}> : () -> i8
    %180 = "llvm.and"(%arg117, %178) : (i8, i8) -> i8
    %181 = "llvm.icmp"(%180, %179) <{predicate = 0 : i64}> : (i8, i8) -> i1
    %182 = "llvm.or"(%arg116, %arg115) : (i32, i32) -> i32
    %183 = "llvm.select"(%181, %arg115, %182) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%183) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i8)>, linkage = #llvm.linkage<external>, sym_name = "select_or_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg112: i32, %arg113: i32, %arg114: i8):
    %173 = "llvm.mlir.constant"() <{value = 1 : i8}> : () -> i8
    %174 = "llvm.and"(%arg114, %173) : (i8, i8) -> i8
    %175 = "llvm.icmp"(%174, %173) <{predicate = 1 : i64}> : (i8, i8) -> i1
    %176 = "llvm.or"(%arg113, %arg112) : (i32, i32) -> i32
    %177 = "llvm.select"(%175, %arg112, %176) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%177) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_or_1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg109: i32, %arg110: i32, %arg111: i32):
    %167 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %168 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %169 = "llvm.and"(%arg111, %167) : (i32, i32) -> i32
    %170 = "llvm.icmp"(%169, %168) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %171 = "llvm.or"(%arg110, %arg109) : (i32, i32) -> i32
    %172 = "llvm.select"(%170, %arg109, %171) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%172) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_or_1b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg106: i32, %arg107: i32, %arg108: i32):
    %162 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %163 = "llvm.and"(%arg108, %162) : (i32, i32) -> i32
    %164 = "llvm.icmp"(%163, %162) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %165 = "llvm.or"(%arg107, %arg106) : (i32, i32) -> i32
    %166 = "llvm.select"(%164, %arg106, %165) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%166) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i8)>, linkage = #llvm.linkage<external>, sym_name = "select_or_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg103: i32, %arg104: i32, %arg105: i8):
    %156 = "llvm.mlir.constant"() <{value = 1 : i8}> : () -> i8
    %157 = "llvm.mlir.constant"() <{value = 0 : i8}> : () -> i8
    %158 = "llvm.and"(%arg105, %156) : (i8, i8) -> i8
    %159 = "llvm.icmp"(%158, %157) <{predicate = 0 : i64}> : (i8, i8) -> i1
    %160 = "llvm.or"(%arg104, %arg103) : (i32, i32) -> i32
    %161 = "llvm.select"(%159, %160, %arg103) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%161) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i8)>, linkage = #llvm.linkage<external>, sym_name = "select_or_2b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg100: i32, %arg101: i32, %arg102: i8):
    %151 = "llvm.mlir.constant"() <{value = 1 : i8}> : () -> i8
    %152 = "llvm.and"(%arg102, %151) : (i8, i8) -> i8
    %153 = "llvm.icmp"(%152, %151) <{predicate = 1 : i64}> : (i8, i8) -> i1
    %154 = "llvm.or"(%arg101, %arg100) : (i32, i32) -> i32
    %155 = "llvm.select"(%153, %154, %arg100) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%155) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_or_3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg97: i32, %arg98: i32, %arg99: i32):
    %145 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %146 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %147 = "llvm.and"(%arg99, %145) : (i32, i32) -> i32
    %148 = "llvm.icmp"(%147, %146) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %149 = "llvm.or"(%arg98, %arg97) : (i32, i32) -> i32
    %150 = "llvm.select"(%148, %149, %arg97) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%150) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_or_3b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg94: i32, %arg95: i32, %arg96: i32):
    %140 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %141 = "llvm.and"(%arg96, %140) : (i32, i32) -> i32
    %142 = "llvm.icmp"(%141, %140) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %143 = "llvm.or"(%arg95, %arg94) : (i32, i32) -> i32
    %144 = "llvm.select"(%142, %143, %arg94) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%144) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {}], function_type = !llvm.func<i32 (i1, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_or_4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg92: i1, %arg93: i32):
    %137 = "llvm.mlir.constant"() <{value = 128 : i32}> : () -> i32
    %138 = "llvm.or"(%arg93, %137) : (i32, i32) -> i32
    %139 = "llvm.select"(%arg92, %137, %138) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%139) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {}, {}], function_type = !llvm.func<i32 (i1, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_add_1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg89: i1, %arg90: i32, %arg91: i32):
    %135 = "llvm.add"(%arg90, %arg91) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %136 = "llvm.select"(%arg89, %135, %arg91) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%136) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {}, {}], function_type = !llvm.func<i32 (i1, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_add_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg86: i1, %arg87: i32, %arg88: i32):
    %133 = "llvm.add"(%arg87, %arg88) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %134 = "llvm.select"(%arg86, %arg87, %133) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%134) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {}], function_type = !llvm.func<i32 (i1, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_add_3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg84: i1, %arg85: i32):
    %130 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %131 = "llvm.add"(%arg85, %130) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %132 = "llvm.select"(%arg84, %arg85, %131) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%132) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {}], function_type = !llvm.func<i32 (i1, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_add_4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg82: i1, %arg83: i32):
    %127 = "llvm.mlir.constant"() <{value = 128 : i32}> : () -> i32
    %128 = "llvm.add"(%arg83, %127) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %129 = "llvm.select"(%arg82, %127, %128) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%129) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {}], function_type = !llvm.func<i64 (i1, i64)>, linkage = #llvm.linkage<external>, sym_name = "select_add_5", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg80: i1, %arg81: i64):
    %124 = "llvm.mlir.constant"() <{value = 128 : i64}> : () -> i64
    %125 = "llvm.add"(%arg81, %124) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %126 = "llvm.select"(%arg80, %124, %125) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%126) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {}], function_type = !llvm.func<i64 (i1, i64)>, linkage = #llvm.linkage<external>, sym_name = "select_add_6", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg78: i1, %arg79: i64):
    %121 = "llvm.mlir.constant"() <{value = 58349 : i64}> : () -> i64
    %122 = "llvm.add"(%arg79, %121) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %123 = "llvm.select"(%arg78, %121, %122) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%123) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {}, {}], function_type = !llvm.func<i32 (i1, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_sub_1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg75: i1, %arg76: i32, %arg77: i32):
    %119 = "llvm.sub"(%arg76, %arg77) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %120 = "llvm.select"(%arg75, %119, %arg77) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%120) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {}, {}], function_type = !llvm.func<i32 (i1, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_sub_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg72: i1, %arg73: i32, %arg74: i32):
    %117 = "llvm.sub"(%arg73, %arg74) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %118 = "llvm.select"(%arg72, %arg73, %117) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%118) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {}], function_type = !llvm.func<i32 (i1, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_sub_3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg70: i1, %arg71: i32):
    %114 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %115 = "llvm.sub"(%arg71, %114) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %116 = "llvm.select"(%arg70, %arg71, %115) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%116) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {}], function_type = !llvm.func<i32 (i1, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_sub_4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg68: i1, %arg69: i32):
    %111 = "llvm.mlir.constant"() <{value = 128 : i32}> : () -> i32
    %112 = "llvm.sub"(%arg69, %111) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %113 = "llvm.select"(%arg68, %111, %112) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%113) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {}, {}], function_type = !llvm.func<i32 (i1, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_and_1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg65: i1, %arg66: i32, %arg67: i32):
    %109 = "llvm.and"(%arg66, %arg67) : (i32, i32) -> i32
    %110 = "llvm.select"(%arg65, %109, %arg67) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%110) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {}, {}], function_type = !llvm.func<i32 (i1, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_and_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg62: i1, %arg63: i32, %arg64: i32):
    %107 = "llvm.and"(%arg63, %arg64) : (i32, i32) -> i32
    %108 = "llvm.select"(%arg62, %arg63, %107) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%108) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {}], function_type = !llvm.func<i32 (i1, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_and_3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg60: i1, %arg61: i32):
    %104 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %105 = "llvm.and"(%arg61, %104) : (i32, i32) -> i32
    %106 = "llvm.select"(%arg60, %arg61, %105) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%106) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {}, {}], function_type = !llvm.func<i32 (i1, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_udiv_1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg57: i1, %arg58: i32, %arg59: i32):
    %102 = "llvm.udiv"(%arg58, %arg59) : (i32, i32) -> i32
    %103 = "llvm.select"(%arg57, %102, %arg59) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%103) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {}, {}], function_type = !llvm.func<i32 (i1, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_udiv_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg54: i1, %arg55: i32, %arg56: i32):
    %100 = "llvm.udiv"(%arg55, %arg56) : (i32, i32) -> i32
    %101 = "llvm.select"(%arg54, %arg55, %100) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%101) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {}], function_type = !llvm.func<i32 (i1, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_udiv_3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg52: i1, %arg53: i32):
    %97 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %98 = "llvm.udiv"(%arg53, %97) : (i32, i32) -> i32
    %99 = "llvm.select"(%arg52, %arg53, %98) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%99) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {}, {}], function_type = !llvm.func<i32 (i1, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_shl_1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg49: i1, %arg50: i32, %arg51: i32):
    %95 = "llvm.shl"(%arg50, %arg51) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %96 = "llvm.select"(%arg49, %95, %arg51) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%96) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {}, {}], function_type = !llvm.func<i32 (i1, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_shl_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg46: i1, %arg47: i32, %arg48: i32):
    %93 = "llvm.shl"(%arg47, %arg48) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %94 = "llvm.select"(%arg46, %arg47, %93) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%94) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {}], function_type = !llvm.func<i32 (i1, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_shl_3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg44: i1, %arg45: i32):
    %90 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %91 = "llvm.shl"(%arg45, %90) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %92 = "llvm.select"(%arg44, %arg45, %91) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%92) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {}, {}], function_type = !llvm.func<i32 (i1, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_ashr_1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg41: i1, %arg42: i32, %arg43: i32):
    %88 = "llvm.ashr"(%arg42, %arg43) : (i32, i32) -> i32
    %89 = "llvm.select"(%arg41, %88, %arg43) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%89) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {}, {}], function_type = !llvm.func<i32 (i1, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_ashr_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg38: i1, %arg39: i32, %arg40: i32):
    %86 = "llvm.ashr"(%arg39, %arg40) : (i32, i32) -> i32
    %87 = "llvm.select"(%arg38, %arg39, %86) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%87) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {}], function_type = !llvm.func<i32 (i1, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_ashr_3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg36: i1, %arg37: i32):
    %83 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %84 = "llvm.ashr"(%arg37, %83) : (i32, i32) -> i32
    %85 = "llvm.select"(%arg36, %arg37, %84) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%85) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {}, {}], function_type = !llvm.func<i32 (i1, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_lshr_1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg33: i1, %arg34: i32, %arg35: i32):
    %81 = "llvm.lshr"(%arg34, %arg35) : (i32, i32) -> i32
    %82 = "llvm.select"(%arg33, %81, %arg35) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%82) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {}, {}], function_type = !llvm.func<i32 (i1, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_lshr_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg30: i1, %arg31: i32, %arg32: i32):
    %79 = "llvm.lshr"(%arg31, %arg32) : (i32, i32) -> i32
    %80 = "llvm.select"(%arg30, %arg31, %79) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%80) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {}], function_type = !llvm.func<i32 (i1, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_lshr_3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg28: i1, %arg29: i32):
    %76 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %77 = "llvm.lshr"(%arg29, %76) : (i32, i32) -> i32
    %78 = "llvm.select"(%arg28, %arg29, %77) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%78) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cst_not1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg26: i32, %arg27: i32):
    %72 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %73 = "llvm.mlir.constant"() <{value = -6 : i32}> : () -> i32
    %74 = "llvm.icmp"(%arg26, %arg27) <{predicate = 2 : i64}> : (i32, i32) -> i1
    %75 = "llvm.select"(%74, %72, %73) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%75) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cst_not2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg25: i32):
    %67 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %68 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %69 = "llvm.mlir.constant"() <{value = -6 : i32}> : () -> i32
    %70 = "llvm.icmp"(%arg25, %67) <{predicate = 2 : i64}> : (i32, i32) -> i1
    %71 = "llvm.select"(%70, %68, %69) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%71) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cst_not3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg24: i32):
    %62 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %63 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %64 = "llvm.mlir.constant"() <{value = -6 : i32}> : () -> i32
    %65 = "llvm.icmp"(%arg24, %62) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %66 = "llvm.select"(%65, %63, %64) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%66) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cst_not4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg22: i32, %arg23: i32):
    %58 = "llvm.mlir.constant"() <{value = -2147483648 : i32}> : () -> i32
    %59 = "llvm.mlir.constant"() <{value = 2147483647 : i32}> : () -> i32
    %60 = "llvm.icmp"(%arg22, %arg23) <{predicate = 2 : i64}> : (i32, i32) -> i1
    %61 = "llvm.select"(%60, %58, %59) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%61) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cst_not5", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg20: i32, %arg21: i32):
    %54 = "llvm.mlir.constant"() <{value = -65532 : i32}> : () -> i32
    %55 = "llvm.mlir.constant"() <{value = 65531 : i32}> : () -> i32
    %56 = "llvm.icmp"(%arg20, %arg21) <{predicate = 2 : i64}> : (i32, i32) -> i1
    %57 = "llvm.select"(%56, %54, %55) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%57) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_cst_unknown", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg18: i32, %arg19: i32):
    %50 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %51 = "llvm.mlir.constant"() <{value = -7 : i32}> : () -> i32
    %52 = "llvm.icmp"(%arg18, %arg19) <{predicate = 2 : i64}> : (i32, i32) -> i1
    %53 = "llvm.select"(%52, %50, %51) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%53) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}], function_type = !llvm.func<i32 (i1)>, linkage = #llvm.linkage<external>, sym_name = "select_cst1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg17: i1):
    %47 = "llvm.mlir.constant"() <{value = 10 : i32}> : () -> i32
    %48 = "llvm.mlir.constant"() <{value = 20 : i32}> : () -> i32
    %49 = "llvm.select"(%arg17, %47, %48) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%49) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}], function_type = !llvm.func<i32 (i1)>, linkage = #llvm.linkage<external>, sym_name = "select_cst2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg16: i1):
    %44 = "llvm.mlir.constant"() <{value = 10 : i32}> : () -> i32
    %45 = "llvm.mlir.constant"() <{value = 20000 : i32}> : () -> i32
    %46 = "llvm.select"(%arg16, %44, %45) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%46) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}], function_type = !llvm.func<i32 (i1)>, linkage = #llvm.linkage<external>, sym_name = "select_cst3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg15: i1):
    %41 = "llvm.mlir.constant"() <{value = 30000 : i32}> : () -> i32
    %42 = "llvm.mlir.constant"() <{value = 20000 : i32}> : () -> i32
    %43 = "llvm.select"(%arg15, %41, %42) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%43) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}], function_type = !llvm.func<i32 (i1)>, linkage = #llvm.linkage<external>, sym_name = "select_cst4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: i1):
    %38 = "llvm.mlir.constant"() <{value = -2048 : i32}> : () -> i32
    %39 = "llvm.mlir.constant"() <{value = 2047 : i32}> : () -> i32
    %40 = "llvm.select"(%arg14, %38, %39) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%40) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}], function_type = !llvm.func<i32 (i1)>, linkage = #llvm.linkage<external>, sym_name = "select_cst5", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg13: i1):
    %35 = "llvm.mlir.constant"() <{value = 2047 : i32}> : () -> i32
    %36 = "llvm.mlir.constant"() <{value = 2049 : i32}> : () -> i32
    %37 = "llvm.select"(%arg13, %35, %36) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%37) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}], function_type = !llvm.func<i32 (i1)>, linkage = #llvm.linkage<external>, sym_name = "select_cst5_invert", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: i1):
    %32 = "llvm.mlir.constant"() <{value = 2049 : i32}> : () -> i32
    %33 = "llvm.mlir.constant"() <{value = 2047 : i32}> : () -> i32
    %34 = "llvm.select"(%arg12, %32, %33) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%34) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}], function_type = !llvm.func<i32 (i1)>, linkage = #llvm.linkage<external>, sym_name = "select_cst_diff2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg11: i1):
    %29 = "llvm.mlir.constant"() <{value = 120 : i32}> : () -> i32
    %30 = "llvm.mlir.constant"() <{value = 122 : i32}> : () -> i32
    %31 = "llvm.select"(%arg11, %29, %30) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%31) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}], function_type = !llvm.func<i32 (i1)>, linkage = #llvm.linkage<external>, sym_name = "select_cst_diff2_invert", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: i1):
    %26 = "llvm.mlir.constant"() <{value = 122 : i32}> : () -> i32
    %27 = "llvm.mlir.constant"() <{value = 120 : i32}> : () -> i32
    %28 = "llvm.select"(%arg10, %26, %27) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%28) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}], function_type = !llvm.func<i32 (i1)>, linkage = #llvm.linkage<external>, sym_name = "select_cst_diff4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: i1):
    %23 = "llvm.mlir.constant"() <{value = 10 : i32}> : () -> i32
    %24 = "llvm.mlir.constant"() <{value = 6 : i32}> : () -> i32
    %25 = "llvm.select"(%arg9, %23, %24) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%25) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}], function_type = !llvm.func<i32 (i1)>, linkage = #llvm.linkage<external>, sym_name = "select_cst_diff4_invert", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: i1):
    %20 = "llvm.mlir.constant"() <{value = 6 : i32}> : () -> i32
    %21 = "llvm.mlir.constant"() <{value = 10 : i32}> : () -> i32
    %22 = "llvm.select"(%arg8, %20, %21) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%22) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}], function_type = !llvm.func<i32 (i1)>, linkage = #llvm.linkage<external>, sym_name = "select_cst_diff8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg7: i1):
    %17 = "llvm.mlir.constant"() <{value = 14 : i32}> : () -> i32
    %18 = "llvm.mlir.constant"() <{value = 6 : i32}> : () -> i32
    %19 = "llvm.select"(%arg7, %17, %18) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%19) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}], function_type = !llvm.func<i32 (i1)>, linkage = #llvm.linkage<external>, sym_name = "select_cst_diff8_invert", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: i1):
    %14 = "llvm.mlir.constant"() <{value = 6 : i32}> : () -> i32
    %15 = "llvm.mlir.constant"() <{value = 14 : i32}> : () -> i32
    %16 = "llvm.select"(%arg6, %14, %15) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%16) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}], function_type = !llvm.func<i32 (i1)>, linkage = #llvm.linkage<external>, sym_name = "select_cst_diff1024", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: i1):
    %11 = "llvm.mlir.constant"() <{value = 1030 : i32}> : () -> i32
    %12 = "llvm.mlir.constant"() <{value = 6 : i32}> : () -> i32
    %13 = "llvm.select"(%arg5, %11, %12) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%13) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}], function_type = !llvm.func<i32 (i1)>, linkage = #llvm.linkage<external>, sym_name = "select_cst_diff1024_invert", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i1):
    %8 = "llvm.mlir.constant"() <{value = 6 : i32}> : () -> i32
    %9 = "llvm.mlir.constant"() <{value = 1030 : i32}> : () -> i32
    %10 = "llvm.select"(%arg4, %8, %9) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%10) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "select_redundant_czero_eqz1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: !llvm.ptr, %arg3: !llvm.ptr):
    %4 = "llvm.mlir.zero"() : () -> !llvm.ptr
    %5 = "llvm.mlir.addressof"() <{global_name = @select_redundant_czero_eqz_data}> : () -> !llvm.ptr
    %6 = "llvm.icmp"(%arg2, %4) <{predicate = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> i1
    %7 = "llvm.select"(%6, %5, %arg2) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, !llvm.ptr, !llvm.ptr) -> !llvm.ptr
    "llvm.store"(%7, %arg3) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "select_redundant_czero_eqz2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: !llvm.ptr, %arg1: !llvm.ptr):
    %0 = "llvm.mlir.zero"() : () -> !llvm.ptr
    %1 = "llvm.mlir.addressof"() <{global_name = @select_redundant_czero_eqz_data}> : () -> !llvm.ptr
    %2 = "llvm.icmp"(%arg0, %0) <{predicate = 1 : i64}> : (!llvm.ptr, !llvm.ptr) -> i1
    %3 = "llvm.select"(%2, %arg0, %1) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, !llvm.ptr, !llvm.ptr) -> !llvm.ptr
    "llvm.store"(%3, %arg1) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

