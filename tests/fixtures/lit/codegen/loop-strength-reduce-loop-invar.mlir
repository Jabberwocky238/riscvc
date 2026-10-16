"builtin.module"() ({
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 32 : i64, dso_local, global_type = !llvm.array<16 x array<16 x i32>>, linkage = #llvm.linkage<internal>, sym_name = "A", unnamed_addr = 0 : i64, value = dense<0> : tensor<16x16xi32>, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<void (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %2 = "llvm.mlir.addressof"() <{global_name = @A}> : () -> !llvm.ptr
    %3 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %4 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %5 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %6 = "llvm.bitcast"(%arg1) : (i32) -> i32
    %7 = "llvm.icmp"(%arg1, %0) <{predicate = 4 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%7, %0)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 1, 0>}> : (i1, i32) -> ()
  ^bb1(%8: i32):  // 2 preds: ^bb0, ^bb1
    %9 = "llvm.add"(%8, %1) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %10 = "llvm.getelementptr"(%2, %0, %arg0, %9) <{elem_type = !llvm.array<16 x array<16 x i32>>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32, i32) -> !llvm.ptr
    "llvm.store"(%3, %10) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %11 = "llvm.add"(%8, %4) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %12 = "llvm.getelementptr"(%2, %0, %arg0, %11) <{elem_type = !llvm.array<16 x array<16 x i32>>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32, i32) -> !llvm.ptr
    "llvm.store"(%5, %12) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %13 = "llvm.add"(%8, %1) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %14 = "llvm.icmp"(%13, %6) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%14, %13)[^bb2, ^bb1] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

