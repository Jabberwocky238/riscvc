"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "simple_arith", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i32, %arg3: i32):
    %38 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %39 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %40 = "llvm.mlir.constant"() <{value = 7 : i32}> : () -> i32
    %41 = "llvm.mlir.constant"() <{value = 9 : i32}> : () -> i32
    %42 = "llvm.add"(%arg2, %38) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %43 = "llvm.and"(%42, %39) : (i32, i32) -> i32
    %44 = "llvm.shl"(%43, %40) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %45 = "llvm.ashr"(%arg3, %41) : (i32, i32) -> i32
    %46 = "llvm.add"(%44, %45) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %47 = "llvm.sub"(%46, %arg2) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%47) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, ptr)>, linkage = #llvm.linkage<external>, sym_name = "select", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i32, %arg1: !llvm.ptr):
    %7 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %8 = "llvm.load"(%arg1) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i32
    %9 = "llvm.icmp"(%7, %8) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %10 = "llvm.select"(%9, %arg0, %8) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %11 = "llvm.load"(%arg1) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i32
    %12 = "llvm.icmp"(%7, %11) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %13 = "llvm.select"(%12, %10, %11) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %14 = "llvm.load"(%arg1) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i32
    %15 = "llvm.icmp"(%13, %14) <{predicate = 8 : i64}> : (i32, i32) -> i1
    %16 = "llvm.select"(%15, %13, %14) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %17 = "llvm.load"(%arg1) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i32
    %18 = "llvm.icmp"(%16, %17) <{predicate = 9 : i64}> : (i32, i32) -> i1
    %19 = "llvm.select"(%18, %16, %17) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %20 = "llvm.load"(%arg1) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i32
    %21 = "llvm.icmp"(%19, %20) <{predicate = 6 : i64}> : (i32, i32) -> i1
    %22 = "llvm.select"(%21, %19, %20) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %23 = "llvm.load"(%arg1) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i32
    %24 = "llvm.icmp"(%22, %23) <{predicate = 7 : i64}> : (i32, i32) -> i1
    %25 = "llvm.select"(%24, %22, %23) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %26 = "llvm.load"(%arg1) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i32
    %27 = "llvm.icmp"(%25, %26) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %28 = "llvm.select"(%27, %25, %26) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %29 = "llvm.load"(%arg1) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i32
    %30 = "llvm.icmp"(%28, %29) <{predicate = 5 : i64}> : (i32, i32) -> i1
    %31 = "llvm.select"(%30, %28, %29) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %32 = "llvm.load"(%arg1) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i32
    %33 = "llvm.icmp"(%31, %32) <{predicate = 2 : i64}> : (i32, i32) -> i1
    %34 = "llvm.select"(%33, %31, %32) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %35 = "llvm.load"(%arg1) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i32
    %36 = "llvm.icmp"(%34, %35) <{predicate = 3 : i64}> : (i32, i32) -> i1
    %37 = "llvm.select"(%36, %34, %35) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%37) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, sym_name = "pos_tiny", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %6 = "llvm.mlir.constant"() <{value = 18 : i32}> : () -> i32
    "llvm.return"(%6) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, sym_name = "pos_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %5 = "llvm.mlir.constant"() <{value = 1735928559 : i32}> : () -> i32
    "llvm.return"(%5) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, sym_name = "pos_i32_half_compressible", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %4 = "llvm.mlir.constant"() <{value = 1735925788 : i32}> : () -> i32
    "llvm.return"(%4) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, sym_name = "neg_tiny", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %3 = "llvm.mlir.constant"() <{value = -19 : i32}> : () -> i32
    "llvm.return"(%3) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, sym_name = "neg_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %2 = "llvm.mlir.constant"() <{value = -559038737 : i32}> : () -> i32
    "llvm.return"(%2) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, sym_name = "pos_i32_hi20_only", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %1 = "llvm.mlir.constant"() <{value = 65536 : i32}> : () -> i32
    "llvm.return"(%1) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, sym_name = "neg_i32_hi20_only", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %0 = "llvm.mlir.constant"() <{value = -65536 : i32}> : () -> i32
    "llvm.return"(%0) : (i32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

