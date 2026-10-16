"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<bf16 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "float_to_bfloat", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg11: f32):
    %14 = "llvm.fptrunc"(%arg11) : (f32) -> bf16
    "llvm.return"(%14) : (bf16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<bf16 (f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "double_to_bfloat", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: f64):
    %13 = "llvm.fptrunc"(%arg10) : (f64) -> bf16
    "llvm.return"(%13) : (bf16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (bf16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "bfloat_to_float", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: bf16):
    %12 = "llvm.fpext"(%arg9) : (bf16) -> f32
    "llvm.return"(%12) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (bf16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "bfloat_to_double", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: bf16):
    %11 = "llvm.fpext"(%arg8) : (bf16) -> f64
    "llvm.return"(%11) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<bf16 (i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "i16_to_bfloat", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg7: i16):
    %10 = "llvm.bitcast"(%arg7) : (i16) -> bf16
    "llvm.return"(%10) : (bf16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (bf16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "bfloat_to_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: bf16):
    %9 = "llvm.bitcast"(%arg6) : (bf16) -> i16
    "llvm.return"(%9) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<bf16 (bf16, bf16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "bfloat_add", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: bf16, %arg5: bf16):
    %8 = "llvm.fadd"(%arg4, %arg5) <{fastmathFlags = #llvm.fastmath<none>}> : (bf16, bf16) -> bf16
    "llvm.return"(%8) : (bf16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<bf16 (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "bfloat_load", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: !llvm.ptr):
    %3 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %4 = "llvm.load"(%arg3) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> bf16
    %5 = "llvm.getelementptr"(%arg3, %3) <{elem_type = bf16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %6 = "llvm.load"(%5) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> bf16
    %7 = "llvm.fadd"(%4, %6) <{fastmathFlags = #llvm.fastmath<none>}> : (bf16, bf16) -> bf16
    "llvm.return"(%7) : (bf16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, bf16, bf16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "bfloat_store", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: !llvm.ptr, %arg1: bf16, %arg2: bf16):
    %0 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %1 = "llvm.fadd"(%arg1, %arg2) <{fastmathFlags = #llvm.fastmath<none>}> : (bf16, bf16) -> bf16
    "llvm.store"(%1, %arg0) <{alignment = 2 : i64, ordering = 0 : i64}> : (bf16, !llvm.ptr) -> ()
    %2 = "llvm.getelementptr"(%arg0, %0) <{elem_type = bf16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%1, %2) <{alignment = 2 : i64, ordering = 0 : i64}> : (bf16, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

