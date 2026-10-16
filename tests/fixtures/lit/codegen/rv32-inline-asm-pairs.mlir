"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.noundef}], function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_Pr_wide_scalar_simple", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg7: i64):
    %37 = "llvm.inline_asm"(%arg7) <{asm_dialect = 0 : i64, asm_string = "/* $0 <- $1 */", constraints = "=&R,R", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i64) -> i64
    "llvm.return"(%37) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.noundef}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_Pr_wide_scalar_with_ops", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: i32):
    %28 = "llvm.mlir.constant"() <{value = 32 : i64}> : () -> i64
    %29 = "llvm.zext"(%arg6) : (i32) -> i64
    %30 = "llvm.shl"(%29, %28) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %31 = "llvm.or"(%29, %30) : (i64, i64) -> i64
    %32 = "llvm.inline_asm"(%31) <{asm_dialect = 0 : i64, asm_string = "/* $0 <- $1 */", constraints = "=&R,R", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i64) -> i64
    %33 = "llvm.trunc"(%32) <{overflowFlags = 0 : i32}> : (i64) -> i32
    %34 = "llvm.lshr"(%32, %28) : (i64, i64) -> i64
    %35 = "llvm.trunc"(%34) <{overflowFlags = 0 : i32}> : (i64) -> i32
    %36 = "llvm.or"(%33, %35) : (i32, i32) -> i32
    "llvm.return"(%36) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.noundef}], function_type = !llvm.func<i64 (ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_Pr_wide_scalar_inout", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: !llvm.ptr, %arg5: i64):
    %19 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %20 = "llvm.alloca"(%19) <{alignment = 4 : i64, elem_type = !llvm.ptr}> : (i32) -> !llvm.ptr
    %21 = "llvm.alloca"(%19) <{alignment = 8 : i64, elem_type = i64}> : (i32) -> !llvm.ptr
    "llvm.store"(%arg4, %20) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    "llvm.store"(%arg5, %21) <{alignment = 8 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %22 = "llvm.load"(%20) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.ptr
    %23 = "llvm.load"(%21) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    %24 = "llvm.inline_asm"(%22, %23) <{asm_dialect = 0 : i64, asm_string = "/* $0; $1 */", constraints = "=r,=R,0,1", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (!llvm.ptr, i64) -> !llvm.struct<(ptr, i64)>
    %25 = "llvm.extractvalue"(%24) <{position = array<i64: 0>}> : (!llvm.struct<(ptr, i64)>) -> !llvm.ptr
    %26 = "llvm.extractvalue"(%24) <{position = array<i64: 1>}> : (!llvm.struct<(ptr, i64)>) -> i64
    "llvm.store"(%25, %20) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    "llvm.store"(%26, %21) <{alignment = 8 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %27 = "llvm.load"(%21) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    "llvm.return"(%27) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.noundef}], function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_cR_wide_scalar_simple", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: i64):
    %18 = "llvm.inline_asm"(%arg3) <{asm_dialect = 0 : i64, asm_string = "/* $0 <- $1 */", constraints = "=&^cR,^cR", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i64) -> i64
    "llvm.return"(%18) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.noundef}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_cR_wide_scalar_with_ops", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i32):
    %9 = "llvm.mlir.constant"() <{value = 32 : i64}> : () -> i64
    %10 = "llvm.zext"(%arg2) : (i32) -> i64
    %11 = "llvm.shl"(%10, %9) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %12 = "llvm.or"(%10, %11) : (i64, i64) -> i64
    %13 = "llvm.inline_asm"(%12) <{asm_dialect = 0 : i64, asm_string = "/* $0 <- $1 */", constraints = "=&^cR,^cR", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (i64) -> i64
    %14 = "llvm.trunc"(%13) <{overflowFlags = 0 : i32}> : (i64) -> i32
    %15 = "llvm.lshr"(%13, %9) : (i64, i64) -> i64
    %16 = "llvm.trunc"(%15) <{overflowFlags = 0 : i32}> : (i64) -> i32
    %17 = "llvm.or"(%14, %16) : (i32, i32) -> i32
    "llvm.return"(%17) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.noundef}], function_type = !llvm.func<i64 (ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_cR_wide_scalar_inout", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: !llvm.ptr, %arg1: i64):
    %0 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "llvm.alloca"(%0) <{alignment = 4 : i64, elem_type = !llvm.ptr}> : (i32) -> !llvm.ptr
    %2 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = i64}> : (i32) -> !llvm.ptr
    "llvm.store"(%arg0, %1) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    "llvm.store"(%arg1, %2) <{alignment = 8 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %3 = "llvm.load"(%1) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.ptr
    %4 = "llvm.load"(%2) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    %5 = "llvm.inline_asm"(%3, %4) <{asm_dialect = 0 : i64, asm_string = "/* $0; $1 */", constraints = "=r,=^cR,0,1", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (!llvm.ptr, i64) -> !llvm.struct<(ptr, i64)>
    %6 = "llvm.extractvalue"(%5) <{position = array<i64: 0>}> : (!llvm.struct<(ptr, i64)>) -> !llvm.ptr
    %7 = "llvm.extractvalue"(%5) <{position = array<i64: 1>}> : (!llvm.struct<(ptr, i64)>) -> i64
    "llvm.store"(%6, %1) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    "llvm.store"(%7, %2) <{alignment = 8 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %8 = "llvm.load"(%2) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    "llvm.return"(%8) : (i64) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

