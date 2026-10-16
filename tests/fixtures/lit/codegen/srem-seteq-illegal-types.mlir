"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i29)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_srem_odd", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: i29):
    %20 = "llvm.mlir.constant"() <{value = 99 : i29}> : () -> i29
    %21 = "llvm.mlir.constant"() <{value = 0 : i29}> : () -> i29
    %22 = "llvm.srem"(%arg3, %20) : (i29, i29) -> i29
    %23 = "llvm.icmp"(%22, %21) <{predicate = 0 : i64}> : (i29, i29) -> i1
    "llvm.return"(%23) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i4)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_srem_even", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i4):
    %16 = "llvm.mlir.constant"() <{value = 6 : i4}> : () -> i4
    %17 = "llvm.mlir.constant"() <{value = 1 : i4}> : () -> i4
    %18 = "llvm.srem"(%arg2, %16) : (i4, i4) -> i4
    %19 = "llvm.icmp"(%18, %17) <{predicate = 0 : i64}> : (i4, i4) -> i1
    "llvm.return"(%19) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i6)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_srem_pow2_setne", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: i6):
    %12 = "llvm.mlir.constant"() <{value = 4 : i6}> : () -> i6
    %13 = "llvm.mlir.constant"() <{value = 0 : i6}> : () -> i6
    %14 = "llvm.srem"(%arg1, %12) : (i6, i6) -> i6
    %15 = "llvm.icmp"(%14, %13) <{predicate = 1 : i64}> : (i6, i6) -> i1
    "llvm.return"(%15) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_srem_vec", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: !llvm.ptr):
    %0 = "llvm.mlir.constant"() <{value = -5 : i33}> : () -> i33
    %1 = "llvm.mlir.constant"() <{value = 7 : i33}> : () -> i33
    %2 = "llvm.mlir.constant"() <{value = 6 : i33}> : () -> i33
    %3 = "llvm.mlir.constant"() <{value = dense<[6, 7, -5]> : vector<3xi33>}> : () -> vector<3xi33>
    %4 = "llvm.mlir.constant"() <{value = 2 : i33}> : () -> i33
    %5 = "llvm.mlir.constant"() <{value = 1 : i33}> : () -> i33
    %6 = "llvm.mlir.constant"() <{value = 0 : i33}> : () -> i33
    %7 = "llvm.mlir.constant"() <{value = dense<[0, 1, 2]> : vector<3xi33>}> : () -> vector<3xi33>
    %8 = "llvm.load"(%arg0) <{alignment = 16 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<3xi33>
    %9 = "llvm.srem"(%8, %3) : (vector<3xi33>, vector<3xi33>) -> vector<3xi33>
    %10 = "llvm.icmp"(%9, %7) <{predicate = 1 : i64}> : (vector<3xi33>, vector<3xi33>) -> vector<3xi1>
    %11 = "llvm.sext"(%10) : (vector<3xi1>) -> vector<3xi33>
    "llvm.store"(%11, %arg0) <{alignment = 16 : i64, ordering = 0 : i64}> : (vector<3xi33>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

