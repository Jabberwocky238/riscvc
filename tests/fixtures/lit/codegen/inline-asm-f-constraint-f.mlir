"builtin.module"() ({
  "llvm.mlir.global"() <{addr_space = 0 : i32, global_type = f32, linkage = #llvm.linkage<external>, sym_name = "gf", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "constraint_f_float", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: f32):
    %7 = "llvm.mlir.addressof"() <{global_name = @gf}> : () -> !llvm.ptr
    %8 = "llvm.load"(%7) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f32
    %9 = "llvm.inline_asm"(%arg3, %8) <{asm_dialect = 0 : i64, asm_string = "fadd.s $0, $1, $2", constraints = "=f,f,f", tail_call_kind = #llvm.tailcallkind<tail>}> : (f32, f32) -> f32
    "llvm.return"(%9) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "constraint_cf_float", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: f32):
    %4 = "llvm.mlir.addressof"() <{global_name = @gf}> : () -> !llvm.ptr
    %5 = "llvm.load"(%4) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f32
    %6 = "llvm.inline_asm"(%arg2, %5) <{asm_dialect = 0 : i64, asm_string = "fadd.s $0, $1, $2", constraints = "=^cf,cf,cf", tail_call_kind = #llvm.tailcallkind<tail>}> : (f32, f32) -> f32
    "llvm.return"(%6) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "constraint_f_float_abi_name", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: f32):
    %1 = "llvm.mlir.addressof"() <{global_name = @gf}> : () -> !llvm.ptr
    %2 = "llvm.load"(%1) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f32
    %3 = "llvm.inline_asm"(%arg1, %2) <{asm_dialect = 0 : i64, asm_string = "fadd.s $0, $1, $2", constraints = "={ft0},{fa0},{fs0}", tail_call_kind = #llvm.tailcallkind<tail>}> : (f32, f32) -> f32
    "llvm.return"(%3) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32)>, linkage = #llvm.linkage<external>, sym_name = "constraint_gpr", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: f32):
    %0 = "llvm.inline_asm"(%arg0) <{asm_dialect = 0 : i64, asm_string = "mv $0, $1", constraints = "={x10},{x10}", has_side_effects, is_align_stack, tail_call_kind = #llvm.tailcallkind<tail>}> : (f32) -> f32
    "llvm.return"(%0) : (f32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

