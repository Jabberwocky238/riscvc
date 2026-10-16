"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, passthrough = ["minsize"], sym_name = "ne_small_pos", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg23: i32):
    %115 = "llvm.mlir.constant"() <{value = 20 : i32}> : () -> i32
    %116 = "llvm.mlir.constant"() <{value = -99 : i32}> : () -> i32
    %117 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %118 = "llvm.icmp"(%arg23, %115) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %119 = "llvm.select"(%118, %116, %117) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%119) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, passthrough = ["minsize"], sym_name = "ne_small_neg", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg22: i32):
    %110 = "llvm.mlir.constant"() <{value = -20 : i32}> : () -> i32
    %111 = "llvm.mlir.constant"() <{value = -99 : i32}> : () -> i32
    %112 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %113 = "llvm.icmp"(%arg22, %110) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %114 = "llvm.select"(%113, %111, %112) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%114) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, passthrough = ["minsize"], sym_name = "ne_small_edge_pos", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg21: i32):
    %105 = "llvm.mlir.constant"() <{value = 31 : i32}> : () -> i32
    %106 = "llvm.mlir.constant"() <{value = -99 : i32}> : () -> i32
    %107 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %108 = "llvm.icmp"(%arg21, %105) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %109 = "llvm.select"(%108, %106, %107) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%109) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, passthrough = ["minsize"], sym_name = "ne_small_edge_neg", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg20: i32):
    %100 = "llvm.mlir.constant"() <{value = -32 : i32}> : () -> i32
    %101 = "llvm.mlir.constant"() <{value = -99 : i32}> : () -> i32
    %102 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %103 = "llvm.icmp"(%arg20, %100) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %104 = "llvm.select"(%103, %101, %102) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%104) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, passthrough = ["minsize"], sym_name = "ne_medium_ledge_pos", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg19: i32):
    %95 = "llvm.mlir.constant"() <{value = 33 : i32}> : () -> i32
    %96 = "llvm.mlir.constant"() <{value = -99 : i32}> : () -> i32
    %97 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %98 = "llvm.icmp"(%arg19, %95) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %99 = "llvm.select"(%98, %96, %97) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%99) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, passthrough = ["minsize"], sym_name = "ne_medium_ledge_neg", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg18: i32):
    %90 = "llvm.mlir.constant"() <{value = -33 : i32}> : () -> i32
    %91 = "llvm.mlir.constant"() <{value = -99 : i32}> : () -> i32
    %92 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %93 = "llvm.icmp"(%arg18, %90) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %94 = "llvm.select"(%93, %91, %92) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%94) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, passthrough = ["minsize"], sym_name = "ne_medium_pos", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg17: i32):
    %85 = "llvm.mlir.constant"() <{value = 63 : i32}> : () -> i32
    %86 = "llvm.mlir.constant"() <{value = -99 : i32}> : () -> i32
    %87 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %88 = "llvm.icmp"(%arg17, %85) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %89 = "llvm.select"(%88, %86, %87) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%89) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, passthrough = ["minsize"], sym_name = "ne_medium_neg", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg16: i32):
    %80 = "llvm.mlir.constant"() <{value = -63 : i32}> : () -> i32
    %81 = "llvm.mlir.constant"() <{value = -99 : i32}> : () -> i32
    %82 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %83 = "llvm.icmp"(%arg16, %80) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %84 = "llvm.select"(%83, %81, %82) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%84) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, passthrough = ["minsize"], sym_name = "ne_medium_bedge_pos", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg15: i32):
    %75 = "llvm.mlir.constant"() <{value = 2047 : i32}> : () -> i32
    %76 = "llvm.mlir.constant"() <{value = -99 : i32}> : () -> i32
    %77 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %78 = "llvm.icmp"(%arg15, %75) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %79 = "llvm.select"(%78, %76, %77) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%79) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, passthrough = ["minsize"], sym_name = "ne_medium_bedge_neg", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: i32):
    %70 = "llvm.mlir.constant"() <{value = -2047 : i32}> : () -> i32
    %71 = "llvm.mlir.constant"() <{value = -99 : i32}> : () -> i32
    %72 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %73 = "llvm.icmp"(%arg14, %70) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %74 = "llvm.select"(%73, %71, %72) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%74) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, passthrough = ["minsize"], sym_name = "ne_big_ledge_pos", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg13: i32):
    %65 = "llvm.mlir.constant"() <{value = 2048 : i32}> : () -> i32
    %66 = "llvm.mlir.constant"() <{value = -99 : i32}> : () -> i32
    %67 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %68 = "llvm.icmp"(%arg13, %65) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %69 = "llvm.select"(%68, %66, %67) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%69) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, passthrough = ["minsize"], sym_name = "ne_big_ledge_neg", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: i32):
    %60 = "llvm.mlir.constant"() <{value = -2048 : i32}> : () -> i32
    %61 = "llvm.mlir.constant"() <{value = -99 : i32}> : () -> i32
    %62 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %63 = "llvm.icmp"(%arg12, %60) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %64 = "llvm.select"(%63, %61, %62) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%64) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, passthrough = ["minsize"], sym_name = "eq_small_pos", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg11: i32):
    %55 = "llvm.mlir.constant"() <{value = 20 : i32}> : () -> i32
    %56 = "llvm.mlir.constant"() <{value = -99 : i32}> : () -> i32
    %57 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %58 = "llvm.icmp"(%arg11, %55) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %59 = "llvm.select"(%58, %56, %57) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%59) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, passthrough = ["minsize"], sym_name = "eq_small_neg", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: i32):
    %50 = "llvm.mlir.constant"() <{value = -20 : i32}> : () -> i32
    %51 = "llvm.mlir.constant"() <{value = -99 : i32}> : () -> i32
    %52 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %53 = "llvm.icmp"(%arg10, %50) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %54 = "llvm.select"(%53, %51, %52) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%54) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, passthrough = ["minsize"], sym_name = "eq_small_edge_pos", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: i32):
    %45 = "llvm.mlir.constant"() <{value = 31 : i32}> : () -> i32
    %46 = "llvm.mlir.constant"() <{value = -99 : i32}> : () -> i32
    %47 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %48 = "llvm.icmp"(%arg9, %45) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %49 = "llvm.select"(%48, %46, %47) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%49) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, passthrough = ["minsize"], sym_name = "eq_small_edge_neg", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: i32):
    %40 = "llvm.mlir.constant"() <{value = -32 : i32}> : () -> i32
    %41 = "llvm.mlir.constant"() <{value = -99 : i32}> : () -> i32
    %42 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %43 = "llvm.icmp"(%arg8, %40) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %44 = "llvm.select"(%43, %41, %42) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%44) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, passthrough = ["minsize"], sym_name = "eq_medium_ledge_pos", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg7: i32):
    %35 = "llvm.mlir.constant"() <{value = 33 : i32}> : () -> i32
    %36 = "llvm.mlir.constant"() <{value = -99 : i32}> : () -> i32
    %37 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %38 = "llvm.icmp"(%arg7, %35) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %39 = "llvm.select"(%38, %36, %37) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%39) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, passthrough = ["minsize"], sym_name = "eq_medium_ledge_neg", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: i32):
    %30 = "llvm.mlir.constant"() <{value = -33 : i32}> : () -> i32
    %31 = "llvm.mlir.constant"() <{value = -99 : i32}> : () -> i32
    %32 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %33 = "llvm.icmp"(%arg6, %30) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %34 = "llvm.select"(%33, %31, %32) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%34) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, passthrough = ["minsize"], sym_name = "eq_medium_pos", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: i32):
    %25 = "llvm.mlir.constant"() <{value = 63 : i32}> : () -> i32
    %26 = "llvm.mlir.constant"() <{value = -99 : i32}> : () -> i32
    %27 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %28 = "llvm.icmp"(%arg5, %25) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %29 = "llvm.select"(%28, %26, %27) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%29) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, passthrough = ["minsize"], sym_name = "eq_medium_neg", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i32):
    %20 = "llvm.mlir.constant"() <{value = -63 : i32}> : () -> i32
    %21 = "llvm.mlir.constant"() <{value = -99 : i32}> : () -> i32
    %22 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %23 = "llvm.icmp"(%arg4, %20) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %24 = "llvm.select"(%23, %21, %22) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%24) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, passthrough = ["minsize"], sym_name = "eq_medium_bedge_pos", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: i32):
    %15 = "llvm.mlir.constant"() <{value = 2047 : i32}> : () -> i32
    %16 = "llvm.mlir.constant"() <{value = -99 : i32}> : () -> i32
    %17 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %18 = "llvm.icmp"(%arg3, %15) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %19 = "llvm.select"(%18, %16, %17) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%19) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, passthrough = ["minsize"], sym_name = "eq_medium_bedge_neg", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i32):
    %10 = "llvm.mlir.constant"() <{value = -2047 : i32}> : () -> i32
    %11 = "llvm.mlir.constant"() <{value = -99 : i32}> : () -> i32
    %12 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %13 = "llvm.icmp"(%arg2, %10) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %14 = "llvm.select"(%13, %11, %12) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%14) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, passthrough = ["minsize"], sym_name = "eq_big_ledge_pos", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: i32):
    %5 = "llvm.mlir.constant"() <{value = 2048 : i32}> : () -> i32
    %6 = "llvm.mlir.constant"() <{value = -99 : i32}> : () -> i32
    %7 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %8 = "llvm.icmp"(%arg1, %5) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %9 = "llvm.select"(%8, %6, %7) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%9) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, passthrough = ["minsize"], sym_name = "eq_big_ledge_neg", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i32):
    %0 = "llvm.mlir.constant"() <{value = -2048 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = -99 : i32}> : () -> i32
    %2 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %3 = "llvm.icmp"(%arg0, %0) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %4 = "llvm.select"(%3, %1, %2) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%4) : (i32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

