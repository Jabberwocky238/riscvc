"builtin.module"() ({
  "llvm.mlir.global"() <{addr_space = 0 : i32, global_type = i32, linkage = #llvm.linkage<external>, sym_name = "src", unnamed_addr = 0 : i64, value = 0 : i32, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, global_type = i32, linkage = #llvm.linkage<external>, sym_name = "dst", unnamed_addr = 0 : i64, value = 0 : i32, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "imm32_cse", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %0 = "llvm.mlir.addressof"() <{global_name = @src}> : () -> !llvm.ptr
    %1 = "llvm.mlir.constant"() <{value = 4097 : i32}> : () -> i32
    %2 = "llvm.mlir.addressof"() <{global_name = @dst}> : () -> !llvm.ptr
    %3 = "llvm.mlir.constant"() <{value = 4098 : i32}> : () -> i32
    %4 = "llvm.mlir.constant"() <{value = 4099 : i32}> : () -> i32
    %5 = "llvm.load"(%0) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i32
    %6 = "llvm.add"(%5, %1) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.store"(%6, %2) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (i32, !llvm.ptr) -> ()
    %7 = "llvm.load"(%0) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i32
    %8 = "llvm.add"(%7, %3) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.store"(%8, %2) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (i32, !llvm.ptr) -> ()
    %9 = "llvm.load"(%0) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i32
    %10 = "llvm.add"(%9, %4) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.store"(%10, %2) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (i32, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

