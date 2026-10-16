#loop_annotation = #llvm.loop_annotation<mustProgress = true>
"builtin.module"() ({
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 2 : i64, constant, dso_local, global_type = !llvm.struct<"struct.P16", (i16, i16)>, linkage = #llvm.linkage<private>, sym_name = "__const.main.q", unnamed_addr = 2 : i64, visibility_ = 0 : i64}> ({
    %329 = "llvm.mlir.constant"() <{value = -7 : i16}> : () -> i16
    %330 = "llvm.mlir.constant"() <{value = 3 : i16}> : () -> i16
    %331 = "llvm.mlir.undef"() : () -> !llvm.struct<"struct.P16", (i16, i16)>
    %332 = "llvm.insertvalue"(%331, %330) <{position = array<i64: 0>}> : (!llvm.struct<"struct.P16", (i16, i16)>, i16) -> !llvm.struct<"struct.P16", (i16, i16)>
    %333 = "llvm.insertvalue"(%332, %329) <{position = array<i64: 1>}> : (!llvm.struct<"struct.P16", (i16, i16)>, i16) -> !llvm.struct<"struct.P16", (i16, i16)>
    "llvm.return"(%333) : (!llvm.struct<"struct.P16", (i16, i16)>) -> ()
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 4 : i64, constant, dso_local, global_type = !llvm.struct<"struct.Cf", (f32, f32)>, linkage = #llvm.linkage<private>, sym_name = "__const.main.z", unnamed_addr = 2 : i64, visibility_ = 0 : i64}> ({
    %324 = "llvm.mlir.constant"() <{value = 5.000000e-01 : f32}> : () -> f32
    %325 = "llvm.mlir.constant"() <{value = 1.000000e+00 : f32}> : () -> f32
    %326 = "llvm.mlir.undef"() : () -> !llvm.struct<"struct.Cf", (f32, f32)>
    %327 = "llvm.insertvalue"(%326, %325) <{position = array<i64: 0>}> : (!llvm.struct<"struct.Cf", (f32, f32)>, f32) -> !llvm.struct<"struct.Cf", (f32, f32)>
    %328 = "llvm.insertvalue"(%327, %324) <{position = array<i64: 1>}> : (!llvm.struct<"struct.Cf", (f32, f32)>, f32) -> !llvm.struct<"struct.Cf", (f32, f32)>
    "llvm.return"(%328) : (!llvm.struct<"struct.Cf", (f32, f32)>) -> ()
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 4 : i64, constant, dso_local, global_type = !llvm.struct<"struct.Cf", (f32, f32)>, linkage = #llvm.linkage<private>, sym_name = "__const.main.w", unnamed_addr = 2 : i64, visibility_ = 0 : i64}> ({
    %319 = "llvm.mlir.constant"() <{value = -2.500000e-01 : f32}> : () -> f32
    %320 = "llvm.mlir.constant"() <{value = 7.500000e-01 : f32}> : () -> f32
    %321 = "llvm.mlir.undef"() : () -> !llvm.struct<"struct.Cf", (f32, f32)>
    %322 = "llvm.insertvalue"(%321, %320) <{position = array<i64: 0>}> : (!llvm.struct<"struct.Cf", (f32, f32)>, f32) -> !llvm.struct<"struct.Cf", (f32, f32)>
    %323 = "llvm.insertvalue"(%322, %319) <{position = array<i64: 1>}> : (!llvm.struct<"struct.Cf", (f32, f32)>, f32) -> !llvm.struct<"struct.Cf", (f32, f32)>
    "llvm.return"(%323) : (!llvm.struct<"struct.Cf", (f32, f32)>) -> ()
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 4 : i64, constant, dso_local, global_type = !llvm.struct<(array<6 x i32>, i8, array<3 x i8>)>, linkage = #llvm.linkage<private>, sym_name = "__const.main.big", unnamed_addr = 2 : i64, visibility_ = 0 : i64}> ({
    %311 = "llvm.mlir.constant"() <{value = 0 : i8}> : () -> i8
    %312 = "llvm.mlir.constant"() <{value = dense<0> : tensor<3xi8>}> : () -> !llvm.array<3 x i8>
    %313 = "llvm.mlir.constant"() <{value = 107 : i8}> : () -> i8
    %314 = "llvm.mlir.constant"() <{value = dense<[1, 2, 3, 4, 5, 6]> : tensor<6xi32>}> : () -> !llvm.array<6 x i32>
    %315 = "llvm.mlir.undef"() : () -> !llvm.struct<(array<6 x i32>, i8, array<3 x i8>)>
    %316 = "llvm.insertvalue"(%315, %314) <{position = array<i64: 0>}> : (!llvm.struct<(array<6 x i32>, i8, array<3 x i8>)>, !llvm.array<6 x i32>) -> !llvm.struct<(array<6 x i32>, i8, array<3 x i8>)>
    %317 = "llvm.insertvalue"(%316, %313) <{position = array<i64: 1>}> : (!llvm.struct<(array<6 x i32>, i8, array<3 x i8>)>, i8) -> !llvm.struct<(array<6 x i32>, i8, array<3 x i8>)>
    %318 = "llvm.insertvalue"(%317, %312) <{position = array<i64: 2>}> : (!llvm.struct<(array<6 x i32>, i8, array<3 x i8>)>, !llvm.array<3 x i8>) -> !llvm.struct<(array<6 x i32>, i8, array<3 x i8>)>
    "llvm.return"(%318) : (!llvm.struct<(array<6 x i32>, i8, array<3 x i8>)>) -> ()
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 4 : i64, constant, dso_local, global_type = !llvm.struct<(i8, i8, i8, i8)>, linkage = #llvm.linkage<private>, sym_name = "__const.main.bits", unnamed_addr = 2 : i64, visibility_ = 0 : i64}> ({
    %302 = "llvm.mlir.constant"() <{value = -81 : i8}> : () -> i8
    %303 = "llvm.mlir.constant"() <{value = 46 : i8}> : () -> i8
    %304 = "llvm.mlir.constant"() <{value = -29 : i8}> : () -> i8
    %305 = "llvm.mlir.constant"() <{value = 37 : i8}> : () -> i8
    %306 = "llvm.mlir.undef"() : () -> !llvm.struct<(i8, i8, i8, i8)>
    %307 = "llvm.insertvalue"(%306, %305) <{position = array<i64: 0>}> : (!llvm.struct<(i8, i8, i8, i8)>, i8) -> !llvm.struct<(i8, i8, i8, i8)>
    %308 = "llvm.insertvalue"(%307, %304) <{position = array<i64: 1>}> : (!llvm.struct<(i8, i8, i8, i8)>, i8) -> !llvm.struct<(i8, i8, i8, i8)>
    %309 = "llvm.insertvalue"(%308, %303) <{position = array<i64: 2>}> : (!llvm.struct<(i8, i8, i8, i8)>, i8) -> !llvm.struct<(i8, i8, i8, i8)>
    %310 = "llvm.insertvalue"(%309, %302) <{position = array<i64: 3>}> : (!llvm.struct<(i8, i8, i8, i8)>, i8) -> !llvm.struct<(i8, i8, i8, i8)>
    "llvm.return"(%310) : (!llvm.struct<(i8, i8, i8, i8)>) -> ()
  }) : () -> ()
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<error, "wchar_size", 4 : i32>, #llvm.mlir.module_flag<error, "target-abi", "ilp32f">, #llvm.mlir.module_flag<max, "frame-pointer", 2 : i32>, #llvm.mlir.module_flag<min, "SmallDataLimit", 0 : i32>]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, frame_pointer = #llvm.framePointerKind<all>, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, no_inline, no_unwind, optimize_none, passthrough = ["no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "main", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcalculet", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %152 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %153 = "llvm.mlir.constant"() <{value = 0 : i8}> : () -> i8
    %154 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %155 = "llvm.mlir.addressof"() <{global_name = @__const.main.q}> : () -> !llvm.ptr
    %156 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %157 = "llvm.mlir.addressof"() <{global_name = @__const.main.z}> : () -> !llvm.ptr
    %158 = "llvm.mlir.addressof"() <{global_name = @__const.main.w}> : () -> !llvm.ptr
    %159 = "llvm.mlir.addressof"() <{global_name = @__const.main.big}> : () -> !llvm.ptr
    %160 = "llvm.mlir.constant"() <{value = 28 : i32}> : () -> i32
    %161 = "llvm.mlir.addressof"() <{global_name = @__const.main.bits}> : () -> !llvm.ptr
    %162 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %163 = "llvm.mlir.constant"() <{value = 20 : i32}> : () -> i32
    %164 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %165 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %166 = "llvm.mlir.constant"() <{value = 7 : i32}> : () -> i32
    %167 = "llvm.mlir.constant"() <{value = 9 : i32}> : () -> i32
    %168 = "llvm.mlir.constant"() <{value = -2 : i32}> : () -> i32
    %169 = "llvm.mlir.constant"() <{value = 17 : i32}> : () -> i32
    %170 = "llvm.mlir.constant"() <{value = 16 : i32}> : () -> i32
    %171 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %172 = "llvm.mlir.constant"() <{value = 127 : i32}> : () -> i32
    %173 = "llvm.mlir.constant"() <{value = 13 : i32}> : () -> i32
    %174 = "llvm.mlir.constant"() <{value = -1017 : i32}> : () -> i32
    %175 = "llvm.mlir.constant"() <{value = 37 : i32}> : () -> i32
    %176 = "llvm.mlir.constant"() <{value = 10 : i32}> : () -> i32
    %177 = "llvm.mlir.constant"() <{value = 4095 : i32}> : () -> i32
    %178 = "llvm.mlir.constant"() <{value = -4193281 : i32}> : () -> i32
    %179 = "llvm.alloca"(%152) <{alignment = 4 : i64, elem_type = !llvm.struct<"struct.P32", (i32, i32)>}> : (i32) -> !llvm.ptr
    %180 = "llvm.alloca"(%152) <{alignment = 2 : i64, elem_type = !llvm.struct<"struct.P16", (i16, i16)>}> : (i32) -> !llvm.ptr
    %181 = "llvm.alloca"(%152) <{alignment = 4 : i64, elem_type = !llvm.struct<"struct.Cf", (f32, f32)>}> : (i32) -> !llvm.ptr
    %182 = "llvm.alloca"(%152) <{alignment = 4 : i64, elem_type = !llvm.struct<"struct.Cf", (f32, f32)>}> : (i32) -> !llvm.ptr
    %183 = "llvm.alloca"(%152) <{alignment = 4 : i64, elem_type = !llvm.struct<"struct.Big", (array<6 x i32>, i8)>}> : (i32) -> !llvm.ptr
    %184 = "llvm.alloca"(%152) <{alignment = 4 : i64, elem_type = !llvm.struct<"struct.Bits", (i32)>}> : (i32) -> !llvm.ptr
    %185 = "llvm.alloca"(%152) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %186 = "llvm.alloca"(%152) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %187 = "llvm.alloca"(%152) <{alignment = 4 : i64, elem_type = !llvm.struct<"struct.P32", (i32, i32)>}> : (i32) -> !llvm.ptr
    %188 = "llvm.alloca"(%152) <{alignment = 4 : i64, elem_type = !llvm.struct<"struct.P32", (i32, i32)>}> : (i32) -> !llvm.ptr
    %189 = "llvm.alloca"(%152) <{alignment = 2 : i64, elem_type = !llvm.struct<"struct.P16", (i16, i16)>}> : (i32) -> !llvm.ptr
    %190 = "llvm.alloca"(%152) <{alignment = 4 : i64, elem_type = !llvm.struct<"struct.Cf", (f32, f32)>}> : (i32) -> !llvm.ptr
    %191 = "llvm.alloca"(%152) <{alignment = 4 : i64, elem_type = !llvm.struct<"struct.Box", (struct<"struct.P32", (i32, i32)>, struct<"struct.P32", (i32, i32)>)>}> : (i32) -> !llvm.ptr
    %192 = "llvm.alloca"(%152) <{alignment = 4 : i64, elem_type = !llvm.struct<"struct.Box", (struct<"struct.P32", (i32, i32)>, struct<"struct.P32", (i32, i32)>)>}> : (i32) -> !llvm.ptr
    %193 = "llvm.alloca"(%152) <{alignment = 4 : i64, elem_type = !llvm.struct<"struct.Big", (array<6 x i32>, i8)>}> : (i32) -> !llvm.ptr
    %194 = "llvm.alloca"(%152) <{alignment = 4 : i64, elem_type = !llvm.struct<"union.anon", (f32)>}> : (i32) -> !llvm.ptr
    %195 = "llvm.alloca"(%152) <{alignment = 4 : i64, elem_type = !llvm.struct<"union.anon", (f32)>}> : (i32) -> !llvm.ptr
    "llvm.intr.memset"(%179, %153, %154) <{arg_attrs = [{llvm.align = 4 : i64}, {}, {}], isVolatile = false}> : (!llvm.ptr, i8, i32) -> ()
    "llvm.intr.memcpy"(%180, %155, %156) <{arg_attrs = [{llvm.align = 2 : i64}, {llvm.align = 2 : i64}, {}], isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i32) -> ()
    "llvm.intr.memcpy"(%181, %157, %154) <{arg_attrs = [{llvm.align = 4 : i64}, {llvm.align = 4 : i64}, {}], isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i32) -> ()
    "llvm.intr.memcpy"(%182, %158, %154) <{arg_attrs = [{llvm.align = 4 : i64}, {llvm.align = 4 : i64}, {}], isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i32) -> ()
    "llvm.intr.memcpy"(%183, %159, %160) <{arg_attrs = [{llvm.align = 4 : i64}, {llvm.align = 4 : i64}, {}], isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i32) -> ()
    "llvm.intr.memcpy"(%184, %161, %156) <{arg_attrs = [{llvm.align = 4 : i64}, {llvm.align = 4 : i64}, {}], isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i32) -> ()
    "llvm.store"(%162, %185) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.store"(%162, %186) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // 2 preds: ^bb0, ^bb3
    %196 = "llvm.load"(%186) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %197 = "llvm.icmp"(%196, %163) <{predicate = 2 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%197)[^bb2, ^bb4] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb2:  // pred: ^bb1
    %198 = "llvm.getelementptr"(%188, %162) <{elem_type = !llvm.struct<"struct.P32", (i32, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %199 = "llvm.load"(%186) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.store"(%199, %198) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %200 = "llvm.getelementptr"(%188, %162) <{elem_type = !llvm.struct<"struct.P32", (i32, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %201 = "llvm.load"(%186) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %202 = "llvm.mul"(%168, %201) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.store"(%202, %200) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %203 = "llvm.load"(%179) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.array<2 x i32>
    %204 = "llvm.load"(%188) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.array<2 x i32>
    %205 = "llvm.call"(%203, %204) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @add, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (!llvm.array<2 x i32>, !llvm.array<2 x i32>) -> !llvm.array<2 x i32>
    "llvm.store"(%205, %187) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.array<2 x i32>, !llvm.ptr) -> ()
    "llvm.intr.memcpy"(%179, %187, %154) <{arg_attrs = [{llvm.align = 4 : i64}, {llvm.align = 4 : i64}, {}], isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i32) -> ()
    %206 = "llvm.load"(%180) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %207 = "llvm.call"(%206) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @swap16, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (i32) -> i32
    "llvm.store"(%207, %189) <{alignment = 2 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.intr.memcpy"(%180, %189, %156) <{arg_attrs = [{llvm.align = 2 : i64}, {llvm.align = 2 : i64}, {}], isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i32) -> ()
    %208 = "llvm.getelementptr"(%181, %162) <{elem_type = !llvm.struct<(f32, f32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %209 = "llvm.load"(%208) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f32
    %210 = "llvm.getelementptr"(%181, %162) <{elem_type = !llvm.struct<(f32, f32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %211 = "llvm.load"(%210) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f32
    %212 = "llvm.getelementptr"(%182, %162) <{elem_type = !llvm.struct<(f32, f32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %213 = "llvm.load"(%212) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f32
    %214 = "llvm.getelementptr"(%182, %162) <{elem_type = !llvm.struct<(f32, f32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %215 = "llvm.load"(%214) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f32
    %216 = "llvm.call"(%209, %211, %213, %215) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @cmul, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>}> : (f32, f32, f32, f32) -> !llvm.struct<(f32, f32)>
    %217 = "llvm.getelementptr"(%190, %162) <{elem_type = !llvm.struct<(f32, f32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %218 = "llvm.extractvalue"(%216) <{position = array<i64: 0>}> : (!llvm.struct<(f32, f32)>) -> f32
    "llvm.store"(%218, %217) <{alignment = 4 : i64, ordering = 0 : i64}> : (f32, !llvm.ptr) -> ()
    %219 = "llvm.getelementptr"(%190, %162) <{elem_type = !llvm.struct<(f32, f32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %220 = "llvm.extractvalue"(%216) <{position = array<i64: 1>}> : (!llvm.struct<(f32, f32)>) -> f32
    "llvm.store"(%220, %219) <{alignment = 4 : i64, ordering = 0 : i64}> : (f32, !llvm.ptr) -> ()
    "llvm.intr.memcpy"(%181, %190, %154) <{arg_attrs = [{llvm.align = 4 : i64}, {llvm.align = 4 : i64}, {}], isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i32) -> ()
    %221 = "llvm.getelementptr"(%191, %162) <{elem_type = !llvm.struct<"struct.Box", (struct<"struct.P32", (i32, i32)>, struct<"struct.P32", (i32, i32)>)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %222 = "llvm.getelementptr"(%221, %162) <{elem_type = !llvm.struct<"struct.P32", (i32, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %223 = "llvm.load"(%186) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.store"(%223, %222) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %224 = "llvm.getelementptr"(%221, %162) <{elem_type = !llvm.struct<"struct.P32", (i32, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %225 = "llvm.load"(%186) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %226 = "llvm.sub"(%162, %225) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.store"(%226, %224) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %227 = "llvm.getelementptr"(%191, %162) <{elem_type = !llvm.struct<"struct.Box", (struct<"struct.P32", (i32, i32)>, struct<"struct.P32", (i32, i32)>)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %228 = "llvm.getelementptr"(%227, %162) <{elem_type = !llvm.struct<"struct.P32", (i32, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %229 = "llvm.load"(%186) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %230 = "llvm.mul"(%164, %229) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %231 = "llvm.add"(%230, %152) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.store"(%231, %228) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %232 = "llvm.getelementptr"(%227, %162) <{elem_type = !llvm.struct<"struct.P32", (i32, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %233 = "llvm.load"(%186) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %234 = "llvm.add"(%233, %165) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.store"(%234, %232) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %235 = "llvm.load"(%185) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %236 = "llvm.mul"(%235, %169) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.intr.memcpy"(%192, %191, %170) <{arg_attrs = [{llvm.align = 4 : i64}, {llvm.align = 4 : i64}, {}], isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i32) -> ()
    %237 = "llvm.call"(%192) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}], callee = @area, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> i32
    %238 = "llvm.add"(%236, %237) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.store"(%238, %185) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %239 = "llvm.load"(%186) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %240 = "llvm.srem"(%239, %164) : (i32, i32) -> i32
    %241 = "llvm.icmp"(%240, %162) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %242 = "llvm.zext"(%241) : (i1) -> i64
    %243 = "llvm.select"(%241, %171, %152) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.call"(%183, %243) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @scale, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (!llvm.ptr, i32) -> ()
    "llvm.intr.memcpy"(%193, %183, %160) <{arg_attrs = [{llvm.align = 4 : i64}, {llvm.align = 4 : i64}, {}], isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i32) -> ()
    %244 = "llvm.call"(%193) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}], callee = @sum_big, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> i32
    %245 = "llvm.load"(%185) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %246 = "llvm.add"(%245, %244) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.store"(%246, %185) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %247 = "llvm.load"(%184) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %248 = "llvm.lshr"(%247, %164) : (i32, i32) -> i32
    %249 = "llvm.and"(%248, %172) : (i32, i32) -> i32
    %250 = "llvm.add"(%249, %173) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %251 = "llvm.and"(%250, %172) : (i32, i32) -> i32
    %252 = "llvm.load"(%184) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %253 = "llvm.and"(%251, %172) : (i32, i32) -> i32
    %254 = "llvm.shl"(%253, %164) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %255 = "llvm.and"(%252, %174) : (i32, i32) -> i32
    %256 = "llvm.or"(%255, %254) : (i32, i32) -> i32
    "llvm.store"(%256, %184) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %257 = "llvm.load"(%186) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %258 = "llvm.mul"(%257, %175) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %259 = "llvm.load"(%184) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %260 = "llvm.lshr"(%259, %176) : (i32, i32) -> i32
    %261 = "llvm.and"(%260, %177) : (i32, i32) -> i32
    %262 = "llvm.xor"(%261, %258) : (i32, i32) -> i32
    %263 = "llvm.load"(%184) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %264 = "llvm.and"(%262, %177) : (i32, i32) -> i32
    %265 = "llvm.shl"(%264, %176) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %266 = "llvm.and"(%263, %178) : (i32, i32) -> i32
    %267 = "llvm.or"(%266, %265) : (i32, i32) -> i32
    "llvm.store"(%267, %184) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %268 = "llvm.getelementptr"(%184, %162) <{elem_type = !llvm.struct<"struct.Bits", (i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %269 = "llvm.load"(%268) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %270 = "llvm.call"(%269) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @pack, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (i32) -> i32
    %271 = "llvm.load"(%185) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %272 = "llvm.xor"(%271, %270) : (i32, i32) -> i32
    "llvm.store"(%272, %185) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb3] : () -> ()
  ^bb3:  // pred: ^bb2
    %273 = "llvm.load"(%186) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %274 = "llvm.add"(%273, %152) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.store"(%274, %186) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb1] <{loop_annotation = #loop_annotation}> : () -> ()
  ^bb4:  // pred: ^bb1
    %275 = "llvm.getelementptr"(%181, %162) <{elem_type = !llvm.struct<"struct.Cf", (f32, f32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %276 = "llvm.load"(%275) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f32
    "llvm.store"(%276, %194) <{alignment = 4 : i64, ordering = 0 : i64}> : (f32, !llvm.ptr) -> ()
    %277 = "llvm.getelementptr"(%181, %162) <{elem_type = !llvm.struct<"struct.Cf", (f32, f32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %278 = "llvm.load"(%277) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f32
    "llvm.store"(%278, %195) <{alignment = 4 : i64, ordering = 0 : i64}> : (f32, !llvm.ptr) -> ()
    %279 = "llvm.load"(%185) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %280 = "llvm.getelementptr"(%179, %162) <{elem_type = !llvm.struct<"struct.P32", (i32, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %281 = "llvm.load"(%280) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %282 = "llvm.mul"(%281, %164) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %283 = "llvm.add"(%279, %282) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %284 = "llvm.getelementptr"(%179, %162) <{elem_type = !llvm.struct<"struct.P32", (i32, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %285 = "llvm.load"(%284) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %286 = "llvm.add"(%283, %285) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %287 = "llvm.getelementptr"(%180, %162) <{elem_type = !llvm.struct<"struct.P16", (i16, i16)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %288 = "llvm.load"(%287) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %289 = "llvm.sext"(%288) : (i16) -> i32
    %290 = "llvm.mul"(%289, %165) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %291 = "llvm.add"(%286, %290) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %292 = "llvm.getelementptr"(%180, %162) <{elem_type = !llvm.struct<"struct.P16", (i16, i16)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %293 = "llvm.load"(%292) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %294 = "llvm.sext"(%293) : (i16) -> i32
    %295 = "llvm.add"(%291, %294) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %296 = "llvm.load"(%194) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %297 = "llvm.lshr"(%296, %166) : (i32, i32) -> i32
    %298 = "llvm.add"(%295, %297) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %299 = "llvm.load"(%195) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %300 = "llvm.lshr"(%299, %167) : (i32, i32) -> i32
    %301 = "llvm.add"(%298, %300) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%301) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, frame_pointer = #llvm.framePointerKind<all>, function_type = !llvm.func<array<2 x i32> (array<2 x i32>, array<2 x i32>)>, linkage = #llvm.linkage<internal>, no_inline, no_unwind, optimize_none, passthrough = ["no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "add", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcalculet", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: !llvm.array<2 x i32>, %arg11: !llvm.array<2 x i32>):
    %134 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %135 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %136 = "llvm.alloca"(%134) <{alignment = 4 : i64, elem_type = !llvm.struct<"struct.P32", (i32, i32)>}> : (i32) -> !llvm.ptr
    %137 = "llvm.alloca"(%134) <{alignment = 4 : i64, elem_type = !llvm.struct<"struct.P32", (i32, i32)>}> : (i32) -> !llvm.ptr
    %138 = "llvm.alloca"(%134) <{alignment = 4 : i64, elem_type = !llvm.struct<"struct.P32", (i32, i32)>}> : (i32) -> !llvm.ptr
    "llvm.store"(%arg10, %137) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.array<2 x i32>, !llvm.ptr) -> ()
    "llvm.store"(%arg11, %138) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.array<2 x i32>, !llvm.ptr) -> ()
    %139 = "llvm.getelementptr"(%136, %135) <{elem_type = !llvm.struct<"struct.P32", (i32, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %140 = "llvm.getelementptr"(%137, %135) <{elem_type = !llvm.struct<"struct.P32", (i32, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %141 = "llvm.load"(%140) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %142 = "llvm.getelementptr"(%138, %135) <{elem_type = !llvm.struct<"struct.P32", (i32, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %143 = "llvm.load"(%142) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %144 = "llvm.add"(%141, %143) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.store"(%144, %139) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %145 = "llvm.getelementptr"(%136, %135) <{elem_type = !llvm.struct<"struct.P32", (i32, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %146 = "llvm.getelementptr"(%137, %135) <{elem_type = !llvm.struct<"struct.P32", (i32, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %147 = "llvm.load"(%146) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %148 = "llvm.getelementptr"(%138, %135) <{elem_type = !llvm.struct<"struct.P32", (i32, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %149 = "llvm.load"(%148) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %150 = "llvm.add"(%147, %149) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.store"(%150, %145) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %151 = "llvm.load"(%136) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.array<2 x i32>
    "llvm.return"(%151) : (!llvm.array<2 x i32>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, frame_pointer = #llvm.framePointerKind<all>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<internal>, no_inline, no_unwind, optimize_none, passthrough = ["no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "swap16", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcalculet", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: i32):
    %123 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %124 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %125 = "llvm.alloca"(%123) <{alignment = 2 : i64, elem_type = !llvm.struct<"struct.P16", (i16, i16)>}> : (i32) -> !llvm.ptr
    %126 = "llvm.alloca"(%123) <{alignment = 2 : i64, elem_type = !llvm.struct<"struct.P16", (i16, i16)>}> : (i32) -> !llvm.ptr
    "llvm.store"(%arg9, %126) <{alignment = 2 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %127 = "llvm.getelementptr"(%125, %124) <{elem_type = !llvm.struct<"struct.P16", (i16, i16)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %128 = "llvm.getelementptr"(%126, %124) <{elem_type = !llvm.struct<"struct.P16", (i16, i16)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %129 = "llvm.load"(%128) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    "llvm.store"(%129, %127) <{alignment = 2 : i64, ordering = 0 : i64}> : (i16, !llvm.ptr) -> ()
    %130 = "llvm.getelementptr"(%125, %124) <{elem_type = !llvm.struct<"struct.P16", (i16, i16)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %131 = "llvm.getelementptr"(%126, %124) <{elem_type = !llvm.struct<"struct.P16", (i16, i16)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %132 = "llvm.load"(%131) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    "llvm.store"(%132, %130) <{alignment = 2 : i64, ordering = 0 : i64}> : (i16, !llvm.ptr) -> ()
    %133 = "llvm.load"(%125) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.return"(%133) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, frame_pointer = #llvm.framePointerKind<all>, function_type = !llvm.func<struct<(f32, f32)> (f32, f32, f32, f32)>, linkage = #llvm.linkage<internal>, no_inline, no_unwind, optimize_none, passthrough = ["no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "cmul", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcalculet", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: f32, %arg6: f32, %arg7: f32, %arg8: f32):
    %84 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %85 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %86 = "llvm.mlir.poison"() : () -> !llvm.struct<(f32, f32)>
    %87 = "llvm.alloca"(%84) <{alignment = 4 : i64, elem_type = !llvm.struct<"struct.Cf", (f32, f32)>}> : (i32) -> !llvm.ptr
    %88 = "llvm.alloca"(%84) <{alignment = 4 : i64, elem_type = !llvm.struct<"struct.Cf", (f32, f32)>}> : (i32) -> !llvm.ptr
    %89 = "llvm.alloca"(%84) <{alignment = 4 : i64, elem_type = !llvm.struct<"struct.Cf", (f32, f32)>}> : (i32) -> !llvm.ptr
    %90 = "llvm.getelementptr"(%88, %85) <{elem_type = !llvm.struct<(f32, f32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%arg5, %90) <{alignment = 4 : i64, ordering = 0 : i64}> : (f32, !llvm.ptr) -> ()
    %91 = "llvm.getelementptr"(%88, %85) <{elem_type = !llvm.struct<(f32, f32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%arg6, %91) <{alignment = 4 : i64, ordering = 0 : i64}> : (f32, !llvm.ptr) -> ()
    %92 = "llvm.getelementptr"(%89, %85) <{elem_type = !llvm.struct<(f32, f32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%arg7, %92) <{alignment = 4 : i64, ordering = 0 : i64}> : (f32, !llvm.ptr) -> ()
    %93 = "llvm.getelementptr"(%89, %85) <{elem_type = !llvm.struct<(f32, f32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%arg8, %93) <{alignment = 4 : i64, ordering = 0 : i64}> : (f32, !llvm.ptr) -> ()
    %94 = "llvm.getelementptr"(%87, %85) <{elem_type = !llvm.struct<"struct.Cf", (f32, f32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %95 = "llvm.getelementptr"(%88, %85) <{elem_type = !llvm.struct<"struct.Cf", (f32, f32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %96 = "llvm.load"(%95) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f32
    %97 = "llvm.getelementptr"(%89, %85) <{elem_type = !llvm.struct<"struct.Cf", (f32, f32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %98 = "llvm.load"(%97) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f32
    %99 = "llvm.getelementptr"(%88, %85) <{elem_type = !llvm.struct<"struct.Cf", (f32, f32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %100 = "llvm.load"(%99) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f32
    %101 = "llvm.getelementptr"(%89, %85) <{elem_type = !llvm.struct<"struct.Cf", (f32, f32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %102 = "llvm.load"(%101) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f32
    %103 = "llvm.fmul"(%100, %102) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %104 = "llvm.fneg"(%103) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    %105 = "llvm.intr.fmuladd"(%96, %98, %104) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32, f32) -> f32
    "llvm.store"(%105, %94) <{alignment = 4 : i64, ordering = 0 : i64}> : (f32, !llvm.ptr) -> ()
    %106 = "llvm.getelementptr"(%87, %85) <{elem_type = !llvm.struct<"struct.Cf", (f32, f32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %107 = "llvm.getelementptr"(%88, %85) <{elem_type = !llvm.struct<"struct.Cf", (f32, f32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %108 = "llvm.load"(%107) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f32
    %109 = "llvm.getelementptr"(%89, %85) <{elem_type = !llvm.struct<"struct.Cf", (f32, f32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %110 = "llvm.load"(%109) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f32
    %111 = "llvm.getelementptr"(%88, %85) <{elem_type = !llvm.struct<"struct.Cf", (f32, f32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %112 = "llvm.load"(%111) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f32
    %113 = "llvm.getelementptr"(%89, %85) <{elem_type = !llvm.struct<"struct.Cf", (f32, f32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %114 = "llvm.load"(%113) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f32
    %115 = "llvm.fmul"(%112, %114) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %116 = "llvm.intr.fmuladd"(%108, %110, %115) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32, f32) -> f32
    "llvm.store"(%116, %106) <{alignment = 4 : i64, ordering = 0 : i64}> : (f32, !llvm.ptr) -> ()
    %117 = "llvm.getelementptr"(%87, %85) <{elem_type = !llvm.struct<(f32, f32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %118 = "llvm.load"(%117) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f32
    %119 = "llvm.getelementptr"(%87, %85) <{elem_type = !llvm.struct<(f32, f32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %120 = "llvm.load"(%119) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f32
    %121 = "llvm.insertvalue"(%86, %118) <{position = array<i64: 0>}> : (!llvm.struct<(f32, f32)>, f32) -> !llvm.struct<(f32, f32)>
    %122 = "llvm.insertvalue"(%121, %120) <{position = array<i64: 1>}> : (!llvm.struct<(f32, f32)>, f32) -> !llvm.struct<(f32, f32)>
    "llvm.return"(%122) : (!llvm.struct<(f32, f32)>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.noundef}], dso_local, frame_pointer = #llvm.framePointerKind<all>, function_type = !llvm.func<i32 (ptr)>, linkage = #llvm.linkage<internal>, no_inline, no_unwind, optimize_none, passthrough = ["no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "area", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcalculet", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: !llvm.ptr):
    %66 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %67 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %68 = "llvm.alloca"(%66) <{alignment = 4 : i64, elem_type = !llvm.ptr}> : (i32) -> !llvm.ptr
    "llvm.store"(%arg4, %68) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %69 = "llvm.getelementptr"(%arg4, %67) <{elem_type = !llvm.struct<"struct.Box", (struct<"struct.P32", (i32, i32)>, struct<"struct.P32", (i32, i32)>)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %70 = "llvm.getelementptr"(%69, %67) <{elem_type = !llvm.struct<"struct.P32", (i32, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %71 = "llvm.load"(%70) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %72 = "llvm.getelementptr"(%arg4, %67) <{elem_type = !llvm.struct<"struct.Box", (struct<"struct.P32", (i32, i32)>, struct<"struct.P32", (i32, i32)>)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %73 = "llvm.getelementptr"(%72, %67) <{elem_type = !llvm.struct<"struct.P32", (i32, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %74 = "llvm.load"(%73) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %75 = "llvm.sub"(%71, %74) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %76 = "llvm.getelementptr"(%arg4, %67) <{elem_type = !llvm.struct<"struct.Box", (struct<"struct.P32", (i32, i32)>, struct<"struct.P32", (i32, i32)>)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %77 = "llvm.getelementptr"(%76, %67) <{elem_type = !llvm.struct<"struct.P32", (i32, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %78 = "llvm.load"(%77) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %79 = "llvm.getelementptr"(%arg4, %67) <{elem_type = !llvm.struct<"struct.Box", (struct<"struct.P32", (i32, i32)>, struct<"struct.P32", (i32, i32)>)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %80 = "llvm.getelementptr"(%79, %67) <{elem_type = !llvm.struct<"struct.P32", (i32, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %81 = "llvm.load"(%80) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %82 = "llvm.sub"(%78, %81) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %83 = "llvm.mul"(%75, %82) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.return"(%83) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], dso_local, frame_pointer = #llvm.framePointerKind<all>, function_type = !llvm.func<void (ptr, i32)>, linkage = #llvm.linkage<internal>, no_inline, no_unwind, optimize_none, passthrough = ["no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "scale", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcalculet", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: !llvm.ptr, %arg3: i32):
    %49 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %50 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %51 = "llvm.mlir.constant"() <{value = 6 : i32}> : () -> i32
    %52 = "llvm.alloca"(%49) <{alignment = 4 : i64, elem_type = !llvm.ptr}> : (i32) -> !llvm.ptr
    %53 = "llvm.alloca"(%49) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %54 = "llvm.alloca"(%49) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    "llvm.store"(%arg2, %52) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    "llvm.store"(%arg3, %53) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.store"(%50, %54) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // 2 preds: ^bb0, ^bb3
    %55 = "llvm.load"(%54) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %56 = "llvm.icmp"(%55, %51) <{predicate = 2 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%56)[^bb2, ^bb4] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb2:  // pred: ^bb1
    %57 = "llvm.load"(%53) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %58 = "llvm.load"(%52) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.ptr
    %59 = "llvm.getelementptr"(%58, %50) <{elem_type = !llvm.struct<"struct.Big", (array<6 x i32>, i8)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %60 = "llvm.load"(%54) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %61 = "llvm.getelementptr"(%59, %50, %60) <{elem_type = !llvm.array<6 x i32>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    %62 = "llvm.load"(%61) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %63 = "llvm.mul"(%62, %57) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.store"(%63, %61) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb3] : () -> ()
  ^bb3:  // pred: ^bb2
    %64 = "llvm.load"(%54) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %65 = "llvm.add"(%64, %49) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.store"(%65, %54) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb1] <{loop_annotation = #loop_annotation}> : () -> ()
  ^bb4:  // pred: ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.noundef}], dso_local, frame_pointer = #llvm.framePointerKind<all>, function_type = !llvm.func<i32 (ptr)>, linkage = #llvm.linkage<internal>, no_inline, no_unwind, optimize_none, passthrough = ["no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "sum_big", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcalculet", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: !llvm.ptr):
    %26 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %27 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %28 = "llvm.mlir.constant"() <{value = 6 : i32}> : () -> i32
    %29 = "llvm.alloca"(%26) <{alignment = 4 : i64, elem_type = !llvm.ptr}> : (i32) -> !llvm.ptr
    %30 = "llvm.alloca"(%26) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %31 = "llvm.alloca"(%26) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    "llvm.store"(%arg1, %29) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %32 = "llvm.getelementptr"(%arg1, %27) <{elem_type = !llvm.struct<"struct.Big", (array<6 x i32>, i8)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %33 = "llvm.load"(%32) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %34 = "llvm.zext"(%33) : (i8) -> i32
    "llvm.store"(%34, %30) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.store"(%27, %31) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // 2 preds: ^bb0, ^bb3
    %35 = "llvm.load"(%31) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %36 = "llvm.icmp"(%35, %28) <{predicate = 2 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%36)[^bb2, ^bb4] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb2:  // pred: ^bb1
    %37 = "llvm.getelementptr"(%arg1, %27) <{elem_type = !llvm.struct<"struct.Big", (array<6 x i32>, i8)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %38 = "llvm.load"(%31) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %39 = "llvm.getelementptr"(%37, %27, %38) <{elem_type = !llvm.array<6 x i32>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    %40 = "llvm.load"(%39) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %41 = "llvm.load"(%31) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %42 = "llvm.add"(%41, %26) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %43 = "llvm.mul"(%40, %42) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %44 = "llvm.load"(%30) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %45 = "llvm.add"(%44, %43) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.store"(%45, %30) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb3] : () -> ()
  ^bb3:  // pred: ^bb2
    %46 = "llvm.load"(%31) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %47 = "llvm.add"(%46, %26) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.store"(%47, %31) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb1] <{loop_annotation = #loop_annotation}> : () -> ()
  ^bb4:  // pred: ^bb1
    %48 = "llvm.load"(%30) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.return"(%48) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, frame_pointer = #llvm.framePointerKind<all>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<internal>, no_inline, no_unwind, optimize_none, passthrough = ["no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "pack", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcalculet", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i32):
    %0 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %2 = "llvm.mlir.constant"() <{value = 7 : i32}> : () -> i32
    %3 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %4 = "llvm.mlir.constant"() <{value = 127 : i32}> : () -> i32
    %5 = "llvm.mlir.constant"() <{value = 10 : i32}> : () -> i32
    %6 = "llvm.mlir.constant"() <{value = 4095 : i32}> : () -> i32
    %7 = "llvm.mlir.constant"() <{value = 22 : i32}> : () -> i32
    %8 = "llvm.alloca"(%0) <{alignment = 4 : i64, elem_type = !llvm.struct<"struct.Bits", (i32)>}> : (i32) -> !llvm.ptr
    %9 = "llvm.getelementptr"(%8, %1) <{elem_type = !llvm.struct<"struct.Bits", (i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%arg0, %9) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %10 = "llvm.load"(%8) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %11 = "llvm.and"(%10, %2) : (i32, i32) -> i32
    %12 = "llvm.load"(%8) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %13 = "llvm.lshr"(%12, %3) : (i32, i32) -> i32
    %14 = "llvm.and"(%13, %4) : (i32, i32) -> i32
    %15 = "llvm.shl"(%14, %3) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %16 = "llvm.or"(%11, %15) : (i32, i32) -> i32
    %17 = "llvm.load"(%8) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %18 = "llvm.lshr"(%17, %5) : (i32, i32) -> i32
    %19 = "llvm.and"(%18, %6) : (i32, i32) -> i32
    %20 = "llvm.shl"(%19, %5) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %21 = "llvm.or"(%16, %20) : (i32, i32) -> i32
    %22 = "llvm.load"(%8) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %23 = "llvm.lshr"(%22, %7) : (i32, i32) -> i32
    %24 = "llvm.shl"(%23, %7) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %25 = "llvm.or"(%21, %24) : (i32, i32) -> i32
    "llvm.return"(%25) : (i32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<32> : vector<4xi64>, i64 = dense<64> : vector<2xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little", "dlti.mangling_mode" = "e", "dlti.legal_int_widths" = array<i32: 32>, "dlti.stack_alignment" = 128 : i64>, llvm.ident = "clang version 22.1.8", llvm.module_asm = [], llvm.target_triple = "riscv32-unknown-unknown-elf"} : () -> ()

