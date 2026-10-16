"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_sext_w", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: i64, %arg11: i32):
    %20 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %21 = "llvm.mlir.constant"() <{value = false}> : () -> i1
    %22 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %23 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "", constraints = "~{x1},~{x3},~{x4},~{x5},~{x6},~{x7},~{x8},~{x9},~{x10},~{x11},~{x12},~{x13},~{x14},~{x15},~{x16},~{x17},~{x18},~{x19},~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{x29},~{x30},~{x31}", has_side_effects, tail_call_kind = #llvm.tailcallkind<tail>}> : () -> !llvm.void
    %24 = "llvm.icmp"(%arg10, %20) <{predicate = 0 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%24)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %25 = "llvm.icmp"(%arg11, %22) <{predicate = 2 : i64}> : (i32, i32) -> i1
    "llvm.return"(%25) : (i1) -> ()
  ^bb2:  // pred: ^bb0
    "llvm.return"(%21) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_sext_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: i64, %arg9: i8):
    %16 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %17 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "", constraints = "~{x1},~{x3},~{x4},~{x5},~{x6},~{x7},~{x8},~{x9},~{x10},~{x11},~{x12},~{x13},~{x14},~{x15},~{x16},~{x17},~{x18},~{x19},~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{x29},~{x30},~{x31}", has_side_effects, tail_call_kind = #llvm.tailcallkind<tail>}> : () -> !llvm.void
    %18 = "llvm.icmp"(%arg8, %16) <{predicate = 0 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%18)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %19 = "llvm.sext"(%arg9) : (i8) -> i64
    "llvm.return"(%19) : (i64) -> ()
  ^bb2:  // pred: ^bb0
    "llvm.return"(%16) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_sext_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: i64, %arg7: i16):
    %12 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %13 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "", constraints = "~{x1},~{x3},~{x4},~{x5},~{x6},~{x7},~{x8},~{x9},~{x10},~{x11},~{x12},~{x13},~{x14},~{x15},~{x16},~{x17},~{x18},~{x19},~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{x29},~{x30},~{x31}", has_side_effects, tail_call_kind = #llvm.tailcallkind<tail>}> : () -> !llvm.void
    %14 = "llvm.icmp"(%arg6, %12) <{predicate = 0 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%14)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %15 = "llvm.sext"(%arg7) : (i16) -> i64
    "llvm.return"(%15) : (i64) -> ()
  ^bb2:  // pred: ^bb0
    "llvm.return"(%12) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_zext_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i64, %arg5: i8):
    %8 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %9 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "", constraints = "~{x1},~{x3},~{x4},~{x5},~{x6},~{x7},~{x8},~{x9},~{x10},~{x11},~{x12},~{x13},~{x14},~{x15},~{x16},~{x17},~{x18},~{x19},~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{x29},~{x30},~{x31}", has_side_effects, tail_call_kind = #llvm.tailcallkind<tail>}> : () -> !llvm.void
    %10 = "llvm.icmp"(%arg4, %8) <{predicate = 0 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%10)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %11 = "llvm.zext"(%arg5) : (i8) -> i64
    "llvm.return"(%11) : (i64) -> ()
  ^bb2:  // pred: ^bb0
    "llvm.return"(%8) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_zext_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i64, %arg3: i16):
    %4 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %5 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "", constraints = "~{x1},~{x3},~{x4},~{x5},~{x6},~{x7},~{x8},~{x9},~{x10},~{x11},~{x12},~{x13},~{x14},~{x15},~{x16},~{x17},~{x18},~{x19},~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{x29},~{x30},~{x31}", has_side_effects, tail_call_kind = #llvm.tailcallkind<tail>}> : () -> !llvm.void
    %6 = "llvm.icmp"(%arg2, %4) <{predicate = 0 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%6)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %7 = "llvm.zext"(%arg3) : (i16) -> i64
    "llvm.return"(%7) : (i64) -> ()
  ^bb2:  // pred: ^bb0
    "llvm.return"(%4) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_zext_w", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i64, %arg1: i32):
    %0 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %1 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "", constraints = "~{x1},~{x3},~{x4},~{x5},~{x6},~{x7},~{x8},~{x9},~{x10},~{x11},~{x12},~{x13},~{x14},~{x15},~{x16},~{x17},~{x18},~{x19},~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{x29},~{x30},~{x31}", has_side_effects, tail_call_kind = #llvm.tailcallkind<tail>}> : () -> !llvm.void
    %2 = "llvm.icmp"(%arg0, %0) <{predicate = 0 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%2)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %3 = "llvm.zext"(%arg1) : (i32) -> i64
    "llvm.return"(%3) : (i64) -> ()
  ^bb2:  // pred: ^bb0
    "llvm.return"(%0) : (i64) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

