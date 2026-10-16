"builtin.module"() ({
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<warning, "Debug Info Version", 3 : i32>]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, sym_name = "_QPomp_atomic_update_complex", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %0 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %2 = "llvm.mlir.constant"() <{value = 8 : i64}> : () -> i64
    %3 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %4 = "llvm.mlir.constant"() <{value = 1.000000e+00 : f32}> : () -> f32
    %5 = "llvm.mlir.undef"() : () -> !llvm.struct<(f32, f32)>
    %6 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %7 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = !llvm.struct<(f32, f32)>}> : (i32) -> !llvm.ptr
    %8 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = !llvm.struct<(f32, f32)>}> : (i32) -> !llvm.ptr
    %9 = "llvm.alloca"(%1) <{alignment = 8 : i64, elem_type = !llvm.struct<(f32, f32)>}> : (i64) -> !llvm.ptr
    %10 = "llvm.alloca"(%1) <{alignment = 8 : i64, elem_type = !llvm.struct<(f32, f32)>}> : (i64) -> !llvm.ptr
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"(%2, %10, %7, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__atomic_load, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>}> : (i64, !llvm.ptr, !llvm.ptr, i32) -> ()
    %11 = "llvm.load"(%7) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.struct<(f32, f32)>
    "llvm.br"(%11)[^bb2] : (!llvm.struct<(f32, f32)>) -> ()
  ^bb2(%12: !llvm.struct<(f32, f32)>):  // 2 preds: ^bb1, ^bb2
    %13 = "llvm.extractvalue"(%12) <{position = array<i64: 0>}> : (!llvm.struct<(f32, f32)>) -> f32
    %14 = "llvm.extractvalue"(%12) <{position = array<i64: 1>}> : (!llvm.struct<(f32, f32)>) -> f32
    %15 = "llvm.fadd"(%13, %4) <{fastmathFlags = #llvm.fastmath<contract>}> : (f32, f32) -> f32
    %16 = "llvm.fadd"(%14, %4) <{fastmathFlags = #llvm.fastmath<contract>}> : (f32, f32) -> f32
    %17 = "llvm.insertvalue"(%5, %15) <{position = array<i64: 0>}> : (!llvm.struct<(f32, f32)>, f32) -> !llvm.struct<(f32, f32)>
    %18 = "llvm.insertvalue"(%17, %16) <{position = array<i64: 1>}> : (!llvm.struct<(f32, f32)>, f32) -> !llvm.struct<(f32, f32)>
    "llvm.store"(%18, %8) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.struct<(f32, f32)>, !llvm.ptr) -> ()
    %19 = "llvm.call"(%2, %10, %7, %8, %6, %6) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__atomic_compare_exchange, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 6, 0>}> : (i64, !llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> i1
    %20 = "llvm.load"(%7) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.struct<(f32, f32)>
    "llvm.cond_br"(%19, %20)[^bb3, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, !llvm.struct<(f32, f32)>) -> ()
  ^bb3:  // pred: ^bb2
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (i64, ptr, ptr, i32)>, linkage = #llvm.linkage<external>, sym_name = "__atomic_load", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64, ptr, ptr, ptr, i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "__atomic_compare_exchange", unnamed_addr = 0 : i64, visibility_ = 0 : i64, will_return}> ({
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

