"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i32, i64, ptr)>, linkage = #llvm.linkage<external>, sym_name = "no__mulodi4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i32, %arg1: i64, %arg2: !llvm.ptr):
    %0 = "llvm.sext"(%arg0) : (i32) -> i64
    %1 = "llvm.intr.smul.with.overflow"(%0, %arg1) : (i64, i64) -> !llvm.struct<(i64, i1)>
    %2 = "llvm.extractvalue"(%1) <{position = array<i64: 1>}> : (!llvm.struct<(i64, i1)>) -> i1
    %3 = "llvm.extractvalue"(%1) <{position = array<i64: 0>}> : (!llvm.struct<(i64, i1)>) -> i64
    %4 = "llvm.trunc"(%3) <{overflowFlags = 0 : i32}> : (i64) -> i32
    %5 = "llvm.sext"(%4) : (i32) -> i64
    %6 = "llvm.icmp"(%3, %5) <{predicate = 1 : i64}> : (i64, i64) -> i1
    %7 = "llvm.or"(%2, %6) : (i1, i1) -> i1
    "llvm.store"(%4, %arg2) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"(%7) : (i1) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

