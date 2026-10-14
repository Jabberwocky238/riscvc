"builtin.module"() ({
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<error, "wchar_size", 4 : i32>, #llvm.mlir.module_flag<error, "target-abi", "ilp32f">, #llvm.mlir.module_flag<min, "SmallDataLimit", 0 : i32>]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.noundef}], dso_local, function_type = !llvm.func<bf16 (f64)>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_unwind, passthrough = ["mustprogress", "nofree", "norecurse", "nosync", "no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "__truncdfbf2", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcalculet", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 1 : i64, visibility_ = 0 : i64, will_return}> ({
  ^bb0(%arg0: f64):
    %0 = "llvm.mlir.constant"() <{value = 52 : i64}> : () -> i64
    %1 = "llvm.mlir.constant"() <{value = 2047 : i64}> : () -> i64
    %2 = "llvm.mlir.constant"() <{value = 4503599627370495 : i64}> : () -> i64
    %3 = "llvm.mlir.constant"() <{value = -897 : i32}> : () -> i32
    %4 = "llvm.mlir.constant"() <{value = 254 : i32}> : () -> i32
    %5 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %6 = "llvm.mlir.constant"() <{value = 1150 : i32}> : () -> i32
    %7 = "llvm.mlir.constant"() <{value = 0 : i16}> : () -> i16
    %8 = "llvm.mlir.constant"() <{value = 255 : i16}> : () -> i16
    %9 = "llvm.mlir.constant"() <{value = 4503599627370496 : i64}> : () -> i64
    %10 = "llvm.mlir.constant"() <{value = 896 : i32}> : () -> i32
    %11 = "llvm.mlir.constant"() <{value = 897 : i32}> : () -> i32
    %12 = "llvm.mlir.constant"() <{value = 52 : i32}> : () -> i32
    %13 = "llvm.mlir.constant"() <{value = false}> : () -> i1
    %14 = "llvm.mlir.constant"() <{value = 64 : i32}> : () -> i32
    %15 = "llvm.mlir.constant"() <{value = 45 : i64}> : () -> i64
    %16 = "llvm.mlir.constant"() <{value = 35184372088831 : i64}> : () -> i64
    %17 = "llvm.mlir.constant"() <{value = 17592186044416 : i64}> : () -> i64
    %18 = "llvm.mlir.constant"() <{value = 1 : i16}> : () -> i16
    %19 = "llvm.mlir.constant"() <{value = 127 : i16}> : () -> i16
    %20 = "llvm.mlir.constant"() <{value = 128 : i16}> : () -> i16
    %21 = "llvm.mlir.constant"() <{value = 64 : i16}> : () -> i16
    %22 = "llvm.mlir.constant"() <{value = -895 : i16}> : () -> i16
    %23 = "llvm.mlir.constant"() <{value = -896 : i16}> : () -> i16
    %24 = "llvm.mlir.constant"() <{value = 48 : i64}> : () -> i64
    %25 = "llvm.mlir.constant"() <{value = -32768 : i16}> : () -> i16
    %26 = "llvm.mlir.constant"() <{value = 7 : i16}> : () -> i16
    %27 = "llvm.bitcast"(%arg0) : (f64) -> i64
    %28 = "llvm.lshr"(%27, %0) : (i64, i64) -> i64
    %29 = "llvm.and"(%28, %1) : (i64, i64) -> i64
    %30 = "llvm.and"(%27, %2) : (i64, i64) -> i64
    %31 = "llvm.trunc"(%29) <{overflowFlags = 3 : i32}> : (i64) -> i32
    %32 = "llvm.add"(%31, %3) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %33 = "llvm.icmp"(%32, %4) <{predicate = 6 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%33)[^bb1, ^bb6] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %34 = "llvm.trunc"(%29) <{overflowFlags = 3 : i32}> : (i64) -> i16
    %35 = "llvm.lshr"(%30, %15) : (i64, i64) -> i64
    %36 = "llvm.trunc"(%35) <{overflowFlags = 3 : i32}> : (i64) -> i16
    %37 = "llvm.and"(%27, %16) : (i64, i64) -> i64
    %38 = "llvm.icmp"(%37, %17) <{predicate = 8 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%38)[^bb2, ^bb3] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb2:  // pred: ^bb1
    %39 = "llvm.add"(%36, %18) <{overflowFlags = 3 : i32}> : (i16, i16) -> i16
    "llvm.br"(%39)[^bb5] : (i16) -> ()
  ^bb3:  // pred: ^bb1
    %40 = "llvm.icmp"(%37, %17) <{predicate = 0 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%40, %36)[^bb4, ^bb5] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i16) -> ()
  ^bb4:  // pred: ^bb3
    %41 = "llvm.and"(%36, %18) : (i16, i16) -> i16
    %42 = "llvm.add"(%41, %36) <{overflowFlags = 3 : i32}> : (i16, i16) -> i16
    "llvm.br"(%42)[^bb5] : (i16) -> ()
  ^bb5(%43: i16):  // 3 preds: ^bb2, ^bb3, ^bb4
    %44 = "llvm.icmp"(%43, %19) <{predicate = 8 : i64}> : (i16, i16) -> i1
    %45 = "llvm.select"(%44, %7, %43) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i16, i16) -> i16
    %46 = "llvm.select"(%44, %22, %23) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i16, i16) -> i16
    %47 = "llvm.add"(%46, %34) <{overflowFlags = 1 : i32}> : (i16, i16) -> i16
    "llvm.br"(%45, %47)[^bb17] : (i16, i16) -> ()
  ^bb6:  // pred: ^bb0
    %48 = "llvm.icmp"(%29, %1) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %49 = "llvm.icmp"(%30, %5) <{predicate = 1 : i64}> : (i64, i64) -> i1
    %50 = "llvm.and"(%49, %48) : (i1, i1) -> i1
    "llvm.cond_br"(%50)[^bb7, ^bb8] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb7:  // pred: ^bb6
    %51 = "llvm.lshr"(%30, %15) : (i64, i64) -> i64
    %52 = "llvm.trunc"(%51) <{overflowFlags = 3 : i32}> : (i64) -> i16
    %53 = "llvm.or"(%52, %21) : (i16, i16) -> i16
    "llvm.br"(%53, %8)[^bb17] : (i16, i16) -> ()
  ^bb8:  // pred: ^bb6
    %54 = "llvm.icmp"(%31, %6) <{predicate = 8 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%54, %7, %8)[^bb17, ^bb9] <{operandSegmentSizes = array<i32: 1, 2, 0>}> : (i1, i16, i16) -> ()
  ^bb9:  // pred: ^bb8
    %55 = "llvm.icmp"(%29, %5) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %56 = "llvm.or"(%30, %9) <{isDisjoint}> : (i64, i64) -> i64
    %57 = "llvm.select"(%55, %10, %11) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %58 = "llvm.select"(%55, %30, %56) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    %59 = "llvm.sub"(%57, %31) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %60 = "llvm.icmp"(%59, %12) <{predicate = 4 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%60, %7, %7)[^bb17, ^bb10] <{operandSegmentSizes = array<i32: 1, 2, 0>}> : (i1, i16, i16) -> ()
  ^bb10:  // pred: ^bb9
    %61 = "llvm.icmp"(%57, %31) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%61, %13)[^bb12, ^bb11] <{operandSegmentSizes = array<i32: 1, 1, 0>}> : (i1, i1) -> ()
  ^bb11:  // pred: ^bb10
    %62 = "llvm.sub"(%14, %59) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %63 = "llvm.zext"(%62) <{nonNeg}> : (i32) -> i64
    %64 = "llvm.shl"(%58, %63) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %65 = "llvm.icmp"(%64, %5) <{predicate = 1 : i64}> : (i64, i64) -> i1
    "llvm.br"(%65)[^bb12] : (i1) -> ()
  ^bb12(%66: i1):  // 2 preds: ^bb10, ^bb11
    %67 = "llvm.zext"(%59) <{nonNeg}> : (i32) -> i64
    %68 = "llvm.lshr"(%58, %67) : (i64, i64) -> i64
    %69 = "llvm.zext"(%66) : (i1) -> i64
    %70 = "llvm.lshr"(%68, %15) : (i64, i64) -> i64
    %71 = "llvm.trunc"(%70) <{overflowFlags = 3 : i32}> : (i64) -> i16
    %72 = "llvm.and"(%68, %16) : (i64, i64) -> i64
    %73 = "llvm.or"(%72, %69) : (i64, i64) -> i64
    %74 = "llvm.icmp"(%73, %17) <{predicate = 8 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%74)[^bb13, ^bb14] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb13:  // pred: ^bb12
    %75 = "llvm.add"(%71, %18) <{overflowFlags = 3 : i32}> : (i16, i16) -> i16
    "llvm.br"(%75)[^bb16] : (i16) -> ()
  ^bb14:  // pred: ^bb12
    %76 = "llvm.icmp"(%73, %17) <{predicate = 0 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%76, %71)[^bb15, ^bb16] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i16) -> ()
  ^bb15:  // pred: ^bb14
    %77 = "llvm.and"(%71, %18) : (i16, i16) -> i16
    %78 = "llvm.add"(%77, %71) <{overflowFlags = 3 : i32}> : (i16, i16) -> i16
    "llvm.br"(%78)[^bb16] : (i16) -> ()
  ^bb16(%79: i16):  // 3 preds: ^bb13, ^bb14, ^bb15
    %80 = "llvm.icmp"(%79, %19) <{predicate = 8 : i64}> : (i16, i16) -> i1
    %81 = "llvm.xor"(%79, %20) : (i16, i16) -> i16
    %82 = "llvm.select"(%80, %81, %79) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i16, i16) -> i16
    %83 = "llvm.zext"(%80) : (i1) -> i16
    "llvm.br"(%82, %83)[^bb17] : (i16, i16) -> ()
  ^bb17(%84: i16, %85: i16):  // 5 preds: ^bb5, ^bb7, ^bb8, ^bb9, ^bb16
    %86 = "llvm.lshr"(%27, %24) : (i64, i64) -> i64
    %87 = "llvm.trunc"(%86) <{overflowFlags = 2 : i32}> : (i64) -> i16
    %88 = "llvm.and"(%87, %25) : (i16, i16) -> i16
    %89 = "llvm.shl"(%85, %26) <{overflowFlags = 3 : i32}> : (i16, i16) -> i16
    %90 = "llvm.or"(%89, %88) <{isDisjoint}> : (i16, i16) -> i16
    %91 = "llvm.or"(%90, %84) : (i16, i16) -> i16
    %92 = "llvm.bitcast"(%91) : (i16) -> bf16
    "llvm.return"(%92) : (bf16) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<32> : vector<4xi64>, i64 = dense<64> : vector<2xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little", "dlti.mangling_mode" = "e", "dlti.legal_int_widths" = array<i32: 32>, "dlti.stack_alignment" = 128 : i64>, llvm.ident = "clang version 22.1.8", llvm.module_asm = [], llvm.target_triple = "riscv32-unknown-unknown-elf"} : () -> ()

