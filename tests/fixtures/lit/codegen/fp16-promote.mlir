"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_load_store", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: !llvm.ptr, %arg11: !llvm.ptr):
    %12 = "llvm.load"(%arg10) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f16
    "llvm.store"(%12, %arg11) <{alignment = 2 : i64, ordering = 0 : i64}> : (f16, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_fpextend_float", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: !llvm.ptr):
    %10 = "llvm.load"(%arg9) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f16
    %11 = "llvm.fpext"(%10) : (f16) -> f32
    "llvm.return"(%11) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_fpextend_double", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: !llvm.ptr):
    %8 = "llvm.load"(%arg8) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f16
    %9 = "llvm.fpext"(%8) : (f16) -> f64
    "llvm.return"(%9) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (f32, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_fptrunc_float", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: f32, %arg7: !llvm.ptr):
    %7 = "llvm.fptrunc"(%arg6) : (f32) -> f16
    "llvm.store"(%7, %arg7) <{alignment = 2 : i64, ordering = 0 : i64}> : (f16, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (f64, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_fptrunc_double", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: f64, %arg5: !llvm.ptr):
    %6 = "llvm.fptrunc"(%arg4) : (f64) -> f16
    "llvm.store"(%6, %arg5) <{alignment = 2 : i64, ordering = 0 : i64}> : (f16, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_fadd", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: !llvm.ptr, %arg3: !llvm.ptr):
    %3 = "llvm.load"(%arg2) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f16
    %4 = "llvm.load"(%arg3) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f16
    %5 = "llvm.fadd"(%3, %4) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16) -> f16
    "llvm.store"(%5, %arg2) <{alignment = 2 : i64, ordering = 0 : i64}> : (f16, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_fmul", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: !llvm.ptr, %arg1: !llvm.ptr):
    %0 = "llvm.load"(%arg0) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f16
    %1 = "llvm.load"(%arg1) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f16
    %2 = "llvm.fmul"(%0, %1) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16) -> f16
    "llvm.store"(%2, %arg0) <{alignment = 2 : i64, ordering = 0 : i64}> : (f16, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

