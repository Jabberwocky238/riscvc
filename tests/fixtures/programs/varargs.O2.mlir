#loop_annotation = #llvm.loop_annotation<mustProgress = true>
#tbaa_root = #llvm.tbaa_root<id = "Simple C/C++ TBAA">
#tbaa_type_desc = #llvm.tbaa_type_desc<id = "omnipotent char", members = {<#tbaa_root, 0>}>
#tbaa_tag = #llvm.tbaa_tag<base_type = #tbaa_type_desc, access_type = #tbaa_type_desc, offset = 0>
#tbaa_type_desc1 = #llvm.tbaa_type_desc<id = "int", members = {<#tbaa_type_desc, 0>}>
#tbaa_type_desc2 = #llvm.tbaa_type_desc<id = "long long", members = {<#tbaa_type_desc, 0>}>
#tbaa_type_desc3 = #llvm.tbaa_type_desc<id = "double", members = {<#tbaa_type_desc, 0>}>
#tbaa_type_desc4 = #llvm.tbaa_type_desc<id = "any pointer", members = {<#tbaa_type_desc, 0>}>
#tbaa_tag1 = #llvm.tbaa_tag<base_type = #tbaa_type_desc1, access_type = #tbaa_type_desc1, offset = 0>
#tbaa_tag2 = #llvm.tbaa_tag<base_type = #tbaa_type_desc2, access_type = #tbaa_type_desc2, offset = 0>
#tbaa_tag3 = #llvm.tbaa_tag<base_type = #tbaa_type_desc3, access_type = #tbaa_type_desc3, offset = 0>
#tbaa_type_desc5 = #llvm.tbaa_type_desc<id = "p1 omnipotent char", members = {<#tbaa_type_desc4, 0>}>
#tbaa_tag4 = #llvm.tbaa_tag<base_type = #tbaa_type_desc5, access_type = #tbaa_type_desc5, offset = 0>
"builtin.module"() ({
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 1 : i64, dso_local, global_type = !llvm.array<256 x i8>, linkage = #llvm.linkage<internal>, sym_name = "buf", unnamed_addr = 2 : i64, value = dense<0> : tensor<256xi8>, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 1 : i64, constant, dso_local, global_type = !llvm.array<18 x i8>, linkage = #llvm.linkage<private>, sym_name = ".str", unnamed_addr = 2 : i64, value = "x=%d y=%d %s%c|%d\00", visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 1 : i64, constant, dso_local, global_type = !llvm.array<4 x i8>, linkage = #llvm.linkage<private>, sym_name = ".str.1", unnamed_addr = 2 : i64, value = "abc\00", visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<error, "wchar_size", 4 : i32>, #llvm.mlir.module_flag<error, "target-abi", "ilp32f">, #llvm.mlir.module_flag<min, "SmallDataLimit", 0 : i32>]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, no_unwind, passthrough = ["nofree", "norecurse", "nosync", "no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "main", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcalculet", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 1 : i64, visibility_ = 0 : i64}> ({
    %125 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %126 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %127 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %128 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %129 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %130 = "llvm.mlir.constant"() <{value = 9 : i32}> : () -> i32
    %131 = "llvm.mlir.constant"() <{value = -8 : i32}> : () -> i32
    %132 = "llvm.mlir.constant"() <{value = 7 : i32}> : () -> i32
    %133 = "llvm.mlir.constant"() <{value = -6 : i32}> : () -> i32
    %134 = "llvm.mlir.constant"() <{value = -4 : i32}> : () -> i32
    %135 = "llvm.mlir.constant"() <{value = -2 : i32}> : () -> i32
    %136 = "llvm.mlir.poison"() : () -> i32
    %137 = "llvm.mlir.constant"() <{value = 10 : i32}> : () -> i32
    %138 = "llvm.mlir.constant"() <{value = 4886718345 : i64}> : () -> i64
    %139 = "llvm.mlir.constant"() <{value = 2.500000e+00 : f64}> : () -> f64
    %140 = "llvm.mlir.constant"() <{value = -3 : i32}> : () -> i32
    %141 = "llvm.mlir.constant"() <{value = -1 : i64}> : () -> i64
    %142 = "llvm.mlir.constant"() <{value = 1.250000e-01 : f64}> : () -> f64
    %143 = "llvm.mlir.constant"() <{value = 99 : i32}> : () -> i32
    %144 = "llvm.mlir.constant"() <{value = 32 : i64}> : () -> i64
    %145 = "llvm.mlir.poison"() : () -> !llvm.ptr
    %146 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %147 = "llvm.mlir.constant"() <{value = -2147483648 : i32}> : () -> i32
    %148 = "llvm.mlir.addressof"() <{global_name = @".str.1"}> : () -> !llvm.ptr
    %149 = "llvm.mlir.constant"() <{value = 33 : i32}> : () -> i32
    %150 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %151 = "llvm.mlir.constant"() <{value = 37 : i32}> : () -> i32
    %152 = "llvm.mlir.addressof"() <{global_name = @buf}> : () -> !llvm.ptr
    %153 = "llvm.call"(%125, %126, %127, %128, %129, %125) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @sum, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 6, 0>, var_callee_type = !llvm.func<i32 (i32, ...)>}> : (i32, i32, i32, i32, i32, i32) -> i32
    %154 = "llvm.call"(%130, %130, %131, %132, %133, %125, %134, %128, %135, %126) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @sum, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 10, 0>, var_callee_type = !llvm.func<i32 (i32, ...)>}> : (i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) -> i32
    %155 = "llvm.mul"(%154, %128) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %156 = "llvm.add"(%155, %153) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %157 = "llvm.call"(%136, %137, %138, %139, %140, %141, %142, %143) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, arg_attrs = [{}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @mixed, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 8, 0>, var_callee_type = !llvm.func<i64 (i32, ...)>}> : (i32, i32, i64, f64, i32, i64, f64, i32) -> i64
    %158 = "llvm.lshr"(%157, %144) : (i64, i64) -> i64
    %159 = "llvm.xor"(%158, %157) : (i64, i64) -> i64
    %160 = "llvm.trunc"(%159) <{overflowFlags = 0 : i32}> : (i64) -> i32
    %161 = "llvm.add"(%156, %160) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %162 = "llvm.call"(%145, %145, %146, %147, %148, %149, %150) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, arg_attrs = [{llvm.nonnull}, {llvm.nonnull}, {llvm.noundef}, {llvm.noundef}, {llvm.nonnull, llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @fmt, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 7, 0>, var_callee_type = !llvm.func<i32 (ptr, ptr, ...)>}> : (!llvm.ptr, !llvm.ptr, i32, i32, !llvm.ptr, i32, i32) -> i32
    %163 = "llvm.icmp"(%162, %150) <{predicate = 4 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%163, %150, %161, %161)[^bb2, ^bb1] <{operandSegmentSizes = array<i32: 1, 2, 1>}> : (i1, i32, i32, i32) -> ()
  ^bb1(%164: i32):  // 2 preds: ^bb0, ^bb2
    "llvm.return"(%164) : (i32) -> ()
  ^bb2(%165: i32, %166: i32):  // 2 preds: ^bb0, ^bb2
    %167 = "llvm.mul"(%166, %151) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %168 = "llvm.getelementptr"(%152, %165) <{elem_type = i8, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %169 = "llvm.load"(%168) <{alignment = 1 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> i8
    %170 = "llvm.zext"(%169) : (i8) -> i32
    %171 = "llvm.add"(%167, %170) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %172 = "llvm.add"(%165, %126) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    %173 = "llvm.icmp"(%172, %162) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%173, %171, %172, %171)[^bb1, ^bb2] <{loop_annotation = #loop_annotation, operandSegmentSizes = array<i32: 1, 1, 2>}> : (i1, i32, i32, i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.noundef, llvm.range = #llvm.constant_range<i32, 5, 10>}], dso_local, function_type = !llvm.func<i32 (i32, ...)>, linkage = #llvm.linkage<internal>, no_unwind, passthrough = ["nofree", "norecurse", "nosync", "no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "sum", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcalculet", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 2 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: i32):
    %111 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %112 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %113 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %114 = "llvm.alloca"(%111) <{alignment = 4 : i64, elem_type = !llvm.ptr}> : (i32) -> !llvm.ptr
    "llvm.intr.lifetime.start"(%114) : (!llvm.ptr) -> ()
    "llvm.intr.vastart"(%114) : (!llvm.ptr) -> ()
    %115 = "llvm.load"(%114) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.ptr
    "llvm.br"(%112, %112, %115)[^bb2] : (i32, i32, !llvm.ptr) -> ()
  ^bb1:  // pred: ^bb2
    "llvm.intr.vaend"(%114) : (!llvm.ptr) -> ()
    "llvm.intr.lifetime.end"(%114) : (!llvm.ptr) -> ()
    "llvm.return"(%123) : (i32) -> ()
  ^bb2(%116: i32, %117: i32, %118: !llvm.ptr):  // 2 preds: ^bb0, ^bb2
    %119 = "llvm.getelementptr"(%118, %113) <{elem_type = i8, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%119, %114) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %120 = "llvm.load"(%118) <{alignment = 4 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag1]}> : (!llvm.ptr) -> i32
    %121 = "llvm.add"(%116, %111) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    %122 = "llvm.mul"(%120, %121) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %123 = "llvm.add"(%122, %117) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %124 = "llvm.icmp"(%121, %arg3) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%124, %121, %123, %119)[^bb1, ^bb2] <{loop_annotation = #loop_annotation, operandSegmentSizes = array<i32: 1, 0, 3>}> : (i1, i32, i32, !llvm.ptr) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<i64 (i32, ...)>, linkage = #llvm.linkage<internal>, no_unwind, passthrough = ["mustprogress", "nofree", "norecurse", "nosync", "no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "mixed", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcalculet", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 2 : i64, visibility_ = 0 : i64, will_return}> ({
  ^bb0(%arg2: i32):
    %69 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %70 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %71 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %72 = "llvm.mlir.constant"() <{value = -8 : i32}> : () -> i32
    %73 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %74 = "llvm.mlir.constant"() <{value = 16 : i32}> : () -> i32
    %75 = "llvm.mlir.constant"() <{value = 24 : i32}> : () -> i32
    %76 = "llvm.mlir.constant"() <{value = 32 : i32}> : () -> i32
    %77 = "llvm.mlir.constant"() <{value = 40 : i32}> : () -> i32
    %78 = "llvm.mlir.constant"() <{value = 44 : i32}> : () -> i32
    %79 = "llvm.mlir.constant"() <{value = 1.000000e+02 : f64}> : () -> f64
    %80 = "llvm.alloca"(%69) <{alignment = 4 : i64, elem_type = !llvm.ptr}> : (i32) -> !llvm.ptr
    "llvm.intr.lifetime.start"(%80) : (!llvm.ptr) -> ()
    "llvm.intr.vastart"(%80) : (!llvm.ptr) -> ()
    %81 = "llvm.load"(%80) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.ptr
    %82 = "llvm.getelementptr"(%81, %70) <{elem_type = i8, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%82, %80) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %83 = "llvm.load"(%81) <{alignment = 4 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag1]}> : (!llvm.ptr) -> i32
    %84 = "llvm.getelementptr"(%81, %71) <{elem_type = i8, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %85 = "llvm.intr.ptrmask"(%84, %72) : (!llvm.ptr, i32) -> !llvm.ptr
    %86 = "llvm.load"(%85) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag2]}> : (!llvm.ptr) -> i64
    %87 = "llvm.getelementptr"(%85, %73) <{elem_type = i8, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %88 = "llvm.getelementptr"(%85, %74) <{elem_type = i8, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %89 = "llvm.load"(%87) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag3]}> : (!llvm.ptr) -> f64
    %90 = "llvm.load"(%88) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag1]}> : (!llvm.ptr) -> i32
    %91 = "llvm.getelementptr"(%85, %75) <{elem_type = i8, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %92 = "llvm.load"(%91) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag2]}> : (!llvm.ptr) -> i64
    %93 = "llvm.getelementptr"(%85, %76) <{elem_type = i8, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %94 = "llvm.getelementptr"(%85, %77) <{elem_type = i8, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %95 = "llvm.load"(%93) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag3]}> : (!llvm.ptr) -> f64
    %96 = "llvm.getelementptr"(%85, %78) <{elem_type = i8, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%96, %80) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %97 = "llvm.sext"(%83) : (i32) -> i64
    %98 = "llvm.xor"(%86, %97) : (i64, i64) -> i64
    %99 = "llvm.fmul"(%89, %79) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %100 = "llvm.fptosi"(%99) : (f64) -> i64
    %101 = "llvm.add"(%98, %100) <{overflowFlags = 1 : i32}> : (i64, i64) -> i64
    %102 = "llvm.sext"(%90) : (i32) -> i64
    %103 = "llvm.add"(%101, %102) <{overflowFlags = 1 : i32}> : (i64, i64) -> i64
    %104 = "llvm.xor"(%92, %103) : (i64, i64) -> i64
    %105 = "llvm.fmul"(%95, %79) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %106 = "llvm.fptosi"(%105) : (f64) -> i64
    %107 = "llvm.add"(%104, %106) <{overflowFlags = 1 : i32}> : (i64, i64) -> i64
    %108 = "llvm.load"(%94) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag1]}> : (!llvm.ptr) -> i32
    %109 = "llvm.sext"(%108) : (i32) -> i64
    %110 = "llvm.add"(%107, %109) <{overflowFlags = 1 : i32}> : (i64, i64) -> i64
    "llvm.intr.vaend"(%80) : (!llvm.ptr) -> ()
    "llvm.intr.lifetime.end"(%80) : (!llvm.ptr) -> ()
    "llvm.return"(%110) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.nocapture, llvm.readnone}, {llvm.nocapture, llvm.readnone}], dso_local, function_type = !llvm.func<i32 (ptr, ptr, ...)>, linkage = #llvm.linkage<internal>, no_unwind, passthrough = ["nofree", "norecurse", "nosync", "no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "fmt", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcalculet", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 2 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: !llvm.ptr, %arg1: !llvm.ptr):
    %0 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %2 = "llvm.mlir.addressof"() <{global_name = @".str"}> : () -> !llvm.ptr
    %3 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %4 = "llvm.mlir.addressof"() <{global_name = @buf}> : () -> !llvm.ptr
    %5 = "llvm.mlir.constant"() <{value = 0 : i8}> : () -> i8
    %6 = "llvm.mlir.constant"() <{value = 10 : i32}> : () -> i32
    %7 = "llvm.mlir.constant"() <{value = 48 : i8}> : () -> i8
    %8 = "llvm.mlir.constant"() <{value = 45 : i8}> : () -> i8
    %9 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %10 = "llvm.alloca"(%0) <{alignment = 4 : i64, elem_type = !llvm.ptr}> : (i32) -> !llvm.ptr
    %11 = "llvm.alloca"(%0) <{alignment = 1 : i64, elem_type = !llvm.array<12 x i8>}> : (i32) -> !llvm.ptr
    "llvm.intr.lifetime.start"(%10) : (!llvm.ptr) -> ()
    "llvm.intr.vastart"(%10) : (!llvm.ptr) -> ()
    %12 = "llvm.load"(%10) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.ptr
    "llvm.br"(%12, %1, %2)[^bb1] : (!llvm.ptr, i32, !llvm.ptr) -> ()
  ^bb1(%13: !llvm.ptr, %14: i32, %15: !llvm.ptr):  // 2 preds: ^bb0, ^bb14
    %16 = "llvm.load"(%15) <{alignment = 1 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> i8
    "llvm.switch"(%16)[^bb2, ^bb15, ^bb3] <{case_operand_segments = array<i32: 0, 0>, case_values = dense<[0, 37]> : vector<2xi8>, operandSegmentSizes = array<i32: 1, 0, 0>}> : (i8) -> ()
  ^bb2:  // pred: ^bb1
    %17 = "llvm.add"(%14, %0) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %18 = "llvm.getelementptr"(%4, %14) <{elem_type = i8, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%16, %18) <{alignment = 1 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (i8, !llvm.ptr) -> ()
    "llvm.br"(%13, %17, %15)[^bb14] : (!llvm.ptr, i32, !llvm.ptr) -> ()
  ^bb3:  // pred: ^bb1
    %19 = "llvm.getelementptr"(%15, %0) <{elem_type = i8, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %20 = "llvm.load"(%19) <{alignment = 1 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> i8
    "llvm.switch"(%20, %13, %14, %19)[^bb14, ^bb4, ^bb11, ^bb13] <{case_operand_segments = array<i32: 0, 0, 0>, case_values = dense<[100, 115, 99]> : vector<3xi8>, operandSegmentSizes = array<i32: 1, 3, 0>}> : (i8, !llvm.ptr, i32, !llvm.ptr) -> ()
  ^bb4:  // pred: ^bb3
    %21 = "llvm.getelementptr"(%13, %3) <{elem_type = i8, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%21, %10) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %22 = "llvm.load"(%13) <{alignment = 4 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag1]}> : (!llvm.ptr) -> i32
    %23 = "llvm.intr.abs"(%22) <{is_int_min_poison = false}> : (i32) -> i32
    "llvm.intr.lifetime.start"(%11) : (!llvm.ptr) -> ()
    "llvm.br"(%23, %1)[^bb5] : (i32, i32) -> ()
  ^bb5(%24: i32, %25: i32):  // 2 preds: ^bb4, ^bb5
    %26 = "llvm.freeze"(%24) : (i32) -> i32
    %27 = "llvm.udiv"(%26, %6) : (i32, i32) -> i32
    %28 = "llvm.mul"(%27, %6) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %29 = "llvm.sub"(%26, %28) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %30 = "llvm.trunc"(%29) <{overflowFlags = 3 : i32}> : (i32) -> i8
    %31 = "llvm.or"(%30, %7) <{isDisjoint}> : (i8, i8) -> i8
    %32 = "llvm.add"(%25, %0) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    %33 = "llvm.getelementptr"(%11, %25) <{elem_type = i8, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%31, %33) <{alignment = 1 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (i8, !llvm.ptr) -> ()
    %34 = "llvm.icmp"(%24, %6) <{predicate = 6 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%34, %27, %32)[^bb6, ^bb5] <{loop_annotation = #loop_annotation, operandSegmentSizes = array<i32: 1, 0, 2>}> : (i1, i32, i32) -> ()
  ^bb6:  // pred: ^bb5
    %35 = "llvm.icmp"(%22, %1) <{predicate = 2 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%35, %14)[^bb7, ^bb8] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb7:  // pred: ^bb6
    %36 = "llvm.add"(%14, %0) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %37 = "llvm.getelementptr"(%4, %14) <{elem_type = i8, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%8, %37) <{alignment = 1 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (i8, !llvm.ptr) -> ()
    "llvm.br"(%36)[^bb8] : (i32) -> ()
  ^bb8(%38: i32):  // 2 preds: ^bb6, ^bb7
    "llvm.br"(%32, %38)[^bb9] : (i32, i32) -> ()
  ^bb9(%39: i32, %40: i32):  // 2 preds: ^bb8, ^bb9
    %41 = "llvm.add"(%39, %9) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %42 = "llvm.getelementptr"(%11, %41) <{elem_type = i8, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %43 = "llvm.load"(%42) <{alignment = 1 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> i8
    %44 = "llvm.add"(%40, %0) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %45 = "llvm.getelementptr"(%4, %40) <{elem_type = i8, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%43, %45) <{alignment = 1 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (i8, !llvm.ptr) -> ()
    %46 = "llvm.icmp"(%41, %1) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%46, %41, %44)[^bb10, ^bb9] <{loop_annotation = #loop_annotation, operandSegmentSizes = array<i32: 1, 0, 2>}> : (i1, i32, i32) -> ()
  ^bb10:  // pred: ^bb9
    "llvm.intr.lifetime.end"(%11) : (!llvm.ptr) -> ()
    "llvm.br"(%21, %44, %19)[^bb14] : (!llvm.ptr, i32, !llvm.ptr) -> ()
  ^bb11:  // pred: ^bb3
    %47 = "llvm.getelementptr"(%13, %3) <{elem_type = i8, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%47, %10) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %48 = "llvm.load"(%13) <{alignment = 4 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag4]}> : (!llvm.ptr) -> !llvm.ptr
    %49 = "llvm.load"(%48) <{alignment = 1 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> i8
    %50 = "llvm.icmp"(%49, %5) <{predicate = 0 : i64}> : (i8, i8) -> i1
    "llvm.cond_br"(%50, %47, %14, %19, %49, %48, %14)[^bb14, ^bb12] <{operandSegmentSizes = array<i32: 1, 3, 3>}> : (i1, !llvm.ptr, i32, !llvm.ptr, i8, !llvm.ptr, i32) -> ()
  ^bb12(%51: i8, %52: !llvm.ptr, %53: i32):  // 2 preds: ^bb11, ^bb12
    %54 = "llvm.add"(%53, %0) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %55 = "llvm.getelementptr"(%4, %53) <{elem_type = i8, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%51, %55) <{alignment = 1 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (i8, !llvm.ptr) -> ()
    %56 = "llvm.getelementptr"(%52, %0) <{elem_type = i8, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %57 = "llvm.load"(%56) <{alignment = 1 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> i8
    %58 = "llvm.icmp"(%57, %5) <{predicate = 0 : i64}> : (i8, i8) -> i1
    "llvm.cond_br"(%58, %47, %54, %19, %57, %56, %54)[^bb14, ^bb12] <{loop_annotation = #loop_annotation, operandSegmentSizes = array<i32: 1, 3, 3>}> : (i1, !llvm.ptr, i32, !llvm.ptr, i8, !llvm.ptr, i32) -> ()
  ^bb13:  // pred: ^bb3
    %59 = "llvm.getelementptr"(%13, %3) <{elem_type = i8, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%59, %10) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %60 = "llvm.load"(%13) <{alignment = 4 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag1]}> : (!llvm.ptr) -> i32
    %61 = "llvm.trunc"(%60) <{overflowFlags = 0 : i32}> : (i32) -> i8
    %62 = "llvm.add"(%14, %0) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %63 = "llvm.getelementptr"(%4, %14) <{elem_type = i8, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%61, %63) <{alignment = 1 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (i8, !llvm.ptr) -> ()
    "llvm.br"(%59, %62, %19)[^bb14] : (!llvm.ptr, i32, !llvm.ptr) -> ()
  ^bb14(%64: !llvm.ptr, %65: i32, %66: !llvm.ptr):  // 6 preds: ^bb2, ^bb3, ^bb10, ^bb11, ^bb12, ^bb13
    %67 = "llvm.getelementptr"(%66, %0) <{elem_type = i8, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.br"(%64, %65, %67)[^bb1] <{loop_annotation = #loop_annotation}> : (!llvm.ptr, i32, !llvm.ptr) -> ()
  ^bb15:  // pred: ^bb1
    "llvm.intr.vaend"(%10) : (!llvm.ptr) -> ()
    %68 = "llvm.getelementptr"(%4, %14) <{elem_type = i8, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%5, %68) <{alignment = 1 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (i8, !llvm.ptr) -> ()
    "llvm.intr.lifetime.end"(%10) : (!llvm.ptr) -> ()
    "llvm.return"(%14) : (i32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<32> : vector<4xi64>, i64 = dense<64> : vector<2xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little", "dlti.mangling_mode" = "e", "dlti.legal_int_widths" = array<i32: 32>, "dlti.stack_alignment" = 128 : i64>, llvm.ident = "clang version 22.1.8", llvm.module_asm = [], llvm.target_triple = "riscv32-unknown-unknown-elf"} : () -> ()

