"builtin.module"() ({
  "llvm.mlir.global"() <{addr_space = 0 : i32, global_type = f64, linkage = #llvm.linkage<external>, sym_name = "g_0", unnamed_addr = 0 : i64, value = 0.000000e+00 : f64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "load_g_0", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %22 = "llvm.mlir.addressof"() <{global_name = @g_0}> : () -> !llvm.ptr
    %23 = "llvm.load"(%22) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    "llvm.return"(%23) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "store_g_0", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %20 = "llvm.mlir.constant"() <{value = 0.000000e+00 : f64}> : () -> f64
    %21 = "llvm.mlir.addressof"() <{global_name = @g_0}> : () -> !llvm.ptr
    "llvm.store"(%20, %21) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (i32, i32, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fold_addi_from_different_bb", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i32, %arg3: i32, %arg4: !llvm.ptr):
    %8 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %9 = "llvm.mlir.constant"() <{value = 0.000000e+00 : f64}> : () -> f64
    %10 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %11 = "llvm.icmp"(%arg3, %8) <{predicate = 4 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%11, %9)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, f64) -> ()
  ^bb1:  // pred: ^bb0
    %12 = "llvm.getelementptr"(%arg4, %arg2) <{elem_type = !llvm.struct<"struct.S", (f64, f64)>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.br"(%8, %9)[^bb3] : (i32, f64) -> ()
  ^bb2(%13: f64):  // 2 preds: ^bb0, ^bb3
    "llvm.return"(%13) : (f64) -> ()
  ^bb3(%14: i32, %15: f64):  // 2 preds: ^bb1, ^bb3
    "llvm.call"(%arg4) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @f, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> ()
    %16 = "llvm.load"(%12) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %17 = "llvm.fadd"(%16, %15) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %18 = "llvm.add"(%14, %10) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    %19 = "llvm.icmp"(%18, %arg3) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%19, %17, %18, %17)[^bb2, ^bb3] <{operandSegmentSizes = array<i32: 1, 1, 2>}> : (i1, f64, i32, f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, sym_name = "f", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, f64)>, linkage = #llvm.linkage<external>, sym_name = "split_offset", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: !llvm.ptr, %arg1: f64):
    %0 = "llvm.mlir.constant"() <{value = 256 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 257 : i32}> : () -> i32
    %2 = "llvm.mlir.constant"() <{value = 258 : i32}> : () -> i32
    %3 = "llvm.mlir.constant"() <{value = 259 : i32}> : () -> i32
    %4 = "llvm.getelementptr"(%arg0, %0) <{elem_type = f64, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%arg1, %4) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    %5 = "llvm.getelementptr"(%arg0, %1) <{elem_type = f64, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%arg1, %5) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    %6 = "llvm.getelementptr"(%arg0, %2) <{elem_type = f64, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%arg1, %6) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    %7 = "llvm.getelementptr"(%arg0, %3) <{elem_type = f64, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%arg1, %7) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

