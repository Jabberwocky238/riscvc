"builtin.module"() ({
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 1 : i64, constant, dso_local, global_type = !llvm.array<43 x i8>, linkage = #llvm.linkage<private>, sym_name = ".str", unnamed_addr = 2 : i64, value = "error in __clzsi2(0x%X) = %d, expected %d\0A\00", visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 1 : i64, dso_local, global_type = !llvm.array<1 x i8>, linkage = #llvm.linkage<external>, sym_name = "assumption_1", unnamed_addr = 0 : i64, value = dense<0> : tensor<1xi8>, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 1 : i64, dso_local, global_type = !llvm.array<1 x i8>, linkage = #llvm.linkage<external>, sym_name = "assumption_2", unnamed_addr = 0 : i64, value = dense<0> : tensor<1xi8>, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<error, "wchar_size", 4 : i32>, #llvm.mlir.module_flag<error, "target-abi", "ilp32f">, #llvm.mlir.module_flag<max, "frame-pointer", 2 : i32>, #llvm.mlir.module_flag<min, "SmallDataLimit", 0 : i32>]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], dso_local, frame_pointer = #llvm.framePointerKind<all>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_inline, no_unwind, optimize_none, passthrough = ["no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "test__clzsi2", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %866 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %867 = "llvm.mlir.addressof"() <{global_name = @".str"}> : () -> !llvm.ptr
    %868 = "llvm.alloca"(%866) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %869 = "llvm.alloca"(%866) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %870 = "llvm.alloca"(%866) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    "llvm.store"(%arg0, %868) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.store"(%arg1, %869) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %871 = "llvm.load"(%868) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %872 = "llvm.call"(%871) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}], callee = @__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (i32) -> i32
    "llvm.store"(%872, %870) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %873 = "llvm.load"(%870) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %874 = "llvm.load"(%869) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %875 = "llvm.icmp"(%873, %874) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%875)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %876 = "llvm.load"(%868) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %877 = "llvm.load"(%870) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %878 = "llvm.load"(%869) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %879 = "llvm.call"(%867, %876, %877, %878) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @printf, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>, var_callee_type = !llvm.func<i32 (ptr, ...)>}> : (!llvm.ptr, i32, i32, i32) -> i32
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    %880 = "llvm.load"(%870) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %881 = "llvm.load"(%869) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %882 = "llvm.icmp"(%880, %881) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %883 = "llvm.zext"(%882) : (i1) -> i32
    "llvm.return"(%883) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.noundef}], dso_local, frame_pointer = #llvm.framePointerKind<all>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, passthrough = ["no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "__clzsi2", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.noundef}], dso_local, frame_pointer = #llvm.framePointerKind<all>, function_type = !llvm.func<i32 (ptr, ...)>, linkage = #llvm.linkage<external>, passthrough = ["no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "printf", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, frame_pointer = #llvm.framePointerKind<all>, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, no_inline, no_unwind, optimize_none, passthrough = ["no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "main", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %0 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 8388608 : i32}> : () -> i32
    %2 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %3 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %4 = "llvm.mlir.constant"() <{value = 16777216 : i32}> : () -> i32
    %5 = "llvm.mlir.constant"() <{value = 7 : i32}> : () -> i32
    %6 = "llvm.mlir.constant"() <{value = 33554432 : i32}> : () -> i32
    %7 = "llvm.mlir.constant"() <{value = 6 : i32}> : () -> i32
    %8 = "llvm.mlir.constant"() <{value = 50331648 : i32}> : () -> i32
    %9 = "llvm.mlir.constant"() <{value = 67108864 : i32}> : () -> i32
    %10 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %11 = "llvm.mlir.constant"() <{value = 83886080 : i32}> : () -> i32
    %12 = "llvm.mlir.constant"() <{value = 100663296 : i32}> : () -> i32
    %13 = "llvm.mlir.constant"() <{value = 117440512 : i32}> : () -> i32
    %14 = "llvm.mlir.constant"() <{value = 134217728 : i32}> : () -> i32
    %15 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %16 = "llvm.mlir.constant"() <{value = 150994944 : i32}> : () -> i32
    %17 = "llvm.mlir.constant"() <{value = 167772160 : i32}> : () -> i32
    %18 = "llvm.mlir.constant"() <{value = 184549376 : i32}> : () -> i32
    %19 = "llvm.mlir.constant"() <{value = 201326592 : i32}> : () -> i32
    %20 = "llvm.mlir.constant"() <{value = 218103808 : i32}> : () -> i32
    %21 = "llvm.mlir.constant"() <{value = 234881024 : i32}> : () -> i32
    %22 = "llvm.mlir.constant"() <{value = 251658240 : i32}> : () -> i32
    %23 = "llvm.mlir.constant"() <{value = 268435456 : i32}> : () -> i32
    %24 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %25 = "llvm.mlir.constant"() <{value = 285212672 : i32}> : () -> i32
    %26 = "llvm.mlir.constant"() <{value = 301989888 : i32}> : () -> i32
    %27 = "llvm.mlir.constant"() <{value = 318767104 : i32}> : () -> i32
    %28 = "llvm.mlir.constant"() <{value = 335544320 : i32}> : () -> i32
    %29 = "llvm.mlir.constant"() <{value = 352321536 : i32}> : () -> i32
    %30 = "llvm.mlir.constant"() <{value = 369098752 : i32}> : () -> i32
    %31 = "llvm.mlir.constant"() <{value = 385875968 : i32}> : () -> i32
    %32 = "llvm.mlir.constant"() <{value = 402653184 : i32}> : () -> i32
    %33 = "llvm.mlir.constant"() <{value = 419430400 : i32}> : () -> i32
    %34 = "llvm.mlir.constant"() <{value = 436207616 : i32}> : () -> i32
    %35 = "llvm.mlir.constant"() <{value = 452984832 : i32}> : () -> i32
    %36 = "llvm.mlir.constant"() <{value = 469762048 : i32}> : () -> i32
    %37 = "llvm.mlir.constant"() <{value = 486539264 : i32}> : () -> i32
    %38 = "llvm.mlir.constant"() <{value = 503316480 : i32}> : () -> i32
    %39 = "llvm.mlir.constant"() <{value = 520093696 : i32}> : () -> i32
    %40 = "llvm.mlir.constant"() <{value = 536870912 : i32}> : () -> i32
    %41 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %42 = "llvm.mlir.constant"() <{value = 553648128 : i32}> : () -> i32
    %43 = "llvm.mlir.constant"() <{value = 570425344 : i32}> : () -> i32
    %44 = "llvm.mlir.constant"() <{value = 587202560 : i32}> : () -> i32
    %45 = "llvm.mlir.constant"() <{value = 603979776 : i32}> : () -> i32
    %46 = "llvm.mlir.constant"() <{value = 620756992 : i32}> : () -> i32
    %47 = "llvm.mlir.constant"() <{value = 637534208 : i32}> : () -> i32
    %48 = "llvm.mlir.constant"() <{value = 654311424 : i32}> : () -> i32
    %49 = "llvm.mlir.constant"() <{value = 671088640 : i32}> : () -> i32
    %50 = "llvm.mlir.constant"() <{value = 687865856 : i32}> : () -> i32
    %51 = "llvm.mlir.constant"() <{value = 704643072 : i32}> : () -> i32
    %52 = "llvm.mlir.constant"() <{value = 721420288 : i32}> : () -> i32
    %53 = "llvm.mlir.constant"() <{value = 738197504 : i32}> : () -> i32
    %54 = "llvm.mlir.constant"() <{value = 754974720 : i32}> : () -> i32
    %55 = "llvm.mlir.constant"() <{value = 771751936 : i32}> : () -> i32
    %56 = "llvm.mlir.constant"() <{value = 788529152 : i32}> : () -> i32
    %57 = "llvm.mlir.constant"() <{value = 805306368 : i32}> : () -> i32
    %58 = "llvm.mlir.constant"() <{value = 822083584 : i32}> : () -> i32
    %59 = "llvm.mlir.constant"() <{value = 838860800 : i32}> : () -> i32
    %60 = "llvm.mlir.constant"() <{value = 855638016 : i32}> : () -> i32
    %61 = "llvm.mlir.constant"() <{value = 872415232 : i32}> : () -> i32
    %62 = "llvm.mlir.constant"() <{value = 889192448 : i32}> : () -> i32
    %63 = "llvm.mlir.constant"() <{value = 905969664 : i32}> : () -> i32
    %64 = "llvm.mlir.constant"() <{value = 922746880 : i32}> : () -> i32
    %65 = "llvm.mlir.constant"() <{value = 939524096 : i32}> : () -> i32
    %66 = "llvm.mlir.constant"() <{value = 956301312 : i32}> : () -> i32
    %67 = "llvm.mlir.constant"() <{value = 973078528 : i32}> : () -> i32
    %68 = "llvm.mlir.constant"() <{value = 989855744 : i32}> : () -> i32
    %69 = "llvm.mlir.constant"() <{value = 1006632960 : i32}> : () -> i32
    %70 = "llvm.mlir.constant"() <{value = 1023410176 : i32}> : () -> i32
    %71 = "llvm.mlir.constant"() <{value = 1040187392 : i32}> : () -> i32
    %72 = "llvm.mlir.constant"() <{value = 1056964608 : i32}> : () -> i32
    %73 = "llvm.mlir.constant"() <{value = 1073741824 : i32}> : () -> i32
    %74 = "llvm.mlir.constant"() <{value = 1090519040 : i32}> : () -> i32
    %75 = "llvm.mlir.constant"() <{value = 1107296256 : i32}> : () -> i32
    %76 = "llvm.mlir.constant"() <{value = 1124073472 : i32}> : () -> i32
    %77 = "llvm.mlir.constant"() <{value = 1140850688 : i32}> : () -> i32
    %78 = "llvm.mlir.constant"() <{value = 1157627904 : i32}> : () -> i32
    %79 = "llvm.mlir.constant"() <{value = 1174405120 : i32}> : () -> i32
    %80 = "llvm.mlir.constant"() <{value = 1191182336 : i32}> : () -> i32
    %81 = "llvm.mlir.constant"() <{value = 1207959552 : i32}> : () -> i32
    %82 = "llvm.mlir.constant"() <{value = 1224736768 : i32}> : () -> i32
    %83 = "llvm.mlir.constant"() <{value = 1241513984 : i32}> : () -> i32
    %84 = "llvm.mlir.constant"() <{value = 1258291200 : i32}> : () -> i32
    %85 = "llvm.mlir.constant"() <{value = 1275068416 : i32}> : () -> i32
    %86 = "llvm.mlir.constant"() <{value = 1291845632 : i32}> : () -> i32
    %87 = "llvm.mlir.constant"() <{value = 1308622848 : i32}> : () -> i32
    %88 = "llvm.mlir.constant"() <{value = 1325400064 : i32}> : () -> i32
    %89 = "llvm.mlir.constant"() <{value = 1342177280 : i32}> : () -> i32
    %90 = "llvm.mlir.constant"() <{value = 1358954496 : i32}> : () -> i32
    %91 = "llvm.mlir.constant"() <{value = 1375731712 : i32}> : () -> i32
    %92 = "llvm.mlir.constant"() <{value = 1392508928 : i32}> : () -> i32
    %93 = "llvm.mlir.constant"() <{value = 1409286144 : i32}> : () -> i32
    %94 = "llvm.mlir.constant"() <{value = 1426063360 : i32}> : () -> i32
    %95 = "llvm.mlir.constant"() <{value = 1442840576 : i32}> : () -> i32
    %96 = "llvm.mlir.constant"() <{value = 1459617792 : i32}> : () -> i32
    %97 = "llvm.mlir.constant"() <{value = 1476395008 : i32}> : () -> i32
    %98 = "llvm.mlir.constant"() <{value = 1493172224 : i32}> : () -> i32
    %99 = "llvm.mlir.constant"() <{value = 1509949440 : i32}> : () -> i32
    %100 = "llvm.mlir.constant"() <{value = 1526726656 : i32}> : () -> i32
    %101 = "llvm.mlir.constant"() <{value = 1543503872 : i32}> : () -> i32
    %102 = "llvm.mlir.constant"() <{value = 1560281088 : i32}> : () -> i32
    %103 = "llvm.mlir.constant"() <{value = 1577058304 : i32}> : () -> i32
    %104 = "llvm.mlir.constant"() <{value = 1593835520 : i32}> : () -> i32
    %105 = "llvm.mlir.constant"() <{value = 1610612736 : i32}> : () -> i32
    %106 = "llvm.mlir.constant"() <{value = 1627389952 : i32}> : () -> i32
    %107 = "llvm.mlir.constant"() <{value = 1644167168 : i32}> : () -> i32
    %108 = "llvm.mlir.constant"() <{value = 1660944384 : i32}> : () -> i32
    %109 = "llvm.mlir.constant"() <{value = 1677721600 : i32}> : () -> i32
    %110 = "llvm.mlir.constant"() <{value = 1694498816 : i32}> : () -> i32
    %111 = "llvm.mlir.constant"() <{value = 1711276032 : i32}> : () -> i32
    %112 = "llvm.mlir.constant"() <{value = 1728053248 : i32}> : () -> i32
    %113 = "llvm.mlir.constant"() <{value = 1744830464 : i32}> : () -> i32
    %114 = "llvm.mlir.constant"() <{value = 1761607680 : i32}> : () -> i32
    %115 = "llvm.mlir.constant"() <{value = 1778384896 : i32}> : () -> i32
    %116 = "llvm.mlir.constant"() <{value = 1795162112 : i32}> : () -> i32
    %117 = "llvm.mlir.constant"() <{value = 1811939328 : i32}> : () -> i32
    %118 = "llvm.mlir.constant"() <{value = 1828716544 : i32}> : () -> i32
    %119 = "llvm.mlir.constant"() <{value = 1845493760 : i32}> : () -> i32
    %120 = "llvm.mlir.constant"() <{value = 1862270976 : i32}> : () -> i32
    %121 = "llvm.mlir.constant"() <{value = 1879048192 : i32}> : () -> i32
    %122 = "llvm.mlir.constant"() <{value = 1895825408 : i32}> : () -> i32
    %123 = "llvm.mlir.constant"() <{value = 1912602624 : i32}> : () -> i32
    %124 = "llvm.mlir.constant"() <{value = 1929379840 : i32}> : () -> i32
    %125 = "llvm.mlir.constant"() <{value = 1946157056 : i32}> : () -> i32
    %126 = "llvm.mlir.constant"() <{value = 1962934272 : i32}> : () -> i32
    %127 = "llvm.mlir.constant"() <{value = 1979711488 : i32}> : () -> i32
    %128 = "llvm.mlir.constant"() <{value = 1996488704 : i32}> : () -> i32
    %129 = "llvm.mlir.constant"() <{value = 2013265920 : i32}> : () -> i32
    %130 = "llvm.mlir.constant"() <{value = 2030043136 : i32}> : () -> i32
    %131 = "llvm.mlir.constant"() <{value = 2046820352 : i32}> : () -> i32
    %132 = "llvm.mlir.constant"() <{value = 2063597568 : i32}> : () -> i32
    %133 = "llvm.mlir.constant"() <{value = 2080374784 : i32}> : () -> i32
    %134 = "llvm.mlir.constant"() <{value = 2097152000 : i32}> : () -> i32
    %135 = "llvm.mlir.constant"() <{value = 2113929216 : i32}> : () -> i32
    %136 = "llvm.mlir.constant"() <{value = 2130706432 : i32}> : () -> i32
    %137 = "llvm.mlir.constant"() <{value = -2147483648 : i32}> : () -> i32
    %138 = "llvm.mlir.constant"() <{value = -2130706432 : i32}> : () -> i32
    %139 = "llvm.mlir.constant"() <{value = -2113929216 : i32}> : () -> i32
    %140 = "llvm.mlir.constant"() <{value = -2097152000 : i32}> : () -> i32
    %141 = "llvm.mlir.constant"() <{value = -2080374784 : i32}> : () -> i32
    %142 = "llvm.mlir.constant"() <{value = -2063597568 : i32}> : () -> i32
    %143 = "llvm.mlir.constant"() <{value = -2046820352 : i32}> : () -> i32
    %144 = "llvm.mlir.constant"() <{value = -2030043136 : i32}> : () -> i32
    %145 = "llvm.mlir.constant"() <{value = -2013265920 : i32}> : () -> i32
    %146 = "llvm.mlir.constant"() <{value = -1996488704 : i32}> : () -> i32
    %147 = "llvm.mlir.constant"() <{value = -1979711488 : i32}> : () -> i32
    %148 = "llvm.mlir.constant"() <{value = -1962934272 : i32}> : () -> i32
    %149 = "llvm.mlir.constant"() <{value = -1946157056 : i32}> : () -> i32
    %150 = "llvm.mlir.constant"() <{value = -1929379840 : i32}> : () -> i32
    %151 = "llvm.mlir.constant"() <{value = -1912602624 : i32}> : () -> i32
    %152 = "llvm.mlir.constant"() <{value = -1895825408 : i32}> : () -> i32
    %153 = "llvm.mlir.constant"() <{value = -1879048192 : i32}> : () -> i32
    %154 = "llvm.mlir.constant"() <{value = -1862270976 : i32}> : () -> i32
    %155 = "llvm.mlir.constant"() <{value = -1845493760 : i32}> : () -> i32
    %156 = "llvm.mlir.constant"() <{value = -1828716544 : i32}> : () -> i32
    %157 = "llvm.mlir.constant"() <{value = -1811939328 : i32}> : () -> i32
    %158 = "llvm.mlir.constant"() <{value = -1795162112 : i32}> : () -> i32
    %159 = "llvm.mlir.constant"() <{value = -1778384896 : i32}> : () -> i32
    %160 = "llvm.mlir.constant"() <{value = -1761607680 : i32}> : () -> i32
    %161 = "llvm.mlir.constant"() <{value = -1744830464 : i32}> : () -> i32
    %162 = "llvm.mlir.constant"() <{value = -1728053248 : i32}> : () -> i32
    %163 = "llvm.mlir.constant"() <{value = -1711276032 : i32}> : () -> i32
    %164 = "llvm.mlir.constant"() <{value = -1694498816 : i32}> : () -> i32
    %165 = "llvm.mlir.constant"() <{value = -1677721600 : i32}> : () -> i32
    %166 = "llvm.mlir.constant"() <{value = -1660944384 : i32}> : () -> i32
    %167 = "llvm.mlir.constant"() <{value = -1644167168 : i32}> : () -> i32
    %168 = "llvm.mlir.constant"() <{value = -1627389952 : i32}> : () -> i32
    %169 = "llvm.mlir.constant"() <{value = -1610612736 : i32}> : () -> i32
    %170 = "llvm.mlir.constant"() <{value = -1593835520 : i32}> : () -> i32
    %171 = "llvm.mlir.constant"() <{value = -1577058304 : i32}> : () -> i32
    %172 = "llvm.mlir.constant"() <{value = -1560281088 : i32}> : () -> i32
    %173 = "llvm.mlir.constant"() <{value = -1543503872 : i32}> : () -> i32
    %174 = "llvm.mlir.constant"() <{value = -1526726656 : i32}> : () -> i32
    %175 = "llvm.mlir.constant"() <{value = -1509949440 : i32}> : () -> i32
    %176 = "llvm.mlir.constant"() <{value = -1493172224 : i32}> : () -> i32
    %177 = "llvm.mlir.constant"() <{value = -1476395008 : i32}> : () -> i32
    %178 = "llvm.mlir.constant"() <{value = -1459617792 : i32}> : () -> i32
    %179 = "llvm.mlir.constant"() <{value = -1442840576 : i32}> : () -> i32
    %180 = "llvm.mlir.constant"() <{value = -1426063360 : i32}> : () -> i32
    %181 = "llvm.mlir.constant"() <{value = -1409286144 : i32}> : () -> i32
    %182 = "llvm.mlir.constant"() <{value = -1392508928 : i32}> : () -> i32
    %183 = "llvm.mlir.constant"() <{value = -1375731712 : i32}> : () -> i32
    %184 = "llvm.mlir.constant"() <{value = -1358954496 : i32}> : () -> i32
    %185 = "llvm.mlir.constant"() <{value = -1342177280 : i32}> : () -> i32
    %186 = "llvm.mlir.constant"() <{value = -1325400064 : i32}> : () -> i32
    %187 = "llvm.mlir.constant"() <{value = -1308622848 : i32}> : () -> i32
    %188 = "llvm.mlir.constant"() <{value = -1291845632 : i32}> : () -> i32
    %189 = "llvm.mlir.constant"() <{value = -1275068416 : i32}> : () -> i32
    %190 = "llvm.mlir.constant"() <{value = -1258291200 : i32}> : () -> i32
    %191 = "llvm.mlir.constant"() <{value = -1241513984 : i32}> : () -> i32
    %192 = "llvm.mlir.constant"() <{value = -1224736768 : i32}> : () -> i32
    %193 = "llvm.mlir.constant"() <{value = -1207959552 : i32}> : () -> i32
    %194 = "llvm.mlir.constant"() <{value = -1191182336 : i32}> : () -> i32
    %195 = "llvm.mlir.constant"() <{value = -1174405120 : i32}> : () -> i32
    %196 = "llvm.mlir.constant"() <{value = -1157627904 : i32}> : () -> i32
    %197 = "llvm.mlir.constant"() <{value = -1140850688 : i32}> : () -> i32
    %198 = "llvm.mlir.constant"() <{value = -1124073472 : i32}> : () -> i32
    %199 = "llvm.mlir.constant"() <{value = -1107296256 : i32}> : () -> i32
    %200 = "llvm.mlir.constant"() <{value = -1090519040 : i32}> : () -> i32
    %201 = "llvm.mlir.constant"() <{value = -1073741824 : i32}> : () -> i32
    %202 = "llvm.mlir.constant"() <{value = -1056964608 : i32}> : () -> i32
    %203 = "llvm.mlir.constant"() <{value = -1040187392 : i32}> : () -> i32
    %204 = "llvm.mlir.constant"() <{value = -1023410176 : i32}> : () -> i32
    %205 = "llvm.mlir.constant"() <{value = -1006632960 : i32}> : () -> i32
    %206 = "llvm.mlir.constant"() <{value = -989855744 : i32}> : () -> i32
    %207 = "llvm.mlir.constant"() <{value = -973078528 : i32}> : () -> i32
    %208 = "llvm.mlir.constant"() <{value = -956301312 : i32}> : () -> i32
    %209 = "llvm.mlir.constant"() <{value = -939524096 : i32}> : () -> i32
    %210 = "llvm.mlir.constant"() <{value = -922746880 : i32}> : () -> i32
    %211 = "llvm.mlir.constant"() <{value = -905969664 : i32}> : () -> i32
    %212 = "llvm.mlir.constant"() <{value = -889192448 : i32}> : () -> i32
    %213 = "llvm.mlir.constant"() <{value = -872415232 : i32}> : () -> i32
    %214 = "llvm.mlir.constant"() <{value = -855638016 : i32}> : () -> i32
    %215 = "llvm.mlir.constant"() <{value = -838860800 : i32}> : () -> i32
    %216 = "llvm.mlir.constant"() <{value = -822083584 : i32}> : () -> i32
    %217 = "llvm.mlir.constant"() <{value = -805306368 : i32}> : () -> i32
    %218 = "llvm.mlir.constant"() <{value = -788529152 : i32}> : () -> i32
    %219 = "llvm.mlir.constant"() <{value = -771751936 : i32}> : () -> i32
    %220 = "llvm.mlir.constant"() <{value = -754974720 : i32}> : () -> i32
    %221 = "llvm.mlir.constant"() <{value = -738197504 : i32}> : () -> i32
    %222 = "llvm.mlir.constant"() <{value = -721420288 : i32}> : () -> i32
    %223 = "llvm.mlir.constant"() <{value = -704643072 : i32}> : () -> i32
    %224 = "llvm.mlir.constant"() <{value = -687865856 : i32}> : () -> i32
    %225 = "llvm.mlir.constant"() <{value = -671088640 : i32}> : () -> i32
    %226 = "llvm.mlir.constant"() <{value = -654311424 : i32}> : () -> i32
    %227 = "llvm.mlir.constant"() <{value = -637534208 : i32}> : () -> i32
    %228 = "llvm.mlir.constant"() <{value = -620756992 : i32}> : () -> i32
    %229 = "llvm.mlir.constant"() <{value = -603979776 : i32}> : () -> i32
    %230 = "llvm.mlir.constant"() <{value = -587202560 : i32}> : () -> i32
    %231 = "llvm.mlir.constant"() <{value = -570425344 : i32}> : () -> i32
    %232 = "llvm.mlir.constant"() <{value = -553648128 : i32}> : () -> i32
    %233 = "llvm.mlir.constant"() <{value = -536870912 : i32}> : () -> i32
    %234 = "llvm.mlir.constant"() <{value = -520093696 : i32}> : () -> i32
    %235 = "llvm.mlir.constant"() <{value = -503316480 : i32}> : () -> i32
    %236 = "llvm.mlir.constant"() <{value = -486539264 : i32}> : () -> i32
    %237 = "llvm.mlir.constant"() <{value = -469762048 : i32}> : () -> i32
    %238 = "llvm.mlir.constant"() <{value = -452984832 : i32}> : () -> i32
    %239 = "llvm.mlir.constant"() <{value = -436207616 : i32}> : () -> i32
    %240 = "llvm.mlir.constant"() <{value = -419430400 : i32}> : () -> i32
    %241 = "llvm.mlir.constant"() <{value = -402653184 : i32}> : () -> i32
    %242 = "llvm.mlir.constant"() <{value = -385875968 : i32}> : () -> i32
    %243 = "llvm.mlir.constant"() <{value = -369098752 : i32}> : () -> i32
    %244 = "llvm.mlir.constant"() <{value = -352321536 : i32}> : () -> i32
    %245 = "llvm.mlir.constant"() <{value = -335544320 : i32}> : () -> i32
    %246 = "llvm.mlir.constant"() <{value = -318767104 : i32}> : () -> i32
    %247 = "llvm.mlir.constant"() <{value = -301989888 : i32}> : () -> i32
    %248 = "llvm.mlir.constant"() <{value = -285212672 : i32}> : () -> i32
    %249 = "llvm.mlir.constant"() <{value = -268435456 : i32}> : () -> i32
    %250 = "llvm.mlir.constant"() <{value = -251658240 : i32}> : () -> i32
    %251 = "llvm.mlir.constant"() <{value = -234881024 : i32}> : () -> i32
    %252 = "llvm.mlir.constant"() <{value = -218103808 : i32}> : () -> i32
    %253 = "llvm.mlir.constant"() <{value = -201326592 : i32}> : () -> i32
    %254 = "llvm.mlir.constant"() <{value = -184549376 : i32}> : () -> i32
    %255 = "llvm.mlir.constant"() <{value = -167772160 : i32}> : () -> i32
    %256 = "llvm.mlir.constant"() <{value = -150994944 : i32}> : () -> i32
    %257 = "llvm.mlir.constant"() <{value = -134217728 : i32}> : () -> i32
    %258 = "llvm.mlir.constant"() <{value = -117440512 : i32}> : () -> i32
    %259 = "llvm.mlir.constant"() <{value = -100663296 : i32}> : () -> i32
    %260 = "llvm.mlir.constant"() <{value = -83886080 : i32}> : () -> i32
    %261 = "llvm.mlir.constant"() <{value = -67108864 : i32}> : () -> i32
    %262 = "llvm.mlir.constant"() <{value = -50331648 : i32}> : () -> i32
    %263 = "llvm.mlir.constant"() <{value = -33554432 : i32}> : () -> i32
    %264 = "llvm.mlir.constant"() <{value = -16777216 : i32}> : () -> i32
    %265 = "llvm.mlir.constant"() <{value = 31 : i32}> : () -> i32
    %266 = "llvm.mlir.constant"() <{value = 30 : i32}> : () -> i32
    %267 = "llvm.mlir.constant"() <{value = 29 : i32}> : () -> i32
    %268 = "llvm.mlir.constant"() <{value = 28 : i32}> : () -> i32
    %269 = "llvm.mlir.constant"() <{value = 16 : i32}> : () -> i32
    %270 = "llvm.mlir.constant"() <{value = 27 : i32}> : () -> i32
    %271 = "llvm.mlir.constant"() <{value = 32 : i32}> : () -> i32
    %272 = "llvm.mlir.constant"() <{value = 26 : i32}> : () -> i32
    %273 = "llvm.mlir.constant"() <{value = 64 : i32}> : () -> i32
    %274 = "llvm.mlir.constant"() <{value = 25 : i32}> : () -> i32
    %275 = "llvm.mlir.constant"() <{value = 128 : i32}> : () -> i32
    %276 = "llvm.mlir.constant"() <{value = 24 : i32}> : () -> i32
    %277 = "llvm.mlir.constant"() <{value = 256 : i32}> : () -> i32
    %278 = "llvm.mlir.constant"() <{value = 23 : i32}> : () -> i32
    %279 = "llvm.mlir.constant"() <{value = 512 : i32}> : () -> i32
    %280 = "llvm.mlir.constant"() <{value = 22 : i32}> : () -> i32
    %281 = "llvm.mlir.constant"() <{value = 1024 : i32}> : () -> i32
    %282 = "llvm.mlir.constant"() <{value = 21 : i32}> : () -> i32
    %283 = "llvm.mlir.constant"() <{value = 2048 : i32}> : () -> i32
    %284 = "llvm.mlir.constant"() <{value = 20 : i32}> : () -> i32
    %285 = "llvm.mlir.constant"() <{value = 4096 : i32}> : () -> i32
    %286 = "llvm.mlir.constant"() <{value = 19 : i32}> : () -> i32
    %287 = "llvm.mlir.constant"() <{value = 8192 : i32}> : () -> i32
    %288 = "llvm.mlir.constant"() <{value = 18 : i32}> : () -> i32
    %289 = "llvm.mlir.constant"() <{value = 16384 : i32}> : () -> i32
    %290 = "llvm.mlir.constant"() <{value = 17 : i32}> : () -> i32
    %291 = "llvm.mlir.constant"() <{value = 32768 : i32}> : () -> i32
    %292 = "llvm.mlir.constant"() <{value = 65536 : i32}> : () -> i32
    %293 = "llvm.mlir.constant"() <{value = 15 : i32}> : () -> i32
    %294 = "llvm.mlir.constant"() <{value = 131072 : i32}> : () -> i32
    %295 = "llvm.mlir.constant"() <{value = 14 : i32}> : () -> i32
    %296 = "llvm.mlir.constant"() <{value = 262144 : i32}> : () -> i32
    %297 = "llvm.mlir.constant"() <{value = 13 : i32}> : () -> i32
    %298 = "llvm.mlir.constant"() <{value = 524288 : i32}> : () -> i32
    %299 = "llvm.mlir.constant"() <{value = 12 : i32}> : () -> i32
    %300 = "llvm.mlir.constant"() <{value = 1048576 : i32}> : () -> i32
    %301 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %302 = "llvm.mlir.constant"() <{value = 2097152 : i32}> : () -> i32
    %303 = "llvm.mlir.constant"() <{value = 10 : i32}> : () -> i32
    %304 = "llvm.mlir.constant"() <{value = 4194304 : i32}> : () -> i32
    %305 = "llvm.mlir.constant"() <{value = 9 : i32}> : () -> i32
    %306 = "llvm.alloca"(%0) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %307 = "llvm.call"(%1, %2) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %308 = "llvm.icmp"(%307, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%308)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb2:  // pred: ^bb0
    %309 = "llvm.call"(%4, %5) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %310 = "llvm.icmp"(%309, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%310)[^bb3, ^bb4] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb3:  // pred: ^bb2
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb4:  // pred: ^bb2
    %311 = "llvm.call"(%6, %7) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %312 = "llvm.icmp"(%311, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%312)[^bb5, ^bb6] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb5:  // pred: ^bb4
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb6:  // pred: ^bb4
    %313 = "llvm.call"(%8, %7) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %314 = "llvm.icmp"(%313, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%314)[^bb7, ^bb8] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb7:  // pred: ^bb6
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb8:  // pred: ^bb6
    %315 = "llvm.call"(%9, %10) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %316 = "llvm.icmp"(%315, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%316)[^bb9, ^bb10] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb9:  // pred: ^bb8
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb10:  // pred: ^bb8
    %317 = "llvm.call"(%11, %10) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %318 = "llvm.icmp"(%317, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%318)[^bb11, ^bb12] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb11:  // pred: ^bb10
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb12:  // pred: ^bb10
    %319 = "llvm.call"(%12, %10) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %320 = "llvm.icmp"(%319, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%320)[^bb13, ^bb14] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb13:  // pred: ^bb12
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb14:  // pred: ^bb12
    %321 = "llvm.call"(%13, %10) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %322 = "llvm.icmp"(%321, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%322)[^bb15, ^bb16] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb15:  // pred: ^bb14
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb16:  // pred: ^bb14
    %323 = "llvm.call"(%14, %15) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %324 = "llvm.icmp"(%323, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%324)[^bb17, ^bb18] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb17:  // pred: ^bb16
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb18:  // pred: ^bb16
    %325 = "llvm.call"(%16, %15) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %326 = "llvm.icmp"(%325, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%326)[^bb19, ^bb20] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb19:  // pred: ^bb18
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb20:  // pred: ^bb18
    %327 = "llvm.call"(%17, %15) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %328 = "llvm.icmp"(%327, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%328)[^bb21, ^bb22] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb21:  // pred: ^bb20
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb22:  // pred: ^bb20
    %329 = "llvm.call"(%18, %15) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %330 = "llvm.icmp"(%329, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%330)[^bb23, ^bb24] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb23:  // pred: ^bb22
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb24:  // pred: ^bb22
    %331 = "llvm.call"(%19, %15) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %332 = "llvm.icmp"(%331, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%332)[^bb25, ^bb26] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb25:  // pred: ^bb24
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb26:  // pred: ^bb24
    %333 = "llvm.call"(%20, %15) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %334 = "llvm.icmp"(%333, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%334)[^bb27, ^bb28] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb27:  // pred: ^bb26
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb28:  // pred: ^bb26
    %335 = "llvm.call"(%21, %15) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %336 = "llvm.icmp"(%335, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%336)[^bb29, ^bb30] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb29:  // pred: ^bb28
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb30:  // pred: ^bb28
    %337 = "llvm.call"(%22, %15) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %338 = "llvm.icmp"(%337, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%338)[^bb31, ^bb32] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb31:  // pred: ^bb30
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb32:  // pred: ^bb30
    %339 = "llvm.call"(%23, %24) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %340 = "llvm.icmp"(%339, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%340)[^bb33, ^bb34] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb33:  // pred: ^bb32
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb34:  // pred: ^bb32
    %341 = "llvm.call"(%25, %24) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %342 = "llvm.icmp"(%341, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%342)[^bb35, ^bb36] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb35:  // pred: ^bb34
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb36:  // pred: ^bb34
    %343 = "llvm.call"(%26, %24) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %344 = "llvm.icmp"(%343, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%344)[^bb37, ^bb38] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb37:  // pred: ^bb36
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb38:  // pred: ^bb36
    %345 = "llvm.call"(%27, %24) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %346 = "llvm.icmp"(%345, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%346)[^bb39, ^bb40] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb39:  // pred: ^bb38
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb40:  // pred: ^bb38
    %347 = "llvm.call"(%28, %24) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %348 = "llvm.icmp"(%347, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%348)[^bb41, ^bb42] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb41:  // pred: ^bb40
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb42:  // pred: ^bb40
    %349 = "llvm.call"(%29, %24) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %350 = "llvm.icmp"(%349, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%350)[^bb43, ^bb44] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb43:  // pred: ^bb42
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb44:  // pred: ^bb42
    %351 = "llvm.call"(%30, %24) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %352 = "llvm.icmp"(%351, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%352)[^bb45, ^bb46] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb45:  // pred: ^bb44
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb46:  // pred: ^bb44
    %353 = "llvm.call"(%31, %24) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %354 = "llvm.icmp"(%353, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%354)[^bb47, ^bb48] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb47:  // pred: ^bb46
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb48:  // pred: ^bb46
    %355 = "llvm.call"(%32, %24) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %356 = "llvm.icmp"(%355, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%356)[^bb49, ^bb50] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb49:  // pred: ^bb48
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb50:  // pred: ^bb48
    %357 = "llvm.call"(%33, %24) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %358 = "llvm.icmp"(%357, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%358)[^bb51, ^bb52] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb51:  // pred: ^bb50
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb52:  // pred: ^bb50
    %359 = "llvm.call"(%34, %24) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %360 = "llvm.icmp"(%359, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%360)[^bb53, ^bb54] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb53:  // pred: ^bb52
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb54:  // pred: ^bb52
    %361 = "llvm.call"(%35, %24) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %362 = "llvm.icmp"(%361, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%362)[^bb55, ^bb56] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb55:  // pred: ^bb54
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb56:  // pred: ^bb54
    %363 = "llvm.call"(%36, %24) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %364 = "llvm.icmp"(%363, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%364)[^bb57, ^bb58] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb57:  // pred: ^bb56
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb58:  // pred: ^bb56
    %365 = "llvm.call"(%37, %24) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %366 = "llvm.icmp"(%365, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%366)[^bb59, ^bb60] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb59:  // pred: ^bb58
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb60:  // pred: ^bb58
    %367 = "llvm.call"(%38, %24) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %368 = "llvm.icmp"(%367, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%368)[^bb61, ^bb62] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb61:  // pred: ^bb60
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb62:  // pred: ^bb60
    %369 = "llvm.call"(%39, %24) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %370 = "llvm.icmp"(%369, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%370)[^bb63, ^bb64] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb63:  // pred: ^bb62
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb64:  // pred: ^bb62
    %371 = "llvm.call"(%40, %41) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %372 = "llvm.icmp"(%371, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%372)[^bb65, ^bb66] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb65:  // pred: ^bb64
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb66:  // pred: ^bb64
    %373 = "llvm.call"(%42, %41) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %374 = "llvm.icmp"(%373, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%374)[^bb67, ^bb68] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb67:  // pred: ^bb66
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb68:  // pred: ^bb66
    %375 = "llvm.call"(%43, %41) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %376 = "llvm.icmp"(%375, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%376)[^bb69, ^bb70] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb69:  // pred: ^bb68
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb70:  // pred: ^bb68
    %377 = "llvm.call"(%44, %41) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %378 = "llvm.icmp"(%377, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%378)[^bb71, ^bb72] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb71:  // pred: ^bb70
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb72:  // pred: ^bb70
    %379 = "llvm.call"(%45, %41) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %380 = "llvm.icmp"(%379, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%380)[^bb73, ^bb74] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb73:  // pred: ^bb72
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb74:  // pred: ^bb72
    %381 = "llvm.call"(%46, %41) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %382 = "llvm.icmp"(%381, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%382)[^bb75, ^bb76] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb75:  // pred: ^bb74
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb76:  // pred: ^bb74
    %383 = "llvm.call"(%47, %41) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %384 = "llvm.icmp"(%383, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%384)[^bb77, ^bb78] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb77:  // pred: ^bb76
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb78:  // pred: ^bb76
    %385 = "llvm.call"(%48, %41) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %386 = "llvm.icmp"(%385, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%386)[^bb79, ^bb80] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb79:  // pred: ^bb78
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb80:  // pred: ^bb78
    %387 = "llvm.call"(%49, %41) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %388 = "llvm.icmp"(%387, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%388)[^bb81, ^bb82] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb81:  // pred: ^bb80
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb82:  // pred: ^bb80
    %389 = "llvm.call"(%50, %41) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %390 = "llvm.icmp"(%389, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%390)[^bb83, ^bb84] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb83:  // pred: ^bb82
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb84:  // pred: ^bb82
    %391 = "llvm.call"(%51, %41) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %392 = "llvm.icmp"(%391, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%392)[^bb85, ^bb86] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb85:  // pred: ^bb84
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb86:  // pred: ^bb84
    %393 = "llvm.call"(%52, %41) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %394 = "llvm.icmp"(%393, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%394)[^bb87, ^bb88] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb87:  // pred: ^bb86
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb88:  // pred: ^bb86
    %395 = "llvm.call"(%53, %41) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %396 = "llvm.icmp"(%395, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%396)[^bb89, ^bb90] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb89:  // pred: ^bb88
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb90:  // pred: ^bb88
    %397 = "llvm.call"(%54, %41) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %398 = "llvm.icmp"(%397, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%398)[^bb91, ^bb92] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb91:  // pred: ^bb90
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb92:  // pred: ^bb90
    %399 = "llvm.call"(%55, %41) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %400 = "llvm.icmp"(%399, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%400)[^bb93, ^bb94] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb93:  // pred: ^bb92
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb94:  // pred: ^bb92
    %401 = "llvm.call"(%56, %41) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %402 = "llvm.icmp"(%401, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%402)[^bb95, ^bb96] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb95:  // pred: ^bb94
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb96:  // pred: ^bb94
    %403 = "llvm.call"(%57, %41) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %404 = "llvm.icmp"(%403, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%404)[^bb97, ^bb98] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb97:  // pred: ^bb96
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb98:  // pred: ^bb96
    %405 = "llvm.call"(%58, %41) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %406 = "llvm.icmp"(%405, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%406)[^bb99, ^bb100] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb99:  // pred: ^bb98
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb100:  // pred: ^bb98
    %407 = "llvm.call"(%59, %41) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %408 = "llvm.icmp"(%407, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%408)[^bb101, ^bb102] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb101:  // pred: ^bb100
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb102:  // pred: ^bb100
    %409 = "llvm.call"(%60, %41) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %410 = "llvm.icmp"(%409, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%410)[^bb103, ^bb104] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb103:  // pred: ^bb102
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb104:  // pred: ^bb102
    %411 = "llvm.call"(%61, %41) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %412 = "llvm.icmp"(%411, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%412)[^bb105, ^bb106] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb105:  // pred: ^bb104
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb106:  // pred: ^bb104
    %413 = "llvm.call"(%62, %41) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %414 = "llvm.icmp"(%413, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%414)[^bb107, ^bb108] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb107:  // pred: ^bb106
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb108:  // pred: ^bb106
    %415 = "llvm.call"(%63, %41) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %416 = "llvm.icmp"(%415, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%416)[^bb109, ^bb110] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb109:  // pred: ^bb108
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb110:  // pred: ^bb108
    %417 = "llvm.call"(%64, %41) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %418 = "llvm.icmp"(%417, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%418)[^bb111, ^bb112] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb111:  // pred: ^bb110
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb112:  // pred: ^bb110
    %419 = "llvm.call"(%65, %41) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %420 = "llvm.icmp"(%419, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%420)[^bb113, ^bb114] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb113:  // pred: ^bb112
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb114:  // pred: ^bb112
    %421 = "llvm.call"(%66, %41) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %422 = "llvm.icmp"(%421, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%422)[^bb115, ^bb116] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb115:  // pred: ^bb114
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb116:  // pred: ^bb114
    %423 = "llvm.call"(%67, %41) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %424 = "llvm.icmp"(%423, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%424)[^bb117, ^bb118] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb117:  // pred: ^bb116
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb118:  // pred: ^bb116
    %425 = "llvm.call"(%68, %41) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %426 = "llvm.icmp"(%425, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%426)[^bb119, ^bb120] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb119:  // pred: ^bb118
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb120:  // pred: ^bb118
    %427 = "llvm.call"(%69, %41) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %428 = "llvm.icmp"(%427, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%428)[^bb121, ^bb122] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb121:  // pred: ^bb120
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb122:  // pred: ^bb120
    %429 = "llvm.call"(%70, %41) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %430 = "llvm.icmp"(%429, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%430)[^bb123, ^bb124] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb123:  // pred: ^bb122
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb124:  // pred: ^bb122
    %431 = "llvm.call"(%71, %41) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %432 = "llvm.icmp"(%431, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%432)[^bb125, ^bb126] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb125:  // pred: ^bb124
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb126:  // pred: ^bb124
    %433 = "llvm.call"(%72, %41) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %434 = "llvm.icmp"(%433, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%434)[^bb127, ^bb128] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb127:  // pred: ^bb126
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb128:  // pred: ^bb126
    %435 = "llvm.call"(%73, %0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %436 = "llvm.icmp"(%435, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%436)[^bb129, ^bb130] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb129:  // pred: ^bb128
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb130:  // pred: ^bb128
    %437 = "llvm.call"(%74, %0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %438 = "llvm.icmp"(%437, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%438)[^bb131, ^bb132] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb131:  // pred: ^bb130
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb132:  // pred: ^bb130
    %439 = "llvm.call"(%75, %0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %440 = "llvm.icmp"(%439, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%440)[^bb133, ^bb134] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb133:  // pred: ^bb132
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb134:  // pred: ^bb132
    %441 = "llvm.call"(%76, %0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %442 = "llvm.icmp"(%441, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%442)[^bb135, ^bb136] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb135:  // pred: ^bb134
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb136:  // pred: ^bb134
    %443 = "llvm.call"(%77, %0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %444 = "llvm.icmp"(%443, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%444)[^bb137, ^bb138] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb137:  // pred: ^bb136
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb138:  // pred: ^bb136
    %445 = "llvm.call"(%78, %0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %446 = "llvm.icmp"(%445, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%446)[^bb139, ^bb140] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb139:  // pred: ^bb138
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb140:  // pred: ^bb138
    %447 = "llvm.call"(%79, %0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %448 = "llvm.icmp"(%447, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%448)[^bb141, ^bb142] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb141:  // pred: ^bb140
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb142:  // pred: ^bb140
    %449 = "llvm.call"(%80, %0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %450 = "llvm.icmp"(%449, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%450)[^bb143, ^bb144] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb143:  // pred: ^bb142
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb144:  // pred: ^bb142
    %451 = "llvm.call"(%81, %0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %452 = "llvm.icmp"(%451, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%452)[^bb145, ^bb146] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb145:  // pred: ^bb144
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb146:  // pred: ^bb144
    %453 = "llvm.call"(%82, %0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %454 = "llvm.icmp"(%453, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%454)[^bb147, ^bb148] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb147:  // pred: ^bb146
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb148:  // pred: ^bb146
    %455 = "llvm.call"(%83, %0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %456 = "llvm.icmp"(%455, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%456)[^bb149, ^bb150] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb149:  // pred: ^bb148
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb150:  // pred: ^bb148
    %457 = "llvm.call"(%84, %0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %458 = "llvm.icmp"(%457, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%458)[^bb151, ^bb152] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb151:  // pred: ^bb150
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb152:  // pred: ^bb150
    %459 = "llvm.call"(%85, %0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %460 = "llvm.icmp"(%459, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%460)[^bb153, ^bb154] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb153:  // pred: ^bb152
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb154:  // pred: ^bb152
    %461 = "llvm.call"(%86, %0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %462 = "llvm.icmp"(%461, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%462)[^bb155, ^bb156] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb155:  // pred: ^bb154
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb156:  // pred: ^bb154
    %463 = "llvm.call"(%87, %0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %464 = "llvm.icmp"(%463, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%464)[^bb157, ^bb158] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb157:  // pred: ^bb156
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb158:  // pred: ^bb156
    %465 = "llvm.call"(%88, %0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %466 = "llvm.icmp"(%465, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%466)[^bb159, ^bb160] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb159:  // pred: ^bb158
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb160:  // pred: ^bb158
    %467 = "llvm.call"(%89, %0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %468 = "llvm.icmp"(%467, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%468)[^bb161, ^bb162] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb161:  // pred: ^bb160
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb162:  // pred: ^bb160
    %469 = "llvm.call"(%90, %0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %470 = "llvm.icmp"(%469, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%470)[^bb163, ^bb164] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb163:  // pred: ^bb162
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb164:  // pred: ^bb162
    %471 = "llvm.call"(%91, %0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %472 = "llvm.icmp"(%471, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%472)[^bb165, ^bb166] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb165:  // pred: ^bb164
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb166:  // pred: ^bb164
    %473 = "llvm.call"(%92, %0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %474 = "llvm.icmp"(%473, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%474)[^bb167, ^bb168] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb167:  // pred: ^bb166
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb168:  // pred: ^bb166
    %475 = "llvm.call"(%93, %0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %476 = "llvm.icmp"(%475, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%476)[^bb169, ^bb170] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb169:  // pred: ^bb168
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb170:  // pred: ^bb168
    %477 = "llvm.call"(%94, %0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %478 = "llvm.icmp"(%477, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%478)[^bb171, ^bb172] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb171:  // pred: ^bb170
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb172:  // pred: ^bb170
    %479 = "llvm.call"(%95, %0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %480 = "llvm.icmp"(%479, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%480)[^bb173, ^bb174] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb173:  // pred: ^bb172
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb174:  // pred: ^bb172
    %481 = "llvm.call"(%96, %0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %482 = "llvm.icmp"(%481, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%482)[^bb175, ^bb176] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb175:  // pred: ^bb174
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb176:  // pred: ^bb174
    %483 = "llvm.call"(%97, %0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %484 = "llvm.icmp"(%483, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%484)[^bb177, ^bb178] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb177:  // pred: ^bb176
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb178:  // pred: ^bb176
    %485 = "llvm.call"(%98, %0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %486 = "llvm.icmp"(%485, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%486)[^bb179, ^bb180] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb179:  // pred: ^bb178
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb180:  // pred: ^bb178
    %487 = "llvm.call"(%99, %0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %488 = "llvm.icmp"(%487, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%488)[^bb181, ^bb182] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb181:  // pred: ^bb180
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb182:  // pred: ^bb180
    %489 = "llvm.call"(%100, %0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %490 = "llvm.icmp"(%489, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%490)[^bb183, ^bb184] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb183:  // pred: ^bb182
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb184:  // pred: ^bb182
    %491 = "llvm.call"(%101, %0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %492 = "llvm.icmp"(%491, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%492)[^bb185, ^bb186] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb185:  // pred: ^bb184
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb186:  // pred: ^bb184
    %493 = "llvm.call"(%102, %0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %494 = "llvm.icmp"(%493, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%494)[^bb187, ^bb188] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb187:  // pred: ^bb186
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb188:  // pred: ^bb186
    %495 = "llvm.call"(%103, %0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %496 = "llvm.icmp"(%495, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%496)[^bb189, ^bb190] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb189:  // pred: ^bb188
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb190:  // pred: ^bb188
    %497 = "llvm.call"(%104, %0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %498 = "llvm.icmp"(%497, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%498)[^bb191, ^bb192] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb191:  // pred: ^bb190
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb192:  // pred: ^bb190
    %499 = "llvm.call"(%105, %0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %500 = "llvm.icmp"(%499, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%500)[^bb193, ^bb194] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb193:  // pred: ^bb192
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb194:  // pred: ^bb192
    %501 = "llvm.call"(%106, %0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %502 = "llvm.icmp"(%501, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%502)[^bb195, ^bb196] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb195:  // pred: ^bb194
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb196:  // pred: ^bb194
    %503 = "llvm.call"(%107, %0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %504 = "llvm.icmp"(%503, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%504)[^bb197, ^bb198] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb197:  // pred: ^bb196
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb198:  // pred: ^bb196
    %505 = "llvm.call"(%108, %0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %506 = "llvm.icmp"(%505, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%506)[^bb199, ^bb200] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb199:  // pred: ^bb198
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb200:  // pred: ^bb198
    %507 = "llvm.call"(%109, %0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %508 = "llvm.icmp"(%507, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%508)[^bb201, ^bb202] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb201:  // pred: ^bb200
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb202:  // pred: ^bb200
    %509 = "llvm.call"(%110, %0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %510 = "llvm.icmp"(%509, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%510)[^bb203, ^bb204] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb203:  // pred: ^bb202
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb204:  // pred: ^bb202
    %511 = "llvm.call"(%111, %0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %512 = "llvm.icmp"(%511, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%512)[^bb205, ^bb206] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb205:  // pred: ^bb204
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb206:  // pred: ^bb204
    %513 = "llvm.call"(%112, %0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %514 = "llvm.icmp"(%513, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%514)[^bb207, ^bb208] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb207:  // pred: ^bb206
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb208:  // pred: ^bb206
    %515 = "llvm.call"(%113, %0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %516 = "llvm.icmp"(%515, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%516)[^bb209, ^bb210] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb209:  // pred: ^bb208
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb210:  // pred: ^bb208
    %517 = "llvm.call"(%114, %0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %518 = "llvm.icmp"(%517, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%518)[^bb211, ^bb212] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb211:  // pred: ^bb210
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb212:  // pred: ^bb210
    %519 = "llvm.call"(%115, %0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %520 = "llvm.icmp"(%519, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%520)[^bb213, ^bb214] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb213:  // pred: ^bb212
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb214:  // pred: ^bb212
    %521 = "llvm.call"(%116, %0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %522 = "llvm.icmp"(%521, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%522)[^bb215, ^bb216] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb215:  // pred: ^bb214
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb216:  // pred: ^bb214
    %523 = "llvm.call"(%117, %0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %524 = "llvm.icmp"(%523, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%524)[^bb217, ^bb218] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb217:  // pred: ^bb216
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb218:  // pred: ^bb216
    %525 = "llvm.call"(%118, %0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %526 = "llvm.icmp"(%525, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%526)[^bb219, ^bb220] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb219:  // pred: ^bb218
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb220:  // pred: ^bb218
    %527 = "llvm.call"(%119, %0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %528 = "llvm.icmp"(%527, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%528)[^bb221, ^bb222] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb221:  // pred: ^bb220
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb222:  // pred: ^bb220
    %529 = "llvm.call"(%120, %0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %530 = "llvm.icmp"(%529, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%530)[^bb223, ^bb224] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb223:  // pred: ^bb222
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb224:  // pred: ^bb222
    %531 = "llvm.call"(%121, %0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %532 = "llvm.icmp"(%531, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%532)[^bb225, ^bb226] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb225:  // pred: ^bb224
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb226:  // pred: ^bb224
    %533 = "llvm.call"(%122, %0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %534 = "llvm.icmp"(%533, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%534)[^bb227, ^bb228] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb227:  // pred: ^bb226
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb228:  // pred: ^bb226
    %535 = "llvm.call"(%123, %0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %536 = "llvm.icmp"(%535, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%536)[^bb229, ^bb230] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb229:  // pred: ^bb228
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb230:  // pred: ^bb228
    %537 = "llvm.call"(%124, %0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %538 = "llvm.icmp"(%537, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%538)[^bb231, ^bb232] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb231:  // pred: ^bb230
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb232:  // pred: ^bb230
    %539 = "llvm.call"(%125, %0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %540 = "llvm.icmp"(%539, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%540)[^bb233, ^bb234] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb233:  // pred: ^bb232
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb234:  // pred: ^bb232
    %541 = "llvm.call"(%126, %0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %542 = "llvm.icmp"(%541, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%542)[^bb235, ^bb236] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb235:  // pred: ^bb234
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb236:  // pred: ^bb234
    %543 = "llvm.call"(%127, %0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %544 = "llvm.icmp"(%543, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%544)[^bb237, ^bb238] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb237:  // pred: ^bb236
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb238:  // pred: ^bb236
    %545 = "llvm.call"(%128, %0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %546 = "llvm.icmp"(%545, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%546)[^bb239, ^bb240] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb239:  // pred: ^bb238
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb240:  // pred: ^bb238
    %547 = "llvm.call"(%129, %0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %548 = "llvm.icmp"(%547, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%548)[^bb241, ^bb242] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb241:  // pred: ^bb240
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb242:  // pred: ^bb240
    %549 = "llvm.call"(%130, %0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %550 = "llvm.icmp"(%549, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%550)[^bb243, ^bb244] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb243:  // pred: ^bb242
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb244:  // pred: ^bb242
    %551 = "llvm.call"(%131, %0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %552 = "llvm.icmp"(%551, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%552)[^bb245, ^bb246] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb245:  // pred: ^bb244
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb246:  // pred: ^bb244
    %553 = "llvm.call"(%132, %0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %554 = "llvm.icmp"(%553, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%554)[^bb247, ^bb248] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb247:  // pred: ^bb246
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb248:  // pred: ^bb246
    %555 = "llvm.call"(%133, %0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %556 = "llvm.icmp"(%555, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%556)[^bb249, ^bb250] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb249:  // pred: ^bb248
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb250:  // pred: ^bb248
    %557 = "llvm.call"(%134, %0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %558 = "llvm.icmp"(%557, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%558)[^bb251, ^bb252] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb251:  // pred: ^bb250
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb252:  // pred: ^bb250
    %559 = "llvm.call"(%135, %0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %560 = "llvm.icmp"(%559, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%560)[^bb253, ^bb254] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb253:  // pred: ^bb252
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb254:  // pred: ^bb252
    %561 = "llvm.call"(%136, %0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %562 = "llvm.icmp"(%561, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%562)[^bb255, ^bb256] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb255:  // pred: ^bb254
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb256:  // pred: ^bb254
    %563 = "llvm.call"(%137, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %564 = "llvm.icmp"(%563, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%564)[^bb257, ^bb258] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb257:  // pred: ^bb256
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb258:  // pred: ^bb256
    %565 = "llvm.call"(%138, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %566 = "llvm.icmp"(%565, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%566)[^bb259, ^bb260] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb259:  // pred: ^bb258
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb260:  // pred: ^bb258
    %567 = "llvm.call"(%139, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %568 = "llvm.icmp"(%567, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%568)[^bb261, ^bb262] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb261:  // pred: ^bb260
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb262:  // pred: ^bb260
    %569 = "llvm.call"(%140, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %570 = "llvm.icmp"(%569, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%570)[^bb263, ^bb264] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb263:  // pred: ^bb262
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb264:  // pred: ^bb262
    %571 = "llvm.call"(%141, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %572 = "llvm.icmp"(%571, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%572)[^bb265, ^bb266] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb265:  // pred: ^bb264
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb266:  // pred: ^bb264
    %573 = "llvm.call"(%142, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %574 = "llvm.icmp"(%573, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%574)[^bb267, ^bb268] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb267:  // pred: ^bb266
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb268:  // pred: ^bb266
    %575 = "llvm.call"(%143, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %576 = "llvm.icmp"(%575, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%576)[^bb269, ^bb270] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb269:  // pred: ^bb268
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb270:  // pred: ^bb268
    %577 = "llvm.call"(%144, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %578 = "llvm.icmp"(%577, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%578)[^bb271, ^bb272] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb271:  // pred: ^bb270
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb272:  // pred: ^bb270
    %579 = "llvm.call"(%145, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %580 = "llvm.icmp"(%579, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%580)[^bb273, ^bb274] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb273:  // pred: ^bb272
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb274:  // pred: ^bb272
    %581 = "llvm.call"(%146, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %582 = "llvm.icmp"(%581, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%582)[^bb275, ^bb276] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb275:  // pred: ^bb274
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb276:  // pred: ^bb274
    %583 = "llvm.call"(%147, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %584 = "llvm.icmp"(%583, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%584)[^bb277, ^bb278] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb277:  // pred: ^bb276
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb278:  // pred: ^bb276
    %585 = "llvm.call"(%148, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %586 = "llvm.icmp"(%585, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%586)[^bb279, ^bb280] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb279:  // pred: ^bb278
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb280:  // pred: ^bb278
    %587 = "llvm.call"(%149, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %588 = "llvm.icmp"(%587, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%588)[^bb281, ^bb282] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb281:  // pred: ^bb280
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb282:  // pred: ^bb280
    %589 = "llvm.call"(%150, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %590 = "llvm.icmp"(%589, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%590)[^bb283, ^bb284] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb283:  // pred: ^bb282
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb284:  // pred: ^bb282
    %591 = "llvm.call"(%151, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %592 = "llvm.icmp"(%591, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%592)[^bb285, ^bb286] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb285:  // pred: ^bb284
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb286:  // pred: ^bb284
    %593 = "llvm.call"(%152, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %594 = "llvm.icmp"(%593, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%594)[^bb287, ^bb288] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb287:  // pred: ^bb286
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb288:  // pred: ^bb286
    %595 = "llvm.call"(%153, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %596 = "llvm.icmp"(%595, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%596)[^bb289, ^bb290] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb289:  // pred: ^bb288
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb290:  // pred: ^bb288
    %597 = "llvm.call"(%154, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %598 = "llvm.icmp"(%597, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%598)[^bb291, ^bb292] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb291:  // pred: ^bb290
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb292:  // pred: ^bb290
    %599 = "llvm.call"(%155, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %600 = "llvm.icmp"(%599, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%600)[^bb293, ^bb294] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb293:  // pred: ^bb292
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb294:  // pred: ^bb292
    %601 = "llvm.call"(%156, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %602 = "llvm.icmp"(%601, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%602)[^bb295, ^bb296] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb295:  // pred: ^bb294
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb296:  // pred: ^bb294
    %603 = "llvm.call"(%157, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %604 = "llvm.icmp"(%603, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%604)[^bb297, ^bb298] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb297:  // pred: ^bb296
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb298:  // pred: ^bb296
    %605 = "llvm.call"(%158, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %606 = "llvm.icmp"(%605, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%606)[^bb299, ^bb300] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb299:  // pred: ^bb298
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb300:  // pred: ^bb298
    %607 = "llvm.call"(%159, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %608 = "llvm.icmp"(%607, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%608)[^bb301, ^bb302] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb301:  // pred: ^bb300
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb302:  // pred: ^bb300
    %609 = "llvm.call"(%160, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %610 = "llvm.icmp"(%609, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%610)[^bb303, ^bb304] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb303:  // pred: ^bb302
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb304:  // pred: ^bb302
    %611 = "llvm.call"(%161, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %612 = "llvm.icmp"(%611, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%612)[^bb305, ^bb306] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb305:  // pred: ^bb304
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb306:  // pred: ^bb304
    %613 = "llvm.call"(%162, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %614 = "llvm.icmp"(%613, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%614)[^bb307, ^bb308] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb307:  // pred: ^bb306
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb308:  // pred: ^bb306
    %615 = "llvm.call"(%163, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %616 = "llvm.icmp"(%615, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%616)[^bb309, ^bb310] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb309:  // pred: ^bb308
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb310:  // pred: ^bb308
    %617 = "llvm.call"(%164, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %618 = "llvm.icmp"(%617, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%618)[^bb311, ^bb312] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb311:  // pred: ^bb310
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb312:  // pred: ^bb310
    %619 = "llvm.call"(%165, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %620 = "llvm.icmp"(%619, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%620)[^bb313, ^bb314] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb313:  // pred: ^bb312
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb314:  // pred: ^bb312
    %621 = "llvm.call"(%166, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %622 = "llvm.icmp"(%621, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%622)[^bb315, ^bb316] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb315:  // pred: ^bb314
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb316:  // pred: ^bb314
    %623 = "llvm.call"(%167, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %624 = "llvm.icmp"(%623, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%624)[^bb317, ^bb318] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb317:  // pred: ^bb316
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb318:  // pred: ^bb316
    %625 = "llvm.call"(%168, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %626 = "llvm.icmp"(%625, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%626)[^bb319, ^bb320] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb319:  // pred: ^bb318
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb320:  // pred: ^bb318
    %627 = "llvm.call"(%169, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %628 = "llvm.icmp"(%627, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%628)[^bb321, ^bb322] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb321:  // pred: ^bb320
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb322:  // pred: ^bb320
    %629 = "llvm.call"(%170, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %630 = "llvm.icmp"(%629, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%630)[^bb323, ^bb324] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb323:  // pred: ^bb322
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb324:  // pred: ^bb322
    %631 = "llvm.call"(%171, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %632 = "llvm.icmp"(%631, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%632)[^bb325, ^bb326] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb325:  // pred: ^bb324
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb326:  // pred: ^bb324
    %633 = "llvm.call"(%172, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %634 = "llvm.icmp"(%633, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%634)[^bb327, ^bb328] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb327:  // pred: ^bb326
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb328:  // pred: ^bb326
    %635 = "llvm.call"(%173, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %636 = "llvm.icmp"(%635, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%636)[^bb329, ^bb330] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb329:  // pred: ^bb328
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb330:  // pred: ^bb328
    %637 = "llvm.call"(%174, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %638 = "llvm.icmp"(%637, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%638)[^bb331, ^bb332] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb331:  // pred: ^bb330
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb332:  // pred: ^bb330
    %639 = "llvm.call"(%175, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %640 = "llvm.icmp"(%639, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%640)[^bb333, ^bb334] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb333:  // pred: ^bb332
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb334:  // pred: ^bb332
    %641 = "llvm.call"(%176, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %642 = "llvm.icmp"(%641, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%642)[^bb335, ^bb336] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb335:  // pred: ^bb334
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb336:  // pred: ^bb334
    %643 = "llvm.call"(%177, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %644 = "llvm.icmp"(%643, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%644)[^bb337, ^bb338] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb337:  // pred: ^bb336
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb338:  // pred: ^bb336
    %645 = "llvm.call"(%178, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %646 = "llvm.icmp"(%645, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%646)[^bb339, ^bb340] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb339:  // pred: ^bb338
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb340:  // pred: ^bb338
    %647 = "llvm.call"(%179, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %648 = "llvm.icmp"(%647, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%648)[^bb341, ^bb342] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb341:  // pred: ^bb340
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb342:  // pred: ^bb340
    %649 = "llvm.call"(%180, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %650 = "llvm.icmp"(%649, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%650)[^bb343, ^bb344] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb343:  // pred: ^bb342
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb344:  // pred: ^bb342
    %651 = "llvm.call"(%181, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %652 = "llvm.icmp"(%651, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%652)[^bb345, ^bb346] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb345:  // pred: ^bb344
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb346:  // pred: ^bb344
    %653 = "llvm.call"(%182, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %654 = "llvm.icmp"(%653, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%654)[^bb347, ^bb348] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb347:  // pred: ^bb346
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb348:  // pred: ^bb346
    %655 = "llvm.call"(%183, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %656 = "llvm.icmp"(%655, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%656)[^bb349, ^bb350] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb349:  // pred: ^bb348
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb350:  // pred: ^bb348
    %657 = "llvm.call"(%184, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %658 = "llvm.icmp"(%657, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%658)[^bb351, ^bb352] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb351:  // pred: ^bb350
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb352:  // pred: ^bb350
    %659 = "llvm.call"(%185, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %660 = "llvm.icmp"(%659, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%660)[^bb353, ^bb354] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb353:  // pred: ^bb352
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb354:  // pred: ^bb352
    %661 = "llvm.call"(%186, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %662 = "llvm.icmp"(%661, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%662)[^bb355, ^bb356] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb355:  // pred: ^bb354
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb356:  // pred: ^bb354
    %663 = "llvm.call"(%187, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %664 = "llvm.icmp"(%663, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%664)[^bb357, ^bb358] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb357:  // pred: ^bb356
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb358:  // pred: ^bb356
    %665 = "llvm.call"(%188, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %666 = "llvm.icmp"(%665, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%666)[^bb359, ^bb360] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb359:  // pred: ^bb358
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb360:  // pred: ^bb358
    %667 = "llvm.call"(%189, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %668 = "llvm.icmp"(%667, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%668)[^bb361, ^bb362] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb361:  // pred: ^bb360
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb362:  // pred: ^bb360
    %669 = "llvm.call"(%190, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %670 = "llvm.icmp"(%669, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%670)[^bb363, ^bb364] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb363:  // pred: ^bb362
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb364:  // pred: ^bb362
    %671 = "llvm.call"(%191, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %672 = "llvm.icmp"(%671, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%672)[^bb365, ^bb366] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb365:  // pred: ^bb364
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb366:  // pred: ^bb364
    %673 = "llvm.call"(%192, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %674 = "llvm.icmp"(%673, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%674)[^bb367, ^bb368] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb367:  // pred: ^bb366
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb368:  // pred: ^bb366
    %675 = "llvm.call"(%193, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %676 = "llvm.icmp"(%675, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%676)[^bb369, ^bb370] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb369:  // pred: ^bb368
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb370:  // pred: ^bb368
    %677 = "llvm.call"(%194, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %678 = "llvm.icmp"(%677, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%678)[^bb371, ^bb372] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb371:  // pred: ^bb370
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb372:  // pred: ^bb370
    %679 = "llvm.call"(%195, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %680 = "llvm.icmp"(%679, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%680)[^bb373, ^bb374] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb373:  // pred: ^bb372
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb374:  // pred: ^bb372
    %681 = "llvm.call"(%196, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %682 = "llvm.icmp"(%681, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%682)[^bb375, ^bb376] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb375:  // pred: ^bb374
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb376:  // pred: ^bb374
    %683 = "llvm.call"(%197, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %684 = "llvm.icmp"(%683, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%684)[^bb377, ^bb378] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb377:  // pred: ^bb376
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb378:  // pred: ^bb376
    %685 = "llvm.call"(%198, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %686 = "llvm.icmp"(%685, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%686)[^bb379, ^bb380] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb379:  // pred: ^bb378
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb380:  // pred: ^bb378
    %687 = "llvm.call"(%199, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %688 = "llvm.icmp"(%687, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%688)[^bb381, ^bb382] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb381:  // pred: ^bb380
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb382:  // pred: ^bb380
    %689 = "llvm.call"(%200, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %690 = "llvm.icmp"(%689, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%690)[^bb383, ^bb384] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb383:  // pred: ^bb382
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb384:  // pred: ^bb382
    %691 = "llvm.call"(%201, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %692 = "llvm.icmp"(%691, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%692)[^bb385, ^bb386] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb385:  // pred: ^bb384
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb386:  // pred: ^bb384
    %693 = "llvm.call"(%202, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %694 = "llvm.icmp"(%693, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%694)[^bb387, ^bb388] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb387:  // pred: ^bb386
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb388:  // pred: ^bb386
    %695 = "llvm.call"(%203, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %696 = "llvm.icmp"(%695, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%696)[^bb389, ^bb390] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb389:  // pred: ^bb388
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb390:  // pred: ^bb388
    %697 = "llvm.call"(%204, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %698 = "llvm.icmp"(%697, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%698)[^bb391, ^bb392] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb391:  // pred: ^bb390
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb392:  // pred: ^bb390
    %699 = "llvm.call"(%205, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %700 = "llvm.icmp"(%699, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%700)[^bb393, ^bb394] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb393:  // pred: ^bb392
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb394:  // pred: ^bb392
    %701 = "llvm.call"(%206, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %702 = "llvm.icmp"(%701, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%702)[^bb395, ^bb396] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb395:  // pred: ^bb394
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb396:  // pred: ^bb394
    %703 = "llvm.call"(%207, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %704 = "llvm.icmp"(%703, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%704)[^bb397, ^bb398] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb397:  // pred: ^bb396
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb398:  // pred: ^bb396
    %705 = "llvm.call"(%208, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %706 = "llvm.icmp"(%705, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%706)[^bb399, ^bb400] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb399:  // pred: ^bb398
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb400:  // pred: ^bb398
    %707 = "llvm.call"(%209, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %708 = "llvm.icmp"(%707, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%708)[^bb401, ^bb402] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb401:  // pred: ^bb400
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb402:  // pred: ^bb400
    %709 = "llvm.call"(%210, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %710 = "llvm.icmp"(%709, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%710)[^bb403, ^bb404] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb403:  // pred: ^bb402
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb404:  // pred: ^bb402
    %711 = "llvm.call"(%211, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %712 = "llvm.icmp"(%711, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%712)[^bb405, ^bb406] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb405:  // pred: ^bb404
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb406:  // pred: ^bb404
    %713 = "llvm.call"(%212, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %714 = "llvm.icmp"(%713, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%714)[^bb407, ^bb408] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb407:  // pred: ^bb406
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb408:  // pred: ^bb406
    %715 = "llvm.call"(%213, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %716 = "llvm.icmp"(%715, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%716)[^bb409, ^bb410] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb409:  // pred: ^bb408
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb410:  // pred: ^bb408
    %717 = "llvm.call"(%214, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %718 = "llvm.icmp"(%717, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%718)[^bb411, ^bb412] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb411:  // pred: ^bb410
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb412:  // pred: ^bb410
    %719 = "llvm.call"(%215, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %720 = "llvm.icmp"(%719, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%720)[^bb413, ^bb414] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb413:  // pred: ^bb412
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb414:  // pred: ^bb412
    %721 = "llvm.call"(%216, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %722 = "llvm.icmp"(%721, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%722)[^bb415, ^bb416] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb415:  // pred: ^bb414
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb416:  // pred: ^bb414
    %723 = "llvm.call"(%217, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %724 = "llvm.icmp"(%723, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%724)[^bb417, ^bb418] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb417:  // pred: ^bb416
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb418:  // pred: ^bb416
    %725 = "llvm.call"(%218, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %726 = "llvm.icmp"(%725, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%726)[^bb419, ^bb420] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb419:  // pred: ^bb418
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb420:  // pred: ^bb418
    %727 = "llvm.call"(%219, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %728 = "llvm.icmp"(%727, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%728)[^bb421, ^bb422] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb421:  // pred: ^bb420
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb422:  // pred: ^bb420
    %729 = "llvm.call"(%220, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %730 = "llvm.icmp"(%729, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%730)[^bb423, ^bb424] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb423:  // pred: ^bb422
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb424:  // pred: ^bb422
    %731 = "llvm.call"(%221, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %732 = "llvm.icmp"(%731, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%732)[^bb425, ^bb426] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb425:  // pred: ^bb424
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb426:  // pred: ^bb424
    %733 = "llvm.call"(%222, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %734 = "llvm.icmp"(%733, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%734)[^bb427, ^bb428] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb427:  // pred: ^bb426
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb428:  // pred: ^bb426
    %735 = "llvm.call"(%223, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %736 = "llvm.icmp"(%735, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%736)[^bb429, ^bb430] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb429:  // pred: ^bb428
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb430:  // pred: ^bb428
    %737 = "llvm.call"(%224, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %738 = "llvm.icmp"(%737, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%738)[^bb431, ^bb432] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb431:  // pred: ^bb430
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb432:  // pred: ^bb430
    %739 = "llvm.call"(%225, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %740 = "llvm.icmp"(%739, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%740)[^bb433, ^bb434] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb433:  // pred: ^bb432
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb434:  // pred: ^bb432
    %741 = "llvm.call"(%226, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %742 = "llvm.icmp"(%741, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%742)[^bb435, ^bb436] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb435:  // pred: ^bb434
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb436:  // pred: ^bb434
    %743 = "llvm.call"(%227, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %744 = "llvm.icmp"(%743, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%744)[^bb437, ^bb438] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb437:  // pred: ^bb436
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb438:  // pred: ^bb436
    %745 = "llvm.call"(%228, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %746 = "llvm.icmp"(%745, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%746)[^bb439, ^bb440] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb439:  // pred: ^bb438
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb440:  // pred: ^bb438
    %747 = "llvm.call"(%229, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %748 = "llvm.icmp"(%747, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%748)[^bb441, ^bb442] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb441:  // pred: ^bb440
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb442:  // pred: ^bb440
    %749 = "llvm.call"(%230, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %750 = "llvm.icmp"(%749, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%750)[^bb443, ^bb444] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb443:  // pred: ^bb442
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb444:  // pred: ^bb442
    %751 = "llvm.call"(%231, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %752 = "llvm.icmp"(%751, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%752)[^bb445, ^bb446] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb445:  // pred: ^bb444
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb446:  // pred: ^bb444
    %753 = "llvm.call"(%232, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %754 = "llvm.icmp"(%753, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%754)[^bb447, ^bb448] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb447:  // pred: ^bb446
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb448:  // pred: ^bb446
    %755 = "llvm.call"(%233, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %756 = "llvm.icmp"(%755, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%756)[^bb449, ^bb450] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb449:  // pred: ^bb448
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb450:  // pred: ^bb448
    %757 = "llvm.call"(%234, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %758 = "llvm.icmp"(%757, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%758)[^bb451, ^bb452] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb451:  // pred: ^bb450
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb452:  // pred: ^bb450
    %759 = "llvm.call"(%235, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %760 = "llvm.icmp"(%759, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%760)[^bb453, ^bb454] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb453:  // pred: ^bb452
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb454:  // pred: ^bb452
    %761 = "llvm.call"(%236, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %762 = "llvm.icmp"(%761, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%762)[^bb455, ^bb456] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb455:  // pred: ^bb454
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb456:  // pred: ^bb454
    %763 = "llvm.call"(%237, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %764 = "llvm.icmp"(%763, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%764)[^bb457, ^bb458] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb457:  // pred: ^bb456
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb458:  // pred: ^bb456
    %765 = "llvm.call"(%238, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %766 = "llvm.icmp"(%765, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%766)[^bb459, ^bb460] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb459:  // pred: ^bb458
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb460:  // pred: ^bb458
    %767 = "llvm.call"(%239, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %768 = "llvm.icmp"(%767, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%768)[^bb461, ^bb462] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb461:  // pred: ^bb460
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb462:  // pred: ^bb460
    %769 = "llvm.call"(%240, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %770 = "llvm.icmp"(%769, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%770)[^bb463, ^bb464] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb463:  // pred: ^bb462
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb464:  // pred: ^bb462
    %771 = "llvm.call"(%241, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %772 = "llvm.icmp"(%771, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%772)[^bb465, ^bb466] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb465:  // pred: ^bb464
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb466:  // pred: ^bb464
    %773 = "llvm.call"(%242, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %774 = "llvm.icmp"(%773, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%774)[^bb467, ^bb468] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb467:  // pred: ^bb466
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb468:  // pred: ^bb466
    %775 = "llvm.call"(%243, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %776 = "llvm.icmp"(%775, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%776)[^bb469, ^bb470] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb469:  // pred: ^bb468
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb470:  // pred: ^bb468
    %777 = "llvm.call"(%244, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %778 = "llvm.icmp"(%777, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%778)[^bb471, ^bb472] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb471:  // pred: ^bb470
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb472:  // pred: ^bb470
    %779 = "llvm.call"(%245, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %780 = "llvm.icmp"(%779, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%780)[^bb473, ^bb474] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb473:  // pred: ^bb472
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb474:  // pred: ^bb472
    %781 = "llvm.call"(%246, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %782 = "llvm.icmp"(%781, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%782)[^bb475, ^bb476] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb475:  // pred: ^bb474
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb476:  // pred: ^bb474
    %783 = "llvm.call"(%247, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %784 = "llvm.icmp"(%783, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%784)[^bb477, ^bb478] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb477:  // pred: ^bb476
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb478:  // pred: ^bb476
    %785 = "llvm.call"(%248, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %786 = "llvm.icmp"(%785, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%786)[^bb479, ^bb480] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb479:  // pred: ^bb478
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb480:  // pred: ^bb478
    %787 = "llvm.call"(%249, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %788 = "llvm.icmp"(%787, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%788)[^bb481, ^bb482] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb481:  // pred: ^bb480
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb482:  // pred: ^bb480
    %789 = "llvm.call"(%250, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %790 = "llvm.icmp"(%789, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%790)[^bb483, ^bb484] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb483:  // pred: ^bb482
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb484:  // pred: ^bb482
    %791 = "llvm.call"(%251, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %792 = "llvm.icmp"(%791, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%792)[^bb485, ^bb486] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb485:  // pred: ^bb484
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb486:  // pred: ^bb484
    %793 = "llvm.call"(%252, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %794 = "llvm.icmp"(%793, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%794)[^bb487, ^bb488] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb487:  // pred: ^bb486
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb488:  // pred: ^bb486
    %795 = "llvm.call"(%253, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %796 = "llvm.icmp"(%795, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%796)[^bb489, ^bb490] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb489:  // pred: ^bb488
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb490:  // pred: ^bb488
    %797 = "llvm.call"(%254, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %798 = "llvm.icmp"(%797, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%798)[^bb491, ^bb492] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb491:  // pred: ^bb490
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb492:  // pred: ^bb490
    %799 = "llvm.call"(%255, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %800 = "llvm.icmp"(%799, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%800)[^bb493, ^bb494] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb493:  // pred: ^bb492
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb494:  // pred: ^bb492
    %801 = "llvm.call"(%256, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %802 = "llvm.icmp"(%801, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%802)[^bb495, ^bb496] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb495:  // pred: ^bb494
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb496:  // pred: ^bb494
    %803 = "llvm.call"(%257, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %804 = "llvm.icmp"(%803, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%804)[^bb497, ^bb498] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb497:  // pred: ^bb496
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb498:  // pred: ^bb496
    %805 = "llvm.call"(%258, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %806 = "llvm.icmp"(%805, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%806)[^bb499, ^bb500] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb499:  // pred: ^bb498
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb500:  // pred: ^bb498
    %807 = "llvm.call"(%259, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %808 = "llvm.icmp"(%807, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%808)[^bb501, ^bb502] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb501:  // pred: ^bb500
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb502:  // pred: ^bb500
    %809 = "llvm.call"(%260, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %810 = "llvm.icmp"(%809, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%810)[^bb503, ^bb504] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb503:  // pred: ^bb502
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb504:  // pred: ^bb502
    %811 = "llvm.call"(%261, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %812 = "llvm.icmp"(%811, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%812)[^bb505, ^bb506] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb505:  // pred: ^bb504
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb506:  // pred: ^bb504
    %813 = "llvm.call"(%262, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %814 = "llvm.icmp"(%813, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%814)[^bb507, ^bb508] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb507:  // pred: ^bb506
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb508:  // pred: ^bb506
    %815 = "llvm.call"(%263, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %816 = "llvm.icmp"(%815, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%816)[^bb509, ^bb510] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb509:  // pred: ^bb508
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb510:  // pred: ^bb508
    %817 = "llvm.call"(%264, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %818 = "llvm.icmp"(%817, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%818)[^bb511, ^bb512] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb511:  // pred: ^bb510
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb512:  // pred: ^bb510
    %819 = "llvm.call"(%0, %265) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %820 = "llvm.icmp"(%819, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%820)[^bb513, ^bb514] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb513:  // pred: ^bb512
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb514:  // pred: ^bb512
    %821 = "llvm.call"(%41, %266) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %822 = "llvm.icmp"(%821, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%822)[^bb515, ^bb516] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb515:  // pred: ^bb514
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb516:  // pred: ^bb514
    %823 = "llvm.call"(%15, %267) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %824 = "llvm.icmp"(%823, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%824)[^bb517, ^bb518] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb517:  // pred: ^bb516
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb518:  // pred: ^bb516
    %825 = "llvm.call"(%2, %268) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %826 = "llvm.icmp"(%825, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%826)[^bb519, ^bb520] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb519:  // pred: ^bb518
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb520:  // pred: ^bb518
    %827 = "llvm.call"(%269, %270) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %828 = "llvm.icmp"(%827, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%828)[^bb521, ^bb522] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb521:  // pred: ^bb520
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb522:  // pred: ^bb520
    %829 = "llvm.call"(%271, %272) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %830 = "llvm.icmp"(%829, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%830)[^bb523, ^bb524] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb523:  // pred: ^bb522
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb524:  // pred: ^bb522
    %831 = "llvm.call"(%273, %274) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %832 = "llvm.icmp"(%831, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%832)[^bb525, ^bb526] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb525:  // pred: ^bb524
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb526:  // pred: ^bb524
    %833 = "llvm.call"(%275, %276) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %834 = "llvm.icmp"(%833, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%834)[^bb527, ^bb528] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb527:  // pred: ^bb526
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb528:  // pred: ^bb526
    %835 = "llvm.call"(%277, %278) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %836 = "llvm.icmp"(%835, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%836)[^bb529, ^bb530] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb529:  // pred: ^bb528
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb530:  // pred: ^bb528
    %837 = "llvm.call"(%279, %280) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %838 = "llvm.icmp"(%837, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%838)[^bb531, ^bb532] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb531:  // pred: ^bb530
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb532:  // pred: ^bb530
    %839 = "llvm.call"(%281, %282) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %840 = "llvm.icmp"(%839, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%840)[^bb533, ^bb534] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb533:  // pred: ^bb532
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb534:  // pred: ^bb532
    %841 = "llvm.call"(%283, %284) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %842 = "llvm.icmp"(%841, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%842)[^bb535, ^bb536] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb535:  // pred: ^bb534
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb536:  // pred: ^bb534
    %843 = "llvm.call"(%285, %286) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %844 = "llvm.icmp"(%843, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%844)[^bb537, ^bb538] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb537:  // pred: ^bb536
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb538:  // pred: ^bb536
    %845 = "llvm.call"(%287, %288) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %846 = "llvm.icmp"(%845, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%846)[^bb539, ^bb540] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb539:  // pred: ^bb538
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb540:  // pred: ^bb538
    %847 = "llvm.call"(%289, %290) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %848 = "llvm.icmp"(%847, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%848)[^bb541, ^bb542] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb541:  // pred: ^bb540
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb542:  // pred: ^bb540
    %849 = "llvm.call"(%291, %269) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %850 = "llvm.icmp"(%849, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%850)[^bb543, ^bb544] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb543:  // pred: ^bb542
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb544:  // pred: ^bb542
    %851 = "llvm.call"(%292, %293) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %852 = "llvm.icmp"(%851, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%852)[^bb545, ^bb546] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb545:  // pred: ^bb544
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb546:  // pred: ^bb544
    %853 = "llvm.call"(%294, %295) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %854 = "llvm.icmp"(%853, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%854)[^bb547, ^bb548] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb547:  // pred: ^bb546
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb548:  // pred: ^bb546
    %855 = "llvm.call"(%296, %297) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %856 = "llvm.icmp"(%855, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%856)[^bb549, ^bb550] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb549:  // pred: ^bb548
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb550:  // pred: ^bb548
    %857 = "llvm.call"(%298, %299) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %858 = "llvm.icmp"(%857, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%858)[^bb551, ^bb552] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb551:  // pred: ^bb550
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb552:  // pred: ^bb550
    %859 = "llvm.call"(%300, %301) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %860 = "llvm.icmp"(%859, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%860)[^bb553, ^bb554] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb553:  // pred: ^bb552
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb554:  // pred: ^bb552
    %861 = "llvm.call"(%302, %303) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %862 = "llvm.icmp"(%861, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%862)[^bb555, ^bb556] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb555:  // pred: ^bb554
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb556:  // pred: ^bb554
    %863 = "llvm.call"(%304, %305) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @test__clzsi2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %864 = "llvm.icmp"(%863, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%864)[^bb557, ^bb558] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb557:  // pred: ^bb556
    "llvm.store"(%0, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb558:  // pred: ^bb556
    "llvm.store"(%3, %306) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb559] : () -> ()
  ^bb559:  // 280 preds: ^bb1, ^bb3, ^bb5, ^bb7, ^bb9, ^bb11, ^bb13, ^bb15, ^bb17, ^bb19, ^bb21, ^bb23, ^bb25, ^bb27, ^bb29, ^bb31, ^bb33, ^bb35, ^bb37, ^bb39, ^bb41, ^bb43, ^bb45, ^bb47, ^bb49, ^bb51, ^bb53, ^bb55, ^bb57, ^bb59, ^bb61, ^bb63, ^bb65, ^bb67, ^bb69, ^bb71, ^bb73, ^bb75, ^bb77, ^bb79, ^bb81, ^bb83, ^bb85, ^bb87, ^bb89, ^bb91, ^bb93, ^bb95, ^bb97, ^bb99, ^bb101, ^bb103, ^bb105, ^bb107, ^bb109, ^bb111, ^bb113, ^bb115, ^bb117, ^bb119, ^bb121, ^bb123, ^bb125, ^bb127, ^bb129, ^bb131, ^bb133, ^bb135, ^bb137, ^bb139, ^bb141, ^bb143, ^bb145, ^bb147, ^bb149, ^bb151, ^bb153, ^bb155, ^bb157, ^bb159, ^bb161, ^bb163, ^bb165, ^bb167, ^bb169, ^bb171, ^bb173, ^bb175, ^bb177, ^bb179, ^bb181, ^bb183, ^bb185, ^bb187, ^bb189, ^bb191, ^bb193, ^bb195, ^bb197, ^bb199, ^bb201, ^bb203, ^bb205, ^bb207, ^bb209, ^bb211, ^bb213, ^bb215, ^bb217, ^bb219, ^bb221, ^bb223, ^bb225, ^bb227, ^bb229, ^bb231, ^bb233, ^bb235, ^bb237, ^bb239, ^bb241, ^bb243, ^bb245, ^bb247, ^bb249, ^bb251, ^bb253, ^bb255, ^bb257, ^bb259, ^bb261, ^bb263, ^bb265, ^bb267, ^bb269, ^bb271, ^bb273, ^bb275, ^bb277, ^bb279, ^bb281, ^bb283, ^bb285, ^bb287, ^bb289, ^bb291, ^bb293, ^bb295, ^bb297, ^bb299, ^bb301, ^bb303, ^bb305, ^bb307, ^bb309, ^bb311, ^bb313, ^bb315, ^bb317, ^bb319, ^bb321, ^bb323, ^bb325, ^bb327, ^bb329, ^bb331, ^bb333, ^bb335, ^bb337, ^bb339, ^bb341, ^bb343, ^bb345, ^bb347, ^bb349, ^bb351, ^bb353, ^bb355, ^bb357, ^bb359, ^bb361, ^bb363, ^bb365, ^bb367, ^bb369, ^bb371, ^bb373, ^bb375, ^bb377, ^bb379, ^bb381, ^bb383, ^bb385, ^bb387, ^bb389, ^bb391, ^bb393, ^bb395, ^bb397, ^bb399, ^bb401, ^bb403, ^bb405, ^bb407, ^bb409, ^bb411, ^bb413, ^bb415, ^bb417, ^bb419, ^bb421, ^bb423, ^bb425, ^bb427, ^bb429, ^bb431, ^bb433, ^bb435, ^bb437, ^bb439, ^bb441, ^bb443, ^bb445, ^bb447, ^bb449, ^bb451, ^bb453, ^bb455, ^bb457, ^bb459, ^bb461, ^bb463, ^bb465, ^bb467, ^bb469, ^bb471, ^bb473, ^bb475, ^bb477, ^bb479, ^bb481, ^bb483, ^bb485, ^bb487, ^bb489, ^bb491, ^bb493, ^bb495, ^bb497, ^bb499, ^bb501, ^bb503, ^bb505, ^bb507, ^bb509, ^bb511, ^bb513, ^bb515, ^bb517, ^bb519, ^bb521, ^bb523, ^bb525, ^bb527, ^bb529, ^bb531, ^bb533, ^bb535, ^bb537, ^bb539, ^bb541, ^bb543, ^bb545, ^bb547, ^bb549, ^bb551, ^bb553, ^bb555, ^bb557, ^bb558
    %865 = "llvm.load"(%306) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.return"(%865) : (i32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<32> : vector<4xi64>, i64 = dense<64> : vector<2xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little", "dlti.mangling_mode" = "e", "dlti.legal_int_widths" = array<i32: 32>, "dlti.stack_alignment" = 128 : i64>, llvm.ident = "clang version 22.1.8", llvm.module_asm = [], llvm.target_triple = "riscv32-unknown-unknown-elf"} : () -> ()

