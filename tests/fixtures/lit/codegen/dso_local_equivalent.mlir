"builtin.module"() ({
  "llvm.mlir.global"() <{addr_space = 0 : i32, constant, dso_local, global_type = i32, linkage = #llvm.linkage<external>, sym_name = "const", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %40 = "llvm.mlir.addressof"() <{global_name = @const}> : () -> !llvm.ptr
    %41 = "llvm.ptrtoint"(%40) : (!llvm.ptr) -> i64
    %42 = "llvm.mlir.addressof"() <{global_name = @extern_func}> : () -> !llvm.ptr
    %43 = "llvm.dso_local_equivalent"() <{function_name = @extern_func}> : () -> !llvm.ptr
    %44 = "llvm.ptrtoint"(%43) : (!llvm.ptr) -> i64
    %45 = "llvm.sub"(%44, %41) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %46 = "llvm.trunc"(%45) <{overflowFlags = 0 : i32}> : (i64) -> i32
    "llvm.return"(%46) : (i32) -> ()
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 4 : i64, constant, dso_local, global_type = !llvm.struct<(array<7 x i32>)>, linkage = #llvm.linkage<external>, sym_name = "_ZTV1B", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %0 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %2 = "llvm.mlir.addressof"() <{global_name = @_ZTV1B}> : () -> !llvm.ptr
    %3 = "llvm.getelementptr"(%2, %1, %0) <{elem_type = !llvm.struct<(array<7 x i32>)>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, 0, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    %4 = "llvm.ptrtoint"(%3) : (!llvm.ptr) -> i64
    %5 = "llvm.mlir.addressof"() <{global_name = @f4}> : () -> !llvm.ptr
    %6 = "llvm.dso_local_equivalent"() <{function_name = @f4}> : () -> !llvm.ptr
    %7 = "llvm.ptrtoint"(%6) : (!llvm.ptr) -> i64
    %8 = "llvm.sub"(%7, %4) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %9 = "llvm.trunc"(%8) <{overflowFlags = 0 : i32}> : (i64) -> i32
    %10 = "llvm.mlir.addressof"() <{global_name = @f3}> : () -> !llvm.ptr
    %11 = "llvm.dso_local_equivalent"() <{function_name = @f3}> : () -> !llvm.ptr
    %12 = "llvm.ptrtoint"(%11) : (!llvm.ptr) -> i64
    %13 = "llvm.sub"(%12, %4) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %14 = "llvm.trunc"(%13) <{overflowFlags = 0 : i32}> : (i64) -> i32
    %15 = "llvm.mlir.addressof"() <{global_name = @f2}> : () -> !llvm.ptr
    %16 = "llvm.dso_local_equivalent"() <{function_name = @f2}> : () -> !llvm.ptr
    %17 = "llvm.ptrtoint"(%16) : (!llvm.ptr) -> i64
    %18 = "llvm.sub"(%17, %4) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %19 = "llvm.trunc"(%18) <{overflowFlags = 0 : i32}> : (i64) -> i32
    %20 = "llvm.mlir.addressof"() <{global_name = @f1}> : () -> !llvm.ptr
    %21 = "llvm.dso_local_equivalent"() <{function_name = @f1}> : () -> !llvm.ptr
    %22 = "llvm.ptrtoint"(%21) : (!llvm.ptr) -> i64
    %23 = "llvm.sub"(%22, %4) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %24 = "llvm.trunc"(%23) <{overflowFlags = 0 : i32}> : (i64) -> i32
    %25 = "llvm.mlir.addressof"() <{global_name = @f0}> : () -> !llvm.ptr
    %26 = "llvm.dso_local_equivalent"() <{function_name = @f0}> : () -> !llvm.ptr
    %27 = "llvm.ptrtoint"(%26) : (!llvm.ptr) -> i64
    %28 = "llvm.sub"(%27, %4) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %29 = "llvm.trunc"(%28) <{overflowFlags = 0 : i32}> : (i64) -> i32
    %30 = "llvm.mlir.undef"() : () -> !llvm.array<7 x i32>
    %31 = "llvm.insertvalue"(%30, %1) <{position = array<i64: 0>}> : (!llvm.array<7 x i32>, i32) -> !llvm.array<7 x i32>
    %32 = "llvm.insertvalue"(%31, %1) <{position = array<i64: 1>}> : (!llvm.array<7 x i32>, i32) -> !llvm.array<7 x i32>
    %33 = "llvm.insertvalue"(%32, %29) <{position = array<i64: 2>}> : (!llvm.array<7 x i32>, i32) -> !llvm.array<7 x i32>
    %34 = "llvm.insertvalue"(%33, %24) <{position = array<i64: 3>}> : (!llvm.array<7 x i32>, i32) -> !llvm.array<7 x i32>
    %35 = "llvm.insertvalue"(%34, %19) <{position = array<i64: 4>}> : (!llvm.array<7 x i32>, i32) -> !llvm.array<7 x i32>
    %36 = "llvm.insertvalue"(%35, %14) <{position = array<i64: 5>}> : (!llvm.array<7 x i32>, i32) -> !llvm.array<7 x i32>
    %37 = "llvm.insertvalue"(%36, %9) <{position = array<i64: 6>}> : (!llvm.array<7 x i32>, i32) -> !llvm.array<7 x i32>
    %38 = "llvm.mlir.undef"() : () -> !llvm.struct<(array<7 x i32>)>
    %39 = "llvm.insertvalue"(%38, %37) <{position = array<i64: 0>}> : (!llvm.struct<(array<7 x i32>)>, !llvm.array<7 x i32>) -> !llvm.struct<(array<7 x i32>)>
    "llvm.return"(%39) : (!llvm.struct<(array<7 x i32>)>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, sym_name = "extern_func", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, sym_name = "f0", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, sym_name = "f1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, sym_name = "f2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, sym_name = "f3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, sym_name = "f4", unnamed_addr = 0 : i64, visibility_ = 1 : i64}> ({
    "llvm.return"() : () -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

