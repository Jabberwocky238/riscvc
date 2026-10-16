"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_load_store", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: !llvm.ptr, %arg9: !llvm.ptr):
    %9 = "llvm.load"(%arg8) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> bf16
    "llvm.store"(%9, %arg9) <{alignment = 2 : i64, ordering = 0 : i64}> : (bf16, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_fpextend_float", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg7: !llvm.ptr):
    %7 = "llvm.load"(%arg7) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> bf16
    %8 = "llvm.fpext"(%7) : (bf16) -> f32
    "llvm.return"(%8) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_fpextend_double", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: !llvm.ptr):
    %5 = "llvm.load"(%arg6) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> bf16
    %6 = "llvm.fpext"(%5) : (bf16) -> f64
    "llvm.return"(%6) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (f32, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_fptrunc_float", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: f32, %arg5: !llvm.ptr):
    %4 = "llvm.fptrunc"(%arg4) : (f32) -> bf16
    "llvm.store"(%4, %arg5) <{alignment = 2 : i64, ordering = 0 : i64}> : (bf16, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (f64, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_fptrunc_double", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: f64, %arg3: !llvm.ptr):
    %3 = "llvm.fptrunc"(%arg2) : (f64) -> bf16
    "llvm.store"(%3, %arg3) <{alignment = 2 : i64, ordering = 0 : i64}> : (bf16, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_fadd", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: !llvm.ptr, %arg1: !llvm.ptr):
    %0 = "llvm.load"(%arg0) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> bf16
    %1 = "llvm.load"(%arg1) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> bf16
    %2 = "llvm.fadd"(%0, %1) <{fastmathFlags = #llvm.fastmath<none>}> : (bf16, bf16) -> bf16
    "llvm.store"(%2, %arg0) <{alignment = 2 : i64, ordering = 0 : i64}> : (bf16, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

