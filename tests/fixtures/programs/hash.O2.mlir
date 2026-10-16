#loop_annotation = #llvm.loop_annotation<mustProgress = true>
#tbaa_root = #llvm.tbaa_root<id = "Simple C/C++ TBAA">
#tbaa_type_desc = #llvm.tbaa_type_desc<id = "omnipotent char", members = {<#tbaa_root, 0>}>
#tbaa_tag = #llvm.tbaa_tag<base_type = #tbaa_type_desc, access_type = #tbaa_type_desc, offset = 0>
#tbaa_type_desc1 = #llvm.tbaa_type_desc<id = "int", members = {<#tbaa_type_desc, 0>}>
#tbaa_tag1 = #llvm.tbaa_tag<base_type = #tbaa_type_desc1, access_type = #tbaa_type_desc1, offset = 0>
"builtin.module"() ({
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 1 : i64, dso_local, global_type = !llvm.array<1027 x i8>, linkage = #llvm.linkage<internal>, sym_name = "buf", unnamed_addr = 2 : i64, value = dense<0> : tensor<1027xi8>, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 4 : i64, dso_local, global_type = !llvm.array<256 x i32>, linkage = #llvm.linkage<internal>, sym_name = "table", unnamed_addr = 2 : i64, value = dense<0> : tensor<256xi32>, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, constant, dso_local, global_type = !llvm.array<256 x i32>, linkage = #llvm.linkage<private>, sym_name = ".crctable", unnamed_addr = 2 : i64, value = dense<"0x00000000963007772C610EEEBA51099919C46D078FF46A7035A563E9A395649E3288DB0EA4B8DC791EE9D5E088D9D2972B4CB609BD7CB17E072DB8E7911DBF906410B71DF220B06A4871B9F3DE41BE847DD4DA1AEBE4DD6D51B5D4F4C785D38356986C13C0A86B647AF962FDECC9658A4F5C0114D96C0663633D0FFAF50D088DC8206E3B5E10694CE44160D5727167A2D1E4033C47D4044BFD850DD26BB50AA5FAA8B5356C98B242D6C9BBDB40F9BCACE36CD832755CDF45CF0DD6DC593DD1ABAC30D9263A00DE518051D7C81661D0BFB5F4B42123C4B3569995BACF0FA5BDB89EB802280888055FB2D90CC624E90BB1877C6F2F114C6858AB1D61C13D2D66B69041DC760671DB01BC20D2982A10D5EF8985B1711FB5B606A5E4BF9F33D4B8E8A2C9077834F9000F8EA8099618980EE1BB0D6A7F2D3D6D08976C6491015C63E6F4516B6B62616C1CD83065854E0062F2ED95066C7BA5011BC1F4088257C40FF5C6D9B06550E9B712EAB8BE8B7C88B9FCDF1DDD62492DDA15F37CD38C654CD4FB5861B24DCE51B53A7400BCA3E230BBD441A5DF4AD795D83D6DC4D1A4FBF4D6D36AE96943FCD96E34468867ADD0B860DA732D0444E51D03335F4C0AAAC97C0DDD3C710550AA41022710100BBE86200CC925B56857B3856F2009D466B99FE461CE0EF9DE5E98C9D9292298D0B0B4A8D7C7173DB359810DB42E3B5CBDB7AD6CBAC02083B8EDB6B3BF9A0CE2B6039AD2B1743947D5EAAF77D29D1526DB048316DC73120B63E3843B64943E6A6D0DA85A6A7A0BCF0EE49DFF099327AE000AB19E077D44930FF0D2A3088768F2011EFEC206695D5762F7CB67658071366C19E7066B6E761BD4FEE02BD3895A7ADA10CC4ADD676FDFB9F9F9EFBE8E43BEB717D58EB060E8A3D6D67E93D1A1C4C2D83852F2DF4FF167BBD16757BCA6DD06B53F4B36B248DA2B0DD84C1B0AAFF64A0336607A0441C3EF60DF55DF67A8EF8E6E3179BE69468CB361CB1A8366BCA0D26F2536E2685295770CCC03470BBBB91602222F260555BE3BBAC5280BBDB2925AB42B046AB35CA7FFD7C231CFD0B58B9ED92C1DAEDE5BB0C2649B26F263EC9CA36A750A936D02A906099C3F360EEB8567077213570005824ABF95147AB8E2AE2BB17B381BB60C9B8ED2920DBED5E5B7EFDC7C21DFDB0BD4D2D38642E2D4F1F8B3DD686E83DA1FCD16BE815B26B9F6E177B06F7747B718E65A0888706A0FFFCA3B06665C0B0111FF9E658F69AE62F8D3FF6B6145CF6C1678E20AA0EED20DD75483044EC2B30339612667A7F71660D04D476949DB776E3E4A6AD1AEDC5AD6D9660BDF40F03BD83753AEBCA9C59EBBDE7FCFB247E9FFB5301CF2BDBD8AC2BACA3093B353A6A3B4240536D0BA9306D7CD2957DE54BF67D9232E7A66B3B84A61C4021B685D942B6F2A37BE0BB4A18E0CC31BDF055A8DEF022D"> : tensor<256xi32>, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<error, "wchar_size", 4 : i32>, #llvm.mlir.module_flag<error, "target-abi", "ilp32f">, #llvm.mlir.module_flag<min, "SmallDataLimit", 0 : i32>]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = readwrite, argMem = none, inaccessibleMem = none, errnoMem = readwrite, targetMem0 = none, targetMem1 = none>, no_unwind, passthrough = ["nofree", "norecurse", "nosync", "no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "main", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcalculet", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 1 : i64, visibility_ = 0 : i64}> ({
    %0 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = -1640531527 : i32}> : () -> i32
    %2 = "llvm.mlir.constant"() <{value = 1664525 : i32}> : () -> i32
    %3 = "llvm.mlir.constant"() <{value = 1013904223 : i32}> : () -> i32
    %4 = "llvm.mlir.constant"() <{value = 24 : i32}> : () -> i32
    %5 = "llvm.mlir.addressof"() <{global_name = @buf}> : () -> !llvm.ptr
    %6 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %7 = "llvm.mlir.constant"() <{value = 1027 : i32}> : () -> i32
    %8 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %9 = "llvm.mlir.addressof"() <{global_name = @".crctable"}> : () -> !llvm.ptr
    %10 = "llvm.mlir.addressof"() <{global_name = @table}> : () -> !llvm.ptr
    %11 = "llvm.mlir.constant"() <{value = 256 : i32}> : () -> i32
    %12 = "llvm.mlir.constant"() <{value = -1907432768 : i32}> : () -> i32
    %13 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %14 = "llvm.mlir.constant"() <{value = -2128831035 : i32}> : () -> i32
    %15 = "llvm.mlir.constant"() <{value = 16777619 : i32}> : () -> i32
    %16 = "llvm.mlir.constant"() <{value = 7 : i32}> : () -> i32
    %17 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %18 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %19 = "llvm.mlir.constant"() <{value = 16 : i32}> : () -> i32
    %20 = "llvm.mlir.constant"() <{value = -862048943 : i32}> : () -> i32
    %21 = "llvm.mlir.constant"() <{value = 15 : i32}> : () -> i32
    %22 = "llvm.mlir.constant"() <{value = 461845907 : i32}> : () -> i32
    %23 = "llvm.mlir.constant"() <{value = 13 : i32}> : () -> i32
    %24 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %25 = "llvm.mlir.constant"() <{value = -430675100 : i32}> : () -> i32
    %26 = "llvm.mlir.constant"() <{value = 2044 : i32}> : () -> i32
    %27 = "llvm.mlir.constant"() <{value = -2048144789 : i32}> : () -> i32
    %28 = "llvm.mlir.constant"() <{value = -1028477387 : i32}> : () -> i32
    %29 = "llvm.mlir.constant"() <{value = 65521 : i32}> : () -> i32
    %30 = "llvm.mlir.constant"() <{value = 97 : i32}> : () -> i32
    %31 = "llvm.mlir.constant"() <{value = 931 : i32}> : () -> i32
    "llvm.br"(%0, %1)[^bb2] : (i32, i32) -> ()
  ^bb1(%32: i32):  // 2 preds: ^bb1, ^bb2
    %33 = "llvm.lshr"(%32, %8) : (i32, i32) -> i32
    %34 = "llvm.getelementptr"(%9, %32) <{elem_type = i32, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %35 = "llvm.load"(%34) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %36 = "llvm.xor"(%33, %35) : (i32, i32) -> i32
    %37 = "llvm.getelementptr"(%10, %32) <{elem_type = i32, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%36, %37) <{alignment = 4 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag1]}> : (i32, !llvm.ptr) -> ()
    %38 = "llvm.add"(%32, %6) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    %39 = "llvm.icmp"(%38, %11) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%39, %0, %0, %38)[^bb4, ^bb1] <{loop_annotation = #loop_annotation, operandSegmentSizes = array<i32: 1, 2, 1>}> : (i1, i32, i32, i32) -> ()
  ^bb2(%40: i32, %41: i32):  // 2 preds: ^bb0, ^bb2
    %42 = "llvm.mul"(%41, %2) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %43 = "llvm.add"(%42, %3) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %44 = "llvm.lshr"(%43, %4) : (i32, i32) -> i32
    %45 = "llvm.trunc"(%44) <{overflowFlags = 2 : i32}> : (i32) -> i8
    %46 = "llvm.getelementptr"(%5, %40) <{elem_type = i8, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%45, %46) <{alignment = 1 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (i8, !llvm.ptr) -> ()
    %47 = "llvm.add"(%40, %6) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    %48 = "llvm.icmp"(%47, %7) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%48, %0, %47, %43)[^bb1, ^bb2] <{loop_annotation = #loop_annotation, operandSegmentSizes = array<i32: 1, 1, 2>}> : (i1, i32, i32, i32) -> ()
  ^bb3:  // pred: ^bb19
    "llvm.return"(%167) : (i32) -> ()
  ^bb4(%49: i32, %50: i32):  // 2 preds: ^bb1, ^bb19
    %51 = "llvm.icmp"(%49, %0) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%51, %12, %0, %13, %49, %5)[^bb16, ^bb5] <{operandSegmentSizes = array<i32: 1, 2, 3>}> : (i1, i32, i32, i32, i32, !llvm.ptr) -> ()
  ^bb5(%52: i32, %53: i32, %54: !llvm.ptr):  // 2 preds: ^bb4, ^bb5
    %55 = "llvm.add"(%53, %13) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %56 = "llvm.getelementptr"(%54, %6) <{elem_type = i8, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %57 = "llvm.load"(%54) <{alignment = 1 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> i8
    %58 = "llvm.trunc"(%52) <{overflowFlags = 0 : i32}> : (i32) -> i8
    %59 = "llvm.xor"(%57, %58) : (i8, i8) -> i8
    %60 = "llvm.zext"(%59) : (i8) -> i32
    %61 = "llvm.getelementptr"(%10, %60) <{elem_type = i32, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %62 = "llvm.load"(%61) <{alignment = 4 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag1]}> : (!llvm.ptr) -> i32
    %63 = "llvm.lshr"(%52, %8) : (i32, i32) -> i32
    %64 = "llvm.xor"(%62, %63) : (i32, i32) -> i32
    %65 = "llvm.icmp"(%55, %0) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%65, %0, %14, %64, %55, %56)[^bb6, ^bb5] <{loop_annotation = #loop_annotation, operandSegmentSizes = array<i32: 1, 2, 3>}> : (i1, i32, i32, i32, i32, !llvm.ptr) -> ()
  ^bb6(%66: i32, %67: i32):  // 2 preds: ^bb5, ^bb6
    %68 = "llvm.getelementptr"(%5, %66) <{elem_type = i8, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %69 = "llvm.load"(%68) <{alignment = 1 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> i8
    %70 = "llvm.zext"(%69) : (i8) -> i32
    %71 = "llvm.xor"(%67, %70) : (i32, i32) -> i32
    %72 = "llvm.mul"(%71, %15) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %73 = "llvm.add"(%66, %6) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    %74 = "llvm.icmp"(%73, %49) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%74, %73, %72)[^bb7, ^bb6] <{loop_annotation = #loop_annotation, operandSegmentSizes = array<i32: 1, 0, 2>}> : (i1, i32, i32) -> ()
  ^bb7:  // pred: ^bb6
    %75 = "llvm.xor"(%64, %13) : (i32, i32) -> i32
    %76 = "llvm.intr.fshl"(%72, %72, %16) : (i32, i32, i32) -> i32
    %77 = "llvm.add"(%76, %75) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %78 = "llvm.lshr"(%49, %17) : (i32, i32) -> i32
    %79 = "llvm.icmp"(%49, %18) <{predicate = 8 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%79, %49, %0, %49)[^bb11, ^bb8] <{operandSegmentSizes = array<i32: 1, 2, 1>}> : (i1, i32, i32, i32) -> ()
  ^bb8(%80: i32):  // 2 preds: ^bb7, ^bb11
    %81 = "llvm.and"(%49, %18) : (i32, i32) -> i32
    "llvm.switch"(%81, %77, %80)[^bb15, ^bb12, ^bb9, ^bb10, ^bb16] <{case_operand_segments = array<i32: 0, 0, 0, 2>, case_values = dense<[3, 2, 1, 0]> : vector<4xi32>, operandSegmentSizes = array<i32: 1, 0, 2>}> : (i32, i32, i32) -> ()
  ^bb9:  // pred: ^bb8
    %82 = "llvm.and"(%49, %26) : (i32, i32) -> i32
    "llvm.br"(%82, %0)[^bb13] : (i32, i32) -> ()
  ^bb10:  // pred: ^bb8
    %83 = "llvm.and"(%49, %26) : (i32, i32) -> i32
    "llvm.br"(%83, %0)[^bb14] : (i32, i32) -> ()
  ^bb11(%84: i32, %85: i32):  // 2 preds: ^bb7, ^bb11
    %86 = "llvm.shl"(%85, %17) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %87 = "llvm.getelementptr"(%5, %86) <{elem_type = i8, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %88 = "llvm.load"(%87) <{alignment = 1 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> i8
    %89 = "llvm.zext"(%88) : (i8) -> i32
    %90 = "llvm.getelementptr"(%87, %6) <{elem_type = i8, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %91 = "llvm.load"(%90) <{alignment = 1 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> i8
    %92 = "llvm.zext"(%91) : (i8) -> i32
    %93 = "llvm.shl"(%92, %8) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    %94 = "llvm.or"(%93, %89) <{isDisjoint}> : (i32, i32) -> i32
    %95 = "llvm.getelementptr"(%87, %17) <{elem_type = i8, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %96 = "llvm.load"(%95) <{alignment = 1 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> i8
    %97 = "llvm.zext"(%96) : (i8) -> i32
    %98 = "llvm.shl"(%97, %19) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    %99 = "llvm.or"(%94, %98) <{isDisjoint}> : (i32, i32) -> i32
    %100 = "llvm.getelementptr"(%87, %18) <{elem_type = i8, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %101 = "llvm.load"(%100) <{alignment = 1 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> i8
    %102 = "llvm.zext"(%101) : (i8) -> i32
    %103 = "llvm.shl"(%102, %4) <{overflowFlags = 2 : i32}> : (i32, i32) -> i32
    %104 = "llvm.or"(%99, %103) <{isDisjoint}> : (i32, i32) -> i32
    %105 = "llvm.mul"(%104, %20) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %106 = "llvm.intr.fshl"(%105, %105, %21) : (i32, i32, i32) -> i32
    %107 = "llvm.mul"(%106, %22) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %108 = "llvm.xor"(%107, %84) : (i32, i32) -> i32
    %109 = "llvm.intr.fshl"(%108, %108, %23) : (i32, i32, i32) -> i32
    %110 = "llvm.mul"(%109, %24) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %111 = "llvm.add"(%110, %25) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %112 = "llvm.add"(%85, %6) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    %113 = "llvm.icmp"(%112, %78) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%113, %111, %111, %112)[^bb8, ^bb11] <{loop_annotation = #loop_annotation, operandSegmentSizes = array<i32: 1, 1, 2>}> : (i1, i32, i32, i32) -> ()
  ^bb12:  // pred: ^bb8
    %114 = "llvm.and"(%49, %26) : (i32, i32) -> i32
    %115 = "llvm.getelementptr"(%5, %114) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %116 = "llvm.getelementptr"(%115, %17) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %117 = "llvm.load"(%116) <{alignment = 1 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> i8
    %118 = "llvm.zext"(%117) : (i8) -> i32
    %119 = "llvm.shl"(%118, %19) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    "llvm.br"(%114, %119)[^bb13] : (i32, i32) -> ()
  ^bb13(%120: i32, %121: i32):  // 2 preds: ^bb9, ^bb12
    %122 = "llvm.getelementptr"(%5, %120) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %123 = "llvm.getelementptr"(%122, %6) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %124 = "llvm.load"(%123) <{alignment = 1 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> i8
    %125 = "llvm.zext"(%124) : (i8) -> i32
    %126 = "llvm.shl"(%125, %8) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    %127 = "llvm.or"(%126, %121) <{isDisjoint}> : (i32, i32) -> i32
    "llvm.br"(%120, %127)[^bb14] : (i32, i32) -> ()
  ^bb14(%128: i32, %129: i32):  // 2 preds: ^bb10, ^bb13
    %130 = "llvm.getelementptr"(%5, %128) <{elem_type = i8, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %131 = "llvm.load"(%130) <{alignment = 1 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> i8
    %132 = "llvm.zext"(%131) : (i8) -> i32
    %133 = "llvm.xor"(%129, %132) : (i32, i32) -> i32
    %134 = "llvm.mul"(%133, %20) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %135 = "llvm.intr.fshl"(%134, %134, %21) : (i32, i32, i32) -> i32
    %136 = "llvm.mul"(%135, %22) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %137 = "llvm.xor"(%136, %80) : (i32, i32) -> i32
    "llvm.br"(%77, %137)[^bb16] : (i32, i32) -> ()
  ^bb15:  // pred: ^bb8
    "llvm.unreachable"() : () -> ()
  ^bb16(%138: i32, %139: i32):  // 3 preds: ^bb4, ^bb8, ^bb14
    %140 = "llvm.lshr"(%139, %19) : (i32, i32) -> i32
    %141 = "llvm.xor"(%49, %140) : (i32, i32) -> i32
    %142 = "llvm.xor"(%141, %139) : (i32, i32) -> i32
    %143 = "llvm.mul"(%142, %27) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %144 = "llvm.lshr"(%143, %23) : (i32, i32) -> i32
    %145 = "llvm.xor"(%144, %143) : (i32, i32) -> i32
    %146 = "llvm.mul"(%145, %28) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %147 = "llvm.lshr"(%146, %19) : (i32, i32) -> i32
    %148 = "llvm.xor"(%147, %146) : (i32, i32) -> i32
    %149 = "llvm.intr.fshl"(%148, %148, %23) : (i32, i32, i32) -> i32
    %150 = "llvm.add"(%149, %138) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.cond_br"(%51, %6, %0, %0, %6)[^bb19, ^bb18] <{operandSegmentSizes = array<i32: 1, 1, 3>}> : (i1, i32, i32, i32, i32) -> ()
  ^bb17:  // pred: ^bb18
    %151 = "llvm.shl"(%162, %19) <{overflowFlags = 2 : i32}> : (i32, i32) -> i32
    %152 = "llvm.or"(%151, %160) <{isDisjoint}> : (i32, i32) -> i32
    "llvm.br"(%152)[^bb19] : (i32) -> ()
  ^bb18(%153: i32, %154: i32, %155: i32):  // 2 preds: ^bb16, ^bb18
    %156 = "llvm.getelementptr"(%5, %153) <{elem_type = i8, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %157 = "llvm.load"(%156) <{alignment = 1 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> i8
    %158 = "llvm.zext"(%157) : (i8) -> i32
    %159 = "llvm.add"(%155, %158) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    %160 = "llvm.urem"(%159, %29) : (i32, i32) -> i32
    %161 = "llvm.add"(%160, %154) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    %162 = "llvm.urem"(%161, %29) : (i32, i32) -> i32
    %163 = "llvm.add"(%153, %6) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    %164 = "llvm.icmp"(%163, %49) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%164, %163, %162, %160)[^bb17, ^bb18] <{loop_annotation = #loop_annotation, operandSegmentSizes = array<i32: 1, 0, 3>}> : (i1, i32, i32, i32) -> ()
  ^bb19(%165: i32):  // 2 preds: ^bb16, ^bb17
    %166 = "llvm.add"(%150, %165) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %167 = "llvm.xor"(%166, %50) : (i32, i32) -> i32
    %168 = "llvm.add"(%49, %30) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    %169 = "llvm.icmp"(%49, %31) <{predicate = 6 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%169, %168, %167)[^bb4, ^bb3] <{loop_annotation = #loop_annotation, operandSegmentSizes = array<i32: 1, 2, 0>}> : (i1, i32, i32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<32> : vector<4xi64>, i64 = dense<64> : vector<2xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little", "dlti.mangling_mode" = "e", "dlti.legal_int_widths" = array<i32: 32>, "dlti.stack_alignment" = 128 : i64>, llvm.ident = "clang version 22.1.8", llvm.module_asm = [], llvm.target_triple = "riscv32-unknown-unknown-elf"} : () -> ()

