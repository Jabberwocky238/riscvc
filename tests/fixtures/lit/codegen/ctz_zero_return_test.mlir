"builtin.module"() ({
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 4 : i64, global_type = i32, linkage = #llvm.linkage<external>, sym_name = "global_x", unnamed_addr = 0 : i64, value = 0 : i32, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "ctz_dereferencing_pointer", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg13: !llvm.ptr):
    %59 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %60 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %61 = "llvm.load"(%arg13) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    %62 = "llvm.intr.cttz"(%61) <{is_zero_poison = true}> : (i64) -> i64
    %63 = "llvm.icmp"(%61, %59) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %64 = "llvm.trunc"(%62) <{overflowFlags = 0 : i32}> : (i64) -> i32
    %65 = "llvm.select"(%63, %60, %64) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%65) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "ctz_dereferencing_pointer_zext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: !llvm.ptr):
    %52 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %53 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %54 = "llvm.load"(%arg12) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %55 = "llvm.intr.cttz"(%54) <{is_zero_poison = true}> : (i32) -> i32
    %56 = "llvm.icmp"(%54, %52) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %57 = "llvm.zext"(%55) : (i32) -> i64
    %58 = "llvm.select"(%56, %53, %57) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%58) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "ctz1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg11: i32):
    %48 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %49 = "llvm.intr.cttz"(%arg11) <{is_zero_poison = true}> : (i32) -> i32
    %50 = "llvm.icmp"(%arg11, %48) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %51 = "llvm.select"(%50, %48, %49) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%51) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "ctz1_flipped", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: i32):
    %44 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %45 = "llvm.intr.cttz"(%arg10) <{is_zero_poison = true}> : (i32) -> i32
    %46 = "llvm.icmp"(%arg10, %44) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %47 = "llvm.select"(%46, %45, %44) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%47) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "ctz2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: i32):
    %43 = "llvm.intr.cttz"(%arg9) <{is_zero_poison = false}> : (i32) -> i32
    "llvm.return"(%43) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "ctz3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: i32):
    %42 = "llvm.intr.cttz"(%arg8) <{is_zero_poison = false}> : (i32) -> i32
    "llvm.return"(%42) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i64)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "ctz4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg7: i64):
    %36 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %37 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %38 = "llvm.intr.cttz"(%arg7) <{is_zero_poison = true}> : (i64) -> i64
    %39 = "llvm.icmp"(%arg7, %36) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %40 = "llvm.trunc"(%38) <{overflowFlags = 0 : i32}> : (i64) -> i32
    %41 = "llvm.select"(%39, %37, %40) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%41) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i64)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "ctlz", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: i64):
    %30 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %31 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %32 = "llvm.intr.ctlz"(%arg6) <{is_zero_poison = true}> : (i64) -> i64
    %33 = "llvm.icmp"(%arg6, %30) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %34 = "llvm.trunc"(%32) <{overflowFlags = 0 : i32}> : (i64) -> i32
    %35 = "llvm.select"(%33, %31, %34) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%35) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "ctz5", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: i32):
    %26 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %27 = "llvm.intr.cttz"(%arg5) <{is_zero_poison = true}> : (i32) -> i32
    %28 = "llvm.icmp"(%arg5, %26) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %29 = "llvm.select"(%28, %26, %27) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%29) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "ctz6", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i32):
    %22 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %23 = "llvm.intr.cttz"(%arg4) <{is_zero_poison = true}> : (i32) -> i32
    %24 = "llvm.icmp"(%arg4, %22) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %25 = "llvm.select"(%24, %22, %23) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%25) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "globalVar", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %16 = "llvm.mlir.addressof"() <{global_name = @global_x}> : () -> !llvm.ptr
    %17 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %18 = "llvm.load"(%16) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %19 = "llvm.intr.cttz"(%18) <{is_zero_poison = true}> : (i32) -> i32
    %20 = "llvm.icmp"(%18, %17) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %21 = "llvm.select"(%20, %17, %19) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%21) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i7 (i7)>, linkage = #llvm.linkage<external>, sym_name = "test_cttz_select_i7", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: i7):
    %12 = "llvm.mlir.constant"() <{value = 0 : i7}> : () -> i7
    %13 = "llvm.intr.cttz"(%arg3) <{is_zero_poison = false}> : (i7) -> i7
    %14 = "llvm.icmp"(%arg3, %12) <{predicate = 0 : i64}> : (i7, i7) -> i1
    %15 = "llvm.select"(%14, %12, %13) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i7, i7) -> i7
    "llvm.return"(%15) : (i7) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i10 (i10)>, linkage = #llvm.linkage<external>, sym_name = "test_ctlz_select_i10", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i10):
    %8 = "llvm.mlir.constant"() <{value = 0 : i10}> : () -> i10
    %9 = "llvm.intr.ctlz"(%arg2) <{is_zero_poison = false}> : (i10) -> i10
    %10 = "llvm.icmp"(%arg2, %8) <{predicate = 0 : i64}> : (i10, i10) -> i1
    %11 = "llvm.select"(%10, %8, %9) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i10, i10) -> i10
    "llvm.return"(%11) : (i10) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16)>, linkage = #llvm.linkage<external>, sym_name = "test_ctlz_select_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: i16):
    %4 = "llvm.mlir.constant"() <{value = 0 : i16}> : () -> i16
    %5 = "llvm.intr.cttz"(%arg1) <{is_zero_poison = false}> : (i16) -> i16
    %6 = "llvm.icmp"(%arg1, %4) <{predicate = 0 : i64}> : (i16, i16) -> i1
    %7 = "llvm.select"(%6, %4, %5) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i16, i16) -> i16
    "llvm.return"(%7) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "test_ctlz_select_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i32):
    %0 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "llvm.intr.ctlz"(%arg0) <{is_zero_poison = false}> : (i32) -> i32
    %2 = "llvm.icmp"(%arg0, %0) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %3 = "llvm.select"(%2, %0, %1) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%3) : (i32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

