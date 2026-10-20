#loop_annotation = #llvm.loop_annotation<mustProgress = true>
#tbaa_root = #llvm.tbaa_root<id = "Simple C/C++ TBAA">
#tbaa_type_desc = #llvm.tbaa_type_desc<id = "omnipotent char", members = {<#tbaa_root, 0>}>
#tbaa_type_desc1 = #llvm.tbaa_type_desc<id = "int", members = {<#tbaa_type_desc, 0>}>
#tbaa_tag = #llvm.tbaa_tag<base_type = #tbaa_type_desc1, access_type = #tbaa_type_desc1, offset = 0>
"builtin.module"() ({
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 4 : i64, constant, dso_local, global_type = !llvm.array<15 x i32>, linkage = #llvm.linkage<internal>, sym_name = "primes", unnamed_addr = 2 : i64, value = dense<[2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47]> : tensor<15xi32>, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 4 : i64, dso_local, global_type = !llvm.array<16 x i32>, linkage = #llvm.linkage<internal>, sym_name = "counts", unnamed_addr = 2 : i64, value = dense<[0, 0, 0, 7, 0, 0, 0, 0, 0, -2, 0, 0, 0, 0, 0, 0]> : tensor<16xi32>, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 4 : i64, dso_local, global_type = i32, linkage = #llvm.linkage<internal>, sym_name = "tick.n", unnamed_addr = 2 : i64, value = 100 : i32, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<error, "wchar_size", 4 : i32>, #llvm.mlir.module_flag<error, "target-abi", "ilp32f">, #llvm.mlir.module_flag<min, "SmallDataLimit", 0 : i32>]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = readwrite, argMem = none, inaccessibleMem = none, errnoMem = readwrite, targetMem0 = none, targetMem1 = none>, no_unwind, passthrough = ["nofree", "norecurse", "nosync", "no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "main", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 1 : i64, visibility_ = 0 : i64}> ({
    %0 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "llvm.mlir.addressof"() <{global_name = @primes}> : () -> !llvm.ptr
    %2 = "llvm.mlir.constant"() <{value = 16 : i32}> : () -> i32
    %3 = "llvm.mlir.addressof"() <{global_name = @counts}> : () -> !llvm.ptr
    %4 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %5 = "llvm.mlir.constant"() <{value = 15 : i32}> : () -> i32
    %6 = "llvm.mlir.constant"() <{value = 20 : i32}> : () -> i32
    %7 = "llvm.getelementptr"(%3, %6) <{elem_type = i8, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %8 = "llvm.mlir.constant"() <{value = 1000 : i32}> : () -> i32
    %9 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %10 = "llvm.getelementptr"(%3, %9) <{elem_type = i8, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %11 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %12 = "llvm.getelementptr"(%3, %11) <{elem_type = i8, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %13 = "llvm.mlir.constant"() <{value = 12 : i32}> : () -> i32
    %14 = "llvm.getelementptr"(%3, %13) <{elem_type = i8, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %15 = "llvm.getelementptr"(%3, %2) <{elem_type = i8, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %16 = "llvm.mlir.constant"() <{value = 24 : i32}> : () -> i32
    %17 = "llvm.getelementptr"(%3, %16) <{elem_type = i8, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %18 = "llvm.mlir.constant"() <{value = 28 : i32}> : () -> i32
    %19 = "llvm.getelementptr"(%3, %18) <{elem_type = i8, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %20 = "llvm.mlir.constant"() <{value = 32 : i32}> : () -> i32
    %21 = "llvm.getelementptr"(%3, %20) <{elem_type = i8, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %22 = "llvm.mlir.constant"() <{value = 36 : i32}> : () -> i32
    %23 = "llvm.getelementptr"(%3, %22) <{elem_type = i8, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %24 = "llvm.mlir.constant"() <{value = 40 : i32}> : () -> i32
    %25 = "llvm.getelementptr"(%3, %24) <{elem_type = i8, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %26 = "llvm.mlir.constant"() <{value = 44 : i32}> : () -> i32
    %27 = "llvm.getelementptr"(%3, %26) <{elem_type = i8, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %28 = "llvm.mlir.constant"() <{value = 48 : i32}> : () -> i32
    %29 = "llvm.getelementptr"(%3, %28) <{elem_type = i8, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %30 = "llvm.mlir.constant"() <{value = 52 : i32}> : () -> i32
    %31 = "llvm.getelementptr"(%3, %30) <{elem_type = i8, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %32 = "llvm.mlir.constant"() <{value = 56 : i32}> : () -> i32
    %33 = "llvm.getelementptr"(%3, %32) <{elem_type = i8, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %34 = "llvm.mlir.constant"() <{value = 60 : i32}> : () -> i32
    %35 = "llvm.getelementptr"(%3, %34) <{elem_type = i8, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %36 = "llvm.mlir.constant"() <{value = 7 : i32}> : () -> i32
    %37 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %38 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %39 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %40 = "llvm.mlir.constant"() <{value = 6 : i32}> : () -> i32
    %41 = "llvm.mlir.constant"() <{value = -1257131086 : i32}> : () -> i32
    %42 = "llvm.mlir.addressof"() <{global_name = @tick.n}> : () -> !llvm.ptr
    %43 = "llvm.mlir.constant"() <{value = 1569232585 : i32}> : () -> i32
    %44 = "llvm.mlir.constant"() <{value = -67006753 : i32}> : () -> i32
    "llvm.br"(%0)[^bb1] : (i32) -> ()
  ^bb1(%45: i32):  // 2 preds: ^bb0, ^bb1
    %46 = "llvm.getelementptr"(%1, %45) <{elem_type = i32, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %47 = "llvm.load"(%46) <{alignment = 4 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> i32
    %48 = "llvm.srem"(%47, %2) : (i32, i32) -> i32
    %49 = "llvm.getelementptr"(%3, %48) <{elem_type = i32, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %50 = "llvm.load"(%49) <{alignment = 4 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> i32
    %51 = "llvm.add"(%50, %47) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.store"(%51, %49) <{alignment = 4 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (i32, !llvm.ptr) -> ()
    %52 = "llvm.add"(%45, %4) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    %53 = "llvm.icmp"(%52, %5) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%53, %52)[^bb2, ^bb1] <{loop_annotation = #loop_annotation, operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb2:  // pred: ^bb1
    %54 = "llvm.load"(%7) <{alignment = 4 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> i32
    %55 = "llvm.add"(%54, %8) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.store"(%55, %7) <{alignment = 4 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (i32, !llvm.ptr) -> ()
    %56 = "llvm.load"(%3) <{alignment = 4 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> i32
    %57 = "llvm.load"(%10) <{alignment = 4 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> i32
    %58 = "llvm.load"(%12) <{alignment = 4 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> i32
    %59 = "llvm.load"(%14) <{alignment = 4 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> i32
    %60 = "llvm.load"(%15) <{alignment = 4 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> i32
    %61 = "llvm.load"(%17) <{alignment = 4 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> i32
    %62 = "llvm.load"(%19) <{alignment = 4 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> i32
    %63 = "llvm.load"(%21) <{alignment = 4 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> i32
    %64 = "llvm.load"(%23) <{alignment = 4 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> i32
    %65 = "llvm.load"(%25) <{alignment = 4 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> i32
    %66 = "llvm.load"(%27) <{alignment = 4 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> i32
    %67 = "llvm.load"(%29) <{alignment = 4 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> i32
    %68 = "llvm.load"(%31) <{alignment = 4 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> i32
    %69 = "llvm.load"(%33) <{alignment = 4 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> i32
    %70 = "llvm.load"(%35) <{alignment = 4 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> i32
    %71 = "llvm.shl"(%70, %36) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %72 = "llvm.shl"(%57, %4) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %73 = "llvm.xor"(%56, %72) : (i32, i32) -> i32
    %74 = "llvm.shl"(%58, %37) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %75 = "llvm.xor"(%73, %74) : (i32, i32) -> i32
    %76 = "llvm.shl"(%59, %38) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %77 = "llvm.xor"(%75, %76) : (i32, i32) -> i32
    %78 = "llvm.shl"(%60, %9) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %79 = "llvm.xor"(%77, %78) : (i32, i32) -> i32
    %80 = "llvm.shl"(%55, %39) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %81 = "llvm.xor"(%79, %80) : (i32, i32) -> i32
    %82 = "llvm.shl"(%61, %40) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %83 = "llvm.xor"(%81, %82) : (i32, i32) -> i32
    %84 = "llvm.shl"(%62, %36) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %85 = "llvm.xor"(%83, %84) : (i32, i32) -> i32
    %86 = "llvm.xor"(%85, %63) : (i32, i32) -> i32
    %87 = "llvm.shl"(%64, %4) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %88 = "llvm.xor"(%86, %87) : (i32, i32) -> i32
    %89 = "llvm.shl"(%65, %37) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %90 = "llvm.xor"(%88, %89) : (i32, i32) -> i32
    %91 = "llvm.shl"(%66, %38) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %92 = "llvm.xor"(%90, %91) : (i32, i32) -> i32
    %93 = "llvm.shl"(%67, %9) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %94 = "llvm.xor"(%92, %93) : (i32, i32) -> i32
    %95 = "llvm.shl"(%68, %39) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %96 = "llvm.xor"(%94, %95) : (i32, i32) -> i32
    %97 = "llvm.shl"(%69, %40) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %98 = "llvm.xor"(%96, %97) : (i32, i32) -> i32
    %99 = "llvm.xor"(%98, %71) : (i32, i32) -> i32
    %100 = "llvm.xor"(%99, %41) : (i32, i32) -> i32
    %101 = "llvm.load"(%42) <{alignment = 4 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> i32
    %102 = "llvm.add"(%101, %39) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %103 = "llvm.mul"(%101, %39) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %104 = "llvm.add"(%103, %43) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %105 = "llvm.mul"(%100, %44) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %106 = "llvm.add"(%105, %104) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.store"(%102, %42) <{alignment = 4 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (i32, !llvm.ptr) -> ()
    "llvm.return"(%106) : (i32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<32> : vector<4xi64>, i64 = dense<64> : vector<2xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little", "dlti.mangling_mode" = "e", "dlti.legal_int_widths" = array<i32: 32>, "dlti.stack_alignment" = 128 : i64>, llvm.ident = "clang version 22.1.8", llvm.module_asm = [], llvm.target_triple = "riscv32-unknown-unknown-elf"} : () -> ()

