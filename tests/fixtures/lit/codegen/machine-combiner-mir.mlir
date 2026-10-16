"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64, f64, f64, f64)>, linkage = #llvm.linkage<external>, sym_name = "test_reassoc_fadd1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg23: f64, %arg24: f64, %arg25: f64, %arg26: f64):
    %18 = "llvm.fadd"(%arg23, %arg24) <{fastmathFlags = #llvm.fastmath<nsz, reassoc>}> : (f64, f64) -> f64
    %19 = "llvm.fadd"(%18, %arg25) <{fastmathFlags = #llvm.fastmath<nsz, reassoc>}> : (f64, f64) -> f64
    %20 = "llvm.fadd"(%19, %arg26) <{fastmathFlags = #llvm.fastmath<nsz, reassoc>}> : (f64, f64) -> f64
    "llvm.return"(%20) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64, f64, f64, f64)>, linkage = #llvm.linkage<external>, sym_name = "test_reassoc_fmul1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg19: f64, %arg20: f64, %arg21: f64, %arg22: f64):
    %15 = "llvm.fmul"(%arg19, %arg20) <{fastmathFlags = #llvm.fastmath<nsz, reassoc>}> : (f64, f64) -> f64
    %16 = "llvm.fmul"(%15, %arg21) <{fastmathFlags = #llvm.fastmath<nsz, reassoc>}> : (f64, f64) -> f64
    %17 = "llvm.fmul"(%16, %arg22) <{fastmathFlags = #llvm.fastmath<nsz, reassoc>}> : (f64, f64) -> f64
    "llvm.return"(%17) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64, f64, f64, f64)>, linkage = #llvm.linkage<external>, sym_name = "test_reassoc_flags1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg15: f64, %arg16: f64, %arg17: f64, %arg18: f64):
    %12 = "llvm.fadd"(%arg15, %arg16) <{fastmathFlags = #llvm.fastmath<nsz, reassoc>}> : (f64, f64) -> f64
    %13 = "llvm.fadd"(%12, %arg17) <{fastmathFlags = #llvm.fastmath<nsz, contract, reassoc>}> : (f64, f64) -> f64
    %14 = "llvm.fadd"(%13, %arg18) <{fastmathFlags = #llvm.fastmath<nsz, reassoc>}> : (f64, f64) -> f64
    "llvm.return"(%14) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64, f64, f64, f64)>, linkage = #llvm.linkage<external>, sym_name = "test_reassoc_flags2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg11: f64, %arg12: f64, %arg13: f64, %arg14: f64):
    %9 = "llvm.fadd"(%arg11, %arg12) <{fastmathFlags = #llvm.fastmath<nsz, reassoc>}> : (f64, f64) -> f64
    %10 = "llvm.fadd"(%9, %arg13) <{fastmathFlags = #llvm.fastmath<nsz, contract, reassoc>}> : (f64, f64) -> f64
    %11 = "llvm.fadd"(%10, %arg14) <{fastmathFlags = #llvm.fastmath<nsz, contract, reassoc>}> : (f64, f64) -> f64
    "llvm.return"(%11) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64, f64, f64)>, linkage = #llvm.linkage<external>, sym_name = "test_fmadd", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: f64, %arg9: f64, %arg10: f64):
    %6 = "llvm.fmul"(%arg8, %arg9) <{fastmathFlags = #llvm.fastmath<contract>}> : (f64, f64) -> f64
    %7 = "llvm.fadd"(%6, %arg10) <{fastmathFlags = #llvm.fastmath<contract>}> : (f64, f64) -> f64
    %8 = "llvm.fdiv"(%7, %6) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.return"(%8) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "test_or_flags", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64):
    %3 = "llvm.or"(%arg4, %arg5) : (i64, i64) -> i64
    %4 = "llvm.or"(%3, %arg6) <{isDisjoint}> : (i64, i64) -> i64
    %5 = "llvm.or"(%4, %arg7) <{isDisjoint}> : (i64, i64) -> i64
    "llvm.return"(%5) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "test_add_flags", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i64, %arg1: i64, %arg2: i64, %arg3: i64):
    %0 = "llvm.add"(%arg0, %arg1) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %1 = "llvm.add"(%0, %arg2) <{overflowFlags = 1 : i32}> : (i64, i64) -> i64
    %2 = "llvm.add"(%1, %arg3) <{overflowFlags = 2 : i32}> : (i64, i64) -> i64
    "llvm.return"(%2) : (i64) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

