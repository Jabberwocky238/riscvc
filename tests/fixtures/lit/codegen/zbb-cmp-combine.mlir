"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "ulo", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg54: i64, %arg55: i64, %arg56: i64):
    %55 = "llvm.icmp"(%arg55, %arg54) <{predicate = 6 : i64}> : (i64, i64) -> i1
    %56 = "llvm.icmp"(%arg56, %arg54) <{predicate = 6 : i64}> : (i64, i64) -> i1
    %57 = "llvm.or"(%55, %56) : (i1, i1) -> i1
    "llvm.return"(%57) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "ulo_swap1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg51: i64, %arg52: i64, %arg53: i64):
    %52 = "llvm.icmp"(%arg51, %arg52) <{predicate = 8 : i64}> : (i64, i64) -> i1
    %53 = "llvm.icmp"(%arg53, %arg51) <{predicate = 6 : i64}> : (i64, i64) -> i1
    %54 = "llvm.or"(%52, %53) : (i1, i1) -> i1
    "llvm.return"(%54) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "ulo_swap2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg48: i64, %arg49: i64, %arg50: i64):
    %49 = "llvm.icmp"(%arg49, %arg48) <{predicate = 6 : i64}> : (i64, i64) -> i1
    %50 = "llvm.icmp"(%arg48, %arg50) <{predicate = 8 : i64}> : (i64, i64) -> i1
    %51 = "llvm.or"(%49, %50) : (i1, i1) -> i1
    "llvm.return"(%51) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "ulo_swap12", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg45: i64, %arg46: i64, %arg47: i64):
    %46 = "llvm.icmp"(%arg45, %arg46) <{predicate = 8 : i64}> : (i64, i64) -> i1
    %47 = "llvm.icmp"(%arg45, %arg47) <{predicate = 8 : i64}> : (i64, i64) -> i1
    %48 = "llvm.or"(%46, %47) : (i1, i1) -> i1
    "llvm.return"(%48) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "ula", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg42: i64, %arg43: i64, %arg44: i64):
    %43 = "llvm.icmp"(%arg43, %arg42) <{predicate = 6 : i64}> : (i64, i64) -> i1
    %44 = "llvm.icmp"(%arg44, %arg42) <{predicate = 6 : i64}> : (i64, i64) -> i1
    %45 = "llvm.and"(%43, %44) : (i1, i1) -> i1
    "llvm.return"(%45) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "ula_swap1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg39: i64, %arg40: i64, %arg41: i64):
    %40 = "llvm.icmp"(%arg39, %arg40) <{predicate = 8 : i64}> : (i64, i64) -> i1
    %41 = "llvm.icmp"(%arg41, %arg39) <{predicate = 6 : i64}> : (i64, i64) -> i1
    %42 = "llvm.and"(%40, %41) : (i1, i1) -> i1
    "llvm.return"(%42) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "ula_swap2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg36: i64, %arg37: i64, %arg38: i64):
    %37 = "llvm.icmp"(%arg37, %arg36) <{predicate = 6 : i64}> : (i64, i64) -> i1
    %38 = "llvm.icmp"(%arg36, %arg38) <{predicate = 8 : i64}> : (i64, i64) -> i1
    %39 = "llvm.and"(%37, %38) : (i1, i1) -> i1
    "llvm.return"(%39) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "ula_swap12", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg33: i64, %arg34: i64, %arg35: i64):
    %34 = "llvm.icmp"(%arg33, %arg34) <{predicate = 8 : i64}> : (i64, i64) -> i1
    %35 = "llvm.icmp"(%arg33, %arg35) <{predicate = 8 : i64}> : (i64, i64) -> i1
    %36 = "llvm.and"(%34, %35) : (i1, i1) -> i1
    "llvm.return"(%36) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "ugo", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg30: i64, %arg31: i64, %arg32: i64):
    %31 = "llvm.icmp"(%arg31, %arg30) <{predicate = 8 : i64}> : (i64, i64) -> i1
    %32 = "llvm.icmp"(%arg32, %arg30) <{predicate = 8 : i64}> : (i64, i64) -> i1
    %33 = "llvm.or"(%31, %32) : (i1, i1) -> i1
    "llvm.return"(%33) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "ugo_swap1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg27: i64, %arg28: i64, %arg29: i64):
    %28 = "llvm.icmp"(%arg27, %arg28) <{predicate = 6 : i64}> : (i64, i64) -> i1
    %29 = "llvm.icmp"(%arg29, %arg27) <{predicate = 8 : i64}> : (i64, i64) -> i1
    %30 = "llvm.or"(%28, %29) : (i1, i1) -> i1
    "llvm.return"(%30) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "ugo_swap2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg24: i64, %arg25: i64, %arg26: i64):
    %25 = "llvm.icmp"(%arg25, %arg24) <{predicate = 8 : i64}> : (i64, i64) -> i1
    %26 = "llvm.icmp"(%arg24, %arg26) <{predicate = 6 : i64}> : (i64, i64) -> i1
    %27 = "llvm.or"(%25, %26) : (i1, i1) -> i1
    "llvm.return"(%27) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "ugo_swap12", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg21: i64, %arg22: i64, %arg23: i64):
    %22 = "llvm.icmp"(%arg21, %arg22) <{predicate = 6 : i64}> : (i64, i64) -> i1
    %23 = "llvm.icmp"(%arg21, %arg23) <{predicate = 6 : i64}> : (i64, i64) -> i1
    %24 = "llvm.or"(%22, %23) : (i1, i1) -> i1
    "llvm.return"(%24) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "ugea", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg18: i64, %arg19: i64, %arg20: i64):
    %19 = "llvm.icmp"(%arg19, %arg18) <{predicate = 9 : i64}> : (i64, i64) -> i1
    %20 = "llvm.icmp"(%arg20, %arg18) <{predicate = 9 : i64}> : (i64, i64) -> i1
    %21 = "llvm.and"(%19, %20) : (i1, i1) -> i1
    "llvm.return"(%21) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "uga", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg15: i64, %arg16: i64, %arg17: i64):
    %16 = "llvm.icmp"(%arg16, %arg15) <{predicate = 8 : i64}> : (i64, i64) -> i1
    %17 = "llvm.icmp"(%arg17, %arg15) <{predicate = 8 : i64}> : (i64, i64) -> i1
    %18 = "llvm.and"(%16, %17) : (i1, i1) -> i1
    "llvm.return"(%18) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "sla", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: i64, %arg13: i64, %arg14: i64):
    %13 = "llvm.icmp"(%arg13, %arg12) <{predicate = 2 : i64}> : (i64, i64) -> i1
    %14 = "llvm.icmp"(%arg14, %arg12) <{predicate = 2 : i64}> : (i64, i64) -> i1
    %15 = "llvm.and"(%13, %14) : (i1, i1) -> i1
    "llvm.return"(%15) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (f32, f32, f32)>, linkage = #llvm.linkage<external>, sym_name = "flo", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: f32, %arg10: f32, %arg11: f32):
    %10 = "llvm.fcmp"(%arg10, %arg9) <{fastmathFlags = #llvm.fastmath<none>, predicate = 11 : i64}> : (f32, f32) -> i1
    %11 = "llvm.fcmp"(%arg11, %arg9) <{fastmathFlags = #llvm.fastmath<none>, predicate = 11 : i64}> : (f32, f32) -> i1
    %12 = "llvm.or"(%10, %11) : (i1, i1) -> i1
    "llvm.return"(%12) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (f64, f64, f64)>, linkage = #llvm.linkage<external>, sym_name = "dlo", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: f64, %arg7: f64, %arg8: f64):
    %7 = "llvm.fcmp"(%arg7, %arg6) <{fastmathFlags = #llvm.fastmath<none>, predicate = 11 : i64}> : (f64, f64) -> i1
    %8 = "llvm.fcmp"(%arg8, %arg6) <{fastmathFlags = #llvm.fastmath<none>, predicate = 11 : i64}> : (f64, f64) -> i1
    %9 = "llvm.or"(%7, %8) : (i1, i1) -> i1
    "llvm.return"(%9) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "multi_user", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: i64, %arg4: i64, %arg5: i64):
    %3 = "llvm.icmp"(%arg3, %arg4) <{predicate = 8 : i64}> : (i64, i64) -> i1
    %4 = "llvm.icmp"(%arg5, %arg3) <{predicate = 6 : i64}> : (i64, i64) -> i1
    %5 = "llvm.or"(%3, %4) : (i1, i1) -> i1
    %6 = "llvm.and"(%3, %5) : (i1, i1) -> i1
    "llvm.return"(%6) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "no_same_ops", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i64, %arg1: i64, %arg2: i64):
    %0 = "llvm.icmp"(%arg0, %arg1) <{predicate = 6 : i64}> : (i64, i64) -> i1
    %1 = "llvm.icmp"(%arg0, %arg2) <{predicate = 8 : i64}> : (i64, i64) -> i1
    %2 = "llvm.or"(%0, %1) : (i1, i1) -> i1
    "llvm.return"(%2) : (i1) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

