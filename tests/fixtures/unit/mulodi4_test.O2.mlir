#tbaa_root = #llvm.tbaa_root<id = "Simple C/C++ TBAA">
#tbaa_type_desc = #llvm.tbaa_type_desc<id = "omnipotent char", members = {<#tbaa_root, 0>}>
#tbaa_type_desc1 = #llvm.tbaa_type_desc<id = "int", members = {<#tbaa_type_desc, 0>}>
#tbaa_tag = #llvm.tbaa_tag<base_type = #tbaa_type_desc1, access_type = #tbaa_type_desc1, offset = 0>
"builtin.module"() ({
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 1 : i64, constant, dso_local, global_type = !llvm.array<45 x i8>, linkage = #llvm.linkage<private>, sym_name = ".str", unnamed_addr = 2 : i64, value = "error in __mulodi4: overflow=%d expected=%d\0A\00", visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 1 : i64, constant, dso_local, global_type = !llvm.array<91 x i8>, linkage = #llvm.linkage<private>, sym_name = ".str.1", unnamed_addr = 2 : i64, value = "error in __mulodi4: 0x%llX * 0x%llX = 0x%llX (overflow=%d), expected 0x%llX (overflow=%d)\0A\00", visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<error, "wchar_size", 4 : i32>, #llvm.mlir.module_flag<error, "target-abi", "ilp32f">, #llvm.mlir.module_flag<min, "SmallDataLimit", 0 : i32>]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], dso_local, function_type = !llvm.func<i32 (i64, i64, i64, i32)>, linkage = #llvm.linkage<external>, no_unwind, passthrough = ["no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], res_attrs = [{llvm.range = #llvm.constant_range<i32, 0, 2>}], sym_name = "test__mulodi4", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcalculet", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 1 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i64, %arg1: i64, %arg2: i64, %arg3: i32):
    %176 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %177 = "llvm.mlir.addressof"() <{global_name = @".str"}> : () -> !llvm.ptr
    %178 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %179 = "llvm.mlir.constant"() <{value = true}> : () -> i1
    %180 = "llvm.mlir.addressof"() <{global_name = @".str.1"}> : () -> !llvm.ptr
    %181 = "llvm.alloca"(%176) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    "llvm.intr.lifetime.start"(%181) : (!llvm.ptr) -> ()
    %182 = "llvm.call"(%arg0, %arg1, %181) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.nonnull, llvm.noundef}], callee = @__mulodi4, fastmathFlags = #llvm.fastmath<none>, no_unwind, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (i64, i64, !llvm.ptr) -> i64
    %183 = "llvm.load"(%181) <{alignment = 4 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> i32
    %184 = "llvm.icmp"(%183, %arg3) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%184)[^bb2, ^bb1] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %185 = "llvm.call"(%177, %183, %arg3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.nonnull, llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @printf, fastmathFlags = #llvm.fastmath<none>, no_unwind, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>, var_callee_type = !llvm.func<i32 (ptr, ...)>}> : (!llvm.ptr, i32, i32) -> i32
    "llvm.br"(%178)[^bb4] : (i32) -> ()
  ^bb2:  // pred: ^bb0
    %186 = "llvm.icmp"(%arg3, %178) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %187 = "llvm.icmp"(%182, %arg2) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %188 = "llvm.select"(%186, %179, %187) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i1, i1) -> i1
    "llvm.cond_br"(%188, %178)[^bb4, ^bb3] <{operandSegmentSizes = array<i32: 1, 1, 0>}> : (i1, i32) -> ()
  ^bb3:  // pred: ^bb2
    %189 = "llvm.call"(%180, %arg0, %arg1, %182, %178, %arg2, %178) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.nonnull, llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @printf, fastmathFlags = #llvm.fastmath<none>, no_unwind, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 7, 0>, var_callee_type = !llvm.func<i32 (ptr, ...)>}> : (!llvm.ptr, i64, i64, i64, i32, i64, i32) -> i32
    "llvm.br"(%176)[^bb4] : (i32) -> ()
  ^bb4(%190: i32):  // 3 preds: ^bb1, ^bb2, ^bb3
    "llvm.intr.lifetime.end"(%181) : (!llvm.ptr) -> ()
    "llvm.return"(%190) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], dso_local, function_type = !llvm.func<i64 (i64, i64, ptr)>, linkage = #llvm.linkage<external>, passthrough = ["no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "__mulodi4", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcalculet", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 1 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.noundef}], dso_local, function_type = !llvm.func<i32 (ptr, ...)>, linkage = #llvm.linkage<external>, passthrough = ["no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "printf", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcalculet", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 1 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, no_unwind, passthrough = ["no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], res_attrs = [{llvm.range = #llvm.constant_range<i32, 0, 2>}], sym_name = "main", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcalculet", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 1 : i64, visibility_ = 0 : i64}> ({
    %0 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %2 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %3 = "llvm.mlir.addressof"() <{global_name = @".str"}> : () -> !llvm.ptr
    %4 = "llvm.mlir.addressof"() <{global_name = @".str.1"}> : () -> !llvm.ptr
    %5 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %6 = "llvm.mlir.constant"() <{value = 10 : i64}> : () -> i64
    %7 = "llvm.mlir.constant"() <{value = 81985529216486895 : i64}> : () -> i64
    %8 = "llvm.mlir.constant"() <{value = -1 : i64}> : () -> i64
    %9 = "llvm.mlir.constant"() <{value = -10 : i64}> : () -> i64
    %10 = "llvm.mlir.constant"() <{value = -81985529216486895 : i64}> : () -> i64
    %11 = "llvm.mlir.constant"() <{value = 3037000499 : i64}> : () -> i64
    %12 = "llvm.mlir.constant"() <{value = 9223372030926249001 : i64}> : () -> i64
    %13 = "llvm.mlir.constant"() <{value = -3037000499 : i64}> : () -> i64
    %14 = "llvm.mlir.constant"() <{value = -9223372030926249001 : i64}> : () -> i64
    %15 = "llvm.mlir.constant"() <{value = 4398046511103 : i64}> : () -> i64
    %16 = "llvm.mlir.constant"() <{value = 2097152 : i64}> : () -> i64
    %17 = "llvm.mlir.constant"() <{value = 9223372036852678656 : i64}> : () -> i64
    %18 = "llvm.mlir.constant"() <{value = -4398046511103 : i64}> : () -> i64
    %19 = "llvm.mlir.constant"() <{value = -9223372036852678656 : i64}> : () -> i64
    %20 = "llvm.mlir.constant"() <{value = -2097152 : i64}> : () -> i64
    %21 = "llvm.mlir.constant"() <{value = 9223372036854775807 : i64}> : () -> i64
    %22 = "llvm.mlir.constant"() <{value = -2 : i64}> : () -> i64
    %23 = "llvm.mlir.constant"() <{value = 2 : i64}> : () -> i64
    %24 = "llvm.mlir.constant"() <{value = -9223372036854775807 : i64}> : () -> i64
    %25 = "llvm.mlir.constant"() <{value = -9223372036854775808 : i64}> : () -> i64
    %26 = "llvm.alloca"(%0) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %27 = "llvm.alloca"(%0) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %28 = "llvm.alloca"(%0) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %29 = "llvm.alloca"(%0) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    "llvm.intr.lifetime.start"(%29) : (!llvm.ptr) -> ()
    %30 = "llvm.call"(%1, %1, %29) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.nonnull, llvm.noundef}], callee = @__mulodi4, fastmathFlags = #llvm.fastmath<none>, no_unwind, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (i64, i64, !llvm.ptr) -> i64
    %31 = "llvm.load"(%29) <{alignment = 4 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> i32
    %32 = "llvm.icmp"(%31, %2) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%32)[^bb2, ^bb1] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %33 = "llvm.call"(%3, %31, %2) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.nonnull, llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @printf, fastmathFlags = #llvm.fastmath<none>, no_unwind, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>, var_callee_type = !llvm.func<i32 (ptr, ...)>}> : (!llvm.ptr, i32, i32) -> i32
    "llvm.br"()[^bb4] : () -> ()
  ^bb2:  // pred: ^bb0
    %34 = "llvm.icmp"(%30, %1) <{predicate = 0 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%34)[^bb4, ^bb3] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb3:  // pred: ^bb2
    %35 = "llvm.call"(%4, %1, %1, %30, %2, %1, %2) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.nonnull, llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @printf, fastmathFlags = #llvm.fastmath<none>, no_unwind, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 7, 0>, var_callee_type = !llvm.func<i32 (ptr, ...)>}> : (!llvm.ptr, i64, i64, i64, i32, i64, i32) -> i32
    "llvm.intr.lifetime.end"(%29) : (!llvm.ptr) -> ()
    "llvm.br"(%0)[^bb77] : (i32) -> ()
  ^bb4:  // 2 preds: ^bb1, ^bb2
    "llvm.intr.lifetime.end"(%29) : (!llvm.ptr) -> ()
    "llvm.intr.lifetime.start"(%28) : (!llvm.ptr) -> ()
    %36 = "llvm.call"(%1, %5, %28) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.nonnull, llvm.noundef}], callee = @__mulodi4, fastmathFlags = #llvm.fastmath<none>, no_unwind, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (i64, i64, !llvm.ptr) -> i64
    %37 = "llvm.load"(%28) <{alignment = 4 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> i32
    %38 = "llvm.icmp"(%37, %2) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%38)[^bb6, ^bb5] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb5:  // pred: ^bb4
    %39 = "llvm.call"(%3, %37, %2) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.nonnull, llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @printf, fastmathFlags = #llvm.fastmath<none>, no_unwind, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>, var_callee_type = !llvm.func<i32 (ptr, ...)>}> : (!llvm.ptr, i32, i32) -> i32
    "llvm.br"()[^bb8] : () -> ()
  ^bb6:  // pred: ^bb4
    %40 = "llvm.icmp"(%36, %1) <{predicate = 0 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%40)[^bb8, ^bb7] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb7:  // pred: ^bb6
    %41 = "llvm.call"(%4, %1, %5, %36, %2, %1, %2) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.nonnull, llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @printf, fastmathFlags = #llvm.fastmath<none>, no_unwind, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 7, 0>, var_callee_type = !llvm.func<i32 (ptr, ...)>}> : (!llvm.ptr, i64, i64, i64, i32, i64, i32) -> i32
    "llvm.intr.lifetime.end"(%28) : (!llvm.ptr) -> ()
    "llvm.br"(%0)[^bb77] : (i32) -> ()
  ^bb8:  // 2 preds: ^bb5, ^bb6
    "llvm.intr.lifetime.end"(%28) : (!llvm.ptr) -> ()
    "llvm.intr.lifetime.start"(%27) : (!llvm.ptr) -> ()
    %42 = "llvm.call"(%5, %1, %27) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.nonnull, llvm.noundef}], callee = @__mulodi4, fastmathFlags = #llvm.fastmath<none>, no_unwind, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (i64, i64, !llvm.ptr) -> i64
    %43 = "llvm.load"(%27) <{alignment = 4 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> i32
    %44 = "llvm.icmp"(%43, %2) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%44)[^bb10, ^bb9] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb9:  // pred: ^bb8
    %45 = "llvm.call"(%3, %43, %2) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.nonnull, llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @printf, fastmathFlags = #llvm.fastmath<none>, no_unwind, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>, var_callee_type = !llvm.func<i32 (ptr, ...)>}> : (!llvm.ptr, i32, i32) -> i32
    "llvm.br"()[^bb12] : () -> ()
  ^bb10:  // pred: ^bb8
    %46 = "llvm.icmp"(%42, %1) <{predicate = 0 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%46)[^bb12, ^bb11] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb11:  // pred: ^bb10
    %47 = "llvm.call"(%4, %5, %1, %42, %2, %1, %2) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.nonnull, llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @printf, fastmathFlags = #llvm.fastmath<none>, no_unwind, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 7, 0>, var_callee_type = !llvm.func<i32 (ptr, ...)>}> : (!llvm.ptr, i64, i64, i64, i32, i64, i32) -> i32
    "llvm.intr.lifetime.end"(%27) : (!llvm.ptr) -> ()
    "llvm.br"(%0)[^bb77] : (i32) -> ()
  ^bb12:  // 2 preds: ^bb9, ^bb10
    "llvm.intr.lifetime.end"(%27) : (!llvm.ptr) -> ()
    "llvm.intr.lifetime.start"(%26) : (!llvm.ptr) -> ()
    %48 = "llvm.call"(%1, %6, %26) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.nonnull, llvm.noundef}], callee = @__mulodi4, fastmathFlags = #llvm.fastmath<none>, no_unwind, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (i64, i64, !llvm.ptr) -> i64
    %49 = "llvm.load"(%26) <{alignment = 4 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> i32
    %50 = "llvm.icmp"(%49, %2) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%50)[^bb14, ^bb13] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb13:  // pred: ^bb12
    %51 = "llvm.call"(%3, %49, %2) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.nonnull, llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @printf, fastmathFlags = #llvm.fastmath<none>, no_unwind, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>, var_callee_type = !llvm.func<i32 (ptr, ...)>}> : (!llvm.ptr, i32, i32) -> i32
    "llvm.br"()[^bb16] : () -> ()
  ^bb14:  // pred: ^bb12
    %52 = "llvm.icmp"(%48, %1) <{predicate = 0 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%52)[^bb16, ^bb15] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb15:  // pred: ^bb14
    %53 = "llvm.call"(%4, %1, %6, %48, %2, %1, %2) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.nonnull, llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @printf, fastmathFlags = #llvm.fastmath<none>, no_unwind, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 7, 0>, var_callee_type = !llvm.func<i32 (ptr, ...)>}> : (!llvm.ptr, i64, i64, i64, i32, i64, i32) -> i32
    "llvm.intr.lifetime.end"(%26) : (!llvm.ptr) -> ()
    "llvm.br"(%0)[^bb77] : (i32) -> ()
  ^bb16:  // 2 preds: ^bb13, ^bb14
    "llvm.intr.lifetime.end"(%26) : (!llvm.ptr) -> ()
    %54 = "llvm.call"(%6, %1, %1, %2) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulodi4, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>}> : (i64, i64, i64, i32) -> i32
    %55 = "llvm.icmp"(%54, %2) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%55, %0)[^bb17, ^bb77] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb17:  // pred: ^bb16
    %56 = "llvm.call"(%1, %7, %1, %2) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulodi4, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>}> : (i64, i64, i64, i32) -> i32
    %57 = "llvm.icmp"(%56, %2) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%57, %0)[^bb18, ^bb77] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb18:  // pred: ^bb17
    %58 = "llvm.call"(%7, %1, %1, %2) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulodi4, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>}> : (i64, i64, i64, i32) -> i32
    %59 = "llvm.icmp"(%58, %2) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%59, %0)[^bb19, ^bb77] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb19:  // pred: ^bb18
    %60 = "llvm.call"(%1, %8, %1, %2) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulodi4, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>}> : (i64, i64, i64, i32) -> i32
    %61 = "llvm.icmp"(%60, %2) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%61, %0)[^bb20, ^bb77] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb20:  // pred: ^bb19
    %62 = "llvm.call"(%8, %1, %1, %2) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulodi4, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>}> : (i64, i64, i64, i32) -> i32
    %63 = "llvm.icmp"(%62, %2) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%63, %0)[^bb21, ^bb77] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb21:  // pred: ^bb20
    %64 = "llvm.call"(%1, %9, %1, %2) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulodi4, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>}> : (i64, i64, i64, i32) -> i32
    %65 = "llvm.icmp"(%64, %2) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%65, %0)[^bb22, ^bb77] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb22:  // pred: ^bb21
    %66 = "llvm.call"(%9, %1, %1, %2) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulodi4, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>}> : (i64, i64, i64, i32) -> i32
    %67 = "llvm.icmp"(%66, %2) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%67, %0)[^bb23, ^bb77] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb23:  // pred: ^bb22
    %68 = "llvm.call"(%1, %10, %1, %2) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulodi4, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>}> : (i64, i64, i64, i32) -> i32
    %69 = "llvm.icmp"(%68, %2) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%69, %0)[^bb24, ^bb77] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb24:  // pred: ^bb23
    %70 = "llvm.call"(%10, %1, %1, %2) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulodi4, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>}> : (i64, i64, i64, i32) -> i32
    %71 = "llvm.icmp"(%70, %2) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%71, %0)[^bb25, ^bb77] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb25:  // pred: ^bb24
    %72 = "llvm.call"(%5, %5, %5, %2) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulodi4, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>}> : (i64, i64, i64, i32) -> i32
    %73 = "llvm.icmp"(%72, %2) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%73, %0)[^bb26, ^bb77] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb26:  // pred: ^bb25
    %74 = "llvm.call"(%5, %6, %6, %2) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulodi4, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>}> : (i64, i64, i64, i32) -> i32
    %75 = "llvm.icmp"(%74, %2) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%75, %0)[^bb27, ^bb77] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb27:  // pred: ^bb26
    %76 = "llvm.call"(%6, %5, %6, %2) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulodi4, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>}> : (i64, i64, i64, i32) -> i32
    %77 = "llvm.icmp"(%76, %2) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%77, %0)[^bb28, ^bb77] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb28:  // pred: ^bb27
    %78 = "llvm.call"(%5, %7, %7, %2) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulodi4, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>}> : (i64, i64, i64, i32) -> i32
    %79 = "llvm.icmp"(%78, %2) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%79, %0)[^bb29, ^bb77] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb29:  // pred: ^bb28
    %80 = "llvm.call"(%7, %5, %7, %2) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulodi4, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>}> : (i64, i64, i64, i32) -> i32
    %81 = "llvm.icmp"(%80, %2) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%81, %0)[^bb30, ^bb77] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb30:  // pred: ^bb29
    %82 = "llvm.call"(%5, %8, %8, %2) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulodi4, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>}> : (i64, i64, i64, i32) -> i32
    %83 = "llvm.icmp"(%82, %2) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%83, %0)[^bb31, ^bb77] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb31:  // pred: ^bb30
    %84 = "llvm.call"(%5, %9, %9, %2) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulodi4, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>}> : (i64, i64, i64, i32) -> i32
    %85 = "llvm.icmp"(%84, %2) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%85, %0)[^bb32, ^bb77] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb32:  // pred: ^bb31
    %86 = "llvm.call"(%9, %5, %9, %2) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulodi4, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>}> : (i64, i64, i64, i32) -> i32
    %87 = "llvm.icmp"(%86, %2) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%87, %0)[^bb33, ^bb77] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb33:  // pred: ^bb32
    %88 = "llvm.call"(%5, %10, %10, %2) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulodi4, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>}> : (i64, i64, i64, i32) -> i32
    %89 = "llvm.icmp"(%88, %2) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%89, %0)[^bb34, ^bb77] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb34:  // pred: ^bb33
    %90 = "llvm.call"(%10, %5, %10, %2) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulodi4, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>}> : (i64, i64, i64, i32) -> i32
    %91 = "llvm.icmp"(%90, %2) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%91, %0)[^bb35, ^bb77] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb35:  // pred: ^bb34
    %92 = "llvm.call"(%11, %11, %12, %2) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulodi4, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>}> : (i64, i64, i64, i32) -> i32
    %93 = "llvm.icmp"(%92, %2) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%93, %0)[^bb36, ^bb77] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb36:  // pred: ^bb35
    %94 = "llvm.call"(%13, %11, %14, %2) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulodi4, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>}> : (i64, i64, i64, i32) -> i32
    %95 = "llvm.icmp"(%94, %2) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%95, %0)[^bb37, ^bb77] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb37:  // pred: ^bb36
    %96 = "llvm.call"(%11, %13, %14, %2) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulodi4, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>}> : (i64, i64, i64, i32) -> i32
    %97 = "llvm.icmp"(%96, %2) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%97, %0)[^bb38, ^bb77] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb38:  // pred: ^bb37
    %98 = "llvm.call"(%13, %13, %12, %2) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulodi4, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>}> : (i64, i64, i64, i32) -> i32
    %99 = "llvm.icmp"(%98, %2) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%99, %0)[^bb39, ^bb77] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb39:  // pred: ^bb38
    %100 = "llvm.call"(%15, %16, %17, %2) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulodi4, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>}> : (i64, i64, i64, i32) -> i32
    %101 = "llvm.icmp"(%100, %2) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%101, %0)[^bb40, ^bb77] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb40:  // pred: ^bb39
    %102 = "llvm.call"(%18, %16, %19, %2) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulodi4, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>}> : (i64, i64, i64, i32) -> i32
    %103 = "llvm.icmp"(%102, %2) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%103, %0)[^bb41, ^bb77] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb41:  // pred: ^bb40
    %104 = "llvm.call"(%15, %20, %19, %2) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulodi4, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>}> : (i64, i64, i64, i32) -> i32
    %105 = "llvm.icmp"(%104, %2) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%105, %0)[^bb42, ^bb77] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb42:  // pred: ^bb41
    %106 = "llvm.call"(%18, %20, %17, %2) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulodi4, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>}> : (i64, i64, i64, i32) -> i32
    %107 = "llvm.icmp"(%106, %2) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%107, %0)[^bb43, ^bb77] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb43:  // pred: ^bb42
    %108 = "llvm.call"(%16, %15, %17, %2) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulodi4, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>}> : (i64, i64, i64, i32) -> i32
    %109 = "llvm.icmp"(%108, %2) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%109, %0)[^bb44, ^bb77] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb44:  // pred: ^bb43
    %110 = "llvm.call"(%20, %15, %19, %2) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulodi4, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>}> : (i64, i64, i64, i32) -> i32
    %111 = "llvm.icmp"(%110, %2) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%111, %0)[^bb45, ^bb77] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb45:  // pred: ^bb44
    %112 = "llvm.call"(%16, %18, %19, %2) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulodi4, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>}> : (i64, i64, i64, i32) -> i32
    %113 = "llvm.icmp"(%112, %2) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%113, %0)[^bb46, ^bb77] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb46:  // pred: ^bb45
    %114 = "llvm.call"(%20, %18, %17, %2) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulodi4, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>}> : (i64, i64, i64, i32) -> i32
    %115 = "llvm.icmp"(%114, %2) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%115, %0)[^bb47, ^bb77] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb47:  // pred: ^bb46
    %116 = "llvm.call"(%21, %22, %23, %0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulodi4, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>}> : (i64, i64, i64, i32) -> i32
    %117 = "llvm.icmp"(%116, %2) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%117, %0)[^bb48, ^bb77] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb48:  // pred: ^bb47
    %118 = "llvm.call"(%22, %21, %23, %0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulodi4, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>}> : (i64, i64, i64, i32) -> i32
    %119 = "llvm.icmp"(%118, %2) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%119, %0)[^bb49, ^bb77] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb49:  // pred: ^bb48
    %120 = "llvm.call"(%21, %8, %24, %2) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulodi4, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>}> : (i64, i64, i64, i32) -> i32
    %121 = "llvm.icmp"(%120, %2) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%121, %0)[^bb50, ^bb77] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb50:  // pred: ^bb49
    %122 = "llvm.call"(%8, %21, %24, %2) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulodi4, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>}> : (i64, i64, i64, i32) -> i32
    %123 = "llvm.icmp"(%122, %2) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%123, %0)[^bb51, ^bb77] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb51:  // pred: ^bb50
    %124 = "llvm.call"(%21, %1, %1, %2) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulodi4, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>}> : (i64, i64, i64, i32) -> i32
    %125 = "llvm.icmp"(%124, %2) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%125, %0)[^bb52, ^bb77] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb52:  // pred: ^bb51
    %126 = "llvm.call"(%1, %21, %1, %2) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulodi4, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>}> : (i64, i64, i64, i32) -> i32
    %127 = "llvm.icmp"(%126, %2) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%127, %0)[^bb53, ^bb77] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb53:  // pred: ^bb52
    %128 = "llvm.call"(%21, %5, %21, %2) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulodi4, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>}> : (i64, i64, i64, i32) -> i32
    %129 = "llvm.icmp"(%128, %2) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%129, %0)[^bb54, ^bb77] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb54:  // pred: ^bb53
    %130 = "llvm.call"(%5, %21, %21, %2) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulodi4, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>}> : (i64, i64, i64, i32) -> i32
    %131 = "llvm.icmp"(%130, %2) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%131, %0)[^bb55, ^bb77] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb55:  // pred: ^bb54
    %132 = "llvm.call"(%21, %23, %24, %0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulodi4, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>}> : (i64, i64, i64, i32) -> i32
    %133 = "llvm.icmp"(%132, %2) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%133, %0)[^bb56, ^bb77] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb56:  // pred: ^bb55
    %134 = "llvm.call"(%23, %21, %24, %0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulodi4, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>}> : (i64, i64, i64, i32) -> i32
    %135 = "llvm.icmp"(%134, %2) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%135, %0)[^bb57, ^bb77] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb57:  // pred: ^bb56
    %136 = "llvm.call"(%25, %22, %25, %0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulodi4, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>}> : (i64, i64, i64, i32) -> i32
    %137 = "llvm.icmp"(%136, %2) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%137, %0)[^bb58, ^bb77] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb58:  // pred: ^bb57
    %138 = "llvm.call"(%22, %25, %25, %0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulodi4, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>}> : (i64, i64, i64, i32) -> i32
    %139 = "llvm.icmp"(%138, %2) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%139, %0)[^bb59, ^bb77] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb59:  // pred: ^bb58
    %140 = "llvm.call"(%25, %8, %25, %0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulodi4, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>}> : (i64, i64, i64, i32) -> i32
    %141 = "llvm.icmp"(%140, %2) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%141, %0)[^bb60, ^bb77] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb60:  // pred: ^bb59
    %142 = "llvm.call"(%8, %25, %25, %0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulodi4, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>}> : (i64, i64, i64, i32) -> i32
    %143 = "llvm.icmp"(%142, %2) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%143, %0)[^bb61, ^bb77] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb61:  // pred: ^bb60
    %144 = "llvm.call"(%25, %1, %1, %2) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulodi4, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>}> : (i64, i64, i64, i32) -> i32
    %145 = "llvm.icmp"(%144, %2) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%145, %0)[^bb62, ^bb77] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb62:  // pred: ^bb61
    %146 = "llvm.call"(%1, %25, %1, %2) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulodi4, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>}> : (i64, i64, i64, i32) -> i32
    %147 = "llvm.icmp"(%146, %2) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%147, %0)[^bb63, ^bb77] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb63:  // pred: ^bb62
    %148 = "llvm.call"(%25, %5, %25, %2) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulodi4, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>}> : (i64, i64, i64, i32) -> i32
    %149 = "llvm.icmp"(%148, %2) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%149, %0)[^bb64, ^bb77] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb64:  // pred: ^bb63
    %150 = "llvm.call"(%5, %25, %25, %2) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulodi4, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>}> : (i64, i64, i64, i32) -> i32
    %151 = "llvm.icmp"(%150, %2) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%151, %0)[^bb65, ^bb77] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb65:  // pred: ^bb64
    %152 = "llvm.call"(%25, %23, %25, %0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulodi4, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>}> : (i64, i64, i64, i32) -> i32
    %153 = "llvm.icmp"(%152, %2) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%153, %0)[^bb66, ^bb77] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb66:  // pred: ^bb65
    %154 = "llvm.call"(%23, %25, %25, %0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulodi4, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>}> : (i64, i64, i64, i32) -> i32
    %155 = "llvm.icmp"(%154, %2) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%155, %0)[^bb67, ^bb77] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb67:  // pred: ^bb66
    %156 = "llvm.call"(%24, %22, %24, %0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulodi4, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>}> : (i64, i64, i64, i32) -> i32
    %157 = "llvm.icmp"(%156, %2) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%157, %0)[^bb68, ^bb77] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb68:  // pred: ^bb67
    %158 = "llvm.call"(%22, %24, %24, %0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulodi4, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>}> : (i64, i64, i64, i32) -> i32
    %159 = "llvm.icmp"(%158, %2) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%159, %0)[^bb69, ^bb77] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb69:  // pred: ^bb68
    %160 = "llvm.call"(%24, %8, %21, %2) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulodi4, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>}> : (i64, i64, i64, i32) -> i32
    %161 = "llvm.icmp"(%160, %2) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%161, %0)[^bb70, ^bb77] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb70:  // pred: ^bb69
    %162 = "llvm.call"(%8, %24, %21, %2) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulodi4, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>}> : (i64, i64, i64, i32) -> i32
    %163 = "llvm.icmp"(%162, %2) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%163, %0)[^bb71, ^bb77] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb71:  // pred: ^bb70
    %164 = "llvm.call"(%24, %1, %1, %2) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulodi4, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>}> : (i64, i64, i64, i32) -> i32
    %165 = "llvm.icmp"(%164, %2) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%165, %0)[^bb72, ^bb77] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb72:  // pred: ^bb71
    %166 = "llvm.call"(%1, %24, %1, %2) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulodi4, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>}> : (i64, i64, i64, i32) -> i32
    %167 = "llvm.icmp"(%166, %2) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%167, %0)[^bb73, ^bb77] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb73:  // pred: ^bb72
    %168 = "llvm.call"(%24, %5, %24, %2) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulodi4, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>}> : (i64, i64, i64, i32) -> i32
    %169 = "llvm.icmp"(%168, %2) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%169, %0)[^bb74, ^bb77] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb74:  // pred: ^bb73
    %170 = "llvm.call"(%5, %24, %24, %2) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulodi4, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>}> : (i64, i64, i64, i32) -> i32
    %171 = "llvm.icmp"(%170, %2) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%171, %0)[^bb75, ^bb77] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb75:  // pred: ^bb74
    %172 = "llvm.call"(%24, %23, %25, %0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulodi4, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>}> : (i64, i64, i64, i32) -> i32
    %173 = "llvm.icmp"(%172, %2) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%173, %0)[^bb76, ^bb77] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb76:  // pred: ^bb75
    %174 = "llvm.call"(%23, %24, %25, %0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulodi4, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>}> : (i64, i64, i64, i32) -> i32
    "llvm.br"(%174)[^bb77] : (i32) -> ()
  ^bb77(%175: i32):  // 65 preds: ^bb3, ^bb7, ^bb11, ^bb15, ^bb16, ^bb17, ^bb18, ^bb19, ^bb20, ^bb21, ^bb22, ^bb23, ^bb24, ^bb25, ^bb26, ^bb27, ^bb28, ^bb29, ^bb30, ^bb31, ^bb32, ^bb33, ^bb34, ^bb35, ^bb36, ^bb37, ^bb38, ^bb39, ^bb40, ^bb41, ^bb42, ^bb43, ^bb44, ^bb45, ^bb46, ^bb47, ^bb48, ^bb49, ^bb50, ^bb51, ^bb52, ^bb53, ^bb54, ^bb55, ^bb56, ^bb57, ^bb58, ^bb59, ^bb60, ^bb61, ^bb62, ^bb63, ^bb64, ^bb65, ^bb66, ^bb67, ^bb68, ^bb69, ^bb70, ^bb71, ^bb72, ^bb73, ^bb74, ^bb75, ^bb76
    "llvm.return"(%175) : (i32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<32> : vector<4xi64>, i64 = dense<64> : vector<2xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little", "dlti.mangling_mode" = "e", "dlti.legal_int_widths" = array<i32: 32>, "dlti.stack_alignment" = 128 : i64>, llvm.ident = "clang version 22.1.8", llvm.module_asm = [], llvm.target_triple = "riscv32-unknown-unknown-elf"} : () -> ()

