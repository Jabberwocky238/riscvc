"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, sym_name = "use_frame_base_reg", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %18 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %19 = "llvm.alloca"(%18) <{alignment = 4 : i64, elem_type = i8}> : (i32) -> !llvm.ptr
    %20 = "llvm.alloca"(%18) <{alignment = 4 : i64, elem_type = i8}> : (i32) -> !llvm.ptr
    %21 = "llvm.alloca"(%18) <{alignment = 1 : i64, elem_type = !llvm.array<100000 x i8>}> : (i32) -> !llvm.ptr
    %22 = "llvm.load"(%19) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i8
    %23 = "llvm.load"(%20) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i8
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, sym_name = "load_with_offset", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %12 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %13 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %14 = "llvm.mlir.constant"() <{value = 2000 : i64}> : () -> i64
    %15 = "llvm.alloca"(%12) <{alignment = 4 : i64, elem_type = !llvm.array<2500 x i8>}> : (i32) -> !llvm.ptr
    %16 = "llvm.getelementptr"(%15, %13, %14) <{elem_type = !llvm.array<2000 x i8>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i64) -> !llvm.ptr
    %17 = "llvm.load"(%16) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i8
    "llvm.store"(%17, %16) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (i8, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, sym_name = "load_with_offset2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %6 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %7 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %8 = "llvm.mlir.constant"() <{value = 1400 : i64}> : () -> i64
    %9 = "llvm.alloca"(%6) <{alignment = 4 : i64, elem_type = !llvm.array<2500 x i8>}> : (i32) -> !llvm.ptr
    %10 = "llvm.getelementptr"(%9, %7, %8) <{elem_type = !llvm.array<2000 x i8>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i64) -> !llvm.ptr
    %11 = "llvm.load"(%10) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i8
    "llvm.store"(%11, %10) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (i8, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, frame_pointer = #llvm.framePointerKind<all>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, sym_name = "frame_pointer", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %0 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %2 = "llvm.mlir.constant"() <{value = 552 : i64}> : () -> i64
    %3 = "llvm.alloca"(%0) <{alignment = 4 : i64, elem_type = !llvm.array<2500 x i8>}> : (i32) -> !llvm.ptr
    %4 = "llvm.getelementptr"(%3, %1, %2) <{elem_type = !llvm.array<2000 x i8>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i64) -> !llvm.ptr
    %5 = "llvm.load"(%4) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i8
    "llvm.store"(%5, %4) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (i8, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

