"builtin.module"() ({
  "llvm.mlir.global"() <{addr_space = 0 : i32, constant, dso_local, global_type = !llvm.array<5 x f32>, linkage = #llvm.linkage<internal>, sym_name = "dense_resource_tensor_constant", unnamed_addr = 0 : i64, value = dense<[0.203224242, -0.254296064, -0.365104556, -0.469196141, 0.466041982]> : tensor<5xf32>, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, constant, dso_local, global_type = vector<5xf32>, linkage = #llvm.linkage<internal>, sym_name = "dense_resource_vector_constant", unnamed_addr = 0 : i64, value = dense<[0.203224242, -0.254296064, -0.365104556, -0.469196141, 0.466041982]> : vector<5xf32>, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, constant, dso_local, global_type = !llvm.array<1 x array<2 x array<2 x f32>>>, linkage = #llvm.linkage<internal>, sym_name = "dense_resource_multidim_tensor_constant", unnamed_addr = 0 : i64, value = dense<[[[0.35476172, 0.351080596], [-0.0795008316, 0.366843373]]]> : tensor<1x2x2xf32>, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, constant, dso_local, global_type = !llvm.array<1 x array<2 x vector<2xf32>>>, linkage = #llvm.linkage<internal>, sym_name = "dense_resource_multidim_vector_constant", unnamed_addr = 0 : i64, value = dense<[[[0.35476172, 0.351080596], [-0.0795008316, 0.366843373]]]> : vector<1x2x2xf32>, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<warning, "Debug Info Version", 3 : i32>]}> : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

