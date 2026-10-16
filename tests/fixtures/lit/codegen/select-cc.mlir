"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {}], function_type = !llvm.func<i32 (i32, ptr)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "foo", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: i32, %arg11: !llvm.ptr):
    %10 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %11 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %12 = "llvm.mlir.constant"() <{value = 1024 : i32}> : () -> i32
    %13 = "llvm.mlir.constant"() <{value = 2046 : i32}> : () -> i32
    %14 = "llvm.load"(%arg11) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i32
    %15 = "llvm.icmp"(%arg10, %14) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %16 = "llvm.select"(%15, %arg10, %14) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %17 = "llvm.load"(%arg11) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i32
    %18 = "llvm.icmp"(%16, %17) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %19 = "llvm.select"(%18, %16, %17) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %20 = "llvm.load"(%arg11) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i32
    %21 = "llvm.icmp"(%19, %20) <{predicate = 8 : i64}> : (i32, i32) -> i1
    %22 = "llvm.select"(%21, %19, %20) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %23 = "llvm.load"(%arg11) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i32
    %24 = "llvm.icmp"(%22, %23) <{predicate = 9 : i64}> : (i32, i32) -> i1
    %25 = "llvm.select"(%24, %22, %23) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %26 = "llvm.load"(%arg11) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i32
    %27 = "llvm.icmp"(%25, %26) <{predicate = 6 : i64}> : (i32, i32) -> i1
    %28 = "llvm.select"(%27, %25, %26) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %29 = "llvm.load"(%arg11) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i32
    %30 = "llvm.icmp"(%28, %29) <{predicate = 7 : i64}> : (i32, i32) -> i1
    %31 = "llvm.select"(%30, %28, %29) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %32 = "llvm.load"(%arg11) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i32
    %33 = "llvm.icmp"(%31, %32) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %34 = "llvm.select"(%33, %31, %32) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %35 = "llvm.load"(%arg11) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i32
    %36 = "llvm.icmp"(%34, %35) <{predicate = 5 : i64}> : (i32, i32) -> i1
    %37 = "llvm.select"(%36, %34, %35) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %38 = "llvm.load"(%arg11) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i32
    %39 = "llvm.icmp"(%37, %38) <{predicate = 2 : i64}> : (i32, i32) -> i1
    %40 = "llvm.select"(%39, %37, %38) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %41 = "llvm.load"(%arg11) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i32
    %42 = "llvm.icmp"(%40, %41) <{predicate = 3 : i64}> : (i32, i32) -> i1
    %43 = "llvm.select"(%42, %40, %41) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %44 = "llvm.load"(%arg11) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i32
    %45 = "llvm.icmp"(%44, %10) <{predicate = 2 : i64}> : (i32, i32) -> i1
    %46 = "llvm.select"(%45, %43, %44) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %47 = "llvm.load"(%arg11) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i32
    %48 = "llvm.icmp"(%44, %11) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %49 = "llvm.select"(%48, %46, %47) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %50 = "llvm.load"(%arg11) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i32
    %51 = "llvm.icmp"(%50, %12) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %52 = "llvm.select"(%51, %49, %50) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %53 = "llvm.load"(%arg11) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i32
    %54 = "llvm.icmp"(%44, %13) <{predicate = 8 : i64}> : (i32, i32) -> i1
    %55 = "llvm.select"(%54, %52, %53) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%55) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<i16 (i16, i16, i16, i16)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "numsignbits", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: i16, %arg7: i16, %arg8: i16, %arg9: i16):
    %6 = "llvm.mlir.constant"() <{value = 0 : i16}> : () -> i16
    %7 = "llvm.icmp"(%arg6, %6) <{predicate = 0 : i64}> : (i16, i16) -> i1
    %8 = "llvm.select"(%7, %arg9, %arg8) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i16, i16) -> i16
    %9 = "llvm.icmp"(%arg7, %6) <{predicate = 0 : i64}> : (i16, i16) -> i1
    "llvm.cond_br"(%9)[^bb2, ^bb1] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"(%8) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, arg_attrs = [{llvm.signext}], callee = @bar, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (i16) -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"(%8) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<void (i16)>, linkage = #llvm.linkage<external>, sym_name = "bar", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_sge_int16min", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: i32, %arg4: i32, %arg5: i32):
    %3 = "llvm.mlir.constant"() <{value = -65536 : i32}> : () -> i32
    %4 = "llvm.icmp"(%arg3, %3) <{predicate = 5 : i64}> : (i32, i32) -> i1
    %5 = "llvm.select"(%4, %arg4, %arg5) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%5) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "select_sge_int32min", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i64, %arg1: i64, %arg2: i64):
    %0 = "llvm.mlir.constant"() <{value = -2147483648 : i64}> : () -> i64
    %1 = "llvm.icmp"(%arg0, %0) <{predicate = 5 : i64}> : (i64, i64) -> i1
    %2 = "llvm.select"(%1, %arg1, %arg2) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%2) : (i64) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

