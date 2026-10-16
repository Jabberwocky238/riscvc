"builtin.module"() ({
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 4 : i64, global_type = !llvm.array<4096 x i32>, linkage = #llvm.linkage<external>, sym_name = "a", unnamed_addr = 0 : i64, value = dense<0> : tensor<4096xi32>, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 4 : i64, global_type = !llvm.array<4096 x i32>, linkage = #llvm.linkage<external>, sym_name = "b", unnamed_addr = 0 : i64, value = dense<0> : tensor<4096xi32>, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "main", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %0 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = -2048 : i32}> : () -> i32
    %2 = "llvm.mlir.addressof"() <{global_name = @a}> : () -> !llvm.ptr
    %3 = "llvm.mlir.addressof"() <{global_name = @b}> : () -> !llvm.ptr
    %4 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %5 = "llvm.mlir.constant"() <{value = 4096 : i32}> : () -> i32
    "llvm.br"(%0)[^bb1] : (i32) -> ()
  ^bb1(%6: i32):  // 2 preds: ^bb0, ^bb1
    %7 = "llvm.add"(%6, %1) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %8 = "llvm.getelementptr"(%2, %0, %6) <{elem_type = !llvm.array<4096 x i32>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    "llvm.store"(%7, %8) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %9 = "llvm.getelementptr"(%3, %0, %6) <{elem_type = !llvm.array<4096 x i32>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    "llvm.store"(%6, %9) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %10 = "llvm.add"(%6, %4) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    %11 = "llvm.icmp"(%10, %5) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%11, %10)[^bb2, ^bb1] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb2:  // pred: ^bb1
    "llvm.return"(%0) : (i32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

