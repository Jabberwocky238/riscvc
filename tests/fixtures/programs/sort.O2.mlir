#loop_annotation = #llvm.loop_annotation<mustProgress = true>
#loop_peeled = #llvm.loop_peeled<count = 1 : i32>
#tbaa_root = #llvm.tbaa_root<id = "Simple C/C++ TBAA">
#loop_annotation1 = #llvm.loop_annotation<peeled = #loop_peeled, mustProgress = true>
#tbaa_type_desc = #llvm.tbaa_type_desc<id = "omnipotent char", members = {<#tbaa_root, 0>}>
#tbaa_type_desc1 = #llvm.tbaa_type_desc<id = "int", members = {<#tbaa_type_desc, 0>}>
#tbaa_tag = #llvm.tbaa_tag<base_type = #tbaa_type_desc1, access_type = #tbaa_type_desc1, offset = 0>
"builtin.module"() ({
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 4 : i64, dso_local, global_type = !llvm.array<300 x i32>, linkage = #llvm.linkage<internal>, sym_name = "z", unnamed_addr = 2 : i64, value = dense<0> : tensor<300xi32>, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 4 : i64, dso_local, global_type = !llvm.array<300 x i32>, linkage = #llvm.linkage<internal>, sym_name = "y", unnamed_addr = 2 : i64, value = dense<0> : tensor<300xi32>, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 4 : i64, dso_local, global_type = !llvm.array<300 x i32>, linkage = #llvm.linkage<internal>, sym_name = "x", unnamed_addr = 2 : i64, value = dense<0> : tensor<300xi32>, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 4 : i64, dso_local, global_type = i32, linkage = #llvm.linkage<internal>, sym_name = "seed", unnamed_addr = 2 : i64, value = 12345 : i32, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<error, "wchar_size", 4 : i32>, #llvm.mlir.module_flag<error, "target-abi", "ilp32f">, #llvm.mlir.module_flag<min, "SmallDataLimit", 0 : i32>]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = readwrite, argMem = readwrite, inaccessibleMem = none, errnoMem = readwrite, targetMem0 = none, targetMem1 = none>, no_unwind, passthrough = ["nofree", "nosync", "no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "main", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 1 : i64, visibility_ = 0 : i64}> ({
    %33 = "llvm.mlir.addressof"() <{global_name = @seed}> : () -> !llvm.ptr
    %34 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %35 = "llvm.mlir.constant"() <{value = 13 : i32}> : () -> i32
    %36 = "llvm.mlir.constant"() <{value = 17 : i32}> : () -> i32
    %37 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %38 = "llvm.mlir.constant"() <{value = 2001 : i32}> : () -> i32
    %39 = "llvm.mlir.constant"() <{value = -1000 : i32}> : () -> i32
    %40 = "llvm.mlir.addressof"() <{global_name = @z}> : () -> !llvm.ptr
    %41 = "llvm.mlir.addressof"() <{global_name = @y}> : () -> !llvm.ptr
    %42 = "llvm.mlir.addressof"() <{global_name = @x}> : () -> !llvm.ptr
    %43 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %44 = "llvm.mlir.constant"() <{value = 300 : i32}> : () -> i32
    %45 = "llvm.mlir.constant"() <{value = 299 : i32}> : () -> i32
    %46 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %47 = "llvm.mlir.constant"() <{value = 149 : i32}> : () -> i32
    %48 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %49 = "llvm.mlir.constant"() <{value = 150 : i32}> : () -> i32
    %50 = "llvm.mlir.constant"() <{value = false}> : () -> i1
    %51 = "llvm.mlir.constant"() <{value = 1000 : i32}> : () -> i32
    %52 = "llvm.mlir.constant"() <{value = -4 : i32}> : () -> i32
    %53 = "llvm.mlir.constant"() <{value = 31 : i32}> : () -> i32
    %54 = "llvm.mlir.constant"() <{value = 2000 : i32}> : () -> i32
    %55 = "llvm.load"(%33) <{alignment = 4 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> i32
    "llvm.br"(%34, %55)[^bb21] : (i32, i32) -> ()
  ^bb1:  // pred: ^bb21
    "llvm.store"(%140, %33) <{alignment = 4 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (i32, !llvm.ptr) -> ()
    "llvm.call"(%34, %45) <{CConv = #llvm.cconv<fastcc>, TailCallKind = #llvm.tailcallkind<tail>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @quick, fastmathFlags = #llvm.fastmath<none>, memory_effects = #llvm.memory_effects<other = readwrite, argMem = none, inaccessibleMem = none, errnoMem = readwrite, targetMem0 = none, targetMem1 = none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> ()
    "llvm.br"(%43)[^bb2] : (i32) -> ()
  ^bb2(%56: i32):  // 2 preds: ^bb1, ^bb5
    %57 = "llvm.getelementptr"(%41, %56) <{elem_type = i32, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %58 = "llvm.load"(%57) <{alignment = 4 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> i32
    "llvm.br"(%56)[^bb3] : (i32) -> ()
  ^bb3(%59: i32):  // 2 preds: ^bb2, ^bb4
    %60 = "llvm.add"(%59, %46) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %61 = "llvm.getelementptr"(%41, %60) <{elem_type = i32, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %62 = "llvm.load"(%61) <{alignment = 4 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> i32
    %63 = "llvm.icmp"(%62, %58) <{predicate = 4 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%63, %59)[^bb4, ^bb5] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb4:  // pred: ^bb3
    %64 = "llvm.getelementptr"(%41, %59) <{elem_type = i32, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%62, %64) <{alignment = 4 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (i32, !llvm.ptr) -> ()
    %65 = "llvm.icmp"(%59, %43) <{predicate = 4 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%65, %60, %34)[^bb3, ^bb5] <{loop_annotation = #loop_annotation, operandSegmentSizes = array<i32: 1, 1, 1>}> : (i1, i32, i32) -> ()
  ^bb5(%66: i32):  // 2 preds: ^bb3, ^bb4
    %67 = "llvm.getelementptr"(%41, %66) <{elem_type = i32, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%58, %67) <{alignment = 4 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (i32, !llvm.ptr) -> ()
    %68 = "llvm.add"(%56, %43) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    %69 = "llvm.icmp"(%68, %44) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%69, %47, %68)[^bb6, ^bb2] <{loop_annotation = #loop_annotation, operandSegmentSizes = array<i32: 1, 1, 1>}> : (i1, i32, i32) -> ()
  ^bb6(%70: i32):  // 2 preds: ^bb5, ^bb11
    %71 = "llvm.getelementptr"(%40, %70) <{elem_type = i32, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %72 = "llvm.load"(%71) <{alignment = 4 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> i32
    "llvm.br"(%70)[^bb7] : (i32) -> ()
  ^bb7(%73: i32):  // 2 preds: ^bb6, ^bb10
    %74 = "llvm.shl"(%73, %43) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    %75 = "llvm.or"(%74, %43) <{isDisjoint}> : (i32, i32) -> i32
    %76 = "llvm.getelementptr"(%40, %75) <{elem_type = i32, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %77 = "llvm.load"(%76) <{alignment = 4 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> i32
    %78 = "llvm.getelementptr"(%40, %73) <{elem_type = i32, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %79 = "llvm.icmp"(%77, %72) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %80 = "llvm.select"(%79, %75, %73) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %81 = "llvm.icmp"(%73, %47) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%81, %80)[^bb9, ^bb8] <{operandSegmentSizes = array<i32: 1, 1, 0>}> : (i1, i32) -> ()
  ^bb8:  // pred: ^bb7
    %82 = "llvm.add"(%74, %48) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    %83 = "llvm.getelementptr"(%40, %82) <{elem_type = i32, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %84 = "llvm.load"(%83) <{alignment = 4 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> i32
    %85 = "llvm.getelementptr"(%40, %80) <{elem_type = i32, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %86 = "llvm.load"(%85) <{alignment = 4 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> i32
    %87 = "llvm.icmp"(%84, %86) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %88 = "llvm.select"(%87, %82, %80) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.br"(%88)[^bb9] : (i32) -> ()
  ^bb9(%89: i32):  // 2 preds: ^bb7, ^bb8
    %90 = "llvm.icmp"(%89, %73) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%90)[^bb11, ^bb10] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb10:  // pred: ^bb9
    %91 = "llvm.getelementptr"(%40, %89) <{elem_type = i32, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %92 = "llvm.load"(%91) <{alignment = 4 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> i32
    "llvm.store"(%92, %78) <{alignment = 4 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (i32, !llvm.ptr) -> ()
    "llvm.store"(%72, %91) <{alignment = 4 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (i32, !llvm.ptr) -> ()
    %93 = "llvm.icmp"(%89, %49) <{predicate = 6 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%93, %89)[^bb7, ^bb11] <{operandSegmentSizes = array<i32: 1, 1, 0>}> : (i1, i32) -> ()
  ^bb11:  // 2 preds: ^bb9, ^bb10
    %94 = "llvm.add"(%70, %46) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %95 = "llvm.icmp"(%70, %34) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%95, %45, %94)[^bb12, ^bb6] <{loop_annotation = #loop_annotation, operandSegmentSizes = array<i32: 1, 1, 1>}> : (i1, i32, i32) -> ()
  ^bb12(%96: i32):  // 2 preds: ^bb11, ^bb19
    %97 = "llvm.load"(%40) <{alignment = 4 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> i32
    %98 = "llvm.getelementptr"(%40, %96) <{elem_type = i32, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %99 = "llvm.load"(%98) <{alignment = 4 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> i32
    "llvm.store"(%99, %40) <{alignment = 4 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (i32, !llvm.ptr) -> ()
    "llvm.store"(%97, %98) <{alignment = 4 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (i32, !llvm.ptr) -> ()
    "llvm.br"(%34)[^bb13] : (i32) -> ()
  ^bb13(%100: i32):  // 2 preds: ^bb12, ^bb18
    %101 = "llvm.shl"(%100, %43) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    %102 = "llvm.or"(%101, %43) <{isDisjoint}> : (i32, i32) -> i32
    %103 = "llvm.icmp"(%102, %96) <{predicate = 6 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%103, %100)[^bb14, ^bb15] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb14:  // pred: ^bb13
    %104 = "llvm.getelementptr"(%40, %102) <{elem_type = i32, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %105 = "llvm.load"(%104) <{alignment = 4 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> i32
    %106 = "llvm.getelementptr"(%40, %100) <{elem_type = i32, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %107 = "llvm.load"(%106) <{alignment = 4 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> i32
    %108 = "llvm.icmp"(%105, %107) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %109 = "llvm.select"(%108, %102, %100) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.br"(%109)[^bb15] : (i32) -> ()
  ^bb15(%110: i32):  // 2 preds: ^bb13, ^bb14
    %111 = "llvm.add"(%101, %48) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    %112 = "llvm.icmp"(%111, %96) <{predicate = 6 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%112, %110)[^bb16, ^bb17] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb16:  // pred: ^bb15
    %113 = "llvm.getelementptr"(%40, %111) <{elem_type = i32, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %114 = "llvm.load"(%113) <{alignment = 4 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> i32
    %115 = "llvm.getelementptr"(%40, %110) <{elem_type = i32, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %116 = "llvm.load"(%115) <{alignment = 4 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> i32
    %117 = "llvm.icmp"(%114, %116) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %118 = "llvm.select"(%117, %111, %110) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.br"(%118)[^bb17] : (i32) -> ()
  ^bb17(%119: i32):  // 2 preds: ^bb15, ^bb16
    %120 = "llvm.icmp"(%119, %100) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%120)[^bb19, ^bb18] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb18:  // pred: ^bb17
    %121 = "llvm.getelementptr"(%40, %100) <{elem_type = i32, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %122 = "llvm.load"(%121) <{alignment = 4 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> i32
    %123 = "llvm.getelementptr"(%40, %119) <{elem_type = i32, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %124 = "llvm.load"(%123) <{alignment = 4 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> i32
    "llvm.store"(%124, %121) <{alignment = 4 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (i32, !llvm.ptr) -> ()
    "llvm.store"(%122, %123) <{alignment = 4 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (i32, !llvm.ptr) -> ()
    "llvm.br"(%119)[^bb13] : (i32) -> ()
  ^bb19:  // pred: ^bb17
    %125 = "llvm.add"(%96, %46) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %126 = "llvm.icmp"(%96, %43) <{predicate = 8 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%126, %125)[^bb12, ^bb20] <{loop_annotation = #loop_annotation, operandSegmentSizes = array<i32: 1, 1, 0>}> : (i1, i32) -> ()
  ^bb20:  // pred: ^bb19
    %127 = "llvm.load"(%42) <{alignment = 4 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> i32
    %128 = "llvm.load"(%41) <{alignment = 4 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> i32
    %129 = "llvm.icmp"(%127, %128) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %130 = "llvm.load"(%40) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %131 = "llvm.icmp"(%127, %130) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %132 = "llvm.select"(%129, %131, %50) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i1, i1) -> i1
    "llvm.cond_br"(%132, %43, %127, %51)[^bb22, ^bb28] <{operandSegmentSizes = array<i32: 1, 2, 1>}> : (i1, i32, i32, i32) -> ()
  ^bb21(%133: i32, %134: i32):  // 2 preds: ^bb0, ^bb21
    %135 = "llvm.shl"(%134, %35) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %136 = "llvm.xor"(%135, %134) : (i32, i32) -> i32
    %137 = "llvm.lshr"(%136, %36) : (i32, i32) -> i32
    %138 = "llvm.xor"(%137, %136) : (i32, i32) -> i32
    %139 = "llvm.shl"(%138, %37) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %140 = "llvm.xor"(%139, %138) : (i32, i32) -> i32
    %141 = "llvm.urem"(%140, %38) : (i32, i32) -> i32
    %142 = "llvm.add"(%141, %39) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %143 = "llvm.getelementptr"(%40, %133) <{elem_type = i32, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%142, %143) <{alignment = 4 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (i32, !llvm.ptr) -> ()
    %144 = "llvm.getelementptr"(%41, %133) <{elem_type = i32, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%142, %144) <{alignment = 4 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (i32, !llvm.ptr) -> ()
    %145 = "llvm.getelementptr"(%42, %133) <{elem_type = i32, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%142, %145) <{alignment = 4 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (i32, !llvm.ptr) -> ()
    %146 = "llvm.add"(%133, %43) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    %147 = "llvm.icmp"(%146, %44) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%147, %146, %140)[^bb1, ^bb21] <{loop_annotation = #loop_annotation, operandSegmentSizes = array<i32: 1, 0, 2>}> : (i1, i32, i32) -> ()
  ^bb22(%148: i32, %149: i32):  // 2 preds: ^bb20, ^bb27
    %150 = "llvm.getelementptr"(%42, %148) <{elem_type = i32, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %151 = "llvm.load"(%150) <{alignment = 4 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> i32
    %152 = "llvm.getelementptr"(%41, %148) <{elem_type = i32, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %153 = "llvm.load"(%152) <{alignment = 4 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> i32
    %154 = "llvm.icmp"(%151, %153) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%154)[^bb23, ^bb24] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb23:  // pred: ^bb22
    %155 = "llvm.getelementptr"(%40, %148) <{elem_type = i32, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %156 = "llvm.load"(%155) <{alignment = 4 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> i32
    %157 = "llvm.icmp"(%151, %156) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%157)[^bb25, ^bb24] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb24:  // 2 preds: ^bb22, ^bb23
    %158 = "llvm.add"(%148, %51) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    "llvm.br"(%158)[^bb28] : (i32) -> ()
  ^bb25:  // pred: ^bb23
    %159 = "llvm.getelementptr"(%150, %52) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %160 = "llvm.load"(%159) <{alignment = 4 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> i32
    %161 = "llvm.icmp"(%160, %151) <{predicate = 4 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%161)[^bb26, ^bb27] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb26:  // pred: ^bb25
    %162 = "llvm.add"(%148, %54) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    "llvm.br"(%162)[^bb28] : (i32) -> ()
  ^bb27:  // pred: ^bb25
    %163 = "llvm.mul"(%149, %53) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %164 = "llvm.add"(%151, %163) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %165 = "llvm.add"(%148, %43) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    %166 = "llvm.icmp"(%165, %44) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%166, %164, %165, %164)[^bb28, ^bb22] <{loop_annotation = #loop_annotation1, operandSegmentSizes = array<i32: 1, 1, 2>}> : (i1, i32, i32, i32) -> ()
  ^bb28(%167: i32):  // 4 preds: ^bb20, ^bb24, ^bb26, ^bb27
    "llvm.return"(%167) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<fastcc>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], dso_local, function_type = !llvm.func<void (i32, i32)>, linkage = #llvm.linkage<internal>, memory_effects = #llvm.memory_effects<other = readwrite, argMem = none, inaccessibleMem = none, errnoMem = readwrite, targetMem0 = none, targetMem1 = none>, no_unwind, passthrough = ["nofree", "nosync", "no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "quick", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 2 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %1 = "llvm.mlir.addressof"() <{global_name = @x}> : () -> !llvm.ptr
    %2 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %3 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %4 = "llvm.icmp"(%arg0, %arg1) <{predicate = 2 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%4, %arg0, %arg1)[^bb1, ^bb12] <{operandSegmentSizes = array<i32: 1, 2, 0>}> : (i1, i32, i32) -> ()
  ^bb1(%5: i32, %6: i32):  // 2 preds: ^bb0, ^bb11
    %7 = "llvm.add"(%5, %6) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %8 = "llvm.sdiv"(%7, %0) : (i32, i32) -> i32
    %9 = "llvm.getelementptr"(%1, %8) <{elem_type = i32, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %10 = "llvm.load"(%9) <{alignment = 4 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> i32
    "llvm.br"(%6, %5)[^bb2] : (i32, i32) -> ()
  ^bb2(%11: i32, %12: i32):  // 2 preds: ^bb1, ^bb7
    "llvm.br"(%12)[^bb3] : (i32) -> ()
  ^bb3(%13: i32):  // 2 preds: ^bb2, ^bb3
    %14 = "llvm.getelementptr"(%1, %13) <{elem_type = i32, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %15 = "llvm.load"(%14) <{alignment = 4 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> i32
    %16 = "llvm.icmp"(%15, %10) <{predicate = 2 : i64}> : (i32, i32) -> i1
    %17 = "llvm.add"(%13, %2) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.cond_br"(%16, %17, %11)[^bb3, ^bb4] <{loop_annotation = #loop_annotation, operandSegmentSizes = array<i32: 1, 1, 1>}> : (i1, i32, i32) -> ()
  ^bb4(%18: i32):  // 2 preds: ^bb3, ^bb4
    %19 = "llvm.getelementptr"(%1, %18) <{elem_type = i32, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %20 = "llvm.load"(%19) <{alignment = 4 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> i32
    %21 = "llvm.icmp"(%20, %10) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %22 = "llvm.add"(%18, %3) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.cond_br"(%21, %22)[^bb4, ^bb5] <{loop_annotation = #loop_annotation, operandSegmentSizes = array<i32: 1, 1, 0>}> : (i1, i32) -> ()
  ^bb5:  // pred: ^bb4
    %23 = "llvm.icmp"(%13, %18) <{predicate = 4 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%23, %13, %18)[^bb7, ^bb6] <{operandSegmentSizes = array<i32: 1, 2, 0>}> : (i1, i32, i32) -> ()
  ^bb6:  // pred: ^bb5
    "llvm.store"(%20, %14) <{alignment = 4 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (i32, !llvm.ptr) -> ()
    "llvm.store"(%15, %19) <{alignment = 4 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (i32, !llvm.ptr) -> ()
    "llvm.br"(%17, %22)[^bb7] : (i32, i32) -> ()
  ^bb7(%24: i32, %25: i32):  // 2 preds: ^bb5, ^bb6
    %26 = "llvm.icmp"(%24, %25) <{predicate = 4 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%26, %25, %24)[^bb8, ^bb2] <{loop_annotation = #loop_annotation, operandSegmentSizes = array<i32: 1, 0, 2>}> : (i1, i32, i32) -> ()
  ^bb8:  // pred: ^bb7
    %27 = "llvm.sub"(%25, %5) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %28 = "llvm.sub"(%6, %24) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %29 = "llvm.icmp"(%27, %28) <{predicate = 2 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%29)[^bb9, ^bb10] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb9:  // pred: ^bb8
    "llvm.call"(%5, %25) <{CConv = #llvm.cconv<fastcc>, TailCallKind = #llvm.tailcallkind<tail>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @quick, fastmathFlags = #llvm.fastmath<none>, memory_effects = #llvm.memory_effects<other = readwrite, argMem = none, inaccessibleMem = none, errnoMem = readwrite, targetMem0 = none, targetMem1 = none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> ()
    "llvm.br"(%6, %24)[^bb11] : (i32, i32) -> ()
  ^bb10:  // pred: ^bb8
    "llvm.call"(%24, %6) <{CConv = #llvm.cconv<fastcc>, TailCallKind = #llvm.tailcallkind<tail>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @quick, fastmathFlags = #llvm.fastmath<none>, memory_effects = #llvm.memory_effects<other = readwrite, argMem = none, inaccessibleMem = none, errnoMem = readwrite, targetMem0 = none, targetMem1 = none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> ()
    "llvm.br"(%25, %5)[^bb11] : (i32, i32) -> ()
  ^bb11(%30: i32, %31: i32):  // 2 preds: ^bb9, ^bb10
    %32 = "llvm.icmp"(%31, %30) <{predicate = 2 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%32, %31, %30)[^bb1, ^bb12] <{loop_annotation = #loop_annotation, operandSegmentSizes = array<i32: 1, 2, 0>}> : (i1, i32, i32) -> ()
  ^bb12:  // 2 preds: ^bb0, ^bb11
    "llvm.return"() : () -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<32> : vector<4xi64>, i64 = dense<64> : vector<2xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little", "dlti.mangling_mode" = "e", "dlti.legal_int_widths" = array<i32: 32>, "dlti.stack_alignment" = 128 : i64>, llvm.ident = "clang version 22.1.8", llvm.module_asm = [], llvm.target_triple = "riscv32-unknown-unknown-elf"} : () -> ()

