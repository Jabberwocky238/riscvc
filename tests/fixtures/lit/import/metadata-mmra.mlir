#mmra_tag = #llvm.mmra_tag<"foo":"bar">
#mmra_tag1 = #llvm.mmra_tag<"amdgpu-synchronize-as":"local">
"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "native", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: !llvm.ptr, %arg1: !llvm.ptr):
    %0 = "llvm.load"(%arg0) <{alignment = 4 : i64, ordering = 0 : i64}> {llvm.mmra = #mmra_tag} : (!llvm.ptr) -> i32
    "llvm.fence"() <{ordering = 5 : i64, syncscope = "workgroup-one-as"}> {llvm.mmra = [#mmra_tag1, #mmra_tag]} : () -> ()
    "llvm.store"(%0, %arg1) <{alignment = 4 : i64, ordering = 0 : i64}> {llvm.mmra = []} : (i32, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

