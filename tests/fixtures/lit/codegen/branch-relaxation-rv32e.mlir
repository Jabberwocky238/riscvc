"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (i1)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "relax_bcc", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: i1):
    "llvm.cond_br"(%arg1)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %89 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = ".space 4096", constraints = "", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> !llvm.void
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i1)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "relax_jal", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i1):
    %85 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    "llvm.cond_br"(%arg0)[^bb2, ^bb1] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %86 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "", constraints = "", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> !llvm.void
    "llvm.br"()[^bb4] : () -> ()
  ^bb2:  // pred: ^bb0
    %87 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "", constraints = "", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> !llvm.void
    "llvm.br"()[^bb3] : () -> ()
  ^bb3:  // pred: ^bb2
    %88 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = ".space 1048576", constraints = "", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> !llvm.void
    "llvm.br"()[^bb4] : () -> ()
  ^bb4:  // 2 preds: ^bb1, ^bb3
    "llvm.return"(%85) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, sym_name = "relax_jal_spill_32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %59 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi ra, x0, 1", constraints = "={ra}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %60 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi t0, x0, 5", constraints = "={t0}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %61 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi t1, x0, 6", constraints = "={t1}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %62 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi t2, x0, 7", constraints = "={t2}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %63 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi s0, x0, 8", constraints = "={s0}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %64 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi s1, x0, 9", constraints = "={s1}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %65 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi a0, x0, 10", constraints = "={a0}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %66 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi a1, x0, 11", constraints = "={a1}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %67 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi a2, x0, 12", constraints = "={a2}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %68 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi a3, x0, 13", constraints = "={a3}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %69 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi a4, x0, 14", constraints = "={a4}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %70 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi a5, x0, 15", constraints = "={a5}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %71 = "llvm.icmp"(%69, %70) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%71)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %72 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = ".space 1048576", constraints = "", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> !llvm.void
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    %73 = "llvm.inline_asm"(%59) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{ra}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %74 = "llvm.inline_asm"(%60) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{t0}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %75 = "llvm.inline_asm"(%61) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{t1}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %76 = "llvm.inline_asm"(%62) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{t2}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %77 = "llvm.inline_asm"(%63) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{s0}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %78 = "llvm.inline_asm"(%64) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{s1}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %79 = "llvm.inline_asm"(%65) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{a0}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %80 = "llvm.inline_asm"(%66) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{a1}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %81 = "llvm.inline_asm"(%67) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{a2}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %82 = "llvm.inline_asm"(%68) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{a3}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %83 = "llvm.inline_asm"(%69) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{a4}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %84 = "llvm.inline_asm"(%70) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{a5}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, sym_name = "relax_jal_spill_32_adjust_spill_slot", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %31 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %32 = "llvm.alloca"(%31) <{alignment = 4096 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %33 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi ra, x0, 1", constraints = "={ra}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %34 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi t0, x0, 5", constraints = "={t0}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %35 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi t1, x0, 6", constraints = "={t1}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %36 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi t2, x0, 7", constraints = "={t2}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %37 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi s0, x0, 8", constraints = "={s0}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %38 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi s1, x0, 9", constraints = "={s1}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %39 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi a0, x0, 10", constraints = "={a0}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %40 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi a1, x0, 11", constraints = "={a1}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %41 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi a2, x0, 12", constraints = "={a2}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %42 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi a3, x0, 13", constraints = "={a3}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %43 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi a4, x0, 14", constraints = "={a4}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %44 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi a5, x0, 15", constraints = "={a5}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %45 = "llvm.icmp"(%43, %44) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%45)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %46 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = ".space 1048576", constraints = "", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> !llvm.void
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    %47 = "llvm.inline_asm"(%33) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{ra}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %48 = "llvm.inline_asm"(%34) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{t0}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %49 = "llvm.inline_asm"(%35) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{t1}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %50 = "llvm.inline_asm"(%36) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{t2}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %51 = "llvm.inline_asm"(%37) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{s0}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %52 = "llvm.inline_asm"(%38) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{s1}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %53 = "llvm.inline_asm"(%39) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{a0}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %54 = "llvm.inline_asm"(%40) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{a1}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %55 = "llvm.inline_asm"(%41) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{a2}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %56 = "llvm.inline_asm"(%42) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{a3}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %57 = "llvm.inline_asm"(%43) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{a4}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %58 = "llvm.inline_asm"(%44) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{a5}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, sym_name = "relax_jal_spill_32_restore_block_correspondence", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %0 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi ra, x0, 1", constraints = "={ra}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %1 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi t0, x0, 5", constraints = "={t0}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %2 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi t1, x0, 6", constraints = "={t1}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %3 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi t2, x0, 7", constraints = "={t2}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %4 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi s0, x0, 8", constraints = "={s0}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %5 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi s1, x0, 9", constraints = "={s1}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %6 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi a0, x0, 10", constraints = "={a0}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %7 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi a1, x0, 11", constraints = "={a1}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %8 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi a2, x0, 12", constraints = "={a2}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %9 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi a3, x0, 13", constraints = "={a3}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %10 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi a4, x0, 14", constraints = "={a4}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %11 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi a5, x0, 15", constraints = "={a5}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    %12 = "llvm.icmp"(%10, %11) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%12)[^bb5, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb2:  // pred: ^bb1
    %13 = "llvm.icmp"(%8, %9) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%13)[^bb6, ^bb3] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb3:  // pred: ^bb2
    %14 = "llvm.icmp"(%2, %3) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%14)[^bb7, ^bb4] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb4:  // pred: ^bb3
    %15 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = ".space 1048576", constraints = "", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> !llvm.void
    "llvm.br"()[^bb5] : () -> ()
  ^bb5:  // 2 preds: ^bb1, ^bb4
    %16 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "# dest 1", constraints = "", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> !llvm.void
    "llvm.br"()[^bb6] : () -> ()
  ^bb6:  // 2 preds: ^bb2, ^bb5
    %17 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "# dest 2", constraints = "", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> !llvm.void
    "llvm.br"()[^bb7] : () -> ()
  ^bb7:  // 2 preds: ^bb3, ^bb6
    %18 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "# dest 3", constraints = "", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> !llvm.void
    "llvm.br"()[^bb8] : () -> ()
  ^bb8:  // pred: ^bb7
    %19 = "llvm.inline_asm"(%0) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{ra}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %20 = "llvm.inline_asm"(%1) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{t0}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %21 = "llvm.inline_asm"(%2) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{t1}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %22 = "llvm.inline_asm"(%3) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{t2}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %23 = "llvm.inline_asm"(%4) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{s0}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %24 = "llvm.inline_asm"(%5) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{s1}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %25 = "llvm.inline_asm"(%6) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{a0}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %26 = "llvm.inline_asm"(%7) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{a1}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %27 = "llvm.inline_asm"(%8) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{a2}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %28 = "llvm.inline_asm"(%9) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{a3}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %29 = "llvm.inline_asm"(%10) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{a4}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %30 = "llvm.inline_asm"(%11) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{a5}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    "llvm.return"() : () -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

