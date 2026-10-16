"builtin.module"() ({
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 1 : i64, dso_local, global_type = !llvm.array<5 x i8>, linkage = #llvm.linkage<external>, sym_name = "bytes", unnamed_addr = 0 : i64, value = dense<0> : tensor<5xi8>, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 2 : i64, dso_local, global_type = !llvm.array<5 x i16>, linkage = #llvm.linkage<external>, sym_name = "shorts", unnamed_addr = 0 : i64, value = dense<0> : tensor<5xi16>, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_zext_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %11 = "llvm.mlir.addressof"() <{global_name = @bytes}> : () -> !llvm.ptr
    %12 = "llvm.mlir.constant"() <{value = -120 : i8}> : () -> i8
    %13 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %14 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %15 = "llvm.getelementptr"(%11, %14, %13) <{elem_type = !llvm.array<5 x i8>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    %16 = "llvm.mlir.constant"() <{value = 7 : i8}> : () -> i8
    %17 = "llvm.load"(%11) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %18 = "llvm.icmp"(%17, %12) <{predicate = 0 : i64}> : (i8, i8) -> i1
    %19 = "llvm.load"(%15) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %20 = "llvm.icmp"(%19, %16) <{predicate = 0 : i64}> : (i8, i8) -> i1
    %21 = "llvm.and"(%18, %20) : (i1, i1) -> i1
    "llvm.cond_br"(%21)[^bb2, ^bb1] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.return"(%13) : (i32) -> ()
  ^bb2:  // pred: ^bb0
    "llvm.return"(%14) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_zext_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %0 = "llvm.mlir.addressof"() <{global_name = @shorts}> : () -> !llvm.ptr
    %1 = "llvm.mlir.constant"() <{value = -120 : i16}> : () -> i16
    %2 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %3 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %4 = "llvm.getelementptr"(%0, %3, %2) <{elem_type = !llvm.array<5 x i16>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    %5 = "llvm.mlir.constant"() <{value = 7 : i16}> : () -> i16
    %6 = "llvm.load"(%0) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %7 = "llvm.icmp"(%6, %1) <{predicate = 0 : i64}> : (i16, i16) -> i1
    %8 = "llvm.load"(%4) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %9 = "llvm.icmp"(%8, %5) <{predicate = 0 : i64}> : (i16, i16) -> i1
    %10 = "llvm.and"(%7, %9) : (i1, i1) -> i1
    "llvm.cond_br"(%10)[^bb2, ^bb1] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.return"(%2) : (i32) -> ()
  ^bb2:  // pred: ^bb0
    "llvm.return"(%3) : (i32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

