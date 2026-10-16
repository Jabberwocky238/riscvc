"builtin.module"() ({
  "llvm.mlir.global"() <{addr_space = 0 : i32, dso_local, global_type = f16, linkage = #llvm.linkage<external>, sym_name = "G", unnamed_addr = 0 : i64, value = 0.000000e+00 : f16, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "flh", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: !llvm.ptr):
    %20 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %21 = "llvm.load"(%arg9) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f16
    %22 = "llvm.getelementptr"(%arg9, %20) <{elem_type = f16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %23 = "llvm.load"(%22) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f16
    %24 = "llvm.fadd"(%21, %23) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16) -> f16
    "llvm.return"(%24) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<void (ptr, f16, f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fsh", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: !llvm.ptr, %arg7: f16, %arg8: f16):
    %17 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %18 = "llvm.fadd"(%arg7, %arg8) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16) -> f16
    "llvm.store"(%18, %arg6) <{alignment = 2 : i64, ordering = 0 : i64}> : (f16, !llvm.ptr) -> ()
    %19 = "llvm.getelementptr"(%arg6, %17) <{elem_type = f16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%18, %19) <{alignment = 2 : i64, ordering = 0 : i64}> : (f16, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (f16, f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "flh_fsh_global", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: f16, %arg5: f16):
    %11 = "llvm.mlir.addressof"() <{global_name = @G}> : () -> !llvm.ptr
    %12 = "llvm.mlir.constant"() <{value = 9 : i32}> : () -> i32
    %13 = "llvm.fadd"(%arg4, %arg5) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16) -> f16
    %14 = "llvm.load"(%11) <{alignment = 2 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> f16
    "llvm.store"(%13, %11) <{alignment = 2 : i64, ordering = 0 : i64}> : (f16, !llvm.ptr) -> ()
    %15 = "llvm.getelementptr"(%11, %12) <{elem_type = f16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %16 = "llvm.load"(%15) <{alignment = 2 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> f16
    "llvm.store"(%13, %15) <{alignment = 2 : i64, ordering = 0 : i64}> : (f16, !llvm.ptr) -> ()
    "llvm.return"(%13) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "flh_fsh_constant", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: f16):
    %7 = "llvm.mlir.constant"() <{value = -559038737 : i32}> : () -> i32
    %8 = "llvm.inttoptr"(%7) : (i32) -> !llvm.ptr
    %9 = "llvm.load"(%8) <{alignment = 2 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> f16
    %10 = "llvm.fadd"(%arg3, %9) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16) -> f16
    "llvm.store"(%10, %8) <{alignment = 2 : i64, ordering = 0 : i64}> : (f16, !llvm.ptr) -> ()
    "llvm.return"(%10) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, sym_name = "notdead", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "flh_stack", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: f16):
    %3 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %4 = "llvm.alloca"(%3) <{alignment = 4 : i64, elem_type = f16}> : (i32) -> !llvm.ptr
    "llvm.call"(%4) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @notdead, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> ()
    %5 = "llvm.load"(%4) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f16
    %6 = "llvm.fadd"(%5, %arg2) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16) -> f16
    "llvm.return"(%6) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<void (f16, f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fsh_stack", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: f16, %arg1: f16):
    %0 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "llvm.fadd"(%arg0, %arg1) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16) -> f16
    %2 = "llvm.alloca"(%0) <{alignment = 4 : i64, elem_type = f16}> : (i32) -> !llvm.ptr
    "llvm.store"(%1, %2) <{alignment = 2 : i64, ordering = 0 : i64}> : (f16, !llvm.ptr) -> ()
    "llvm.call"(%2) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @notdead, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

