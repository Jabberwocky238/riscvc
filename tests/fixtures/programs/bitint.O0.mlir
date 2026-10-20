#loop_annotation = #llvm.loop_annotation<mustProgress = true>
"builtin.module"() ({
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 8 : i64, dso_local, global_type = i64, linkage = #llvm.linkage<internal>, sym_name = "s", unnamed_addr = 0 : i64, value = -7046029254386353131 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<error, "wchar_size", 4 : i32>, #llvm.mlir.module_flag<error, "target-abi", "ilp32f">, #llvm.mlir.module_flag<max, "frame-pointer", 2 : i32>, #llvm.mlir.module_flag<min, "SmallDataLimit", 0 : i32>]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.align = 8 : i64, llvm.noalias, llvm.sret = i128}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], dso_local, frame_pointer = #llvm.framePointerKind<all>, function_type = !llvm.func<void (ptr, ptr, ptr, i32)>, linkage = #llvm.linkage<external>, no_inline, no_unwind, optimize_none, passthrough = ["no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "mix128", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg18: !llvm.ptr, %arg19: !llvm.ptr, %arg20: !llvm.ptr, %arg21: i32):
    %370 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %371 = "llvm.mlir.constant"() <{value = 127 : i32}> : () -> i32
    %372 = "llvm.mlir.constant"() <{value = 37 : i128}> : () -> i128
    %373 = "llvm.mlir.constant"() <{value = 70 : i128}> : () -> i128
    %374 = "llvm.alloca"(%370) <{alignment = 4 : i64, elem_type = !llvm.ptr}> : (i32) -> !llvm.ptr
    %375 = "llvm.alloca"(%370) <{alignment = 8 : i64, elem_type = i128}> : (i32) -> !llvm.ptr
    %376 = "llvm.alloca"(%370) <{alignment = 8 : i64, elem_type = i128}> : (i32) -> !llvm.ptr
    %377 = "llvm.alloca"(%370) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    "llvm.store"(%arg18, %374) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %378 = "llvm.load"(%arg19) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    %379 = "llvm.load"(%arg20) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    "llvm.store"(%378, %375) <{alignment = 8 : i64, ordering = 0 : i64}> : (i128, !llvm.ptr) -> ()
    "llvm.store"(%379, %376) <{alignment = 8 : i64, ordering = 0 : i64}> : (i128, !llvm.ptr) -> ()
    "llvm.store"(%arg21, %377) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %380 = "llvm.load"(%375) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    %381 = "llvm.load"(%376) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    %382 = "llvm.mul"(%380, %381) <{overflowFlags = 0 : i32}> : (i128, i128) -> i128
    %383 = "llvm.load"(%375) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    %384 = "llvm.load"(%377) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %385 = "llvm.zext"(%384) : (i32) -> i128
    %386 = "llvm.shl"(%383, %385) <{overflowFlags = 0 : i32}> : (i128, i128) -> i128
    %387 = "llvm.xor"(%382, %386) : (i128, i128) -> i128
    %388 = "llvm.load"(%376) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    %389 = "llvm.load"(%377) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %390 = "llvm.sub"(%371, %389) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %391 = "llvm.zext"(%390) : (i32) -> i128
    %392 = "llvm.lshr"(%388, %391) : (i128, i128) -> i128
    %393 = "llvm.xor"(%387, %392) : (i128, i128) -> i128
    %394 = "llvm.load"(%375) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    %395 = "llvm.load"(%376) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    %396 = "llvm.add"(%394, %395) <{overflowFlags = 0 : i32}> : (i128, i128) -> i128
    %397 = "llvm.xor"(%393, %396) : (i128, i128) -> i128
    %398 = "llvm.load"(%375) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    %399 = "llvm.load"(%376) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    %400 = "llvm.sub"(%398, %399) <{overflowFlags = 0 : i32}> : (i128, i128) -> i128
    %401 = "llvm.xor"(%397, %400) : (i128, i128) -> i128
    %402 = "llvm.load"(%375) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    %403 = "llvm.shl"(%402, %372) <{overflowFlags = 0 : i32}> : (i128, i128) -> i128
    %404 = "llvm.xor"(%401, %403) : (i128, i128) -> i128
    %405 = "llvm.load"(%376) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    %406 = "llvm.lshr"(%405, %373) : (i128, i128) -> i128
    %407 = "llvm.xor"(%404, %406) : (i128, i128) -> i128
    %408 = "llvm.load"(%375) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    %409 = "llvm.load"(%377) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %410 = "llvm.zext"(%409) : (i32) -> i128
    %411 = "llvm.ashr"(%408, %410) : (i128, i128) -> i128
    %412 = "llvm.xor"(%407, %411) : (i128, i128) -> i128
    "llvm.store"(%412, %arg18) <{alignment = 8 : i64, ordering = 0 : i64}> : (i128, !llvm.ptr) -> ()
    %413 = "llvm.load"(%arg18) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    "llvm.store"(%413, %arg18) <{alignment = 8 : i64, ordering = 0 : i64}> : (i128, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.align = 8 : i64, llvm.noalias, llvm.sret = i128}, {llvm.noundef}, {llvm.noundef}], dso_local, frame_pointer = #llvm.framePointerKind<all>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, no_inline, no_unwind, optimize_none, passthrough = ["no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "sdiv128", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg15: !llvm.ptr, %arg16: !llvm.ptr, %arg17: !llvm.ptr):
    %356 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %357 = "llvm.alloca"(%356) <{alignment = 4 : i64, elem_type = !llvm.ptr}> : (i32) -> !llvm.ptr
    %358 = "llvm.alloca"(%356) <{alignment = 8 : i64, elem_type = i128}> : (i32) -> !llvm.ptr
    %359 = "llvm.alloca"(%356) <{alignment = 8 : i64, elem_type = i128}> : (i32) -> !llvm.ptr
    "llvm.store"(%arg15, %357) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %360 = "llvm.load"(%arg16) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    %361 = "llvm.load"(%arg17) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    "llvm.store"(%360, %358) <{alignment = 8 : i64, ordering = 0 : i64}> : (i128, !llvm.ptr) -> ()
    "llvm.store"(%361, %359) <{alignment = 8 : i64, ordering = 0 : i64}> : (i128, !llvm.ptr) -> ()
    %362 = "llvm.load"(%358) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    %363 = "llvm.load"(%359) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    %364 = "llvm.sdiv"(%362, %363) : (i128, i128) -> i128
    %365 = "llvm.load"(%358) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    %366 = "llvm.load"(%359) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    %367 = "llvm.srem"(%365, %366) : (i128, i128) -> i128
    %368 = "llvm.add"(%364, %367) <{overflowFlags = 0 : i32}> : (i128, i128) -> i128
    "llvm.store"(%368, %arg15) <{alignment = 8 : i64, ordering = 0 : i64}> : (i128, !llvm.ptr) -> ()
    %369 = "llvm.load"(%arg15) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    "llvm.store"(%369, %arg15) <{alignment = 8 : i64, ordering = 0 : i64}> : (i128, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.align = 8 : i64, llvm.noalias, llvm.sret = i128}, {llvm.noundef}, {llvm.noundef}], dso_local, frame_pointer = #llvm.framePointerKind<all>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, no_inline, no_unwind, optimize_none, passthrough = ["no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "udiv128", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: !llvm.ptr, %arg13: !llvm.ptr, %arg14: !llvm.ptr):
    %342 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %343 = "llvm.alloca"(%342) <{alignment = 4 : i64, elem_type = !llvm.ptr}> : (i32) -> !llvm.ptr
    %344 = "llvm.alloca"(%342) <{alignment = 8 : i64, elem_type = i128}> : (i32) -> !llvm.ptr
    %345 = "llvm.alloca"(%342) <{alignment = 8 : i64, elem_type = i128}> : (i32) -> !llvm.ptr
    "llvm.store"(%arg12, %343) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %346 = "llvm.load"(%arg13) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    %347 = "llvm.load"(%arg14) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    "llvm.store"(%346, %344) <{alignment = 8 : i64, ordering = 0 : i64}> : (i128, !llvm.ptr) -> ()
    "llvm.store"(%347, %345) <{alignment = 8 : i64, ordering = 0 : i64}> : (i128, !llvm.ptr) -> ()
    %348 = "llvm.load"(%344) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    %349 = "llvm.load"(%345) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    %350 = "llvm.udiv"(%348, %349) : (i128, i128) -> i128
    %351 = "llvm.load"(%344) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    %352 = "llvm.load"(%345) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    %353 = "llvm.urem"(%351, %352) : (i128, i128) -> i128
    %354 = "llvm.xor"(%350, %353) : (i128, i128) -> i128
    "llvm.store"(%354, %arg12) <{alignment = 8 : i64, ordering = 0 : i64}> : (i128, !llvm.ptr) -> ()
    %355 = "llvm.load"(%arg12) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    "llvm.store"(%355, %arg12) <{alignment = 8 : i64, ordering = 0 : i64}> : (i128, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.align = 8 : i64, llvm.noalias, llvm.sret = i128}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], dso_local, frame_pointer = #llvm.framePointerKind<all>, function_type = !llvm.func<void (ptr, ptr, ptr, i32)>, linkage = #llvm.linkage<external>, no_inline, no_unwind, optimize_none, passthrough = ["no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "mix112", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: !llvm.ptr, %arg9: !llvm.ptr, %arg10: !llvm.ptr, %arg11: i32):
    %291 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %292 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %293 = "llvm.mlir.constant"() <{value = 60 : i112}> : () -> i112
    %294 = "llvm.mlir.constant"() <{value = 1 : i112}> : () -> i112
    %295 = "llvm.alloca"(%291) <{alignment = 4 : i64, elem_type = !llvm.ptr}> : (i32) -> !llvm.ptr
    %296 = "llvm.alloca"(%291) <{alignment = 8 : i64, elem_type = i128}> : (i32) -> !llvm.ptr
    %297 = "llvm.alloca"(%291) <{alignment = 8 : i64, elem_type = i128}> : (i32) -> !llvm.ptr
    %298 = "llvm.alloca"(%291) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    "llvm.store"(%arg8, %295) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %299 = "llvm.load"(%arg9) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    %300 = "llvm.trunc"(%299) <{overflowFlags = 0 : i32}> : (i128) -> i112
    %301 = "llvm.load"(%arg10) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    %302 = "llvm.trunc"(%301) <{overflowFlags = 0 : i32}> : (i128) -> i112
    %303 = "llvm.sext"(%300) : (i112) -> i128
    "llvm.store"(%303, %296) <{alignment = 8 : i64, ordering = 0 : i64}> : (i128, !llvm.ptr) -> ()
    %304 = "llvm.sext"(%302) : (i112) -> i128
    "llvm.store"(%304, %297) <{alignment = 8 : i64, ordering = 0 : i64}> : (i128, !llvm.ptr) -> ()
    "llvm.store"(%arg11, %298) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %305 = "llvm.load"(%296) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    %306 = "llvm.trunc"(%305) <{overflowFlags = 0 : i32}> : (i128) -> i112
    %307 = "llvm.load"(%297) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    %308 = "llvm.trunc"(%307) <{overflowFlags = 0 : i32}> : (i128) -> i112
    %309 = "llvm.mul"(%306, %308) <{overflowFlags = 0 : i32}> : (i112, i112) -> i112
    %310 = "llvm.load"(%296) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    %311 = "llvm.trunc"(%310) <{overflowFlags = 0 : i32}> : (i128) -> i112
    %312 = "llvm.load"(%298) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %313 = "llvm.zext"(%312) : (i32) -> i112
    %314 = "llvm.ashr"(%311, %313) : (i112, i112) -> i112
    %315 = "llvm.add"(%309, %314) <{overflowFlags = 0 : i32}> : (i112, i112) -> i112
    %316 = "llvm.load"(%297) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    %317 = "llvm.trunc"(%316) <{overflowFlags = 0 : i32}> : (i128) -> i112
    %318 = "llvm.load"(%298) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %319 = "llvm.sdiv"(%318, %292) : (i32, i32) -> i32
    %320 = "llvm.zext"(%319) : (i32) -> i112
    %321 = "llvm.shl"(%317, %320) <{overflowFlags = 0 : i32}> : (i112, i112) -> i112
    %322 = "llvm.sub"(%315, %321) <{overflowFlags = 0 : i32}> : (i112, i112) -> i112
    %323 = "llvm.load"(%296) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    %324 = "llvm.trunc"(%323) <{overflowFlags = 0 : i32}> : (i128) -> i112
    %325 = "llvm.load"(%297) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    %326 = "llvm.trunc"(%325) <{overflowFlags = 0 : i32}> : (i128) -> i112
    %327 = "llvm.ashr"(%326, %293) : (i112, i112) -> i112
    %328 = "llvm.or"(%327, %294) : (i112, i112) -> i112
    %329 = "llvm.sdiv"(%324, %328) : (i112, i112) -> i112
    %330 = "llvm.add"(%322, %329) <{overflowFlags = 1 : i32}> : (i112, i112) -> i112
    %331 = "llvm.load"(%296) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    %332 = "llvm.trunc"(%331) <{overflowFlags = 0 : i32}> : (i128) -> i112
    %333 = "llvm.load"(%297) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    %334 = "llvm.trunc"(%333) <{overflowFlags = 0 : i32}> : (i128) -> i112
    %335 = "llvm.or"(%334, %294) : (i112, i112) -> i112
    %336 = "llvm.srem"(%332, %335) : (i112, i112) -> i112
    %337 = "llvm.add"(%330, %336) <{overflowFlags = 1 : i32}> : (i112, i112) -> i112
    %338 = "llvm.sext"(%337) : (i112) -> i128
    "llvm.store"(%338, %arg8) <{alignment = 8 : i64, ordering = 0 : i64}> : (i128, !llvm.ptr) -> ()
    %339 = "llvm.load"(%arg8) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    %340 = "llvm.trunc"(%339) <{overflowFlags = 0 : i32}> : (i128) -> i112
    %341 = "llvm.sext"(%340) : (i112) -> i128
    "llvm.store"(%341, %arg8) <{alignment = 8 : i64, ordering = 0 : i64}> : (i128, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.align = 8 : i64, llvm.noalias, llvm.sret = i128}, {llvm.noundef}, {llvm.noundef}], dso_local, frame_pointer = #llvm.framePointerKind<all>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, no_inline, no_unwind, optimize_none, passthrough = ["no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "mix96", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: !llvm.ptr, %arg6: !llvm.ptr, %arg7: !llvm.ptr):
    %259 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %260 = "llvm.mlir.constant"() <{value = 50 : i96}> : () -> i96
    %261 = "llvm.mlir.constant"() <{value = 1 : i96}> : () -> i96
    %262 = "llvm.alloca"(%259) <{alignment = 4 : i64, elem_type = !llvm.ptr}> : (i32) -> !llvm.ptr
    %263 = "llvm.alloca"(%259) <{alignment = 8 : i64, elem_type = i128}> : (i32) -> !llvm.ptr
    %264 = "llvm.alloca"(%259) <{alignment = 8 : i64, elem_type = i128}> : (i32) -> !llvm.ptr
    "llvm.store"(%arg5, %262) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %265 = "llvm.load"(%arg6) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    %266 = "llvm.trunc"(%265) <{overflowFlags = 0 : i32}> : (i128) -> i96
    %267 = "llvm.load"(%arg7) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    %268 = "llvm.trunc"(%267) <{overflowFlags = 0 : i32}> : (i128) -> i96
    %269 = "llvm.sext"(%266) : (i96) -> i128
    "llvm.store"(%269, %263) <{alignment = 8 : i64, ordering = 0 : i64}> : (i128, !llvm.ptr) -> ()
    %270 = "llvm.sext"(%268) : (i96) -> i128
    "llvm.store"(%270, %264) <{alignment = 8 : i64, ordering = 0 : i64}> : (i128, !llvm.ptr) -> ()
    %271 = "llvm.load"(%263) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    %272 = "llvm.trunc"(%271) <{overflowFlags = 0 : i32}> : (i128) -> i96
    %273 = "llvm.load"(%264) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    %274 = "llvm.trunc"(%273) <{overflowFlags = 0 : i32}> : (i128) -> i96
    %275 = "llvm.mul"(%272, %274) <{overflowFlags = 0 : i32}> : (i96, i96) -> i96
    %276 = "llvm.load"(%263) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    %277 = "llvm.trunc"(%276) <{overflowFlags = 0 : i32}> : (i128) -> i96
    %278 = "llvm.ashr"(%277, %260) : (i96, i96) -> i96
    %279 = "llvm.sub"(%275, %278) <{overflowFlags = 0 : i32}> : (i96, i96) -> i96
    %280 = "llvm.load"(%263) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    %281 = "llvm.trunc"(%280) <{overflowFlags = 0 : i32}> : (i128) -> i96
    %282 = "llvm.load"(%264) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    %283 = "llvm.trunc"(%282) <{overflowFlags = 0 : i32}> : (i128) -> i96
    %284 = "llvm.or"(%283, %261) : (i96, i96) -> i96
    %285 = "llvm.sdiv"(%281, %284) : (i96, i96) -> i96
    %286 = "llvm.add"(%279, %285) <{overflowFlags = 1 : i32}> : (i96, i96) -> i96
    %287 = "llvm.sext"(%286) : (i96) -> i128
    "llvm.store"(%287, %arg5) <{alignment = 8 : i64, ordering = 0 : i64}> : (i128, !llvm.ptr) -> ()
    %288 = "llvm.load"(%arg5) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    %289 = "llvm.trunc"(%288) <{overflowFlags = 0 : i32}> : (i128) -> i96
    %290 = "llvm.sext"(%289) : (i96) -> i128
    "llvm.store"(%290, %arg5) <{alignment = 8 : i64, ordering = 0 : i64}> : (i128, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.noundef, llvm.zeroext}, {llvm.noundef, llvm.signext}, {llvm.noundef}], dso_local, frame_pointer = #llvm.framePointerKind<all>, function_type = !llvm.func<i48 (i48, i48, i32)>, linkage = #llvm.linkage<external>, no_inline, no_unwind, optimize_none, passthrough = ["no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], res_attrs = [{llvm.zeroext}], sym_name = "mix48", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i48, %arg3: i48, %arg4: i32):
    %229 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %230 = "llvm.mlir.constant"() <{value = 1 : i48}> : () -> i48
    %231 = "llvm.mlir.constant"() <{value = 1000 : i48}> : () -> i48
    %232 = "llvm.alloca"(%229) <{alignment = 8 : i64, elem_type = i64}> : (i32) -> !llvm.ptr
    %233 = "llvm.alloca"(%229) <{alignment = 8 : i64, elem_type = i64}> : (i32) -> !llvm.ptr
    %234 = "llvm.alloca"(%229) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %235 = "llvm.zext"(%arg2) : (i48) -> i64
    "llvm.store"(%235, %232) <{alignment = 8 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %236 = "llvm.sext"(%arg3) : (i48) -> i64
    "llvm.store"(%236, %233) <{alignment = 8 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    "llvm.store"(%arg4, %234) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %237 = "llvm.load"(%232) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    %238 = "llvm.trunc"(%237) <{overflowFlags = 0 : i32}> : (i64) -> i48
    %239 = "llvm.load"(%233) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    %240 = "llvm.trunc"(%239) <{overflowFlags = 0 : i32}> : (i64) -> i48
    %241 = "llvm.mul"(%238, %240) <{overflowFlags = 0 : i32}> : (i48, i48) -> i48
    %242 = "llvm.load"(%233) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    %243 = "llvm.trunc"(%242) <{overflowFlags = 0 : i32}> : (i64) -> i48
    %244 = "llvm.load"(%234) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %245 = "llvm.zext"(%244) : (i32) -> i48
    %246 = "llvm.ashr"(%243, %245) : (i48, i48) -> i48
    %247 = "llvm.add"(%241, %246) <{overflowFlags = 0 : i32}> : (i48, i48) -> i48
    %248 = "llvm.load"(%232) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    %249 = "llvm.trunc"(%248) <{overflowFlags = 0 : i32}> : (i64) -> i48
    %250 = "llvm.load"(%233) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    %251 = "llvm.trunc"(%250) <{overflowFlags = 0 : i32}> : (i64) -> i48
    %252 = "llvm.or"(%251, %230) : (i48, i48) -> i48
    %253 = "llvm.udiv"(%249, %252) : (i48, i48) -> i48
    %254 = "llvm.add"(%247, %253) <{overflowFlags = 0 : i32}> : (i48, i48) -> i48
    %255 = "llvm.load"(%233) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    %256 = "llvm.trunc"(%255) <{overflowFlags = 0 : i32}> : (i64) -> i48
    %257 = "llvm.srem"(%256, %231) : (i48, i48) -> i48
    %258 = "llvm.add"(%254, %257) <{overflowFlags = 0 : i32}> : (i48, i48) -> i48
    "llvm.return"(%258) : (i48) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, frame_pointer = #llvm.framePointerKind<all>, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, no_inline, no_unwind, optimize_none, passthrough = ["no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "main", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %48 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %49 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %50 = "llvm.mlir.constant"() <{value = 40 : i32}> : () -> i32
    %51 = "llvm.mlir.constant"() <{value = 1 : i128}> : () -> i128
    %52 = "llvm.mlir.constant"() <{value = 128 : i64}> : () -> i64
    %53 = "llvm.mlir.constant"() <{value = 33 : i32}> : () -> i32
    %54 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %55 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %56 = "llvm.mlir.constant"() <{value = 112 : i32}> : () -> i32
    %57 = "llvm.mlir.constant"() <{value = 48 : i32}> : () -> i32
    %58 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %59 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %60 = "llvm.mlir.constant"() <{value = 120 : i128}> : () -> i128
    %61 = "llvm.mlir.constant"() <{value = 64 : i112}> : () -> i112
    %62 = "llvm.alloca"(%48) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %63 = "llvm.alloca"(%48) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %64 = "llvm.alloca"(%48) <{alignment = 8 : i64, elem_type = i128}> : (i32) -> !llvm.ptr
    %65 = "llvm.alloca"(%48) <{alignment = 8 : i64, elem_type = i128}> : (i32) -> !llvm.ptr
    %66 = "llvm.alloca"(%48) <{alignment = 8 : i64, elem_type = i128}> : (i32) -> !llvm.ptr
    %67 = "llvm.alloca"(%48) <{alignment = 8 : i64, elem_type = i128}> : (i32) -> !llvm.ptr
    %68 = "llvm.alloca"(%48) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %69 = "llvm.alloca"(%48) <{alignment = 8 : i64, elem_type = i128}> : (i32) -> !llvm.ptr
    %70 = "llvm.alloca"(%48) <{alignment = 8 : i64, elem_type = i128}> : (i32) -> !llvm.ptr
    %71 = "llvm.alloca"(%48) <{alignment = 8 : i64, elem_type = i128}> : (i32) -> !llvm.ptr
    %72 = "llvm.alloca"(%48) <{alignment = 8 : i64, elem_type = i128}> : (i32) -> !llvm.ptr
    %73 = "llvm.alloca"(%48) <{alignment = 8 : i64, elem_type = i128}> : (i32) -> !llvm.ptr
    %74 = "llvm.alloca"(%48) <{alignment = 8 : i64, elem_type = i128}> : (i32) -> !llvm.ptr
    %75 = "llvm.alloca"(%48) <{alignment = 8 : i64, elem_type = i128}> : (i32) -> !llvm.ptr
    %76 = "llvm.alloca"(%48) <{alignment = 8 : i64, elem_type = i128}> : (i32) -> !llvm.ptr
    %77 = "llvm.alloca"(%48) <{alignment = 8 : i64, elem_type = i128}> : (i32) -> !llvm.ptr
    %78 = "llvm.alloca"(%48) <{alignment = 8 : i64, elem_type = i128}> : (i32) -> !llvm.ptr
    %79 = "llvm.alloca"(%48) <{alignment = 8 : i64, elem_type = i128}> : (i32) -> !llvm.ptr
    %80 = "llvm.alloca"(%48) <{alignment = 8 : i64, elem_type = i128}> : (i32) -> !llvm.ptr
    %81 = "llvm.alloca"(%48) <{alignment = 8 : i64, elem_type = i128}> : (i32) -> !llvm.ptr
    %82 = "llvm.alloca"(%48) <{alignment = 8 : i64, elem_type = i128}> : (i32) -> !llvm.ptr
    %83 = "llvm.alloca"(%48) <{alignment = 8 : i64, elem_type = i128}> : (i32) -> !llvm.ptr
    %84 = "llvm.alloca"(%48) <{alignment = 8 : i64, elem_type = i128}> : (i32) -> !llvm.ptr
    %85 = "llvm.alloca"(%48) <{alignment = 8 : i64, elem_type = i128}> : (i32) -> !llvm.ptr
    %86 = "llvm.alloca"(%48) <{alignment = 8 : i64, elem_type = i128}> : (i32) -> !llvm.ptr
    %87 = "llvm.alloca"(%48) <{alignment = 8 : i64, elem_type = i128}> : (i32) -> !llvm.ptr
    %88 = "llvm.alloca"(%48) <{alignment = 8 : i64, elem_type = i128}> : (i32) -> !llvm.ptr
    %89 = "llvm.alloca"(%48) <{alignment = 8 : i64, elem_type = i128}> : (i32) -> !llvm.ptr
    %90 = "llvm.alloca"(%48) <{alignment = 8 : i64, elem_type = i128}> : (i32) -> !llvm.ptr
    "llvm.store"(%49, %62) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.store"(%49, %63) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // 2 preds: ^bb0, ^bb3
    %91 = "llvm.load"(%63) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %92 = "llvm.icmp"(%91, %50) <{predicate = 2 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%92)[^bb2, ^bb4] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb2:  // pred: ^bb1
    "llvm.call"(%65) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.align = 8 : i64, llvm.sret = i128}], callee = @make128, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> ()
    %93 = "llvm.load"(%65) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    "llvm.store"(%93, %64) <{alignment = 8 : i64, ordering = 0 : i64}> : (i128, !llvm.ptr) -> ()
    "llvm.call"(%67) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.align = 8 : i64, llvm.sret = i128}], callee = @make128, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> ()
    %94 = "llvm.load"(%67) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    %95 = "llvm.or"(%94, %51) : (i128, i128) -> i128
    "llvm.store"(%95, %66) <{alignment = 8 : i64, ordering = 0 : i64}> : (i128, !llvm.ptr) -> ()
    %96 = "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @next, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> i64
    %97 = "llvm.urem"(%96, %52) : (i64, i64) -> i64
    %98 = "llvm.trunc"(%97) <{overflowFlags = 0 : i32}> : (i64) -> i32
    "llvm.store"(%98, %68) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %99 = "llvm.load"(%62) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %100 = "llvm.mul"(%99, %53) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %101 = "llvm.load"(%64) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    %102 = "llvm.load"(%66) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    %103 = "llvm.load"(%68) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.store"(%101, %70) <{alignment = 8 : i64, ordering = 0 : i64}> : (i128, !llvm.ptr) -> ()
    "llvm.store"(%102, %71) <{alignment = 8 : i64, ordering = 0 : i64}> : (i128, !llvm.ptr) -> ()
    "llvm.call"(%69, %70, %71, %103) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.align = 8 : i64, llvm.sret = i128}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @mix128, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>}> : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    %104 = "llvm.load"(%69) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    "llvm.store"(%104, %72) <{alignment = 8 : i64, ordering = 0 : i64}> : (i128, !llvm.ptr) -> ()
    %105 = "llvm.call"(%72) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}], callee = @fold, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> i32
    %106 = "llvm.add"(%100, %105) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.store"(%106, %62) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %107 = "llvm.load"(%62) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %108 = "llvm.mul"(%107, %53) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %109 = "llvm.load"(%64) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    %110 = "llvm.load"(%66) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    %111 = "llvm.load"(%63) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %112 = "llvm.mul"(%111, %54) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %113 = "llvm.zext"(%112) : (i32) -> i128
    %114 = "llvm.lshr"(%110, %113) : (i128, i128) -> i128
    %115 = "llvm.or"(%114, %51) : (i128, i128) -> i128
    "llvm.store"(%109, %74) <{alignment = 8 : i64, ordering = 0 : i64}> : (i128, !llvm.ptr) -> ()
    "llvm.store"(%115, %75) <{alignment = 8 : i64, ordering = 0 : i64}> : (i128, !llvm.ptr) -> ()
    "llvm.call"(%73, %74, %75) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.align = 8 : i64, llvm.sret = i128}, {llvm.noundef}, {llvm.noundef}], callee = @sdiv128, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (!llvm.ptr, !llvm.ptr, !llvm.ptr) -> ()
    %116 = "llvm.load"(%73) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    "llvm.store"(%116, %76) <{alignment = 8 : i64, ordering = 0 : i64}> : (i128, !llvm.ptr) -> ()
    %117 = "llvm.call"(%76) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}], callee = @fold, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> i32
    %118 = "llvm.add"(%108, %117) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.store"(%118, %62) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %119 = "llvm.load"(%62) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %120 = "llvm.mul"(%119, %53) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %121 = "llvm.load"(%64) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    %122 = "llvm.load"(%66) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    %123 = "llvm.load"(%63) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %124 = "llvm.mul"(%123, %54) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %125 = "llvm.zext"(%124) : (i32) -> i128
    %126 = "llvm.lshr"(%122, %125) : (i128, i128) -> i128
    %127 = "llvm.or"(%126, %51) : (i128, i128) -> i128
    "llvm.store"(%121, %78) <{alignment = 8 : i64, ordering = 0 : i64}> : (i128, !llvm.ptr) -> ()
    "llvm.store"(%127, %79) <{alignment = 8 : i64, ordering = 0 : i64}> : (i128, !llvm.ptr) -> ()
    "llvm.call"(%77, %78, %79) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.align = 8 : i64, llvm.sret = i128}, {llvm.noundef}, {llvm.noundef}], callee = @udiv128, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (!llvm.ptr, !llvm.ptr, !llvm.ptr) -> ()
    %128 = "llvm.load"(%77) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    "llvm.store"(%128, %80) <{alignment = 8 : i64, ordering = 0 : i64}> : (i128, !llvm.ptr) -> ()
    %129 = "llvm.call"(%80) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}], callee = @fold, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> i32
    %130 = "llvm.add"(%120, %129) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.store"(%130, %62) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %131 = "llvm.load"(%64) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    %132 = "llvm.trunc"(%131) <{overflowFlags = 0 : i32}> : (i128) -> i112
    %133 = "llvm.sext"(%132) : (i112) -> i128
    "llvm.store"(%133, %81) <{alignment = 8 : i64, ordering = 0 : i64}> : (i128, !llvm.ptr) -> ()
    %134 = "llvm.load"(%66) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    %135 = "llvm.load"(%63) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %136 = "llvm.mul"(%135, %55) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %137 = "llvm.zext"(%136) : (i32) -> i128
    %138 = "llvm.lshr"(%134, %137) : (i128, i128) -> i128
    %139 = "llvm.trunc"(%138) <{overflowFlags = 0 : i32}> : (i128) -> i112
    %140 = "llvm.sext"(%139) : (i112) -> i128
    "llvm.store"(%140, %82) <{alignment = 8 : i64, ordering = 0 : i64}> : (i128, !llvm.ptr) -> ()
    %141 = "llvm.load"(%62) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %142 = "llvm.mul"(%141, %53) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %143 = "llvm.load"(%81) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    %144 = "llvm.trunc"(%143) <{overflowFlags = 0 : i32}> : (i128) -> i112
    %145 = "llvm.load"(%82) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    %146 = "llvm.trunc"(%145) <{overflowFlags = 0 : i32}> : (i128) -> i112
    %147 = "llvm.load"(%68) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %148 = "llvm.srem"(%147, %56) : (i32, i32) -> i32
    %149 = "llvm.sext"(%144) : (i112) -> i128
    "llvm.store"(%149, %84) <{alignment = 8 : i64, ordering = 0 : i64}> : (i128, !llvm.ptr) -> ()
    %150 = "llvm.sext"(%146) : (i112) -> i128
    "llvm.store"(%150, %85) <{alignment = 8 : i64, ordering = 0 : i64}> : (i128, !llvm.ptr) -> ()
    "llvm.call"(%83, %84, %85, %148) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.align = 8 : i64, llvm.sret = i128}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @mix112, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>}> : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    %151 = "llvm.load"(%83) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    %152 = "llvm.trunc"(%151) <{overflowFlags = 0 : i32}> : (i128) -> i112
    %153 = "llvm.sext"(%152) : (i112) -> i128
    "llvm.store"(%153, %86) <{alignment = 8 : i64, ordering = 0 : i64}> : (i128, !llvm.ptr) -> ()
    %154 = "llvm.call"(%86) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}], callee = @fold, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> i32
    %155 = "llvm.add"(%142, %154) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.store"(%155, %62) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %156 = "llvm.load"(%62) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %157 = "llvm.mul"(%156, %53) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %158 = "llvm.load"(%64) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    %159 = "llvm.trunc"(%158) <{overflowFlags = 0 : i32}> : (i128) -> i96
    %160 = "llvm.load"(%66) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    %161 = "llvm.trunc"(%160) <{overflowFlags = 0 : i32}> : (i128) -> i96
    %162 = "llvm.sext"(%159) : (i96) -> i128
    "llvm.store"(%162, %88) <{alignment = 8 : i64, ordering = 0 : i64}> : (i128, !llvm.ptr) -> ()
    %163 = "llvm.sext"(%161) : (i96) -> i128
    "llvm.store"(%163, %89) <{alignment = 8 : i64, ordering = 0 : i64}> : (i128, !llvm.ptr) -> ()
    "llvm.call"(%87, %88, %89) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.align = 8 : i64, llvm.sret = i128}, {llvm.noundef}, {llvm.noundef}], callee = @mix96, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (!llvm.ptr, !llvm.ptr, !llvm.ptr) -> ()
    %164 = "llvm.load"(%87) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    %165 = "llvm.trunc"(%164) <{overflowFlags = 0 : i32}> : (i128) -> i96
    %166 = "llvm.sext"(%165) : (i96) -> i128
    "llvm.store"(%166, %90) <{alignment = 8 : i64, ordering = 0 : i64}> : (i128, !llvm.ptr) -> ()
    %167 = "llvm.call"(%90) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}], callee = @fold, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> i32
    %168 = "llvm.add"(%157, %167) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.store"(%168, %62) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %169 = "llvm.load"(%62) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %170 = "llvm.mul"(%169, %53) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %171 = "llvm.load"(%64) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    %172 = "llvm.trunc"(%171) <{overflowFlags = 0 : i32}> : (i128) -> i48
    %173 = "llvm.load"(%66) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    %174 = "llvm.trunc"(%173) <{overflowFlags = 0 : i32}> : (i128) -> i48
    %175 = "llvm.load"(%68) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %176 = "llvm.srem"(%175, %57) : (i32, i32) -> i32
    %177 = "llvm.call"(%172, %174, %176) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef, llvm.zeroext}, {llvm.noundef, llvm.signext}, {llvm.noundef}], callee = @mix48, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>, res_attrs = [{llvm.zeroext}]}> : (i48, i48, i32) -> i48
    %178 = "llvm.trunc"(%177) <{overflowFlags = 0 : i32}> : (i48) -> i32
    %179 = "llvm.add"(%170, %178) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.store"(%179, %62) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %180 = "llvm.load"(%64) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    %181 = "llvm.load"(%66) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    %182 = "llvm.icmp"(%180, %181) <{predicate = 6 : i64}> : (i128, i128) -> i1
    %183 = "llvm.zext"(%182) : (i1) -> i32
    %184 = "llvm.load"(%64) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    %185 = "llvm.load"(%66) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    %186 = "llvm.icmp"(%184, %185) <{predicate = 2 : i64}> : (i128, i128) -> i1
    %187 = "llvm.zext"(%186) : (i1) -> i32
    %188 = "llvm.mul"(%187, %55) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %189 = "llvm.add"(%183, %188) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %190 = "llvm.load"(%81) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    %191 = "llvm.trunc"(%190) <{overflowFlags = 0 : i32}> : (i128) -> i112
    %192 = "llvm.load"(%82) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    %193 = "llvm.trunc"(%192) <{overflowFlags = 0 : i32}> : (i128) -> i112
    %194 = "llvm.icmp"(%191, %193) <{predicate = 5 : i64}> : (i112, i112) -> i1
    %195 = "llvm.zext"(%194) : (i1) -> i32
    %196 = "llvm.mul"(%195, %58) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %197 = "llvm.add"(%189, %196) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %198 = "llvm.load"(%64) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    %199 = "llvm.trunc"(%198) <{overflowFlags = 0 : i32}> : (i128) -> i96
    %200 = "llvm.load"(%66) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    %201 = "llvm.trunc"(%200) <{overflowFlags = 0 : i32}> : (i128) -> i96
    %202 = "llvm.icmp"(%199, %201) <{predicate = 4 : i64}> : (i96, i96) -> i1
    %203 = "llvm.zext"(%202) : (i1) -> i32
    %204 = "llvm.mul"(%203, %59) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %205 = "llvm.add"(%197, %204) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %206 = "llvm.load"(%64) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    %207 = "llvm.ashr"(%206, %60) : (i128, i128) -> i128
    %208 = "llvm.trunc"(%207) <{overflowFlags = 0 : i32}> : (i128) -> i8
    %209 = "llvm.sext"(%208) : (i8) -> i32
    %210 = "llvm.add"(%205, %209) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %211 = "llvm.load"(%62) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %212 = "llvm.add"(%211, %210) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.store"(%212, %62) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %213 = "llvm.load"(%81) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    %214 = "llvm.trunc"(%213) <{overflowFlags = 0 : i32}> : (i128) -> i112
    %215 = "llvm.ashr"(%214, %61) : (i112, i112) -> i112
    %216 = "llvm.trunc"(%215) <{overflowFlags = 0 : i32}> : (i112) -> i48
    %217 = "llvm.trunc"(%216) <{overflowFlags = 0 : i32}> : (i48) -> i32
    %218 = "llvm.load"(%82) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    %219 = "llvm.trunc"(%218) <{overflowFlags = 0 : i32}> : (i128) -> i112
    %220 = "llvm.sext"(%219) : (i112) -> i128
    %221 = "llvm.trunc"(%220) <{overflowFlags = 0 : i32}> : (i128) -> i48
    %222 = "llvm.trunc"(%221) <{overflowFlags = 0 : i32}> : (i48) -> i32
    %223 = "llvm.add"(%217, %222) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %224 = "llvm.load"(%62) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %225 = "llvm.add"(%224, %223) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.store"(%225, %62) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb3] : () -> ()
  ^bb3:  // pred: ^bb2
    %226 = "llvm.load"(%63) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %227 = "llvm.add"(%226, %48) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.store"(%227, %63) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb1] <{loop_annotation = #loop_annotation}> : () -> ()
  ^bb4:  // pred: ^bb1
    %228 = "llvm.load"(%62) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.return"(%228) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.align = 8 : i64, llvm.noalias, llvm.sret = i128}], dso_local, frame_pointer = #llvm.framePointerKind<all>, function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<internal>, no_inline, no_unwind, optimize_none, passthrough = ["no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "make128", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: !llvm.ptr):
    %38 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %39 = "llvm.mlir.constant"() <{value = 64 : i128}> : () -> i128
    %40 = "llvm.alloca"(%38) <{alignment = 4 : i64, elem_type = !llvm.ptr}> : (i32) -> !llvm.ptr
    "llvm.store"(%arg1, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %41 = "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @next, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> i64
    %42 = "llvm.zext"(%41) : (i64) -> i128
    %43 = "llvm.shl"(%42, %39) <{overflowFlags = 0 : i32}> : (i128, i128) -> i128
    %44 = "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @next, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> i64
    %45 = "llvm.zext"(%44) : (i64) -> i128
    %46 = "llvm.or"(%43, %45) : (i128, i128) -> i128
    "llvm.store"(%46, %arg1) <{alignment = 8 : i64, ordering = 0 : i64}> : (i128, !llvm.ptr) -> ()
    %47 = "llvm.load"(%arg1) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    "llvm.store"(%47, %arg1) <{alignment = 8 : i64, ordering = 0 : i64}> : (i128, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, frame_pointer = #llvm.framePointerKind<all>, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<internal>, no_inline, no_unwind, optimize_none, passthrough = ["no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "next", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %21 = "llvm.mlir.addressof"() <{global_name = @s}> : () -> !llvm.ptr
    %22 = "llvm.mlir.constant"() <{value = 13 : i64}> : () -> i64
    %23 = "llvm.mlir.constant"() <{value = 7 : i64}> : () -> i64
    %24 = "llvm.mlir.constant"() <{value = 17 : i64}> : () -> i64
    %25 = "llvm.load"(%21) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    %26 = "llvm.shl"(%25, %22) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %27 = "llvm.load"(%21) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    %28 = "llvm.xor"(%27, %26) : (i64, i64) -> i64
    "llvm.store"(%28, %21) <{alignment = 8 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %29 = "llvm.load"(%21) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    %30 = "llvm.lshr"(%29, %23) : (i64, i64) -> i64
    %31 = "llvm.load"(%21) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    %32 = "llvm.xor"(%31, %30) : (i64, i64) -> i64
    "llvm.store"(%32, %21) <{alignment = 8 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %33 = "llvm.load"(%21) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    %34 = "llvm.shl"(%33, %24) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %35 = "llvm.load"(%21) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    %36 = "llvm.xor"(%35, %34) : (i64, i64) -> i64
    "llvm.store"(%36, %21) <{alignment = 8 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %37 = "llvm.load"(%21) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    "llvm.return"(%37) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.noundef}], dso_local, frame_pointer = #llvm.framePointerKind<all>, function_type = !llvm.func<i32 (ptr)>, linkage = #llvm.linkage<internal>, no_inline, no_unwind, optimize_none, passthrough = ["no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "fold", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: !llvm.ptr):
    %0 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %2 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %3 = "llvm.mlir.constant"() <{value = 31 : i32}> : () -> i32
    %4 = "llvm.mlir.constant"() <{value = 32 : i128}> : () -> i128
    %5 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = i128}> : (i32) -> !llvm.ptr
    %6 = "llvm.alloca"(%0) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %7 = "llvm.alloca"(%0) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %8 = "llvm.load"(%arg0) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    "llvm.store"(%8, %5) <{alignment = 8 : i64, ordering = 0 : i64}> : (i128, !llvm.ptr) -> ()
    "llvm.store"(%1, %6) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.store"(%1, %7) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // 2 preds: ^bb0, ^bb3
    %9 = "llvm.load"(%7) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %10 = "llvm.icmp"(%9, %2) <{predicate = 2 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%10)[^bb2, ^bb4] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb2:  // pred: ^bb1
    %11 = "llvm.load"(%6) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %12 = "llvm.mul"(%11, %3) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %13 = "llvm.load"(%5) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    %14 = "llvm.trunc"(%13) <{overflowFlags = 0 : i32}> : (i128) -> i32
    %15 = "llvm.add"(%12, %14) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.store"(%15, %6) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %16 = "llvm.load"(%5) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    %17 = "llvm.lshr"(%16, %4) : (i128, i128) -> i128
    "llvm.store"(%17, %5) <{alignment = 8 : i64, ordering = 0 : i64}> : (i128, !llvm.ptr) -> ()
    "llvm.br"()[^bb3] : () -> ()
  ^bb3:  // pred: ^bb2
    %18 = "llvm.load"(%7) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %19 = "llvm.add"(%18, %0) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.store"(%19, %7) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb1] <{loop_annotation = #loop_annotation}> : () -> ()
  ^bb4:  // pred: ^bb1
    %20 = "llvm.load"(%6) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.return"(%20) : (i32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<32> : vector<4xi64>, i64 = dense<64> : vector<2xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little", "dlti.mangling_mode" = "e", "dlti.legal_int_widths" = array<i32: 32>, "dlti.stack_alignment" = 128 : i64>, llvm.ident = "clang version 22.1.8", llvm.module_asm = [], llvm.target_triple = "riscv32-unknown-unknown-elf"} : () -> ()

