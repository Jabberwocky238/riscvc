#loop_annotation = #llvm.loop_annotation<mustProgress = true>
#tbaa_root = #llvm.tbaa_root<id = "Simple C/C++ TBAA">
#tbaa_type_desc = #llvm.tbaa_type_desc<id = "omnipotent char", members = {<#tbaa_root, 0>}>
#tbaa_type_desc1 = #llvm.tbaa_type_desc<id = "long long", members = {<#tbaa_type_desc, 0>}>
#tbaa_tag = #llvm.tbaa_tag<base_type = #tbaa_type_desc1, access_type = #tbaa_type_desc1, offset = 0>
"builtin.module"() ({
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 8 : i64, dso_local, global_type = i64, linkage = #llvm.linkage<internal>, sym_name = "s", unnamed_addr = 2 : i64, value = 1311768467463790320 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<error, "wchar_size", 4 : i32>, #llvm.mlir.module_flag<error, "target-abi", "ilp32f">, #llvm.mlir.module_flag<min, "SmallDataLimit", 0 : i32>]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = readwrite, argMem = none, inaccessibleMem = none, errnoMem = readwrite, targetMem0 = none, targetMem1 = none>, no_unwind, passthrough = ["nofree", "norecurse", "nosync", "no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "main", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcalculet", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 1 : i64, visibility_ = 0 : i64}> ({
    %0 = "llvm.mlir.addressof"() <{global_name = @s}> : () -> !llvm.ptr
    %1 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %2 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %3 = "llvm.mlir.constant"() <{value = 7 : i64}> : () -> i64
    %4 = "llvm.mlir.constant"() <{value = 9 : i64}> : () -> i64
    %5 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %6 = "llvm.mlir.constant"() <{value = 40 : i8}> : () -> i8
    %7 = "llvm.mlir.constant"() <{value = 63 : i32}> : () -> i32
    %8 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %9 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %10 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %11 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %12 = "llvm.mlir.constant"() <{value = 3 : i64}> : () -> i64
    %13 = "llvm.mlir.constant"() <{value = 32 : i64}> : () -> i64
    %14 = "llvm.mlir.constant"() <{value = 65535 : i64}> : () -> i64
    %15 = "llvm.mlir.constant"() <{value = 56 : i64}> : () -> i64
    %16 = "llvm.mlir.constant"() <{value = 13 : i64}> : () -> i64
    %17 = "llvm.mlir.constant"() <{value = 200 : i32}> : () -> i32
    %18 = "llvm.load"(%0) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> i64
    "llvm.br"(%1, %2, %18)[^bb2] : (i64, i32, i64) -> ()
  ^bb1:  // pred: ^bb2
    "llvm.store"(%32, %0) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (i64, !llvm.ptr) -> ()
    %19 = "llvm.lshr"(%92, %13) : (i64, i64) -> i64
    %20 = "llvm.xor"(%19, %92) : (i64, i64) -> i64
    %21 = "llvm.trunc"(%20) <{overflowFlags = 0 : i32}> : (i64) -> i32
    "llvm.return"(%21) : (i32) -> ()
  ^bb2(%22: i64, %23: i32, %24: i64):  // 2 preds: ^bb0, ^bb2
    %25 = "llvm.shl"(%24, %3) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %26 = "llvm.xor"(%25, %24) : (i64, i64) -> i64
    %27 = "llvm.lshr"(%26, %4) : (i64, i64) -> i64
    %28 = "llvm.xor"(%27, %26) : (i64, i64) -> i64
    %29 = "llvm.shl"(%28, %3) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %30 = "llvm.xor"(%29, %28) : (i64, i64) -> i64
    %31 = "llvm.lshr"(%30, %4) : (i64, i64) -> i64
    %32 = "llvm.xor"(%31, %30) : (i64, i64) -> i64
    %33 = "llvm.or"(%32, %5) : (i64, i64) -> i64
    %34 = "llvm.trunc"(%23) <{overflowFlags = 2 : i32}> : (i32) -> i8
    %35 = "llvm.urem"(%34, %6) : (i8, i8) -> i8
    %36 = "llvm.zext"(%35) <{nonNeg}> : (i8) -> i64
    %37 = "llvm.lshr"(%33, %36) : (i64, i64) -> i64
    %38 = "llvm.or"(%37, %5) : (i64, i64) -> i64
    %39 = "llvm.and"(%23, %7) : (i32, i32) -> i32
    %40 = "llvm.mul"(%33, %28) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %41 = "llvm.add"(%40, %22) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %42 = "llvm.freeze"(%28) : (i64) -> i64
    %43 = "llvm.freeze"(%33) : (i64) -> i64
    %44 = "llvm.udiv"(%42, %43) : (i64, i64) -> i64
    %45 = "llvm.mul"(%44, %43) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %46 = "llvm.sub"(%42, %45) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %47 = "llvm.add"(%46, %44) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %48 = "llvm.xor"(%41, %47) : (i64, i64) -> i64
    %49 = "llvm.freeze"(%28) : (i64) -> i64
    %50 = "llvm.freeze"(%38) : (i64) -> i64
    %51 = "llvm.sdiv"(%49, %50) : (i64, i64) -> i64
    %52 = "llvm.mul"(%51, %50) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %53 = "llvm.sub"(%49, %52) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %54 = "llvm.xor"(%53, %51) : (i64, i64) -> i64
    %55 = "llvm.zext"(%39) <{nonNeg}> : (i32) -> i64
    %56 = "llvm.shl"(%28, %55) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %57 = "llvm.lshr"(%28, %55) : (i64, i64) -> i64
    %58 = "llvm.xor"(%56, %57) : (i64, i64) -> i64
    %59 = "llvm.ashr"(%28, %55) : (i64, i64) -> i64
    %60 = "llvm.xor"(%58, %59) : (i64, i64) -> i64
    %61 = "llvm.icmp"(%28, %33) <{predicate = 6 : i64}> : (i64, i64) -> i1
    %62 = "llvm.icmp"(%28, %38) <{predicate = 2 : i64}> : (i64, i64) -> i1
    %63 = "llvm.select"(%62, %8, %2) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %64 = "llvm.icmp"(%28, %38) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %65 = "llvm.select"(%64, %9, %2) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %66 = "llvm.select"(%61, %10, %11) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %67 = "llvm.or"(%66, %63) <{isDisjoint}> : (i32, i32) -> i32
    %68 = "llvm.or"(%67, %65) <{isDisjoint}> : (i32, i32) -> i32
    %69 = "llvm.zext"(%68) <{nonNeg}> : (i32) -> i64
    %70 = "llvm.intr.smul.with.overflow"(%28, %38) : (i64, i64) -> !llvm.struct<(i64, i1)>
    %71 = "llvm.extractvalue"(%70) <{position = array<i64: 1>}> : (!llvm.struct<(i64, i1)>) -> i1
    %72 = "llvm.extractvalue"(%70) <{position = array<i64: 0>}> : (!llvm.struct<(i64, i1)>) -> i64
    %73 = "llvm.zext"(%71) : (i1) -> i64
    %74 = "llvm.intr.sadd.with.overflow"(%28, %38) : (i64, i64) -> !llvm.struct<(i64, i1)>
    %75 = "llvm.extractvalue"(%74) <{position = array<i64: 1>}> : (!llvm.struct<(i64, i1)>) -> i1
    %76 = "llvm.extractvalue"(%74) <{position = array<i64: 0>}> : (!llvm.struct<(i64, i1)>) -> i64
    %77 = "llvm.select"(%75, %12, %1) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    %78 = "llvm.ashr"(%28, %13) : (i64, i64) -> i64
    %79 = "llvm.and"(%33, %14) : (i64, i64) -> i64
    %80 = "llvm.shl"(%28, %15) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %81 = "llvm.ashr"(%80, %15) <{isExact}> : (i64, i64) -> i64
    %82 = "llvm.add"(%81, %78) <{overflowFlags = 1 : i32}> : (i64, i64) -> i64
    %83 = "llvm.add"(%82, %54) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %84 = "llvm.add"(%83, %60) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %85 = "llvm.add"(%84, %79) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %86 = "llvm.add"(%85, %48) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %87 = "llvm.add"(%86, %76) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %88 = "llvm.add"(%87, %72) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %89 = "llvm.add"(%88, %77) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %90 = "llvm.add"(%89, %73) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %91 = "llvm.add"(%90, %69) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %92 = "llvm.intr.fshl"(%91, %91, %16) : (i64, i64, i64) -> i64
    %93 = "llvm.add"(%23, %10) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    %94 = "llvm.icmp"(%93, %17) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%94, %92, %93, %32)[^bb1, ^bb2] <{loop_annotation = #loop_annotation, operandSegmentSizes = array<i32: 1, 0, 3>}> : (i1, i64, i32, i64) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<32> : vector<4xi64>, i64 = dense<64> : vector<2xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little", "dlti.mangling_mode" = "e", "dlti.legal_int_widths" = array<i32: 32>, "dlti.stack_alignment" = 128 : i64>, llvm.ident = "clang version 22.1.8", llvm.module_asm = [], llvm.target_triple = "riscv32-unknown-unknown-elf"} : () -> ()

