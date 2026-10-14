"builtin.module"() ({
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<error, "wchar_size", 4 : i32>, #llvm.mlir.module_flag<error, "target-abi", "ilp32f">, #llvm.mlir.module_flag<min, "SmallDataLimit", 0 : i32>]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.align = 8 : i64, llvm.noalias, llvm.nocapture, llvm.sret = !llvm.struct<(f64, f64)>, llvm.writeonly}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], dso_local, function_type = !llvm.func<void (ptr, f64, f64, f64, f64)>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = write, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_unwind, passthrough = ["mustprogress", "nofree", "norecurse", "nosync", "no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "__muldc3", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcalculet", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 1 : i64, visibility_ = 0 : i64, will_return}> ({
  ^bb0(%arg0: !llvm.ptr, %arg1: f64, %arg2: f64, %arg3: f64, %arg4: f64):
    %0 = "llvm.mlir.constant"() <{value = 0.000000e+00 : f64}> : () -> f64
    %1 = "llvm.mlir.constant"() <{value = 0x7FF0000000000000 : f64}> : () -> f64
    %2 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %3 = "llvm.fmul"(%arg1, %arg3) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %4 = "llvm.fmul"(%arg2, %arg4) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %5 = "llvm.fmul"(%arg1, %arg4) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %6 = "llvm.fmul"(%arg2, %arg3) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %7 = "llvm.fsub"(%3, %4) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %8 = "llvm.fadd"(%6, %5) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %9 = "llvm.fcmp"(%7, %0) <{fastmathFlags = #llvm.fastmath<none>, predicate = 14 : i64}> : (f64, f64) -> i1
    %10 = "llvm.fcmp"(%8, %0) <{fastmathFlags = #llvm.fastmath<none>, predicate = 14 : i64}> : (f64, f64) -> i1
    %11 = "llvm.and"(%9, %10) : (i1, i1) -> i1
    "llvm.cond_br"(%11, %8, %7)[^bb1, ^bb9] <{operandSegmentSizes = array<i32: 1, 0, 2>}> : (i1, f64, f64) -> ()
  ^bb1:  // pred: ^bb0
    %12 = "llvm.intr.fabs"(%arg1) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    %13 = "llvm.fcmp"(%12, %1) <{fastmathFlags = #llvm.fastmath<none>, predicate = 1 : i64}> : (f64, f64) -> i1
    %14 = "llvm.intr.fabs"(%arg2) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    %15 = "llvm.fcmp"(%14, %1) <{fastmathFlags = #llvm.fastmath<none>, predicate = 1 : i64}> : (f64, f64) -> i1
    %16 = "llvm.or"(%13, %15) : (i1, i1) -> i1
    "llvm.cond_br"(%16, %arg4, %arg3, %arg2, %arg1)[^bb2, ^bb3] <{operandSegmentSizes = array<i32: 1, 0, 4>}> : (i1, f64, f64, f64, f64) -> ()
  ^bb2:  // pred: ^bb1
    %17 = "llvm.uitofp"(%13) : (i1) -> f64
    %18 = "llvm.intr.copysign"(%17, %arg1) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %19 = "llvm.uitofp"(%15) : (i1) -> f64
    %20 = "llvm.intr.copysign"(%19, %arg2) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %21 = "llvm.fcmp"(%arg3, %0) <{fastmathFlags = #llvm.fastmath<none>, predicate = 14 : i64}> : (f64, f64) -> i1
    %22 = "llvm.intr.copysign"(%0, %arg3) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %23 = "llvm.select"(%21, %22, %arg3) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, f64, f64) -> f64
    %24 = "llvm.fcmp"(%arg4, %0) <{fastmathFlags = #llvm.fastmath<none>, predicate = 14 : i64}> : (f64, f64) -> i1
    %25 = "llvm.intr.copysign"(%0, %arg4) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %26 = "llvm.select"(%24, %25, %arg4) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, f64, f64) -> f64
    "llvm.br"(%26, %23, %20, %18)[^bb3] : (f64, f64, f64, f64) -> ()
  ^bb3(%27: f64, %28: f64, %29: f64, %30: f64):  // 2 preds: ^bb1, ^bb2
    %31 = "llvm.intr.fabs"(%28) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    %32 = "llvm.fcmp"(%31, %1) <{fastmathFlags = #llvm.fastmath<none>, predicate = 1 : i64}> : (f64, f64) -> i1
    %33 = "llvm.intr.fabs"(%27) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    %34 = "llvm.fcmp"(%33, %1) <{fastmathFlags = #llvm.fastmath<none>, predicate = 1 : i64}> : (f64, f64) -> i1
    %35 = "llvm.or"(%34, %32) : (i1, i1) -> i1
    "llvm.cond_br"(%35)[^bb4, ^bb5] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb4:  // pred: ^bb3
    %36 = "llvm.uitofp"(%32) : (i1) -> f64
    %37 = "llvm.intr.copysign"(%36, %28) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %38 = "llvm.uitofp"(%34) : (i1) -> f64
    %39 = "llvm.intr.copysign"(%38, %27) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %40 = "llvm.fcmp"(%30, %0) <{fastmathFlags = #llvm.fastmath<none>, predicate = 14 : i64}> : (f64, f64) -> i1
    %41 = "llvm.intr.copysign"(%0, %30) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %42 = "llvm.select"(%40, %41, %30) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, f64, f64) -> f64
    %43 = "llvm.fcmp"(%29, %0) <{fastmathFlags = #llvm.fastmath<none>, predicate = 14 : i64}> : (f64, f64) -> i1
    %44 = "llvm.intr.copysign"(%0, %29) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %45 = "llvm.select"(%43, %44, %29) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, f64, f64) -> f64
    "llvm.br"(%39, %37, %45, %42)[^bb8] : (f64, f64, f64, f64) -> ()
  ^bb5:  // pred: ^bb3
    "llvm.cond_br"(%16, %27, %28, %29, %30)[^bb8, ^bb6] <{operandSegmentSizes = array<i32: 1, 4, 0>}> : (i1, f64, f64, f64, f64) -> ()
  ^bb6:  // pred: ^bb5
    %46 = "llvm.intr.fabs"(%3) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    %47 = "llvm.fcmp"(%46, %1) <{fastmathFlags = #llvm.fastmath<none>, predicate = 1 : i64}> : (f64, f64) -> i1
    %48 = "llvm.intr.fabs"(%4) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    %49 = "llvm.fcmp"(%48, %1) <{fastmathFlags = #llvm.fastmath<none>, predicate = 1 : i64}> : (f64, f64) -> i1
    %50 = "llvm.or"(%47, %49) : (i1, i1) -> i1
    %51 = "llvm.intr.fabs"(%5) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    %52 = "llvm.fcmp"(%51, %1) <{fastmathFlags = #llvm.fastmath<none>, predicate = 1 : i64}> : (f64, f64) -> i1
    %53 = "llvm.or"(%52, %50) : (i1, i1) -> i1
    %54 = "llvm.intr.fabs"(%6) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    %55 = "llvm.fcmp"(%54, %1) <{fastmathFlags = #llvm.fastmath<none>, predicate = 1 : i64}> : (f64, f64) -> i1
    %56 = "llvm.or"(%55, %53) : (i1, i1) -> i1
    "llvm.cond_br"(%56, %8, %7)[^bb7, ^bb9] <{operandSegmentSizes = array<i32: 1, 0, 2>}> : (i1, f64, f64) -> ()
  ^bb7:  // pred: ^bb6
    %57 = "llvm.fcmp"(%30, %0) <{fastmathFlags = #llvm.fastmath<none>, predicate = 14 : i64}> : (f64, f64) -> i1
    %58 = "llvm.intr.copysign"(%0, %30) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %59 = "llvm.select"(%57, %58, %30) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, f64, f64) -> f64
    %60 = "llvm.fcmp"(%29, %0) <{fastmathFlags = #llvm.fastmath<none>, predicate = 14 : i64}> : (f64, f64) -> i1
    %61 = "llvm.intr.copysign"(%0, %29) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %62 = "llvm.select"(%60, %61, %29) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, f64, f64) -> f64
    %63 = "llvm.fcmp"(%28, %0) <{fastmathFlags = #llvm.fastmath<none>, predicate = 14 : i64}> : (f64, f64) -> i1
    %64 = "llvm.intr.copysign"(%0, %28) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %65 = "llvm.select"(%63, %64, %28) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, f64, f64) -> f64
    %66 = "llvm.fcmp"(%27, %0) <{fastmathFlags = #llvm.fastmath<none>, predicate = 14 : i64}> : (f64, f64) -> i1
    %67 = "llvm.intr.copysign"(%0, %27) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %68 = "llvm.select"(%66, %67, %27) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, f64, f64) -> f64
    "llvm.br"(%68, %65, %62, %59)[^bb8] : (f64, f64, f64, f64) -> ()
  ^bb8(%69: f64, %70: f64, %71: f64, %72: f64):  // 3 preds: ^bb4, ^bb5, ^bb7
    %73 = "llvm.fneg"(%69) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    %74 = "llvm.fmul"(%71, %73) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %75 = "llvm.intr.fmuladd"(%72, %70, %74) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64, f64) -> f64
    %76 = "llvm.fmul"(%75, %1) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %77 = "llvm.fmul"(%70, %71) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %78 = "llvm.intr.fmuladd"(%72, %69, %77) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64, f64) -> f64
    %79 = "llvm.fmul"(%78, %1) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.br"(%79, %76)[^bb9] : (f64, f64) -> ()
  ^bb9(%80: f64, %81: f64):  // 3 preds: ^bb0, ^bb6, ^bb8
    %82 = "llvm.getelementptr"(%arg0, %2) <{elem_type = i8, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%81, %arg0) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    "llvm.store"(%80, %82) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<32> : vector<4xi64>, i64 = dense<64> : vector<2xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little", "dlti.mangling_mode" = "e", "dlti.legal_int_widths" = array<i32: 32>, "dlti.stack_alignment" = 128 : i64>, llvm.ident = "clang version 22.1.8", llvm.module_asm = [], llvm.target_triple = "riscv32-unknown-unknown-elf"} : () -> ()

