"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64, f64, f64, f64)>, linkage = #llvm.linkage<external>, sym_name = "test_reassoc_fadd1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg307: f64, %arg308: f64, %arg309: f64, %arg310: f64):
    %248 = "llvm.fadd"(%arg307, %arg308) <{fastmathFlags = #llvm.fastmath<nsz, reassoc>}> : (f64, f64) -> f64
    %249 = "llvm.fadd"(%248, %arg309) <{fastmathFlags = #llvm.fastmath<nsz, reassoc>}> : (f64, f64) -> f64
    %250 = "llvm.fadd"(%249, %arg310) <{fastmathFlags = #llvm.fastmath<nsz, reassoc>}> : (f64, f64) -> f64
    "llvm.return"(%250) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64, f64, f64, f64)>, linkage = #llvm.linkage<external>, sym_name = "test_reassoc_fadd2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg303: f64, %arg304: f64, %arg305: f64, %arg306: f64):
    %245 = "llvm.fadd"(%arg303, %arg304) <{fastmathFlags = #llvm.fastmath<nsz, reassoc>}> : (f64, f64) -> f64
    %246 = "llvm.fadd"(%arg305, %245) <{fastmathFlags = #llvm.fastmath<nsz, reassoc>}> : (f64, f64) -> f64
    %247 = "llvm.fadd"(%246, %arg306) <{fastmathFlags = #llvm.fastmath<nsz, reassoc>}> : (f64, f64) -> f64
    "llvm.return"(%247) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64, f64, f64, f64)>, linkage = #llvm.linkage<external>, sym_name = "test_reassoc_fadd3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg299: f64, %arg300: f64, %arg301: f64, %arg302: f64):
    %242 = "llvm.fadd"(%arg299, %arg300) <{fastmathFlags = #llvm.fastmath<nsz, reassoc>}> : (f64, f64) -> f64
    %243 = "llvm.fadd"(%242, %arg301) <{fastmathFlags = #llvm.fastmath<nsz, reassoc>}> : (f64, f64) -> f64
    %244 = "llvm.fadd"(%arg302, %243) <{fastmathFlags = #llvm.fastmath<nsz, reassoc>}> : (f64, f64) -> f64
    "llvm.return"(%244) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64, f64, f64, f64)>, linkage = #llvm.linkage<external>, sym_name = "test_reassoc_fadd4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg295: f64, %arg296: f64, %arg297: f64, %arg298: f64):
    %239 = "llvm.fadd"(%arg295, %arg296) <{fastmathFlags = #llvm.fastmath<nsz, reassoc>}> : (f64, f64) -> f64
    %240 = "llvm.fadd"(%arg297, %239) <{fastmathFlags = #llvm.fastmath<nsz, reassoc>}> : (f64, f64) -> f64
    %241 = "llvm.fadd"(%arg298, %240) <{fastmathFlags = #llvm.fastmath<nsz, reassoc>}> : (f64, f64) -> f64
    "llvm.return"(%241) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64, f64, f64, f64)>, linkage = #llvm.linkage<external>, sym_name = "test_reassoc_fmul1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg291: f64, %arg292: f64, %arg293: f64, %arg294: f64):
    %236 = "llvm.fmul"(%arg291, %arg292) <{fastmathFlags = #llvm.fastmath<nsz, reassoc>}> : (f64, f64) -> f64
    %237 = "llvm.fmul"(%236, %arg293) <{fastmathFlags = #llvm.fastmath<nsz, reassoc>}> : (f64, f64) -> f64
    %238 = "llvm.fmul"(%237, %arg294) <{fastmathFlags = #llvm.fastmath<nsz, reassoc>}> : (f64, f64) -> f64
    "llvm.return"(%238) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64, f64, f64, f64)>, linkage = #llvm.linkage<external>, sym_name = "test_reassoc_fmul2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg287: f64, %arg288: f64, %arg289: f64, %arg290: f64):
    %233 = "llvm.fmul"(%arg287, %arg288) <{fastmathFlags = #llvm.fastmath<nsz, reassoc>}> : (f64, f64) -> f64
    %234 = "llvm.fmul"(%arg289, %233) <{fastmathFlags = #llvm.fastmath<nsz, reassoc>}> : (f64, f64) -> f64
    %235 = "llvm.fmul"(%234, %arg290) <{fastmathFlags = #llvm.fastmath<nsz, reassoc>}> : (f64, f64) -> f64
    "llvm.return"(%235) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64, f64, f64, f64)>, linkage = #llvm.linkage<external>, sym_name = "test_reassoc_fmul3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg283: f64, %arg284: f64, %arg285: f64, %arg286: f64):
    %230 = "llvm.fmul"(%arg283, %arg284) <{fastmathFlags = #llvm.fastmath<nsz, reassoc>}> : (f64, f64) -> f64
    %231 = "llvm.fmul"(%230, %arg285) <{fastmathFlags = #llvm.fastmath<nsz, reassoc>}> : (f64, f64) -> f64
    %232 = "llvm.fmul"(%arg286, %231) <{fastmathFlags = #llvm.fastmath<nsz, reassoc>}> : (f64, f64) -> f64
    "llvm.return"(%232) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64, f64, f64, f64)>, linkage = #llvm.linkage<external>, sym_name = "test_reassoc_fmul4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg279: f64, %arg280: f64, %arg281: f64, %arg282: f64):
    %227 = "llvm.fmul"(%arg279, %arg280) <{fastmathFlags = #llvm.fastmath<nsz, reassoc>}> : (f64, f64) -> f64
    %228 = "llvm.fmul"(%arg281, %227) <{fastmathFlags = #llvm.fastmath<nsz, reassoc>}> : (f64, f64) -> f64
    %229 = "llvm.fmul"(%arg282, %228) <{fastmathFlags = #llvm.fastmath<nsz, reassoc>}> : (f64, f64) -> f64
    "llvm.return"(%229) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64, f64, f64, f64, f64, f64, f64)>, linkage = #llvm.linkage<external>, sym_name = "test_reassoc_big1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg272: f64, %arg273: f64, %arg274: f64, %arg275: f64, %arg276: f64, %arg277: f64, %arg278: f64):
    %221 = "llvm.fadd"(%arg272, %arg273) <{fastmathFlags = #llvm.fastmath<nsz, reassoc>}> : (f64, f64) -> f64
    %222 = "llvm.fadd"(%221, %arg274) <{fastmathFlags = #llvm.fastmath<nsz, reassoc>}> : (f64, f64) -> f64
    %223 = "llvm.fadd"(%222, %arg275) <{fastmathFlags = #llvm.fastmath<nsz, reassoc>}> : (f64, f64) -> f64
    %224 = "llvm.fadd"(%223, %arg276) <{fastmathFlags = #llvm.fastmath<nsz, reassoc>}> : (f64, f64) -> f64
    %225 = "llvm.fadd"(%224, %arg277) <{fastmathFlags = #llvm.fastmath<nsz, reassoc>}> : (f64, f64) -> f64
    %226 = "llvm.fadd"(%225, %arg278) <{fastmathFlags = #llvm.fastmath<nsz, reassoc>}> : (f64, f64) -> f64
    "llvm.return"(%226) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64, f64, i32, f64, i32, f64)>, linkage = #llvm.linkage<external>, sym_name = "test_reassoc_big2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg266: f64, %arg267: f64, %arg268: i32, %arg269: f64, %arg270: i32, %arg271: f64):
    %209 = "llvm.sitofp"(%arg268) : (i32) -> f64
    %210 = "llvm.sitofp"(%arg270) : (i32) -> f64
    %211 = "llvm.fmul"(%arg269, %209) <{fastmathFlags = #llvm.fastmath<nsz, reassoc>}> : (f64, f64) -> f64
    %212 = "llvm.fmul"(%210, %211) <{fastmathFlags = #llvm.fastmath<nsz, reassoc>}> : (f64, f64) -> f64
    %213 = "llvm.fmul"(%212, %arg267) <{fastmathFlags = #llvm.fastmath<nsz, reassoc>}> : (f64, f64) -> f64
    %214 = "llvm.fadd"(%arg266, %arg267) <{fastmathFlags = #llvm.fastmath<nsz, reassoc>}> : (f64, f64) -> f64
    %215 = "llvm.fadd"(%arg269, %214) <{fastmathFlags = #llvm.fastmath<nsz, reassoc>}> : (f64, f64) -> f64
    %216 = "llvm.fadd"(%arg269, %arg267) <{fastmathFlags = #llvm.fastmath<nsz, reassoc>}> : (f64, f64) -> f64
    %217 = "llvm.fmul"(%213, %arg266) <{fastmathFlags = #llvm.fastmath<nsz, reassoc>}> : (f64, f64) -> f64
    %218 = "llvm.fsub"(%arg271, %215) <{fastmathFlags = #llvm.fastmath<nsz, reassoc>}> : (f64, f64) -> f64
    %219 = "llvm.fmul"(%217, %216) <{fastmathFlags = #llvm.fastmath<nsz, reassoc>}> : (f64, f64) -> f64
    %220 = "llvm.fmul"(%218, %219) <{fastmathFlags = #llvm.fastmath<nsz, reassoc>}> : (f64, f64) -> f64
    "llvm.return"(%220) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64, f64, f64, f64)>, linkage = #llvm.linkage<external>, sym_name = "test_reassoc_fadd_flags_1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg262: f64, %arg263: f64, %arg264: f64, %arg265: f64):
    %206 = "llvm.fadd"(%arg262, %arg263) <{fastmathFlags = #llvm.fastmath<nsz, reassoc>}> : (f64, f64) -> f64
    %207 = "llvm.fadd"(%206, %arg264) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %208 = "llvm.fadd"(%207, %arg265) <{fastmathFlags = #llvm.fastmath<nsz, reassoc>}> : (f64, f64) -> f64
    "llvm.return"(%208) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64, f64, f64, f64)>, linkage = #llvm.linkage<external>, sym_name = "test_reassoc_fadd_flags_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg258: f64, %arg259: f64, %arg260: f64, %arg261: f64):
    %203 = "llvm.fadd"(%arg258, %arg259) <{fastmathFlags = #llvm.fastmath<nsz, reassoc>}> : (f64, f64) -> f64
    %204 = "llvm.fadd"(%203, %arg260) <{fastmathFlags = #llvm.fastmath<nsz, reassoc>}> : (f64, f64) -> f64
    %205 = "llvm.fadd"(%204, %arg261) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.return"(%205) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64, f64, f64, f64)>, linkage = #llvm.linkage<external>, sym_name = "test_fmadd1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg254: f64, %arg255: f64, %arg256: f64, %arg257: f64):
    %199 = "llvm.fmul"(%arg254, %arg255) <{fastmathFlags = #llvm.fastmath<contract>}> : (f64, f64) -> f64
    %200 = "llvm.fadd"(%199, %arg256) <{fastmathFlags = #llvm.fastmath<contract>}> : (f64, f64) -> f64
    %201 = "llvm.fadd"(%arg257, %199) <{fastmathFlags = #llvm.fastmath<contract>}> : (f64, f64) -> f64
    %202 = "llvm.fadd"(%200, %201) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.return"(%202) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64, f64, f64)>, linkage = #llvm.linkage<external>, sym_name = "test_fmadd2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg251: f64, %arg252: f64, %arg253: f64):
    %196 = "llvm.fmul"(%arg251, %arg252) <{fastmathFlags = #llvm.fastmath<contract>}> : (f64, f64) -> f64
    %197 = "llvm.fadd"(%196, %arg253) <{fastmathFlags = #llvm.fastmath<contract>}> : (f64, f64) -> f64
    %198 = "llvm.fdiv"(%197, %196) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.return"(%198) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64, f64, f64)>, linkage = #llvm.linkage<external>, sym_name = "test_fmsub", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg248: f64, %arg249: f64, %arg250: f64):
    %193 = "llvm.fmul"(%arg248, %arg249) <{fastmathFlags = #llvm.fastmath<contract>}> : (f64, f64) -> f64
    %194 = "llvm.fsub"(%193, %arg250) <{fastmathFlags = #llvm.fastmath<contract>}> : (f64, f64) -> f64
    %195 = "llvm.fdiv"(%194, %193) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.return"(%195) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64, f64, f64)>, linkage = #llvm.linkage<external>, sym_name = "test_fnmsub", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg245: f64, %arg246: f64, %arg247: f64):
    %190 = "llvm.fmul"(%arg245, %arg246) <{fastmathFlags = #llvm.fastmath<contract>}> : (f64, f64) -> f64
    %191 = "llvm.fsub"(%arg247, %190) <{fastmathFlags = #llvm.fastmath<contract>}> : (f64, f64) -> f64
    %192 = "llvm.fdiv"(%191, %190) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.return"(%192) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64, f64, f64, f64)>, linkage = #llvm.linkage<external>, sym_name = "test_reassoc_fsub1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg241: f64, %arg242: f64, %arg243: f64, %arg244: f64):
    %187 = "llvm.fadd"(%arg241, %arg242) <{fastmathFlags = #llvm.fastmath<nsz, reassoc>}> : (f64, f64) -> f64
    %188 = "llvm.fadd"(%187, %arg243) <{fastmathFlags = #llvm.fastmath<nsz, reassoc>}> : (f64, f64) -> f64
    %189 = "llvm.fsub"(%188, %arg244) <{fastmathFlags = #llvm.fastmath<nsz, reassoc>}> : (f64, f64) -> f64
    "llvm.return"(%189) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64, f64, f64, f64)>, linkage = #llvm.linkage<external>, sym_name = "test_reassoc_fsub2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg237: f64, %arg238: f64, %arg239: f64, %arg240: f64):
    %184 = "llvm.fadd"(%arg237, %arg238) <{fastmathFlags = #llvm.fastmath<nsz, reassoc>}> : (f64, f64) -> f64
    %185 = "llvm.fsub"(%184, %arg239) <{fastmathFlags = #llvm.fastmath<nsz, reassoc>}> : (f64, f64) -> f64
    %186 = "llvm.fadd"(%185, %arg240) <{fastmathFlags = #llvm.fastmath<nsz, reassoc>}> : (f64, f64) -> f64
    "llvm.return"(%186) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64, f64, f64, f64)>, linkage = #llvm.linkage<external>, sym_name = "test_reassoc_fsub3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg233: f64, %arg234: f64, %arg235: f64, %arg236: f64):
    %181 = "llvm.fadd"(%arg233, %arg234) <{fastmathFlags = #llvm.fastmath<nsz, reassoc>}> : (f64, f64) -> f64
    %182 = "llvm.fsub"(%181, %arg235) <{fastmathFlags = #llvm.fastmath<nsz, reassoc>}> : (f64, f64) -> f64
    %183 = "llvm.fsub"(%182, %arg236) <{fastmathFlags = #llvm.fastmath<nsz, reassoc>}> : (f64, f64) -> f64
    "llvm.return"(%183) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64, f64, f64, f64)>, linkage = #llvm.linkage<external>, sym_name = "test_reassoc_fsub4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg229: f64, %arg230: f64, %arg231: f64, %arg232: f64):
    %178 = "llvm.fadd"(%arg229, %arg230) <{fastmathFlags = #llvm.fastmath<nsz, reassoc>}> : (f64, f64) -> f64
    %179 = "llvm.fadd"(%arg231, %178) <{fastmathFlags = #llvm.fastmath<nsz, reassoc>}> : (f64, f64) -> f64
    %180 = "llvm.fsub"(%179, %arg232) <{fastmathFlags = #llvm.fastmath<nsz, reassoc>}> : (f64, f64) -> f64
    "llvm.return"(%180) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64, f64, f64, f64)>, linkage = #llvm.linkage<external>, sym_name = "test_reassoc_fsub5", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg225: f64, %arg226: f64, %arg227: f64, %arg228: f64):
    %175 = "llvm.fadd"(%arg225, %arg226) <{fastmathFlags = #llvm.fastmath<nsz, reassoc>}> : (f64, f64) -> f64
    %176 = "llvm.fsub"(%arg227, %175) <{fastmathFlags = #llvm.fastmath<nsz, reassoc>}> : (f64, f64) -> f64
    %177 = "llvm.fadd"(%176, %arg228) <{fastmathFlags = #llvm.fastmath<nsz, reassoc>}> : (f64, f64) -> f64
    "llvm.return"(%177) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64, f64, f64, f64)>, linkage = #llvm.linkage<external>, sym_name = "test_reassoc_fsub6", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg221: f64, %arg222: f64, %arg223: f64, %arg224: f64):
    %172 = "llvm.fadd"(%arg221, %arg222) <{fastmathFlags = #llvm.fastmath<nsz, reassoc>}> : (f64, f64) -> f64
    %173 = "llvm.fsub"(%arg223, %172) <{fastmathFlags = #llvm.fastmath<nsz, reassoc>}> : (f64, f64) -> f64
    %174 = "llvm.fsub"(%173, %arg224) <{fastmathFlags = #llvm.fastmath<nsz, reassoc>}> : (f64, f64) -> f64
    "llvm.return"(%174) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64, f64, f64, f64)>, linkage = #llvm.linkage<external>, sym_name = "test_reassoc_fsub7", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg217: f64, %arg218: f64, %arg219: f64, %arg220: f64):
    %169 = "llvm.fadd"(%arg217, %arg218) <{fastmathFlags = #llvm.fastmath<nsz, reassoc>}> : (f64, f64) -> f64
    %170 = "llvm.fadd"(%169, %arg219) <{fastmathFlags = #llvm.fastmath<nsz, reassoc>}> : (f64, f64) -> f64
    %171 = "llvm.fsub"(%arg220, %170) <{fastmathFlags = #llvm.fastmath<nsz, reassoc>}> : (f64, f64) -> f64
    "llvm.return"(%171) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64, f64, f64, f64)>, linkage = #llvm.linkage<external>, sym_name = "test_reassoc_fsub8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg213: f64, %arg214: f64, %arg215: f64, %arg216: f64):
    %166 = "llvm.fadd"(%arg213, %arg214) <{fastmathFlags = #llvm.fastmath<nsz, reassoc>}> : (f64, f64) -> f64
    %167 = "llvm.fsub"(%166, %arg215) <{fastmathFlags = #llvm.fastmath<nsz, reassoc>}> : (f64, f64) -> f64
    %168 = "llvm.fadd"(%arg216, %167) <{fastmathFlags = #llvm.fastmath<nsz, reassoc>}> : (f64, f64) -> f64
    "llvm.return"(%168) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64, f64, f64, f64)>, linkage = #llvm.linkage<external>, sym_name = "test_reassoc_fsub9", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg209: f64, %arg210: f64, %arg211: f64, %arg212: f64):
    %163 = "llvm.fadd"(%arg209, %arg210) <{fastmathFlags = #llvm.fastmath<nsz, reassoc>}> : (f64, f64) -> f64
    %164 = "llvm.fsub"(%163, %arg211) <{fastmathFlags = #llvm.fastmath<nsz, reassoc>}> : (f64, f64) -> f64
    %165 = "llvm.fsub"(%arg212, %164) <{fastmathFlags = #llvm.fastmath<nsz, reassoc>}> : (f64, f64) -> f64
    "llvm.return"(%165) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64, f64, f64, f64)>, linkage = #llvm.linkage<external>, sym_name = "test_reassoc_fsub10", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg205: f64, %arg206: f64, %arg207: f64, %arg208: f64):
    %160 = "llvm.fadd"(%arg205, %arg206) <{fastmathFlags = #llvm.fastmath<nsz, reassoc>}> : (f64, f64) -> f64
    %161 = "llvm.fadd"(%arg207, %160) <{fastmathFlags = #llvm.fastmath<nsz, reassoc>}> : (f64, f64) -> f64
    %162 = "llvm.fsub"(%arg208, %161) <{fastmathFlags = #llvm.fastmath<nsz, reassoc>}> : (f64, f64) -> f64
    "llvm.return"(%162) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64, f64, f64, f64)>, linkage = #llvm.linkage<external>, sym_name = "test_reassoc_fsub11", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg201: f64, %arg202: f64, %arg203: f64, %arg204: f64):
    %157 = "llvm.fadd"(%arg201, %arg202) <{fastmathFlags = #llvm.fastmath<nsz, reassoc>}> : (f64, f64) -> f64
    %158 = "llvm.fsub"(%arg203, %157) <{fastmathFlags = #llvm.fastmath<nsz, reassoc>}> : (f64, f64) -> f64
    %159 = "llvm.fadd"(%arg204, %158) <{fastmathFlags = #llvm.fastmath<nsz, reassoc>}> : (f64, f64) -> f64
    "llvm.return"(%159) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64, f64, f64, f64)>, linkage = #llvm.linkage<external>, sym_name = "test_reassoc_fsub12", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg197: f64, %arg198: f64, %arg199: f64, %arg200: f64):
    %154 = "llvm.fadd"(%arg197, %arg198) <{fastmathFlags = #llvm.fastmath<nsz, reassoc>}> : (f64, f64) -> f64
    %155 = "llvm.fsub"(%arg199, %154) <{fastmathFlags = #llvm.fastmath<nsz, reassoc>}> : (f64, f64) -> f64
    %156 = "llvm.fsub"(%arg200, %155) <{fastmathFlags = #llvm.fastmath<nsz, reassoc>}> : (f64, f64) -> f64
    "llvm.return"(%156) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8, i8, i8, i8)>, linkage = #llvm.linkage<external>, sym_name = "test_reassoc_add_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg193: i8, %arg194: i8, %arg195: i8, %arg196: i8):
    %151 = "llvm.add"(%arg193, %arg194) <{overflowFlags = 0 : i32}> : (i8, i8) -> i8
    %152 = "llvm.add"(%151, %arg195) <{overflowFlags = 0 : i32}> : (i8, i8) -> i8
    %153 = "llvm.add"(%152, %arg196) <{overflowFlags = 0 : i32}> : (i8, i8) -> i8
    "llvm.return"(%153) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16, i16, i16, i16)>, linkage = #llvm.linkage<external>, sym_name = "test_reassoc_add_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg189: i16, %arg190: i16, %arg191: i16, %arg192: i16):
    %148 = "llvm.add"(%arg189, %arg190) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    %149 = "llvm.add"(%148, %arg191) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    %150 = "llvm.add"(%149, %arg192) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    "llvm.return"(%150) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "test_reassoc_add_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg185: i32, %arg186: i32, %arg187: i32, %arg188: i32):
    %145 = "llvm.add"(%arg185, %arg186) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %146 = "llvm.add"(%145, %arg187) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %147 = "llvm.add"(%146, %arg188) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%147) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "test_reassoc_add_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg181: i64, %arg182: i64, %arg183: i64, %arg184: i64):
    %142 = "llvm.add"(%arg181, %arg182) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %143 = "llvm.add"(%142, %arg183) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %144 = "llvm.add"(%143, %arg184) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%144) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "test_reassoc_add_sub_i32_1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg177: i32, %arg178: i32, %arg179: i32, %arg180: i32):
    %139 = "llvm.add"(%arg177, %arg178) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %140 = "llvm.sub"(%139, %arg179) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %141 = "llvm.add"(%140, %arg180) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%141) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "test_reassoc_add_sub_i32_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg173: i32, %arg174: i32, %arg175: i32, %arg176: i32):
    %136 = "llvm.add"(%arg173, %arg174) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %137 = "llvm.add"(%136, %arg175) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %138 = "llvm.sub"(%137, %arg176) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%138) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "test_reassoc_add_sub_i32_3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg169: i32, %arg170: i32, %arg171: i32, %arg172: i32):
    %133 = "llvm.add"(%arg169, %arg170) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %134 = "llvm.sub"(%133, %arg171) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %135 = "llvm.sub"(%134, %arg172) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%135) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "test_reassoc_add_sub_i64_1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg165: i64, %arg166: i64, %arg167: i64, %arg168: i64):
    %130 = "llvm.add"(%arg165, %arg166) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %131 = "llvm.sub"(%130, %arg167) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %132 = "llvm.add"(%131, %arg168) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%132) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "test_reassoc_add_sub_i64_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg161: i64, %arg162: i64, %arg163: i64, %arg164: i64):
    %127 = "llvm.add"(%arg161, %arg162) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %128 = "llvm.add"(%127, %arg163) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %129 = "llvm.sub"(%128, %arg164) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%129) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "test_reassoc_add_sub_i64_3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg157: i64, %arg158: i64, %arg159: i64, %arg160: i64):
    %124 = "llvm.add"(%arg157, %arg158) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %125 = "llvm.sub"(%124, %arg159) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %126 = "llvm.sub"(%125, %arg160) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%126) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8, i8, i8, i8)>, linkage = #llvm.linkage<external>, sym_name = "test_reassoc_and_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg153: i8, %arg154: i8, %arg155: i8, %arg156: i8):
    %121 = "llvm.and"(%arg153, %arg154) : (i8, i8) -> i8
    %122 = "llvm.and"(%121, %arg155) : (i8, i8) -> i8
    %123 = "llvm.and"(%122, %arg156) : (i8, i8) -> i8
    "llvm.return"(%123) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16, i16, i16, i16)>, linkage = #llvm.linkage<external>, sym_name = "test_reassoc_and_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg149: i16, %arg150: i16, %arg151: i16, %arg152: i16):
    %118 = "llvm.and"(%arg149, %arg150) : (i16, i16) -> i16
    %119 = "llvm.and"(%118, %arg151) : (i16, i16) -> i16
    %120 = "llvm.and"(%119, %arg152) : (i16, i16) -> i16
    "llvm.return"(%120) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "test_reassoc_and_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg145: i32, %arg146: i32, %arg147: i32, %arg148: i32):
    %115 = "llvm.and"(%arg145, %arg146) : (i32, i32) -> i32
    %116 = "llvm.and"(%115, %arg147) : (i32, i32) -> i32
    %117 = "llvm.and"(%116, %arg148) : (i32, i32) -> i32
    "llvm.return"(%117) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "test_reassoc_and_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg141: i64, %arg142: i64, %arg143: i64, %arg144: i64):
    %112 = "llvm.and"(%arg141, %arg142) : (i64, i64) -> i64
    %113 = "llvm.and"(%112, %arg143) : (i64, i64) -> i64
    %114 = "llvm.and"(%113, %arg144) : (i64, i64) -> i64
    "llvm.return"(%114) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8, i8, i8, i8)>, linkage = #llvm.linkage<external>, sym_name = "test_reassoc_or_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg137: i8, %arg138: i8, %arg139: i8, %arg140: i8):
    %109 = "llvm.or"(%arg137, %arg138) : (i8, i8) -> i8
    %110 = "llvm.or"(%109, %arg139) : (i8, i8) -> i8
    %111 = "llvm.or"(%110, %arg140) : (i8, i8) -> i8
    "llvm.return"(%111) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16, i16, i16, i16)>, linkage = #llvm.linkage<external>, sym_name = "test_reassoc_or_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg133: i16, %arg134: i16, %arg135: i16, %arg136: i16):
    %106 = "llvm.or"(%arg133, %arg134) : (i16, i16) -> i16
    %107 = "llvm.or"(%106, %arg135) : (i16, i16) -> i16
    %108 = "llvm.or"(%107, %arg136) : (i16, i16) -> i16
    "llvm.return"(%108) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "test_reassoc_or_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg129: i32, %arg130: i32, %arg131: i32, %arg132: i32):
    %103 = "llvm.or"(%arg129, %arg130) : (i32, i32) -> i32
    %104 = "llvm.or"(%103, %arg131) : (i32, i32) -> i32
    %105 = "llvm.or"(%104, %arg132) : (i32, i32) -> i32
    "llvm.return"(%105) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "test_reassoc_or_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg125: i64, %arg126: i64, %arg127: i64, %arg128: i64):
    %100 = "llvm.or"(%arg125, %arg126) : (i64, i64) -> i64
    %101 = "llvm.or"(%100, %arg127) : (i64, i64) -> i64
    %102 = "llvm.or"(%101, %arg128) : (i64, i64) -> i64
    "llvm.return"(%102) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8, i8, i8, i8)>, linkage = #llvm.linkage<external>, sym_name = "test_reassoc_xor_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg121: i8, %arg122: i8, %arg123: i8, %arg124: i8):
    %97 = "llvm.xor"(%arg121, %arg122) : (i8, i8) -> i8
    %98 = "llvm.xor"(%97, %arg123) : (i8, i8) -> i8
    %99 = "llvm.xor"(%98, %arg124) : (i8, i8) -> i8
    "llvm.return"(%99) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16, i16, i16, i16)>, linkage = #llvm.linkage<external>, sym_name = "test_reassoc_xor_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg117: i16, %arg118: i16, %arg119: i16, %arg120: i16):
    %94 = "llvm.xor"(%arg117, %arg118) : (i16, i16) -> i16
    %95 = "llvm.xor"(%94, %arg119) : (i16, i16) -> i16
    %96 = "llvm.xor"(%95, %arg120) : (i16, i16) -> i16
    "llvm.return"(%96) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "test_reassoc_xor_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg113: i32, %arg114: i32, %arg115: i32, %arg116: i32):
    %91 = "llvm.xor"(%arg113, %arg114) : (i32, i32) -> i32
    %92 = "llvm.xor"(%91, %arg115) : (i32, i32) -> i32
    %93 = "llvm.xor"(%92, %arg116) : (i32, i32) -> i32
    "llvm.return"(%93) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "test_reassoc_xor_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg109: i64, %arg110: i64, %arg111: i64, %arg112: i64):
    %88 = "llvm.xor"(%arg109, %arg110) : (i64, i64) -> i64
    %89 = "llvm.xor"(%88, %arg111) : (i64, i64) -> i64
    %90 = "llvm.xor"(%89, %arg112) : (i64, i64) -> i64
    "llvm.return"(%90) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8, i8, i8, i8)>, linkage = #llvm.linkage<external>, sym_name = "test_reassoc_mul_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg105: i8, %arg106: i8, %arg107: i8, %arg108: i8):
    %85 = "llvm.mul"(%arg105, %arg106) <{overflowFlags = 0 : i32}> : (i8, i8) -> i8
    %86 = "llvm.mul"(%85, %arg107) <{overflowFlags = 0 : i32}> : (i8, i8) -> i8
    %87 = "llvm.mul"(%86, %arg108) <{overflowFlags = 0 : i32}> : (i8, i8) -> i8
    "llvm.return"(%87) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16, i16, i16, i16)>, linkage = #llvm.linkage<external>, sym_name = "test_reassoc_mul_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg101: i16, %arg102: i16, %arg103: i16, %arg104: i16):
    %82 = "llvm.mul"(%arg101, %arg102) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    %83 = "llvm.mul"(%82, %arg103) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    %84 = "llvm.mul"(%83, %arg104) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    "llvm.return"(%84) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "test_reassoc_mul_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg97: i32, %arg98: i32, %arg99: i32, %arg100: i32):
    %79 = "llvm.mul"(%arg97, %arg98) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %80 = "llvm.mul"(%79, %arg99) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %81 = "llvm.mul"(%80, %arg100) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%81) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "test_reassoc_mul_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg93: i64, %arg94: i64, %arg95: i64, %arg96: i64):
    %76 = "llvm.mul"(%arg93, %arg94) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %77 = "llvm.mul"(%76, %arg95) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %78 = "llvm.mul"(%77, %arg96) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%78) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8, i8, i8, i8)>, linkage = #llvm.linkage<external>, sym_name = "test_reassoc_minu_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg89: i8, %arg90: i8, %arg91: i8, %arg92: i8):
    %73 = "llvm.intr.umin"(%arg89, %arg90) : (i8, i8) -> i8
    %74 = "llvm.intr.umin"(%73, %arg91) : (i8, i8) -> i8
    %75 = "llvm.intr.umin"(%74, %arg92) : (i8, i8) -> i8
    "llvm.return"(%75) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16, i16, i16, i16)>, linkage = #llvm.linkage<external>, sym_name = "test_reassoc_minu_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg85: i16, %arg86: i16, %arg87: i16, %arg88: i16):
    %70 = "llvm.intr.umin"(%arg85, %arg86) : (i16, i16) -> i16
    %71 = "llvm.intr.umin"(%70, %arg87) : (i16, i16) -> i16
    %72 = "llvm.intr.umin"(%71, %arg88) : (i16, i16) -> i16
    "llvm.return"(%72) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "test_reassoc_minu_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg81: i32, %arg82: i32, %arg83: i32, %arg84: i32):
    %67 = "llvm.intr.umin"(%arg81, %arg82) : (i32, i32) -> i32
    %68 = "llvm.intr.umin"(%67, %arg83) : (i32, i32) -> i32
    %69 = "llvm.intr.umin"(%68, %arg84) : (i32, i32) -> i32
    "llvm.return"(%69) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "test_reassoc_minu_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg77: i64, %arg78: i64, %arg79: i64, %arg80: i64):
    %64 = "llvm.intr.umin"(%arg77, %arg78) : (i64, i64) -> i64
    %65 = "llvm.intr.umin"(%64, %arg79) : (i64, i64) -> i64
    %66 = "llvm.intr.umin"(%65, %arg80) : (i64, i64) -> i64
    "llvm.return"(%66) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8, i8, i8, i8)>, linkage = #llvm.linkage<external>, sym_name = "test_reassoc_min_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg73: i8, %arg74: i8, %arg75: i8, %arg76: i8):
    %61 = "llvm.intr.smin"(%arg73, %arg74) : (i8, i8) -> i8
    %62 = "llvm.intr.smin"(%61, %arg75) : (i8, i8) -> i8
    %63 = "llvm.intr.smin"(%62, %arg76) : (i8, i8) -> i8
    "llvm.return"(%63) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16, i16, i16, i16)>, linkage = #llvm.linkage<external>, sym_name = "test_reassoc_min_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg69: i16, %arg70: i16, %arg71: i16, %arg72: i16):
    %58 = "llvm.intr.smin"(%arg69, %arg70) : (i16, i16) -> i16
    %59 = "llvm.intr.smin"(%58, %arg71) : (i16, i16) -> i16
    %60 = "llvm.intr.smin"(%59, %arg72) : (i16, i16) -> i16
    "llvm.return"(%60) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "test_reassoc_min_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg65: i32, %arg66: i32, %arg67: i32, %arg68: i32):
    %55 = "llvm.intr.smin"(%arg65, %arg66) : (i32, i32) -> i32
    %56 = "llvm.intr.smin"(%55, %arg67) : (i32, i32) -> i32
    %57 = "llvm.intr.smin"(%56, %arg68) : (i32, i32) -> i32
    "llvm.return"(%57) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "test_reassoc_min_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg61: i64, %arg62: i64, %arg63: i64, %arg64: i64):
    %52 = "llvm.intr.smin"(%arg61, %arg62) : (i64, i64) -> i64
    %53 = "llvm.intr.smin"(%52, %arg63) : (i64, i64) -> i64
    %54 = "llvm.intr.smin"(%53, %arg64) : (i64, i64) -> i64
    "llvm.return"(%54) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8, i8, i8, i8)>, linkage = #llvm.linkage<external>, sym_name = "test_reassoc_maxu_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg57: i8, %arg58: i8, %arg59: i8, %arg60: i8):
    %49 = "llvm.intr.umax"(%arg57, %arg58) : (i8, i8) -> i8
    %50 = "llvm.intr.umax"(%49, %arg59) : (i8, i8) -> i8
    %51 = "llvm.intr.umax"(%50, %arg60) : (i8, i8) -> i8
    "llvm.return"(%51) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16, i16, i16, i16)>, linkage = #llvm.linkage<external>, sym_name = "test_reassoc_maxu_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg53: i16, %arg54: i16, %arg55: i16, %arg56: i16):
    %46 = "llvm.intr.umax"(%arg53, %arg54) : (i16, i16) -> i16
    %47 = "llvm.intr.umax"(%46, %arg55) : (i16, i16) -> i16
    %48 = "llvm.intr.umax"(%47, %arg56) : (i16, i16) -> i16
    "llvm.return"(%48) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "test_reassoc_maxu_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg49: i32, %arg50: i32, %arg51: i32, %arg52: i32):
    %43 = "llvm.intr.umax"(%arg49, %arg50) : (i32, i32) -> i32
    %44 = "llvm.intr.umax"(%43, %arg51) : (i32, i32) -> i32
    %45 = "llvm.intr.umax"(%44, %arg52) : (i32, i32) -> i32
    "llvm.return"(%45) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "test_reassoc_maxu_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg45: i64, %arg46: i64, %arg47: i64, %arg48: i64):
    %40 = "llvm.intr.umax"(%arg45, %arg46) : (i64, i64) -> i64
    %41 = "llvm.intr.umax"(%40, %arg47) : (i64, i64) -> i64
    %42 = "llvm.intr.umax"(%41, %arg48) : (i64, i64) -> i64
    "llvm.return"(%42) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8, i8, i8, i8)>, linkage = #llvm.linkage<external>, sym_name = "test_reassoc_max_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg41: i8, %arg42: i8, %arg43: i8, %arg44: i8):
    %37 = "llvm.intr.smax"(%arg41, %arg42) : (i8, i8) -> i8
    %38 = "llvm.intr.smax"(%37, %arg43) : (i8, i8) -> i8
    %39 = "llvm.intr.smax"(%38, %arg44) : (i8, i8) -> i8
    "llvm.return"(%39) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16, i16, i16, i16)>, linkage = #llvm.linkage<external>, sym_name = "test_reassoc_max_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg37: i16, %arg38: i16, %arg39: i16, %arg40: i16):
    %34 = "llvm.intr.smax"(%arg37, %arg38) : (i16, i16) -> i16
    %35 = "llvm.intr.smax"(%34, %arg39) : (i16, i16) -> i16
    %36 = "llvm.intr.smax"(%35, %arg40) : (i16, i16) -> i16
    "llvm.return"(%36) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "test_reassoc_max_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg33: i32, %arg34: i32, %arg35: i32, %arg36: i32):
    %31 = "llvm.intr.smax"(%arg33, %arg34) : (i32, i32) -> i32
    %32 = "llvm.intr.smax"(%31, %arg35) : (i32, i32) -> i32
    %33 = "llvm.intr.smax"(%32, %arg36) : (i32, i32) -> i32
    "llvm.return"(%33) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "test_reassoc_max_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg29: i64, %arg30: i64, %arg31: i64, %arg32: i64):
    %28 = "llvm.intr.smax"(%arg29, %arg30) : (i64, i64) -> i64
    %29 = "llvm.intr.smax"(%28, %arg31) : (i64, i64) -> i64
    %30 = "llvm.intr.smax"(%29, %arg32) : (i64, i64) -> i64
    "llvm.return"(%30) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (f16, f16, f16, f16)>, linkage = #llvm.linkage<external>, sym_name = "test_fmin_f16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg25: f16, %arg26: f16, %arg27: f16, %arg28: f16):
    %25 = "llvm.intr.minnum"(%arg25, %arg26) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16) -> f16
    %26 = "llvm.intr.minnum"(%25, %arg27) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16) -> f16
    %27 = "llvm.intr.minnum"(%26, %arg28) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16) -> f16
    "llvm.return"(%27) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32, f32, f32, f32)>, linkage = #llvm.linkage<external>, sym_name = "test_fmin_f32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg21: f32, %arg22: f32, %arg23: f32, %arg24: f32):
    %22 = "llvm.intr.minnum"(%arg21, %arg22) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %23 = "llvm.intr.minnum"(%22, %arg23) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %24 = "llvm.intr.minnum"(%23, %arg24) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    "llvm.return"(%24) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64, f64, f64, f64)>, linkage = #llvm.linkage<external>, sym_name = "test_fmin_f64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg17: f64, %arg18: f64, %arg19: f64, %arg20: f64):
    %19 = "llvm.intr.minnum"(%arg17, %arg18) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %20 = "llvm.intr.minnum"(%19, %arg19) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %21 = "llvm.intr.minnum"(%20, %arg20) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.return"(%21) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (f16, f16, f16, f16)>, linkage = #llvm.linkage<external>, sym_name = "test_fmax_f16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg13: f16, %arg14: f16, %arg15: f16, %arg16: f16):
    %16 = "llvm.intr.maxnum"(%arg13, %arg14) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16) -> f16
    %17 = "llvm.intr.maxnum"(%16, %arg15) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16) -> f16
    %18 = "llvm.intr.maxnum"(%17, %arg16) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16) -> f16
    "llvm.return"(%18) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32, f32, f32, f32)>, linkage = #llvm.linkage<external>, sym_name = "test_fmax_f32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: f32, %arg10: f32, %arg11: f32, %arg12: f32):
    %13 = "llvm.intr.maxnum"(%arg9, %arg10) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %14 = "llvm.intr.maxnum"(%13, %arg11) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %15 = "llvm.intr.maxnum"(%14, %arg12) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    "llvm.return"(%15) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64, f64, f64, f64)>, linkage = #llvm.linkage<external>, sym_name = "test_fmax_f64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: f64, %arg6: f64, %arg7: f64, %arg8: f64):
    %10 = "llvm.intr.maxnum"(%arg5, %arg6) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %11 = "llvm.intr.maxnum"(%10, %arg7) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %12 = "llvm.intr.maxnum"(%11, %arg8) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.return"(%12) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64, f64, f64, f64, i64)>, linkage = #llvm.linkage<external>, sym_name = "test_fmadd_strategy", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: f64, %arg1: f64, %arg2: f64, %arg3: f64, %arg4: i64):
    %0 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %1 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %2 = "llvm.fsub"(%arg0, %arg1) <{fastmathFlags = #llvm.fastmath<contract>}> : (f64, f64) -> f64
    %3 = "llvm.fmul"(%2, %arg2) <{fastmathFlags = #llvm.fastmath<contract>}> : (f64, f64) -> f64
    %4 = "llvm.and"(%arg4, %0) : (i64, i64) -> i64
    %5 = "llvm.icmp"(%4, %1) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %6 = "llvm.fmul"(%arg0, %arg1) <{fastmathFlags = #llvm.fastmath<contract>}> : (f64, f64) -> f64
    %7 = "llvm.fadd"(%6, %3) <{fastmathFlags = #llvm.fastmath<contract>}> : (f64, f64) -> f64
    %8 = "llvm.fsub"(%7, %6) <{fastmathFlags = #llvm.fastmath<contract>}> : (f64, f64) -> f64
    %9 = "llvm.select"(%5, %3, %8) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, f64, f64) -> f64
    "llvm.return"(%9) : (f64) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

