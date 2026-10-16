"builtin.module"() ({
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<warning, "Debug Info Version", 3 : i32>]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, sym_name = "omp_atomic_read_implicit_cast", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %0 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %2 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %3 = "llvm.mlir.constant"() <{value = 8 : i64}> : () -> i64
    %4 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %5 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = !llvm.struct<(f32, f32)>}> : (i32) -> !llvm.ptr
    %6 = "llvm.alloca"(%1) <{alignment = 4 : i64, elem_type = f32}> : (i64) -> !llvm.ptr
    %7 = "llvm.alloca"(%1) <{alignment = 8 : i64, elem_type = f64}> : (i64) -> !llvm.ptr
    %8 = "llvm.alloca"(%1) <{alignment = 8 : i64, elem_type = !llvm.array<2 x struct<(f32, f32)>>}> : (i64) -> !llvm.ptr
    %9 = "llvm.alloca"(%1) <{alignment = 4 : i64, elem_type = i32}> : (i64) -> !llvm.ptr
    %10 = "llvm.getelementptr"(%8, %2) <{elem_type = !llvm.struct<(f32, f32)>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"(%3, %10, %5, %4) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__atomic_load, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>}> : (i64, !llvm.ptr, !llvm.ptr, i32) -> ()
    %11 = "llvm.load"(%5) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.struct<(f32, f32)>
    "llvm.store"(%11, %7) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.struct<(f32, f32)>, !llvm.ptr) -> ()
    %12 = "llvm.load"(%6) <{alignment = 4 : i64, ordering = 2 : i64}> : (!llvm.ptr) -> i32
    %13 = "llvm.bitcast"(%12) : (i32) -> f32
    "llvm.store"(%13, %7) <{alignment = 4 : i64, ordering = 0 : i64}> : (f32, !llvm.ptr) -> ()
    %14 = "llvm.load"(%9) <{alignment = 4 : i64, ordering = 2 : i64}> : (!llvm.ptr) -> i32
    "llvm.store"(%14, %7) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %15 = "llvm.load"(%7) <{alignment = 4 : i64, ordering = 2 : i64}> : (!llvm.ptr) -> i64
    %16 = "llvm.bitcast"(%15) : (i64) -> f64
    "llvm.store"(%16, %6) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    %17 = "llvm.load"(%9) <{alignment = 4 : i64, ordering = 2 : i64}> : (!llvm.ptr) -> i32
    "llvm.store"(%17, %6) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %18 = "llvm.load"(%7) <{alignment = 4 : i64, ordering = 2 : i64}> : (!llvm.ptr) -> i64
    %19 = "llvm.bitcast"(%18) : (i64) -> f64
    "llvm.store"(%19, %9) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    %20 = "llvm.load"(%6) <{alignment = 4 : i64, ordering = 2 : i64}> : (!llvm.ptr) -> i32
    %21 = "llvm.bitcast"(%20) : (i32) -> f32
    "llvm.store"(%21, %9) <{alignment = 4 : i64, ordering = 0 : i64}> : (f32, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (i64, ptr, ptr, i32)>, linkage = #llvm.linkage<external>, sym_name = "__atomic_load", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

