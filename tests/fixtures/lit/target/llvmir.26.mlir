"builtin.module"() ({
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<warning, "Debug Info Version", 3 : i32>]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, sym_name = "atomic_store_and_load", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: !llvm.ptr):
    %0 = "llvm.load"(%arg0) <{alignment = 4 : i64, ordering = 4 : i64}> : (!llvm.ptr) -> f32
    %1 = "llvm.load"(%arg0) <{alignment = 4 : i64, ordering = 4 : i64, syncscope = "singlethread"}> : (!llvm.ptr) -> f32
    "llvm.store"(%0, %arg0) <{alignment = 4 : i64, ordering = 5 : i64}> : (f32, !llvm.ptr) -> ()
    "llvm.store"(%1, %arg0) <{alignment = 4 : i64, ordering = 5 : i64, syncscope = "singlethread"}> : (f32, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

