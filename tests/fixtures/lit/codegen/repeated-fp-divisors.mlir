"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (f64, f64, ptr)>, linkage = #llvm.linkage<external>, sym_name = "single_fdiv", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: f64, %arg9: f64, %arg10: !llvm.ptr):
    %8 = "llvm.fdiv"(%arg9, %arg8) <{fastmathFlags = #llvm.fastmath<arcp>}> : (f64, f64) -> f64
    "llvm.store"(%8, %arg10) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (f64, f64, f64, ptr)>, linkage = #llvm.linkage<external>, sym_name = "two_fdivs", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: f64, %arg5: f64, %arg6: f64, %arg7: !llvm.ptr):
    %4 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %5 = "llvm.fdiv"(%arg5, %arg4) <{fastmathFlags = #llvm.fastmath<arcp>}> : (f64, f64) -> f64
    %6 = "llvm.fdiv"(%arg6, %arg4) <{fastmathFlags = #llvm.fastmath<arcp>}> : (f64, f64) -> f64
    "llvm.store"(%5, %arg7) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    %7 = "llvm.getelementptr"(%arg7, %4) <{elem_type = f64, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.store"(%6, %7) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (f64, f64, f64, ptr)>, linkage = #llvm.linkage<external>, sym_name = "no_arcp", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: f64, %arg1: f64, %arg2: f64, %arg3: !llvm.ptr):
    %0 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %1 = "llvm.fdiv"(%arg1, %arg0) <{fastmathFlags = #llvm.fastmath<arcp>}> : (f64, f64) -> f64
    %2 = "llvm.fdiv"(%arg2, %arg0) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.store"(%1, %arg3) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    %3 = "llvm.getelementptr"(%arg3, %0) <{elem_type = f64, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.store"(%2, %3) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

