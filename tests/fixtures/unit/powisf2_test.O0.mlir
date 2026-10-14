"builtin.module"() ({
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 1 : i64, constant, dso_local, global_type = !llvm.array<46 x i8>, linkage = #llvm.linkage<private>, sym_name = ".str", unnamed_addr = 2 : i64, value = "error in __powisf2(%f, %d) = %f, expected %f\0A\00", visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<error, "wchar_size", 4 : i32>, #llvm.mlir.module_flag<error, "target-abi", "ilp32f">, #llvm.mlir.module_flag<max, "frame-pointer", 2 : i32>, #llvm.mlir.module_flag<min, "SmallDataLimit", 0 : i32>]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], dso_local, frame_pointer = #llvm.framePointerKind<all>, function_type = !llvm.func<i32 (f32, i32, f32)>, linkage = #llvm.linkage<external>, no_inline, no_unwind, optimize_none, passthrough = ["no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "test__powisf2", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcalculet", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: f32, %arg1: i32, %arg2: f32):
    %216 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %217 = "llvm.mlir.constant"() <{value = false}> : () -> i1
    %218 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %219 = "llvm.mlir.addressof"() <{global_name = @".str"}> : () -> !llvm.ptr
    %220 = "llvm.mlir.constant"() <{value = true}> : () -> i1
    %221 = "llvm.alloca"(%216) <{alignment = 4 : i64, elem_type = f32}> : (i32) -> !llvm.ptr
    %222 = "llvm.alloca"(%216) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %223 = "llvm.alloca"(%216) <{alignment = 4 : i64, elem_type = f32}> : (i32) -> !llvm.ptr
    %224 = "llvm.alloca"(%216) <{alignment = 4 : i64, elem_type = f32}> : (i32) -> !llvm.ptr
    %225 = "llvm.alloca"(%216) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    "llvm.store"(%arg0, %221) <{alignment = 4 : i64, ordering = 0 : i64}> : (f32, !llvm.ptr) -> ()
    "llvm.store"(%arg1, %222) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.store"(%arg2, %223) <{alignment = 4 : i64, ordering = 0 : i64}> : (f32, !llvm.ptr) -> ()
    %226 = "llvm.load"(%221) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f32
    %227 = "llvm.load"(%222) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %228 = "llvm.call"(%226, %227) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @__powisf2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (f32, i32) -> f32
    "llvm.store"(%228, %224) <{alignment = 4 : i64, ordering = 0 : i64}> : (f32, !llvm.ptr) -> ()
    %229 = "llvm.load"(%224) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f32
    %230 = "llvm.load"(%223) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f32
    %231 = "llvm.fcmp"(%229, %230) <{fastmathFlags = #llvm.fastmath<none>, predicate = 1 : i64}> : (f32, f32) -> i1
    "llvm.cond_br"(%231, %217)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i1) -> ()
  ^bb1:  // pred: ^bb0
    %232 = "llvm.load"(%224) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f32
    %233 = "llvm.bitcast"(%232) : (f32) -> i32
    %234 = "llvm.icmp"(%233, %218) <{predicate = 2 : i64}> : (i32, i32) -> i1
    %235 = "llvm.zext"(%234) : (i1) -> i32
    %236 = "llvm.load"(%223) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f32
    %237 = "llvm.bitcast"(%236) : (f32) -> i32
    %238 = "llvm.icmp"(%237, %218) <{predicate = 2 : i64}> : (i32, i32) -> i1
    %239 = "llvm.zext"(%238) : (i1) -> i32
    %240 = "llvm.icmp"(%235, %239) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.br"(%240)[^bb2] : (i1) -> ()
  ^bb2(%241: i1):  // 2 preds: ^bb0, ^bb1
    %242 = "llvm.zext"(%241) : (i1) -> i32
    "llvm.store"(%242, %225) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %243 = "llvm.load"(%225) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %244 = "llvm.icmp"(%243, %218) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%244)[^bb4, ^bb3] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb3:  // pred: ^bb2
    %245 = "llvm.load"(%221) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f32
    %246 = "llvm.fpext"(%245) : (f32) -> f64
    %247 = "llvm.load"(%222) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %248 = "llvm.load"(%224) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f32
    %249 = "llvm.fpext"(%248) : (f32) -> f64
    %250 = "llvm.load"(%223) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f32
    %251 = "llvm.fpext"(%250) : (f32) -> f64
    %252 = "llvm.call"(%219, %246, %247, %249, %251) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @printf, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 5, 0>, var_callee_type = !llvm.func<i32 (ptr, ...)>}> : (!llvm.ptr, f64, i32, f64, f64) -> i32
    "llvm.br"()[^bb4] : () -> ()
  ^bb4:  // 2 preds: ^bb2, ^bb3
    %253 = "llvm.load"(%225) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %254 = "llvm.icmp"(%253, %218) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %255 = "llvm.xor"(%254, %220) : (i1, i1) -> i1
    %256 = "llvm.zext"(%255) : (i1) -> i32
    "llvm.return"(%256) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], dso_local, frame_pointer = #llvm.framePointerKind<all>, function_type = !llvm.func<f32 (f32, i32)>, linkage = #llvm.linkage<external>, passthrough = ["no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "__powisf2", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcalculet", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.noundef}], dso_local, frame_pointer = #llvm.framePointerKind<all>, function_type = !llvm.func<i32 (ptr, ...)>, linkage = #llvm.linkage<external>, passthrough = ["no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "printf", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcalculet", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, frame_pointer = #llvm.framePointerKind<all>, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, no_inline, no_unwind, optimize_none, passthrough = ["no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "main", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcalculet", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %0 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %2 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %3 = "llvm.mlir.constant"() <{value = 1.000000e+00 : f32}> : () -> f32
    %4 = "llvm.mlir.constant"() <{value = 1.500000e+00 : f32}> : () -> f32
    %5 = "llvm.mlir.constant"() <{value = 2.000000e+00 : f32}> : () -> f32
    %6 = "llvm.mlir.constant"() <{value = 0x7F800000 : f32}> : () -> f32
    %7 = "llvm.mlir.constant"() <{value = -0.000000e+00 : f32}> : () -> f32
    %8 = "llvm.mlir.constant"() <{value = -1.000000e+00 : f32}> : () -> f32
    %9 = "llvm.mlir.constant"() <{value = -1.500000e+00 : f32}> : () -> f32
    %10 = "llvm.mlir.constant"() <{value = -2.000000e+00 : f32}> : () -> f32
    %11 = "llvm.mlir.constant"() <{value = 0xFF800000 : f32}> : () -> f32
    %12 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %13 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %14 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %15 = "llvm.mlir.constant"() <{value = 2147483646 : i32}> : () -> i32
    %16 = "llvm.mlir.constant"() <{value = 2147483647 : i32}> : () -> i32
    %17 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %18 = "llvm.mlir.constant"() <{value = -2 : i32}> : () -> i32
    %19 = "llvm.mlir.constant"() <{value = -3 : i32}> : () -> i32
    %20 = "llvm.mlir.constant"() <{value = -4 : i32}> : () -> i32
    %21 = "llvm.mlir.constant"() <{value = -2147483646 : i32}> : () -> i32
    %22 = "llvm.mlir.constant"() <{value = -2147483647 : i32}> : () -> i32
    %23 = "llvm.mlir.constant"() <{value = -2147483648 : i32}> : () -> i32
    %24 = "llvm.mlir.constant"() <{value = 10 : i32}> : () -> i32
    %25 = "llvm.mlir.constant"() <{value = 1.024000e+03 : f32}> : () -> f32
    %26 = "llvm.mlir.constant"() <{value = -10 : i32}> : () -> i32
    %27 = "llvm.mlir.constant"() <{value = 9.765625E-4 : f32}> : () -> f32
    %28 = "llvm.mlir.constant"() <{value = 19 : i32}> : () -> i32
    %29 = "llvm.mlir.constant"() <{value = 5.242880e+05 : f32}> : () -> f32
    %30 = "llvm.mlir.constant"() <{value = -5.242880e+05 : f32}> : () -> f32
    %31 = "llvm.mlir.constant"() <{value = -19 : i32}> : () -> i32
    %32 = "llvm.mlir.constant"() <{value = 1.90734863E-6 : f32}> : () -> f32
    %33 = "llvm.mlir.constant"() <{value = -1.90734863E-6 : f32}> : () -> f32
    %34 = "llvm.mlir.constant"() <{value = 31 : i32}> : () -> i32
    %35 = "llvm.mlir.constant"() <{value = 2.14748365E+9 : f32}> : () -> f32
    %36 = "llvm.mlir.constant"() <{value = -2.14748365E+9 : f32}> : () -> f32
    %37 = "llvm.mlir.constant"() <{value = -31 : i32}> : () -> i32
    %38 = "llvm.mlir.constant"() <{value = 4.65661287E-10 : f32}> : () -> f32
    %39 = "llvm.mlir.constant"() <{value = -4.65661287E-10 : f32}> : () -> f32
    %40 = "llvm.alloca"(%0) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %41 = "llvm.call"(%1, %2, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__powisf2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f32, i32, f32) -> i32
    %42 = "llvm.icmp"(%41, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%42)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.store"(%0, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb175] : () -> ()
  ^bb2:  // pred: ^bb0
    %43 = "llvm.call"(%3, %2, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__powisf2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f32, i32, f32) -> i32
    %44 = "llvm.icmp"(%43, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%44)[^bb3, ^bb4] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb3:  // pred: ^bb2
    "llvm.store"(%0, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb175] : () -> ()
  ^bb4:  // pred: ^bb2
    %45 = "llvm.call"(%4, %2, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__powisf2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f32, i32, f32) -> i32
    %46 = "llvm.icmp"(%45, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%46)[^bb5, ^bb6] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb5:  // pred: ^bb4
    "llvm.store"(%0, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb175] : () -> ()
  ^bb6:  // pred: ^bb4
    %47 = "llvm.call"(%5, %2, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__powisf2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f32, i32, f32) -> i32
    %48 = "llvm.icmp"(%47, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%48)[^bb7, ^bb8] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb7:  // pred: ^bb6
    "llvm.store"(%0, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb175] : () -> ()
  ^bb8:  // pred: ^bb6
    %49 = "llvm.call"(%6, %2, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__powisf2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f32, i32, f32) -> i32
    %50 = "llvm.icmp"(%49, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%50)[^bb9, ^bb10] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb9:  // pred: ^bb8
    "llvm.store"(%0, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb175] : () -> ()
  ^bb10:  // pred: ^bb8
    %51 = "llvm.call"(%7, %2, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__powisf2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f32, i32, f32) -> i32
    %52 = "llvm.icmp"(%51, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%52)[^bb11, ^bb12] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb11:  // pred: ^bb10
    "llvm.store"(%0, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb175] : () -> ()
  ^bb12:  // pred: ^bb10
    %53 = "llvm.call"(%8, %2, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__powisf2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f32, i32, f32) -> i32
    %54 = "llvm.icmp"(%53, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%54)[^bb13, ^bb14] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb13:  // pred: ^bb12
    "llvm.store"(%0, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb175] : () -> ()
  ^bb14:  // pred: ^bb12
    %55 = "llvm.call"(%9, %2, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__powisf2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f32, i32, f32) -> i32
    %56 = "llvm.icmp"(%55, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%56)[^bb15, ^bb16] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb15:  // pred: ^bb14
    "llvm.store"(%0, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb175] : () -> ()
  ^bb16:  // pred: ^bb14
    %57 = "llvm.call"(%10, %2, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__powisf2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f32, i32, f32) -> i32
    %58 = "llvm.icmp"(%57, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%58)[^bb17, ^bb18] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb17:  // pred: ^bb16
    "llvm.store"(%0, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb175] : () -> ()
  ^bb18:  // pred: ^bb16
    %59 = "llvm.call"(%11, %2, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__powisf2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f32, i32, f32) -> i32
    %60 = "llvm.icmp"(%59, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%60)[^bb19, ^bb20] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb19:  // pred: ^bb18
    "llvm.store"(%0, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb175] : () -> ()
  ^bb20:  // pred: ^bb18
    %61 = "llvm.call"(%1, %0, %1) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__powisf2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f32, i32, f32) -> i32
    %62 = "llvm.icmp"(%61, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%62)[^bb21, ^bb22] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb21:  // pred: ^bb20
    "llvm.store"(%0, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb175] : () -> ()
  ^bb22:  // pred: ^bb20
    %63 = "llvm.call"(%1, %12, %1) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__powisf2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f32, i32, f32) -> i32
    %64 = "llvm.icmp"(%63, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%64)[^bb23, ^bb24] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb23:  // pred: ^bb22
    "llvm.store"(%0, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb175] : () -> ()
  ^bb24:  // pred: ^bb22
    %65 = "llvm.call"(%1, %13, %1) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__powisf2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f32, i32, f32) -> i32
    %66 = "llvm.icmp"(%65, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%66)[^bb25, ^bb26] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb25:  // pred: ^bb24
    "llvm.store"(%0, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb175] : () -> ()
  ^bb26:  // pred: ^bb24
    %67 = "llvm.call"(%1, %14, %1) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__powisf2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f32, i32, f32) -> i32
    %68 = "llvm.icmp"(%67, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%68)[^bb27, ^bb28] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb27:  // pred: ^bb26
    "llvm.store"(%0, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb175] : () -> ()
  ^bb28:  // pred: ^bb26
    %69 = "llvm.call"(%1, %15, %1) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__powisf2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f32, i32, f32) -> i32
    %70 = "llvm.icmp"(%69, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%70)[^bb29, ^bb30] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb29:  // pred: ^bb28
    "llvm.store"(%0, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb175] : () -> ()
  ^bb30:  // pred: ^bb28
    %71 = "llvm.call"(%1, %16, %1) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__powisf2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f32, i32, f32) -> i32
    %72 = "llvm.icmp"(%71, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%72)[^bb31, ^bb32] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb31:  // pred: ^bb30
    "llvm.store"(%0, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb175] : () -> ()
  ^bb32:  // pred: ^bb30
    %73 = "llvm.call"(%7, %0, %7) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__powisf2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f32, i32, f32) -> i32
    %74 = "llvm.icmp"(%73, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%74)[^bb33, ^bb34] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb33:  // pred: ^bb32
    "llvm.store"(%0, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb175] : () -> ()
  ^bb34:  // pred: ^bb32
    %75 = "llvm.call"(%7, %12, %1) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__powisf2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f32, i32, f32) -> i32
    %76 = "llvm.icmp"(%75, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%76)[^bb35, ^bb36] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb35:  // pred: ^bb34
    "llvm.store"(%0, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb175] : () -> ()
  ^bb36:  // pred: ^bb34
    %77 = "llvm.call"(%7, %13, %7) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__powisf2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f32, i32, f32) -> i32
    %78 = "llvm.icmp"(%77, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%78)[^bb37, ^bb38] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb37:  // pred: ^bb36
    "llvm.store"(%0, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb175] : () -> ()
  ^bb38:  // pred: ^bb36
    %79 = "llvm.call"(%7, %14, %1) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__powisf2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f32, i32, f32) -> i32
    %80 = "llvm.icmp"(%79, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%80)[^bb39, ^bb40] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb39:  // pred: ^bb38
    "llvm.store"(%0, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb175] : () -> ()
  ^bb40:  // pred: ^bb38
    %81 = "llvm.call"(%7, %15, %1) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__powisf2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f32, i32, f32) -> i32
    %82 = "llvm.icmp"(%81, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%82)[^bb41, ^bb42] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb41:  // pred: ^bb40
    "llvm.store"(%0, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb175] : () -> ()
  ^bb42:  // pred: ^bb40
    %83 = "llvm.call"(%7, %16, %7) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__powisf2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f32, i32, f32) -> i32
    %84 = "llvm.icmp"(%83, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%84)[^bb43, ^bb44] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb43:  // pred: ^bb42
    "llvm.store"(%0, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb175] : () -> ()
  ^bb44:  // pred: ^bb42
    %85 = "llvm.call"(%3, %0, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__powisf2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f32, i32, f32) -> i32
    %86 = "llvm.icmp"(%85, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%86)[^bb45, ^bb46] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb45:  // pred: ^bb44
    "llvm.store"(%0, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb175] : () -> ()
  ^bb46:  // pred: ^bb44
    %87 = "llvm.call"(%3, %12, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__powisf2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f32, i32, f32) -> i32
    %88 = "llvm.icmp"(%87, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%88)[^bb47, ^bb48] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb47:  // pred: ^bb46
    "llvm.store"(%0, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb175] : () -> ()
  ^bb48:  // pred: ^bb46
    %89 = "llvm.call"(%3, %13, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__powisf2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f32, i32, f32) -> i32
    %90 = "llvm.icmp"(%89, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%90)[^bb49, ^bb50] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb49:  // pred: ^bb48
    "llvm.store"(%0, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb175] : () -> ()
  ^bb50:  // pred: ^bb48
    %91 = "llvm.call"(%3, %14, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__powisf2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f32, i32, f32) -> i32
    %92 = "llvm.icmp"(%91, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%92)[^bb51, ^bb52] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb51:  // pred: ^bb50
    "llvm.store"(%0, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb175] : () -> ()
  ^bb52:  // pred: ^bb50
    %93 = "llvm.call"(%3, %15, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__powisf2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f32, i32, f32) -> i32
    %94 = "llvm.icmp"(%93, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%94)[^bb53, ^bb54] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb53:  // pred: ^bb52
    "llvm.store"(%0, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb175] : () -> ()
  ^bb54:  // pred: ^bb52
    %95 = "llvm.call"(%3, %16, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__powisf2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f32, i32, f32) -> i32
    %96 = "llvm.icmp"(%95, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%96)[^bb55, ^bb56] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb55:  // pred: ^bb54
    "llvm.store"(%0, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb175] : () -> ()
  ^bb56:  // pred: ^bb54
    %97 = "llvm.call"(%6, %0, %6) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__powisf2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f32, i32, f32) -> i32
    %98 = "llvm.icmp"(%97, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%98)[^bb57, ^bb58] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb57:  // pred: ^bb56
    "llvm.store"(%0, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb175] : () -> ()
  ^bb58:  // pred: ^bb56
    %99 = "llvm.call"(%6, %12, %6) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__powisf2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f32, i32, f32) -> i32
    %100 = "llvm.icmp"(%99, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%100)[^bb59, ^bb60] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb59:  // pred: ^bb58
    "llvm.store"(%0, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb175] : () -> ()
  ^bb60:  // pred: ^bb58
    %101 = "llvm.call"(%6, %13, %6) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__powisf2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f32, i32, f32) -> i32
    %102 = "llvm.icmp"(%101, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%102)[^bb61, ^bb62] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb61:  // pred: ^bb60
    "llvm.store"(%0, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb175] : () -> ()
  ^bb62:  // pred: ^bb60
    %103 = "llvm.call"(%6, %14, %6) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__powisf2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f32, i32, f32) -> i32
    %104 = "llvm.icmp"(%103, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%104)[^bb63, ^bb64] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb63:  // pred: ^bb62
    "llvm.store"(%0, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb175] : () -> ()
  ^bb64:  // pred: ^bb62
    %105 = "llvm.call"(%6, %15, %6) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__powisf2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f32, i32, f32) -> i32
    %106 = "llvm.icmp"(%105, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%106)[^bb65, ^bb66] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb65:  // pred: ^bb64
    "llvm.store"(%0, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb175] : () -> ()
  ^bb66:  // pred: ^bb64
    %107 = "llvm.call"(%6, %16, %6) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__powisf2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f32, i32, f32) -> i32
    %108 = "llvm.icmp"(%107, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%108)[^bb67, ^bb68] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb67:  // pred: ^bb66
    "llvm.store"(%0, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb175] : () -> ()
  ^bb68:  // pred: ^bb66
    %109 = "llvm.call"(%11, %0, %11) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__powisf2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f32, i32, f32) -> i32
    %110 = "llvm.icmp"(%109, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%110)[^bb69, ^bb70] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb69:  // pred: ^bb68
    "llvm.store"(%0, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb175] : () -> ()
  ^bb70:  // pred: ^bb68
    %111 = "llvm.call"(%11, %12, %6) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__powisf2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f32, i32, f32) -> i32
    %112 = "llvm.icmp"(%111, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%112)[^bb71, ^bb72] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb71:  // pred: ^bb70
    "llvm.store"(%0, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb175] : () -> ()
  ^bb72:  // pred: ^bb70
    %113 = "llvm.call"(%11, %13, %11) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__powisf2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f32, i32, f32) -> i32
    %114 = "llvm.icmp"(%113, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%114)[^bb73, ^bb74] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb73:  // pred: ^bb72
    "llvm.store"(%0, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb175] : () -> ()
  ^bb74:  // pred: ^bb72
    %115 = "llvm.call"(%11, %14, %6) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__powisf2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f32, i32, f32) -> i32
    %116 = "llvm.icmp"(%115, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%116)[^bb75, ^bb76] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb75:  // pred: ^bb74
    "llvm.store"(%0, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb175] : () -> ()
  ^bb76:  // pred: ^bb74
    %117 = "llvm.call"(%11, %15, %6) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__powisf2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f32, i32, f32) -> i32
    %118 = "llvm.icmp"(%117, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%118)[^bb77, ^bb78] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb77:  // pred: ^bb76
    "llvm.store"(%0, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb175] : () -> ()
  ^bb78:  // pred: ^bb76
    %119 = "llvm.call"(%11, %16, %11) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__powisf2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f32, i32, f32) -> i32
    %120 = "llvm.icmp"(%119, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%120)[^bb79, ^bb80] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb79:  // pred: ^bb78
    "llvm.store"(%0, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb175] : () -> ()
  ^bb80:  // pred: ^bb78
    %121 = "llvm.call"(%1, %17, %6) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__powisf2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f32, i32, f32) -> i32
    %122 = "llvm.icmp"(%121, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%122)[^bb81, ^bb82] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb81:  // pred: ^bb80
    "llvm.store"(%0, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb175] : () -> ()
  ^bb82:  // pred: ^bb80
    %123 = "llvm.call"(%1, %18, %6) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__powisf2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f32, i32, f32) -> i32
    %124 = "llvm.icmp"(%123, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%124)[^bb83, ^bb84] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb83:  // pred: ^bb82
    "llvm.store"(%0, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb175] : () -> ()
  ^bb84:  // pred: ^bb82
    %125 = "llvm.call"(%1, %19, %6) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__powisf2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f32, i32, f32) -> i32
    %126 = "llvm.icmp"(%125, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%126)[^bb85, ^bb86] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb85:  // pred: ^bb84
    "llvm.store"(%0, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb175] : () -> ()
  ^bb86:  // pred: ^bb84
    %127 = "llvm.call"(%1, %20, %6) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__powisf2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f32, i32, f32) -> i32
    %128 = "llvm.icmp"(%127, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%128)[^bb87, ^bb88] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb87:  // pred: ^bb86
    "llvm.store"(%0, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb175] : () -> ()
  ^bb88:  // pred: ^bb86
    %129 = "llvm.call"(%1, %21, %6) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__powisf2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f32, i32, f32) -> i32
    %130 = "llvm.icmp"(%129, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%130)[^bb89, ^bb90] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb89:  // pred: ^bb88
    "llvm.store"(%0, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb175] : () -> ()
  ^bb90:  // pred: ^bb88
    %131 = "llvm.call"(%1, %22, %6) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__powisf2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f32, i32, f32) -> i32
    %132 = "llvm.icmp"(%131, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%132)[^bb91, ^bb92] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb91:  // pred: ^bb90
    "llvm.store"(%0, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb175] : () -> ()
  ^bb92:  // pred: ^bb90
    %133 = "llvm.call"(%1, %23, %6) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__powisf2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f32, i32, f32) -> i32
    %134 = "llvm.icmp"(%133, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%134)[^bb93, ^bb94] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb93:  // pred: ^bb92
    "llvm.store"(%0, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb175] : () -> ()
  ^bb94:  // pred: ^bb92
    %135 = "llvm.call"(%7, %17, %11) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__powisf2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f32, i32, f32) -> i32
    %136 = "llvm.icmp"(%135, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%136)[^bb95, ^bb96] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb95:  // pred: ^bb94
    "llvm.store"(%0, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb175] : () -> ()
  ^bb96:  // pred: ^bb94
    %137 = "llvm.call"(%7, %18, %6) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__powisf2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f32, i32, f32) -> i32
    %138 = "llvm.icmp"(%137, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%138)[^bb97, ^bb98] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb97:  // pred: ^bb96
    "llvm.store"(%0, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb175] : () -> ()
  ^bb98:  // pred: ^bb96
    %139 = "llvm.call"(%7, %19, %11) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__powisf2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f32, i32, f32) -> i32
    %140 = "llvm.icmp"(%139, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%140)[^bb99, ^bb100] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb99:  // pred: ^bb98
    "llvm.store"(%0, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb175] : () -> ()
  ^bb100:  // pred: ^bb98
    %141 = "llvm.call"(%7, %20, %6) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__powisf2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f32, i32, f32) -> i32
    %142 = "llvm.icmp"(%141, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%142)[^bb101, ^bb102] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb101:  // pred: ^bb100
    "llvm.store"(%0, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb175] : () -> ()
  ^bb102:  // pred: ^bb100
    %143 = "llvm.call"(%7, %21, %6) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__powisf2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f32, i32, f32) -> i32
    %144 = "llvm.icmp"(%143, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%144)[^bb103, ^bb104] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb103:  // pred: ^bb102
    "llvm.store"(%0, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb175] : () -> ()
  ^bb104:  // pred: ^bb102
    %145 = "llvm.call"(%7, %22, %11) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__powisf2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f32, i32, f32) -> i32
    %146 = "llvm.icmp"(%145, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%146)[^bb105, ^bb106] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb105:  // pred: ^bb104
    "llvm.store"(%0, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb175] : () -> ()
  ^bb106:  // pred: ^bb104
    %147 = "llvm.call"(%7, %23, %6) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__powisf2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f32, i32, f32) -> i32
    %148 = "llvm.icmp"(%147, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%148)[^bb107, ^bb108] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb107:  // pred: ^bb106
    "llvm.store"(%0, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb175] : () -> ()
  ^bb108:  // pred: ^bb106
    %149 = "llvm.call"(%3, %17, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__powisf2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f32, i32, f32) -> i32
    %150 = "llvm.icmp"(%149, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%150)[^bb109, ^bb110] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb109:  // pred: ^bb108
    "llvm.store"(%0, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb175] : () -> ()
  ^bb110:  // pred: ^bb108
    %151 = "llvm.call"(%3, %18, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__powisf2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f32, i32, f32) -> i32
    %152 = "llvm.icmp"(%151, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%152)[^bb111, ^bb112] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb111:  // pred: ^bb110
    "llvm.store"(%0, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb175] : () -> ()
  ^bb112:  // pred: ^bb110
    %153 = "llvm.call"(%3, %19, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__powisf2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f32, i32, f32) -> i32
    %154 = "llvm.icmp"(%153, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%154)[^bb113, ^bb114] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb113:  // pred: ^bb112
    "llvm.store"(%0, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb175] : () -> ()
  ^bb114:  // pred: ^bb112
    %155 = "llvm.call"(%3, %20, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__powisf2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f32, i32, f32) -> i32
    %156 = "llvm.icmp"(%155, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%156)[^bb115, ^bb116] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb115:  // pred: ^bb114
    "llvm.store"(%0, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb175] : () -> ()
  ^bb116:  // pred: ^bb114
    %157 = "llvm.call"(%3, %21, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__powisf2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f32, i32, f32) -> i32
    %158 = "llvm.icmp"(%157, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%158)[^bb117, ^bb118] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb117:  // pred: ^bb116
    "llvm.store"(%0, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb175] : () -> ()
  ^bb118:  // pred: ^bb116
    %159 = "llvm.call"(%3, %22, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__powisf2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f32, i32, f32) -> i32
    %160 = "llvm.icmp"(%159, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%160)[^bb119, ^bb120] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb119:  // pred: ^bb118
    "llvm.store"(%0, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb175] : () -> ()
  ^bb120:  // pred: ^bb118
    %161 = "llvm.call"(%3, %23, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__powisf2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f32, i32, f32) -> i32
    %162 = "llvm.icmp"(%161, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%162)[^bb121, ^bb122] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb121:  // pred: ^bb120
    "llvm.store"(%0, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb175] : () -> ()
  ^bb122:  // pred: ^bb120
    %163 = "llvm.call"(%6, %17, %1) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__powisf2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f32, i32, f32) -> i32
    %164 = "llvm.icmp"(%163, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%164)[^bb123, ^bb124] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb123:  // pred: ^bb122
    "llvm.store"(%0, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb175] : () -> ()
  ^bb124:  // pred: ^bb122
    %165 = "llvm.call"(%6, %18, %1) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__powisf2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f32, i32, f32) -> i32
    %166 = "llvm.icmp"(%165, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%166)[^bb125, ^bb126] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb125:  // pred: ^bb124
    "llvm.store"(%0, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb175] : () -> ()
  ^bb126:  // pred: ^bb124
    %167 = "llvm.call"(%6, %19, %1) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__powisf2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f32, i32, f32) -> i32
    %168 = "llvm.icmp"(%167, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%168)[^bb127, ^bb128] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb127:  // pred: ^bb126
    "llvm.store"(%0, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb175] : () -> ()
  ^bb128:  // pred: ^bb126
    %169 = "llvm.call"(%6, %20, %1) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__powisf2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f32, i32, f32) -> i32
    %170 = "llvm.icmp"(%169, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%170)[^bb129, ^bb130] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb129:  // pred: ^bb128
    "llvm.store"(%0, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb175] : () -> ()
  ^bb130:  // pred: ^bb128
    %171 = "llvm.call"(%6, %21, %1) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__powisf2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f32, i32, f32) -> i32
    %172 = "llvm.icmp"(%171, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%172)[^bb131, ^bb132] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb131:  // pred: ^bb130
    "llvm.store"(%0, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb175] : () -> ()
  ^bb132:  // pred: ^bb130
    %173 = "llvm.call"(%6, %22, %1) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__powisf2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f32, i32, f32) -> i32
    %174 = "llvm.icmp"(%173, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%174)[^bb133, ^bb134] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb133:  // pred: ^bb132
    "llvm.store"(%0, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb175] : () -> ()
  ^bb134:  // pred: ^bb132
    %175 = "llvm.call"(%6, %23, %1) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__powisf2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f32, i32, f32) -> i32
    %176 = "llvm.icmp"(%175, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%176)[^bb135, ^bb136] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb135:  // pred: ^bb134
    "llvm.store"(%0, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb175] : () -> ()
  ^bb136:  // pred: ^bb134
    %177 = "llvm.call"(%11, %17, %7) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__powisf2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f32, i32, f32) -> i32
    %178 = "llvm.icmp"(%177, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%178)[^bb137, ^bb138] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb137:  // pred: ^bb136
    "llvm.store"(%0, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb175] : () -> ()
  ^bb138:  // pred: ^bb136
    %179 = "llvm.call"(%11, %18, %1) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__powisf2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f32, i32, f32) -> i32
    %180 = "llvm.icmp"(%179, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%180)[^bb139, ^bb140] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb139:  // pred: ^bb138
    "llvm.store"(%0, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb175] : () -> ()
  ^bb140:  // pred: ^bb138
    %181 = "llvm.call"(%11, %19, %7) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__powisf2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f32, i32, f32) -> i32
    %182 = "llvm.icmp"(%181, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%182)[^bb141, ^bb142] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb141:  // pred: ^bb140
    "llvm.store"(%0, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb175] : () -> ()
  ^bb142:  // pred: ^bb140
    %183 = "llvm.call"(%11, %20, %1) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__powisf2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f32, i32, f32) -> i32
    %184 = "llvm.icmp"(%183, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%184)[^bb143, ^bb144] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb143:  // pred: ^bb142
    "llvm.store"(%0, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb175] : () -> ()
  ^bb144:  // pred: ^bb142
    %185 = "llvm.call"(%11, %21, %1) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__powisf2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f32, i32, f32) -> i32
    %186 = "llvm.icmp"(%185, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%186)[^bb145, ^bb146] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb145:  // pred: ^bb144
    "llvm.store"(%0, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb175] : () -> ()
  ^bb146:  // pred: ^bb144
    %187 = "llvm.call"(%11, %22, %7) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__powisf2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f32, i32, f32) -> i32
    %188 = "llvm.icmp"(%187, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%188)[^bb147, ^bb148] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb147:  // pred: ^bb146
    "llvm.store"(%0, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb175] : () -> ()
  ^bb148:  // pred: ^bb146
    %189 = "llvm.call"(%11, %23, %1) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__powisf2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f32, i32, f32) -> i32
    %190 = "llvm.icmp"(%189, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%190)[^bb149, ^bb150] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb149:  // pred: ^bb148
    "llvm.store"(%0, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb175] : () -> ()
  ^bb150:  // pred: ^bb148
    %191 = "llvm.call"(%5, %24, %25) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__powisf2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f32, i32, f32) -> i32
    %192 = "llvm.icmp"(%191, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%192)[^bb151, ^bb152] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb151:  // pred: ^bb150
    "llvm.store"(%0, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb175] : () -> ()
  ^bb152:  // pred: ^bb150
    %193 = "llvm.call"(%10, %24, %25) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__powisf2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f32, i32, f32) -> i32
    %194 = "llvm.icmp"(%193, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%194)[^bb153, ^bb154] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb153:  // pred: ^bb152
    "llvm.store"(%0, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb175] : () -> ()
  ^bb154:  // pred: ^bb152
    %195 = "llvm.call"(%5, %26, %27) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__powisf2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f32, i32, f32) -> i32
    %196 = "llvm.icmp"(%195, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%196)[^bb155, ^bb156] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb155:  // pred: ^bb154
    "llvm.store"(%0, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb175] : () -> ()
  ^bb156:  // pred: ^bb154
    %197 = "llvm.call"(%10, %26, %27) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__powisf2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f32, i32, f32) -> i32
    %198 = "llvm.icmp"(%197, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%198)[^bb157, ^bb158] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb157:  // pred: ^bb156
    "llvm.store"(%0, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb175] : () -> ()
  ^bb158:  // pred: ^bb156
    %199 = "llvm.call"(%5, %28, %29) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__powisf2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f32, i32, f32) -> i32
    %200 = "llvm.icmp"(%199, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%200)[^bb159, ^bb160] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb159:  // pred: ^bb158
    "llvm.store"(%0, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb175] : () -> ()
  ^bb160:  // pred: ^bb158
    %201 = "llvm.call"(%10, %28, %30) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__powisf2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f32, i32, f32) -> i32
    %202 = "llvm.icmp"(%201, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%202)[^bb161, ^bb162] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb161:  // pred: ^bb160
    "llvm.store"(%0, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb175] : () -> ()
  ^bb162:  // pred: ^bb160
    %203 = "llvm.call"(%5, %31, %32) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__powisf2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f32, i32, f32) -> i32
    %204 = "llvm.icmp"(%203, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%204)[^bb163, ^bb164] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb163:  // pred: ^bb162
    "llvm.store"(%0, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb175] : () -> ()
  ^bb164:  // pred: ^bb162
    %205 = "llvm.call"(%10, %31, %33) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__powisf2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f32, i32, f32) -> i32
    %206 = "llvm.icmp"(%205, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%206)[^bb165, ^bb166] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb165:  // pred: ^bb164
    "llvm.store"(%0, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb175] : () -> ()
  ^bb166:  // pred: ^bb164
    %207 = "llvm.call"(%5, %34, %35) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__powisf2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f32, i32, f32) -> i32
    %208 = "llvm.icmp"(%207, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%208)[^bb167, ^bb168] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb167:  // pred: ^bb166
    "llvm.store"(%0, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb175] : () -> ()
  ^bb168:  // pred: ^bb166
    %209 = "llvm.call"(%10, %34, %36) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__powisf2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f32, i32, f32) -> i32
    %210 = "llvm.icmp"(%209, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%210)[^bb169, ^bb170] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb169:  // pred: ^bb168
    "llvm.store"(%0, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb175] : () -> ()
  ^bb170:  // pred: ^bb168
    %211 = "llvm.call"(%5, %37, %38) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__powisf2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f32, i32, f32) -> i32
    %212 = "llvm.icmp"(%211, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%212)[^bb171, ^bb172] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb171:  // pred: ^bb170
    "llvm.store"(%0, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb175] : () -> ()
  ^bb172:  // pred: ^bb170
    %213 = "llvm.call"(%10, %37, %39) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @test__powisf2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (f32, i32, f32) -> i32
    %214 = "llvm.icmp"(%213, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%214)[^bb173, ^bb174] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb173:  // pred: ^bb172
    "llvm.store"(%0, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb175] : () -> ()
  ^bb174:  // pred: ^bb172
    "llvm.store"(%2, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb175] : () -> ()
  ^bb175:  // 88 preds: ^bb1, ^bb3, ^bb5, ^bb7, ^bb9, ^bb11, ^bb13, ^bb15, ^bb17, ^bb19, ^bb21, ^bb23, ^bb25, ^bb27, ^bb29, ^bb31, ^bb33, ^bb35, ^bb37, ^bb39, ^bb41, ^bb43, ^bb45, ^bb47, ^bb49, ^bb51, ^bb53, ^bb55, ^bb57, ^bb59, ^bb61, ^bb63, ^bb65, ^bb67, ^bb69, ^bb71, ^bb73, ^bb75, ^bb77, ^bb79, ^bb81, ^bb83, ^bb85, ^bb87, ^bb89, ^bb91, ^bb93, ^bb95, ^bb97, ^bb99, ^bb101, ^bb103, ^bb105, ^bb107, ^bb109, ^bb111, ^bb113, ^bb115, ^bb117, ^bb119, ^bb121, ^bb123, ^bb125, ^bb127, ^bb129, ^bb131, ^bb133, ^bb135, ^bb137, ^bb139, ^bb141, ^bb143, ^bb145, ^bb147, ^bb149, ^bb151, ^bb153, ^bb155, ^bb157, ^bb159, ^bb161, ^bb163, ^bb165, ^bb167, ^bb169, ^bb171, ^bb173, ^bb174
    %215 = "llvm.load"(%40) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.return"(%215) : (i32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<32> : vector<4xi64>, i64 = dense<64> : vector<2xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little", "dlti.mangling_mode" = "e", "dlti.legal_int_widths" = array<i32: 32>, "dlti.stack_alignment" = 128 : i64>, llvm.ident = "clang version 22.1.8", llvm.module_asm = [], llvm.target_triple = "riscv32-unknown-unknown-elf"} : () -> ()

