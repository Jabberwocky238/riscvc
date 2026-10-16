"builtin.module"() ({
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 8 : i64, global_type = i64, linkage = #llvm.linkage<external>, sym_name = "f", unnamed_addr = 0 : i64, value = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 8 : i64, global_type = i64, linkage = #llvm.linkage<external>, sym_name = "d", unnamed_addr = 0 : i64, value = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 8 : i64, global_type = i32, linkage = #llvm.linkage<external>, sym_name = "e", unnamed_addr = 0 : i64, value = 0 : i32, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "foo", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i32):
    %0 = "llvm.mlir.addressof"() <{global_name = @f}> : () -> !llvm.ptr
    %1 = "llvm.mlir.constant"() <{value = 255 : i64}> : () -> i64
    %2 = "llvm.mlir.addressof"() <{global_name = @d}> : () -> !llvm.ptr
    %3 = "llvm.mlir.constant"() <{value = 65535 : i32}> : () -> i32
    %4 = "llvm.mlir.addressof"() <{global_name = @e}> : () -> !llvm.ptr
    %5 = "llvm.load"(%0) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    %6 = "llvm.and"(%5, %1) : (i64, i64) -> i64
    %7 = "llvm.xor"(%6, %1) : (i64, i64) -> i64
    %8 = "llvm.load"(%2) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    %9 = "llvm.or"(%7, %8) : (i64, i64) -> i64
    %10 = "llvm.trunc"(%9) <{overflowFlags = 0 : i32}> : (i64) -> i32
    %11 = "llvm.and"(%10, %3) : (i32, i32) -> i32
    %12 = "llvm.and"(%arg0, %3) : (i32, i32) -> i32
    "llvm.store"(%12, %4) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"(%11) : (i32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

