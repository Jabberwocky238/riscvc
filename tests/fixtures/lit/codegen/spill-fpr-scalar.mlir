"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "spill_half", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: !llvm.ptr):
    %4 = "llvm.load"(%arg2) <{alignment = 2 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> f16
    %5 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "", constraints = "~{f0_d},~{f1_d},~{f2_d},~{f3_d},~{f4_d},~{f5_d},~{f6_d},~{f7_d},~{f8_d},~{f9_d},~{f10_d},~{f11_d},~{f12_d},~{f13_d},~{f14_d},~{f15_d},~{f16_d},~{f17_d},~{f18_d},~{f19_d},~{f20_d},~{f21_d},~{f22_d},~{f23_d},~{f24_d},~{f25_d},~{f26_d},~{f27_d},~{f28_d},~{f29_d},~{f30_d},~{f31_d}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> !llvm.void
    "llvm.store"(%4, %arg2) <{alignment = 2 : i64, ordering = 0 : i64, volatile_}> : (f16, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "spill_float", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: !llvm.ptr):
    %2 = "llvm.load"(%arg1) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> f32
    %3 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "", constraints = "~{f0_d},~{f1_d},~{f2_d},~{f3_d},~{f4_d},~{f5_d},~{f6_d},~{f7_d},~{f8_d},~{f9_d},~{f10_d},~{f11_d},~{f12_d},~{f13_d},~{f14_d},~{f15_d},~{f16_d},~{f17_d},~{f18_d},~{f19_d},~{f20_d},~{f21_d},~{f22_d},~{f23_d},~{f24_d},~{f25_d},~{f26_d},~{f27_d},~{f28_d},~{f29_d},~{f30_d},~{f31_d}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> !llvm.void
    "llvm.store"(%2, %arg1) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (f32, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "spill_double", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: !llvm.ptr):
    %0 = "llvm.load"(%arg0) <{alignment = 8 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> f64
    %1 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "", constraints = "~{f0_d},~{f1_d},~{f2_d},~{f3_d},~{f4_d},~{f5_d},~{f6_d},~{f7_d},~{f8_d},~{f9_d},~{f10_d},~{f11_d},~{f12_d},~{f13_d},~{f14_d},~{f15_d},~{f16_d},~{f17_d},~{f18_d},~{f19_d},~{f20_d},~{f21_d},~{f22_d},~{f23_d},~{f24_d},~{f25_d},~{f26_d},~{f27_d},~{f28_d},~{f29_d},~{f30_d},~{f31_d}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> !llvm.void
    "llvm.store"(%0, %arg0) <{alignment = 8 : i64, ordering = 0 : i64, volatile_}> : (f64, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

