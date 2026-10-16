"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, sym_name = "standard_cc_func", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<preserve_mostcc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, sym_name = "preserve_mostcc_func", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<preserve_mostcc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "preserve_mostcc1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @standard_cc_func, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<preserve_mostcc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "preserve_mostcc2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    "llvm.call"() <{CConv = #llvm.cconv<preserve_mostcc>, TailCallKind = #llvm.tailcallkind<none>, callee = @preserve_mostcc_func, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "preserve_mostcc3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %6 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "", constraints = "={x6}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %7 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "", constraints = "={x7}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %8 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "", constraints = "={x8}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %9 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "", constraints = "={x9}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %10 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "", constraints = "={x28}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    "llvm.call"() <{CConv = #llvm.cconv<preserve_mostcc>, TailCallKind = #llvm.tailcallkind<none>, callee = @preserve_mostcc_func, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> ()
    %11 = "llvm.inline_asm"(%6, %7, %8, %9, %10) <{asm_dialect = 0 : i64, asm_string = "", constraints = "{x6},{x7},{x8},{x9},{x28}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32, i32, i32, i32, i32) -> !llvm.void
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "preserve_mostcc4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %0 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "", constraints = "={x6}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %1 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "", constraints = "={x7}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %2 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "", constraints = "={x8}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %3 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "", constraints = "={x9}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    %4 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "", constraints = "={x28}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : () -> i32
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @standard_cc_func, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> ()
    %5 = "llvm.inline_asm"(%0, %1, %2, %3, %4) <{asm_dialect = 0 : i64, asm_string = "", constraints = "{x6},{x7},{x8},{x9},{x28}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i32, i32, i32, i32, i32) -> !llvm.void
    "llvm.return"() : () -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

