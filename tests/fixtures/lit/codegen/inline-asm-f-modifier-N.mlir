"builtin.module"() ({
  "llvm.mlir.global"() <{addr_space = 0 : i32, global_type = f32, linkage = #llvm.linkage<external>, sym_name = "gf", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "constraint_f_modifier_N_float", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: f32):
    %6 = "llvm.mlir.addressof"() <{global_name = @gf}> : () -> !llvm.ptr
    %7 = "llvm.load"(%6) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f32
    %8 = "llvm.inline_asm"(%arg2, %7) <{asm_dialect = 0 : i64, asm_string = ".insn 0x4, 0x53 | (${0:N} << 7) | (${1:N} << 15) | (${2:N} << 20)", constraints = "=f,f,f", tail_call_kind = #llvm.tailcallkind<tail>}> : (f32, f32) -> f32
    "llvm.return"(%8) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "constraint_cf_modifier_N_float", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: f32):
    %3 = "llvm.mlir.addressof"() <{global_name = @gf}> : () -> !llvm.ptr
    %4 = "llvm.load"(%3) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f32
    %5 = "llvm.inline_asm"(%arg1, %4) <{asm_dialect = 0 : i64, asm_string = ".insn 0x4, 0x53 | (${0:N} << 7) | (${1:N} << 15) | (${2:N} << 20)", constraints = "=^cf,^cf,^cf", tail_call_kind = #llvm.tailcallkind<tail>}> : (f32, f32) -> f32
    "llvm.return"(%5) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "modifier_N_float_abi_name", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: f32):
    %0 = "llvm.mlir.addressof"() <{global_name = @gf}> : () -> !llvm.ptr
    %1 = "llvm.load"(%0) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f32
    %2 = "llvm.inline_asm"(%arg0, %1) <{asm_dialect = 0 : i64, asm_string = ".insn 0x4, 0x53 | (${0:N} << 7) | (${1:N} << 15) | (${2:N} << 20)", constraints = "={ft0},{fa0},{fs0}", tail_call_kind = #llvm.tailcallkind<tail>}> : (f32, f32) -> f32
    "llvm.return"(%2) : (f32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

