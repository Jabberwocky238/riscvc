"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i13)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_urem_odd", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i13):
    %24 = "llvm.mlir.constant"() <{value = 5 : i13}> : () -> i13
    %25 = "llvm.mlir.constant"() <{value = 0 : i13}> : () -> i13
    %26 = "llvm.urem"(%arg4, %24) : (i13, i13) -> i13
    %27 = "llvm.icmp"(%26, %25) <{predicate = 0 : i64}> : (i13, i13) -> i1
    "llvm.return"(%27) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i27)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_urem_even", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: i27):
    %20 = "llvm.mlir.constant"() <{value = 14 : i27}> : () -> i27
    %21 = "llvm.mlir.constant"() <{value = 0 : i27}> : () -> i27
    %22 = "llvm.urem"(%arg3, %20) : (i27, i27) -> i27
    %23 = "llvm.icmp"(%22, %21) <{predicate = 0 : i64}> : (i27, i27) -> i1
    "llvm.return"(%23) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i4)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_urem_odd_setne", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i4):
    %16 = "llvm.mlir.constant"() <{value = 5 : i4}> : () -> i4
    %17 = "llvm.mlir.constant"() <{value = 0 : i4}> : () -> i4
    %18 = "llvm.urem"(%arg2, %16) : (i4, i4) -> i4
    %19 = "llvm.icmp"(%18, %17) <{predicate = 1 : i64}> : (i4, i4) -> i1
    "llvm.return"(%19) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i9)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_urem_negative_odd", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: i9):
    %12 = "llvm.mlir.constant"() <{value = -5 : i9}> : () -> i9
    %13 = "llvm.mlir.constant"() <{value = 0 : i9}> : () -> i9
    %14 = "llvm.urem"(%arg1, %12) : (i9, i9) -> i9
    %15 = "llvm.icmp"(%14, %13) <{predicate = 1 : i64}> : (i9, i9) -> i1
    "llvm.return"(%15) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_urem_vec", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: !llvm.ptr):
    %0 = "llvm.mlir.constant"() <{value = -5 : i11}> : () -> i11
    %1 = "llvm.mlir.constant"() <{value = 7 : i11}> : () -> i11
    %2 = "llvm.mlir.constant"() <{value = 6 : i11}> : () -> i11
    %3 = "llvm.mlir.constant"() <{value = dense<[6, 7, -5]> : vector<3xi11>}> : () -> vector<3xi11>
    %4 = "llvm.mlir.constant"() <{value = 2 : i11}> : () -> i11
    %5 = "llvm.mlir.constant"() <{value = 1 : i11}> : () -> i11
    %6 = "llvm.mlir.constant"() <{value = 0 : i11}> : () -> i11
    %7 = "llvm.mlir.constant"() <{value = dense<[0, 1, 2]> : vector<3xi11>}> : () -> vector<3xi11>
    %8 = "llvm.load"(%arg0) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<3xi11>
    %9 = "llvm.urem"(%8, %3) : (vector<3xi11>, vector<3xi11>) -> vector<3xi11>
    %10 = "llvm.icmp"(%9, %7) <{predicate = 1 : i64}> : (vector<3xi11>, vector<3xi11>) -> vector<3xi1>
    %11 = "llvm.sext"(%10) : (vector<3xi1>) -> vector<3xi11>
    "llvm.store"(%11, %arg0) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<3xi11>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

