"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_x0", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %65 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %66 = "llvm.inline_asm"(%65) <{asm_dialect = 0 : i64, asm_string = "addi $0, $1, 0", constraints = "=r,{x0}", tail_call_kind = #llvm.tailcallkind<tail>}> : (i32) -> i32
    "llvm.return"(%66) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_zero", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %63 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %64 = "llvm.inline_asm"(%63) <{asm_dialect = 0 : i64, asm_string = "addi $0, $1, 0", constraints = "=r,{zero}", tail_call_kind = #llvm.tailcallkind<tail>}> : (i32) -> i32
    "llvm.return"(%64) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_x1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg62: i32):
    %62 = "llvm.inline_asm"(%arg62) <{asm_dialect = 0 : i64, asm_string = "addi $0, $1, 0", constraints = "=r,{x1}", tail_call_kind = #llvm.tailcallkind<tail>}> : (i32) -> i32
    "llvm.return"(%62) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_ra", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg61: i32):
    %61 = "llvm.inline_asm"(%arg61) <{asm_dialect = 0 : i64, asm_string = "addi $0, $1, 0", constraints = "=r,{ra}", tail_call_kind = #llvm.tailcallkind<tail>}> : (i32) -> i32
    "llvm.return"(%61) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_x2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg60: i32):
    %60 = "llvm.inline_asm"(%arg60) <{asm_dialect = 0 : i64, asm_string = "addi $0, $1, 0", constraints = "=r,{x2}", tail_call_kind = #llvm.tailcallkind<tail>}> : (i32) -> i32
    "llvm.return"(%60) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_sp", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg59: i32):
    %59 = "llvm.inline_asm"(%arg59) <{asm_dialect = 0 : i64, asm_string = "addi $0, $1, 0", constraints = "=r,{sp}", tail_call_kind = #llvm.tailcallkind<tail>}> : (i32) -> i32
    "llvm.return"(%59) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_x3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg58: i32):
    %58 = "llvm.inline_asm"(%arg58) <{asm_dialect = 0 : i64, asm_string = "addi $0, $1, 0", constraints = "=r,{x3}", tail_call_kind = #llvm.tailcallkind<tail>}> : (i32) -> i32
    "llvm.return"(%58) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_gp", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg57: i32):
    %57 = "llvm.inline_asm"(%arg57) <{asm_dialect = 0 : i64, asm_string = "addi $0, $1, 0", constraints = "=r,{gp}", tail_call_kind = #llvm.tailcallkind<tail>}> : (i32) -> i32
    "llvm.return"(%57) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_x4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg56: i32):
    %56 = "llvm.inline_asm"(%arg56) <{asm_dialect = 0 : i64, asm_string = "addi $0, $1, 0", constraints = "=r,{x4}", tail_call_kind = #llvm.tailcallkind<tail>}> : (i32) -> i32
    "llvm.return"(%56) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_tp", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg55: i32):
    %55 = "llvm.inline_asm"(%arg55) <{asm_dialect = 0 : i64, asm_string = "addi $0, $1, 0", constraints = "=r,{tp}", tail_call_kind = #llvm.tailcallkind<tail>}> : (i32) -> i32
    "llvm.return"(%55) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_x5", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg54: i32):
    %54 = "llvm.inline_asm"(%arg54) <{asm_dialect = 0 : i64, asm_string = "addi $0, $1, 0", constraints = "=r,{x5}", tail_call_kind = #llvm.tailcallkind<tail>}> : (i32) -> i32
    "llvm.return"(%54) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_t0", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg53: i32):
    %53 = "llvm.inline_asm"(%arg53) <{asm_dialect = 0 : i64, asm_string = "addi $0, $1, 0", constraints = "=r,{t0}", tail_call_kind = #llvm.tailcallkind<tail>}> : (i32) -> i32
    "llvm.return"(%53) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_x6", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg52: i32):
    %52 = "llvm.inline_asm"(%arg52) <{asm_dialect = 0 : i64, asm_string = "addi $0, $1, 0", constraints = "=r,{x6}", tail_call_kind = #llvm.tailcallkind<tail>}> : (i32) -> i32
    "llvm.return"(%52) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_t1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg51: i32):
    %51 = "llvm.inline_asm"(%arg51) <{asm_dialect = 0 : i64, asm_string = "addi $0, $1, 0", constraints = "=r,{t1}", tail_call_kind = #llvm.tailcallkind<tail>}> : (i32) -> i32
    "llvm.return"(%51) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_x7", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg50: i32):
    %50 = "llvm.inline_asm"(%arg50) <{asm_dialect = 0 : i64, asm_string = "addi $0, $1, 0", constraints = "=r,{x7}", tail_call_kind = #llvm.tailcallkind<tail>}> : (i32) -> i32
    "llvm.return"(%50) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_t2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg49: i32):
    %49 = "llvm.inline_asm"(%arg49) <{asm_dialect = 0 : i64, asm_string = "addi $0, $1, 0", constraints = "=r,{t2}", tail_call_kind = #llvm.tailcallkind<tail>}> : (i32) -> i32
    "llvm.return"(%49) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_x8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg48: i32):
    %48 = "llvm.inline_asm"(%arg48) <{asm_dialect = 0 : i64, asm_string = "addi $0, $1, 0", constraints = "=r,{x8}", tail_call_kind = #llvm.tailcallkind<tail>}> : (i32) -> i32
    "llvm.return"(%48) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_s0", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg47: i32):
    %47 = "llvm.inline_asm"(%arg47) <{asm_dialect = 0 : i64, asm_string = "addi $0, $1, 0", constraints = "=r,{s0}", tail_call_kind = #llvm.tailcallkind<tail>}> : (i32) -> i32
    "llvm.return"(%47) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_fp", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg46: i32):
    %46 = "llvm.inline_asm"(%arg46) <{asm_dialect = 0 : i64, asm_string = "addi $0, $1, 0", constraints = "=r,{fp}", tail_call_kind = #llvm.tailcallkind<tail>}> : (i32) -> i32
    "llvm.return"(%46) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_x9", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg45: i32):
    %45 = "llvm.inline_asm"(%arg45) <{asm_dialect = 0 : i64, asm_string = "addi $0, $1, 0", constraints = "=r,{x9}", tail_call_kind = #llvm.tailcallkind<tail>}> : (i32) -> i32
    "llvm.return"(%45) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_s1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg44: i32):
    %44 = "llvm.inline_asm"(%arg44) <{asm_dialect = 0 : i64, asm_string = "addi $0, $1, 0", constraints = "=r,{s1}", tail_call_kind = #llvm.tailcallkind<tail>}> : (i32) -> i32
    "llvm.return"(%44) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_x10", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg43: i32):
    %43 = "llvm.inline_asm"(%arg43) <{asm_dialect = 0 : i64, asm_string = "addi $0, $1, 0", constraints = "=r,{x10}", tail_call_kind = #llvm.tailcallkind<tail>}> : (i32) -> i32
    "llvm.return"(%43) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_a0", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg42: i32):
    %42 = "llvm.inline_asm"(%arg42) <{asm_dialect = 0 : i64, asm_string = "addi $0, $1, 0", constraints = "=r,{a0}", tail_call_kind = #llvm.tailcallkind<tail>}> : (i32) -> i32
    "llvm.return"(%42) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_x11", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg41: i32):
    %41 = "llvm.inline_asm"(%arg41) <{asm_dialect = 0 : i64, asm_string = "addi $0, $1, 0", constraints = "=r,{x11}", tail_call_kind = #llvm.tailcallkind<tail>}> : (i32) -> i32
    "llvm.return"(%41) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_a1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg40: i32):
    %40 = "llvm.inline_asm"(%arg40) <{asm_dialect = 0 : i64, asm_string = "addi $0, $1, 0", constraints = "=r,{a1}", tail_call_kind = #llvm.tailcallkind<tail>}> : (i32) -> i32
    "llvm.return"(%40) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_x12", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg39: i32):
    %39 = "llvm.inline_asm"(%arg39) <{asm_dialect = 0 : i64, asm_string = "addi $0, $1, 0", constraints = "=r,{x12}", tail_call_kind = #llvm.tailcallkind<tail>}> : (i32) -> i32
    "llvm.return"(%39) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_a2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg38: i32):
    %38 = "llvm.inline_asm"(%arg38) <{asm_dialect = 0 : i64, asm_string = "addi $0, $1, 0", constraints = "=r,{a2}", tail_call_kind = #llvm.tailcallkind<tail>}> : (i32) -> i32
    "llvm.return"(%38) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_x13", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg37: i32):
    %37 = "llvm.inline_asm"(%arg37) <{asm_dialect = 0 : i64, asm_string = "addi $0, $1, 0", constraints = "=r,{x13}", tail_call_kind = #llvm.tailcallkind<tail>}> : (i32) -> i32
    "llvm.return"(%37) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_a3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg36: i32):
    %36 = "llvm.inline_asm"(%arg36) <{asm_dialect = 0 : i64, asm_string = "addi $0, $1, 0", constraints = "=r,{a3}", tail_call_kind = #llvm.tailcallkind<tail>}> : (i32) -> i32
    "llvm.return"(%36) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_x14", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg35: i32):
    %35 = "llvm.inline_asm"(%arg35) <{asm_dialect = 0 : i64, asm_string = "addi $0, $1, 0", constraints = "=r,{x14}", tail_call_kind = #llvm.tailcallkind<tail>}> : (i32) -> i32
    "llvm.return"(%35) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_a4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg34: i32):
    %34 = "llvm.inline_asm"(%arg34) <{asm_dialect = 0 : i64, asm_string = "addi $0, $1, 0", constraints = "=r,{a4}", tail_call_kind = #llvm.tailcallkind<tail>}> : (i32) -> i32
    "llvm.return"(%34) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_x15", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg33: i32):
    %33 = "llvm.inline_asm"(%arg33) <{asm_dialect = 0 : i64, asm_string = "addi $0, $1, 0", constraints = "=r,{x15}", tail_call_kind = #llvm.tailcallkind<tail>}> : (i32) -> i32
    "llvm.return"(%33) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_a5", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg32: i32):
    %32 = "llvm.inline_asm"(%arg32) <{asm_dialect = 0 : i64, asm_string = "addi $0, $1, 0", constraints = "=r,{a5}", tail_call_kind = #llvm.tailcallkind<tail>}> : (i32) -> i32
    "llvm.return"(%32) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_x16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg31: i32):
    %31 = "llvm.inline_asm"(%arg31) <{asm_dialect = 0 : i64, asm_string = "addi $0, $1, 0", constraints = "=r,{x16}", tail_call_kind = #llvm.tailcallkind<tail>}> : (i32) -> i32
    "llvm.return"(%31) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_a6", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg30: i32):
    %30 = "llvm.inline_asm"(%arg30) <{asm_dialect = 0 : i64, asm_string = "addi $0, $1, 0", constraints = "=r,{a6}", tail_call_kind = #llvm.tailcallkind<tail>}> : (i32) -> i32
    "llvm.return"(%30) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_x17", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg29: i32):
    %29 = "llvm.inline_asm"(%arg29) <{asm_dialect = 0 : i64, asm_string = "addi $0, $1, 0", constraints = "=r,{x17}", tail_call_kind = #llvm.tailcallkind<tail>}> : (i32) -> i32
    "llvm.return"(%29) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_a7", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg28: i32):
    %28 = "llvm.inline_asm"(%arg28) <{asm_dialect = 0 : i64, asm_string = "addi $0, $1, 0", constraints = "=r,{a7}", tail_call_kind = #llvm.tailcallkind<tail>}> : (i32) -> i32
    "llvm.return"(%28) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_x18", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg27: i32):
    %27 = "llvm.inline_asm"(%arg27) <{asm_dialect = 0 : i64, asm_string = "addi $0, $1, 0", constraints = "=r,{x18}", tail_call_kind = #llvm.tailcallkind<tail>}> : (i32) -> i32
    "llvm.return"(%27) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_s2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg26: i32):
    %26 = "llvm.inline_asm"(%arg26) <{asm_dialect = 0 : i64, asm_string = "addi $0, $1, 0", constraints = "=r,{s2}", tail_call_kind = #llvm.tailcallkind<tail>}> : (i32) -> i32
    "llvm.return"(%26) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_x19", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg25: i32):
    %25 = "llvm.inline_asm"(%arg25) <{asm_dialect = 0 : i64, asm_string = "addi $0, $1, 0", constraints = "=r,{x19}", tail_call_kind = #llvm.tailcallkind<tail>}> : (i32) -> i32
    "llvm.return"(%25) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_s3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg24: i32):
    %24 = "llvm.inline_asm"(%arg24) <{asm_dialect = 0 : i64, asm_string = "addi $0, $1, 0", constraints = "=r,{s3}", tail_call_kind = #llvm.tailcallkind<tail>}> : (i32) -> i32
    "llvm.return"(%24) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_x20", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg23: i32):
    %23 = "llvm.inline_asm"(%arg23) <{asm_dialect = 0 : i64, asm_string = "addi $0, $1, 0", constraints = "=r,{x20}", tail_call_kind = #llvm.tailcallkind<tail>}> : (i32) -> i32
    "llvm.return"(%23) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_s4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg22: i32):
    %22 = "llvm.inline_asm"(%arg22) <{asm_dialect = 0 : i64, asm_string = "addi $0, $1, 0", constraints = "=r,{s4}", tail_call_kind = #llvm.tailcallkind<tail>}> : (i32) -> i32
    "llvm.return"(%22) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_x21", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg21: i32):
    %21 = "llvm.inline_asm"(%arg21) <{asm_dialect = 0 : i64, asm_string = "addi $0, $1, 0", constraints = "=r,{x21}", tail_call_kind = #llvm.tailcallkind<tail>}> : (i32) -> i32
    "llvm.return"(%21) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_s5", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg20: i32):
    %20 = "llvm.inline_asm"(%arg20) <{asm_dialect = 0 : i64, asm_string = "addi $0, $1, 0", constraints = "=r,{s5}", tail_call_kind = #llvm.tailcallkind<tail>}> : (i32) -> i32
    "llvm.return"(%20) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_x22", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg19: i32):
    %19 = "llvm.inline_asm"(%arg19) <{asm_dialect = 0 : i64, asm_string = "addi $0, $1, 0", constraints = "=r,{x22}", tail_call_kind = #llvm.tailcallkind<tail>}> : (i32) -> i32
    "llvm.return"(%19) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_s6", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg18: i32):
    %18 = "llvm.inline_asm"(%arg18) <{asm_dialect = 0 : i64, asm_string = "addi $0, $1, 0", constraints = "=r,{s6}", tail_call_kind = #llvm.tailcallkind<tail>}> : (i32) -> i32
    "llvm.return"(%18) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_x23", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg17: i32):
    %17 = "llvm.inline_asm"(%arg17) <{asm_dialect = 0 : i64, asm_string = "addi $0, $1, 0", constraints = "=r,{x23}", tail_call_kind = #llvm.tailcallkind<tail>}> : (i32) -> i32
    "llvm.return"(%17) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_s7", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg16: i32):
    %16 = "llvm.inline_asm"(%arg16) <{asm_dialect = 0 : i64, asm_string = "addi $0, $1, 0", constraints = "=r,{s7}", tail_call_kind = #llvm.tailcallkind<tail>}> : (i32) -> i32
    "llvm.return"(%16) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_x24", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg15: i32):
    %15 = "llvm.inline_asm"(%arg15) <{asm_dialect = 0 : i64, asm_string = "addi $0, $1, 0", constraints = "=r,{x24}", tail_call_kind = #llvm.tailcallkind<tail>}> : (i32) -> i32
    "llvm.return"(%15) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_s8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: i32):
    %14 = "llvm.inline_asm"(%arg14) <{asm_dialect = 0 : i64, asm_string = "addi $0, $1, 0", constraints = "=r,{s8}", tail_call_kind = #llvm.tailcallkind<tail>}> : (i32) -> i32
    "llvm.return"(%14) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_x25", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg13: i32):
    %13 = "llvm.inline_asm"(%arg13) <{asm_dialect = 0 : i64, asm_string = "addi $0, $1, 0", constraints = "=r,{x25}", tail_call_kind = #llvm.tailcallkind<tail>}> : (i32) -> i32
    "llvm.return"(%13) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_s9", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: i32):
    %12 = "llvm.inline_asm"(%arg12) <{asm_dialect = 0 : i64, asm_string = "addi $0, $1, 0", constraints = "=r,{s9}", tail_call_kind = #llvm.tailcallkind<tail>}> : (i32) -> i32
    "llvm.return"(%12) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_x26", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg11: i32):
    %11 = "llvm.inline_asm"(%arg11) <{asm_dialect = 0 : i64, asm_string = "addi $0, $1, 0", constraints = "=r,{x26}", tail_call_kind = #llvm.tailcallkind<tail>}> : (i32) -> i32
    "llvm.return"(%11) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_s10", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: i32):
    %10 = "llvm.inline_asm"(%arg10) <{asm_dialect = 0 : i64, asm_string = "addi $0, $1, 0", constraints = "=r,{s10}", tail_call_kind = #llvm.tailcallkind<tail>}> : (i32) -> i32
    "llvm.return"(%10) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_x27", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: i32):
    %9 = "llvm.inline_asm"(%arg9) <{asm_dialect = 0 : i64, asm_string = "addi $0, $1, 0", constraints = "=r,{x27}", tail_call_kind = #llvm.tailcallkind<tail>}> : (i32) -> i32
    "llvm.return"(%9) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_s11", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: i32):
    %8 = "llvm.inline_asm"(%arg8) <{asm_dialect = 0 : i64, asm_string = "addi $0, $1, 0", constraints = "=r,{s11}", tail_call_kind = #llvm.tailcallkind<tail>}> : (i32) -> i32
    "llvm.return"(%8) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_x28", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg7: i32):
    %7 = "llvm.inline_asm"(%arg7) <{asm_dialect = 0 : i64, asm_string = "addi $0, $1, 0", constraints = "=r,{x28}", tail_call_kind = #llvm.tailcallkind<tail>}> : (i32) -> i32
    "llvm.return"(%7) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_t3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: i32):
    %6 = "llvm.inline_asm"(%arg6) <{asm_dialect = 0 : i64, asm_string = "addi $0, $1, 0", constraints = "=r,{t3}", tail_call_kind = #llvm.tailcallkind<tail>}> : (i32) -> i32
    "llvm.return"(%6) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_x29", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: i32):
    %5 = "llvm.inline_asm"(%arg5) <{asm_dialect = 0 : i64, asm_string = "addi $0, $1, 0", constraints = "=r,{x29}", tail_call_kind = #llvm.tailcallkind<tail>}> : (i32) -> i32
    "llvm.return"(%5) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_t4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i32):
    %4 = "llvm.inline_asm"(%arg4) <{asm_dialect = 0 : i64, asm_string = "addi $0, $1, 0", constraints = "=r,{t4}", tail_call_kind = #llvm.tailcallkind<tail>}> : (i32) -> i32
    "llvm.return"(%4) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_x30", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: i32):
    %3 = "llvm.inline_asm"(%arg3) <{asm_dialect = 0 : i64, asm_string = "addi $0, $1, 0", constraints = "=r,{x30}", tail_call_kind = #llvm.tailcallkind<tail>}> : (i32) -> i32
    "llvm.return"(%3) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_t5", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i32):
    %2 = "llvm.inline_asm"(%arg2) <{asm_dialect = 0 : i64, asm_string = "addi $0, $1, 0", constraints = "=r,{t5}", tail_call_kind = #llvm.tailcallkind<tail>}> : (i32) -> i32
    "llvm.return"(%2) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_x31", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: i32):
    %1 = "llvm.inline_asm"(%arg1) <{asm_dialect = 0 : i64, asm_string = "addi $0, $1, 0", constraints = "=r,{x31}", tail_call_kind = #llvm.tailcallkind<tail>}> : (i32) -> i32
    "llvm.return"(%1) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "explicit_register_t6", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i32):
    %0 = "llvm.inline_asm"(%arg0) <{asm_dialect = 0 : i64, asm_string = "addi $0, $1, 0", constraints = "=r,{t6}", tail_call_kind = #llvm.tailcallkind<tail>}> : (i32) -> i32
    "llvm.return"(%0) : (i32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

