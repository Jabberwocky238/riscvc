"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (bf16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fcvt_s_bf16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: bf16):
    %5 = "llvm.fpext"(%arg3) : (bf16) -> f32
    "llvm.return"(%5) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<bf16 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fcvt_bf16_s", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: f32):
    %4 = "llvm.fptrunc"(%arg2) : (f32) -> bf16
    "llvm.return"(%4) : (bf16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "loadstorebf16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: !llvm.ptr, %arg1: !llvm.ptr):
    %0 = "llvm.load"(%arg0) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> bf16
    %1 = "llvm.fpext"(%0) : (bf16) -> f32
    "llvm.store"(%1, %arg1) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (f32, !llvm.ptr) -> ()
    %2 = "llvm.load"(%arg1) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f32
    %3 = "llvm.fptrunc"(%2) : (f32) -> bf16
    "llvm.store"(%3, %arg0) <{alignment = 2 : i64, ordering = 0 : i64, volatile_}> : (bf16, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

