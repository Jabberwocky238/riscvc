#loop_annotation = #llvm.loop_annotation<mustProgress = true>
#tbaa_root = #llvm.tbaa_root<id = "Simple C/C++ TBAA">
#tbaa_type_desc = #llvm.tbaa_type_desc<id = "omnipotent char", members = {<#tbaa_root, 0>}>
#tbaa_tag = #llvm.tbaa_tag<base_type = #tbaa_type_desc, access_type = #tbaa_type_desc, offset = 0>
#tbaa_type_desc1 = #llvm.tbaa_type_desc<id = "double", members = {<#tbaa_type_desc, 0>}>
#tbaa_type_desc2 = #llvm.tbaa_type_desc<id = "int", members = {<#tbaa_type_desc, 0>}>
#tbaa_tag1 = #llvm.tbaa_tag<base_type = #tbaa_type_desc1, access_type = #tbaa_type_desc1, offset = 0>
#tbaa_tag2 = #llvm.tbaa_tag<base_type = #tbaa_type_desc2, access_type = #tbaa_type_desc2, offset = 0>
#tbaa_type_desc3 = #llvm.tbaa_type_desc<id = "big", members = {<#tbaa_type_desc1, 0>, <#tbaa_type_desc1, 8>, <#tbaa_type_desc1, 16>}>
#tbaa_tag3 = #llvm.tbaa_tag<base_type = #tbaa_type_desc3, access_type = #tbaa_type_desc1, offset = 0>
#tbaa_tag4 = #llvm.tbaa_tag<base_type = #tbaa_type_desc3, access_type = #tbaa_type_desc1, offset = 8>
#tbaa_tag5 = #llvm.tbaa_tag<base_type = #tbaa_type_desc3, access_type = #tbaa_type_desc1, offset = 16>
"builtin.module"() ({
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 8 : i64, dso_local, global_type = f64, linkage = #llvm.linkage<internal>, sym_name = "vz", unnamed_addr = 0 : i64, value = 0.000000e+00 : f64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 8 : i64, constant, dso_local, global_type = !llvm.array<10 x f64>, linkage = #llvm.linkage<private>, sym_name = "__const.main.xs", unnamed_addr = 2 : i64, value = dense<[1.500000e+00, -2.250000e+00, 1.000000e+300, -1.000000e-300, 3.000000e+00, 1.000000e-01, -0.000000e+00, 7.750000e+00, 123456789.125, -9.500000e+00]> : tensor<10xf64>, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<error, "wchar_size", 4 : i32>, #llvm.mlir.module_flag<error, "target-abi", "ilp32d">, #llvm.mlir.module_flag<min, "SmallDataLimit", 0 : i32>]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, no_unwind, passthrough = ["nofree", "norecurse", "no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "main", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+d", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcalculet", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 1 : i64, visibility_ = 0 : i64}> ({
    %202 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %203 = "llvm.mlir.addressof"() <{global_name = @vz}> : () -> !llvm.ptr
    %204 = "llvm.mlir.constant"() <{value = 1.000000e+00 : f64}> : () -> f64
    %205 = "llvm.mlir.constant"() <{value = -2128831035 : i32}> : () -> i32
    %206 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %207 = "llvm.mlir.addressof"() <{global_name = @__const.main.xs}> : () -> !llvm.ptr
    %208 = "llvm.mlir.constant"() <{value = 7 : i8}> : () -> i8
    %209 = "llvm.mlir.constant"() <{value = 3 : i8}> : () -> i8
    %210 = "llvm.mlir.constant"() <{value = 10 : i8}> : () -> i8
    %211 = "llvm.mlir.constant"() <{value = 32 : i64}> : () -> i64
    %212 = "llvm.mlir.constant"() <{value = 16777619 : i32}> : () -> i32
    %213 = "llvm.mlir.constant"() <{value = -1640531527 : i32}> : () -> i32
    %214 = "llvm.mlir.constant"() <{value = 6 : i8}> : () -> i8
    %215 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %216 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %217 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %218 = "llvm.mlir.constant"() <{value = 16 : i32}> : () -> i32
    %219 = "llvm.mlir.constant"() <{value = 32 : i32}> : () -> i32
    %220 = "llvm.mlir.constant"() <{value = 64 : i32}> : () -> i32
    %221 = "llvm.mlir.constant"() <{value = 128 : i32}> : () -> i32
    %222 = "llvm.mlir.constant"() <{value = 1.000000e+290 : f64}> : () -> f64
    %223 = "llvm.mlir.constant"() <{value = 1.000000e+03 : f64}> : () -> f64
    %224 = "llvm.mlir.constant"() <{value = 3 : i64}> : () -> i64
    %225 = "llvm.mlir.constant"() <{value = -77 : i32}> : () -> i32
    %226 = "llvm.mlir.constant"() <{value = 0x41F2345678900000 : f64}> : () -> f64
    %227 = "llvm.mlir.constant"() <{value = 3.000000e+00 : f64}> : () -> f64
    %228 = "llvm.mlir.constant"() <{value = 0.000000e+00 : f64}> : () -> f64
    %229 = "llvm.mlir.constant"() <{value = 0x7FF0000000000000 : f64}> : () -> f64
    %230 = "llvm.mlir.constant"() <{value = 10 : i32}> : () -> i32
    %231 = "llvm.mlir.poison"() : () -> i32
    %232 = "llvm.mlir.constant"() <{value = 1.250000e+00 : f64}> : () -> f64
    %233 = "llvm.mlir.constant"() <{value = 7 : i32}> : () -> i32
    %234 = "llvm.mlir.constant"() <{value = -3.500000e+00 : f64}> : () -> f64
    %235 = "llvm.mlir.constant"() <{value = 9 : i32}> : () -> i32
    %236 = "llvm.mlir.constant"() <{value = 1.000000e+10 : f64}> : () -> f64
    %237 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %238 = "llvm.mlir.constant"() <{value = 2.000000e+00 : f64}> : () -> f64
    %239 = "llvm.mlir.constant"() <{value = 3.700000e-01 : f64}> : () -> f64
    %240 = "llvm.mlir.constant"() <{value = -5.000000e+00 : f64}> : () -> f64
    %241 = "llvm.mlir.constant"() <{value = -352419840 : i32}> : () -> i32
    %242 = "llvm.mlir.constant"() <{value = -2144075776 : i32}> : () -> i32
    %243 = "llvm.mlir.constant"() <{value = -358612949 : i32}> : () -> i32
    %244 = "llvm.mlir.constant"() <{value = 1076166656 : i32}> : () -> i32
    %245 = "llvm.alloca"(%202) <{alignment = 8 : i64, elem_type = !llvm.struct<"struct.big", (f64, f64, f64)>}> : (i32) -> !llvm.ptr
    %246 = "llvm.alloca"(%202) <{alignment = 8 : i64, elem_type = !llvm.struct<"struct.big", (f64, f64, f64)>}> : (i32) -> !llvm.ptr
    %247 = "llvm.alloca"(%202) <{alignment = 8 : i64, elem_type = !llvm.array<64 x f64>}> : (i32) -> !llvm.ptr
    %248 = "llvm.alloca"(%202) <{alignment = 1 : i64, elem_type = i8}> : (i32) -> !llvm.ptr
    %249 = "llvm.load"(%203) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag1], volatile_}> : (!llvm.ptr) -> f64
    %250 = "llvm.load"(%203) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag1], volatile_}> : (!llvm.ptr) -> f64
    %251 = "llvm.fdiv"(%249, %250) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %252 = "llvm.load"(%203) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag1], volatile_}> : (!llvm.ptr) -> f64
    %253 = "llvm.fdiv"(%204, %252) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %254 = "llvm.load"(%203) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag1], volatile_}> : (!llvm.ptr) -> f64
    %255 = "llvm.fadd"(%254, %204) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.br"(%205, %206)[^bb2] : (i32, i32) -> ()
  ^bb1:  // pred: ^bb2
    %256 = "llvm.call"(%231, %232, %233, %234, %235, %236, %237) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, arg_attrs = [{}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @vsum, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 7, 0>, var_callee_type = !llvm.func<f64 (i32, ...)>}> : (i32, f64, i32, f64, i32, f64, i32) -> f64
    "llvm.intr.lifetime.start"(%245) : (!llvm.ptr) -> ()
    "llvm.intr.lifetime.start"(%246) : (!llvm.ptr) -> ()
    "llvm.store"(%204, %246) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag1]}> : (f64, !llvm.ptr) -> ()
    %257 = "llvm.getelementptr"(%246, %217) <{elem_type = i8, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%238, %257) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag1]}> : (f64, !llvm.ptr) -> ()
    %258 = "llvm.getelementptr"(%246, %218) <{elem_type = i8, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%227, %258) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag1]}> : (f64, !llvm.ptr) -> ()
    "llvm.call"(%245, %246) <{CConv = #llvm.cconv<fastcc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.align = 8 : i64, llvm.sret = !llvm.struct<"struct.big", (f64, f64, f64)>}, {llvm.noundef}], callee = @scale, fastmathFlags = #llvm.fastmath<none>, memory_effects = #llvm.memory_effects<other = none, argMem = readwrite, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (!llvm.ptr, !llvm.ptr) -> ()
    "llvm.intr.lifetime.end"(%246) : (!llvm.ptr) -> ()
    %259 = "llvm.load"(%245) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag3]}> : (!llvm.ptr) -> f64
    %260 = "llvm.getelementptr"(%245, %217) <{elem_type = i8, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %261 = "llvm.load"(%260) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag4]}> : (!llvm.ptr) -> f64
    %262 = "llvm.getelementptr"(%245, %218) <{elem_type = i8, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %263 = "llvm.load"(%262) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag5]}> : (!llvm.ptr) -> f64
    "llvm.intr.lifetime.start"(%247) : (!llvm.ptr) -> ()
    "llvm.br"(%206)[^bb4] : (i32) -> ()
  ^bb2(%264: i32, %265: i32):  // 2 preds: ^bb0, ^bb2
    %266 = "llvm.getelementptr"(%207, %265) <{elem_type = f64, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %267 = "llvm.load"(%266) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag1]}> : (!llvm.ptr) -> f64
    %268 = "llvm.trunc"(%265) <{overflowFlags = 3 : i32}> : (i32) -> i8
    %269 = "llvm.mul"(%268, %208) <{overflowFlags = 2 : i32}> : (i8, i8) -> i8
    %270 = "llvm.add"(%269, %209) <{overflowFlags = 2 : i32}> : (i8, i8) -> i8
    %271 = "llvm.urem"(%270, %210) : (i8, i8) -> i8
    %272 = "llvm.zext"(%271) <{nonNeg}> : (i8) -> i32
    %273 = "llvm.getelementptr"(%207, %272) <{elem_type = f64, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %274 = "llvm.load"(%273) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag1]}> : (!llvm.ptr) -> f64
    %275 = "llvm.fadd"(%267, %274) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %276 = "llvm.bitcast"(%275) : (f64) -> i64
    %277 = "llvm.lshr"(%276, %211) : (i64, i64) -> i64
    %278 = "llvm.xor"(%277, %276) : (i64, i64) -> i64
    %279 = "llvm.trunc"(%278) <{overflowFlags = 0 : i32}> : (i64) -> i32
    %280 = "llvm.xor"(%264, %279) : (i32, i32) -> i32
    %281 = "llvm.mul"(%280, %212) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %282 = "llvm.add"(%281, %213) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %283 = "llvm.fsub"(%267, %274) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %284 = "llvm.bitcast"(%283) : (f64) -> i64
    %285 = "llvm.lshr"(%284, %211) : (i64, i64) -> i64
    %286 = "llvm.xor"(%285, %284) : (i64, i64) -> i64
    %287 = "llvm.trunc"(%286) <{overflowFlags = 0 : i32}> : (i64) -> i32
    %288 = "llvm.xor"(%282, %287) : (i32, i32) -> i32
    %289 = "llvm.mul"(%288, %212) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %290 = "llvm.add"(%289, %213) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %291 = "llvm.fmul"(%267, %274) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %292 = "llvm.bitcast"(%291) : (f64) -> i64
    %293 = "llvm.lshr"(%292, %211) : (i64, i64) -> i64
    %294 = "llvm.xor"(%293, %292) : (i64, i64) -> i64
    %295 = "llvm.trunc"(%294) <{overflowFlags = 0 : i32}> : (i64) -> i32
    %296 = "llvm.xor"(%290, %295) : (i32, i32) -> i32
    %297 = "llvm.mul"(%296, %212) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %298 = "llvm.add"(%297, %213) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %299 = "llvm.icmp"(%271, %214) <{predicate = 0 : i64}> : (i8, i8) -> i1
    %300 = "llvm.select"(%299, %204, %274) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, f64, f64) -> f64
    %301 = "llvm.fdiv"(%267, %300) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %302 = "llvm.bitcast"(%301) : (f64) -> i64
    %303 = "llvm.lshr"(%302, %211) : (i64, i64) -> i64
    %304 = "llvm.xor"(%303, %302) : (i64, i64) -> i64
    %305 = "llvm.trunc"(%304) <{overflowFlags = 0 : i32}> : (i64) -> i32
    %306 = "llvm.xor"(%298, %305) : (i32, i32) -> i32
    %307 = "llvm.mul"(%306, %212) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %308 = "llvm.add"(%307, %213) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %309 = "llvm.intr.fabs"(%267) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    %310 = "llvm.intr.sqrt"(%309) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    %311 = "llvm.bitcast"(%310) : (f64) -> i64
    %312 = "llvm.lshr"(%311, %211) : (i64, i64) -> i64
    %313 = "llvm.xor"(%312, %311) : (i64, i64) -> i64
    %314 = "llvm.trunc"(%313) <{overflowFlags = 0 : i32}> : (i64) -> i32
    %315 = "llvm.xor"(%308, %314) : (i32, i32) -> i32
    %316 = "llvm.mul"(%315, %212) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %317 = "llvm.add"(%316, %213) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %318 = "llvm.intr.fma"(%267, %274, %255) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64, f64) -> f64
    %319 = "llvm.bitcast"(%318) : (f64) -> i64
    %320 = "llvm.lshr"(%319, %211) : (i64, i64) -> i64
    %321 = "llvm.xor"(%320, %319) : (i64, i64) -> i64
    %322 = "llvm.trunc"(%321) <{overflowFlags = 0 : i32}> : (i64) -> i32
    %323 = "llvm.xor"(%317, %322) : (i32, i32) -> i32
    %324 = "llvm.mul"(%323, %212) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %325 = "llvm.add"(%324, %213) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %326 = "llvm.intr.copysign"(%267, %274) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %327 = "llvm.bitcast"(%326) : (f64) -> i64
    %328 = "llvm.lshr"(%327, %211) : (i64, i64) -> i64
    %329 = "llvm.xor"(%328, %327) : (i64, i64) -> i64
    %330 = "llvm.trunc"(%329) <{overflowFlags = 0 : i32}> : (i64) -> i32
    %331 = "llvm.xor"(%325, %330) : (i32, i32) -> i32
    %332 = "llvm.mul"(%331, %212) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %333 = "llvm.add"(%332, %213) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %334 = "llvm.intr.minnum"(%267, %274) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %335 = "llvm.bitcast"(%334) : (f64) -> i64
    %336 = "llvm.lshr"(%335, %211) : (i64, i64) -> i64
    %337 = "llvm.xor"(%336, %335) : (i64, i64) -> i64
    %338 = "llvm.trunc"(%337) <{overflowFlags = 0 : i32}> : (i64) -> i32
    %339 = "llvm.xor"(%333, %338) : (i32, i32) -> i32
    %340 = "llvm.mul"(%339, %212) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %341 = "llvm.add"(%340, %213) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %342 = "llvm.intr.maxnum"(%267, %251) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %343 = "llvm.bitcast"(%342) : (f64) -> i64
    %344 = "llvm.lshr"(%343, %211) : (i64, i64) -> i64
    %345 = "llvm.xor"(%344, %343) : (i64, i64) -> i64
    %346 = "llvm.trunc"(%345) <{overflowFlags = 0 : i32}> : (i64) -> i32
    %347 = "llvm.xor"(%341, %346) : (i32, i32) -> i32
    %348 = "llvm.mul"(%347, %212) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %349 = "llvm.add"(%348, %213) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %350 = "llvm.fcmp"(%267, %274) <{fastmathFlags = #llvm.fastmath<none>, predicate = 4 : i64}> : (f64, f64) -> i1
    %351 = "llvm.zext"(%350) : (i1) -> i32
    %352 = "llvm.fcmp"(%267, %274) <{fastmathFlags = #llvm.fastmath<none>, predicate = 5 : i64}> : (f64, f64) -> i1
    %353 = "llvm.select"(%352, %215, %206) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %354 = "llvm.fcmp"(%267, %274) <{fastmathFlags = #llvm.fastmath<none>, predicate = 1 : i64}> : (f64, f64) -> i1
    %355 = "llvm.select"(%354, %216, %206) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %356 = "llvm.fcmp"(%267, %274) <{fastmathFlags = #llvm.fastmath<none>, predicate = 13 : i64}> : (f64, f64) -> i1
    %357 = "llvm.select"(%356, %217, %206) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %358 = "llvm.fcmp"(%267, %251) <{fastmathFlags = #llvm.fastmath<none>, predicate = 2 : i64}> : (f64, f64) -> i1
    %359 = "llvm.select"(%358, %218, %206) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %360 = "llvm.fcmp"(%267, %251) <{fastmathFlags = #llvm.fastmath<none>, predicate = 14 : i64}> : (f64, f64) -> i1
    %361 = "llvm.select"(%360, %219, %206) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %362 = "llvm.select"(%352, %220, %206) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %363 = "llvm.fcmp"(%267, %274) <{fastmathFlags = #llvm.fastmath<none>, predicate = 6 : i64}> : (f64, f64) -> i1
    %364 = "llvm.select"(%363, %221, %206) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %365 = "llvm.or"(%361, %359) <{isDisjoint}> : (i32, i32) -> i32
    %366 = "llvm.or"(%365, %351) <{isDisjoint}> : (i32, i32) -> i32
    %367 = "llvm.or"(%366, %353) <{isDisjoint}> : (i32, i32) -> i32
    %368 = "llvm.or"(%367, %355) <{isDisjoint}> : (i32, i32) -> i32
    %369 = "llvm.or"(%368, %357) <{isDisjoint}> : (i32, i32) -> i32
    %370 = "llvm.or"(%369, %362) : (i32, i32) -> i32
    %371 = "llvm.or"(%370, %364) : (i32, i32) -> i32
    %372 = "llvm.xor"(%349, %371) : (i32, i32) -> i32
    %373 = "llvm.mul"(%372, %212) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %374 = "llvm.add"(%373, %213) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %375 = "llvm.fdiv"(%267, %222) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %376 = "llvm.fptosi"(%375) : (f64) -> i32
    %377 = "llvm.xor"(%374, %376) : (i32, i32) -> i32
    %378 = "llvm.mul"(%377, %212) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %379 = "llvm.add"(%378, %213) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %380 = "llvm.fmul"(%274, %223) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %381 = "llvm.fptosi"(%380) : (f64) -> i64
    %382 = "llvm.trunc"(%381) <{overflowFlags = 0 : i32}> : (i64) -> i32
    %383 = "llvm.xor"(%379, %382) : (i32, i32) -> i32
    %384 = "llvm.mul"(%383, %212) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %385 = "llvm.add"(%384, %213) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %386 = "llvm.fmul"(%267, %223) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %387 = "llvm.intr.fabs"(%386) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    %388 = "llvm.fptoui"(%387) : (f64) -> i64
    %389 = "llvm.lshr"(%388, %224) : (i64, i64) -> i64
    %390 = "llvm.trunc"(%389) <{overflowFlags = 0 : i32}> : (i64) -> i32
    %391 = "llvm.xor"(%385, %390) : (i32, i32) -> i32
    %392 = "llvm.mul"(%391, %212) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %393 = "llvm.add"(%392, %213) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %394 = "llvm.mul"(%265, %225) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %395 = "llvm.sitofp"(%394) : (i32) -> f64
    %396 = "llvm.bitcast"(%395) : (f64) -> i64
    %397 = "llvm.lshr"(%396, %211) : (i64, i64) -> i64
    %398 = "llvm.xor"(%397, %396) : (i64, i64) -> i64
    %399 = "llvm.trunc"(%398) <{overflowFlags = 0 : i32}> : (i64) -> i32
    %400 = "llvm.xor"(%393, %399) : (i32, i32) -> i32
    %401 = "llvm.mul"(%400, %212) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %402 = "llvm.add"(%401, %213) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %403 = "llvm.mul"(%265, %213) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %404 = "llvm.uitofp"(%403) : (i32) -> f64
    %405 = "llvm.bitcast"(%404) : (f64) -> i64
    %406 = "llvm.lshr"(%405, %211) : (i64, i64) -> i64
    %407 = "llvm.xor"(%406, %405) : (i64, i64) -> i64
    %408 = "llvm.trunc"(%407) <{overflowFlags = 0 : i32}> : (i64) -> i32
    %409 = "llvm.xor"(%402, %408) : (i32, i32) -> i32
    %410 = "llvm.mul"(%409, %212) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %411 = "llvm.add"(%410, %213) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %412 = "llvm.uitofp"(%265) <{nonNeg}> : (i32) -> f64
    %413 = "llvm.fmul"(%412, %226) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %414 = "llvm.bitcast"(%413) : (f64) -> i64
    %415 = "llvm.lshr"(%414, %211) : (i64, i64) -> i64
    %416 = "llvm.xor"(%415, %414) : (i64, i64) -> i64
    %417 = "llvm.trunc"(%416) <{overflowFlags = 0 : i32}> : (i64) -> i32
    %418 = "llvm.xor"(%411, %417) : (i32, i32) -> i32
    %419 = "llvm.mul"(%418, %212) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %420 = "llvm.add"(%419, %213) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %421 = "llvm.fptrunc"(%267) : (f64) -> f32
    %422 = "llvm.bitcast"(%421) : (f32) -> i32
    %423 = "llvm.xor"(%420, %422) : (i32, i32) -> i32
    %424 = "llvm.mul"(%423, %212) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %425 = "llvm.add"(%424, %213) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %426 = "llvm.fpext"(%421) : (f32) -> f64
    %427 = "llvm.fmul"(%426, %227) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %428 = "llvm.bitcast"(%427) : (f64) -> i64
    %429 = "llvm.lshr"(%428, %211) : (i64, i64) -> i64
    %430 = "llvm.xor"(%429, %428) : (i64, i64) -> i64
    %431 = "llvm.trunc"(%430) <{overflowFlags = 0 : i32}> : (i64) -> i32
    %432 = "llvm.xor"(%425, %431) : (i32, i32) -> i32
    %433 = "llvm.mul"(%432, %212) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %434 = "llvm.add"(%433, %213) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %435 = "llvm.fmul"(%253, %267) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %436 = "llvm.fcmp"(%435, %228) <{fastmathFlags = #llvm.fastmath<none>, predicate = 14 : i64}> : (f64, f64) -> i1
    %437 = "llvm.zext"(%436) : (i1) -> i32
    %438 = "llvm.intr.fabs"(%435) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    %439 = "llvm.fcmp"(%438, %229) <{fastmathFlags = #llvm.fastmath<none>, predicate = 1 : i64}> : (f64, f64) -> i1
    %440 = "llvm.select"(%439, %215, %206) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %441 = "llvm.fcmp"(%309, %229) <{fastmathFlags = #llvm.fastmath<none>, predicate = 6 : i64}> : (f64, f64) -> i1
    %442 = "llvm.select"(%441, %216, %206) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %443 = "llvm.or"(%442, %437) <{isDisjoint}> : (i32, i32) -> i32
    %444 = "llvm.or"(%443, %440) <{isDisjoint}> : (i32, i32) -> i32
    %445 = "llvm.xor"(%434, %444) : (i32, i32) -> i32
    %446 = "llvm.mul"(%445, %212) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %447 = "llvm.add"(%446, %213) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %448 = "llvm.add"(%265, %202) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    %449 = "llvm.icmp"(%448, %230) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%449, %447, %448)[^bb1, ^bb2] <{loop_annotation = #loop_annotation, operandSegmentSizes = array<i32: 1, 0, 2>}> : (i1, i32, i32) -> ()
  ^bb3:  // pred: ^bb4
    %450 = "llvm.xor"(%447, %241) : (i32, i32) -> i32
    %451 = "llvm.mul"(%450, %212) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %452 = "llvm.add"(%451, %213) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %453 = "llvm.bitcast"(%256) : (f64) -> i64
    %454 = "llvm.lshr"(%453, %211) : (i64, i64) -> i64
    %455 = "llvm.xor"(%454, %453) : (i64, i64) -> i64
    %456 = "llvm.trunc"(%455) <{overflowFlags = 0 : i32}> : (i64) -> i32
    %457 = "llvm.xor"(%452, %456) : (i32, i32) -> i32
    %458 = "llvm.mul"(%457, %212) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %459 = "llvm.add"(%458, %213) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %460 = "llvm.xor"(%459, %242) : (i32, i32) -> i32
    %461 = "llvm.mul"(%460, %212) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %462 = "llvm.add"(%461, %213) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %463 = "llvm.xor"(%462, %243) : (i32, i32) -> i32
    %464 = "llvm.mul"(%463, %212) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %465 = "llvm.add"(%464, %213) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %466 = "llvm.fadd"(%259, %261) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %467 = "llvm.fadd"(%466, %263) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %468 = "llvm.bitcast"(%467) : (f64) -> i64
    %469 = "llvm.lshr"(%468, %211) : (i64, i64) -> i64
    %470 = "llvm.xor"(%469, %468) : (i64, i64) -> i64
    %471 = "llvm.trunc"(%470) <{overflowFlags = 0 : i32}> : (i64) -> i32
    %472 = "llvm.xor"(%465, %471) : (i32, i32) -> i32
    %473 = "llvm.mul"(%472, %212) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %474 = "llvm.add"(%473, %213) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %475 = "llvm.call"() <{CConv = #llvm.cconv<fastcc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @keep, fastmathFlags = #llvm.fastmath<none>, memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> f64
    %476 = "llvm.bitcast"(%475) : (f64) -> i64
    %477 = "llvm.lshr"(%476, %211) : (i64, i64) -> i64
    %478 = "llvm.xor"(%477, %476) : (i64, i64) -> i64
    %479 = "llvm.trunc"(%478) <{overflowFlags = 0 : i32}> : (i64) -> i32
    %480 = "llvm.xor"(%474, %479) : (i32, i32) -> i32
    %481 = "llvm.mul"(%480, %212) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %482 = "llvm.add"(%481, %213) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %483 = "llvm.call"(%247) <{CConv = #llvm.cconv<fastcc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}], callee = @pressure, fastmathFlags = #llvm.fastmath<none>, memory_effects = #llvm.memory_effects<other = none, argMem = read, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> f64
    %484 = "llvm.bitcast"(%483) : (f64) -> i64
    %485 = "llvm.lshr"(%484, %211) : (i64, i64) -> i64
    %486 = "llvm.xor"(%485, %484) : (i64, i64) -> i64
    %487 = "llvm.trunc"(%486) <{overflowFlags = 0 : i32}> : (i64) -> i32
    %488 = "llvm.xor"(%482, %487) : (i32, i32) -> i32
    %489 = "llvm.mul"(%488, %212) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %490 = "llvm.add"(%489, %213) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.intr.lifetime.start"(%248) : (!llvm.ptr) -> ()
    "llvm.store"(%209, %248) <{alignment = 1 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag], volatile_}> : (i8, !llvm.ptr) -> ()
    %491 = "llvm.xor"(%490, %244) : (i32, i32) -> i32
    %492 = "llvm.mul"(%491, %212) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %493 = "llvm.add"(%492, %213) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.intr.lifetime.end"(%248) : (!llvm.ptr) -> ()
    "llvm.intr.lifetime.end"(%247) : (!llvm.ptr) -> ()
    "llvm.intr.lifetime.end"(%245) : (!llvm.ptr) -> ()
    "llvm.return"(%493) : (i32) -> ()
  ^bb4(%494: i32):  // 2 preds: ^bb1, ^bb4
    %495 = "llvm.uitofp"(%494) <{nonNeg}> : (i32) -> f64
    %496 = "llvm.intr.fmuladd"(%495, %239, %240) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64, f64) -> f64
    %497 = "llvm.getelementptr"(%247, %494) <{elem_type = f64, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%496, %497) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag1]}> : (f64, !llvm.ptr) -> ()
    %498 = "llvm.add"(%494, %202) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    %499 = "llvm.icmp"(%498, %220) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%499, %498)[^bb3, ^bb4] <{loop_annotation = #loop_annotation, operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<f64 (i32, ...)>, linkage = #llvm.linkage<internal>, no_inline, no_unwind, passthrough = ["mustprogress", "nofree", "norecurse", "nosync", "no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "vsum", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+d", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcalculet", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 2 : i64, visibility_ = 0 : i64, will_return}> ({
  ^bb0(%arg3: i32):
    %167 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %168 = "llvm.mlir.constant"() <{value = 7 : i32}> : () -> i32
    %169 = "llvm.mlir.constant"() <{value = -8 : i32}> : () -> i32
    %170 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %171 = "llvm.mlir.constant"() <{value = 24 : i32}> : () -> i32
    %172 = "llvm.mlir.constant"() <{value = 16 : i32}> : () -> i32
    %173 = "llvm.mlir.constant"() <{value = 40 : i32}> : () -> i32
    %174 = "llvm.mlir.constant"() <{value = 32 : i32}> : () -> i32
    %175 = "llvm.mlir.constant"() <{value = 44 : i32}> : () -> i32
    %176 = "llvm.mlir.constant"() <{value = 0.000000e+00 : f64}> : () -> f64
    %177 = "llvm.alloca"(%167) <{alignment = 4 : i64, elem_type = !llvm.ptr}> : (i32) -> !llvm.ptr
    "llvm.intr.lifetime.start"(%177) : (!llvm.ptr) -> ()
    "llvm.intr.vastart"(%177) : (!llvm.ptr) -> ()
    %178 = "llvm.load"(%177) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.ptr
    %179 = "llvm.getelementptr"(%178, %168) <{elem_type = i8, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %180 = "llvm.intr.ptrmask"(%179, %169) : (!llvm.ptr, i32) -> !llvm.ptr
    %181 = "llvm.getelementptr"(%180, %170) <{elem_type = i8, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %182 = "llvm.load"(%180) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag1]}> : (!llvm.ptr) -> f64
    %183 = "llvm.load"(%181) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag2]}> : (!llvm.ptr) -> i32
    %184 = "llvm.getelementptr"(%180, %171) <{elem_type = i8, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %185 = "llvm.getelementptr"(%180, %172) <{elem_type = i8, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %186 = "llvm.load"(%185) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag1]}> : (!llvm.ptr) -> f64
    %187 = "llvm.load"(%184) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag2]}> : (!llvm.ptr) -> i32
    %188 = "llvm.getelementptr"(%180, %173) <{elem_type = i8, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %189 = "llvm.getelementptr"(%180, %174) <{elem_type = i8, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %190 = "llvm.load"(%189) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag1]}> : (!llvm.ptr) -> f64
    %191 = "llvm.load"(%188) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag2]}> : (!llvm.ptr) -> i32
    %192 = "llvm.sitofp"(%191) : (i32) -> f64
    %193 = "llvm.getelementptr"(%180, %175) <{elem_type = i8, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %194 = "llvm.fadd"(%182, %176) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %195 = "llvm.sitofp"(%183) : (i32) -> f64
    %196 = "llvm.fadd"(%194, %195) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %197 = "llvm.fadd"(%196, %186) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %198 = "llvm.sitofp"(%187) : (i32) -> f64
    %199 = "llvm.fadd"(%197, %198) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %200 = "llvm.fadd"(%199, %190) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.store"(%193, %177) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %201 = "llvm.fadd"(%200, %192) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.intr.vaend"(%177) : (!llvm.ptr) -> ()
    "llvm.intr.lifetime.end"(%177) : (!llvm.ptr) -> ()
    "llvm.return"(%201) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<fastcc>, arg_attrs = [{llvm.align = 8 : i64, llvm.noalias, llvm.nocapture, llvm.nonnull, llvm.sret = !llvm.struct<"struct.big", (f64, f64, f64)>, llvm.writeonly}, {llvm.nocapture, llvm.nonnull, llvm.noundef, llvm.readonly}], dso_local, function_type = !llvm.func<void (ptr, ptr)>, linkage = #llvm.linkage<internal>, memory_effects = #llvm.memory_effects<other = none, argMem = readwrite, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_inline, no_unwind, passthrough = ["mustprogress", "nofree", "norecurse", "nosync", "no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "scale", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+d", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcalculet", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 2 : i64, visibility_ = 0 : i64, will_return}> ({
  ^bb0(%arg1: !llvm.ptr, %arg2: !llvm.ptr):
    %154 = "llvm.mlir.constant"() <{value = 2.500000e+00 : f64}> : () -> f64
    %155 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %156 = "llvm.mlir.constant"() <{value = 16 : i32}> : () -> i32
    %157 = "llvm.load"(%arg2) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag3]}> : (!llvm.ptr) -> f64
    %158 = "llvm.fmul"(%157, %154) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.store"(%158, %arg1) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag3]}> : (f64, !llvm.ptr) -> ()
    %159 = "llvm.getelementptr"(%arg1, %155) <{elem_type = i8, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %160 = "llvm.getelementptr"(%arg2, %155) <{elem_type = i8, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %161 = "llvm.load"(%160) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag4]}> : (!llvm.ptr) -> f64
    %162 = "llvm.fmul"(%161, %154) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.store"(%162, %159) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag4]}> : (f64, !llvm.ptr) -> ()
    %163 = "llvm.getelementptr"(%arg1, %156) <{elem_type = i8, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %164 = "llvm.getelementptr"(%arg2, %156) <{elem_type = i8, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %165 = "llvm.load"(%164) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag5]}> : (!llvm.ptr) -> f64
    %166 = "llvm.fmul"(%165, %154) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.store"(%166, %163) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag5]}> : (f64, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<fastcc>, dso_local, function_type = !llvm.func<f64 ()>, linkage = #llvm.linkage<internal>, memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_inline, no_unwind, passthrough = ["mustprogress", "nofree", "norecurse", "nosync", "no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], res_attrs = [{llvm.noundef}], sym_name = "keep", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+d", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcalculet", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 2 : i64, visibility_ = 0 : i64, will_return}> ({
    %153 = "llvm.mlir.constant"() <{value = 2.467500e+02 : f64}> : () -> f64
    "llvm.return"(%153) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<fastcc>, arg_attrs = [{llvm.nocapture, llvm.nonnull, llvm.noundef, llvm.readonly}], dso_local, function_type = !llvm.func<f64 (ptr)>, linkage = #llvm.linkage<internal>, memory_effects = #llvm.memory_effects<other = none, argMem = read, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_inline, no_unwind, passthrough = ["nofree", "norecurse", "nosync", "no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "pressure", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+d", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcalculet", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 2 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: !llvm.ptr):
    %0 = "llvm.mlir.constant"() <{value = 0.000000e+00 : f64}> : () -> f64
    %1 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %2 = "llvm.mlir.constant"() <{value = 3.300000e+01 : f64}> : () -> f64
    %3 = "llvm.mlir.constant"() <{value = 3.200000e+01 : f64}> : () -> f64
    %4 = "llvm.mlir.constant"() <{value = 3.100000e+01 : f64}> : () -> f64
    %5 = "llvm.mlir.constant"() <{value = 3.000000e+01 : f64}> : () -> f64
    %6 = "llvm.mlir.constant"() <{value = 2.900000e+01 : f64}> : () -> f64
    %7 = "llvm.mlir.constant"() <{value = 2.800000e+01 : f64}> : () -> f64
    %8 = "llvm.mlir.constant"() <{value = 2.700000e+01 : f64}> : () -> f64
    %9 = "llvm.mlir.constant"() <{value = 2.600000e+01 : f64}> : () -> f64
    %10 = "llvm.mlir.constant"() <{value = 2.500000e+01 : f64}> : () -> f64
    %11 = "llvm.mlir.constant"() <{value = 2.400000e+01 : f64}> : () -> f64
    %12 = "llvm.mlir.constant"() <{value = 2.300000e+01 : f64}> : () -> f64
    %13 = "llvm.mlir.constant"() <{value = 2.200000e+01 : f64}> : () -> f64
    %14 = "llvm.mlir.constant"() <{value = 2.100000e+01 : f64}> : () -> f64
    %15 = "llvm.mlir.constant"() <{value = 2.000000e+01 : f64}> : () -> f64
    %16 = "llvm.mlir.constant"() <{value = 1.900000e+01 : f64}> : () -> f64
    %17 = "llvm.mlir.constant"() <{value = 1.800000e+01 : f64}> : () -> f64
    %18 = "llvm.mlir.constant"() <{value = 1.700000e+01 : f64}> : () -> f64
    %19 = "llvm.mlir.constant"() <{value = 1.600000e+01 : f64}> : () -> f64
    %20 = "llvm.mlir.constant"() <{value = 1.500000e+01 : f64}> : () -> f64
    %21 = "llvm.mlir.constant"() <{value = 1.400000e+01 : f64}> : () -> f64
    %22 = "llvm.mlir.constant"() <{value = 1.300000e+01 : f64}> : () -> f64
    %23 = "llvm.mlir.constant"() <{value = 1.200000e+01 : f64}> : () -> f64
    %24 = "llvm.mlir.constant"() <{value = 1.100000e+01 : f64}> : () -> f64
    %25 = "llvm.mlir.constant"() <{value = 1.000000e+01 : f64}> : () -> f64
    %26 = "llvm.mlir.constant"() <{value = 9.000000e+00 : f64}> : () -> f64
    %27 = "llvm.mlir.constant"() <{value = 8.000000e+00 : f64}> : () -> f64
    %28 = "llvm.mlir.constant"() <{value = 7.000000e+00 : f64}> : () -> f64
    %29 = "llvm.mlir.constant"() <{value = 6.000000e+00 : f64}> : () -> f64
    %30 = "llvm.mlir.constant"() <{value = 5.000000e+00 : f64}> : () -> f64
    %31 = "llvm.mlir.constant"() <{value = 4.000000e+00 : f64}> : () -> f64
    %32 = "llvm.mlir.constant"() <{value = 3.000000e+00 : f64}> : () -> f64
    %33 = "llvm.mlir.constant"() <{value = 2.000000e+00 : f64}> : () -> f64
    %34 = "llvm.mlir.constant"() <{value = 1.000000e+00 : f64}> : () -> f64
    %35 = "llvm.mlir.constant"() <{value = 1.000100e+00 : f64}> : () -> f64
    %36 = "llvm.mlir.constant"() <{value = 1.000000e-01 : f64}> : () -> f64
    %37 = "llvm.mlir.constant"() <{value = 1.000000e-02 : f64}> : () -> f64
    %38 = "llvm.mlir.constant"() <{value = 5.000000e-01 : f64}> : () -> f64
    %39 = "llvm.mlir.constant"() <{value = 2.500000e-01 : f64}> : () -> f64
    %40 = "llvm.mlir.constant"() <{value = 1.250000e-01 : f64}> : () -> f64
    %41 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %42 = "llvm.mlir.constant"() <{value = 64 : i32}> : () -> i32
    "llvm.br"(%0, %1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23, %24, %25, %26, %27, %28, %29, %30, %31, %32, %33, %34)[^bb2] : (f64, i32, f64, f64, f64, f64, f64, f64, f64, f64, f64, f64, f64, f64, f64, f64, f64, f64, f64, f64, f64, f64, f64, f64, f64, f64, f64, f64, f64, f64, f64, f64, f64, f64, f64) -> ()
  ^bb1:  // pred: ^bb2
    %43 = "llvm.fadd"(%114, %113) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %44 = "llvm.fadd"(%115, %43) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %45 = "llvm.fadd"(%116, %44) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %46 = "llvm.fadd"(%117, %45) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %47 = "llvm.fadd"(%119, %46) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %48 = "llvm.fadd"(%120, %47) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %49 = "llvm.fadd"(%121, %48) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %50 = "llvm.fadd"(%122, %49) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %51 = "llvm.fadd"(%124, %50) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %52 = "llvm.fadd"(%125, %51) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %53 = "llvm.fadd"(%126, %52) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %54 = "llvm.fadd"(%127, %53) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %55 = "llvm.fadd"(%129, %54) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %56 = "llvm.fadd"(%130, %55) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %57 = "llvm.fadd"(%131, %56) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %58 = "llvm.fadd"(%132, %57) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %59 = "llvm.fadd"(%133, %58) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %60 = "llvm.fadd"(%134, %59) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %61 = "llvm.fadd"(%136, %60) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %62 = "llvm.fadd"(%137, %61) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %63 = "llvm.fadd"(%138, %62) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %64 = "llvm.fadd"(%139, %63) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %65 = "llvm.fadd"(%140, %64) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %66 = "llvm.fadd"(%141, %65) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %67 = "llvm.fadd"(%142, %66) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %68 = "llvm.fadd"(%143, %67) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %69 = "llvm.fadd"(%144, %68) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %70 = "llvm.fadd"(%145, %69) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %71 = "llvm.fadd"(%146, %70) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %72 = "llvm.fadd"(%147, %71) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %73 = "llvm.fadd"(%148, %72) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %74 = "llvm.fadd"(%149, %73) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %75 = "llvm.fadd"(%150, %74) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.return"(%75) : (f64) -> ()
  ^bb2(%76: f64, %77: i32, %78: f64, %79: f64, %80: f64, %81: f64, %82: f64, %83: f64, %84: f64, %85: f64, %86: f64, %87: f64, %88: f64, %89: f64, %90: f64, %91: f64, %92: f64, %93: f64, %94: f64, %95: f64, %96: f64, %97: f64, %98: f64, %99: f64, %100: f64, %101: f64, %102: f64, %103: f64, %104: f64, %105: f64, %106: f64, %107: f64, %108: f64, %109: f64, %110: f64):  // 2 preds: ^bb0, ^bb2
    %111 = "llvm.getelementptr"(%arg0, %77) <{elem_type = f64, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %112 = "llvm.load"(%111) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag1]}> : (!llvm.ptr) -> f64
    %113 = "llvm.fadd"(%76, %112) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %114 = "llvm.fmul"(%110, %35) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %115 = "llvm.fsub"(%109, %112) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %116 = "llvm.fadd"(%114, %108) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %117 = "llvm.intr.fmuladd"(%115, %36, %107) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64, f64) -> f64
    %118 = "llvm.fneg"(%116) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    %119 = "llvm.intr.fmuladd"(%118, %37, %106) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64, f64) -> f64
    %120 = "llvm.fadd"(%105, %117) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %121 = "llvm.fsub"(%104, %119) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %122 = "llvm.intr.fmuladd"(%120, %38, %103) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64, f64) -> f64
    %123 = "llvm.fneg"(%121) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    %124 = "llvm.intr.fmuladd"(%123, %38, %102) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64, f64) -> f64
    %125 = "llvm.fadd"(%101, %122) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %126 = "llvm.fadd"(%124, %100) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %127 = "llvm.intr.fmuladd"(%125, %39, %99) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64, f64) -> f64
    %128 = "llvm.fneg"(%126) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    %129 = "llvm.intr.fmuladd"(%128, %39, %98) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64, f64) -> f64
    %130 = "llvm.fadd"(%97, %127) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %131 = "llvm.fsub"(%96, %129) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %132 = "llvm.fadd"(%95, %130) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %133 = "llvm.fsub"(%94, %131) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %134 = "llvm.intr.fmuladd"(%132, %40, %93) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64, f64) -> f64
    %135 = "llvm.fneg"(%133) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    %136 = "llvm.intr.fmuladd"(%135, %40, %92) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64, f64) -> f64
    %137 = "llvm.fadd"(%91, %134) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %138 = "llvm.fsub"(%90, %136) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %139 = "llvm.fadd"(%89, %137) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %140 = "llvm.fsub"(%88, %138) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %141 = "llvm.fadd"(%87, %139) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %142 = "llvm.fsub"(%86, %140) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %143 = "llvm.fadd"(%85, %141) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %144 = "llvm.fsub"(%84, %142) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %145 = "llvm.fadd"(%83, %143) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %146 = "llvm.fsub"(%82, %144) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %147 = "llvm.fadd"(%81, %145) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %148 = "llvm.fsub"(%80, %146) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %149 = "llvm.fadd"(%79, %147) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %150 = "llvm.fsub"(%78, %148) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %151 = "llvm.add"(%77, %41) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    %152 = "llvm.icmp"(%151, %42) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%152, %113, %151, %150, %149, %148, %147, %146, %145, %144, %143, %142, %141, %140, %139, %138, %137, %136, %134, %133, %132, %131, %130, %129, %127, %126, %125, %124, %122, %121, %120, %119, %117, %116, %115, %114)[^bb1, ^bb2] <{loop_annotation = #loop_annotation, operandSegmentSizes = array<i32: 1, 0, 35>}> : (i1, f64, i32, f64, f64, f64, f64, f64, f64, f64, f64, f64, f64, f64, f64, f64, f64, f64, f64, f64, f64, f64, f64, f64, f64, f64, f64, f64, f64, f64, f64, f64, f64, f64, f64, f64) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<32> : vector<4xi64>, i64 = dense<64> : vector<2xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little", "dlti.mangling_mode" = "e", "dlti.legal_int_widths" = array<i32: 32>, "dlti.stack_alignment" = 128 : i64>, llvm.ident = "clang version 22.1.8", llvm.module_asm = [], llvm.target_triple = "riscv32-unknown-unknown-elf"} : () -> ()

