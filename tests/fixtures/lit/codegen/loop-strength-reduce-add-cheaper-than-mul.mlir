"builtin.module"() ({
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 32 : i64, dso_local, global_type = !llvm.array<8193 x i8>, linkage = #llvm.linkage<internal>, sym_name = "flags2", unnamed_addr = 0 : i64, value = dense<0> : tensor<8193xi8>, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<void (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i32):
    %0 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 8192 : i32}> : () -> i32
    %2 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %3 = "llvm.mlir.addressof"() <{global_name = @flags2}> : () -> !llvm.ptr
    %4 = "llvm.mlir.constant"() <{value = 0 : i8}> : () -> i8
    %5 = "llvm.shl"(%arg0, %0) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %6 = "llvm.icmp"(%5, %1) <{predicate = 4 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%6, %2)[^bb2, ^bb1] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb1(%7: i32):  // 2 preds: ^bb0, ^bb1
    %8 = "llvm.mul"(%7, %arg0) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %9 = "llvm.add"(%8, %5) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %10 = "llvm.zext"(%9) : (i32) -> i64
    %11 = "llvm.getelementptr"(%3, %2, %10) <{elem_type = !llvm.array<8193 x i8>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i64) -> !llvm.ptr
    "llvm.store"(%4, %11) <{alignment = 1 : i64, ordering = 0 : i64}> : (i8, !llvm.ptr) -> ()
    %12 = "llvm.add"(%9, %arg0) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %13 = "llvm.icmp"(%12, %1) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %14 = "llvm.add"(%7, %0) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.cond_br"(%13, %14)[^bb2, ^bb1] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

