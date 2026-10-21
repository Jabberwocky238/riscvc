#loop_annotation = #llvm.loop_annotation<mustProgress = true>
"builtin.module"() ({
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 1 : i64, dso_local, global_type = i8, linkage = #llvm.linkage<internal>, sym_name = "c8", unnamed_addr = 0 : i64, value = 126 : i8, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 1 : i64, dso_local, global_type = i8, linkage = #llvm.linkage<internal>, sym_name = "s8", unnamed_addr = 0 : i64, value = -3 : i8, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 2 : i64, dso_local, global_type = i16, linkage = #llvm.linkage<internal>, sym_name = "c16", unnamed_addr = 0 : i64, value = -16 : i16, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 2 : i64, dso_local, global_type = i16, linkage = #llvm.linkage<internal>, sym_name = "s16", unnamed_addr = 0 : i64, value = -300 : i16, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 4 : i64, dso_local, global_type = i32, linkage = #llvm.linkage<internal>, sym_name = "i32", unnamed_addr = 0 : i64, value = 1000 : i32, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 4 : i64, dso_local, global_type = i32, linkage = #llvm.linkage<internal>, sym_name = "u32v", unnamed_addr = 0 : i64, value = -16 : i32, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 4 : i64, dso_local, global_type = !llvm.array<4 x i32>, linkage = #llvm.linkage<internal>, sym_name = "arr", unnamed_addr = 0 : i64, value = dense<[1, 2, 3, 4]> : tensor<4xi32>, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 4 : i64, dso_local, global_type = !llvm.ptr, linkage = #llvm.linkage<internal>, sym_name = "ptr", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %534 = "llvm.mlir.addressof"() <{global_name = @arr}> : () -> !llvm.ptr
    "llvm.return"(%534) : (!llvm.ptr) -> ()
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 4 : i64, dso_local, global_type = f32, linkage = #llvm.linkage<internal>, sym_name = "f32", unnamed_addr = 0 : i64, value = 1.500000e+00 : f32, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<error, "wchar_size", 4 : i32>, #llvm.mlir.module_flag<error, "target-abi", "ilp32f">, #llvm.mlir.module_flag<max, "frame-pointer", 2 : i32>, #llvm.mlir.module_flag<min, "SmallDataLimit", 0 : i32>]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, frame_pointer = #llvm.framePointerKind<all>, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, no_inline, no_unwind, optimize_none, passthrough = ["no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "main", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+a", "+f", "+i", "+m", "+zaamo", "+zalrsc", "+zicsr", "+zmmul", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcalculet", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zabha", "-zacas", "-zalasr", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %10 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %11 = "llvm.mlir.constant"() <{value = -2128831035 : i32}> : () -> i32
    %12 = "llvm.mlir.constant"() <{value = -123 : i8}> : () -> i8
    %13 = "llvm.mlir.addressof"() <{global_name = @c8}> : () -> !llvm.ptr
    %14 = "llvm.mlir.constant"() <{value = 7 : i8}> : () -> i8
    %15 = "llvm.mlir.constant"() <{value = 60 : i8}> : () -> i8
    %16 = "llvm.mlir.constant"() <{value = -63 : i8}> : () -> i8
    %17 = "llvm.mlir.constant"() <{value = 90 : i8}> : () -> i8
    %18 = "llvm.mlir.constant"() <{value = 15 : i8}> : () -> i8
    %19 = "llvm.mlir.constant"() <{value = -103 : i8}> : () -> i8
    %20 = "llvm.mlir.constant"() <{value = 5 : i8}> : () -> i8
    %21 = "llvm.mlir.addressof"() <{global_name = @s8}> : () -> !llvm.ptr
    %22 = "llvm.mlir.constant"() <{value = -100 : i8}> : () -> i8
    %23 = "llvm.mlir.constant"() <{value = -16 : i8}> : () -> i8
    %24 = "llvm.mlir.constant"() <{value = 16 : i8}> : () -> i8
    %25 = "llvm.mlir.constant"() <{value = 32 : i16}> : () -> i16
    %26 = "llvm.mlir.addressof"() <{global_name = @c16}> : () -> !llvm.ptr
    %27 = "llvm.mlir.constant"() <{value = 4660 : i16}> : () -> i16
    %28 = "llvm.mlir.constant"() <{value = -3856 : i16}> : () -> i16
    %29 = "llvm.mlir.constant"() <{value = 771 : i16}> : () -> i16
    %30 = "llvm.mlir.constant"() <{value = -1 : i16}> : () -> i16
    %31 = "llvm.mlir.constant"() <{value = 30583 : i16}> : () -> i16
    %32 = "llvm.mlir.constant"() <{value = -5 : i16}> : () -> i16
    %33 = "llvm.mlir.addressof"() <{global_name = @s16}> : () -> !llvm.ptr
    %34 = "llvm.mlir.constant"() <{value = -30000 : i16}> : () -> i16
    %35 = "llvm.mlir.constant"() <{value = -32768 : i16}> : () -> i16
    %36 = "llvm.mlir.constant"() <{value = 256 : i16}> : () -> i16
    %37 = "llvm.mlir.constant"() <{value = 77 : i32}> : () -> i32
    %38 = "llvm.mlir.addressof"() <{global_name = @i32}> : () -> !llvm.ptr
    %39 = "llvm.mlir.constant"() <{value = 2000 : i32}> : () -> i32
    %40 = "llvm.mlir.constant"() <{value = 4080 : i32}> : () -> i32
    %41 = "llvm.mlir.constant"() <{value = 4097 : i32}> : () -> i32
    %42 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %43 = "llvm.mlir.constant"() <{value = 16711935 : i32}> : () -> i32
    %44 = "llvm.mlir.constant"() <{value = 12345 : i32}> : () -> i32
    %45 = "llvm.mlir.constant"() <{value = -12345 : i32}> : () -> i32
    %46 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %47 = "llvm.mlir.addressof"() <{global_name = @u32v}> : () -> !llvm.ptr
    %48 = "llvm.mlir.constant"() <{value = -2147483648 : i32}> : () -> i32
    %49 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %50 = "llvm.mlir.constant"() <{value = 17 : i8}> : () -> i8
    %51 = "llvm.mlir.constant"() <{value = 34 : i8}> : () -> i8
    %52 = "llvm.mlir.constant"() <{value = 51 : i8}> : () -> i8
    %53 = "llvm.mlir.constant"() <{value = 0 : i16}> : () -> i16
    %54 = "llvm.mlir.constant"() <{value = -21555 : i16}> : () -> i16
    %55 = "llvm.mlir.constant"() <{value = -7 : i32}> : () -> i32
    %56 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %57 = "llvm.mlir.addressof"() <{global_name = @arr}> : () -> !llvm.ptr
    %58 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %59 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %60 = "llvm.getelementptr"(%57, %59, %58) <{elem_type = !llvm.array<4 x i32>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    %61 = "llvm.mlir.addressof"() <{global_name = @ptr}> : () -> !llvm.ptr
    %62 = "llvm.getelementptr"(%57, %59, %46) <{elem_type = !llvm.array<4 x i32>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    %63 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %64 = "llvm.mlir.constant"() <{value = 6 : i16}> : () -> i16
    %65 = "llvm.mlir.constant"() <{value = 2.250000e+00 : f32}> : () -> f32
    %66 = "llvm.mlir.addressof"() <{global_name = @f32}> : () -> !llvm.ptr
    %67 = "llvm.mlir.constant"() <{value = 4.000000e+00 : f32}> : () -> f32
    %68 = "llvm.mlir.constant"() <{value = 50 : i32}> : () -> i32
    %69 = "llvm.mlir.constant"() <{value = 5.000000e-01 : f32}> : () -> f32
    %70 = "llvm.mlir.constant"() <{value = true}> : () -> i1
    %71 = "llvm.alloca"(%10) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %72 = "llvm.alloca"(%10) <{alignment = 1 : i64, elem_type = i8}> : (i32) -> !llvm.ptr
    %73 = "llvm.alloca"(%10) <{alignment = 1 : i64, elem_type = i8}> : (i32) -> !llvm.ptr
    %74 = "llvm.alloca"(%10) <{alignment = 1 : i64, elem_type = i8}> : (i32) -> !llvm.ptr
    %75 = "llvm.alloca"(%10) <{alignment = 1 : i64, elem_type = i8}> : (i32) -> !llvm.ptr
    %76 = "llvm.alloca"(%10) <{alignment = 1 : i64, elem_type = i8}> : (i32) -> !llvm.ptr
    %77 = "llvm.alloca"(%10) <{alignment = 1 : i64, elem_type = i8}> : (i32) -> !llvm.ptr
    %78 = "llvm.alloca"(%10) <{alignment = 1 : i64, elem_type = i8}> : (i32) -> !llvm.ptr
    %79 = "llvm.alloca"(%10) <{alignment = 1 : i64, elem_type = i8}> : (i32) -> !llvm.ptr
    %80 = "llvm.alloca"(%10) <{alignment = 1 : i64, elem_type = i8}> : (i32) -> !llvm.ptr
    %81 = "llvm.alloca"(%10) <{alignment = 1 : i64, elem_type = i8}> : (i32) -> !llvm.ptr
    %82 = "llvm.alloca"(%10) <{alignment = 1 : i64, elem_type = i8}> : (i32) -> !llvm.ptr
    %83 = "llvm.alloca"(%10) <{alignment = 1 : i64, elem_type = i8}> : (i32) -> !llvm.ptr
    %84 = "llvm.alloca"(%10) <{alignment = 1 : i64, elem_type = i8}> : (i32) -> !llvm.ptr
    %85 = "llvm.alloca"(%10) <{alignment = 1 : i64, elem_type = i8}> : (i32) -> !llvm.ptr
    %86 = "llvm.alloca"(%10) <{alignment = 1 : i64, elem_type = i8}> : (i32) -> !llvm.ptr
    %87 = "llvm.alloca"(%10) <{alignment = 1 : i64, elem_type = i8}> : (i32) -> !llvm.ptr
    %88 = "llvm.alloca"(%10) <{alignment = 1 : i64, elem_type = i8}> : (i32) -> !llvm.ptr
    %89 = "llvm.alloca"(%10) <{alignment = 1 : i64, elem_type = i8}> : (i32) -> !llvm.ptr
    %90 = "llvm.alloca"(%10) <{alignment = 1 : i64, elem_type = i8}> : (i32) -> !llvm.ptr
    %91 = "llvm.alloca"(%10) <{alignment = 1 : i64, elem_type = i8}> : (i32) -> !llvm.ptr
    %92 = "llvm.alloca"(%10) <{alignment = 1 : i64, elem_type = i8}> : (i32) -> !llvm.ptr
    %93 = "llvm.alloca"(%10) <{alignment = 1 : i64, elem_type = i8}> : (i32) -> !llvm.ptr
    %94 = "llvm.alloca"(%10) <{alignment = 2 : i64, elem_type = i16}> : (i32) -> !llvm.ptr
    %95 = "llvm.alloca"(%10) <{alignment = 2 : i64, elem_type = i16}> : (i32) -> !llvm.ptr
    %96 = "llvm.alloca"(%10) <{alignment = 2 : i64, elem_type = i16}> : (i32) -> !llvm.ptr
    %97 = "llvm.alloca"(%10) <{alignment = 2 : i64, elem_type = i16}> : (i32) -> !llvm.ptr
    %98 = "llvm.alloca"(%10) <{alignment = 2 : i64, elem_type = i16}> : (i32) -> !llvm.ptr
    %99 = "llvm.alloca"(%10) <{alignment = 2 : i64, elem_type = i16}> : (i32) -> !llvm.ptr
    %100 = "llvm.alloca"(%10) <{alignment = 2 : i64, elem_type = i16}> : (i32) -> !llvm.ptr
    %101 = "llvm.alloca"(%10) <{alignment = 2 : i64, elem_type = i16}> : (i32) -> !llvm.ptr
    %102 = "llvm.alloca"(%10) <{alignment = 2 : i64, elem_type = i16}> : (i32) -> !llvm.ptr
    %103 = "llvm.alloca"(%10) <{alignment = 2 : i64, elem_type = i16}> : (i32) -> !llvm.ptr
    %104 = "llvm.alloca"(%10) <{alignment = 2 : i64, elem_type = i16}> : (i32) -> !llvm.ptr
    %105 = "llvm.alloca"(%10) <{alignment = 2 : i64, elem_type = i16}> : (i32) -> !llvm.ptr
    %106 = "llvm.alloca"(%10) <{alignment = 2 : i64, elem_type = i16}> : (i32) -> !llvm.ptr
    %107 = "llvm.alloca"(%10) <{alignment = 2 : i64, elem_type = i16}> : (i32) -> !llvm.ptr
    %108 = "llvm.alloca"(%10) <{alignment = 2 : i64, elem_type = i16}> : (i32) -> !llvm.ptr
    %109 = "llvm.alloca"(%10) <{alignment = 2 : i64, elem_type = i16}> : (i32) -> !llvm.ptr
    %110 = "llvm.alloca"(%10) <{alignment = 2 : i64, elem_type = i16}> : (i32) -> !llvm.ptr
    %111 = "llvm.alloca"(%10) <{alignment = 2 : i64, elem_type = i16}> : (i32) -> !llvm.ptr
    %112 = "llvm.alloca"(%10) <{alignment = 2 : i64, elem_type = i16}> : (i32) -> !llvm.ptr
    %113 = "llvm.alloca"(%10) <{alignment = 2 : i64, elem_type = i16}> : (i32) -> !llvm.ptr
    %114 = "llvm.alloca"(%10) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %115 = "llvm.alloca"(%10) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %116 = "llvm.alloca"(%10) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %117 = "llvm.alloca"(%10) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %118 = "llvm.alloca"(%10) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %119 = "llvm.alloca"(%10) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %120 = "llvm.alloca"(%10) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %121 = "llvm.alloca"(%10) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %122 = "llvm.alloca"(%10) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %123 = "llvm.alloca"(%10) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %124 = "llvm.alloca"(%10) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %125 = "llvm.alloca"(%10) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %126 = "llvm.alloca"(%10) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %127 = "llvm.alloca"(%10) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %128 = "llvm.alloca"(%10) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %129 = "llvm.alloca"(%10) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %130 = "llvm.alloca"(%10) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %131 = "llvm.alloca"(%10) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %132 = "llvm.alloca"(%10) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %133 = "llvm.alloca"(%10) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %134 = "llvm.alloca"(%10) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %135 = "llvm.alloca"(%10) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %136 = "llvm.alloca"(%10) <{alignment = 1 : i64, elem_type = i8}> : (i32) -> !llvm.ptr
    %137 = "llvm.alloca"(%10) <{alignment = 1 : i64, elem_type = i8}> : (i32) -> !llvm.ptr
    %138 = "llvm.alloca"(%10) <{alignment = 1 : i64, elem_type = i8}> : (i32) -> !llvm.ptr
    %139 = "llvm.alloca"(%10) <{alignment = 1 : i64, elem_type = i8}> : (i32) -> !llvm.ptr
    %140 = "llvm.alloca"(%10) <{alignment = 1 : i64, elem_type = i8}> : (i32) -> !llvm.ptr
    %141 = "llvm.alloca"(%10) <{alignment = 2 : i64, elem_type = i16}> : (i32) -> !llvm.ptr
    %142 = "llvm.alloca"(%10) <{alignment = 2 : i64, elem_type = i16}> : (i32) -> !llvm.ptr
    %143 = "llvm.alloca"(%10) <{alignment = 1 : i64, elem_type = i8}> : (i32) -> !llvm.ptr
    %144 = "llvm.alloca"(%10) <{alignment = 2 : i64, elem_type = i16}> : (i32) -> !llvm.ptr
    %145 = "llvm.alloca"(%10) <{alignment = 1 : i64, elem_type = i8}> : (i32) -> !llvm.ptr
    %146 = "llvm.alloca"(%10) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %147 = "llvm.alloca"(%10) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %148 = "llvm.alloca"(%10) <{alignment = 1 : i64, elem_type = i8}> : (i32) -> !llvm.ptr
    %149 = "llvm.alloca"(%10) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %150 = "llvm.alloca"(%10) <{alignment = 1 : i64, elem_type = i8}> : (i32) -> !llvm.ptr
    %151 = "llvm.alloca"(%10) <{alignment = 4 : i64, elem_type = !llvm.ptr}> : (i32) -> !llvm.ptr
    %152 = "llvm.alloca"(%10) <{alignment = 4 : i64, elem_type = !llvm.ptr}> : (i32) -> !llvm.ptr
    %153 = "llvm.alloca"(%10) <{alignment = 1 : i64, elem_type = i8}> : (i32) -> !llvm.ptr
    %154 = "llvm.alloca"(%10) <{alignment = 4 : i64, elem_type = !llvm.ptr}> : (i32) -> !llvm.ptr
    %155 = "llvm.alloca"(%10) <{alignment = 4 : i64, elem_type = !llvm.ptr}> : (i32) -> !llvm.ptr
    %156 = "llvm.alloca"(%10) <{alignment = 4 : i64, elem_type = !llvm.ptr}> : (i32) -> !llvm.ptr
    %157 = "llvm.alloca"(%10) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %158 = "llvm.alloca"(%10) <{alignment = 2 : i64, elem_type = i16}> : (i32) -> !llvm.ptr
    %159 = "llvm.alloca"(%10) <{alignment = 1 : i64, elem_type = i8}> : (i32) -> !llvm.ptr
    %160 = "llvm.alloca"(%10) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %161 = "llvm.alloca"(%10) <{alignment = 2 : i64, elem_type = i16}> : (i32) -> !llvm.ptr
    %162 = "llvm.alloca"(%10) <{alignment = 1 : i64, elem_type = i8}> : (i32) -> !llvm.ptr
    %163 = "llvm.alloca"(%10) <{alignment = 4 : i64, elem_type = f32}> : (i32) -> !llvm.ptr
    %164 = "llvm.alloca"(%10) <{alignment = 4 : i64, elem_type = f32}> : (i32) -> !llvm.ptr
    %165 = "llvm.alloca"(%10) <{alignment = 4 : i64, elem_type = f32}> : (i32) -> !llvm.ptr
    %166 = "llvm.alloca"(%10) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %167 = "llvm.alloca"(%10) <{alignment = 4 : i64, elem_type = f32}> : (i32) -> !llvm.ptr
    %168 = "llvm.alloca"(%10) <{alignment = 1 : i64, elem_type = i8}> : (i32) -> !llvm.ptr
    %169 = "llvm.alloca"(%10) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %170 = "llvm.alloca"(%10) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %171 = "llvm.alloca"(%10) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    "llvm.store"(%11, %71) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %172 = "llvm.load"(%71) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.store"(%12, %72) <{alignment = 1 : i64, ordering = 0 : i64}> : (i8, !llvm.ptr) -> ()
    %173 = "llvm.load"(%72) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %174 = "llvm.atomicrmw"(%13, %173) <{alignment = 1 : i64, bin_op = 1 : i64, ordering = 7 : i64, volatile_}> : (!llvm.ptr, i8) -> i8
    "llvm.store"(%174, %73) <{alignment = 1 : i64, ordering = 0 : i64}> : (i8, !llvm.ptr) -> ()
    %175 = "llvm.load"(%73) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %176 = "llvm.zext"(%175) : (i8) -> i32
    %177 = "llvm.call"(%172, %176) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @mix, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    "llvm.store"(%177, %71) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %178 = "llvm.load"(%71) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.store"(%14, %74) <{alignment = 1 : i64, ordering = 0 : i64}> : (i8, !llvm.ptr) -> ()
    %179 = "llvm.load"(%74) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %180 = "llvm.atomicrmw"(%13, %179) <{alignment = 1 : i64, bin_op = 2 : i64, ordering = 4 : i64, volatile_}> : (!llvm.ptr, i8) -> i8
    "llvm.store"(%180, %75) <{alignment = 1 : i64, ordering = 0 : i64}> : (i8, !llvm.ptr) -> ()
    %181 = "llvm.load"(%75) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %182 = "llvm.zext"(%181) : (i8) -> i32
    %183 = "llvm.call"(%178, %182) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @mix, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    "llvm.store"(%183, %71) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %184 = "llvm.load"(%71) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.store"(%15, %76) <{alignment = 1 : i64, ordering = 0 : i64}> : (i8, !llvm.ptr) -> ()
    %185 = "llvm.load"(%76) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %186 = "llvm.atomicrmw"(%13, %185) <{alignment = 1 : i64, bin_op = 3 : i64, ordering = 5 : i64, volatile_}> : (!llvm.ptr, i8) -> i8
    "llvm.store"(%186, %77) <{alignment = 1 : i64, ordering = 0 : i64}> : (i8, !llvm.ptr) -> ()
    %187 = "llvm.load"(%77) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %188 = "llvm.zext"(%187) : (i8) -> i32
    %189 = "llvm.call"(%184, %188) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @mix, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    "llvm.store"(%189, %71) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %190 = "llvm.load"(%71) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.store"(%16, %78) <{alignment = 1 : i64, ordering = 0 : i64}> : (i8, !llvm.ptr) -> ()
    %191 = "llvm.load"(%78) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %192 = "llvm.atomicrmw"(%13, %191) <{alignment = 1 : i64, bin_op = 5 : i64, ordering = 2 : i64, volatile_}> : (!llvm.ptr, i8) -> i8
    "llvm.store"(%192, %79) <{alignment = 1 : i64, ordering = 0 : i64}> : (i8, !llvm.ptr) -> ()
    %193 = "llvm.load"(%79) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %194 = "llvm.zext"(%193) : (i8) -> i32
    %195 = "llvm.call"(%190, %194) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @mix, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    "llvm.store"(%195, %71) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %196 = "llvm.load"(%71) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.store"(%17, %80) <{alignment = 1 : i64, ordering = 0 : i64}> : (i8, !llvm.ptr) -> ()
    %197 = "llvm.load"(%80) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %198 = "llvm.atomicrmw"(%13, %197) <{alignment = 1 : i64, bin_op = 6 : i64, ordering = 6 : i64, volatile_}> : (!llvm.ptr, i8) -> i8
    "llvm.store"(%198, %81) <{alignment = 1 : i64, ordering = 0 : i64}> : (i8, !llvm.ptr) -> ()
    %199 = "llvm.load"(%81) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %200 = "llvm.zext"(%199) : (i8) -> i32
    %201 = "llvm.call"(%196, %200) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @mix, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    "llvm.store"(%201, %71) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %202 = "llvm.load"(%71) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.store"(%18, %82) <{alignment = 1 : i64, ordering = 0 : i64}> : (i8, !llvm.ptr) -> ()
    %203 = "llvm.load"(%82) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %204 = "llvm.atomicrmw"(%13, %203) <{alignment = 1 : i64, bin_op = 4 : i64, ordering = 7 : i64, volatile_}> : (!llvm.ptr, i8) -> i8
    "llvm.store"(%204, %83) <{alignment = 1 : i64, ordering = 0 : i64}> : (i8, !llvm.ptr) -> ()
    %205 = "llvm.load"(%83) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %206 = "llvm.zext"(%205) : (i8) -> i32
    %207 = "llvm.call"(%202, %206) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @mix, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    "llvm.store"(%207, %71) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %208 = "llvm.load"(%71) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.store"(%19, %84) <{alignment = 1 : i64, ordering = 0 : i64}> : (i8, !llvm.ptr) -> ()
    %209 = "llvm.load"(%84) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %210 = "llvm.atomicrmw"(%13, %209) <{alignment = 1 : i64, bin_op = 0 : i64, ordering = 7 : i64, volatile_}> : (!llvm.ptr, i8) -> i8
    "llvm.store"(%210, %85) <{alignment = 1 : i64, ordering = 0 : i64}> : (i8, !llvm.ptr) -> ()
    %211 = "llvm.load"(%85) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %212 = "llvm.zext"(%211) : (i8) -> i32
    %213 = "llvm.call"(%208, %212) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @mix, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    "llvm.store"(%213, %71) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %214 = "llvm.load"(%71) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.store"(%20, %86) <{alignment = 1 : i64, ordering = 0 : i64}> : (i8, !llvm.ptr) -> ()
    %215 = "llvm.load"(%86) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %216 = "llvm.atomicrmw"(%21, %215) <{alignment = 1 : i64, bin_op = 7 : i64, ordering = 7 : i64, volatile_}> : (!llvm.ptr, i8) -> i8
    "llvm.store"(%216, %87) <{alignment = 1 : i64, ordering = 0 : i64}> : (i8, !llvm.ptr) -> ()
    %217 = "llvm.load"(%87) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %218 = "llvm.sext"(%217) : (i8) -> i32
    %219 = "llvm.call"(%214, %218) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @mix, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    "llvm.store"(%219, %71) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %220 = "llvm.load"(%71) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.store"(%22, %88) <{alignment = 1 : i64, ordering = 0 : i64}> : (i8, !llvm.ptr) -> ()
    %221 = "llvm.load"(%88) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %222 = "llvm.atomicrmw"(%21, %221) <{alignment = 1 : i64, bin_op = 8 : i64, ordering = 7 : i64, volatile_}> : (!llvm.ptr, i8) -> i8
    "llvm.store"(%222, %89) <{alignment = 1 : i64, ordering = 0 : i64}> : (i8, !llvm.ptr) -> ()
    %223 = "llvm.load"(%89) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %224 = "llvm.sext"(%223) : (i8) -> i32
    %225 = "llvm.call"(%220, %224) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @mix, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    "llvm.store"(%225, %71) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %226 = "llvm.load"(%71) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.store"(%23, %90) <{alignment = 1 : i64, ordering = 0 : i64}> : (i8, !llvm.ptr) -> ()
    %227 = "llvm.load"(%90) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %228 = "llvm.atomicrmw"(%13, %227) <{alignment = 1 : i64, bin_op = 9 : i64, ordering = 7 : i64, volatile_}> : (!llvm.ptr, i8) -> i8
    "llvm.store"(%228, %91) <{alignment = 1 : i64, ordering = 0 : i64}> : (i8, !llvm.ptr) -> ()
    %229 = "llvm.load"(%91) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %230 = "llvm.zext"(%229) : (i8) -> i32
    %231 = "llvm.call"(%226, %230) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @mix, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    "llvm.store"(%231, %71) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %232 = "llvm.load"(%71) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.store"(%24, %92) <{alignment = 1 : i64, ordering = 0 : i64}> : (i8, !llvm.ptr) -> ()
    %233 = "llvm.load"(%92) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %234 = "llvm.atomicrmw"(%13, %233) <{alignment = 1 : i64, bin_op = 10 : i64, ordering = 7 : i64, volatile_}> : (!llvm.ptr, i8) -> i8
    "llvm.store"(%234, %93) <{alignment = 1 : i64, ordering = 0 : i64}> : (i8, !llvm.ptr) -> ()
    %235 = "llvm.load"(%93) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %236 = "llvm.zext"(%235) : (i8) -> i32
    %237 = "llvm.call"(%232, %236) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @mix, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    "llvm.store"(%237, %71) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %238 = "llvm.load"(%71) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %239 = "llvm.load"(%13) <{alignment = 1 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i8
    %240 = "llvm.zext"(%239) : (i8) -> i32
    %241 = "llvm.call"(%238, %240) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @mix, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    "llvm.store"(%241, %71) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %242 = "llvm.load"(%71) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %243 = "llvm.load"(%21) <{alignment = 1 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i8
    %244 = "llvm.sext"(%243) : (i8) -> i32
    %245 = "llvm.call"(%242, %244) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @mix, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    "llvm.store"(%245, %71) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %246 = "llvm.load"(%71) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.store"(%25, %94) <{alignment = 2 : i64, ordering = 0 : i64}> : (i16, !llvm.ptr) -> ()
    %247 = "llvm.load"(%94) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %248 = "llvm.atomicrmw"(%26, %247) <{alignment = 2 : i64, bin_op = 1 : i64, ordering = 7 : i64, volatile_}> : (!llvm.ptr, i16) -> i16
    "llvm.store"(%248, %95) <{alignment = 2 : i64, ordering = 0 : i64}> : (i16, !llvm.ptr) -> ()
    %249 = "llvm.load"(%95) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %250 = "llvm.zext"(%249) : (i16) -> i32
    %251 = "llvm.call"(%246, %250) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @mix, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    "llvm.store"(%251, %71) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %252 = "llvm.load"(%71) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.store"(%27, %96) <{alignment = 2 : i64, ordering = 0 : i64}> : (i16, !llvm.ptr) -> ()
    %253 = "llvm.load"(%96) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %254 = "llvm.atomicrmw"(%26, %253) <{alignment = 2 : i64, bin_op = 2 : i64, ordering = 7 : i64, volatile_}> : (!llvm.ptr, i16) -> i16
    "llvm.store"(%254, %97) <{alignment = 2 : i64, ordering = 0 : i64}> : (i16, !llvm.ptr) -> ()
    %255 = "llvm.load"(%97) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %256 = "llvm.zext"(%255) : (i16) -> i32
    %257 = "llvm.call"(%252, %256) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @mix, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    "llvm.store"(%257, %71) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %258 = "llvm.load"(%71) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.store"(%28, %98) <{alignment = 2 : i64, ordering = 0 : i64}> : (i16, !llvm.ptr) -> ()
    %259 = "llvm.load"(%98) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %260 = "llvm.atomicrmw"(%26, %259) <{alignment = 2 : i64, bin_op = 3 : i64, ordering = 7 : i64, volatile_}> : (!llvm.ptr, i16) -> i16
    "llvm.store"(%260, %99) <{alignment = 2 : i64, ordering = 0 : i64}> : (i16, !llvm.ptr) -> ()
    %261 = "llvm.load"(%99) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %262 = "llvm.zext"(%261) : (i16) -> i32
    %263 = "llvm.call"(%258, %262) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @mix, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    "llvm.store"(%263, %71) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %264 = "llvm.load"(%71) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.store"(%29, %100) <{alignment = 2 : i64, ordering = 0 : i64}> : (i16, !llvm.ptr) -> ()
    %265 = "llvm.load"(%100) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %266 = "llvm.atomicrmw"(%26, %265) <{alignment = 2 : i64, bin_op = 5 : i64, ordering = 7 : i64, volatile_}> : (!llvm.ptr, i16) -> i16
    "llvm.store"(%266, %101) <{alignment = 2 : i64, ordering = 0 : i64}> : (i16, !llvm.ptr) -> ()
    %267 = "llvm.load"(%101) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %268 = "llvm.zext"(%267) : (i16) -> i32
    %269 = "llvm.call"(%264, %268) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @mix, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    "llvm.store"(%269, %71) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %270 = "llvm.load"(%71) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.store"(%30, %102) <{alignment = 2 : i64, ordering = 0 : i64}> : (i16, !llvm.ptr) -> ()
    %271 = "llvm.load"(%102) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %272 = "llvm.atomicrmw"(%26, %271) <{alignment = 2 : i64, bin_op = 6 : i64, ordering = 7 : i64, volatile_}> : (!llvm.ptr, i16) -> i16
    "llvm.store"(%272, %103) <{alignment = 2 : i64, ordering = 0 : i64}> : (i16, !llvm.ptr) -> ()
    %273 = "llvm.load"(%103) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %274 = "llvm.zext"(%273) : (i16) -> i32
    %275 = "llvm.call"(%270, %274) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @mix, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    "llvm.store"(%275, %71) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %276 = "llvm.load"(%71) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.store"(%31, %104) <{alignment = 2 : i64, ordering = 0 : i64}> : (i16, !llvm.ptr) -> ()
    %277 = "llvm.load"(%104) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %278 = "llvm.atomicrmw"(%26, %277) <{alignment = 2 : i64, bin_op = 4 : i64, ordering = 7 : i64, volatile_}> : (!llvm.ptr, i16) -> i16
    "llvm.store"(%278, %105) <{alignment = 2 : i64, ordering = 0 : i64}> : (i16, !llvm.ptr) -> ()
    %279 = "llvm.load"(%105) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %280 = "llvm.zext"(%279) : (i16) -> i32
    %281 = "llvm.call"(%276, %280) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @mix, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    "llvm.store"(%281, %71) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %282 = "llvm.load"(%71) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.store"(%32, %106) <{alignment = 2 : i64, ordering = 0 : i64}> : (i16, !llvm.ptr) -> ()
    %283 = "llvm.load"(%106) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %284 = "llvm.atomicrmw"(%33, %283) <{alignment = 2 : i64, bin_op = 7 : i64, ordering = 7 : i64, volatile_}> : (!llvm.ptr, i16) -> i16
    "llvm.store"(%284, %107) <{alignment = 2 : i64, ordering = 0 : i64}> : (i16, !llvm.ptr) -> ()
    %285 = "llvm.load"(%107) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %286 = "llvm.sext"(%285) : (i16) -> i32
    %287 = "llvm.call"(%282, %286) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @mix, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    "llvm.store"(%287, %71) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %288 = "llvm.load"(%71) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.store"(%34, %108) <{alignment = 2 : i64, ordering = 0 : i64}> : (i16, !llvm.ptr) -> ()
    %289 = "llvm.load"(%108) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %290 = "llvm.atomicrmw"(%33, %289) <{alignment = 2 : i64, bin_op = 8 : i64, ordering = 7 : i64, volatile_}> : (!llvm.ptr, i16) -> i16
    "llvm.store"(%290, %109) <{alignment = 2 : i64, ordering = 0 : i64}> : (i16, !llvm.ptr) -> ()
    %291 = "llvm.load"(%109) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %292 = "llvm.sext"(%291) : (i16) -> i32
    %293 = "llvm.call"(%288, %292) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @mix, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    "llvm.store"(%293, %71) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %294 = "llvm.load"(%71) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.store"(%35, %110) <{alignment = 2 : i64, ordering = 0 : i64}> : (i16, !llvm.ptr) -> ()
    %295 = "llvm.load"(%110) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %296 = "llvm.atomicrmw"(%26, %295) <{alignment = 2 : i64, bin_op = 9 : i64, ordering = 7 : i64, volatile_}> : (!llvm.ptr, i16) -> i16
    "llvm.store"(%296, %111) <{alignment = 2 : i64, ordering = 0 : i64}> : (i16, !llvm.ptr) -> ()
    %297 = "llvm.load"(%111) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %298 = "llvm.zext"(%297) : (i16) -> i32
    %299 = "llvm.call"(%294, %298) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @mix, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    "llvm.store"(%299, %71) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %300 = "llvm.load"(%71) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.store"(%36, %112) <{alignment = 2 : i64, ordering = 0 : i64}> : (i16, !llvm.ptr) -> ()
    %301 = "llvm.load"(%112) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %302 = "llvm.atomicrmw"(%26, %301) <{alignment = 2 : i64, bin_op = 10 : i64, ordering = 7 : i64, volatile_}> : (!llvm.ptr, i16) -> i16
    "llvm.store"(%302, %113) <{alignment = 2 : i64, ordering = 0 : i64}> : (i16, !llvm.ptr) -> ()
    %303 = "llvm.load"(%113) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %304 = "llvm.zext"(%303) : (i16) -> i32
    %305 = "llvm.call"(%300, %304) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @mix, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    "llvm.store"(%305, %71) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %306 = "llvm.load"(%71) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %307 = "llvm.load"(%26) <{alignment = 2 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i16
    %308 = "llvm.zext"(%307) : (i16) -> i32
    %309 = "llvm.call"(%306, %308) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @mix, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    "llvm.store"(%309, %71) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %310 = "llvm.load"(%71) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %311 = "llvm.load"(%33) <{alignment = 2 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i16
    %312 = "llvm.sext"(%311) : (i16) -> i32
    %313 = "llvm.call"(%310, %312) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @mix, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    "llvm.store"(%313, %71) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %314 = "llvm.load"(%71) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.store"(%37, %114) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %315 = "llvm.load"(%114) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %316 = "llvm.atomicrmw"(%38, %315) <{alignment = 4 : i64, bin_op = 1 : i64, ordering = 7 : i64, volatile_}> : (!llvm.ptr, i32) -> i32
    "llvm.store"(%316, %115) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %317 = "llvm.load"(%115) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %318 = "llvm.call"(%314, %317) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @mix, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    "llvm.store"(%318, %71) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %319 = "llvm.load"(%71) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.store"(%39, %116) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %320 = "llvm.load"(%116) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %321 = "llvm.atomicrmw"(%38, %320) <{alignment = 4 : i64, bin_op = 2 : i64, ordering = 4 : i64, volatile_}> : (!llvm.ptr, i32) -> i32
    "llvm.store"(%321, %117) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %322 = "llvm.load"(%117) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %323 = "llvm.call"(%319, %322) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @mix, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    "llvm.store"(%323, %71) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %324 = "llvm.load"(%71) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.store"(%40, %118) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %325 = "llvm.load"(%118) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %326 = "llvm.atomicrmw"(%38, %325) <{alignment = 4 : i64, bin_op = 3 : i64, ordering = 5 : i64, volatile_}> : (!llvm.ptr, i32) -> i32
    "llvm.store"(%326, %119) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %327 = "llvm.load"(%119) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %328 = "llvm.call"(%324, %327) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @mix, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    "llvm.store"(%328, %71) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %329 = "llvm.load"(%71) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.store"(%41, %120) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %330 = "llvm.load"(%120) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %331 = "llvm.atomicrmw"(%38, %330) <{alignment = 4 : i64, bin_op = 5 : i64, ordering = 2 : i64, volatile_}> : (!llvm.ptr, i32) -> i32
    "llvm.store"(%331, %121) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %332 = "llvm.load"(%121) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %333 = "llvm.call"(%329, %332) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @mix, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    "llvm.store"(%333, %71) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %334 = "llvm.load"(%71) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.store"(%42, %122) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %335 = "llvm.load"(%122) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %336 = "llvm.atomicrmw"(%38, %335) <{alignment = 4 : i64, bin_op = 6 : i64, ordering = 6 : i64, volatile_}> : (!llvm.ptr, i32) -> i32
    "llvm.store"(%336, %123) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %337 = "llvm.load"(%123) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %338 = "llvm.call"(%334, %337) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @mix, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    "llvm.store"(%338, %71) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %339 = "llvm.load"(%71) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.store"(%43, %124) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %340 = "llvm.load"(%124) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %341 = "llvm.atomicrmw"(%38, %340) <{alignment = 4 : i64, bin_op = 4 : i64, ordering = 7 : i64, volatile_}> : (!llvm.ptr, i32) -> i32
    "llvm.store"(%341, %125) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %342 = "llvm.load"(%125) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %343 = "llvm.call"(%339, %342) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @mix, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    "llvm.store"(%343, %71) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %344 = "llvm.load"(%71) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.store"(%44, %126) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %345 = "llvm.load"(%126) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %346 = "llvm.atomicrmw"(%38, %345) <{alignment = 4 : i64, bin_op = 7 : i64, ordering = 7 : i64, volatile_}> : (!llvm.ptr, i32) -> i32
    "llvm.store"(%346, %127) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %347 = "llvm.load"(%127) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %348 = "llvm.call"(%344, %347) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @mix, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    "llvm.store"(%348, %71) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %349 = "llvm.load"(%71) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.store"(%45, %128) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %350 = "llvm.load"(%128) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %351 = "llvm.atomicrmw"(%38, %350) <{alignment = 4 : i64, bin_op = 8 : i64, ordering = 7 : i64, volatile_}> : (!llvm.ptr, i32) -> i32
    "llvm.store"(%351, %129) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %352 = "llvm.load"(%129) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %353 = "llvm.call"(%349, %352) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @mix, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    "llvm.store"(%353, %71) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %354 = "llvm.load"(%71) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.store"(%46, %130) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %355 = "llvm.load"(%130) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %356 = "llvm.atomicrmw"(%47, %355) <{alignment = 4 : i64, bin_op = 9 : i64, ordering = 7 : i64, volatile_}> : (!llvm.ptr, i32) -> i32
    "llvm.store"(%356, %131) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %357 = "llvm.load"(%131) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %358 = "llvm.call"(%354, %357) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @mix, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    "llvm.store"(%358, %71) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %359 = "llvm.load"(%71) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.store"(%48, %132) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %360 = "llvm.load"(%132) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %361 = "llvm.atomicrmw"(%47, %360) <{alignment = 4 : i64, bin_op = 10 : i64, ordering = 7 : i64, volatile_}> : (!llvm.ptr, i32) -> i32
    "llvm.store"(%361, %133) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %362 = "llvm.load"(%133) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %363 = "llvm.call"(%359, %362) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @mix, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    "llvm.store"(%363, %71) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %364 = "llvm.load"(%71) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.store"(%49, %134) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %365 = "llvm.load"(%134) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %366 = "llvm.atomicrmw"(%38, %365) <{alignment = 4 : i64, bin_op = 0 : i64, ordering = 5 : i64, volatile_}> : (!llvm.ptr, i32) -> i32
    "llvm.store"(%366, %135) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %367 = "llvm.load"(%135) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %368 = "llvm.call"(%364, %367) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @mix, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    "llvm.store"(%368, %71) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.store"(%19, %136) <{alignment = 1 : i64, ordering = 0 : i64}> : (i8, !llvm.ptr) -> ()
    %369 = "llvm.load"(%71) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.store"(%50, %137) <{alignment = 1 : i64, ordering = 0 : i64}> : (i8, !llvm.ptr) -> ()
    %370 = "llvm.load"(%136) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %371 = "llvm.load"(%137) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %372 = "llvm.cmpxchg"(%13, %370, %371) <{alignment = 1 : i64, failure_ordering = 7 : i64, success_ordering = 7 : i64, volatile_}> : (!llvm.ptr, i8, i8) -> !llvm.struct<(i8, i1)>
    %373 = "llvm.extractvalue"(%372) <{position = array<i64: 0>}> : (!llvm.struct<(i8, i1)>) -> i8
    %374 = "llvm.extractvalue"(%372) <{position = array<i64: 1>}> : (!llvm.struct<(i8, i1)>) -> i1
    "llvm.cond_br"(%374)[^bb2, ^bb1] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.store"(%373, %136) <{alignment = 1 : i64, ordering = 0 : i64}> : (i8, !llvm.ptr) -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    %375 = "llvm.zext"(%374) : (i1) -> i8
    "llvm.store"(%375, %138) <{alignment = 1 : i64, ordering = 0 : i64}> : (i8, !llvm.ptr) -> ()
    %376 = "llvm.load"(%138) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %377 = "llvm.trunc"(%376) <{overflowFlags = 0 : i32}> : (i8) -> i1
    %378 = "llvm.zext"(%377) : (i1) -> i32
    %379 = "llvm.call"(%369, %378) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @mix, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    "llvm.store"(%379, %71) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %380 = "llvm.load"(%71) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %381 = "llvm.load"(%136) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %382 = "llvm.zext"(%381) : (i8) -> i32
    %383 = "llvm.call"(%380, %382) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @mix, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    "llvm.store"(%383, %71) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.store"(%51, %136) <{alignment = 1 : i64, ordering = 0 : i64}> : (i8, !llvm.ptr) -> ()
    %384 = "llvm.load"(%71) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.store"(%52, %139) <{alignment = 1 : i64, ordering = 0 : i64}> : (i8, !llvm.ptr) -> ()
    %385 = "llvm.load"(%136) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %386 = "llvm.load"(%139) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %387 = "llvm.cmpxchg"(%13, %385, %386) <{alignment = 1 : i64, failure_ordering = 2 : i64, success_ordering = 4 : i64, volatile_}> : (!llvm.ptr, i8, i8) -> !llvm.struct<(i8, i1)>
    %388 = "llvm.extractvalue"(%387) <{position = array<i64: 0>}> : (!llvm.struct<(i8, i1)>) -> i8
    %389 = "llvm.extractvalue"(%387) <{position = array<i64: 1>}> : (!llvm.struct<(i8, i1)>) -> i1
    "llvm.cond_br"(%389)[^bb4, ^bb3] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb3:  // pred: ^bb2
    "llvm.store"(%388, %136) <{alignment = 1 : i64, ordering = 0 : i64}> : (i8, !llvm.ptr) -> ()
    "llvm.br"()[^bb4] : () -> ()
  ^bb4:  // 2 preds: ^bb2, ^bb3
    %390 = "llvm.zext"(%389) : (i1) -> i8
    "llvm.store"(%390, %140) <{alignment = 1 : i64, ordering = 0 : i64}> : (i8, !llvm.ptr) -> ()
    %391 = "llvm.load"(%140) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %392 = "llvm.trunc"(%391) <{overflowFlags = 0 : i32}> : (i8) -> i1
    %393 = "llvm.zext"(%392) : (i1) -> i32
    %394 = "llvm.call"(%384, %393) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @mix, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    "llvm.store"(%394, %71) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %395 = "llvm.load"(%71) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %396 = "llvm.load"(%136) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %397 = "llvm.zext"(%396) : (i8) -> i32
    %398 = "llvm.call"(%395, %397) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @mix, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    "llvm.store"(%398, %71) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.store"(%53, %141) <{alignment = 2 : i64, ordering = 0 : i64}> : (i16, !llvm.ptr) -> ()
    %399 = "llvm.load"(%71) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.store"(%54, %142) <{alignment = 2 : i64, ordering = 0 : i64}> : (i16, !llvm.ptr) -> ()
    %400 = "llvm.load"(%141) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %401 = "llvm.load"(%142) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %402 = "llvm.cmpxchg"(%26, %400, %401) <{alignment = 2 : i64, failure_ordering = 7 : i64, success_ordering = 7 : i64, volatile_}> : (!llvm.ptr, i16, i16) -> !llvm.struct<(i16, i1)>
    %403 = "llvm.extractvalue"(%402) <{position = array<i64: 0>}> : (!llvm.struct<(i16, i1)>) -> i16
    %404 = "llvm.extractvalue"(%402) <{position = array<i64: 1>}> : (!llvm.struct<(i16, i1)>) -> i1
    "llvm.cond_br"(%404)[^bb6, ^bb5] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb5:  // pred: ^bb4
    "llvm.store"(%403, %141) <{alignment = 2 : i64, ordering = 0 : i64}> : (i16, !llvm.ptr) -> ()
    "llvm.br"()[^bb6] : () -> ()
  ^bb6:  // 2 preds: ^bb4, ^bb5
    %405 = "llvm.zext"(%404) : (i1) -> i8
    "llvm.store"(%405, %143) <{alignment = 1 : i64, ordering = 0 : i64}> : (i8, !llvm.ptr) -> ()
    %406 = "llvm.load"(%143) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %407 = "llvm.trunc"(%406) <{overflowFlags = 0 : i32}> : (i8) -> i1
    %408 = "llvm.zext"(%407) : (i1) -> i32
    %409 = "llvm.call"(%399, %408) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @mix, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    "llvm.store"(%409, %71) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %410 = "llvm.load"(%71) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %411 = "llvm.load"(%141) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %412 = "llvm.zext"(%411) : (i16) -> i32
    %413 = "llvm.call"(%410, %412) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @mix, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    "llvm.store"(%413, %71) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %414 = "llvm.load"(%71) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.store"(%54, %144) <{alignment = 2 : i64, ordering = 0 : i64}> : (i16, !llvm.ptr) -> ()
    %415 = "llvm.load"(%141) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %416 = "llvm.load"(%144) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %417 = "llvm.cmpxchg"(%26, %415, %416) <{alignment = 2 : i64, failure_ordering = 2 : i64, success_ordering = 5 : i64, volatile_, weak}> : (!llvm.ptr, i16, i16) -> !llvm.struct<(i16, i1)>
    %418 = "llvm.extractvalue"(%417) <{position = array<i64: 0>}> : (!llvm.struct<(i16, i1)>) -> i16
    %419 = "llvm.extractvalue"(%417) <{position = array<i64: 1>}> : (!llvm.struct<(i16, i1)>) -> i1
    "llvm.cond_br"(%419)[^bb8, ^bb7] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb7:  // pred: ^bb6
    "llvm.store"(%418, %141) <{alignment = 2 : i64, ordering = 0 : i64}> : (i16, !llvm.ptr) -> ()
    "llvm.br"()[^bb8] : () -> ()
  ^bb8:  // 2 preds: ^bb6, ^bb7
    %420 = "llvm.zext"(%419) : (i1) -> i8
    "llvm.store"(%420, %145) <{alignment = 1 : i64, ordering = 0 : i64}> : (i8, !llvm.ptr) -> ()
    %421 = "llvm.load"(%145) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %422 = "llvm.trunc"(%421) <{overflowFlags = 0 : i32}> : (i8) -> i1
    %423 = "llvm.zext"(%422) : (i1) -> i32
    %424 = "llvm.call"(%414, %423) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @mix, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    "llvm.store"(%424, %71) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.store"(%49, %146) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %425 = "llvm.load"(%71) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.store"(%55, %147) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %426 = "llvm.load"(%146) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %427 = "llvm.load"(%147) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %428 = "llvm.cmpxchg"(%38, %426, %427) <{alignment = 4 : i64, failure_ordering = 4 : i64, success_ordering = 6 : i64, volatile_}> : (!llvm.ptr, i32, i32) -> !llvm.struct<(i32, i1)>
    %429 = "llvm.extractvalue"(%428) <{position = array<i64: 0>}> : (!llvm.struct<(i32, i1)>) -> i32
    %430 = "llvm.extractvalue"(%428) <{position = array<i64: 1>}> : (!llvm.struct<(i32, i1)>) -> i1
    "llvm.cond_br"(%430)[^bb10, ^bb9] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb9:  // pred: ^bb8
    "llvm.store"(%429, %146) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb10] : () -> ()
  ^bb10:  // 2 preds: ^bb8, ^bb9
    %431 = "llvm.zext"(%430) : (i1) -> i8
    "llvm.store"(%431, %148) <{alignment = 1 : i64, ordering = 0 : i64}> : (i8, !llvm.ptr) -> ()
    %432 = "llvm.load"(%148) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %433 = "llvm.trunc"(%432) <{overflowFlags = 0 : i32}> : (i8) -> i1
    %434 = "llvm.zext"(%433) : (i1) -> i32
    %435 = "llvm.call"(%425, %434) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @mix, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    "llvm.store"(%435, %71) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %436 = "llvm.load"(%71) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.store"(%56, %149) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %437 = "llvm.load"(%146) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %438 = "llvm.load"(%149) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %439 = "llvm.cmpxchg"(%38, %437, %438) <{alignment = 4 : i64, failure_ordering = 7 : i64, success_ordering = 7 : i64, volatile_}> : (!llvm.ptr, i32, i32) -> !llvm.struct<(i32, i1)>
    %440 = "llvm.extractvalue"(%439) <{position = array<i64: 0>}> : (!llvm.struct<(i32, i1)>) -> i32
    %441 = "llvm.extractvalue"(%439) <{position = array<i64: 1>}> : (!llvm.struct<(i32, i1)>) -> i1
    "llvm.cond_br"(%441)[^bb12, ^bb11] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb11:  // pred: ^bb10
    "llvm.store"(%440, %146) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb12] : () -> ()
  ^bb12:  // 2 preds: ^bb10, ^bb11
    %442 = "llvm.zext"(%441) : (i1) -> i8
    "llvm.store"(%442, %150) <{alignment = 1 : i64, ordering = 0 : i64}> : (i8, !llvm.ptr) -> ()
    %443 = "llvm.load"(%150) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %444 = "llvm.trunc"(%443) <{overflowFlags = 0 : i32}> : (i8) -> i1
    %445 = "llvm.zext"(%444) : (i1) -> i32
    %446 = "llvm.call"(%436, %445) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @mix, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    "llvm.store"(%446, %71) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %447 = "llvm.load"(%71) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %448 = "llvm.load"(%146) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %449 = "llvm.call"(%447, %448) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @mix, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    "llvm.store"(%449, %71) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.store"(%57, %151) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %450 = "llvm.load"(%71) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.store"(%60, %152) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %451 = "llvm.load"(%151) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %452 = "llvm.load"(%152) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %453 = "llvm.cmpxchg"(%61, %451, %452) <{alignment = 4 : i64, failure_ordering = 7 : i64, success_ordering = 7 : i64, volatile_}> : (!llvm.ptr, i32, i32) -> !llvm.struct<(i32, i1)>
    %454 = "llvm.extractvalue"(%453) <{position = array<i64: 0>}> : (!llvm.struct<(i32, i1)>) -> i32
    %455 = "llvm.extractvalue"(%453) <{position = array<i64: 1>}> : (!llvm.struct<(i32, i1)>) -> i1
    "llvm.cond_br"(%455)[^bb14, ^bb13] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb13:  // pred: ^bb12
    "llvm.store"(%454, %151) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb14] : () -> ()
  ^bb14:  // 2 preds: ^bb12, ^bb13
    %456 = "llvm.zext"(%455) : (i1) -> i8
    "llvm.store"(%456, %153) <{alignment = 1 : i64, ordering = 0 : i64}> : (i8, !llvm.ptr) -> ()
    %457 = "llvm.load"(%153) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %458 = "llvm.trunc"(%457) <{overflowFlags = 0 : i32}> : (i8) -> i1
    %459 = "llvm.zext"(%458) : (i1) -> i32
    %460 = "llvm.call"(%450, %459) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @mix, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    "llvm.store"(%460, %71) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %461 = "llvm.load"(%71) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %462 = "llvm.load"(%61) <{alignment = 4 : i64, ordering = 4 : i64, volatile_}> : (!llvm.ptr) -> i32
    "llvm.store"(%462, %154) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %463 = "llvm.load"(%154) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.ptr
    %464 = "llvm.load"(%463) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %465 = "llvm.call"(%461, %464) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @mix, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    "llvm.store"(%465, %71) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %466 = "llvm.load"(%71) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.store"(%62, %155) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %467 = "llvm.load"(%155) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %468 = "llvm.atomicrmw"(%61, %467) <{alignment = 4 : i64, bin_op = 0 : i64, ordering = 7 : i64, volatile_}> : (!llvm.ptr, i32) -> i32
    "llvm.store"(%468, %156) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %469 = "llvm.load"(%156) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.ptr
    %470 = "llvm.load"(%469) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %471 = "llvm.call"(%466, %470) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @mix, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    "llvm.store"(%471, %71) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.store"(%63, %157) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %472 = "llvm.load"(%157) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.store"(%472, %38) <{alignment = 4 : i64, ordering = 7 : i64, volatile_}> : (i32, !llvm.ptr) -> ()
    "llvm.store"(%64, %158) <{alignment = 2 : i64, ordering = 0 : i64}> : (i16, !llvm.ptr) -> ()
    %473 = "llvm.load"(%158) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    "llvm.store"(%473, %26) <{alignment = 2 : i64, ordering = 5 : i64, volatile_}> : (i16, !llvm.ptr) -> ()
    "llvm.store"(%14, %159) <{alignment = 1 : i64, ordering = 0 : i64}> : (i8, !llvm.ptr) -> ()
    %474 = "llvm.load"(%159) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    "llvm.store"(%474, %13) <{alignment = 1 : i64, ordering = 2 : i64, volatile_}> : (i8, !llvm.ptr) -> ()
    "llvm.fence"() <{ordering = 4 : i64}> : () -> ()
    "llvm.fence"() <{ordering = 5 : i64}> : () -> ()
    "llvm.fence"() <{ordering = 6 : i64}> : () -> ()
    "llvm.fence"() <{ordering = 7 : i64}> : () -> ()
    "llvm.fence"() <{ordering = 7 : i64, syncscope = "singlethread"}> : () -> ()
    %475 = "llvm.load"(%71) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %476 = "llvm.load"(%38) <{alignment = 4 : i64, ordering = 7 : i64, volatile_}> : (!llvm.ptr) -> i32
    "llvm.store"(%476, %160) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %477 = "llvm.load"(%160) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %478 = "llvm.call"(%475, %477) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @mix, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    "llvm.store"(%478, %71) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %479 = "llvm.load"(%71) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %480 = "llvm.load"(%26) <{alignment = 2 : i64, ordering = 4 : i64, volatile_}> : (!llvm.ptr) -> i16
    "llvm.store"(%480, %161) <{alignment = 2 : i64, ordering = 0 : i64}> : (i16, !llvm.ptr) -> ()
    %481 = "llvm.load"(%161) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %482 = "llvm.zext"(%481) : (i16) -> i32
    %483 = "llvm.call"(%479, %482) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @mix, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    "llvm.store"(%483, %71) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %484 = "llvm.load"(%71) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %485 = "llvm.load"(%13) <{alignment = 1 : i64, ordering = 2 : i64, volatile_}> : (!llvm.ptr) -> i8
    "llvm.store"(%485, %162) <{alignment = 1 : i64, ordering = 0 : i64}> : (i8, !llvm.ptr) -> ()
    %486 = "llvm.load"(%162) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %487 = "llvm.zext"(%486) : (i8) -> i32
    %488 = "llvm.call"(%484, %487) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @mix, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    "llvm.store"(%488, %71) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.store"(%65, %164) <{alignment = 4 : i64, ordering = 0 : i64}> : (f32, !llvm.ptr) -> ()
    %489 = "llvm.load"(%164) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %490 = "llvm.atomicrmw"(%66, %489) <{alignment = 4 : i64, bin_op = 0 : i64, ordering = 7 : i64, volatile_}> : (!llvm.ptr, i32) -> i32
    "llvm.store"(%490, %163) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %491 = "llvm.load"(%71) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %492 = "llvm.load"(%163) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f32
    %493 = "llvm.fmul"(%492, %67) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %494 = "llvm.fptoui"(%493) : (f32) -> i32
    %495 = "llvm.call"(%491, %494) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @mix, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    "llvm.store"(%495, %71) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.store"(%65, %165) <{alignment = 4 : i64, ordering = 0 : i64}> : (f32, !llvm.ptr) -> ()
    "llvm.store"(%59, %166) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb15] : () -> ()
  ^bb15:  // 2 preds: ^bb14, ^bb22
    %496 = "llvm.load"(%166) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %497 = "llvm.icmp"(%496, %46) <{predicate = 2 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%497)[^bb16, ^bb23] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb16:  // pred: ^bb15
    %498 = "llvm.load"(%165) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f32
    %499 = "llvm.fadd"(%498, %69) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    "llvm.store"(%499, %167) <{alignment = 4 : i64, ordering = 0 : i64}> : (f32, !llvm.ptr) -> ()
    "llvm.br"()[^bb17] : () -> ()
  ^bb17:  // 2 preds: ^bb16, ^bb20
    %500 = "llvm.load"(%165) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %501 = "llvm.load"(%167) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %502 = "llvm.cmpxchg"(%66, %500, %501) <{alignment = 4 : i64, failure_ordering = 7 : i64, success_ordering = 7 : i64, volatile_}> : (!llvm.ptr, i32, i32) -> !llvm.struct<(i32, i1)>
    %503 = "llvm.extractvalue"(%502) <{position = array<i64: 0>}> : (!llvm.struct<(i32, i1)>) -> i32
    %504 = "llvm.extractvalue"(%502) <{position = array<i64: 1>}> : (!llvm.struct<(i32, i1)>) -> i1
    "llvm.cond_br"(%504)[^bb19, ^bb18] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb18:  // pred: ^bb17
    "llvm.store"(%503, %165) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb19] : () -> ()
  ^bb19:  // 2 preds: ^bb17, ^bb18
    %505 = "llvm.zext"(%504) : (i1) -> i8
    "llvm.store"(%505, %168) <{alignment = 1 : i64, ordering = 0 : i64}> : (i8, !llvm.ptr) -> ()
    %506 = "llvm.load"(%168) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %507 = "llvm.trunc"(%506) <{overflowFlags = 0 : i32}> : (i8) -> i1
    %508 = "llvm.xor"(%507, %70) : (i1, i1) -> i1
    "llvm.cond_br"(%508)[^bb20, ^bb21] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb20:  // pred: ^bb19
    %509 = "llvm.load"(%165) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f32
    %510 = "llvm.fadd"(%509, %69) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    "llvm.store"(%510, %167) <{alignment = 4 : i64, ordering = 0 : i64}> : (f32, !llvm.ptr) -> ()
    "llvm.br"()[^bb17] <{loop_annotation = #loop_annotation}> : () -> ()
  ^bb21:  // pred: ^bb19
    %511 = "llvm.load"(%167) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f32
    "llvm.store"(%511, %165) <{alignment = 4 : i64, ordering = 0 : i64}> : (f32, !llvm.ptr) -> ()
    "llvm.br"()[^bb22] : () -> ()
  ^bb22:  // pred: ^bb21
    %512 = "llvm.load"(%166) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %513 = "llvm.add"(%512, %10) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.store"(%513, %166) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb15] <{loop_annotation = #loop_annotation}> : () -> ()
  ^bb23:  // pred: ^bb15
    %514 = "llvm.load"(%71) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %515 = "llvm.load"(%66) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> f32
    %516 = "llvm.fmul"(%515, %67) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %517 = "llvm.fptoui"(%516) : (f32) -> i32
    %518 = "llvm.call"(%514, %517) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @mix, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    "llvm.store"(%518, %71) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.store"(%59, %169) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb24] : () -> ()
  ^bb24:  // 2 preds: ^bb23, ^bb26
    %519 = "llvm.load"(%169) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %520 = "llvm.icmp"(%519, %68) <{predicate = 2 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%520)[^bb25, ^bb27] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb25:  // pred: ^bb24
    %521 = "llvm.load"(%71) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %522 = "llvm.load"(%169) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %523 = "llvm.and"(%522, %46) : (i32, i32) -> i32
    %524 = "llvm.getelementptr"(%57, %59, %523) <{elem_type = !llvm.array<4 x i32>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    %525 = "llvm.load"(%169) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.store"(%525, %170) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %526 = "llvm.load"(%170) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %527 = "llvm.atomicrmw"(%524, %526) <{alignment = 4 : i64, bin_op = 1 : i64, ordering = 7 : i64}> : (!llvm.ptr, i32) -> i32
    %528 = "llvm.add"(%527, %526) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.store"(%528, %171) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %529 = "llvm.load"(%171) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %530 = "llvm.call"(%521, %529) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @mix, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    "llvm.store"(%530, %71) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb26] : () -> ()
  ^bb26:  // pred: ^bb25
    %531 = "llvm.load"(%169) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %532 = "llvm.add"(%531, %10) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.store"(%532, %169) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb24] <{loop_annotation = #loop_annotation}> : () -> ()
  ^bb27:  // pred: ^bb24
    %533 = "llvm.load"(%71) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.return"(%533) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], dso_local, frame_pointer = #llvm.framePointerKind<all>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<internal>, no_inline, no_unwind, optimize_none, passthrough = ["no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "mix", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+a", "+f", "+i", "+m", "+zaamo", "+zalrsc", "+zicsr", "+zmmul", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcalculet", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zabha", "-zacas", "-zalasr", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 16777619 : i32}> : () -> i32
    %2 = "llvm.mlir.constant"() <{value = -1640531527 : i32}> : () -> i32
    %3 = "llvm.alloca"(%0) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %4 = "llvm.alloca"(%0) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    "llvm.store"(%arg0, %3) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.store"(%arg1, %4) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %5 = "llvm.load"(%3) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %6 = "llvm.load"(%4) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %7 = "llvm.xor"(%5, %6) : (i32, i32) -> i32
    %8 = "llvm.mul"(%7, %1) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %9 = "llvm.add"(%8, %2) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%9) : (i32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<32> : vector<4xi64>, i64 = dense<64> : vector<2xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little", "dlti.mangling_mode" = "e", "dlti.legal_int_widths" = array<i32: 32>, "dlti.stack_alignment" = 128 : i64>, llvm.ident = "clang version 22.1.8", llvm.module_asm = [], llvm.target_triple = "riscv32-unknown-unknown-elf"} : () -> ()

