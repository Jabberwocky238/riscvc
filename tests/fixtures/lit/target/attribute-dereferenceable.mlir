"builtin.module"() ({
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<warning, "Debug Info Version", 3 : i32>]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (i64, ptr)>, linkage = #llvm.linkage<external>, sym_name = "deref", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i64, %arg3: !llvm.ptr):
    %3 = "llvm.inttoptr"(%arg2) <{dereferenceable = #llvm.dereferenceable<bytes = 4>}> : (i64) -> !llvm.ptr
    %4 = "llvm.load"(%3) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %5 = "llvm.load"(%arg3) <{alignment = 8 : i64, dereferenceable = #llvm.dereferenceable<bytes = 8>, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.ptr
    "llvm.store"(%4, %5) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (i64, ptr)>, linkage = #llvm.linkage<external>, sym_name = "deref_or_null", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i64, %arg1: !llvm.ptr):
    %0 = "llvm.inttoptr"(%arg0) <{dereferenceable = #llvm.dereferenceable<bytes = 4, mayBeNull = true>}> : (i64) -> !llvm.ptr
    %1 = "llvm.load"(%0) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %2 = "llvm.load"(%arg1) <{alignment = 8 : i64, dereferenceable = #llvm.dereferenceable<bytes = 8, mayBeNull = true>, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.ptr
    "llvm.store"(%1, %2) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

