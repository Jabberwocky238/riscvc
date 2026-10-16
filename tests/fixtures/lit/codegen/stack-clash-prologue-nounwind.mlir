"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 ()>, linkage = #llvm.linkage<external>, no_unwind, passthrough = [["probe-stack", "inline-asm"]], sym_name = "f0", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %42 = "llvm.mlir.constant"() <{value = 64 : i64}> : () -> i64
    %43 = "llvm.mlir.constant"() <{value = 63 : i64}> : () -> i64
    %44 = "llvm.mlir.constant"() <{value = 3 : i8}> : () -> i8
    %45 = "llvm.alloca"(%42) <{alignment = 1 : i64, elem_type = i8}> : (i64) -> !llvm.ptr
    %46 = "llvm.getelementptr"(%45, %43) <{elem_type = i8, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.store"(%44, %45) <{alignment = 1 : i64, ordering = 0 : i64, volatile_}> : (i8, !llvm.ptr) -> ()
    %47 = "llvm.load"(%45) <{alignment = 1 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i8
    "llvm.return"(%47) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 ()>, linkage = #llvm.linkage<external>, no_unwind, passthrough = [["probe-stack", "inline-asm"]], sym_name = "f1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %36 = "llvm.mlir.constant"() <{value = 4096 : i64}> : () -> i64
    %37 = "llvm.mlir.constant"() <{value = 63 : i64}> : () -> i64
    %38 = "llvm.mlir.constant"() <{value = 3 : i8}> : () -> i8
    %39 = "llvm.alloca"(%36) <{alignment = 1 : i64, elem_type = i8}> : (i64) -> !llvm.ptr
    %40 = "llvm.getelementptr"(%39, %37) <{elem_type = i8, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.store"(%38, %39) <{alignment = 1 : i64, ordering = 0 : i64, volatile_}> : (i8, !llvm.ptr) -> ()
    %41 = "llvm.load"(%39) <{alignment = 1 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i8
    "llvm.return"(%41) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 ()>, linkage = #llvm.linkage<external>, no_unwind, passthrough = [["probe-stack", "inline-asm"]], sym_name = "f2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %30 = "llvm.mlir.constant"() <{value = 65536 : i64}> : () -> i64
    %31 = "llvm.mlir.constant"() <{value = 63 : i64}> : () -> i64
    %32 = "llvm.mlir.constant"() <{value = 3 : i8}> : () -> i8
    %33 = "llvm.alloca"(%30) <{alignment = 1 : i64, elem_type = i8}> : (i64) -> !llvm.ptr
    %34 = "llvm.getelementptr"(%33, %31) <{elem_type = i8, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.store"(%32, %33) <{alignment = 1 : i64, ordering = 0 : i64, volatile_}> : (i8, !llvm.ptr) -> ()
    %35 = "llvm.load"(%33) <{alignment = 1 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i8
    "llvm.return"(%35) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 ()>, linkage = #llvm.linkage<external>, no_unwind, passthrough = [["probe-stack", "inline-asm"], ["stack-probe-size", "32768"]], sym_name = "f3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %24 = "llvm.mlir.constant"() <{value = 65536 : i64}> : () -> i64
    %25 = "llvm.mlir.constant"() <{value = 63 : i64}> : () -> i64
    %26 = "llvm.mlir.constant"() <{value = 3 : i8}> : () -> i8
    %27 = "llvm.alloca"(%24) <{alignment = 1 : i64, elem_type = i8}> : (i64) -> !llvm.ptr
    %28 = "llvm.getelementptr"(%27, %25) <{elem_type = i8, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.store"(%26, %27) <{alignment = 1 : i64, ordering = 0 : i64, volatile_}> : (i8, !llvm.ptr) -> ()
    %29 = "llvm.load"(%27) <{alignment = 1 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i8
    "llvm.return"(%29) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "f4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %18 = "llvm.mlir.constant"() <{value = 65536 : i64}> : () -> i64
    %19 = "llvm.mlir.constant"() <{value = 63 : i64}> : () -> i64
    %20 = "llvm.mlir.constant"() <{value = 3 : i8}> : () -> i8
    %21 = "llvm.alloca"(%18) <{alignment = 1 : i64, elem_type = i8}> : (i64) -> !llvm.ptr
    %22 = "llvm.getelementptr"(%21, %19) <{elem_type = i8, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.store"(%20, %21) <{alignment = 1 : i64, ordering = 0 : i64, volatile_}> : (i8, !llvm.ptr) -> ()
    %23 = "llvm.load"(%21) <{alignment = 1 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i8
    "llvm.return"(%23) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 ()>, linkage = #llvm.linkage<external>, no_unwind, passthrough = [["probe-stack", "inline-asm"], ["stack-probe-size", "65536"]], sym_name = "f5", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %12 = "llvm.mlir.constant"() <{value = 1048576 : i64}> : () -> i64
    %13 = "llvm.mlir.constant"() <{value = 63 : i64}> : () -> i64
    %14 = "llvm.mlir.constant"() <{value = 3 : i8}> : () -> i8
    %15 = "llvm.alloca"(%12) <{alignment = 1 : i64, elem_type = i8}> : (i64) -> !llvm.ptr
    %16 = "llvm.getelementptr"(%15, %13) <{elem_type = i8, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.store"(%14, %15) <{alignment = 1 : i64, ordering = 0 : i64, volatile_}> : (i8, !llvm.ptr) -> ()
    %17 = "llvm.load"(%15) <{alignment = 1 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i8
    "llvm.return"(%17) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 ()>, linkage = #llvm.linkage<external>, no_unwind, passthrough = [["probe-stack", "inline-asm"]], sym_name = "f6", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %6 = "llvm.mlir.constant"() <{value = 1073741824 : i64}> : () -> i64
    %7 = "llvm.mlir.constant"() <{value = 63 : i64}> : () -> i64
    %8 = "llvm.mlir.constant"() <{value = 3 : i8}> : () -> i8
    %9 = "llvm.alloca"(%6) <{alignment = 1 : i64, elem_type = i8}> : (i64) -> !llvm.ptr
    %10 = "llvm.getelementptr"(%9, %7) <{elem_type = i8, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.store"(%8, %9) <{alignment = 1 : i64, ordering = 0 : i64, volatile_}> : (i8, !llvm.ptr) -> ()
    %11 = "llvm.load"(%9) <{alignment = 1 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i8
    "llvm.return"(%11) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 ()>, linkage = #llvm.linkage<external>, no_unwind, passthrough = [["probe-stack", "inline-asm"], ["stack-probe-size", "65536"]], sym_name = "f7", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %0 = "llvm.mlir.constant"() <{value = 1000000007 : i64}> : () -> i64
    %1 = "llvm.mlir.constant"() <{value = 101 : i64}> : () -> i64
    %2 = "llvm.mlir.constant"() <{value = 3 : i8}> : () -> i8
    %3 = "llvm.alloca"(%0) <{alignment = 1 : i64, elem_type = i8}> : (i64) -> !llvm.ptr
    %4 = "llvm.getelementptr"(%3, %1) <{elem_type = i8, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.store"(%2, %3) <{alignment = 1 : i64, ordering = 0 : i64, volatile_}> : (i8, !llvm.ptr) -> ()
    %5 = "llvm.load"(%3) <{alignment = 1 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i8
    "llvm.return"(%5) : (i8) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

