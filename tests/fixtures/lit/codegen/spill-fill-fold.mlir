"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "spill_i32_to_float", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg7: i32):
    %14 = "llvm.bitcast"(%arg7) : (i32) -> f32
    %15 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "", constraints = "~{x0},~{x1},~{x2},~{x3},~{x4},~{x5},~{x6},~{x7},~{x8},~{x9},~{x10},~{x11},~{x12},~{x13},~{x14},~{x15},~{x16},~{x17},~{x18},~{x19},~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{x29},~{x30},~{x31},~{f0_d},~{f1_d},~{f2_d},~{f3_d},~{f4_d},~{f5_d},~{f6_d},~{f7_d},~{f8_d},~{f9_d},~{f10_d},~{f11_d},~{f12_d},~{f13_d},~{f14_d},~{f15_d},~{f16_d},~{f17_d},~{f18_d},~{f19_d},~{f20_d},~{f21_d},~{f22_d},~{f23_d},~{f24_d},~{f25_d},~{f26_d},~{f27_d},~{f28_d},~{f29_d},~{f30_d},~{f31_d}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> !llvm.void
    "llvm.return"(%14) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "spill_float_to_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: f32):
    %12 = "llvm.bitcast"(%arg6) : (f32) -> i32
    %13 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "", constraints = "~{x0},~{x1},~{x2},~{x3},~{x4},~{x5},~{x6},~{x7},~{x8},~{x9},~{x10},~{x11},~{x12},~{x13},~{x14},~{x15},~{x16},~{x17},~{x18},~{x19},~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{x29},~{x30},~{x31},~{f0_d},~{f1_d},~{f2_d},~{f3_d},~{f4_d},~{f5_d},~{f6_d},~{f7_d},~{f8_d},~{f9_d},~{f10_d},~{f11_d},~{f12_d},~{f13_d},~{f14_d},~{f15_d},~{f16_d},~{f17_d},~{f18_d},~{f19_d},~{f20_d},~{f21_d},~{f22_d},~{f23_d},~{f24_d},~{f25_d},~{f26_d},~{f27_d},~{f28_d},~{f29_d},~{f30_d},~{f31_d}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> !llvm.void
    "llvm.return"(%12) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "spill_i64_to_double", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: i64):
    %10 = "llvm.bitcast"(%arg5) : (i64) -> f64
    %11 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "", constraints = "~{x0},~{x1},~{x2},~{x3},~{x4},~{x5},~{x6},~{x7},~{x8},~{x9},~{x10},~{x11},~{x12},~{x13},~{x14},~{x15},~{x16},~{x17},~{x18},~{x19},~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{x29},~{x30},~{x31},~{f0_d},~{f1_d},~{f2_d},~{f3_d},~{f4_d},~{f5_d},~{f6_d},~{f7_d},~{f8_d},~{f9_d},~{f10_d},~{f11_d},~{f12_d},~{f13_d},~{f14_d},~{f15_d},~{f16_d},~{f17_d},~{f18_d},~{f19_d},~{f20_d},~{f21_d},~{f22_d},~{f23_d},~{f24_d},~{f25_d},~{f26_d},~{f27_d},~{f28_d},~{f29_d},~{f30_d},~{f31_d}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> !llvm.void
    "llvm.return"(%10) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "spill_double_to_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: f64):
    %8 = "llvm.bitcast"(%arg4) : (f64) -> i64
    %9 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "", constraints = "~{x0},~{x1},~{x2},~{x3},~{x4},~{x5},~{x6},~{x7},~{x8},~{x9},~{x10},~{x11},~{x12},~{x13},~{x14},~{x15},~{x16},~{x17},~{x18},~{x19},~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{x29},~{x30},~{x31},~{f0_d},~{f1_d},~{f2_d},~{f3_d},~{f4_d},~{f5_d},~{f6_d},~{f7_d},~{f8_d},~{f9_d},~{f10_d},~{f11_d},~{f12_d},~{f13_d},~{f14_d},~{f15_d},~{f16_d},~{f17_d},~{f18_d},~{f19_d},~{f20_d},~{f21_d},~{f22_d},~{f23_d},~{f24_d},~{f25_d},~{f26_d},~{f27_d},~{f28_d},~{f29_d},~{f30_d},~{f31_d}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> !llvm.void
    "llvm.return"(%8) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fill_i32_to_float", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: i32):
    %6 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "", constraints = "~{x0},~{x1},~{x2},~{x3},~{x4},~{x5},~{x6},~{x7},~{x8},~{x9},~{x10},~{x11},~{x12},~{x13},~{x14},~{x15},~{x16},~{x17},~{x18},~{x19},~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{x29},~{x30},~{x31},~{f0_d},~{f1_d},~{f2_d},~{f3_d},~{f4_d},~{f5_d},~{f6_d},~{f7_d},~{f8_d},~{f9_d},~{f10_d},~{f11_d},~{f12_d},~{f13_d},~{f14_d},~{f15_d},~{f16_d},~{f17_d},~{f18_d},~{f19_d},~{f20_d},~{f21_d},~{f22_d},~{f23_d},~{f24_d},~{f25_d},~{f26_d},~{f27_d},~{f28_d},~{f29_d},~{f30_d},~{f31_d}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> !llvm.void
    %7 = "llvm.bitcast"(%arg3) : (i32) -> f32
    "llvm.return"(%7) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fill_float_to_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: f32):
    %4 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "", constraints = "~{x0},~{x1},~{x2},~{x3},~{x4},~{x5},~{x6},~{x7},~{x8},~{x9},~{x10},~{x11},~{x12},~{x13},~{x14},~{x15},~{x16},~{x17},~{x18},~{x19},~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{x29},~{x30},~{x31},~{f0_d},~{f1_d},~{f2_d},~{f3_d},~{f4_d},~{f5_d},~{f6_d},~{f7_d},~{f8_d},~{f9_d},~{f10_d},~{f11_d},~{f12_d},~{f13_d},~{f14_d},~{f15_d},~{f16_d},~{f17_d},~{f18_d},~{f19_d},~{f20_d},~{f21_d},~{f22_d},~{f23_d},~{f24_d},~{f25_d},~{f26_d},~{f27_d},~{f28_d},~{f29_d},~{f30_d},~{f31_d}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> !llvm.void
    %5 = "llvm.bitcast"(%arg2) : (f32) -> i32
    "llvm.return"(%5) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fill_i64_to_double", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: i64):
    %2 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "", constraints = "~{x0},~{x1},~{x2},~{x3},~{x4},~{x5},~{x6},~{x7},~{x8},~{x9},~{x10},~{x11},~{x12},~{x13},~{x14},~{x15},~{x16},~{x17},~{x18},~{x19},~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{x29},~{x30},~{x31},~{f0_d},~{f1_d},~{f2_d},~{f3_d},~{f4_d},~{f5_d},~{f6_d},~{f7_d},~{f8_d},~{f9_d},~{f10_d},~{f11_d},~{f12_d},~{f13_d},~{f14_d},~{f15_d},~{f16_d},~{f17_d},~{f18_d},~{f19_d},~{f20_d},~{f21_d},~{f22_d},~{f23_d},~{f24_d},~{f25_d},~{f26_d},~{f27_d},~{f28_d},~{f29_d},~{f30_d},~{f31_d}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> !llvm.void
    %3 = "llvm.bitcast"(%arg1) : (i64) -> f64
    "llvm.return"(%3) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fill_double_to_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: f64):
    %0 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "", constraints = "~{x0},~{x1},~{x2},~{x3},~{x4},~{x5},~{x6},~{x7},~{x8},~{x9},~{x10},~{x11},~{x12},~{x13},~{x14},~{x15},~{x16},~{x17},~{x18},~{x19},~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{x29},~{x30},~{x31},~{f0_d},~{f1_d},~{f2_d},~{f3_d},~{f4_d},~{f5_d},~{f6_d},~{f7_d},~{f8_d},~{f9_d},~{f10_d},~{f11_d},~{f12_d},~{f13_d},~{f14_d},~{f15_d},~{f16_d},~{f17_d},~{f18_d},~{f19_d},~{f20_d},~{f21_d},~{f22_d},~{f23_d},~{f24_d},~{f25_d},~{f26_d},~{f27_d},~{f28_d},~{f29_d},~{f30_d},~{f31_d}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> !llvm.void
    %1 = "llvm.bitcast"(%arg0) : (f64) -> i64
    "llvm.return"(%1) : (i64) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

