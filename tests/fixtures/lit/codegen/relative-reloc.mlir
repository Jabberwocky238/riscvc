"builtin.module"() ({
  "llvm.mlir.global"() <{addr_space = 0 : i32, constant, global_type = !llvm.array<5 x i32>, linkage = #llvm.linkage<external>, sym_name = "vtable", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %0 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %2 = "llvm.mlir.addressof"() <{global_name = @vtable}> : () -> !llvm.ptr
    %3 = "llvm.getelementptr"(%2, %1, %0) <{elem_type = !llvm.array<5 x i32>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    %4 = "llvm.ptrtoint"(%3) : (!llvm.ptr) -> i64
    %5 = "llvm.mlir.addressof"() <{global_name = @global4}> : () -> !llvm.ptr
    %6 = "llvm.ptrtoint"(%5) : (!llvm.ptr) -> i64
    %7 = "llvm.sub"(%6, %4) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %8 = "llvm.trunc"(%7) <{overflowFlags = 0 : i32}> : (i64) -> i32
    %9 = "llvm.mlir.addressof"() <{global_name = @fn3}> : () -> !llvm.ptr
    %10 = "llvm.ptrtoint"(%9) : (!llvm.ptr) -> i64
    %11 = "llvm.sub"(%10, %4) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %12 = "llvm.trunc"(%11) <{overflowFlags = 0 : i32}> : (i64) -> i32
    %13 = "llvm.mlir.addressof"() <{global_name = @fn2}> : () -> !llvm.ptr
    %14 = "llvm.ptrtoint"(%13) : (!llvm.ptr) -> i64
    %15 = "llvm.sub"(%14, %4) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %16 = "llvm.trunc"(%15) <{overflowFlags = 0 : i32}> : (i64) -> i32
    %17 = "llvm.mlir.addressof"() <{global_name = @fn1}> : () -> !llvm.ptr
    %18 = "llvm.ptrtoint"(%17) : (!llvm.ptr) -> i64
    %19 = "llvm.sub"(%18, %4) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %20 = "llvm.trunc"(%19) <{overflowFlags = 0 : i32}> : (i64) -> i32
    %21 = "llvm.mlir.undef"() : () -> !llvm.array<5 x i32>
    %22 = "llvm.insertvalue"(%21, %1) <{position = array<i64: 0>}> : (!llvm.array<5 x i32>, i32) -> !llvm.array<5 x i32>
    %23 = "llvm.insertvalue"(%22, %20) <{position = array<i64: 1>}> : (!llvm.array<5 x i32>, i32) -> !llvm.array<5 x i32>
    %24 = "llvm.insertvalue"(%23, %16) <{position = array<i64: 2>}> : (!llvm.array<5 x i32>, i32) -> !llvm.array<5 x i32>
    %25 = "llvm.insertvalue"(%24, %12) <{position = array<i64: 3>}> : (!llvm.array<5 x i32>, i32) -> !llvm.array<5 x i32>
    %26 = "llvm.insertvalue"(%25, %8) <{position = array<i64: 4>}> : (!llvm.array<5 x i32>, i32) -> !llvm.array<5 x i32>
    "llvm.return"(%26) : (!llvm.array<5 x i32>) -> ()
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, global_type = i8, linkage = #llvm.linkage<external>, sym_name = "global4", unnamed_addr = 2 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, sym_name = "fn1", unnamed_addr = 2 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, sym_name = "fn2", unnamed_addr = 2 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, sym_name = "fn3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

