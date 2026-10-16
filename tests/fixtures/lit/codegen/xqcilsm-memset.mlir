"builtin.module"() ({
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 4 : i64, dso_local, global_type = !llvm.struct<"struct.anon", (array<16 x i32>)>, linkage = #llvm.linkage<common>, sym_name = "struct1", unnamed_addr = 1 : i64, visibility_ = 0 : i64}> ({
    %135 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %136 = "llvm.mlir.constant"() <{value = dense<0> : tensor<16xi32>}> : () -> !llvm.array<16 x i32>
    %137 = "llvm.mlir.zero"() : () -> !llvm.struct<"struct.anon", (array<16 x i32>)>
    "llvm.return"(%137) : (!llvm.struct<"struct.anon", (array<16 x i32>)>) -> ()
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 4 : i64, dso_local, global_type = !llvm.struct<"struct.anon.0", (array<47 x i32>)>, linkage = #llvm.linkage<common>, sym_name = "struct4b", unnamed_addr = 1 : i64, visibility_ = 0 : i64}> ({
    %132 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %133 = "llvm.mlir.constant"() <{value = dense<0> : tensor<47xi32>}> : () -> !llvm.array<47 x i32>
    %134 = "llvm.mlir.zero"() : () -> !llvm.struct<"struct.anon.0", (array<47 x i32>)>
    "llvm.return"(%134) : (!llvm.struct<"struct.anon.0", (array<47 x i32>)>) -> ()
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 4 : i64, dso_local, global_type = !llvm.struct<"struct.anon.1", (array<48 x i32>)>, linkage = #llvm.linkage<common>, sym_name = "struct4b1", unnamed_addr = 1 : i64, visibility_ = 0 : i64}> ({
    %129 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %130 = "llvm.mlir.constant"() <{value = dense<0> : tensor<48xi32>}> : () -> !llvm.array<48 x i32>
    %131 = "llvm.mlir.zero"() : () -> !llvm.struct<"struct.anon.1", (array<48 x i32>)>
    "llvm.return"(%131) : (!llvm.struct<"struct.anon.1", (array<48 x i32>)>) -> ()
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 1 : i64, dso_local, global_type = !llvm.struct<"struct.anon.2", (array<64 x i8>)>, linkage = #llvm.linkage<common>, sym_name = "struct2", unnamed_addr = 1 : i64, visibility_ = 0 : i64}> ({
    %126 = "llvm.mlir.constant"() <{value = 0 : i8}> : () -> i8
    %127 = "llvm.mlir.constant"() <{value = dense<0> : tensor<64xi8>}> : () -> !llvm.array<64 x i8>
    %128 = "llvm.mlir.zero"() : () -> !llvm.struct<"struct.anon.2", (array<64 x i8>)>
    "llvm.return"(%128) : (!llvm.struct<"struct.anon.2", (array<64 x i8>)>) -> ()
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 4 : i64, dso_local, global_type = !llvm.array<100 x i32>, linkage = #llvm.linkage<common>, sym_name = "arr1", unnamed_addr = 1 : i64, value = dense<0> : tensor<100xi32>, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 4 : i64, dso_local, global_type = !llvm.struct<"struct.struct1_t", (array<16 x i32>)>, linkage = #llvm.linkage<common>, sym_name = "struct1_", unnamed_addr = 1 : i64, visibility_ = 0 : i64}> ({
    %123 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %124 = "llvm.mlir.constant"() <{value = dense<0> : tensor<16xi32>}> : () -> !llvm.array<16 x i32>
    %125 = "llvm.mlir.zero"() : () -> !llvm.struct<"struct.struct1_t", (array<16 x i32>)>
    "llvm.return"(%125) : (!llvm.struct<"struct.struct1_t", (array<16 x i32>)>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.nocapture}, {}], function_type = !llvm.func<void (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: !llvm.ptr, %arg9: i32):
    %122 = "llvm.mlir.constant"() <{value = 0 : i8}> : () -> i8
    "llvm.intr.memset"(%arg8, %122, %arg9) <{arg_attrs = [{llvm.align = 1 : i64}, {}, {}], isVolatile = false}> : (!llvm.ptr, i8, i32) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.nocapture}], function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg7: !llvm.ptr):
    %120 = "llvm.mlir.constant"() <{value = -91 : i8}> : () -> i8
    %121 = "llvm.mlir.constant"() <{value = 128 : i32}> : () -> i32
    "llvm.intr.memset"(%arg7, %120, %121) <{arg_attrs = [{llvm.align = 4 : i64}, {}, {}], isVolatile = false}> : (!llvm.ptr, i8, i32) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.nocapture}], function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test2a", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: !llvm.ptr):
    %118 = "llvm.mlir.constant"() <{value = -91 : i8}> : () -> i8
    %119 = "llvm.mlir.constant"() <{value = 188 : i32}> : () -> i32
    "llvm.intr.memset"(%arg6, %118, %119) <{arg_attrs = [{llvm.align = 4 : i64}, {}, {}], isVolatile = false}> : (!llvm.ptr, i8, i32) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.nocapture}], function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test2b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: !llvm.ptr):
    %116 = "llvm.mlir.constant"() <{value = -91 : i8}> : () -> i8
    %117 = "llvm.mlir.constant"() <{value = 192 : i32}> : () -> i32
    "llvm.intr.memset"(%arg5, %116, %117) <{arg_attrs = [{llvm.align = 4 : i64}, {}, {}], isVolatile = false}> : (!llvm.ptr, i8, i32) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.nocapture}], function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test2c", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: !llvm.ptr):
    %114 = "llvm.mlir.constant"() <{value = -91 : i8}> : () -> i8
    %115 = "llvm.mlir.constant"() <{value = 128 : i32}> : () -> i32
    "llvm.intr.memset"(%arg4, %114, %115) <{arg_attrs = [{llvm.align = 4 : i64}, {}, {}], isVolatile = false}> : (!llvm.ptr, i8, i32) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.nocapture}], function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test2d", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: !llvm.ptr):
    %112 = "llvm.mlir.constant"() <{value = -91 : i8}> : () -> i8
    %113 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    "llvm.intr.memset"(%arg3, %112, %113) <{arg_attrs = [{llvm.align = 4 : i64}, {}, {}], isVolatile = false}> : (!llvm.ptr, i8, i32) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<ptr (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: !llvm.ptr):
    %110 = "llvm.mlir.constant"() <{value = 0 : i8}> : () -> i8
    %111 = "llvm.mlir.constant"() <{value = 256 : i32}> : () -> i32
    "llvm.intr.memset"(%arg2, %110, %111) <{arg_attrs = [{llvm.align = 4 : i64}, {}, {}], isVolatile = false}> : (!llvm.ptr, i8, i32) -> ()
    "llvm.return"(%arg2) : (!llvm.ptr) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<ptr (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test3a", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: !llvm.ptr):
    %108 = "llvm.mlir.constant"() <{value = 0 : i8}> : () -> i8
    %109 = "llvm.mlir.constant"() <{value = 128 : i32}> : () -> i32
    "llvm.intr.memset"(%arg1, %108, %109) <{arg_attrs = [{llvm.align = 4 : i64}, {}, {}], isVolatile = false}> : (!llvm.ptr, i8, i32) -> ()
    "llvm.return"(%arg1) : (!llvm.ptr) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %105 = "llvm.mlir.addressof"() <{global_name = @struct1}> : () -> !llvm.ptr
    %106 = "llvm.mlir.constant"() <{value = 0 : i8}> : () -> i8
    %107 = "llvm.mlir.constant"() <{value = 64 : i32}> : () -> i32
    "llvm.intr.memset"(%105, %106, %107) <{arg_attrs = [{llvm.align = 4 : i64}, {}, {}], isVolatile = false}> : (!llvm.ptr, i8, i32) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.nocapture}], function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test4a", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: !llvm.ptr):
    %103 = "llvm.mlir.constant"() <{value = -90 : i8}> : () -> i8
    %104 = "llvm.mlir.constant"() <{value = 64 : i32}> : () -> i32
    "llvm.intr.memset"(%arg0, %103, %104) <{arg_attrs = [{llvm.align = 4 : i64}, {}, {}], isVolatile = false}> : (!llvm.ptr, i8, i32) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test4b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %98 = "llvm.mlir.addressof"() <{global_name = @struct4b}> : () -> !llvm.ptr
    %99 = "llvm.mlir.constant"() <{value = 0 : i8}> : () -> i8
    %100 = "llvm.mlir.constant"() <{value = 188 : i32}> : () -> i32
    %101 = "llvm.mlir.addressof"() <{global_name = @struct4b1}> : () -> !llvm.ptr
    %102 = "llvm.mlir.constant"() <{value = 192 : i32}> : () -> i32
    "llvm.intr.memset"(%98, %99, %100) <{arg_attrs = [{llvm.align = 4 : i64}, {}, {}], isVolatile = false}> : (!llvm.ptr, i8, i32) -> ()
    "llvm.intr.memset"(%101, %99, %102) <{arg_attrs = [{llvm.align = 4 : i64}, {}, {}], isVolatile = false}> : (!llvm.ptr, i8, i32) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test5", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %95 = "llvm.mlir.addressof"() <{global_name = @struct2}> : () -> !llvm.ptr
    %96 = "llvm.mlir.constant"() <{value = 0 : i8}> : () -> i8
    %97 = "llvm.mlir.constant"() <{value = 64 : i32}> : () -> i32
    "llvm.intr.memset"(%95, %96, %97) <{arg_attrs = [{llvm.align = 1 : i64}, {}, {}], isVolatile = false}> : (!llvm.ptr, i8, i32) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test6", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %90 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %91 = "llvm.mlir.constant"() <{value = 0 : i8}> : () -> i8
    %92 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %93 = "llvm.alloca"(%90) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    "llvm.intr.memset"(%93, %91, %92) <{arg_attrs = [{llvm.align = 4 : i64}, {}, {}], isVolatile = false}> : (!llvm.ptr, i8, i32) -> ()
    %94 = "llvm.load"(%93) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.return"(%94) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 ()>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.zeroext}], sym_name = "test6b_c", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %86 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %87 = "llvm.mlir.constant"() <{value = 0 : i8}> : () -> i8
    %88 = "llvm.alloca"(%86) <{alignment = 4 : i64, elem_type = i8}> : (i32) -> !llvm.ptr
    "llvm.intr.lifetime.start"(%88) : (!llvm.ptr) -> ()
    "llvm.intr.memset"(%88, %87, %86) <{arg_attrs = [{llvm.align = 4 : i64, llvm.nonnull}, {}, {}], isVolatile = false}> : (!llvm.ptr, i8, i32) -> ()
    %89 = "llvm.load"(%88) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i8
    "llvm.intr.lifetime.end"(%88) : (!llvm.ptr) -> ()
    "llvm.return"(%89) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 ()>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "test6b_s", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %82 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %83 = "llvm.mlir.constant"() <{value = 0 : i16}> : () -> i16
    %84 = "llvm.alloca"(%82) <{alignment = 4 : i64, elem_type = i16}> : (i32) -> !llvm.ptr
    "llvm.intr.lifetime.start"(%84) : (!llvm.ptr) -> ()
    "llvm.store"(%83, %84) <{alignment = 4 : i64, ordering = 0 : i64}> : (i16, !llvm.ptr) -> ()
    %85 = "llvm.load"(%84) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i16
    "llvm.intr.lifetime.end"(%84) : (!llvm.ptr) -> ()
    "llvm.return"(%85) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test6b_l", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %78 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %79 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %80 = "llvm.alloca"(%78) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    "llvm.intr.lifetime.start"(%80) : (!llvm.ptr) -> ()
    "llvm.store"(%79, %80) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %81 = "llvm.load"(%80) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i32
    "llvm.intr.lifetime.end"(%80) : (!llvm.ptr) -> ()
    "llvm.return"(%81) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test6b_ll", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %73 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %74 = "llvm.mlir.constant"() <{value = 0 : i8}> : () -> i8
    %75 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %76 = "llvm.alloca"(%73) <{alignment = 8 : i64, elem_type = i64}> : (i32) -> !llvm.ptr
    "llvm.intr.lifetime.start"(%76) : (!llvm.ptr) -> ()
    "llvm.intr.memset"(%76, %74, %75) <{arg_attrs = [{llvm.align = 8 : i64, llvm.nonnull}, {}, {}], isVolatile = false}> : (!llvm.ptr, i8, i32) -> ()
    %77 = "llvm.load"(%76) <{alignment = 8 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i64
    "llvm.intr.lifetime.end"(%76) : (!llvm.ptr) -> ()
    "llvm.return"(%77) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 ()>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.zeroext}], sym_name = "test6c_c", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %69 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %70 = "llvm.mlir.constant"() <{value = 0 : i8}> : () -> i8
    %71 = "llvm.alloca"(%69) <{alignment = 1 : i64, elem_type = i8}> : (i32) -> !llvm.ptr
    "llvm.intr.memset"(%71, %70, %69) <{arg_attrs = [{llvm.align = 1 : i64}, {}, {}], isVolatile = false}> : (!llvm.ptr, i8, i32) -> ()
    %72 = "llvm.load"(%71) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    "llvm.return"(%72) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 ()>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "test6c_s", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %64 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %65 = "llvm.mlir.constant"() <{value = 0 : i8}> : () -> i8
    %66 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %67 = "llvm.alloca"(%64) <{alignment = 2 : i64, elem_type = i16}> : (i32) -> !llvm.ptr
    "llvm.intr.memset"(%67, %65, %66) <{arg_attrs = [{llvm.align = 2 : i64}, {}, {}], isVolatile = false}> : (!llvm.ptr, i8, i32) -> ()
    %68 = "llvm.load"(%67) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    "llvm.return"(%68) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test6c_l", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %59 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %60 = "llvm.mlir.constant"() <{value = 0 : i8}> : () -> i8
    %61 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %62 = "llvm.alloca"(%59) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    "llvm.intr.memset"(%62, %60, %61) <{arg_attrs = [{llvm.align = 4 : i64}, {}, {}], isVolatile = false}> : (!llvm.ptr, i8, i32) -> ()
    %63 = "llvm.load"(%62) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.return"(%63) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test6c_ll", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %54 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %55 = "llvm.mlir.constant"() <{value = 0 : i8}> : () -> i8
    %56 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %57 = "llvm.alloca"(%54) <{alignment = 8 : i64, elem_type = i64}> : (i32) -> !llvm.ptr
    "llvm.intr.memset"(%57, %55, %56) <{arg_attrs = [{llvm.align = 8 : i64}, {}, {}], isVolatile = false}> : (!llvm.ptr, i8, i32) -> ()
    %58 = "llvm.load"(%57) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    "llvm.return"(%58) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test7", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %51 = "llvm.mlir.addressof"() <{global_name = @arr1}> : () -> !llvm.ptr
    %52 = "llvm.mlir.constant"() <{value = 0 : i8}> : () -> i8
    %53 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    "llvm.intr.memset"(%51, %52, %53) <{arg_attrs = [{llvm.align = 4 : i64}, {}, {}], isVolatile = false}> : (!llvm.ptr, i8, i32) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test7a", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %48 = "llvm.mlir.addressof"() <{global_name = @arr1}> : () -> !llvm.ptr
    %49 = "llvm.mlir.constant"() <{value = 0 : i8}> : () -> i8
    %50 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    "llvm.intr.memset"(%48, %49, %50) <{arg_attrs = [{llvm.align = 4 : i64}, {}, {}], isVolatile = false}> : (!llvm.ptr, i8, i32) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test7a_unalign", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %45 = "llvm.mlir.addressof"() <{global_name = @arr1}> : () -> !llvm.ptr
    %46 = "llvm.mlir.constant"() <{value = -1 : i8}> : () -> i8
    %47 = "llvm.mlir.constant"() <{value = 17 : i32}> : () -> i32
    "llvm.intr.memset"(%45, %46, %47) <{arg_attrs = [{llvm.align = 4 : i64}, {}, {}], isVolatile = false}> : (!llvm.ptr, i8, i32) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test7b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %42 = "llvm.mlir.addressof"() <{global_name = @arr1}> : () -> !llvm.ptr
    %43 = "llvm.mlir.constant"() <{value = -1 : i8}> : () -> i8
    %44 = "llvm.mlir.constant"() <{value = 68 : i32}> : () -> i32
    "llvm.intr.memset"(%42, %43, %44) <{arg_attrs = [{llvm.align = 4 : i64}, {}, {}], isVolatile = false}> : (!llvm.ptr, i8, i32) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test7c", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %39 = "llvm.mlir.addressof"() <{global_name = @arr1}> : () -> !llvm.ptr
    %40 = "llvm.mlir.constant"() <{value = -128 : i8}> : () -> i8
    %41 = "llvm.mlir.constant"() <{value = 128 : i32}> : () -> i32
    "llvm.intr.memset"(%39, %40, %41) <{arg_attrs = [{llvm.align = 4 : i64}, {}, {}], isVolatile = false}> : (!llvm.ptr, i8, i32) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test7d", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %36 = "llvm.mlir.addressof"() <{global_name = @arr1}> : () -> !llvm.ptr
    %37 = "llvm.mlir.constant"() <{value = 13 : i8}> : () -> i8
    %38 = "llvm.mlir.constant"() <{value = 148 : i32}> : () -> i32
    "llvm.intr.memset"(%36, %37, %38) <{arg_attrs = [{llvm.align = 4 : i64}, {}, {}], isVolatile = false}> : (!llvm.ptr, i8, i32) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test7e", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %33 = "llvm.mlir.addressof"() <{global_name = @arr1}> : () -> !llvm.ptr
    %34 = "llvm.mlir.constant"() <{value = -17 : i8}> : () -> i8
    %35 = "llvm.mlir.constant"() <{value = 100 : i32}> : () -> i32
    "llvm.intr.memset"(%33, %34, %35) <{arg_attrs = [{llvm.align = 4 : i64}, {}, {}], isVolatile = false}> : (!llvm.ptr, i8, i32) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %30 = "llvm.mlir.addressof"() <{global_name = @arr1}> : () -> !llvm.ptr
    %31 = "llvm.mlir.constant"() <{value = 0 : i8}> : () -> i8
    %32 = "llvm.mlir.constant"() <{value = 16 : i32}> : () -> i32
    "llvm.intr.memset"(%30, %31, %32) <{arg_attrs = [{llvm.align = 4 : i64}, {}, {}], isVolatile = false}> : (!llvm.ptr, i8, i32) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test9", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %27 = "llvm.mlir.addressof"() <{global_name = @arr1}> : () -> !llvm.ptr
    %28 = "llvm.mlir.constant"() <{value = 0 : i8}> : () -> i8
    %29 = "llvm.mlir.constant"() <{value = 32 : i32}> : () -> i32
    "llvm.intr.memset"(%27, %28, %29) <{arg_attrs = [{llvm.align = 4 : i64}, {}, {}], isVolatile = false}> : (!llvm.ptr, i8, i32) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test10", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %24 = "llvm.mlir.addressof"() <{global_name = @arr1}> : () -> !llvm.ptr
    %25 = "llvm.mlir.constant"() <{value = 0 : i8}> : () -> i8
    %26 = "llvm.mlir.constant"() <{value = 60 : i32}> : () -> i32
    "llvm.intr.memset"(%24, %25, %26) <{arg_attrs = [{llvm.align = 4 : i64}, {}, {}], isVolatile = false}> : (!llvm.ptr, i8, i32) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test11", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %21 = "llvm.mlir.addressof"() <{global_name = @arr1}> : () -> !llvm.ptr
    %22 = "llvm.mlir.constant"() <{value = 0 : i8}> : () -> i8
    %23 = "llvm.mlir.constant"() <{value = 64 : i32}> : () -> i32
    "llvm.intr.memset"(%21, %22, %23) <{arg_attrs = [{llvm.align = 4 : i64}, {}, {}], isVolatile = false}> : (!llvm.ptr, i8, i32) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test12", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %18 = "llvm.mlir.addressof"() <{global_name = @arr1}> : () -> !llvm.ptr
    %19 = "llvm.mlir.constant"() <{value = 0 : i8}> : () -> i8
    %20 = "llvm.mlir.constant"() <{value = 120 : i32}> : () -> i32
    "llvm.intr.memset"(%18, %19, %20) <{arg_attrs = [{llvm.align = 4 : i64}, {}, {}], isVolatile = false}> : (!llvm.ptr, i8, i32) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test13", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %15 = "llvm.mlir.addressof"() <{global_name = @arr1}> : () -> !llvm.ptr
    %16 = "llvm.mlir.constant"() <{value = 0 : i8}> : () -> i8
    %17 = "llvm.mlir.constant"() <{value = 124 : i32}> : () -> i32
    "llvm.intr.memset"(%15, %16, %17) <{arg_attrs = [{llvm.align = 4 : i64}, {}, {}], isVolatile = false}> : (!llvm.ptr, i8, i32) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test14", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %12 = "llvm.mlir.addressof"() <{global_name = @arr1}> : () -> !llvm.ptr
    %13 = "llvm.mlir.constant"() <{value = 0 : i8}> : () -> i8
    %14 = "llvm.mlir.constant"() <{value = 180 : i32}> : () -> i32
    "llvm.intr.memset"(%12, %13, %14) <{arg_attrs = [{llvm.align = 4 : i64}, {}, {}], isVolatile = false}> : (!llvm.ptr, i8, i32) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test15", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %9 = "llvm.mlir.addressof"() <{global_name = @arr1}> : () -> !llvm.ptr
    %10 = "llvm.mlir.constant"() <{value = 0 : i8}> : () -> i8
    %11 = "llvm.mlir.constant"() <{value = 184 : i32}> : () -> i32
    "llvm.intr.memset"(%9, %10, %11) <{arg_attrs = [{llvm.align = 4 : i64}, {}, {}], isVolatile = false}> : (!llvm.ptr, i8, i32) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test15a", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %6 = "llvm.mlir.addressof"() <{global_name = @arr1}> : () -> !llvm.ptr
    %7 = "llvm.mlir.constant"() <{value = -91 : i8}> : () -> i8
    %8 = "llvm.mlir.constant"() <{value = 192 : i32}> : () -> i32
    "llvm.intr.memset"(%6, %7, %8) <{arg_attrs = [{llvm.align = 4 : i64}, {}, {}], isVolatile = false}> : (!llvm.ptr, i8, i32) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test15b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %3 = "llvm.mlir.addressof"() <{global_name = @arr1}> : () -> !llvm.ptr
    %4 = "llvm.mlir.constant"() <{value = 0 : i8}> : () -> i8
    %5 = "llvm.mlir.constant"() <{value = 188 : i32}> : () -> i32
    "llvm.intr.memset"(%3, %4, %5) <{arg_attrs = [{llvm.align = 4 : i64}, {}, {}], isVolatile = false}> : (!llvm.ptr, i8, i32) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test15c", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %0 = "llvm.mlir.addressof"() <{global_name = @arr1}> : () -> !llvm.ptr
    %1 = "llvm.mlir.constant"() <{value = 0 : i8}> : () -> i8
    %2 = "llvm.mlir.constant"() <{value = 192 : i32}> : () -> i32
    "llvm.intr.memset"(%0, %1, %2) <{arg_attrs = [{llvm.align = 4 : i64}, {}, {}], isVolatile = false}> : (!llvm.ptr, i8, i32) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

