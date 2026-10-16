"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32, i1)>, linkage = #llvm.linkage<external>, sym_name = "test_heuristic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: !llvm.ptr, %arg1: i32, %arg2: i1):
    %0 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "llvm.getelementptr"(%arg0, %arg1) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.br"(%arg0, %1)[^bb1] : (!llvm.ptr, !llvm.ptr) -> ()
  ^bb1(%2: !llvm.ptr, %3: !llvm.ptr):  // 2 preds: ^bb0, ^bb1
    %4 = "llvm.load"(%2) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %5 = "llvm.load"(%3) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %6 = "llvm.zext"(%5) : (i8) -> i32
    %7 = "llvm.getelementptr"(%2, %0) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %8 = "llvm.getelementptr"(%3, %0) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.cond_br"(%arg2, %7, %8)[^bb2, ^bb1] <{operandSegmentSizes = array<i32: 1, 0, 2>}> : (i1, !llvm.ptr, !llvm.ptr) -> ()
  ^bb2:  // pred: ^bb1
    "llvm.return"(%6) : (i32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

