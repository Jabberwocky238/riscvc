"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_f0", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg63: f32):
    %63 = "llvm.inline_asm"(%arg63) <{asm_dialect = 0 : i64, asm_string = "fcvt.w.s $0, $1", constraints = "=r,{f0}", tail_call_kind = #llvm.tailcallkind<tail>}> : (f32) -> i32
    "llvm.return"(%63) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_ft0", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg62: f32):
    %62 = "llvm.inline_asm"(%arg62) <{asm_dialect = 0 : i64, asm_string = "fcvt.w.s $0, $1", constraints = "=r,{ft0}", tail_call_kind = #llvm.tailcallkind<tail>}> : (f32) -> i32
    "llvm.return"(%62) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_f1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg61: f32):
    %61 = "llvm.inline_asm"(%arg61) <{asm_dialect = 0 : i64, asm_string = "fcvt.w.s $0, $1", constraints = "=r,{f1}", tail_call_kind = #llvm.tailcallkind<tail>}> : (f32) -> i32
    "llvm.return"(%61) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_ft1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg60: f32):
    %60 = "llvm.inline_asm"(%arg60) <{asm_dialect = 0 : i64, asm_string = "fcvt.w.s $0, $1", constraints = "=r,{ft1}", tail_call_kind = #llvm.tailcallkind<tail>}> : (f32) -> i32
    "llvm.return"(%60) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_f2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg59: f32):
    %59 = "llvm.inline_asm"(%arg59) <{asm_dialect = 0 : i64, asm_string = "fcvt.w.s $0, $1", constraints = "=r,{f2}", tail_call_kind = #llvm.tailcallkind<tail>}> : (f32) -> i32
    "llvm.return"(%59) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_ft2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg58: f32):
    %58 = "llvm.inline_asm"(%arg58) <{asm_dialect = 0 : i64, asm_string = "fcvt.w.s $0, $1", constraints = "=r,{ft2}", tail_call_kind = #llvm.tailcallkind<tail>}> : (f32) -> i32
    "llvm.return"(%58) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_f3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg57: f32):
    %57 = "llvm.inline_asm"(%arg57) <{asm_dialect = 0 : i64, asm_string = "fcvt.w.s $0, $1", constraints = "=r,{f3}", tail_call_kind = #llvm.tailcallkind<tail>}> : (f32) -> i32
    "llvm.return"(%57) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_ft3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg56: f32):
    %56 = "llvm.inline_asm"(%arg56) <{asm_dialect = 0 : i64, asm_string = "fcvt.w.s $0, $1", constraints = "=r,{ft3}", tail_call_kind = #llvm.tailcallkind<tail>}> : (f32) -> i32
    "llvm.return"(%56) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_f4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg55: f32):
    %55 = "llvm.inline_asm"(%arg55) <{asm_dialect = 0 : i64, asm_string = "fcvt.w.s $0, $1", constraints = "=r,{f4}", tail_call_kind = #llvm.tailcallkind<tail>}> : (f32) -> i32
    "llvm.return"(%55) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_ft4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg54: f32):
    %54 = "llvm.inline_asm"(%arg54) <{asm_dialect = 0 : i64, asm_string = "fcvt.w.s $0, $1", constraints = "=r,{ft4}", tail_call_kind = #llvm.tailcallkind<tail>}> : (f32) -> i32
    "llvm.return"(%54) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_f5", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg53: f32):
    %53 = "llvm.inline_asm"(%arg53) <{asm_dialect = 0 : i64, asm_string = "fcvt.w.s $0, $1", constraints = "=r,{f5}", tail_call_kind = #llvm.tailcallkind<tail>}> : (f32) -> i32
    "llvm.return"(%53) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_ft5", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg52: f32):
    %52 = "llvm.inline_asm"(%arg52) <{asm_dialect = 0 : i64, asm_string = "fcvt.w.s $0, $1", constraints = "=r,{ft5}", tail_call_kind = #llvm.tailcallkind<tail>}> : (f32) -> i32
    "llvm.return"(%52) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_f6", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg51: f32):
    %51 = "llvm.inline_asm"(%arg51) <{asm_dialect = 0 : i64, asm_string = "fcvt.w.s $0, $1", constraints = "=r,{f6}", tail_call_kind = #llvm.tailcallkind<tail>}> : (f32) -> i32
    "llvm.return"(%51) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_ft6", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg50: f32):
    %50 = "llvm.inline_asm"(%arg50) <{asm_dialect = 0 : i64, asm_string = "fcvt.w.s $0, $1", constraints = "=r,{ft6}", tail_call_kind = #llvm.tailcallkind<tail>}> : (f32) -> i32
    "llvm.return"(%50) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_f7", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg49: f32):
    %49 = "llvm.inline_asm"(%arg49) <{asm_dialect = 0 : i64, asm_string = "fcvt.w.s $0, $1", constraints = "=r,{f7}", tail_call_kind = #llvm.tailcallkind<tail>}> : (f32) -> i32
    "llvm.return"(%49) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_ft7", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg48: f32):
    %48 = "llvm.inline_asm"(%arg48) <{asm_dialect = 0 : i64, asm_string = "fcvt.w.s $0, $1", constraints = "=r,{ft7}", tail_call_kind = #llvm.tailcallkind<tail>}> : (f32) -> i32
    "llvm.return"(%48) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_f8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg47: f32):
    %47 = "llvm.inline_asm"(%arg47) <{asm_dialect = 0 : i64, asm_string = "fcvt.w.s $0, $1", constraints = "=r,{f8}", tail_call_kind = #llvm.tailcallkind<tail>}> : (f32) -> i32
    "llvm.return"(%47) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_fs0", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg46: f32):
    %46 = "llvm.inline_asm"(%arg46) <{asm_dialect = 0 : i64, asm_string = "fcvt.w.s $0, $1", constraints = "=r,{fs0}", tail_call_kind = #llvm.tailcallkind<tail>}> : (f32) -> i32
    "llvm.return"(%46) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_f9", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg45: f32):
    %45 = "llvm.inline_asm"(%arg45) <{asm_dialect = 0 : i64, asm_string = "fcvt.w.s $0, $1", constraints = "=r,{f9}", tail_call_kind = #llvm.tailcallkind<tail>}> : (f32) -> i32
    "llvm.return"(%45) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_fs1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg44: f32):
    %44 = "llvm.inline_asm"(%arg44) <{asm_dialect = 0 : i64, asm_string = "fcvt.w.s $0, $1", constraints = "=r,{fs1}", tail_call_kind = #llvm.tailcallkind<tail>}> : (f32) -> i32
    "llvm.return"(%44) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_f10", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg43: f32):
    %43 = "llvm.inline_asm"(%arg43) <{asm_dialect = 0 : i64, asm_string = "fcvt.w.s $0, $1", constraints = "=r,{f10}", tail_call_kind = #llvm.tailcallkind<tail>}> : (f32) -> i32
    "llvm.return"(%43) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_fa0", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg42: f32):
    %42 = "llvm.inline_asm"(%arg42) <{asm_dialect = 0 : i64, asm_string = "fcvt.w.s $0, $1", constraints = "=r,{fa0}", tail_call_kind = #llvm.tailcallkind<tail>}> : (f32) -> i32
    "llvm.return"(%42) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_f11", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg41: f32):
    %41 = "llvm.inline_asm"(%arg41) <{asm_dialect = 0 : i64, asm_string = "fcvt.w.s $0, $1", constraints = "=r,{f11}", tail_call_kind = #llvm.tailcallkind<tail>}> : (f32) -> i32
    "llvm.return"(%41) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_fa1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg40: f32):
    %40 = "llvm.inline_asm"(%arg40) <{asm_dialect = 0 : i64, asm_string = "fcvt.w.s $0, $1", constraints = "=r,{fa1}", tail_call_kind = #llvm.tailcallkind<tail>}> : (f32) -> i32
    "llvm.return"(%40) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_f12", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg39: f32):
    %39 = "llvm.inline_asm"(%arg39) <{asm_dialect = 0 : i64, asm_string = "fcvt.w.s $0, $1", constraints = "=r,{f12}", tail_call_kind = #llvm.tailcallkind<tail>}> : (f32) -> i32
    "llvm.return"(%39) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_fa2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg38: f32):
    %38 = "llvm.inline_asm"(%arg38) <{asm_dialect = 0 : i64, asm_string = "fcvt.w.s $0, $1", constraints = "=r,{fa2}", tail_call_kind = #llvm.tailcallkind<tail>}> : (f32) -> i32
    "llvm.return"(%38) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_f13", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg37: f32):
    %37 = "llvm.inline_asm"(%arg37) <{asm_dialect = 0 : i64, asm_string = "fcvt.w.s $0, $1", constraints = "=r,{f13}", tail_call_kind = #llvm.tailcallkind<tail>}> : (f32) -> i32
    "llvm.return"(%37) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_fa3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg36: f32):
    %36 = "llvm.inline_asm"(%arg36) <{asm_dialect = 0 : i64, asm_string = "fcvt.w.s $0, $1", constraints = "=r,{fa3}", tail_call_kind = #llvm.tailcallkind<tail>}> : (f32) -> i32
    "llvm.return"(%36) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_f14", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg35: f32):
    %35 = "llvm.inline_asm"(%arg35) <{asm_dialect = 0 : i64, asm_string = "fcvt.w.s $0, $1", constraints = "=r,{f14}", tail_call_kind = #llvm.tailcallkind<tail>}> : (f32) -> i32
    "llvm.return"(%35) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_fa4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg34: f32):
    %34 = "llvm.inline_asm"(%arg34) <{asm_dialect = 0 : i64, asm_string = "fcvt.w.s $0, $1", constraints = "=r,{fa4}", tail_call_kind = #llvm.tailcallkind<tail>}> : (f32) -> i32
    "llvm.return"(%34) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_f15", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg33: f32):
    %33 = "llvm.inline_asm"(%arg33) <{asm_dialect = 0 : i64, asm_string = "fcvt.w.s $0, $1", constraints = "=r,{f15}", tail_call_kind = #llvm.tailcallkind<tail>}> : (f32) -> i32
    "llvm.return"(%33) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_fa5", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg32: f32):
    %32 = "llvm.inline_asm"(%arg32) <{asm_dialect = 0 : i64, asm_string = "fcvt.w.s $0, $1", constraints = "=r,{fa5}", tail_call_kind = #llvm.tailcallkind<tail>}> : (f32) -> i32
    "llvm.return"(%32) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_f16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg31: f32):
    %31 = "llvm.inline_asm"(%arg31) <{asm_dialect = 0 : i64, asm_string = "fcvt.w.s $0, $1", constraints = "=r,{f16}", tail_call_kind = #llvm.tailcallkind<tail>}> : (f32) -> i32
    "llvm.return"(%31) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_fa6", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg30: f32):
    %30 = "llvm.inline_asm"(%arg30) <{asm_dialect = 0 : i64, asm_string = "fcvt.w.s $0, $1", constraints = "=r,{fa6}", tail_call_kind = #llvm.tailcallkind<tail>}> : (f32) -> i32
    "llvm.return"(%30) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_f17", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg29: f32):
    %29 = "llvm.inline_asm"(%arg29) <{asm_dialect = 0 : i64, asm_string = "fcvt.w.s $0, $1", constraints = "=r,{f17}", tail_call_kind = #llvm.tailcallkind<tail>}> : (f32) -> i32
    "llvm.return"(%29) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_fa7", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg28: f32):
    %28 = "llvm.inline_asm"(%arg28) <{asm_dialect = 0 : i64, asm_string = "fcvt.w.s $0, $1", constraints = "=r,{fa7}", tail_call_kind = #llvm.tailcallkind<tail>}> : (f32) -> i32
    "llvm.return"(%28) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_f18", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg27: f32):
    %27 = "llvm.inline_asm"(%arg27) <{asm_dialect = 0 : i64, asm_string = "fcvt.w.s $0, $1", constraints = "=r,{f18}", tail_call_kind = #llvm.tailcallkind<tail>}> : (f32) -> i32
    "llvm.return"(%27) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_fs2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg26: f32):
    %26 = "llvm.inline_asm"(%arg26) <{asm_dialect = 0 : i64, asm_string = "fcvt.w.s $0, $1", constraints = "=r,{fs2}", tail_call_kind = #llvm.tailcallkind<tail>}> : (f32) -> i32
    "llvm.return"(%26) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_f19", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg25: f32):
    %25 = "llvm.inline_asm"(%arg25) <{asm_dialect = 0 : i64, asm_string = "fcvt.w.s $0, $1", constraints = "=r,{f19}", tail_call_kind = #llvm.tailcallkind<tail>}> : (f32) -> i32
    "llvm.return"(%25) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_fs3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg24: f32):
    %24 = "llvm.inline_asm"(%arg24) <{asm_dialect = 0 : i64, asm_string = "fcvt.w.s $0, $1", constraints = "=r,{fs3}", tail_call_kind = #llvm.tailcallkind<tail>}> : (f32) -> i32
    "llvm.return"(%24) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_f20", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg23: f32):
    %23 = "llvm.inline_asm"(%arg23) <{asm_dialect = 0 : i64, asm_string = "fcvt.w.s $0, $1", constraints = "=r,{f20}", tail_call_kind = #llvm.tailcallkind<tail>}> : (f32) -> i32
    "llvm.return"(%23) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_fs4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg22: f32):
    %22 = "llvm.inline_asm"(%arg22) <{asm_dialect = 0 : i64, asm_string = "fcvt.w.s $0, $1", constraints = "=r,{fs4}", tail_call_kind = #llvm.tailcallkind<tail>}> : (f32) -> i32
    "llvm.return"(%22) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_f21", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg21: f32):
    %21 = "llvm.inline_asm"(%arg21) <{asm_dialect = 0 : i64, asm_string = "fcvt.w.s $0, $1", constraints = "=r,{f21}", tail_call_kind = #llvm.tailcallkind<tail>}> : (f32) -> i32
    "llvm.return"(%21) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_fs5", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg20: f32):
    %20 = "llvm.inline_asm"(%arg20) <{asm_dialect = 0 : i64, asm_string = "fcvt.w.s $0, $1", constraints = "=r,{fs5}", tail_call_kind = #llvm.tailcallkind<tail>}> : (f32) -> i32
    "llvm.return"(%20) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_f22", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg19: f32):
    %19 = "llvm.inline_asm"(%arg19) <{asm_dialect = 0 : i64, asm_string = "fcvt.w.s $0, $1", constraints = "=r,{f22}", tail_call_kind = #llvm.tailcallkind<tail>}> : (f32) -> i32
    "llvm.return"(%19) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_fs6", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg18: f32):
    %18 = "llvm.inline_asm"(%arg18) <{asm_dialect = 0 : i64, asm_string = "fcvt.w.s $0, $1", constraints = "=r,{fs6}", tail_call_kind = #llvm.tailcallkind<tail>}> : (f32) -> i32
    "llvm.return"(%18) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_f23", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg17: f32):
    %17 = "llvm.inline_asm"(%arg17) <{asm_dialect = 0 : i64, asm_string = "fcvt.w.s $0, $1", constraints = "=r,{f23}", tail_call_kind = #llvm.tailcallkind<tail>}> : (f32) -> i32
    "llvm.return"(%17) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_fs7", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg16: f32):
    %16 = "llvm.inline_asm"(%arg16) <{asm_dialect = 0 : i64, asm_string = "fcvt.w.s $0, $1", constraints = "=r,{fs7}", tail_call_kind = #llvm.tailcallkind<tail>}> : (f32) -> i32
    "llvm.return"(%16) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_f24", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg15: f32):
    %15 = "llvm.inline_asm"(%arg15) <{asm_dialect = 0 : i64, asm_string = "fcvt.w.s $0, $1", constraints = "=r,{f24}", tail_call_kind = #llvm.tailcallkind<tail>}> : (f32) -> i32
    "llvm.return"(%15) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_fs8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: f32):
    %14 = "llvm.inline_asm"(%arg14) <{asm_dialect = 0 : i64, asm_string = "fcvt.w.s $0, $1", constraints = "=r,{fs8}", tail_call_kind = #llvm.tailcallkind<tail>}> : (f32) -> i32
    "llvm.return"(%14) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_f25", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg13: f32):
    %13 = "llvm.inline_asm"(%arg13) <{asm_dialect = 0 : i64, asm_string = "fcvt.w.s $0, $1", constraints = "=r,{f25}", tail_call_kind = #llvm.tailcallkind<tail>}> : (f32) -> i32
    "llvm.return"(%13) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_fs9", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: f32):
    %12 = "llvm.inline_asm"(%arg12) <{asm_dialect = 0 : i64, asm_string = "fcvt.w.s $0, $1", constraints = "=r,{fs9}", tail_call_kind = #llvm.tailcallkind<tail>}> : (f32) -> i32
    "llvm.return"(%12) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_f26", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg11: f32):
    %11 = "llvm.inline_asm"(%arg11) <{asm_dialect = 0 : i64, asm_string = "fcvt.w.s $0, $1", constraints = "=r,{f26}", tail_call_kind = #llvm.tailcallkind<tail>}> : (f32) -> i32
    "llvm.return"(%11) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_fs10", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: f32):
    %10 = "llvm.inline_asm"(%arg10) <{asm_dialect = 0 : i64, asm_string = "fcvt.w.s $0, $1", constraints = "=r,{fs10}", tail_call_kind = #llvm.tailcallkind<tail>}> : (f32) -> i32
    "llvm.return"(%10) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_f27", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: f32):
    %9 = "llvm.inline_asm"(%arg9) <{asm_dialect = 0 : i64, asm_string = "fcvt.w.s $0, $1", constraints = "=r,{f27}", tail_call_kind = #llvm.tailcallkind<tail>}> : (f32) -> i32
    "llvm.return"(%9) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_fs11", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: f32):
    %8 = "llvm.inline_asm"(%arg8) <{asm_dialect = 0 : i64, asm_string = "fcvt.w.s $0, $1", constraints = "=r,{fs11}", tail_call_kind = #llvm.tailcallkind<tail>}> : (f32) -> i32
    "llvm.return"(%8) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_f28", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg7: f32):
    %7 = "llvm.inline_asm"(%arg7) <{asm_dialect = 0 : i64, asm_string = "fcvt.w.s $0, $1", constraints = "=r,{f28}", tail_call_kind = #llvm.tailcallkind<tail>}> : (f32) -> i32
    "llvm.return"(%7) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_ft8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: f32):
    %6 = "llvm.inline_asm"(%arg6) <{asm_dialect = 0 : i64, asm_string = "fcvt.w.s $0, $1", constraints = "=r,{ft8}", tail_call_kind = #llvm.tailcallkind<tail>}> : (f32) -> i32
    "llvm.return"(%6) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_f29", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: f32):
    %5 = "llvm.inline_asm"(%arg5) <{asm_dialect = 0 : i64, asm_string = "fcvt.w.s $0, $1", constraints = "=r,{f29}", tail_call_kind = #llvm.tailcallkind<tail>}> : (f32) -> i32
    "llvm.return"(%5) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_ft9", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: f32):
    %4 = "llvm.inline_asm"(%arg4) <{asm_dialect = 0 : i64, asm_string = "fcvt.w.s $0, $1", constraints = "=r,{ft9}", tail_call_kind = #llvm.tailcallkind<tail>}> : (f32) -> i32
    "llvm.return"(%4) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_f30", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: f32):
    %3 = "llvm.inline_asm"(%arg3) <{asm_dialect = 0 : i64, asm_string = "fcvt.w.s $0, $1", constraints = "=r,{f30}", tail_call_kind = #llvm.tailcallkind<tail>}> : (f32) -> i32
    "llvm.return"(%3) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_ft10", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: f32):
    %2 = "llvm.inline_asm"(%arg2) <{asm_dialect = 0 : i64, asm_string = "fcvt.w.s $0, $1", constraints = "=r,{ft10}", tail_call_kind = #llvm.tailcallkind<tail>}> : (f32) -> i32
    "llvm.return"(%2) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_f31", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: f32):
    %1 = "llvm.inline_asm"(%arg1) <{asm_dialect = 0 : i64, asm_string = "fcvt.w.s $0, $1", constraints = "=r,{f31}", tail_call_kind = #llvm.tailcallkind<tail>}> : (f32) -> i32
    "llvm.return"(%1) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_ft11", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: f32):
    %0 = "llvm.inline_asm"(%arg0) <{asm_dialect = 0 : i64, asm_string = "fcvt.w.s $0, $1", constraints = "=r,{ft11}", tail_call_kind = #llvm.tailcallkind<tail>}> : (f32) -> i32
    "llvm.return"(%0) : (i32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

