"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i32, i32, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sadd", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: i32, %arg10: i32, %arg11: !llvm.ptr):
    %9 = "llvm.intr.sadd.with.overflow"(%arg9, %arg10) : (i32, i32) -> !llvm.struct<(i32, i1)>
    %10 = "llvm.extractvalue"(%9) <{position = array<i64: 0>}> : (!llvm.struct<(i32, i1)>) -> i32
    %11 = "llvm.extractvalue"(%9) <{position = array<i64: 1>}> : (!llvm.struct<(i32, i1)>) -> i1
    "llvm.store"(%10, %arg11) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"(%11) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i32, i32, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "ssub", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: i32, %arg7: i32, %arg8: !llvm.ptr):
    %6 = "llvm.intr.ssub.with.overflow"(%arg6, %arg7) : (i32, i32) -> !llvm.struct<(i32, i1)>
    %7 = "llvm.extractvalue"(%6) <{position = array<i64: 0>}> : (!llvm.struct<(i32, i1)>) -> i32
    %8 = "llvm.extractvalue"(%6) <{position = array<i64: 1>}> : (!llvm.struct<(i32, i1)>) -> i1
    "llvm.store"(%7, %arg8) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"(%8) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i32, i32, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "uadd", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: i32, %arg4: i32, %arg5: !llvm.ptr):
    %3 = "llvm.intr.uadd.with.overflow"(%arg3, %arg4) : (i32, i32) -> !llvm.struct<(i32, i1)>
    %4 = "llvm.extractvalue"(%3) <{position = array<i64: 0>}> : (!llvm.struct<(i32, i1)>) -> i32
    %5 = "llvm.extractvalue"(%3) <{position = array<i64: 1>}> : (!llvm.struct<(i32, i1)>) -> i1
    "llvm.store"(%4, %arg5) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"(%5) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i32, i32, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "usub", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: !llvm.ptr):
    %0 = "llvm.intr.usub.with.overflow"(%arg0, %arg1) : (i32, i32) -> !llvm.struct<(i32, i1)>
    %1 = "llvm.extractvalue"(%0) <{position = array<i64: 0>}> : (!llvm.struct<(i32, i1)>) -> i32
    %2 = "llvm.extractvalue"(%0) <{position = array<i64: 1>}> : (!llvm.struct<(i32, i1)>) -> i1
    "llvm.store"(%1, %arg2) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"(%2) : (i1) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

