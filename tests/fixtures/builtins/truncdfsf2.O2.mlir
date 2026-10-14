"builtin.module"() ({
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<error, "wchar_size", 4 : i32>, #llvm.mlir.module_flag<error, "target-abi", "ilp32f">, #llvm.mlir.module_flag<min, "SmallDataLimit", 0 : i32>]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.noundef}], dso_local, function_type = !llvm.func<f32 (f64)>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_unwind, passthrough = ["mustprogress", "nofree", "norecurse", "nosync", "no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "__truncdfsf2", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcalculet", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 1 : i64, visibility_ = 0 : i64, will_return}> ({
  ^bb0(%arg0: f64):
    %0 = "llvm.mlir.constant"() <{value = 52 : i64}> : () -> i64
    %1 = "llvm.mlir.constant"() <{value = 2047 : i64}> : () -> i64
    %2 = "llvm.mlir.constant"() <{value = 4503599627370495 : i64}> : () -> i64
    %3 = "llvm.mlir.constant"() <{value = -897 : i32}> : () -> i32
    %4 = "llvm.mlir.constant"() <{value = 254 : i32}> : () -> i32
    %5 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %6 = "llvm.mlir.constant"() <{value = 1150 : i32}> : () -> i32
    %7 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %8 = "llvm.mlir.constant"() <{value = 255 : i32}> : () -> i32
    %9 = "llvm.mlir.constant"() <{value = 4503599627370496 : i64}> : () -> i64
    %10 = "llvm.mlir.constant"() <{value = 896 : i32}> : () -> i32
    %11 = "llvm.mlir.constant"() <{value = 897 : i32}> : () -> i32
    %12 = "llvm.mlir.constant"() <{value = 52 : i32}> : () -> i32
    %13 = "llvm.mlir.constant"() <{value = false}> : () -> i1
    %14 = "llvm.mlir.constant"() <{value = 64 : i32}> : () -> i32
    %15 = "llvm.mlir.constant"() <{value = 29 : i64}> : () -> i64
    %16 = "llvm.mlir.constant"() <{value = 536870911 : i64}> : () -> i64
    %17 = "llvm.mlir.constant"() <{value = 268435456 : i64}> : () -> i64
    %18 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %19 = "llvm.mlir.constant"() <{value = 8388607 : i32}> : () -> i32
    %20 = "llvm.mlir.constant"() <{value = 8388608 : i32}> : () -> i32
    %21 = "llvm.mlir.constant"() <{value = 4194304 : i32}> : () -> i32
    %22 = "llvm.mlir.constant"() <{value = -895 : i32}> : () -> i32
    %23 = "llvm.mlir.constant"() <{value = -896 : i32}> : () -> i32
    %24 = "llvm.mlir.constant"() <{value = 32 : i64}> : () -> i64
    %25 = "llvm.mlir.constant"() <{value = -2147483648 : i32}> : () -> i32
    %26 = "llvm.mlir.constant"() <{value = 23 : i32}> : () -> i32
    %27 = "llvm.bitcast"(%arg0) : (f64) -> i64
    %28 = "llvm.lshr"(%27, %0) : (i64, i64) -> i64
    %29 = "llvm.and"(%28, %1) : (i64, i64) -> i64
    %30 = "llvm.and"(%27, %2) : (i64, i64) -> i64
    %31 = "llvm.trunc"(%29) <{overflowFlags = 3 : i32}> : (i64) -> i32
    %32 = "llvm.add"(%31, %3) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %33 = "llvm.icmp"(%32, %4) <{predicate = 6 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%33)[^bb1, ^bb6] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %34 = "llvm.lshr"(%30, %15) : (i64, i64) -> i64
    %35 = "llvm.trunc"(%34) <{overflowFlags = 3 : i32}> : (i64) -> i32
    %36 = "llvm.and"(%27, %16) : (i64, i64) -> i64
    %37 = "llvm.icmp"(%36, %17) <{predicate = 8 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%37)[^bb2, ^bb3] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb2:  // pred: ^bb1
    %38 = "llvm.add"(%35, %18) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    "llvm.br"(%38)[^bb5] : (i32) -> ()
  ^bb3:  // pred: ^bb1
    %39 = "llvm.icmp"(%36, %17) <{predicate = 0 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%39, %35)[^bb4, ^bb5] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb4:  // pred: ^bb3
    %40 = "llvm.and"(%35, %18) : (i32, i32) -> i32
    %41 = "llvm.add"(%40, %35) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    "llvm.br"(%41)[^bb5] : (i32) -> ()
  ^bb5(%42: i32):  // 3 preds: ^bb2, ^bb3, ^bb4
    %43 = "llvm.icmp"(%42, %19) <{predicate = 8 : i64}> : (i32, i32) -> i1
    %44 = "llvm.select"(%43, %7, %42) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %45 = "llvm.select"(%43, %22, %23) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %46 = "llvm.add"(%45, %31) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.br"(%44, %46)[^bb17] : (i32, i32) -> ()
  ^bb6:  // pred: ^bb0
    %47 = "llvm.icmp"(%29, %1) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %48 = "llvm.icmp"(%30, %5) <{predicate = 1 : i64}> : (i64, i64) -> i1
    %49 = "llvm.and"(%48, %47) : (i1, i1) -> i1
    "llvm.cond_br"(%49)[^bb7, ^bb8] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb7:  // pred: ^bb6
    %50 = "llvm.lshr"(%30, %15) : (i64, i64) -> i64
    %51 = "llvm.trunc"(%50) <{overflowFlags = 3 : i32}> : (i64) -> i32
    %52 = "llvm.or"(%51, %21) : (i32, i32) -> i32
    "llvm.br"(%52, %8)[^bb17] : (i32, i32) -> ()
  ^bb8:  // pred: ^bb6
    %53 = "llvm.icmp"(%31, %6) <{predicate = 8 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%53, %7, %8)[^bb17, ^bb9] <{operandSegmentSizes = array<i32: 1, 2, 0>}> : (i1, i32, i32) -> ()
  ^bb9:  // pred: ^bb8
    %54 = "llvm.icmp"(%29, %5) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %55 = "llvm.or"(%30, %9) <{isDisjoint}> : (i64, i64) -> i64
    %56 = "llvm.select"(%54, %10, %11) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %57 = "llvm.select"(%54, %30, %55) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    %58 = "llvm.sub"(%56, %31) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %59 = "llvm.icmp"(%58, %12) <{predicate = 4 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%59, %7, %7)[^bb17, ^bb10] <{operandSegmentSizes = array<i32: 1, 2, 0>}> : (i1, i32, i32) -> ()
  ^bb10:  // pred: ^bb9
    %60 = "llvm.icmp"(%56, %31) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%60, %13)[^bb12, ^bb11] <{operandSegmentSizes = array<i32: 1, 1, 0>}> : (i1, i1) -> ()
  ^bb11:  // pred: ^bb10
    %61 = "llvm.sub"(%14, %58) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %62 = "llvm.zext"(%61) <{nonNeg}> : (i32) -> i64
    %63 = "llvm.shl"(%57, %62) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %64 = "llvm.icmp"(%63, %5) <{predicate = 1 : i64}> : (i64, i64) -> i1
    "llvm.br"(%64)[^bb12] : (i1) -> ()
  ^bb12(%65: i1):  // 2 preds: ^bb10, ^bb11
    %66 = "llvm.zext"(%58) <{nonNeg}> : (i32) -> i64
    %67 = "llvm.lshr"(%57, %66) : (i64, i64) -> i64
    %68 = "llvm.zext"(%65) : (i1) -> i64
    %69 = "llvm.lshr"(%67, %15) : (i64, i64) -> i64
    %70 = "llvm.trunc"(%69) <{overflowFlags = 3 : i32}> : (i64) -> i32
    %71 = "llvm.and"(%67, %16) : (i64, i64) -> i64
    %72 = "llvm.or"(%71, %68) : (i64, i64) -> i64
    %73 = "llvm.icmp"(%72, %17) <{predicate = 8 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%73)[^bb13, ^bb14] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb13:  // pred: ^bb12
    %74 = "llvm.add"(%70, %18) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    "llvm.br"(%74)[^bb16] : (i32) -> ()
  ^bb14:  // pred: ^bb12
    %75 = "llvm.icmp"(%72, %17) <{predicate = 0 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%75, %70)[^bb15, ^bb16] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb15:  // pred: ^bb14
    %76 = "llvm.and"(%70, %18) : (i32, i32) -> i32
    %77 = "llvm.add"(%76, %70) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    "llvm.br"(%77)[^bb16] : (i32) -> ()
  ^bb16(%78: i32):  // 3 preds: ^bb13, ^bb14, ^bb15
    %79 = "llvm.icmp"(%78, %19) <{predicate = 8 : i64}> : (i32, i32) -> i1
    %80 = "llvm.xor"(%78, %20) : (i32, i32) -> i32
    %81 = "llvm.select"(%79, %80, %78) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %82 = "llvm.zext"(%79) : (i1) -> i32
    "llvm.br"(%81, %82)[^bb17] : (i32, i32) -> ()
  ^bb17(%83: i32, %84: i32):  // 5 preds: ^bb5, ^bb7, ^bb8, ^bb9, ^bb16
    %85 = "llvm.lshr"(%27, %24) : (i64, i64) -> i64
    %86 = "llvm.trunc"(%85) <{overflowFlags = 2 : i32}> : (i64) -> i32
    %87 = "llvm.and"(%86, %25) : (i32, i32) -> i32
    %88 = "llvm.shl"(%84, %26) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    %89 = "llvm.or"(%88, %87) <{isDisjoint}> : (i32, i32) -> i32
    %90 = "llvm.or"(%89, %83) : (i32, i32) -> i32
    %91 = "llvm.bitcast"(%90) : (i32) -> f32
    "llvm.return"(%91) : (f32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<32> : vector<4xi64>, i64 = dense<64> : vector<2xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little", "dlti.mangling_mode" = "e", "dlti.legal_int_widths" = array<i32: 32>, "dlti.stack_alignment" = 128 : i64>, llvm.ident = "clang version 22.1.8", llvm.module_asm = [], llvm.target_triple = "riscv32-unknown-unknown-elf"} : () -> ()

