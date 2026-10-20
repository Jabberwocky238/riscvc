#loop_annotation = #llvm.loop_annotation<mustProgress = true>
#tbaa_root = #llvm.tbaa_root<id = "Simple C/C++ TBAA">
#tbaa_type_desc = #llvm.tbaa_type_desc<id = "omnipotent char", members = {<#tbaa_root, 0>}>
#tbaa_type_desc1 = #llvm.tbaa_type_desc<id = "_BitInt(128)", members = {<#tbaa_type_desc, 0>}>
#tbaa_type_desc2 = #llvm.tbaa_type_desc<id = "_BitInt(112)", members = {<#tbaa_type_desc, 0>}>
#tbaa_type_desc3 = #llvm.tbaa_type_desc<id = "_BitInt(96)", members = {<#tbaa_type_desc, 0>}>
#tbaa_type_desc4 = #llvm.tbaa_type_desc<id = "long long", members = {<#tbaa_type_desc, 0>}>
#tbaa_tag = #llvm.tbaa_tag<base_type = #tbaa_type_desc1, access_type = #tbaa_type_desc1, offset = 0>
#tbaa_tag1 = #llvm.tbaa_tag<base_type = #tbaa_type_desc2, access_type = #tbaa_type_desc2, offset = 0>
#tbaa_tag2 = #llvm.tbaa_tag<base_type = #tbaa_type_desc3, access_type = #tbaa_type_desc3, offset = 0>
#tbaa_tag3 = #llvm.tbaa_tag<base_type = #tbaa_type_desc4, access_type = #tbaa_type_desc4, offset = 0>
"builtin.module"() ({
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 8 : i64, dso_local, global_type = i64, linkage = #llvm.linkage<internal>, sym_name = "s", unnamed_addr = 2 : i64, value = -7046029254386353131 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<error, "wchar_size", 4 : i32>, #llvm.mlir.module_flag<error, "target-abi", "ilp32f">, #llvm.mlir.module_flag<min, "SmallDataLimit", 0 : i32>]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.align = 8 : i64, llvm.noalias, llvm.nocapture, llvm.sret = i128, llvm.writeonly}, {llvm.nocapture, llvm.noundef, llvm.readonly}, {llvm.nocapture, llvm.noundef, llvm.readonly}, {llvm.noundef}], dso_local, function_type = !llvm.func<void (ptr, ptr, ptr, i32)>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = readwrite, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_inline, no_unwind, passthrough = ["mustprogress", "nofree", "norecurse", "nosync", "no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "mix128", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 1 : i64, visibility_ = 0 : i64, will_return}> ({
  ^bb0(%arg16: !llvm.ptr, %arg17: !llvm.ptr, %arg18: !llvm.ptr, %arg19: i32):
    %278 = "llvm.mlir.constant"() <{value = 127 : i32}> : () -> i32
    %279 = "llvm.mlir.constant"() <{value = 37 : i128}> : () -> i128
    %280 = "llvm.mlir.constant"() <{value = 70 : i128}> : () -> i128
    %281 = "llvm.load"(%arg17) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> i128
    %282 = "llvm.load"(%arg18) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> i128
    %283 = "llvm.mul"(%282, %281) <{overflowFlags = 0 : i32}> : (i128, i128) -> i128
    %284 = "llvm.zext"(%arg19) : (i32) -> i128
    %285 = "llvm.shl"(%281, %284) <{overflowFlags = 0 : i32}> : (i128, i128) -> i128
    %286 = "llvm.sub"(%278, %arg19) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %287 = "llvm.zext"(%286) <{nonNeg}> : (i32) -> i128
    %288 = "llvm.lshr"(%282, %287) : (i128, i128) -> i128
    %289 = "llvm.add"(%282, %281) <{overflowFlags = 0 : i32}> : (i128, i128) -> i128
    %290 = "llvm.sub"(%281, %282) <{overflowFlags = 0 : i32}> : (i128, i128) -> i128
    %291 = "llvm.shl"(%281, %279) <{overflowFlags = 0 : i32}> : (i128, i128) -> i128
    %292 = "llvm.lshr"(%282, %280) : (i128, i128) -> i128
    %293 = "llvm.ashr"(%281, %284) : (i128, i128) -> i128
    %294 = "llvm.xor"(%291, %285) : (i128, i128) -> i128
    %295 = "llvm.xor"(%294, %293) : (i128, i128) -> i128
    %296 = "llvm.xor"(%295, %283) : (i128, i128) -> i128
    %297 = "llvm.xor"(%296, %288) : (i128, i128) -> i128
    %298 = "llvm.xor"(%297, %289) : (i128, i128) -> i128
    %299 = "llvm.xor"(%298, %290) : (i128, i128) -> i128
    %300 = "llvm.xor"(%299, %292) : (i128, i128) -> i128
    "llvm.store"(%300, %arg16) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (i128, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.align = 8 : i64, llvm.noalias, llvm.nocapture, llvm.sret = i128, llvm.writeonly}, {llvm.nocapture, llvm.noundef, llvm.readonly}, {llvm.nocapture, llvm.noundef, llvm.readonly}], dso_local, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = readwrite, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_inline, no_unwind, passthrough = ["mustprogress", "nofree", "norecurse", "nosync", "no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "sdiv128", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 1 : i64, visibility_ = 0 : i64, will_return}> ({
  ^bb0(%arg13: !llvm.ptr, %arg14: !llvm.ptr, %arg15: !llvm.ptr):
    %270 = "llvm.load"(%arg14) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> i128
    %271 = "llvm.load"(%arg15) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> i128
    %272 = "llvm.freeze"(%270) : (i128) -> i128
    %273 = "llvm.freeze"(%271) : (i128) -> i128
    %274 = "llvm.sdiv"(%272, %273) : (i128, i128) -> i128
    %275 = "llvm.mul"(%274, %273) <{overflowFlags = 0 : i32}> : (i128, i128) -> i128
    %276 = "llvm.sub"(%272, %275) <{overflowFlags = 0 : i32}> : (i128, i128) -> i128
    %277 = "llvm.add"(%276, %274) <{overflowFlags = 0 : i32}> : (i128, i128) -> i128
    "llvm.store"(%277, %arg13) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (i128, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.align = 8 : i64, llvm.noalias, llvm.nocapture, llvm.sret = i128, llvm.writeonly}, {llvm.nocapture, llvm.noundef, llvm.readonly}, {llvm.nocapture, llvm.noundef, llvm.readonly}], dso_local, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = readwrite, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_inline, no_unwind, passthrough = ["mustprogress", "nofree", "norecurse", "nosync", "no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "udiv128", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 1 : i64, visibility_ = 0 : i64, will_return}> ({
  ^bb0(%arg10: !llvm.ptr, %arg11: !llvm.ptr, %arg12: !llvm.ptr):
    %262 = "llvm.load"(%arg11) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> i128
    %263 = "llvm.load"(%arg12) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> i128
    %264 = "llvm.freeze"(%262) : (i128) -> i128
    %265 = "llvm.freeze"(%263) : (i128) -> i128
    %266 = "llvm.udiv"(%264, %265) : (i128, i128) -> i128
    %267 = "llvm.mul"(%266, %265) <{overflowFlags = 0 : i32}> : (i128, i128) -> i128
    %268 = "llvm.sub"(%264, %267) <{overflowFlags = 0 : i32}> : (i128, i128) -> i128
    %269 = "llvm.xor"(%268, %266) : (i128, i128) -> i128
    "llvm.store"(%269, %arg10) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (i128, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.align = 8 : i64, llvm.noalias, llvm.nocapture, llvm.sret = i128, llvm.writeonly}, {llvm.nocapture, llvm.noundef, llvm.readonly}, {llvm.nocapture, llvm.noundef, llvm.readonly}, {llvm.noundef}], dso_local, function_type = !llvm.func<void (ptr, ptr, ptr, i32)>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = readwrite, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_inline, no_unwind, passthrough = ["mustprogress", "nofree", "norecurse", "nosync", "no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "mix112", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 1 : i64, visibility_ = 0 : i64, will_return}> ({
  ^bb0(%arg6: !llvm.ptr, %arg7: !llvm.ptr, %arg8: !llvm.ptr, %arg9: i32):
    %239 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %240 = "llvm.mlir.constant"() <{value = 60 : i112}> : () -> i112
    %241 = "llvm.mlir.constant"() <{value = 1 : i112}> : () -> i112
    %242 = "llvm.load"(%arg7) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag1]}> : (!llvm.ptr) -> i128
    %243 = "llvm.trunc"(%242) <{overflowFlags = 0 : i32}> : (i128) -> i112
    %244 = "llvm.load"(%arg8) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag1]}> : (!llvm.ptr) -> i128
    %245 = "llvm.trunc"(%244) <{overflowFlags = 0 : i32}> : (i128) -> i112
    %246 = "llvm.mul"(%245, %243) <{overflowFlags = 0 : i32}> : (i112, i112) -> i112
    %247 = "llvm.zext"(%arg9) <{nonNeg}> : (i32) -> i112
    %248 = "llvm.ashr"(%243, %247) : (i112, i112) -> i112
    %249 = "llvm.sdiv"(%arg9, %239) : (i32, i32) -> i32
    %250 = "llvm.zext"(%249) <{nonNeg}> : (i32) -> i112
    %251 = "llvm.shl"(%245, %250) <{overflowFlags = 0 : i32}> : (i112, i112) -> i112
    %252 = "llvm.ashr"(%245, %240) : (i112, i112) -> i112
    %253 = "llvm.or"(%252, %241) : (i112, i112) -> i112
    %254 = "llvm.sdiv"(%243, %253) : (i112, i112) -> i112
    %255 = "llvm.or"(%245, %241) : (i112, i112) -> i112
    %256 = "llvm.srem"(%243, %255) : (i112, i112) -> i112
    %257 = "llvm.add"(%254, %248) <{overflowFlags = 0 : i32}> : (i112, i112) -> i112
    %258 = "llvm.add"(%257, %246) <{overflowFlags = 0 : i32}> : (i112, i112) -> i112
    %259 = "llvm.sub"(%258, %251) <{overflowFlags = 0 : i32}> : (i112, i112) -> i112
    %260 = "llvm.add"(%259, %256) <{overflowFlags = 1 : i32}> : (i112, i112) -> i112
    %261 = "llvm.sext"(%260) : (i112) -> i128
    "llvm.store"(%261, %arg6) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag1]}> : (i128, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.align = 8 : i64, llvm.noalias, llvm.nocapture, llvm.sret = i128, llvm.writeonly}, {llvm.nocapture, llvm.noundef, llvm.readonly}, {llvm.nocapture, llvm.noundef, llvm.readonly}], dso_local, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = readwrite, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_inline, no_unwind, passthrough = ["mustprogress", "nofree", "norecurse", "nosync", "no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "mix96", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 1 : i64, visibility_ = 0 : i64, will_return}> ({
  ^bb0(%arg3: !llvm.ptr, %arg4: !llvm.ptr, %arg5: !llvm.ptr):
    %226 = "llvm.mlir.constant"() <{value = 50 : i96}> : () -> i96
    %227 = "llvm.mlir.constant"() <{value = 1 : i96}> : () -> i96
    %228 = "llvm.load"(%arg4) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag2]}> : (!llvm.ptr) -> i128
    %229 = "llvm.trunc"(%228) <{overflowFlags = 0 : i32}> : (i128) -> i96
    %230 = "llvm.load"(%arg5) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag2]}> : (!llvm.ptr) -> i128
    %231 = "llvm.trunc"(%230) <{overflowFlags = 0 : i32}> : (i128) -> i96
    %232 = "llvm.mul"(%231, %229) <{overflowFlags = 0 : i32}> : (i96, i96) -> i96
    %233 = "llvm.ashr"(%229, %226) : (i96, i96) -> i96
    %234 = "llvm.or"(%231, %227) : (i96, i96) -> i96
    %235 = "llvm.sdiv"(%229, %234) : (i96, i96) -> i96
    %236 = "llvm.sub"(%235, %233) <{overflowFlags = 0 : i32}> : (i96, i96) -> i96
    %237 = "llvm.add"(%236, %232) <{overflowFlags = 0 : i32}> : (i96, i96) -> i96
    %238 = "llvm.sext"(%237) : (i96) -> i128
    "llvm.store"(%238, %arg3) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag2]}> : (i128, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.noundef, llvm.zeroext}, {llvm.noundef, llvm.signext}, {llvm.noundef}], dso_local, function_type = !llvm.func<i48 (i48, i48, i32)>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_inline, no_unwind, passthrough = ["mustprogress", "nofree", "norecurse", "nosync", "no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], res_attrs = [{llvm.zeroext}], sym_name = "mix48", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 1 : i64, visibility_ = 0 : i64, will_return}> ({
  ^bb0(%arg0: i48, %arg1: i48, %arg2: i32):
    %215 = "llvm.mlir.constant"() <{value = 1 : i48}> : () -> i48
    %216 = "llvm.mlir.constant"() <{value = 1000 : i48}> : () -> i48
    %217 = "llvm.mul"(%arg1, %arg0) <{overflowFlags = 0 : i32}> : (i48, i48) -> i48
    %218 = "llvm.zext"(%arg2) <{nonNeg}> : (i32) -> i48
    %219 = "llvm.ashr"(%arg1, %218) : (i48, i48) -> i48
    %220 = "llvm.or"(%arg1, %215) : (i48, i48) -> i48
    %221 = "llvm.udiv"(%arg0, %220) : (i48, i48) -> i48
    %222 = "llvm.srem"(%arg1, %216) : (i48, i48) -> i48
    %223 = "llvm.add"(%222, %217) <{overflowFlags = 0 : i32}> : (i48, i48) -> i48
    %224 = "llvm.add"(%223, %219) <{overflowFlags = 0 : i32}> : (i48, i48) -> i48
    %225 = "llvm.add"(%224, %221) <{overflowFlags = 0 : i32}> : (i48, i48) -> i48
    "llvm.return"(%225) : (i48) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = readwrite, argMem = none, inaccessibleMem = none, errnoMem = readwrite, targetMem0 = none, targetMem1 = none>, no_unwind, passthrough = ["nofree", "norecurse", "nosync", "no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "main", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 1 : i64, visibility_ = 0 : i64}> ({
    %0 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "llvm.mlir.addressof"() <{global_name = @s}> : () -> !llvm.ptr
    %2 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %3 = "llvm.mlir.constant"() <{value = 13 : i64}> : () -> i64
    %4 = "llvm.mlir.constant"() <{value = 7 : i64}> : () -> i64
    %5 = "llvm.mlir.constant"() <{value = 17 : i64}> : () -> i64
    %6 = "llvm.mlir.constant"() <{value = 64 : i128}> : () -> i128
    %7 = "llvm.mlir.constant"() <{value = 1 : i128}> : () -> i128
    %8 = "llvm.mlir.constant"() <{value = 127 : i32}> : () -> i32
    %9 = "llvm.mlir.constant"() <{value = 33 : i32}> : () -> i32
    %10 = "llvm.mlir.constant"() <{value = 32 : i128}> : () -> i128
    %11 = "llvm.mlir.constant"() <{value = 31 : i32}> : () -> i32
    %12 = "llvm.mlir.constant"() <{value = 96 : i128}> : () -> i128
    %13 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %14 = "llvm.mlir.constant"() <{value = -112 : i32}> : () -> i32
    %15 = "llvm.mlir.constant"() <{value = 112 : i32}> : () -> i32
    %16 = "llvm.mlir.constant"() <{value = 16 : i128}> : () -> i128
    %17 = "llvm.mlir.constant"() <{value = 48 : i8}> : () -> i8
    %18 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %19 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %20 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %21 = "llvm.mlir.constant"() <{value = 120 : i128}> : () -> i128
    %22 = "llvm.mlir.constant"() <{value = 40 : i32}> : () -> i32
    %23 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = i128}> : (i32) -> !llvm.ptr
    %24 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = i128}> : (i32) -> !llvm.ptr
    %25 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = i128}> : (i32) -> !llvm.ptr
    %26 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = i128}> : (i32) -> !llvm.ptr
    %27 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = i128}> : (i32) -> !llvm.ptr
    %28 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = i128}> : (i32) -> !llvm.ptr
    %29 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = i128}> : (i32) -> !llvm.ptr
    %30 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = i128}> : (i32) -> !llvm.ptr
    %31 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = i128}> : (i32) -> !llvm.ptr
    %32 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = i128}> : (i32) -> !llvm.ptr
    %33 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = i128}> : (i32) -> !llvm.ptr
    %34 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = i128}> : (i32) -> !llvm.ptr
    %35 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = i128}> : (i32) -> !llvm.ptr
    %36 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = i128}> : (i32) -> !llvm.ptr
    %37 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = i128}> : (i32) -> !llvm.ptr
    %38 = "llvm.load"(%1) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag3]}> : (!llvm.ptr) -> i64
    "llvm.br"(%2, %2, %38)[^bb2] : (i32, i32, i64) -> ()
  ^bb1:  // pred: ^bb2
    "llvm.store"(%80, %1) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag3]}> : (i64, !llvm.ptr) -> ()
    "llvm.return"(%212) : (i32) -> ()
  ^bb2(%39: i32, %40: i32, %41: i64):  // 2 preds: ^bb0, ^bb2
    %42 = "llvm.shl"(%41, %3) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %43 = "llvm.xor"(%42, %41) : (i64, i64) -> i64
    %44 = "llvm.lshr"(%43, %4) : (i64, i64) -> i64
    %45 = "llvm.xor"(%44, %43) : (i64, i64) -> i64
    %46 = "llvm.shl"(%45, %5) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %47 = "llvm.xor"(%46, %45) : (i64, i64) -> i64
    %48 = "llvm.zext"(%47) : (i64) -> i128
    %49 = "llvm.shl"(%48, %6) <{overflowFlags = 2 : i32}> : (i128, i128) -> i128
    %50 = "llvm.shl"(%47, %3) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %51 = "llvm.xor"(%50, %47) : (i64, i64) -> i64
    %52 = "llvm.lshr"(%51, %4) : (i64, i64) -> i64
    %53 = "llvm.xor"(%52, %51) : (i64, i64) -> i64
    %54 = "llvm.shl"(%53, %5) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %55 = "llvm.xor"(%54, %53) : (i64, i64) -> i64
    %56 = "llvm.zext"(%55) : (i64) -> i128
    %57 = "llvm.or"(%49, %56) <{isDisjoint}> : (i128, i128) -> i128
    %58 = "llvm.shl"(%55, %3) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %59 = "llvm.xor"(%58, %55) : (i64, i64) -> i64
    %60 = "llvm.lshr"(%59, %4) : (i64, i64) -> i64
    %61 = "llvm.xor"(%60, %59) : (i64, i64) -> i64
    %62 = "llvm.shl"(%61, %5) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %63 = "llvm.xor"(%62, %61) : (i64, i64) -> i64
    %64 = "llvm.zext"(%63) : (i64) -> i128
    %65 = "llvm.shl"(%64, %6) <{overflowFlags = 2 : i32}> : (i128, i128) -> i128
    %66 = "llvm.shl"(%63, %3) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %67 = "llvm.xor"(%66, %63) : (i64, i64) -> i64
    %68 = "llvm.lshr"(%67, %4) : (i64, i64) -> i64
    %69 = "llvm.xor"(%68, %67) : (i64, i64) -> i64
    %70 = "llvm.shl"(%69, %5) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %71 = "llvm.xor"(%70, %69) : (i64, i64) -> i64
    %72 = "llvm.zext"(%71) : (i64) -> i128
    %73 = "llvm.or"(%65, %72) <{isDisjoint}> : (i128, i128) -> i128
    %74 = "llvm.or"(%73, %7) : (i128, i128) -> i128
    %75 = "llvm.shl"(%71, %3) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %76 = "llvm.xor"(%75, %71) : (i64, i64) -> i64
    %77 = "llvm.lshr"(%76, %4) : (i64, i64) -> i64
    %78 = "llvm.xor"(%77, %76) : (i64, i64) -> i64
    %79 = "llvm.shl"(%78, %5) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %80 = "llvm.xor"(%79, %78) : (i64, i64) -> i64
    %81 = "llvm.trunc"(%78) <{overflowFlags = 0 : i32}> : (i64) -> i32
    %82 = "llvm.and"(%81, %8) : (i32, i32) -> i32
    %83 = "llvm.mul"(%39, %9) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.intr.lifetime.start"(%24) : (!llvm.ptr) -> ()
    "llvm.store"(%57, %24) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (i128, !llvm.ptr) -> ()
    "llvm.intr.lifetime.start"(%25) : (!llvm.ptr) -> ()
    "llvm.store"(%74, %25) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (i128, !llvm.ptr) -> ()
    "llvm.call"(%23, %24, %25, %82) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.align = 8 : i64, llvm.nonnull, llvm.sret = i128}, {llvm.nonnull, llvm.noundef}, {llvm.nonnull, llvm.noundef}, {llvm.noundef}], callee = @mix128, fastmathFlags = #llvm.fastmath<none>, memory_effects = #llvm.memory_effects<other = none, argMem = readwrite, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>}> : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    %84 = "llvm.load"(%23) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> i128
    "llvm.intr.lifetime.end"(%24) : (!llvm.ptr) -> ()
    "llvm.intr.lifetime.end"(%25) : (!llvm.ptr) -> ()
    %85 = "llvm.trunc"(%84) <{overflowFlags = 0 : i32}> : (i128) -> i32
    %86 = "llvm.lshr"(%84, %10) : (i128, i128) -> i128
    %87 = "llvm.mul"(%85, %11) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %88 = "llvm.trunc"(%86) <{overflowFlags = 0 : i32}> : (i128) -> i32
    %89 = "llvm.add"(%87, %88) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %90 = "llvm.lshr"(%84, %6) : (i128, i128) -> i128
    %91 = "llvm.mul"(%89, %11) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %92 = "llvm.trunc"(%90) <{overflowFlags = 0 : i32}> : (i128) -> i32
    %93 = "llvm.add"(%91, %92) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %94 = "llvm.lshr"(%84, %12) : (i128, i128) -> i128
    %95 = "llvm.mul"(%93, %11) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %96 = "llvm.trunc"(%94) <{overflowFlags = 2 : i32}> : (i128) -> i32
    %97 = "llvm.add"(%83, %96) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %98 = "llvm.add"(%97, %95) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %99 = "llvm.mul"(%98, %9) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %100 = "llvm.mul"(%40, %13) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    %101 = "llvm.zext"(%100) <{nonNeg}> : (i32) -> i128
    %102 = "llvm.lshr"(%74, %101) : (i128, i128) -> i128
    %103 = "llvm.or"(%102, %7) : (i128, i128) -> i128
    "llvm.intr.lifetime.start"(%27) : (!llvm.ptr) -> ()
    "llvm.store"(%57, %27) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (i128, !llvm.ptr) -> ()
    "llvm.intr.lifetime.start"(%28) : (!llvm.ptr) -> ()
    "llvm.store"(%103, %28) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (i128, !llvm.ptr) -> ()
    "llvm.call"(%26, %27, %28) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.align = 8 : i64, llvm.nonnull, llvm.sret = i128}, {llvm.nonnull, llvm.noundef}, {llvm.nonnull, llvm.noundef}], callee = @sdiv128, fastmathFlags = #llvm.fastmath<none>, memory_effects = #llvm.memory_effects<other = none, argMem = readwrite, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (!llvm.ptr, !llvm.ptr, !llvm.ptr) -> ()
    %104 = "llvm.load"(%26) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> i128
    "llvm.intr.lifetime.end"(%27) : (!llvm.ptr) -> ()
    "llvm.intr.lifetime.end"(%28) : (!llvm.ptr) -> ()
    %105 = "llvm.trunc"(%104) <{overflowFlags = 0 : i32}> : (i128) -> i32
    %106 = "llvm.lshr"(%104, %10) : (i128, i128) -> i128
    %107 = "llvm.mul"(%105, %11) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %108 = "llvm.trunc"(%106) <{overflowFlags = 0 : i32}> : (i128) -> i32
    %109 = "llvm.add"(%107, %108) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %110 = "llvm.lshr"(%104, %6) : (i128, i128) -> i128
    %111 = "llvm.mul"(%109, %11) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %112 = "llvm.trunc"(%110) <{overflowFlags = 0 : i32}> : (i128) -> i32
    %113 = "llvm.add"(%111, %112) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %114 = "llvm.lshr"(%104, %12) : (i128, i128) -> i128
    %115 = "llvm.mul"(%113, %11) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %116 = "llvm.trunc"(%114) <{overflowFlags = 2 : i32}> : (i128) -> i32
    %117 = "llvm.add"(%99, %116) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %118 = "llvm.add"(%117, %115) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %119 = "llvm.mul"(%118, %9) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.intr.lifetime.start"(%30) : (!llvm.ptr) -> ()
    "llvm.store"(%57, %30) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (i128, !llvm.ptr) -> ()
    "llvm.intr.lifetime.start"(%31) : (!llvm.ptr) -> ()
    "llvm.store"(%103, %31) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (i128, !llvm.ptr) -> ()
    "llvm.call"(%29, %30, %31) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.align = 8 : i64, llvm.nonnull, llvm.sret = i128}, {llvm.nonnull, llvm.noundef}, {llvm.nonnull, llvm.noundef}], callee = @udiv128, fastmathFlags = #llvm.fastmath<none>, memory_effects = #llvm.memory_effects<other = none, argMem = readwrite, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (!llvm.ptr, !llvm.ptr, !llvm.ptr) -> ()
    %120 = "llvm.load"(%29) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> i128
    "llvm.intr.lifetime.end"(%30) : (!llvm.ptr) -> ()
    "llvm.intr.lifetime.end"(%31) : (!llvm.ptr) -> ()
    %121 = "llvm.trunc"(%120) <{overflowFlags = 0 : i32}> : (i128) -> i32
    %122 = "llvm.lshr"(%120, %10) : (i128, i128) -> i128
    %123 = "llvm.mul"(%121, %11) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %124 = "llvm.trunc"(%122) <{overflowFlags = 0 : i32}> : (i128) -> i32
    %125 = "llvm.add"(%123, %124) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %126 = "llvm.lshr"(%120, %6) : (i128, i128) -> i128
    %127 = "llvm.mul"(%125, %11) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %128 = "llvm.trunc"(%126) <{overflowFlags = 0 : i32}> : (i128) -> i32
    %129 = "llvm.add"(%127, %128) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %130 = "llvm.lshr"(%120, %12) : (i128, i128) -> i128
    %131 = "llvm.mul"(%129, %11) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %132 = "llvm.trunc"(%130) <{overflowFlags = 2 : i32}> : (i128) -> i32
    %133 = "llvm.add"(%119, %132) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %134 = "llvm.add"(%133, %131) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %135 = "llvm.trunc"(%57) <{overflowFlags = 0 : i32}> : (i128) -> i112
    %136 = "llvm.sext"(%135) : (i112) -> i128
    %137 = "llvm.shl"(%40, %0) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    %138 = "llvm.zext"(%137) <{nonNeg}> : (i32) -> i128
    %139 = "llvm.lshr"(%74, %138) : (i128, i128) -> i128
    %140 = "llvm.trunc"(%139) <{overflowFlags = 0 : i32}> : (i128) -> i112
    %141 = "llvm.sext"(%140) : (i112) -> i128
    %142 = "llvm.mul"(%134, %9) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %143 = "llvm.add"(%82, %14) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %144 = "llvm.icmp"(%82, %15) <{predicate = 6 : i64}> : (i32, i32) -> i1
    %145 = "llvm.select"(%144, %82, %143) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.intr.lifetime.start"(%33) : (!llvm.ptr) -> ()
    "llvm.store"(%136, %33) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag1]}> : (i128, !llvm.ptr) -> ()
    "llvm.intr.lifetime.start"(%34) : (!llvm.ptr) -> ()
    "llvm.store"(%141, %34) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag1]}> : (i128, !llvm.ptr) -> ()
    "llvm.call"(%32, %33, %34, %145) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.align = 8 : i64, llvm.nonnull, llvm.sret = i128}, {llvm.nonnull, llvm.noundef}, {llvm.nonnull, llvm.noundef}, {llvm.noundef}], callee = @mix112, fastmathFlags = #llvm.fastmath<none>, memory_effects = #llvm.memory_effects<other = none, argMem = readwrite, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>}> : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    %146 = "llvm.load"(%32) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag1]}> : (!llvm.ptr) -> i128
    "llvm.intr.lifetime.end"(%33) : (!llvm.ptr) -> ()
    "llvm.intr.lifetime.end"(%34) : (!llvm.ptr) -> ()
    %147 = "llvm.shl"(%146, %16) <{overflowFlags = 0 : i32}> : (i128, i128) -> i128
    %148 = "llvm.ashr"(%147, %16) <{isExact}> : (i128, i128) -> i128
    %149 = "llvm.trunc"(%146) <{overflowFlags = 0 : i32}> : (i128) -> i32
    %150 = "llvm.lshr"(%146, %10) : (i128, i128) -> i128
    %151 = "llvm.mul"(%149, %11) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %152 = "llvm.trunc"(%150) <{overflowFlags = 0 : i32}> : (i128) -> i32
    %153 = "llvm.add"(%151, %152) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %154 = "llvm.lshr"(%146, %6) : (i128, i128) -> i128
    %155 = "llvm.mul"(%153, %11) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %156 = "llvm.trunc"(%154) <{overflowFlags = 0 : i32}> : (i128) -> i32
    %157 = "llvm.add"(%155, %156) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %158 = "llvm.lshr"(%148, %12) : (i128, i128) -> i128
    %159 = "llvm.mul"(%157, %11) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %160 = "llvm.trunc"(%158) <{overflowFlags = 2 : i32}> : (i128) -> i32
    %161 = "llvm.add"(%142, %160) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %162 = "llvm.add"(%161, %159) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %163 = "llvm.mul"(%162, %9) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %164 = "llvm.trunc"(%57) <{overflowFlags = 0 : i32}> : (i128) -> i96
    %165 = "llvm.trunc"(%74) <{overflowFlags = 0 : i32}> : (i128) -> i96
    "llvm.intr.lifetime.start"(%36) : (!llvm.ptr) -> ()
    %166 = "llvm.sext"(%164) : (i96) -> i128
    "llvm.store"(%166, %36) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag2]}> : (i128, !llvm.ptr) -> ()
    "llvm.intr.lifetime.start"(%37) : (!llvm.ptr) -> ()
    %167 = "llvm.sext"(%165) : (i96) -> i128
    "llvm.store"(%167, %37) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag2]}> : (i128, !llvm.ptr) -> ()
    "llvm.call"(%35, %36, %37) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.align = 8 : i64, llvm.nonnull, llvm.sret = i128}, {llvm.nonnull, llvm.noundef}, {llvm.nonnull, llvm.noundef}], callee = @mix96, fastmathFlags = #llvm.fastmath<none>, memory_effects = #llvm.memory_effects<other = none, argMem = readwrite, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (!llvm.ptr, !llvm.ptr, !llvm.ptr) -> ()
    %168 = "llvm.load"(%35) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag2]}> : (!llvm.ptr) -> i128
    "llvm.intr.lifetime.end"(%36) : (!llvm.ptr) -> ()
    "llvm.intr.lifetime.end"(%37) : (!llvm.ptr) -> ()
    %169 = "llvm.shl"(%168, %10) <{overflowFlags = 0 : i32}> : (i128, i128) -> i128
    %170 = "llvm.ashr"(%169, %10) <{isExact}> : (i128, i128) -> i128
    %171 = "llvm.trunc"(%168) <{overflowFlags = 0 : i32}> : (i128) -> i32
    %172 = "llvm.lshr"(%168, %10) : (i128, i128) -> i128
    %173 = "llvm.mul"(%171, %11) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %174 = "llvm.trunc"(%172) <{overflowFlags = 0 : i32}> : (i128) -> i32
    %175 = "llvm.add"(%173, %174) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %176 = "llvm.lshr"(%168, %6) : (i128, i128) -> i128
    %177 = "llvm.mul"(%175, %11) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %178 = "llvm.trunc"(%176) <{overflowFlags = 0 : i32}> : (i128) -> i32
    %179 = "llvm.add"(%177, %178) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %180 = "llvm.lshr"(%170, %12) : (i128, i128) -> i128
    %181 = "llvm.mul"(%179, %11) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %182 = "llvm.trunc"(%180) <{overflowFlags = 2 : i32}> : (i128) -> i32
    %183 = "llvm.add"(%163, %182) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %184 = "llvm.add"(%183, %181) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %185 = "llvm.mul"(%184, %9) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %186 = "llvm.trunc"(%55) <{overflowFlags = 0 : i32}> : (i64) -> i48
    %187 = "llvm.trunc"(%74) <{overflowFlags = 0 : i32}> : (i128) -> i48
    %188 = "llvm.trunc"(%82) <{overflowFlags = 3 : i32}> : (i32) -> i8
    %189 = "llvm.urem"(%188, %17) : (i8, i8) -> i8
    %190 = "llvm.zext"(%189) <{nonNeg}> : (i8) -> i32
    %191 = "llvm.call"(%186, %187, %190) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, arg_attrs = [{llvm.noundef, llvm.zeroext}, {llvm.noundef, llvm.signext}, {llvm.noundef}], callee = @mix48, fastmathFlags = #llvm.fastmath<none>, memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>, res_attrs = [{llvm.zeroext}]}> : (i48, i48, i32) -> i48
    %192 = "llvm.trunc"(%191) <{overflowFlags = 0 : i32}> : (i48) -> i32
    %193 = "llvm.icmp"(%57, %74) <{predicate = 6 : i64}> : (i128, i128) -> i1
    %194 = "llvm.zext"(%193) : (i1) -> i32
    %195 = "llvm.icmp"(%57, %74) <{predicate = 2 : i64}> : (i128, i128) -> i1
    %196 = "llvm.select"(%195, %18, %2) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %197 = "llvm.icmp"(%135, %140) <{predicate = 2 : i64}> : (i112, i112) -> i1
    %198 = "llvm.select"(%197, %2, %19) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %199 = "llvm.icmp"(%164, %165) <{predicate = 4 : i64}> : (i96, i96) -> i1
    %200 = "llvm.select"(%199, %20, %2) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %201 = "llvm.ashr"(%49, %21) : (i128, i128) -> i128
    %202 = "llvm.trunc"(%201) <{overflowFlags = 1 : i32}> : (i128) -> i32
    %203 = "llvm.trunc"(%47) <{overflowFlags = 0 : i32}> : (i64) -> i32
    %204 = "llvm.trunc"(%139) <{overflowFlags = 0 : i32}> : (i128) -> i32
    %205 = "llvm.add"(%202, %203) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %206 = "llvm.add"(%205, %194) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %207 = "llvm.add"(%206, %196) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %208 = "llvm.add"(%207, %204) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %209 = "llvm.add"(%208, %200) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %210 = "llvm.add"(%209, %198) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %211 = "llvm.add"(%210, %192) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %212 = "llvm.add"(%211, %185) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %213 = "llvm.add"(%40, %0) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    %214 = "llvm.icmp"(%213, %22) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%214, %212, %213, %80)[^bb1, ^bb2] <{loop_annotation = #loop_annotation, operandSegmentSizes = array<i32: 1, 0, 3>}> : (i1, i32, i32, i64) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<32> : vector<4xi64>, i64 = dense<64> : vector<2xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little", "dlti.mangling_mode" = "e", "dlti.legal_int_widths" = array<i32: 32>, "dlti.stack_alignment" = 128 : i64>, llvm.ident = "clang version 22.1.8", llvm.module_asm = [], llvm.target_triple = "riscv32-unknown-unknown-elf"} : () -> ()

