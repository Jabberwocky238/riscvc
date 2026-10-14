#tbaa_root = #llvm.tbaa_root<id = "Simple C/C++ TBAA">
#tbaa_type_desc = #llvm.tbaa_type_desc<id = "omnipotent char", members = {<#tbaa_root, 0>}>
#tbaa_type_desc1 = #llvm.tbaa_type_desc<id = "double", members = {<#tbaa_type_desc, 0>}>
#tbaa_type_desc2 = #llvm.tbaa_type_desc<id = "long long", members = {<#tbaa_type_desc, 0>}>
#tbaa_tag = #llvm.tbaa_tag<base_type = #tbaa_type_desc1, access_type = #tbaa_type_desc1, offset = 0>
#tbaa_tag1 = #llvm.tbaa_tag<base_type = #tbaa_type_desc2, access_type = #tbaa_type_desc2, offset = 0>
"builtin.module"() ({
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 1 : i64, constant, dso_local, global_type = !llvm.array<61 x i8>, linkage = #llvm.linkage<private>, sym_name = ".str", unnamed_addr = 2 : i64, value = "error in test__divdf3(%.20e, %.20e) = %.20e, expected %.20e\0A\00", visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<error, "wchar_size", 4 : i32>, #llvm.mlir.module_flag<error, "target-abi", "ilp32f">, #llvm.mlir.module_flag<min, "SmallDataLimit", 0 : i32>]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], dso_local, function_type = !llvm.func<i32 (f64, f64, i64)>, linkage = #llvm.linkage<external>, no_unwind, passthrough = ["no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], res_attrs = [{llvm.range = #llvm.constant_range<i32, 0, 2>}], sym_name = "test__divdf3", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcalculet", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 1 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: f64, %arg1: f64, %arg2: i64):
    %205 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %206 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %207 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %208 = "llvm.mlir.constant"() <{value = 9221120237041090560 : i64}> : () -> i64
    %209 = "llvm.mlir.constant"() <{value = 9218868437227405312 : i64}> : () -> i64
    %210 = "llvm.mlir.constant"() <{value = 4503599627370495 : i64}> : () -> i64
    %211 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %212 = "llvm.mlir.addressof"() <{global_name = @".str"}> : () -> !llvm.ptr
    %213 = "llvm.alloca"(%205) <{alignment = 8 : i64, elem_type = i64}> : (i32) -> !llvm.ptr
    %214 = "llvm.alloca"(%205) <{alignment = 8 : i64, elem_type = f64}> : (i32) -> !llvm.ptr
    %215 = "llvm.alloca"(%205) <{alignment = 8 : i64, elem_type = f64}> : (i32) -> !llvm.ptr
    %216 = "llvm.alloca"(%205) <{alignment = 8 : i64, elem_type = i64}> : (i32) -> !llvm.ptr
    %217 = "llvm.call"(%arg0, %arg1) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @__divdf3, fastmathFlags = #llvm.fastmath<none>, no_unwind, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (f64, f64) -> f64
    "llvm.intr.lifetime.start"(%215) : (!llvm.ptr) -> ()
    "llvm.store"(%217, %215) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (f64, !llvm.ptr) -> ()
    "llvm.intr.lifetime.start"(%216) : (!llvm.ptr) -> ()
    %218 = "llvm.call"(%216, %215, %206) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.nonnull, llvm.noundef}, {llvm.nonnull, llvm.noundef}, {llvm.noundef}], callee = @memcpy, fastmathFlags = #llvm.fastmath<none>, no_unwind, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (!llvm.ptr, !llvm.ptr, i32) -> !llvm.ptr
    %219 = "llvm.load"(%216) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag1]}> : (!llvm.ptr) -> i64
    "llvm.intr.lifetime.end"(%216) : (!llvm.ptr) -> ()
    "llvm.intr.lifetime.end"(%215) : (!llvm.ptr) -> ()
    %220 = "llvm.icmp"(%219, %arg2) <{predicate = 0 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%220, %207)[^bb3, ^bb1] <{operandSegmentSizes = array<i32: 1, 1, 0>}> : (i1, i32) -> ()
  ^bb1:  // pred: ^bb0
    %221 = "llvm.icmp"(%arg2, %208) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %222 = "llvm.and"(%219, %209) : (i64, i64) -> i64
    %223 = "llvm.icmp"(%222, %209) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %224 = "llvm.and"(%221, %223) : (i1, i1) -> i1
    %225 = "llvm.and"(%219, %210) : (i64, i64) -> i64
    %226 = "llvm.icmp"(%225, %211) <{predicate = 1 : i64}> : (i64, i64) -> i1
    %227 = "llvm.and"(%226, %224) : (i1, i1) -> i1
    "llvm.cond_br"(%227, %207)[^bb3, ^bb2] <{operandSegmentSizes = array<i32: 1, 1, 0>}> : (i1, i32) -> ()
  ^bb2:  // pred: ^bb1
    "llvm.intr.lifetime.start"(%213) : (!llvm.ptr) -> ()
    "llvm.store"(%arg2, %213) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag1]}> : (i64, !llvm.ptr) -> ()
    "llvm.intr.lifetime.start"(%214) : (!llvm.ptr) -> ()
    %228 = "llvm.call"(%214, %213, %206) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.nonnull, llvm.noundef}, {llvm.nonnull, llvm.noundef}, {llvm.noundef}], callee = @memcpy, fastmathFlags = #llvm.fastmath<none>, no_unwind, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (!llvm.ptr, !llvm.ptr, i32) -> !llvm.ptr
    %229 = "llvm.load"(%214) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> f64
    "llvm.intr.lifetime.end"(%214) : (!llvm.ptr) -> ()
    "llvm.intr.lifetime.end"(%213) : (!llvm.ptr) -> ()
    %230 = "llvm.call"(%212, %arg0, %arg1, %217, %229) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.nonnull, llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @printf, fastmathFlags = #llvm.fastmath<none>, no_unwind, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 5, 0>, var_callee_type = !llvm.func<i32 (ptr, ...)>}> : (!llvm.ptr, f64, f64, f64, f64) -> i32
    "llvm.br"(%205)[^bb3] : (i32) -> ()
  ^bb3(%231: i32):  // 3 preds: ^bb0, ^bb1, ^bb2
    "llvm.return"(%231) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], dso_local, function_type = !llvm.func<f64 (f64, f64)>, linkage = #llvm.linkage<external>, passthrough = ["no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "__divdf3", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcalculet", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 1 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.noundef}], dso_local, function_type = !llvm.func<i32 (ptr, ...)>, linkage = #llvm.linkage<external>, passthrough = ["no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "printf", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcalculet", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 1 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, no_unwind, passthrough = ["no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], res_attrs = [{llvm.range = #llvm.constant_range<i32, 0, 2>}], sym_name = "main", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcalculet", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 1 : i64, visibility_ = 0 : i64}> ({
    %0 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 9221120237041090560 : i64}> : () -> i64
    %2 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %3 = "llvm.mlir.constant"() <{value = 3.000000e+00 : f64}> : () -> f64
    %4 = "llvm.mlir.constant"() <{value = 9218868437227405312 : i64}> : () -> i64
    %5 = "llvm.mlir.constant"() <{value = 4503599627370495 : i64}> : () -> i64
    %6 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %7 = "llvm.mlir.addressof"() <{global_name = @".str"}> : () -> !llvm.ptr
    %8 = "llvm.mlir.constant"() <{value = 9218868437227405603 : i64}> : () -> i64
    %9 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %10 = "llvm.mlir.constant"() <{value = -3.000000e+00 : f64}> : () -> f64
    %11 = "llvm.mlir.constant"() <{value = -4503599627370496 : i64}> : () -> i64
    %12 = "llvm.mlir.constant"() <{value = 0.000000e+00 : f64}> : () -> f64
    %13 = "llvm.mlir.constant"() <{value = 1.000000e+00 : f64}> : () -> f64
    %14 = "llvm.mlir.constant"() <{value = -0.000000e+00 : f64}> : () -> f64
    %15 = "llvm.mlir.constant"() <{value = -1.000000e+00 : f64}> : () -> f64
    %16 = "llvm.mlir.constant"() <{value = 4599676419421066581 : i64}> : () -> i64
    %17 = "llvm.mlir.constant"() <{value = 4.4501477170144028E-308 : f64}> : () -> f64
    %18 = "llvm.mlir.constant"() <{value = 2.000000e+00 : f64}> : () -> f64
    %19 = "llvm.mlir.constant"() <{value = 4503599627370496 : i64}> : () -> i64
    %20 = "llvm.mlir.constant"() <{value = 4607182418800017408 : i64}> : () -> i64
    %21 = "llvm.mlir.constant"() <{value = 1.0000000002328306 : f64}> : () -> f64
    %22 = "llvm.mlir.constant"() <{value = 4607182418797920256 : i64}> : () -> i64
    %23 = "llvm.mlir.constant"() <{value = 2.2250738585072014E-308 : f64}> : () -> f64
    %24 = "llvm.mlir.constant"() <{value = 2251799813685248 : i64}> : () -> i64
    %25 = "llvm.mlir.constant"() <{value = 0x4330000000000000 : f64}> : () -> f64
    %26 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %27 = "llvm.mlir.constant"() <{value = 1.6648976123616727E-198 : f64}> : () -> f64
    %28 = "llvm.mlir.constant"() <{value = -8.4056560378878935E-286 : f64}> : () -> f64
    %29 = "llvm.mlir.constant"() <{value = -3310184691120799823 : i64}> : () -> i64
    %30 = "llvm.mlir.constant"() <{value = -1.5329868174240296E+239 : f64}> : () -> f64
    %31 = "llvm.mlir.constant"() <{value = 2.3482967311879256E+80 : f64}> : () -> f64
    %32 = "llvm.mlir.constant"() <{value = -2240604497976220701 : i64}> : () -> i64
    %33 = "llvm.mlir.constant"() <{value = -7.3577134873189121E-264 : f64}> : () -> f64
    %34 = "llvm.mlir.constant"() <{value = 4.7048606916641854E-184 : f64}> : () -> f64
    %35 = "llvm.mlir.constant"() <{value = -5810299790845108694 : i64}> : () -> i64
    %36 = "llvm.mlir.constant"() <{value = 5.000000e+01 : f64}> : () -> f64
    %37 = "llvm.mlir.constant"() <{value = 90071992547410 : i64}> : () -> i64
    %38 = "llvm.mlir.constant"() <{value = 0x4280028000000000 : f64}> : () -> f64
    %39 = "llvm.mlir.constant"() <{value = 2047 : i64}> : () -> i64
    %40 = "llvm.mlir.constant"() <{value = 0x4330028000000000 : f64}> : () -> f64
    %41 = "llvm.mlir.constant"() <{value = 0.99999999999999988 : f64}> : () -> f64
    %42 = "llvm.mlir.constant"() <{value = 4607182418800017409 : i64}> : () -> i64
    %43 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = i64}> : (i32) -> !llvm.ptr
    %44 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = f64}> : (i32) -> !llvm.ptr
    %45 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = i64}> : (i32) -> !llvm.ptr
    %46 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = f64}> : (i32) -> !llvm.ptr
    %47 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = i64}> : (i32) -> !llvm.ptr
    %48 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = f64}> : (i32) -> !llvm.ptr
    %49 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = i64}> : (i32) -> !llvm.ptr
    %50 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = f64}> : (i32) -> !llvm.ptr
    %51 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = i64}> : (i32) -> !llvm.ptr
    %52 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = f64}> : (i32) -> !llvm.ptr
    %53 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = i64}> : (i32) -> !llvm.ptr
    %54 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = f64}> : (i32) -> !llvm.ptr
    %55 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = i64}> : (i32) -> !llvm.ptr
    %56 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = f64}> : (i32) -> !llvm.ptr
    %57 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = i64}> : (i32) -> !llvm.ptr
    %58 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = f64}> : (i32) -> !llvm.ptr
    %59 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = i64}> : (i32) -> !llvm.ptr
    %60 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = f64}> : (i32) -> !llvm.ptr
    %61 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = f64}> : (i32) -> !llvm.ptr
    %62 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = i64}> : (i32) -> !llvm.ptr
    %63 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = i64}> : (i32) -> !llvm.ptr
    %64 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = f64}> : (i32) -> !llvm.ptr
    %65 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = i64}> : (i32) -> !llvm.ptr
    %66 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = f64}> : (i32) -> !llvm.ptr
    %67 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = f64}> : (i32) -> !llvm.ptr
    %68 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = i64}> : (i32) -> !llvm.ptr
    %69 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = i64}> : (i32) -> !llvm.ptr
    %70 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = f64}> : (i32) -> !llvm.ptr
    %71 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = i64}> : (i32) -> !llvm.ptr
    %72 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = f64}> : (i32) -> !llvm.ptr
    %73 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = f64}> : (i32) -> !llvm.ptr
    %74 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = i64}> : (i32) -> !llvm.ptr
    %75 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = i64}> : (i32) -> !llvm.ptr
    %76 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = f64}> : (i32) -> !llvm.ptr
    %77 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = i64}> : (i32) -> !llvm.ptr
    %78 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = f64}> : (i32) -> !llvm.ptr
    %79 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = f64}> : (i32) -> !llvm.ptr
    %80 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = i64}> : (i32) -> !llvm.ptr
    %81 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = i64}> : (i32) -> !llvm.ptr
    %82 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = f64}> : (i32) -> !llvm.ptr
    "llvm.intr.lifetime.start"(%81) : (!llvm.ptr) -> ()
    "llvm.store"(%1, %81) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag1]}> : (i64, !llvm.ptr) -> ()
    "llvm.intr.lifetime.start"(%82) : (!llvm.ptr) -> ()
    %83 = "llvm.call"(%82, %81, %2) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.nonnull, llvm.noundef}, {llvm.nonnull, llvm.noundef}, {llvm.noundef}], callee = @memcpy, fastmathFlags = #llvm.fastmath<none>, no_unwind, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (!llvm.ptr, !llvm.ptr, i32) -> !llvm.ptr
    %84 = "llvm.load"(%82) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> f64
    "llvm.intr.lifetime.end"(%82) : (!llvm.ptr) -> ()
    "llvm.intr.lifetime.end"(%81) : (!llvm.ptr) -> ()
    %85 = "llvm.call"(%84, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @__divdf3, fastmathFlags = #llvm.fastmath<none>, no_unwind, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (f64, f64) -> f64
    "llvm.intr.lifetime.start"(%79) : (!llvm.ptr) -> ()
    "llvm.store"(%85, %79) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (f64, !llvm.ptr) -> ()
    "llvm.intr.lifetime.start"(%80) : (!llvm.ptr) -> ()
    %86 = "llvm.call"(%80, %79, %2) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.nonnull, llvm.noundef}, {llvm.nonnull, llvm.noundef}, {llvm.noundef}], callee = @memcpy, fastmathFlags = #llvm.fastmath<none>, no_unwind, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (!llvm.ptr, !llvm.ptr, i32) -> !llvm.ptr
    %87 = "llvm.load"(%80) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag1]}> : (!llvm.ptr) -> i64
    "llvm.intr.lifetime.end"(%80) : (!llvm.ptr) -> ()
    "llvm.intr.lifetime.end"(%79) : (!llvm.ptr) -> ()
    %88 = "llvm.icmp"(%87, %1) <{predicate = 0 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%88)[^bb3, ^bb1] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %89 = "llvm.and"(%87, %4) : (i64, i64) -> i64
    %90 = "llvm.icmp"(%89, %4) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %91 = "llvm.and"(%87, %5) : (i64, i64) -> i64
    %92 = "llvm.icmp"(%91, %6) <{predicate = 1 : i64}> : (i64, i64) -> i1
    %93 = "llvm.and"(%92, %90) : (i1, i1) -> i1
    "llvm.cond_br"(%93)[^bb3, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb2:  // pred: ^bb1
    "llvm.intr.lifetime.start"(%77) : (!llvm.ptr) -> ()
    "llvm.store"(%1, %77) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag1]}> : (i64, !llvm.ptr) -> ()
    "llvm.intr.lifetime.start"(%78) : (!llvm.ptr) -> ()
    %94 = "llvm.call"(%78, %77, %2) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.nonnull, llvm.noundef}, {llvm.nonnull, llvm.noundef}, {llvm.noundef}], callee = @memcpy, fastmathFlags = #llvm.fastmath<none>, no_unwind, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (!llvm.ptr, !llvm.ptr, i32) -> !llvm.ptr
    %95 = "llvm.load"(%78) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> f64
    "llvm.intr.lifetime.end"(%78) : (!llvm.ptr) -> ()
    "llvm.intr.lifetime.end"(%77) : (!llvm.ptr) -> ()
    %96 = "llvm.call"(%7, %84, %3, %85, %95) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.nonnull, llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @printf, fastmathFlags = #llvm.fastmath<none>, no_unwind, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 5, 0>, var_callee_type = !llvm.func<i32 (ptr, ...)>}> : (!llvm.ptr, f64, f64, f64, f64) -> i32
    "llvm.br"(%0)[^bb37] : (i32) -> ()
  ^bb3:  // 2 preds: ^bb0, ^bb1
    "llvm.intr.lifetime.start"(%75) : (!llvm.ptr) -> ()
    "llvm.store"(%8, %75) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag1]}> : (i64, !llvm.ptr) -> ()
    "llvm.intr.lifetime.start"(%76) : (!llvm.ptr) -> ()
    %97 = "llvm.call"(%76, %75, %2) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.nonnull, llvm.noundef}, {llvm.nonnull, llvm.noundef}, {llvm.noundef}], callee = @memcpy, fastmathFlags = #llvm.fastmath<none>, no_unwind, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (!llvm.ptr, !llvm.ptr, i32) -> !llvm.ptr
    %98 = "llvm.load"(%76) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> f64
    "llvm.intr.lifetime.end"(%76) : (!llvm.ptr) -> ()
    "llvm.intr.lifetime.end"(%75) : (!llvm.ptr) -> ()
    %99 = "llvm.call"(%98, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @__divdf3, fastmathFlags = #llvm.fastmath<none>, no_unwind, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (f64, f64) -> f64
    "llvm.intr.lifetime.start"(%73) : (!llvm.ptr) -> ()
    "llvm.store"(%99, %73) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (f64, !llvm.ptr) -> ()
    "llvm.intr.lifetime.start"(%74) : (!llvm.ptr) -> ()
    %100 = "llvm.call"(%74, %73, %2) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.nonnull, llvm.noundef}, {llvm.nonnull, llvm.noundef}, {llvm.noundef}], callee = @memcpy, fastmathFlags = #llvm.fastmath<none>, no_unwind, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (!llvm.ptr, !llvm.ptr, i32) -> !llvm.ptr
    %101 = "llvm.load"(%74) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag1]}> : (!llvm.ptr) -> i64
    "llvm.intr.lifetime.end"(%74) : (!llvm.ptr) -> ()
    "llvm.intr.lifetime.end"(%73) : (!llvm.ptr) -> ()
    %102 = "llvm.icmp"(%101, %1) <{predicate = 0 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%102)[^bb6, ^bb4] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb4:  // pred: ^bb3
    %103 = "llvm.and"(%101, %4) : (i64, i64) -> i64
    %104 = "llvm.icmp"(%103, %4) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %105 = "llvm.and"(%101, %5) : (i64, i64) -> i64
    %106 = "llvm.icmp"(%105, %6) <{predicate = 1 : i64}> : (i64, i64) -> i1
    %107 = "llvm.and"(%106, %104) : (i1, i1) -> i1
    "llvm.cond_br"(%107)[^bb6, ^bb5] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb5:  // pred: ^bb4
    "llvm.intr.lifetime.start"(%71) : (!llvm.ptr) -> ()
    "llvm.store"(%1, %71) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag1]}> : (i64, !llvm.ptr) -> ()
    "llvm.intr.lifetime.start"(%72) : (!llvm.ptr) -> ()
    %108 = "llvm.call"(%72, %71, %2) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.nonnull, llvm.noundef}, {llvm.nonnull, llvm.noundef}, {llvm.noundef}], callee = @memcpy, fastmathFlags = #llvm.fastmath<none>, no_unwind, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (!llvm.ptr, !llvm.ptr, i32) -> !llvm.ptr
    %109 = "llvm.load"(%72) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> f64
    "llvm.intr.lifetime.end"(%72) : (!llvm.ptr) -> ()
    "llvm.intr.lifetime.end"(%71) : (!llvm.ptr) -> ()
    %110 = "llvm.call"(%7, %98, %3, %99, %109) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.nonnull, llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @printf, fastmathFlags = #llvm.fastmath<none>, no_unwind, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 5, 0>, var_callee_type = !llvm.func<i32 (ptr, ...)>}> : (!llvm.ptr, f64, f64, f64, f64) -> i32
    "llvm.br"(%0)[^bb37] : (i32) -> ()
  ^bb6:  // 2 preds: ^bb3, ^bb4
    "llvm.intr.lifetime.start"(%69) : (!llvm.ptr) -> ()
    "llvm.store"(%1, %69) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag1]}> : (i64, !llvm.ptr) -> ()
    "llvm.intr.lifetime.start"(%70) : (!llvm.ptr) -> ()
    %111 = "llvm.call"(%70, %69, %2) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.nonnull, llvm.noundef}, {llvm.nonnull, llvm.noundef}, {llvm.noundef}], callee = @memcpy, fastmathFlags = #llvm.fastmath<none>, no_unwind, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (!llvm.ptr, !llvm.ptr, i32) -> !llvm.ptr
    %112 = "llvm.load"(%70) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> f64
    "llvm.intr.lifetime.end"(%70) : (!llvm.ptr) -> ()
    "llvm.intr.lifetime.end"(%69) : (!llvm.ptr) -> ()
    %113 = "llvm.call"(%3, %112) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @__divdf3, fastmathFlags = #llvm.fastmath<none>, no_unwind, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (f64, f64) -> f64
    "llvm.intr.lifetime.start"(%67) : (!llvm.ptr) -> ()
    "llvm.store"(%113, %67) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (f64, !llvm.ptr) -> ()
    "llvm.intr.lifetime.start"(%68) : (!llvm.ptr) -> ()
    %114 = "llvm.call"(%68, %67, %2) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.nonnull, llvm.noundef}, {llvm.nonnull, llvm.noundef}, {llvm.noundef}], callee = @memcpy, fastmathFlags = #llvm.fastmath<none>, no_unwind, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (!llvm.ptr, !llvm.ptr, i32) -> !llvm.ptr
    %115 = "llvm.load"(%68) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag1]}> : (!llvm.ptr) -> i64
    "llvm.intr.lifetime.end"(%68) : (!llvm.ptr) -> ()
    "llvm.intr.lifetime.end"(%67) : (!llvm.ptr) -> ()
    %116 = "llvm.icmp"(%115, %1) <{predicate = 0 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%116)[^bb9, ^bb7] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb7:  // pred: ^bb6
    %117 = "llvm.and"(%115, %4) : (i64, i64) -> i64
    %118 = "llvm.icmp"(%117, %4) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %119 = "llvm.and"(%115, %5) : (i64, i64) -> i64
    %120 = "llvm.icmp"(%119, %6) <{predicate = 1 : i64}> : (i64, i64) -> i1
    %121 = "llvm.and"(%120, %118) : (i1, i1) -> i1
    "llvm.cond_br"(%121)[^bb9, ^bb8] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb8:  // pred: ^bb7
    "llvm.intr.lifetime.start"(%65) : (!llvm.ptr) -> ()
    "llvm.store"(%1, %65) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag1]}> : (i64, !llvm.ptr) -> ()
    "llvm.intr.lifetime.start"(%66) : (!llvm.ptr) -> ()
    %122 = "llvm.call"(%66, %65, %2) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.nonnull, llvm.noundef}, {llvm.nonnull, llvm.noundef}, {llvm.noundef}], callee = @memcpy, fastmathFlags = #llvm.fastmath<none>, no_unwind, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (!llvm.ptr, !llvm.ptr, i32) -> !llvm.ptr
    %123 = "llvm.load"(%66) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> f64
    "llvm.intr.lifetime.end"(%66) : (!llvm.ptr) -> ()
    "llvm.intr.lifetime.end"(%65) : (!llvm.ptr) -> ()
    %124 = "llvm.call"(%7, %3, %112, %113, %123) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.nonnull, llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @printf, fastmathFlags = #llvm.fastmath<none>, no_unwind, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 5, 0>, var_callee_type = !llvm.func<i32 (ptr, ...)>}> : (!llvm.ptr, f64, f64, f64, f64) -> i32
    "llvm.br"(%0)[^bb37] : (i32) -> ()
  ^bb9:  // 2 preds: ^bb6, ^bb7
    "llvm.intr.lifetime.start"(%63) : (!llvm.ptr) -> ()
    "llvm.store"(%8, %63) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag1]}> : (i64, !llvm.ptr) -> ()
    "llvm.intr.lifetime.start"(%64) : (!llvm.ptr) -> ()
    %125 = "llvm.call"(%64, %63, %2) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.nonnull, llvm.noundef}, {llvm.nonnull, llvm.noundef}, {llvm.noundef}], callee = @memcpy, fastmathFlags = #llvm.fastmath<none>, no_unwind, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (!llvm.ptr, !llvm.ptr, i32) -> !llvm.ptr
    %126 = "llvm.load"(%64) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> f64
    "llvm.intr.lifetime.end"(%64) : (!llvm.ptr) -> ()
    "llvm.intr.lifetime.end"(%63) : (!llvm.ptr) -> ()
    %127 = "llvm.call"(%3, %126) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @__divdf3, fastmathFlags = #llvm.fastmath<none>, no_unwind, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (f64, f64) -> f64
    "llvm.intr.lifetime.start"(%61) : (!llvm.ptr) -> ()
    "llvm.store"(%127, %61) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (f64, !llvm.ptr) -> ()
    "llvm.intr.lifetime.start"(%62) : (!llvm.ptr) -> ()
    %128 = "llvm.call"(%62, %61, %2) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.nonnull, llvm.noundef}, {llvm.nonnull, llvm.noundef}, {llvm.noundef}], callee = @memcpy, fastmathFlags = #llvm.fastmath<none>, no_unwind, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (!llvm.ptr, !llvm.ptr, i32) -> !llvm.ptr
    %129 = "llvm.load"(%62) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag1]}> : (!llvm.ptr) -> i64
    "llvm.intr.lifetime.end"(%62) : (!llvm.ptr) -> ()
    "llvm.intr.lifetime.end"(%61) : (!llvm.ptr) -> ()
    %130 = "llvm.icmp"(%129, %1) <{predicate = 0 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%130)[^bb12, ^bb10] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb10:  // pred: ^bb9
    %131 = "llvm.and"(%129, %4) : (i64, i64) -> i64
    %132 = "llvm.icmp"(%131, %4) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %133 = "llvm.and"(%129, %5) : (i64, i64) -> i64
    %134 = "llvm.icmp"(%133, %6) <{predicate = 1 : i64}> : (i64, i64) -> i1
    %135 = "llvm.and"(%134, %132) : (i1, i1) -> i1
    "llvm.cond_br"(%135)[^bb12, ^bb11] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb11:  // pred: ^bb10
    "llvm.intr.lifetime.start"(%59) : (!llvm.ptr) -> ()
    "llvm.store"(%1, %59) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag1]}> : (i64, !llvm.ptr) -> ()
    "llvm.intr.lifetime.start"(%60) : (!llvm.ptr) -> ()
    %136 = "llvm.call"(%60, %59, %2) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.nonnull, llvm.noundef}, {llvm.nonnull, llvm.noundef}, {llvm.noundef}], callee = @memcpy, fastmathFlags = #llvm.fastmath<none>, no_unwind, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (!llvm.ptr, !llvm.ptr, i32) -> !llvm.ptr
    %137 = "llvm.load"(%60) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> f64
    "llvm.intr.lifetime.end"(%60) : (!llvm.ptr) -> ()
    "llvm.intr.lifetime.end"(%59) : (!llvm.ptr) -> ()
    %138 = "llvm.call"(%7, %3, %126, %127, %137) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.nonnull, llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @printf, fastmathFlags = #llvm.fastmath<none>, no_unwind, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 5, 0>, var_callee_type = !llvm.func<i32 (ptr, ...)>}> : (!llvm.ptr, f64, f64, f64, f64) -> i32
    "llvm.br"(%0)[^bb37] : (i32) -> ()
  ^bb12:  // 2 preds: ^bb9, ^bb10
    "llvm.intr.lifetime.start"(%57) : (!llvm.ptr) -> ()
    "llvm.store"(%4, %57) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag1]}> : (i64, !llvm.ptr) -> ()
    "llvm.intr.lifetime.start"(%58) : (!llvm.ptr) -> ()
    %139 = "llvm.call"(%58, %57, %2) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.nonnull, llvm.noundef}, {llvm.nonnull, llvm.noundef}, {llvm.noundef}], callee = @memcpy, fastmathFlags = #llvm.fastmath<none>, no_unwind, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (!llvm.ptr, !llvm.ptr, i32) -> !llvm.ptr
    %140 = "llvm.load"(%58) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> f64
    "llvm.intr.lifetime.end"(%58) : (!llvm.ptr) -> ()
    "llvm.intr.lifetime.end"(%57) : (!llvm.ptr) -> ()
    %141 = "llvm.call"(%140, %3, %4) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__divdf3, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f64, f64, i64) -> i32
    %142 = "llvm.icmp"(%141, %9) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%142, %0)[^bb13, ^bb37] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb13:  // pred: ^bb12
    "llvm.intr.lifetime.start"(%55) : (!llvm.ptr) -> ()
    "llvm.store"(%4, %55) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag1]}> : (i64, !llvm.ptr) -> ()
    "llvm.intr.lifetime.start"(%56) : (!llvm.ptr) -> ()
    %143 = "llvm.call"(%56, %55, %2) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.nonnull, llvm.noundef}, {llvm.nonnull, llvm.noundef}, {llvm.noundef}], callee = @memcpy, fastmathFlags = #llvm.fastmath<none>, no_unwind, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (!llvm.ptr, !llvm.ptr, i32) -> !llvm.ptr
    %144 = "llvm.load"(%56) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> f64
    "llvm.intr.lifetime.end"(%56) : (!llvm.ptr) -> ()
    "llvm.intr.lifetime.end"(%55) : (!llvm.ptr) -> ()
    %145 = "llvm.call"(%144, %10, %11) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__divdf3, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f64, f64, i64) -> i32
    %146 = "llvm.icmp"(%145, %9) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%146, %0)[^bb14, ^bb37] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb14:  // pred: ^bb13
    "llvm.intr.lifetime.start"(%53) : (!llvm.ptr) -> ()
    "llvm.store"(%11, %53) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag1]}> : (i64, !llvm.ptr) -> ()
    "llvm.intr.lifetime.start"(%54) : (!llvm.ptr) -> ()
    %147 = "llvm.call"(%54, %53, %2) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.nonnull, llvm.noundef}, {llvm.nonnull, llvm.noundef}, {llvm.noundef}], callee = @memcpy, fastmathFlags = #llvm.fastmath<none>, no_unwind, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (!llvm.ptr, !llvm.ptr, i32) -> !llvm.ptr
    %148 = "llvm.load"(%54) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> f64
    "llvm.intr.lifetime.end"(%54) : (!llvm.ptr) -> ()
    "llvm.intr.lifetime.end"(%53) : (!llvm.ptr) -> ()
    %149 = "llvm.call"(%148, %3, %11) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__divdf3, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f64, f64, i64) -> i32
    %150 = "llvm.icmp"(%149, %9) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%150, %0)[^bb15, ^bb37] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb15:  // pred: ^bb14
    "llvm.intr.lifetime.start"(%51) : (!llvm.ptr) -> ()
    "llvm.store"(%11, %51) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag1]}> : (i64, !llvm.ptr) -> ()
    "llvm.intr.lifetime.start"(%52) : (!llvm.ptr) -> ()
    %151 = "llvm.call"(%52, %51, %2) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.nonnull, llvm.noundef}, {llvm.nonnull, llvm.noundef}, {llvm.noundef}], callee = @memcpy, fastmathFlags = #llvm.fastmath<none>, no_unwind, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (!llvm.ptr, !llvm.ptr, i32) -> !llvm.ptr
    %152 = "llvm.load"(%52) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> f64
    "llvm.intr.lifetime.end"(%52) : (!llvm.ptr) -> ()
    "llvm.intr.lifetime.end"(%51) : (!llvm.ptr) -> ()
    %153 = "llvm.call"(%152, %10, %4) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__divdf3, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f64, f64, i64) -> i32
    %154 = "llvm.icmp"(%153, %9) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%154, %0)[^bb16, ^bb37] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb16:  // pred: ^bb15
    "llvm.intr.lifetime.start"(%49) : (!llvm.ptr) -> ()
    "llvm.store"(%4, %49) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag1]}> : (i64, !llvm.ptr) -> ()
    "llvm.intr.lifetime.start"(%50) : (!llvm.ptr) -> ()
    %155 = "llvm.call"(%50, %49, %2) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.nonnull, llvm.noundef}, {llvm.nonnull, llvm.noundef}, {llvm.noundef}], callee = @memcpy, fastmathFlags = #llvm.fastmath<none>, no_unwind, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (!llvm.ptr, !llvm.ptr, i32) -> !llvm.ptr
    %156 = "llvm.load"(%50) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> f64
    "llvm.intr.lifetime.end"(%50) : (!llvm.ptr) -> ()
    "llvm.intr.lifetime.end"(%49) : (!llvm.ptr) -> ()
    "llvm.intr.lifetime.start"(%47) : (!llvm.ptr) -> ()
    "llvm.store"(%4, %47) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag1]}> : (i64, !llvm.ptr) -> ()
    "llvm.intr.lifetime.start"(%48) : (!llvm.ptr) -> ()
    %157 = "llvm.call"(%48, %47, %2) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.nonnull, llvm.noundef}, {llvm.nonnull, llvm.noundef}, {llvm.noundef}], callee = @memcpy, fastmathFlags = #llvm.fastmath<none>, no_unwind, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (!llvm.ptr, !llvm.ptr, i32) -> !llvm.ptr
    %158 = "llvm.load"(%48) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> f64
    "llvm.intr.lifetime.end"(%48) : (!llvm.ptr) -> ()
    "llvm.intr.lifetime.end"(%47) : (!llvm.ptr) -> ()
    %159 = "llvm.call"(%156, %158, %1) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__divdf3, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f64, f64, i64) -> i32
    %160 = "llvm.icmp"(%159, %9) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%160, %0)[^bb17, ^bb37] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb17:  // pred: ^bb16
    %161 = "llvm.call"(%12, %12, %1) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__divdf3, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f64, f64, i64) -> i32
    %162 = "llvm.icmp"(%161, %9) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%162, %0)[^bb18, ^bb37] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb18:  // pred: ^bb17
    "llvm.intr.lifetime.start"(%45) : (!llvm.ptr) -> ()
    "llvm.store"(%4, %45) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag1]}> : (i64, !llvm.ptr) -> ()
    "llvm.intr.lifetime.start"(%46) : (!llvm.ptr) -> ()
    %163 = "llvm.call"(%46, %45, %2) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.nonnull, llvm.noundef}, {llvm.nonnull, llvm.noundef}, {llvm.noundef}], callee = @memcpy, fastmathFlags = #llvm.fastmath<none>, no_unwind, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (!llvm.ptr, !llvm.ptr, i32) -> !llvm.ptr
    %164 = "llvm.load"(%46) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> f64
    "llvm.intr.lifetime.end"(%46) : (!llvm.ptr) -> ()
    "llvm.intr.lifetime.end"(%45) : (!llvm.ptr) -> ()
    %165 = "llvm.call"(%12, %164, %6) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__divdf3, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f64, f64, i64) -> i32
    %166 = "llvm.icmp"(%165, %9) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%166, %0)[^bb19, ^bb37] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb19:  // pred: ^bb18
    "llvm.intr.lifetime.start"(%43) : (!llvm.ptr) -> ()
    "llvm.store"(%4, %43) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag1]}> : (i64, !llvm.ptr) -> ()
    "llvm.intr.lifetime.start"(%44) : (!llvm.ptr) -> ()
    %167 = "llvm.call"(%44, %43, %2) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.nonnull, llvm.noundef}, {llvm.nonnull, llvm.noundef}, {llvm.noundef}], callee = @memcpy, fastmathFlags = #llvm.fastmath<none>, no_unwind, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (!llvm.ptr, !llvm.ptr, i32) -> !llvm.ptr
    %168 = "llvm.load"(%44) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> f64
    "llvm.intr.lifetime.end"(%44) : (!llvm.ptr) -> ()
    "llvm.intr.lifetime.end"(%43) : (!llvm.ptr) -> ()
    %169 = "llvm.call"(%168, %12, %4) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__divdf3, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f64, f64, i64) -> i32
    %170 = "llvm.icmp"(%169, %9) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%170, %0)[^bb20, ^bb37] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb20:  // pred: ^bb19
    %171 = "llvm.call"(%13, %12, %4) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__divdf3, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f64, f64, i64) -> i32
    %172 = "llvm.icmp"(%171, %9) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%172, %0)[^bb21, ^bb37] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb21:  // pred: ^bb20
    %173 = "llvm.call"(%13, %14, %11) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__divdf3, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f64, f64, i64) -> i32
    %174 = "llvm.icmp"(%173, %9) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%174, %0)[^bb22, ^bb37] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb22:  // pred: ^bb21
    %175 = "llvm.call"(%15, %12, %11) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__divdf3, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f64, f64, i64) -> i32
    %176 = "llvm.icmp"(%175, %9) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%176, %0)[^bb23, ^bb37] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb23:  // pred: ^bb22
    %177 = "llvm.call"(%15, %14, %4) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__divdf3, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f64, f64, i64) -> i32
    %178 = "llvm.icmp"(%177, %9) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%178, %0)[^bb24, ^bb37] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb24:  // pred: ^bb23
    %179 = "llvm.call"(%13, %3, %16) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__divdf3, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f64, f64, i64) -> i32
    %180 = "llvm.icmp"(%179, %9) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%180, %0)[^bb25, ^bb37] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb25:  // pred: ^bb24
    %181 = "llvm.call"(%17, %18, %19) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__divdf3, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f64, f64, i64) -> i32
    %182 = "llvm.icmp"(%181, %9) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%182, %0)[^bb26, ^bb37] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb26:  // pred: ^bb25
    %183 = "llvm.call"(%13, %13, %20) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__divdf3, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f64, f64, i64) -> i32
    %184 = "llvm.icmp"(%183, %9) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%184, %0)[^bb27, ^bb37] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb27:  // pred: ^bb26
    %185 = "llvm.call"(%13, %21, %22) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__divdf3, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f64, f64, i64) -> i32
    %186 = "llvm.icmp"(%185, %9) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%186, %0)[^bb28, ^bb37] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb28:  // pred: ^bb27
    %187 = "llvm.call"(%23, %18, %24) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__divdf3, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f64, f64, i64) -> i32
    %188 = "llvm.icmp"(%187, %9) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%188, %0)[^bb29, ^bb37] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb29:  // pred: ^bb28
    %189 = "llvm.call"(%23, %25, %26) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__divdf3, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f64, f64, i64) -> i32
    %190 = "llvm.icmp"(%189, %9) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%190, %0)[^bb30, ^bb37] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb30:  // pred: ^bb29
    %191 = "llvm.call"(%27, %28, %29) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__divdf3, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f64, f64, i64) -> i32
    %192 = "llvm.icmp"(%191, %9) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%192, %0)[^bb31, ^bb37] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb31:  // pred: ^bb30
    %193 = "llvm.call"(%30, %31, %32) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__divdf3, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f64, f64, i64) -> i32
    %194 = "llvm.icmp"(%193, %9) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%194, %0)[^bb32, ^bb37] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb32:  // pred: ^bb31
    %195 = "llvm.call"(%33, %34, %35) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__divdf3, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f64, f64, i64) -> i32
    %196 = "llvm.icmp"(%195, %9) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%196, %0)[^bb33, ^bb37] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb33:  // pred: ^bb32
    %197 = "llvm.call"(%23, %36, %37) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__divdf3, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f64, f64, i64) -> i32
    %198 = "llvm.icmp"(%197, %9) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%198, %0)[^bb34, ^bb37] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb34:  // pred: ^bb33
    %199 = "llvm.call"(%23, %38, %39) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__divdf3, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f64, f64, i64) -> i32
    %200 = "llvm.icmp"(%199, %9) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%200, %0)[^bb35, ^bb37] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb35:  // pred: ^bb34
    %201 = "llvm.call"(%23, %40, %26) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__divdf3, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f64, f64, i64) -> i32
    %202 = "llvm.icmp"(%201, %9) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%202, %0)[^bb36, ^bb37] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb36:  // pred: ^bb35
    %203 = "llvm.call"(%13, %41, %42) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__divdf3, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f64, f64, i64) -> i32
    "llvm.br"(%203)[^bb37] : (i32) -> ()
  ^bb37(%204: i32):  // 29 preds: ^bb2, ^bb5, ^bb8, ^bb11, ^bb12, ^bb13, ^bb14, ^bb15, ^bb16, ^bb17, ^bb18, ^bb19, ^bb20, ^bb21, ^bb22, ^bb23, ^bb24, ^bb25, ^bb26, ^bb27, ^bb28, ^bb29, ^bb30, ^bb31, ^bb32, ^bb33, ^bb34, ^bb35, ^bb36
    "llvm.return"(%204) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], dso_local, function_type = !llvm.func<ptr (ptr, ptr, i32)>, linkage = #llvm.linkage<external>, passthrough = ["no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "memcpy", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcalculet", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 1 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<32> : vector<4xi64>, i64 = dense<64> : vector<2xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little", "dlti.mangling_mode" = "e", "dlti.legal_int_widths" = array<i32: 32>, "dlti.stack_alignment" = 128 : i64>, llvm.ident = "clang version 22.1.8", llvm.module_asm = [], llvm.target_triple = "riscv32-unknown-unknown-elf"} : () -> ()

