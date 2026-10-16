"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, sym_name = "notdead", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, ...)>, linkage = #llvm.linkage<external>, sym_name = "va1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: !llvm.ptr):
    %88 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %89 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %90 = "llvm.alloca"(%88) <{alignment = 8 : i64, elem_type = !llvm.ptr}> : (i32) -> !llvm.ptr
    "llvm.intr.vastart"(%90) : (!llvm.ptr) -> ()
    %91 = "llvm.load"(%90) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.ptr
    %92 = "llvm.getelementptr"(%91, %89) <{elem_type = i8, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%92, %90) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %93 = "llvm.load"(%91) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.intr.vaend"(%90) : (!llvm.ptr) -> ()
    "llvm.return"(%93) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, ...)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "va1_va_arg", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: !llvm.ptr):
    %85 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %86 = "llvm.alloca"(%85) <{alignment = 8 : i64, elem_type = !llvm.ptr}> : (i32) -> !llvm.ptr
    "llvm.intr.vastart"(%86) : (!llvm.ptr) -> ()
    %87 = "llvm.va_arg"(%86) : (!llvm.ptr) -> i32
    "llvm.intr.vaend"(%86) : (!llvm.ptr) -> ()
    "llvm.return"(%87) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, ...)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "va1_va_arg_alloca", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: !llvm.ptr):
    %81 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %82 = "llvm.alloca"(%81) <{alignment = 8 : i64, elem_type = !llvm.ptr}> : (i32) -> !llvm.ptr
    "llvm.intr.vastart"(%82) : (!llvm.ptr) -> ()
    %83 = "llvm.va_arg"(%82) : (!llvm.ptr) -> i32
    %84 = "llvm.alloca"(%83) <{alignment = 1 : i64, elem_type = i8}> : (i32) -> !llvm.ptr
    "llvm.call"(%84) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @notdead, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> ()
    "llvm.intr.vaend"(%82) : (!llvm.ptr) -> ()
    "llvm.return"(%83) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "va1_caller", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %77 = "llvm.mlir.poison"() : () -> !llvm.ptr
    %78 = "llvm.mlir.constant"() <{value = 1.000000e+00 : f64}> : () -> f64
    %79 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %80 = "llvm.call"(%77, %78, %79) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @va1, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>, var_callee_type = !llvm.func<i32 (ptr, ...)>}> : (!llvm.ptr, f64, i32) -> i32
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, ...)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "va2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg7: !llvm.ptr):
    %63 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %64 = "llvm.mlir.constant"() <{value = 7 : i32}> : () -> i32
    %65 = "llvm.mlir.constant"() <{value = -8 : i32}> : () -> i32
    %66 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %67 = "llvm.alloca"(%63) <{alignment = 8 : i64, elem_type = !llvm.ptr}> : (i32) -> !llvm.ptr
    "llvm.intr.vastart"(%67) : (!llvm.ptr) -> ()
    %68 = "llvm.load"(%67) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.ptr
    %69 = "llvm.ptrtoint"(%68) : (!llvm.ptr) -> i32
    %70 = "llvm.add"(%69, %64) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %71 = "llvm.and"(%70, %65) : (i32, i32) -> i32
    %72 = "llvm.inttoptr"(%70) : (i32) -> !llvm.ptr
    %73 = "llvm.getelementptr"(%72, %66) <{elem_type = i8, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%73, %67) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %74 = "llvm.inttoptr"(%71) : (i32) -> !llvm.ptr
    %75 = "llvm.load"(%74) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %76 = "llvm.bitcast"(%75) : (f64) -> i64
    "llvm.intr.vaend"(%67) : (!llvm.ptr) -> ()
    "llvm.return"(%76) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, ...)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "va2_va_arg", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: !llvm.ptr):
    %59 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %60 = "llvm.alloca"(%59) <{alignment = 8 : i64, elem_type = !llvm.ptr}> : (i32) -> !llvm.ptr
    "llvm.intr.vastart"(%60) : (!llvm.ptr) -> ()
    %61 = "llvm.va_arg"(%60) : (!llvm.ptr) -> f64
    "llvm.intr.vaend"(%60) : (!llvm.ptr) -> ()
    %62 = "llvm.bitcast"(%61) : (f64) -> i64
    "llvm.return"(%62) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "va2_caller", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %56 = "llvm.mlir.poison"() : () -> !llvm.ptr
    %57 = "llvm.mlir.constant"() <{value = 1.000000e+00 : f64}> : () -> f64
    %58 = "llvm.call"(%56, %57) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @va2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>, var_callee_type = !llvm.func<i64 (ptr, ...)>}> : (!llvm.ptr, f64) -> i64
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i32, i64, ...)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "va3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i32, %arg5: i64):
    %41 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %42 = "llvm.mlir.constant"() <{value = 7 : i32}> : () -> i32
    %43 = "llvm.mlir.constant"() <{value = -8 : i32}> : () -> i32
    %44 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %45 = "llvm.alloca"(%41) <{alignment = 8 : i64, elem_type = !llvm.ptr}> : (i32) -> !llvm.ptr
    "llvm.intr.vastart"(%45) : (!llvm.ptr) -> ()
    %46 = "llvm.load"(%45) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.ptr
    %47 = "llvm.ptrtoint"(%46) : (!llvm.ptr) -> i32
    %48 = "llvm.add"(%47, %42) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %49 = "llvm.and"(%48, %43) : (i32, i32) -> i32
    %50 = "llvm.inttoptr"(%48) : (i32) -> !llvm.ptr
    %51 = "llvm.getelementptr"(%50, %44) <{elem_type = i8, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%51, %45) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %52 = "llvm.inttoptr"(%49) : (i32) -> !llvm.ptr
    %53 = "llvm.load"(%52) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    "llvm.intr.vaend"(%45) : (!llvm.ptr) -> ()
    %54 = "llvm.bitcast"(%53) : (f64) -> i64
    %55 = "llvm.add"(%arg5, %54) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%55) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i32, i64, ...)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "va3_va_arg", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i32, %arg3: i64):
    %36 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %37 = "llvm.alloca"(%36) <{alignment = 8 : i64, elem_type = !llvm.ptr}> : (i32) -> !llvm.ptr
    "llvm.intr.vastart"(%37) : (!llvm.ptr) -> ()
    %38 = "llvm.va_arg"(%37) : (!llvm.ptr) -> f64
    "llvm.intr.vaend"(%37) : (!llvm.ptr) -> ()
    %39 = "llvm.bitcast"(%38) : (f64) -> i64
    %40 = "llvm.add"(%arg3, %39) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%40) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "va3_caller", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %32 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %33 = "llvm.mlir.constant"() <{value = 1111 : i64}> : () -> i64
    %34 = "llvm.mlir.constant"() <{value = 2.000000e+00 : f64}> : () -> f64
    %35 = "llvm.call"(%32, %33, %34) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @va3, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>, var_callee_type = !llvm.func<i64 (i32, i64, ...)>}> : (i32, i64, f64) -> i64
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, ...)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "va4_va_copy", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: i32):
    %21 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %22 = "llvm.alloca"(%21) <{alignment = 8 : i64, elem_type = !llvm.ptr}> : (i32) -> !llvm.ptr
    %23 = "llvm.alloca"(%21) <{alignment = 8 : i64, elem_type = !llvm.ptr}> : (i32) -> !llvm.ptr
    "llvm.intr.vastart"(%22) : (!llvm.ptr) -> ()
    %24 = "llvm.va_arg"(%22) : (!llvm.ptr) -> i32
    "llvm.intr.vacopy"(%23, %22) : (!llvm.ptr, !llvm.ptr) -> ()
    %25 = "llvm.load"(%23) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.ptr
    "llvm.call"(%25) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @notdead, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> ()
    %26 = "llvm.va_arg"(%22) : (!llvm.ptr) -> i32
    %27 = "llvm.va_arg"(%22) : (!llvm.ptr) -> i32
    %28 = "llvm.va_arg"(%22) : (!llvm.ptr) -> i32
    "llvm.intr.vaend"(%22) : (!llvm.ptr) -> ()
    "llvm.intr.vaend"(%23) : (!llvm.ptr) -> ()
    %29 = "llvm.add"(%26, %24) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %30 = "llvm.add"(%29, %27) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %31 = "llvm.add"(%30, %28) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%31) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, ...)>, linkage = #llvm.linkage<external>, sym_name = "va5_aligned_stack_callee", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "va5_aligned_stack_caller", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %10 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %11 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %12 = "llvm.mlir.constant"() <{value = 3.14000000000000012434497875801753253 : f128}> : () -> f128
    %13 = "llvm.mlir.constant"() <{value = 12 : i32}> : () -> i32
    %14 = "llvm.mlir.constant"() <{value = 13 : i32}> : () -> i32
    %15 = "llvm.mlir.constant"() <{value = 20000000000 : i64}> : () -> i64
    %16 = "llvm.mlir.constant"() <{value = 14 : i32}> : () -> i32
    %17 = "llvm.mlir.constant"() <{value = 2.720000e+00 : f64}> : () -> f64
    %18 = "llvm.mlir.constant"() <{value = 15 : i32}> : () -> i32
    %19 = "llvm.mlir.constant"() <{value = dense<[16, 17]> : tensor<2xi32>}> : () -> !llvm.array<2 x i32>
    %20 = "llvm.call"(%10, %11, %12, %13, %14, %15, %16, %17, %18, %19) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @va5_aligned_stack_callee, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 10, 0>, var_callee_type = !llvm.func<i32 (i32, ...)>}> : (i32, i32, f128, i32, i32, i64, i32, f64, i32, !llvm.array<2 x i32>) -> i32
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (...)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "va6_no_fixed_args", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %7 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %8 = "llvm.alloca"(%7) <{alignment = 8 : i64, elem_type = !llvm.ptr}> : (i32) -> !llvm.ptr
    "llvm.intr.vastart"(%8) : (!llvm.ptr) -> ()
    %9 = "llvm.va_arg"(%8) : (!llvm.ptr) -> i32
    "llvm.intr.vaend"(%8) : (!llvm.ptr) -> ()
    "llvm.return"(%9) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, ...)>, linkage = #llvm.linkage<external>, sym_name = "va_large_stack", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: !llvm.ptr):
    %0 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %2 = "llvm.alloca"(%0) <{alignment = 1 : i64, elem_type = !llvm.array<100000000 x i8>}> : (i32) -> !llvm.ptr
    %3 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = !llvm.ptr}> : (i32) -> !llvm.ptr
    "llvm.intr.vastart"(%3) : (!llvm.ptr) -> ()
    %4 = "llvm.load"(%3) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.ptr
    %5 = "llvm.getelementptr"(%4, %1) <{elem_type = i8, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%5, %3) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %6 = "llvm.load"(%4) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.intr.vaend"(%3) : (!llvm.ptr) -> ()
    "llvm.return"(%6) : (i32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

