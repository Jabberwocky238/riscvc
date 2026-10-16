"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 ()>, linkage = #llvm.linkage<external>, passthrough = [["probe-stack", "inline-asm"]], sym_name = "f0", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %64 = "llvm.mlir.constant"() <{value = 64 : i64}> : () -> i64
    %65 = "llvm.mlir.constant"() <{value = 63 : i64}> : () -> i64
    %66 = "llvm.mlir.constant"() <{value = 3 : i8}> : () -> i8
    %67 = "llvm.alloca"(%64) <{alignment = 1 : i64, elem_type = i8}> : (i64) -> !llvm.ptr
    %68 = "llvm.getelementptr"(%67, %65) <{elem_type = i8, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.store"(%66, %67) <{alignment = 1 : i64, ordering = 0 : i64, volatile_}> : (i8, !llvm.ptr) -> ()
    %69 = "llvm.load"(%67) <{alignment = 1 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i8
    "llvm.return"(%69) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 ()>, linkage = #llvm.linkage<external>, passthrough = [["probe-stack", "inline-asm"]], sym_name = "f1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %58 = "llvm.mlir.constant"() <{value = 4096 : i64}> : () -> i64
    %59 = "llvm.mlir.constant"() <{value = 63 : i64}> : () -> i64
    %60 = "llvm.mlir.constant"() <{value = 3 : i8}> : () -> i8
    %61 = "llvm.alloca"(%58) <{alignment = 1 : i64, elem_type = i8}> : (i64) -> !llvm.ptr
    %62 = "llvm.getelementptr"(%61, %59) <{elem_type = i8, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.store"(%60, %61) <{alignment = 1 : i64, ordering = 0 : i64, volatile_}> : (i8, !llvm.ptr) -> ()
    %63 = "llvm.load"(%61) <{alignment = 1 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i8
    "llvm.return"(%63) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 ()>, linkage = #llvm.linkage<external>, passthrough = [["probe-stack", "inline-asm"]], sym_name = "f2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %52 = "llvm.mlir.constant"() <{value = 65536 : i64}> : () -> i64
    %53 = "llvm.mlir.constant"() <{value = 63 : i64}> : () -> i64
    %54 = "llvm.mlir.constant"() <{value = 3 : i8}> : () -> i8
    %55 = "llvm.alloca"(%52) <{alignment = 1 : i64, elem_type = i8}> : (i64) -> !llvm.ptr
    %56 = "llvm.getelementptr"(%55, %53) <{elem_type = i8, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.store"(%54, %55) <{alignment = 1 : i64, ordering = 0 : i64, volatile_}> : (i8, !llvm.ptr) -> ()
    %57 = "llvm.load"(%55) <{alignment = 1 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i8
    "llvm.return"(%57) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 ()>, linkage = #llvm.linkage<external>, passthrough = [["probe-stack", "inline-asm"], ["stack-probe-size", "32768"]], sym_name = "f3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %46 = "llvm.mlir.constant"() <{value = 65536 : i64}> : () -> i64
    %47 = "llvm.mlir.constant"() <{value = 63 : i64}> : () -> i64
    %48 = "llvm.mlir.constant"() <{value = 3 : i8}> : () -> i8
    %49 = "llvm.alloca"(%46) <{alignment = 1 : i64, elem_type = i8}> : (i64) -> !llvm.ptr
    %50 = "llvm.getelementptr"(%49, %47) <{elem_type = i8, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.store"(%48, %49) <{alignment = 1 : i64, ordering = 0 : i64, volatile_}> : (i8, !llvm.ptr) -> ()
    %51 = "llvm.load"(%49) <{alignment = 1 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i8
    "llvm.return"(%51) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 ()>, linkage = #llvm.linkage<external>, sym_name = "f4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %40 = "llvm.mlir.constant"() <{value = 65536 : i64}> : () -> i64
    %41 = "llvm.mlir.constant"() <{value = 63 : i64}> : () -> i64
    %42 = "llvm.mlir.constant"() <{value = 3 : i8}> : () -> i8
    %43 = "llvm.alloca"(%40) <{alignment = 1 : i64, elem_type = i8}> : (i64) -> !llvm.ptr
    %44 = "llvm.getelementptr"(%43, %41) <{elem_type = i8, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.store"(%42, %43) <{alignment = 1 : i64, ordering = 0 : i64, volatile_}> : (i8, !llvm.ptr) -> ()
    %45 = "llvm.load"(%43) <{alignment = 1 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i8
    "llvm.return"(%45) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 ()>, linkage = #llvm.linkage<external>, passthrough = [["probe-stack", "inline-asm"], ["stack-probe-size", "65536"]], sym_name = "f5", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %34 = "llvm.mlir.constant"() <{value = 1048576 : i64}> : () -> i64
    %35 = "llvm.mlir.constant"() <{value = 63 : i64}> : () -> i64
    %36 = "llvm.mlir.constant"() <{value = 3 : i8}> : () -> i8
    %37 = "llvm.alloca"(%34) <{alignment = 1 : i64, elem_type = i8}> : (i64) -> !llvm.ptr
    %38 = "llvm.getelementptr"(%37, %35) <{elem_type = i8, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.store"(%36, %37) <{alignment = 1 : i64, ordering = 0 : i64, volatile_}> : (i8, !llvm.ptr) -> ()
    %39 = "llvm.load"(%37) <{alignment = 1 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i8
    "llvm.return"(%39) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 ()>, linkage = #llvm.linkage<external>, passthrough = [["probe-stack", "inline-asm"]], sym_name = "f6", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %28 = "llvm.mlir.constant"() <{value = 1073741824 : i64}> : () -> i64
    %29 = "llvm.mlir.constant"() <{value = 63 : i64}> : () -> i64
    %30 = "llvm.mlir.constant"() <{value = 3 : i8}> : () -> i8
    %31 = "llvm.alloca"(%28) <{alignment = 1 : i64, elem_type = i8}> : (i64) -> !llvm.ptr
    %32 = "llvm.getelementptr"(%31, %29) <{elem_type = i8, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.store"(%30, %31) <{alignment = 1 : i64, ordering = 0 : i64, volatile_}> : (i8, !llvm.ptr) -> ()
    %33 = "llvm.load"(%31) <{alignment = 1 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i8
    "llvm.return"(%33) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 ()>, linkage = #llvm.linkage<external>, passthrough = [["probe-stack", "inline-asm"], ["stack-probe-size", "65536"]], sym_name = "f7", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %22 = "llvm.mlir.constant"() <{value = 1000000007 : i64}> : () -> i64
    %23 = "llvm.mlir.constant"() <{value = 101 : i64}> : () -> i64
    %24 = "llvm.mlir.constant"() <{value = 3 : i8}> : () -> i8
    %25 = "llvm.alloca"(%22) <{alignment = 1 : i64, elem_type = i8}> : (i64) -> !llvm.ptr
    %26 = "llvm.getelementptr"(%25, %23) <{elem_type = i8, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.store"(%24, %25) <{alignment = 1 : i64, ordering = 0 : i64, volatile_}> : (i8, !llvm.ptr) -> ()
    %27 = "llvm.load"(%25) <{alignment = 1 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i8
    "llvm.return"(%27) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i64)>, linkage = #llvm.linkage<external>, passthrough = [["probe-stack", "inline-asm"]], sym_name = "f8", unnamed_addr = 1 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i64):
    %17 = "llvm.mlir.constant"() <{value = 200 : i32}> : () -> i32
    %18 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %19 = "llvm.alloca"(%17) <{alignment = 64 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %20 = "llvm.getelementptr"(%19, %arg4) <{elem_type = i32, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.store"(%18, %20) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (i32, !llvm.ptr) -> ()
    %21 = "llvm.load"(%19) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i32
    "llvm.return"(%21) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i64)>, linkage = #llvm.linkage<external>, passthrough = [["probe-stack", "inline-asm"]], sym_name = "f9", unnamed_addr = 1 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: i64):
    %12 = "llvm.mlir.constant"() <{value = 2000 : i32}> : () -> i32
    %13 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %14 = "llvm.alloca"(%12) <{alignment = 2048 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %15 = "llvm.getelementptr"(%14, %arg3) <{elem_type = i32, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.store"(%13, %15) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (i32, !llvm.ptr) -> ()
    %16 = "llvm.load"(%14) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i32
    "llvm.return"(%16) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i64)>, linkage = #llvm.linkage<external>, passthrough = [["probe-stack", "inline-asm"]], sym_name = "f10", unnamed_addr = 1 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i64):
    %7 = "llvm.mlir.constant"() <{value = 1000 : i32}> : () -> i32
    %8 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %9 = "llvm.alloca"(%7) <{alignment = 1024 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %10 = "llvm.getelementptr"(%9, %arg2) <{elem_type = i32, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.store"(%8, %10) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (i32, !llvm.ptr) -> ()
    %11 = "llvm.load"(%9) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i32
    "llvm.return"(%11) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (i32, i64)>, linkage = #llvm.linkage<external>, passthrough = [["probe-stack", "inline-asm"]], sym_name = "f11", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i32, %arg1: i64):
    %0 = "llvm.mlir.constant"() <{value = 4096 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %2 = "llvm.alloca"(%0) <{alignment = 32768 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %3 = "llvm.getelementptr"(%2, %arg1) <{elem_type = i32, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.store"(%1, %3) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (i32, !llvm.ptr) -> ()
    %4 = "llvm.zext"(%arg0) : (i32) -> i64
    %5 = "llvm.alloca"(%4) <{alignment = 2048 : i64, elem_type = i8}> : (i64) -> !llvm.ptr
    %6 = "llvm.load"(%5) <{alignment = 2048 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i8
    "llvm.return"() : () -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

