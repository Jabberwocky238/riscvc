"builtin.module"() ({
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<warning, "Debug Info Version", 3 : i32>]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, sym_name = "_QPomp_atomic_capture_complex", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %0 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %2 = "llvm.mlir.constant"() <{value = 2.000000e+00 : f32}> : () -> f32
    %3 = "llvm.mlir.undef"() : () -> !llvm.struct<(f32, f32)>
    %4 = "llvm.insertvalue"(%3, %2) <{position = array<i64: 0>}> : (!llvm.struct<(f32, f32)>, f32) -> !llvm.struct<(f32, f32)>
    %5 = "llvm.insertvalue"(%4, %2) <{position = array<i64: 1>}> : (!llvm.struct<(f32, f32)>, f32) -> !llvm.struct<(f32, f32)>
    %6 = "llvm.mlir.constant"() <{value = 8 : i64}> : () -> i64
    %7 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %8 = "llvm.mlir.constant"() <{value = 1.000000e+00 : f32}> : () -> f32
    %9 = "llvm.mlir.undef"() : () -> !llvm.struct<(f32, f32)>
    %10 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %11 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = !llvm.struct<(f32, f32)>}> : (i32) -> !llvm.ptr
    %12 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = !llvm.struct<(f32, f32)>}> : (i32) -> !llvm.ptr
    %13 = "llvm.alloca"(%1) <{alignment = 8 : i64, elem_type = !llvm.struct<(f32, f32)>}> : (i64) -> !llvm.ptr
    %14 = "llvm.alloca"(%1) <{alignment = 8 : i64, elem_type = !llvm.struct<(f32, f32)>}> : (i64) -> !llvm.ptr
    "llvm.store"(%5, %14) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.struct<(f32, f32)>, !llvm.ptr) -> ()
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"(%6, %14, %11, %7) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__atomic_load, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>}> : (i64, !llvm.ptr, !llvm.ptr, i32) -> ()
    %15 = "llvm.load"(%11) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.struct<(f32, f32)>
    "llvm.br"(%15)[^bb2] : (!llvm.struct<(f32, f32)>) -> ()
  ^bb2(%16: !llvm.struct<(f32, f32)>):  // 2 preds: ^bb1, ^bb2
    %17 = "llvm.extractvalue"(%16) <{position = array<i64: 0>}> : (!llvm.struct<(f32, f32)>) -> f32
    %18 = "llvm.extractvalue"(%16) <{position = array<i64: 1>}> : (!llvm.struct<(f32, f32)>) -> f32
    %19 = "llvm.fadd"(%17, %8) <{fastmathFlags = #llvm.fastmath<contract>}> : (f32, f32) -> f32
    %20 = "llvm.fadd"(%18, %8) <{fastmathFlags = #llvm.fastmath<contract>}> : (f32, f32) -> f32
    %21 = "llvm.insertvalue"(%9, %19) <{position = array<i64: 0>}> : (!llvm.struct<(f32, f32)>, f32) -> !llvm.struct<(f32, f32)>
    %22 = "llvm.insertvalue"(%21, %20) <{position = array<i64: 1>}> : (!llvm.struct<(f32, f32)>, f32) -> !llvm.struct<(f32, f32)>
    "llvm.store"(%22, %12) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.struct<(f32, f32)>, !llvm.ptr) -> ()
    %23 = "llvm.call"(%6, %14, %11, %12, %10, %10) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__atomic_compare_exchange, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 6, 0>}> : (i64, !llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> i1
    %24 = "llvm.load"(%11) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.struct<(f32, f32)>
    "llvm.cond_br"(%23, %24)[^bb3, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, !llvm.struct<(f32, f32)>) -> ()
  ^bb3:  // pred: ^bb2
    "llvm.store"(%22, %13) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.struct<(f32, f32)>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (i64, ptr, ptr, i32)>, linkage = #llvm.linkage<external>, sym_name = "__atomic_load", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64, ptr, ptr, ptr, i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "__atomic_compare_exchange", unnamed_addr = 0 : i64, visibility_ = 0 : i64, will_return}> ({
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

