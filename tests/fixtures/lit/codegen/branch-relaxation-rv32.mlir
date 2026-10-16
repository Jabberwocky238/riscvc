"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (i1)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "relax_bcc", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: i1):
    "llvm.cond_br"(%arg1)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %185 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = ".space 4096", constraints = "", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> !llvm.void
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i1)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "relax_jal", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i1):
    %181 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    "llvm.cond_br"(%arg0)[^bb2, ^bb1] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %182 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "", constraints = "", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> !llvm.void
    "llvm.br"()[^bb4] : () -> ()
  ^bb2:  // pred: ^bb0
    %183 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "", constraints = "", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> !llvm.void
    "llvm.br"()[^bb3] : () -> ()
  ^bb3:  // pred: ^bb2
    %184 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = ".space 1048576", constraints = "", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> !llvm.void
    "llvm.br"()[^bb4] : () -> ()
  ^bb4:  // 2 preds: ^bb1, ^bb3
    "llvm.return"(%181) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, sym_name = "relax_jal_spill_32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %123 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi ra, x0, 1", constraints = "={ra}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %124 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi t0, x0, 5", constraints = "={t0}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %125 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi t1, x0, 6", constraints = "={t1}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %126 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi t2, x0, 7", constraints = "={t2}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %127 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi s0, x0, 8", constraints = "={s0}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %128 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi s1, x0, 9", constraints = "={s1}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %129 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi a0, x0, 10", constraints = "={a0}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %130 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi a1, x0, 11", constraints = "={a1}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %131 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi a2, x0, 12", constraints = "={a2}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %132 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi a3, x0, 13", constraints = "={a3}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %133 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi a4, x0, 14", constraints = "={a4}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %134 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi a5, x0, 15", constraints = "={a5}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %135 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi a6, x0, 16", constraints = "={a6}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %136 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi a7, x0, 17", constraints = "={a7}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %137 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi s2, x0, 18", constraints = "={s2}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %138 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi s3, x0, 19", constraints = "={s3}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %139 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi s4, x0, 20", constraints = "={s4}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %140 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi s5, x0, 21", constraints = "={s5}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %141 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi s6, x0, 22", constraints = "={s6}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %142 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi s7, x0, 23", constraints = "={s7}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %143 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi s8, x0, 24", constraints = "={s8}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %144 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi s9, x0, 25", constraints = "={s9}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %145 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi s10, x0, 26", constraints = "={s10}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %146 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi s11, x0, 27", constraints = "={s11}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %147 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi t3, x0, 28", constraints = "={t3}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %148 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi t4, x0, 29", constraints = "={t4}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %149 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi t5, x0, 30", constraints = "={t5}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %150 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi t6, x0, 31", constraints = "={t6}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %151 = "llvm.icmp"(%149, %150) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%151)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %152 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = ".space 1048576", constraints = "", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> !llvm.void
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    %153 = "llvm.inline_asm"(%123) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{ra}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %154 = "llvm.inline_asm"(%124) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{t0}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %155 = "llvm.inline_asm"(%125) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{t1}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %156 = "llvm.inline_asm"(%126) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{t2}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %157 = "llvm.inline_asm"(%127) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{s0}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %158 = "llvm.inline_asm"(%128) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{s1}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %159 = "llvm.inline_asm"(%129) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{a0}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %160 = "llvm.inline_asm"(%130) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{a1}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %161 = "llvm.inline_asm"(%131) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{a2}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %162 = "llvm.inline_asm"(%132) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{a3}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %163 = "llvm.inline_asm"(%133) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{a4}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %164 = "llvm.inline_asm"(%134) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{a5}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %165 = "llvm.inline_asm"(%135) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{a6}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %166 = "llvm.inline_asm"(%136) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{a7}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %167 = "llvm.inline_asm"(%137) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{s2}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %168 = "llvm.inline_asm"(%138) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{s3}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %169 = "llvm.inline_asm"(%139) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{s4}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %170 = "llvm.inline_asm"(%140) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{s5}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %171 = "llvm.inline_asm"(%141) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{s6}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %172 = "llvm.inline_asm"(%142) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{s7}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %173 = "llvm.inline_asm"(%143) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{s8}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %174 = "llvm.inline_asm"(%144) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{s9}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %175 = "llvm.inline_asm"(%145) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{s10}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %176 = "llvm.inline_asm"(%146) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{s11}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %177 = "llvm.inline_asm"(%147) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{t3}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %178 = "llvm.inline_asm"(%148) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{t4}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %179 = "llvm.inline_asm"(%149) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{t5}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %180 = "llvm.inline_asm"(%150) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{t6}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, sym_name = "relax_jal_spill_32_adjust_spill_slot", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %63 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %64 = "llvm.alloca"(%63) <{alignment = 4096 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %65 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi ra, x0, 1", constraints = "={ra}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %66 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi t0, x0, 5", constraints = "={t0}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %67 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi t1, x0, 6", constraints = "={t1}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %68 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi t2, x0, 7", constraints = "={t2}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %69 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi s0, x0, 8", constraints = "={s0}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %70 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi s1, x0, 9", constraints = "={s1}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %71 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi a0, x0, 10", constraints = "={a0}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %72 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi a1, x0, 11", constraints = "={a1}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %73 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi a2, x0, 12", constraints = "={a2}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %74 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi a3, x0, 13", constraints = "={a3}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %75 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi a4, x0, 14", constraints = "={a4}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %76 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi a5, x0, 15", constraints = "={a5}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %77 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi a6, x0, 16", constraints = "={a6}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %78 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi a7, x0, 17", constraints = "={a7}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %79 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi s2, x0, 18", constraints = "={s2}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %80 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi s3, x0, 19", constraints = "={s3}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %81 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi s4, x0, 20", constraints = "={s4}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %82 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi s5, x0, 21", constraints = "={s5}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %83 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi s6, x0, 22", constraints = "={s6}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %84 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi s7, x0, 23", constraints = "={s7}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %85 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi s8, x0, 24", constraints = "={s8}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %86 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi s9, x0, 25", constraints = "={s9}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %87 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi s10, x0, 26", constraints = "={s10}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %88 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi s11, x0, 27", constraints = "={s11}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %89 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi t3, x0, 28", constraints = "={t3}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %90 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi t4, x0, 29", constraints = "={t4}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %91 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi t5, x0, 30", constraints = "={t5}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %92 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi t6, x0, 31", constraints = "={t6}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %93 = "llvm.icmp"(%91, %92) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%93)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %94 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = ".space 1048576", constraints = "", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> !llvm.void
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    %95 = "llvm.inline_asm"(%65) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{ra}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %96 = "llvm.inline_asm"(%66) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{t0}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %97 = "llvm.inline_asm"(%67) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{t1}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %98 = "llvm.inline_asm"(%68) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{t2}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %99 = "llvm.inline_asm"(%69) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{s0}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %100 = "llvm.inline_asm"(%70) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{s1}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %101 = "llvm.inline_asm"(%71) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{a0}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %102 = "llvm.inline_asm"(%72) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{a1}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %103 = "llvm.inline_asm"(%73) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{a2}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %104 = "llvm.inline_asm"(%74) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{a3}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %105 = "llvm.inline_asm"(%75) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{a4}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %106 = "llvm.inline_asm"(%76) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{a5}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %107 = "llvm.inline_asm"(%77) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{a6}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %108 = "llvm.inline_asm"(%78) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{a7}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %109 = "llvm.inline_asm"(%79) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{s2}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %110 = "llvm.inline_asm"(%80) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{s3}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %111 = "llvm.inline_asm"(%81) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{s4}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %112 = "llvm.inline_asm"(%82) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{s5}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %113 = "llvm.inline_asm"(%83) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{s6}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %114 = "llvm.inline_asm"(%84) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{s7}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %115 = "llvm.inline_asm"(%85) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{s8}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %116 = "llvm.inline_asm"(%86) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{s9}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %117 = "llvm.inline_asm"(%87) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{s10}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %118 = "llvm.inline_asm"(%88) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{s11}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %119 = "llvm.inline_asm"(%89) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{t3}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %120 = "llvm.inline_asm"(%90) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{t4}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %121 = "llvm.inline_asm"(%91) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{t5}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %122 = "llvm.inline_asm"(%92) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{t6}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
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
    %12 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi a6, x0, 16", constraints = "={a6}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %13 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi a7, x0, 17", constraints = "={a7}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %14 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi s2, x0, 18", constraints = "={s2}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %15 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi s3, x0, 19", constraints = "={s3}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %16 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi s4, x0, 20", constraints = "={s4}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %17 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi s5, x0, 21", constraints = "={s5}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %18 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi s6, x0, 22", constraints = "={s6}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %19 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi s7, x0, 23", constraints = "={s7}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %20 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi s8, x0, 24", constraints = "={s8}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %21 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi s9, x0, 25", constraints = "={s9}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %22 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi s10, x0, 26", constraints = "={s10}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %23 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi s11, x0, 27", constraints = "={s11}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %24 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi t3, x0, 28", constraints = "={t3}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %25 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi t4, x0, 29", constraints = "={t4}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %26 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi t5, x0, 30", constraints = "={t5}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %27 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "addi t6, x0, 31", constraints = "={t6}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    %28 = "llvm.icmp"(%26, %27) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%28)[^bb5, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb2:  // pred: ^bb1
    %29 = "llvm.icmp"(%24, %25) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%29)[^bb6, ^bb3] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb3:  // pred: ^bb2
    %30 = "llvm.icmp"(%2, %3) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%30)[^bb7, ^bb4] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb4:  // pred: ^bb3
    %31 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = ".space 1048576", constraints = "", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> !llvm.void
    "llvm.br"()[^bb5] : () -> ()
  ^bb5:  // 2 preds: ^bb1, ^bb4
    %32 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "# dest 1", constraints = "", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> !llvm.void
    "llvm.br"()[^bb6] : () -> ()
  ^bb6:  // 2 preds: ^bb2, ^bb5
    %33 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "# dest 2", constraints = "", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> !llvm.void
    "llvm.br"()[^bb7] : () -> ()
  ^bb7:  // 2 preds: ^bb3, ^bb6
    %34 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "# dest 3", constraints = "", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> !llvm.void
    "llvm.br"()[^bb8] : () -> ()
  ^bb8:  // pred: ^bb7
    %35 = "llvm.inline_asm"(%0) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{ra}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %36 = "llvm.inline_asm"(%1) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{t0}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %37 = "llvm.inline_asm"(%2) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{t1}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %38 = "llvm.inline_asm"(%3) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{t2}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %39 = "llvm.inline_asm"(%4) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{s0}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %40 = "llvm.inline_asm"(%5) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{s1}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %41 = "llvm.inline_asm"(%6) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{a0}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %42 = "llvm.inline_asm"(%7) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{a1}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %43 = "llvm.inline_asm"(%8) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{a2}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %44 = "llvm.inline_asm"(%9) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{a3}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %45 = "llvm.inline_asm"(%10) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{a4}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %46 = "llvm.inline_asm"(%11) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{a5}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %47 = "llvm.inline_asm"(%12) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{a6}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %48 = "llvm.inline_asm"(%13) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{a7}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %49 = "llvm.inline_asm"(%14) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{s2}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %50 = "llvm.inline_asm"(%15) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{s3}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %51 = "llvm.inline_asm"(%16) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{s4}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %52 = "llvm.inline_asm"(%17) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{s5}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %53 = "llvm.inline_asm"(%18) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{s6}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %54 = "llvm.inline_asm"(%19) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{s7}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %55 = "llvm.inline_asm"(%20) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{s8}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %56 = "llvm.inline_asm"(%21) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{s9}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %57 = "llvm.inline_asm"(%22) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{s10}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %58 = "llvm.inline_asm"(%23) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{s11}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %59 = "llvm.inline_asm"(%24) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{t3}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %60 = "llvm.inline_asm"(%25) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{t4}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %61 = "llvm.inline_asm"(%26) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{t5}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    %62 = "llvm.inline_asm"(%27) <{asm_dialect = 0 : i64, asm_string = "# reg use $0", constraints = "{t6}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32) -> !llvm.void
    "llvm.return"() : () -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

