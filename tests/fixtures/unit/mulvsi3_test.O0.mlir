"builtin.module"() ({
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 1 : i64, constant, dso_local, global_type = !llvm.array<47 x i8>, linkage = #llvm.linkage<private>, sym_name = ".str", unnamed_addr = 2 : i64, value = "error in __mulvsi3: %d * %d = %d, expected %d\0A\00", visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<error, "wchar_size", 4 : i32>, #llvm.mlir.module_flag<error, "target-abi", "ilp32f">, #llvm.mlir.module_flag<max, "frame-pointer", 2 : i32>, #llvm.mlir.module_flag<min, "SmallDataLimit", 0 : i32>]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], dso_local, frame_pointer = #llvm.framePointerKind<all>, function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, no_inline, no_unwind, optimize_none, passthrough = ["no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "test__mulvsi3", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcalculet", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: i32):
    %90 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %91 = "llvm.mlir.addressof"() <{global_name = @".str"}> : () -> !llvm.ptr
    %92 = "llvm.alloca"(%90) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %93 = "llvm.alloca"(%90) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %94 = "llvm.alloca"(%90) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %95 = "llvm.alloca"(%90) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    "llvm.store"(%arg0, %92) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.store"(%arg1, %93) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.store"(%arg2, %94) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %96 = "llvm.load"(%92) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %97 = "llvm.load"(%93) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %98 = "llvm.call"(%96, %97) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @__mulvsi3, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    "llvm.store"(%98, %95) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %99 = "llvm.load"(%95) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %100 = "llvm.load"(%94) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %101 = "llvm.icmp"(%99, %100) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%101)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %102 = "llvm.load"(%92) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %103 = "llvm.load"(%93) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %104 = "llvm.load"(%95) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %105 = "llvm.load"(%94) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %106 = "llvm.call"(%91, %102, %103, %104, %105) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @printf, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 5, 0>, var_callee_type = !llvm.func<i32 (ptr, ...)>}> : (!llvm.ptr, i32, i32, i32, i32) -> i32
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    %107 = "llvm.load"(%95) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %108 = "llvm.load"(%94) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %109 = "llvm.icmp"(%107, %108) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %110 = "llvm.zext"(%109) : (i1) -> i32
    "llvm.return"(%110) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], dso_local, frame_pointer = #llvm.framePointerKind<all>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, passthrough = ["no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "__mulvsi3", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcalculet", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.noundef}], dso_local, frame_pointer = #llvm.framePointerKind<all>, function_type = !llvm.func<i32 (ptr, ...)>, linkage = #llvm.linkage<external>, passthrough = ["no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "printf", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcalculet", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, frame_pointer = #llvm.framePointerKind<all>, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, no_inline, no_unwind, optimize_none, passthrough = ["no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "main", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcalculet", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %0 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %2 = "llvm.mlir.constant"() <{value = 10 : i32}> : () -> i32
    %3 = "llvm.mlir.constant"() <{value = 19088743 : i32}> : () -> i32
    %4 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %5 = "llvm.mlir.constant"() <{value = -10 : i32}> : () -> i32
    %6 = "llvm.mlir.constant"() <{value = -19088743 : i32}> : () -> i32
    %7 = "llvm.mlir.constant"() <{value = 2147483647 : i32}> : () -> i32
    %8 = "llvm.mlir.constant"() <{value = -2147483647 : i32}> : () -> i32
    %9 = "llvm.mlir.constant"() <{value = -2147483648 : i32}> : () -> i32
    %10 = "llvm.alloca"(%0) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %11 = "llvm.call"(%1, %1, %1) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulvsi3, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (i32, i32, i32) -> i32
    %12 = "llvm.icmp"(%11, %1) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%12)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.store"(%0, %10) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb79] : () -> ()
  ^bb2:  // pred: ^bb0
    %13 = "llvm.call"(%1, %0, %1) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulvsi3, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (i32, i32, i32) -> i32
    %14 = "llvm.icmp"(%13, %1) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%14)[^bb3, ^bb4] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb3:  // pred: ^bb2
    "llvm.store"(%0, %10) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb79] : () -> ()
  ^bb4:  // pred: ^bb2
    %15 = "llvm.call"(%0, %1, %1) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulvsi3, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (i32, i32, i32) -> i32
    %16 = "llvm.icmp"(%15, %1) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%16)[^bb5, ^bb6] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb5:  // pred: ^bb4
    "llvm.store"(%0, %10) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb79] : () -> ()
  ^bb6:  // pred: ^bb4
    %17 = "llvm.call"(%1, %2, %1) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulvsi3, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (i32, i32, i32) -> i32
    %18 = "llvm.icmp"(%17, %1) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%18)[^bb7, ^bb8] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb7:  // pred: ^bb6
    "llvm.store"(%0, %10) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb79] : () -> ()
  ^bb8:  // pred: ^bb6
    %19 = "llvm.call"(%2, %1, %1) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulvsi3, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (i32, i32, i32) -> i32
    %20 = "llvm.icmp"(%19, %1) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%20)[^bb9, ^bb10] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb9:  // pred: ^bb8
    "llvm.store"(%0, %10) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb79] : () -> ()
  ^bb10:  // pred: ^bb8
    %21 = "llvm.call"(%1, %3, %1) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulvsi3, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (i32, i32, i32) -> i32
    %22 = "llvm.icmp"(%21, %1) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%22)[^bb11, ^bb12] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb11:  // pred: ^bb10
    "llvm.store"(%0, %10) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb79] : () -> ()
  ^bb12:  // pred: ^bb10
    %23 = "llvm.call"(%3, %1, %1) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulvsi3, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (i32, i32, i32) -> i32
    %24 = "llvm.icmp"(%23, %1) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%24)[^bb13, ^bb14] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb13:  // pred: ^bb12
    "llvm.store"(%0, %10) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb79] : () -> ()
  ^bb14:  // pred: ^bb12
    %25 = "llvm.call"(%1, %4, %1) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulvsi3, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (i32, i32, i32) -> i32
    %26 = "llvm.icmp"(%25, %1) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%26)[^bb15, ^bb16] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb15:  // pred: ^bb14
    "llvm.store"(%0, %10) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb79] : () -> ()
  ^bb16:  // pred: ^bb14
    %27 = "llvm.call"(%4, %1, %1) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulvsi3, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (i32, i32, i32) -> i32
    %28 = "llvm.icmp"(%27, %1) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%28)[^bb17, ^bb18] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb17:  // pred: ^bb16
    "llvm.store"(%0, %10) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb79] : () -> ()
  ^bb18:  // pred: ^bb16
    %29 = "llvm.call"(%1, %5, %1) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulvsi3, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (i32, i32, i32) -> i32
    %30 = "llvm.icmp"(%29, %1) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%30)[^bb19, ^bb20] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb19:  // pred: ^bb18
    "llvm.store"(%0, %10) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb79] : () -> ()
  ^bb20:  // pred: ^bb18
    %31 = "llvm.call"(%5, %1, %1) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulvsi3, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (i32, i32, i32) -> i32
    %32 = "llvm.icmp"(%31, %1) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%32)[^bb21, ^bb22] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb21:  // pred: ^bb20
    "llvm.store"(%0, %10) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb79] : () -> ()
  ^bb22:  // pred: ^bb20
    %33 = "llvm.call"(%1, %6, %1) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulvsi3, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (i32, i32, i32) -> i32
    %34 = "llvm.icmp"(%33, %1) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%34)[^bb23, ^bb24] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb23:  // pred: ^bb22
    "llvm.store"(%0, %10) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb79] : () -> ()
  ^bb24:  // pred: ^bb22
    %35 = "llvm.call"(%6, %1, %1) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulvsi3, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (i32, i32, i32) -> i32
    %36 = "llvm.icmp"(%35, %1) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%36)[^bb25, ^bb26] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb25:  // pred: ^bb24
    "llvm.store"(%0, %10) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb79] : () -> ()
  ^bb26:  // pred: ^bb24
    %37 = "llvm.call"(%0, %0, %0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulvsi3, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (i32, i32, i32) -> i32
    %38 = "llvm.icmp"(%37, %1) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%38)[^bb27, ^bb28] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb27:  // pred: ^bb26
    "llvm.store"(%0, %10) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb79] : () -> ()
  ^bb28:  // pred: ^bb26
    %39 = "llvm.call"(%0, %2, %2) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulvsi3, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (i32, i32, i32) -> i32
    %40 = "llvm.icmp"(%39, %1) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%40)[^bb29, ^bb30] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb29:  // pred: ^bb28
    "llvm.store"(%0, %10) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb79] : () -> ()
  ^bb30:  // pred: ^bb28
    %41 = "llvm.call"(%2, %0, %2) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulvsi3, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (i32, i32, i32) -> i32
    %42 = "llvm.icmp"(%41, %1) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%42)[^bb31, ^bb32] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb31:  // pred: ^bb30
    "llvm.store"(%0, %10) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb79] : () -> ()
  ^bb32:  // pred: ^bb30
    %43 = "llvm.call"(%0, %3, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulvsi3, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (i32, i32, i32) -> i32
    %44 = "llvm.icmp"(%43, %1) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%44)[^bb33, ^bb34] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb33:  // pred: ^bb32
    "llvm.store"(%0, %10) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb79] : () -> ()
  ^bb34:  // pred: ^bb32
    %45 = "llvm.call"(%3, %0, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulvsi3, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (i32, i32, i32) -> i32
    %46 = "llvm.icmp"(%45, %1) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%46)[^bb35, ^bb36] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb35:  // pred: ^bb34
    "llvm.store"(%0, %10) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb79] : () -> ()
  ^bb36:  // pred: ^bb34
    %47 = "llvm.call"(%0, %4, %4) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulvsi3, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (i32, i32, i32) -> i32
    %48 = "llvm.icmp"(%47, %1) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%48)[^bb37, ^bb38] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb37:  // pred: ^bb36
    "llvm.store"(%0, %10) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb79] : () -> ()
  ^bb38:  // pred: ^bb36
    %49 = "llvm.call"(%0, %5, %5) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulvsi3, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (i32, i32, i32) -> i32
    %50 = "llvm.icmp"(%49, %1) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%50)[^bb39, ^bb40] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb39:  // pred: ^bb38
    "llvm.store"(%0, %10) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb79] : () -> ()
  ^bb40:  // pred: ^bb38
    %51 = "llvm.call"(%5, %0, %5) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulvsi3, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (i32, i32, i32) -> i32
    %52 = "llvm.icmp"(%51, %1) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%52)[^bb41, ^bb42] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb41:  // pred: ^bb40
    "llvm.store"(%0, %10) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb79] : () -> ()
  ^bb42:  // pred: ^bb40
    %53 = "llvm.call"(%0, %6, %6) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulvsi3, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (i32, i32, i32) -> i32
    %54 = "llvm.icmp"(%53, %1) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%54)[^bb43, ^bb44] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb43:  // pred: ^bb42
    "llvm.store"(%0, %10) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb79] : () -> ()
  ^bb44:  // pred: ^bb42
    %55 = "llvm.call"(%6, %0, %6) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulvsi3, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (i32, i32, i32) -> i32
    %56 = "llvm.icmp"(%55, %1) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%56)[^bb45, ^bb46] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb45:  // pred: ^bb44
    "llvm.store"(%0, %10) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb79] : () -> ()
  ^bb46:  // pred: ^bb44
    %57 = "llvm.call"(%7, %4, %8) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulvsi3, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (i32, i32, i32) -> i32
    %58 = "llvm.icmp"(%57, %1) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%58)[^bb47, ^bb48] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb47:  // pred: ^bb46
    "llvm.store"(%0, %10) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb79] : () -> ()
  ^bb48:  // pred: ^bb46
    %59 = "llvm.call"(%4, %7, %8) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulvsi3, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (i32, i32, i32) -> i32
    %60 = "llvm.icmp"(%59, %1) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%60)[^bb49, ^bb50] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb49:  // pred: ^bb48
    "llvm.store"(%0, %10) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb79] : () -> ()
  ^bb50:  // pred: ^bb48
    %61 = "llvm.call"(%7, %1, %1) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulvsi3, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (i32, i32, i32) -> i32
    %62 = "llvm.icmp"(%61, %1) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%62)[^bb51, ^bb52] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb51:  // pred: ^bb50
    "llvm.store"(%0, %10) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb79] : () -> ()
  ^bb52:  // pred: ^bb50
    %63 = "llvm.call"(%1, %7, %1) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulvsi3, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (i32, i32, i32) -> i32
    %64 = "llvm.icmp"(%63, %1) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%64)[^bb53, ^bb54] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb53:  // pred: ^bb52
    "llvm.store"(%0, %10) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb79] : () -> ()
  ^bb54:  // pred: ^bb52
    %65 = "llvm.call"(%7, %0, %7) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulvsi3, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (i32, i32, i32) -> i32
    %66 = "llvm.icmp"(%65, %1) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%66)[^bb55, ^bb56] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb55:  // pred: ^bb54
    "llvm.store"(%0, %10) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb79] : () -> ()
  ^bb56:  // pred: ^bb54
    %67 = "llvm.call"(%0, %7, %7) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulvsi3, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (i32, i32, i32) -> i32
    %68 = "llvm.icmp"(%67, %1) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%68)[^bb57, ^bb58] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb57:  // pred: ^bb56
    "llvm.store"(%0, %10) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb79] : () -> ()
  ^bb58:  // pred: ^bb56
    %69 = "llvm.call"(%9, %1, %1) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulvsi3, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (i32, i32, i32) -> i32
    %70 = "llvm.icmp"(%69, %1) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%70)[^bb59, ^bb60] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb59:  // pred: ^bb58
    "llvm.store"(%0, %10) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb79] : () -> ()
  ^bb60:  // pred: ^bb58
    %71 = "llvm.call"(%1, %9, %1) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulvsi3, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (i32, i32, i32) -> i32
    %72 = "llvm.icmp"(%71, %1) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%72)[^bb61, ^bb62] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb61:  // pred: ^bb60
    "llvm.store"(%0, %10) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb79] : () -> ()
  ^bb62:  // pred: ^bb60
    %73 = "llvm.call"(%9, %0, %9) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulvsi3, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (i32, i32, i32) -> i32
    %74 = "llvm.icmp"(%73, %1) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%74)[^bb63, ^bb64] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb63:  // pred: ^bb62
    "llvm.store"(%0, %10) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb79] : () -> ()
  ^bb64:  // pred: ^bb62
    %75 = "llvm.call"(%0, %9, %9) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulvsi3, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (i32, i32, i32) -> i32
    %76 = "llvm.icmp"(%75, %1) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%76)[^bb65, ^bb66] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb65:  // pred: ^bb64
    "llvm.store"(%0, %10) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb79] : () -> ()
  ^bb66:  // pred: ^bb64
    %77 = "llvm.call"(%8, %4, %7) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulvsi3, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (i32, i32, i32) -> i32
    %78 = "llvm.icmp"(%77, %1) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%78)[^bb67, ^bb68] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb67:  // pred: ^bb66
    "llvm.store"(%0, %10) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb79] : () -> ()
  ^bb68:  // pred: ^bb66
    %79 = "llvm.call"(%4, %8, %7) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulvsi3, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (i32, i32, i32) -> i32
    %80 = "llvm.icmp"(%79, %1) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%80)[^bb69, ^bb70] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb69:  // pred: ^bb68
    "llvm.store"(%0, %10) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb79] : () -> ()
  ^bb70:  // pred: ^bb68
    %81 = "llvm.call"(%8, %1, %1) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulvsi3, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (i32, i32, i32) -> i32
    %82 = "llvm.icmp"(%81, %1) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%82)[^bb71, ^bb72] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb71:  // pred: ^bb70
    "llvm.store"(%0, %10) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb79] : () -> ()
  ^bb72:  // pred: ^bb70
    %83 = "llvm.call"(%1, %8, %1) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulvsi3, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (i32, i32, i32) -> i32
    %84 = "llvm.icmp"(%83, %1) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%84)[^bb73, ^bb74] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb73:  // pred: ^bb72
    "llvm.store"(%0, %10) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb79] : () -> ()
  ^bb74:  // pred: ^bb72
    %85 = "llvm.call"(%8, %0, %8) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulvsi3, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (i32, i32, i32) -> i32
    %86 = "llvm.icmp"(%85, %1) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%86)[^bb75, ^bb76] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb75:  // pred: ^bb74
    "llvm.store"(%0, %10) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb79] : () -> ()
  ^bb76:  // pred: ^bb74
    %87 = "llvm.call"(%0, %8, %8) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__mulvsi3, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (i32, i32, i32) -> i32
    %88 = "llvm.icmp"(%87, %1) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%88)[^bb77, ^bb78] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb77:  // pred: ^bb76
    "llvm.store"(%0, %10) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb79] : () -> ()
  ^bb78:  // pred: ^bb76
    "llvm.store"(%1, %10) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb79] : () -> ()
  ^bb79:  // 40 preds: ^bb1, ^bb3, ^bb5, ^bb7, ^bb9, ^bb11, ^bb13, ^bb15, ^bb17, ^bb19, ^bb21, ^bb23, ^bb25, ^bb27, ^bb29, ^bb31, ^bb33, ^bb35, ^bb37, ^bb39, ^bb41, ^bb43, ^bb45, ^bb47, ^bb49, ^bb51, ^bb53, ^bb55, ^bb57, ^bb59, ^bb61, ^bb63, ^bb65, ^bb67, ^bb69, ^bb71, ^bb73, ^bb75, ^bb77, ^bb78
    %89 = "llvm.load"(%10) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.return"(%89) : (i32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<32> : vector<4xi64>, i64 = dense<64> : vector<2xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little", "dlti.mangling_mode" = "e", "dlti.legal_int_widths" = array<i32: 32>, "dlti.stack_alignment" = 128 : i64>, llvm.ident = "clang version 22.1.8", llvm.module_asm = [], llvm.target_triple = "riscv32-unknown-unknown-elf"} : () -> ()

