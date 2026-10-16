"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "test1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: i32):
    %47 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %48 = "llvm.shl"(%arg9, %47) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %49 = "llvm.or"(%48, %47) : (i32, i32) -> i32
    "llvm.return"(%49) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "test2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: i64):
    %43 = "llvm.mlir.constant"() <{value = -4 : i64}> : () -> i64
    %44 = "llvm.mlir.constant"() <{value = 2 : i64}> : () -> i64
    %45 = "llvm.and"(%arg8, %43) : (i64, i64) -> i64
    %46 = "llvm.or"(%45, %44) : (i64, i64) -> i64
    "llvm.return"(%46) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "test3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg7: i32):
    %39 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %40 = "llvm.mlir.constant"() <{value = 6 : i32}> : () -> i32
    %41 = "llvm.shl"(%arg7, %39) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %42 = "llvm.add"(%41, %40) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%42) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "test4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: i64):
    %35 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %36 = "llvm.mlir.constant"() <{value = 13 : i64}> : () -> i64
    %37 = "llvm.shl"(%arg6, %35) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %38 = "llvm.add"(%37, %36) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%38) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "test5", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: i32):
    %31 = "llvm.mlir.constant"() <{value = 24 : i32}> : () -> i32
    %32 = "llvm.mlir.constant"() <{value = 256 : i32}> : () -> i32
    %33 = "llvm.lshr"(%arg5, %31) : (i32, i32) -> i32
    %34 = "llvm.xor"(%33, %32) : (i32, i32) -> i32
    "llvm.return"(%34) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "test6", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i64):
    %27 = "llvm.mlir.constant"() <{value = 54 : i64}> : () -> i64
    %28 = "llvm.mlir.constant"() <{value = 1024 : i64}> : () -> i64
    %29 = "llvm.lshr"(%arg4, %27) : (i64, i64) -> i64
    %30 = "llvm.xor"(%29, %28) : (i64, i64) -> i64
    "llvm.return"(%30) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "test7", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: i32):
    %25 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %26 = "llvm.or"(%arg3, %25) <{isDisjoint}> : (i32, i32) -> i32
    "llvm.return"(%26) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<void (ptr, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "pr128468", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: !llvm.ptr, %arg1: i32, %arg2: i32):
    %0 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %2 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %3 = "llvm.shl"(%arg1, %0) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %4 = "llvm.or"(%3, %0) <{isDisjoint}> : (i32, i32) -> i32
    %5 = "llvm.sext"(%4) : (i32) -> i64
    %6 = "llvm.getelementptr"(%arg0, %5) <{elem_type = i32, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %7 = "llvm.load"(%6) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %8 = "llvm.icmp"(%7, %1) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %9 = "llvm.icmp"(%4, %arg1) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %10 = "llvm.or"(%8, %9) : (i1, i1) -> i1
    "llvm.cond_br"(%10, %4, %6, %arg1)[^bb2, ^bb1] <{operandSegmentSizes = array<i32: 1, 0, 3>}> : (i1, i32, !llvm.ptr, i32) -> ()
  ^bb1(%11: i32, %12: !llvm.ptr, %13: i32):  // 2 preds: ^bb0, ^bb1
    %14 = "llvm.sext"(%13) : (i32) -> i64
    %15 = "llvm.getelementptr"(%arg0, %14) <{elem_type = i32, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %16 = "llvm.load"(%15) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.store"(%16, %12) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %17 = "llvm.shl"(%11, %0) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %18 = "llvm.or"(%17, %0) <{isDisjoint}> : (i32, i32) -> i32
    %19 = "llvm.sext"(%18) : (i32) -> i64
    %20 = "llvm.getelementptr"(%arg0, %19) <{elem_type = i32, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %21 = "llvm.load"(%20) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %22 = "llvm.icmp"(%21, %2) <{predicate = 2 : i64}> : (i32, i32) -> i1
    %23 = "llvm.select"(%22, %18, %11) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %24 = "llvm.icmp"(%23, %11) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%24, %23, %20, %11)[^bb2, ^bb1] <{operandSegmentSizes = array<i32: 1, 0, 3>}> : (i1, i32, !llvm.ptr, i32) -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

