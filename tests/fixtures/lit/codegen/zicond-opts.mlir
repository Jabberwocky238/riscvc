"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "icmp_and", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg34: i64, %arg35: i64):
    %64 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %65 = "llvm.icmp"(%arg35, %64) <{predicate = 1 : i64}> : (i64, i64) -> i1
    %66 = "llvm.icmp"(%arg34, %64) <{predicate = 1 : i64}> : (i64, i64) -> i1
    %67 = "llvm.and"(%66, %65) : (i1, i1) -> i1
    %68 = "llvm.zext"(%67) : (i1) -> i32
    "llvm.return"(%68) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "icmp_and_x_multiple_uses", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg32: i64, %arg33: i64):
    %57 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %58 = "llvm.icmp"(%arg33, %57) <{predicate = 1 : i64}> : (i64, i64) -> i1
    %59 = "llvm.icmp"(%arg32, %57) <{predicate = 1 : i64}> : (i64, i64) -> i1
    %60 = "llvm.and"(%59, %58) : (i1, i1) -> i1
    %61 = "llvm.zext"(%60) : (i1) -> i32
    %62 = "llvm.zext"(%59) : (i1) -> i32
    %63 = "llvm.add"(%61, %62) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%63) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "icmp_and_y_multiple_uses", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg30: i64, %arg31: i64):
    %50 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %51 = "llvm.icmp"(%arg31, %50) <{predicate = 1 : i64}> : (i64, i64) -> i1
    %52 = "llvm.icmp"(%arg30, %50) <{predicate = 1 : i64}> : (i64, i64) -> i1
    %53 = "llvm.and"(%52, %51) : (i1, i1) -> i1
    %54 = "llvm.zext"(%53) : (i1) -> i32
    %55 = "llvm.zext"(%51) : (i1) -> i32
    %56 = "llvm.add"(%54, %55) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%56) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "icmp_and_xy_multiple_uses", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg28: i64, %arg29: i64):
    %41 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %42 = "llvm.icmp"(%arg29, %41) <{predicate = 1 : i64}> : (i64, i64) -> i1
    %43 = "llvm.icmp"(%arg28, %41) <{predicate = 1 : i64}> : (i64, i64) -> i1
    %44 = "llvm.and"(%43, %42) : (i1, i1) -> i1
    %45 = "llvm.zext"(%44) : (i1) -> i32
    %46 = "llvm.zext"(%42) : (i1) -> i32
    %47 = "llvm.zext"(%43) : (i1) -> i32
    %48 = "llvm.add"(%45, %46) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %49 = "llvm.add"(%48, %47) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%49) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i64, i64, i32)>, linkage = #llvm.linkage<external>, sym_name = "icmp_and_select", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg25: i64, %arg26: i64, %arg27: i32):
    %35 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %36 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %37 = "llvm.icmp"(%arg26, %35) <{predicate = 4 : i64}> : (i64, i64) -> i1
    %38 = "llvm.icmp"(%arg25, %35) <{predicate = 1 : i64}> : (i64, i64) -> i1
    %39 = "llvm.and"(%38, %37) : (i1, i1) -> i1
    %40 = "llvm.select"(%39, %arg27, %36) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%40) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "icmp_and_and", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg22: i64, %arg23: i64, %arg24: i64):
    %28 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %29 = "llvm.icmp"(%arg23, %28) <{predicate = 1 : i64}> : (i64, i64) -> i1
    %30 = "llvm.icmp"(%arg22, %28) <{predicate = 1 : i64}> : (i64, i64) -> i1
    %31 = "llvm.and"(%29, %30) : (i1, i1) -> i1
    %32 = "llvm.icmp"(%arg24, %28) <{predicate = 1 : i64}> : (i64, i64) -> i1
    %33 = "llvm.and"(%32, %31) : (i1, i1) -> i1
    %34 = "llvm.zext"(%33) : (i1) -> i32
    "llvm.return"(%34) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i1)>, linkage = #llvm.linkage<external>, sym_name = "rotate_l_nez", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg19: i64, %arg20: i64, %arg21: i1):
    %26 = "llvm.intr.fshl"(%arg19, %arg19, %arg20) : (i64, i64, i64) -> i64
    %27 = "llvm.select"(%arg21, %arg19, %26) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%27) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i1)>, linkage = #llvm.linkage<external>, sym_name = "rotate_l_eqz", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg16: i64, %arg17: i64, %arg18: i1):
    %24 = "llvm.intr.fshl"(%arg16, %arg16, %arg17) : (i64, i64, i64) -> i64
    %25 = "llvm.select"(%arg18, %24, %arg16) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%25) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i1)>, linkage = #llvm.linkage<external>, sym_name = "select_imm_reg", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: i64, %arg15: i1):
    %22 = "llvm.mlir.constant"() <{value = 3 : i64}> : () -> i64
    %23 = "llvm.select"(%arg15, %22, %arg14) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%23) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i1)>, linkage = #llvm.linkage<external>, sym_name = "select_reg_imm", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: i64, %arg13: i1):
    %20 = "llvm.mlir.constant"() <{value = 3 : i64}> : () -> i64
    %21 = "llvm.select"(%arg13, %arg12, %20) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%21) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i1)>, linkage = #llvm.linkage<external>, sym_name = "select_imm_reg_neg_2048", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: i64, %arg11: i1):
    %18 = "llvm.mlir.constant"() <{value = -2048 : i64}> : () -> i64
    %19 = "llvm.select"(%arg11, %18, %arg10) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%19) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i1)>, linkage = #llvm.linkage<external>, sym_name = "select_imm_reg_2048", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: i64, %arg9: i1):
    %16 = "llvm.mlir.constant"() <{value = 2048 : i64}> : () -> i64
    %17 = "llvm.select"(%arg9, %16, %arg8) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%17) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i1)>, linkage = #llvm.linkage<external>, sym_name = "test_inv_and_nez", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: i64, %arg6: i64, %arg7: i1):
    %12 = "llvm.mlir.constant"() <{value = -1 : i64}> : () -> i64
    %13 = "llvm.xor"(%arg6, %12) : (i64, i64) -> i64
    %14 = "llvm.select"(%arg7, %13, %12) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    %15 = "llvm.and"(%14, %arg5) : (i64, i64) -> i64
    "llvm.return"(%15) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i1)>, linkage = #llvm.linkage<external>, sym_name = "test_inv_and_eqz", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i64, %arg3: i64, %arg4: i1):
    %8 = "llvm.mlir.constant"() <{value = -1 : i64}> : () -> i64
    %9 = "llvm.xor"(%arg3, %8) : (i64, i64) -> i64
    %10 = "llvm.select"(%arg4, %8, %9) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    %11 = "llvm.and"(%10, %arg2) : (i64, i64) -> i64
    "llvm.return"(%11) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i1)>, linkage = #llvm.linkage<external>, sym_name = "pr166596", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i32, %arg1: i1):
    %0 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = -9 : i32}> : () -> i32
    %2 = "llvm.xor"(%arg0, %0) : (i32, i32) -> i32
    %3 = "llvm.trunc"(%2) <{overflowFlags = 0 : i32}> : (i32) -> i16
    %4 = "llvm.zext"(%3) : (i16) -> i64
    %5 = "llvm.intr.ctlz"(%4) <{is_zero_poison = false}> : (i64) -> i64
    %6 = "llvm.trunc"(%5) <{overflowFlags = 0 : i32}> : (i64) -> i32
    %7 = "llvm.select"(%arg1, %1, %6) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%7) : (i32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

