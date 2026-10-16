"builtin.module"() ({
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 4 : i64, global_type = !llvm.array<1024 x i32>, linkage = #llvm.linkage<external>, sym_name = "g", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_prefetch_read_locality_0", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg21: !llvm.ptr):
    "llvm.intr.prefetch"(%arg21) <{cache = 1 : i32, hint = 0 : i32, rw = 0 : i32}> : (!llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_prefetch_write_locality_0", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg20: !llvm.ptr):
    "llvm.intr.prefetch"(%arg20) <{cache = 1 : i32, hint = 0 : i32, rw = 1 : i32}> : (!llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_prefetch_instruction_locality_0", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg19: !llvm.ptr):
    "llvm.intr.prefetch"(%arg19) <{cache = 0 : i32, hint = 0 : i32, rw = 0 : i32}> : (!llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_prefetch_read_locality_1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg18: !llvm.ptr):
    "llvm.intr.prefetch"(%arg18) <{cache = 1 : i32, hint = 1 : i32, rw = 0 : i32}> : (!llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_prefetch_write_locality_1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg17: !llvm.ptr):
    "llvm.intr.prefetch"(%arg17) <{cache = 1 : i32, hint = 1 : i32, rw = 1 : i32}> : (!llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_prefetch_instruction_locality_1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg16: !llvm.ptr):
    "llvm.intr.prefetch"(%arg16) <{cache = 0 : i32, hint = 1 : i32, rw = 0 : i32}> : (!llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_prefetch_read_locality_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg15: !llvm.ptr):
    "llvm.intr.prefetch"(%arg15) <{cache = 1 : i32, hint = 2 : i32, rw = 0 : i32}> : (!llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_prefetch_write_locality_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: !llvm.ptr):
    "llvm.intr.prefetch"(%arg14) <{cache = 1 : i32, hint = 2 : i32, rw = 1 : i32}> : (!llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_prefetch_instruction_locality_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg13: !llvm.ptr):
    "llvm.intr.prefetch"(%arg13) <{cache = 0 : i32, hint = 2 : i32, rw = 0 : i32}> : (!llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_prefetch_read_locality_3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: !llvm.ptr):
    "llvm.intr.prefetch"(%arg12) <{cache = 1 : i32, hint = 3 : i32, rw = 0 : i32}> : (!llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_prefetch_write_locality_3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg11: !llvm.ptr):
    "llvm.intr.prefetch"(%arg11) <{cache = 1 : i32, hint = 3 : i32, rw = 1 : i32}> : (!llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_prefetch_instruction_locality_3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: !llvm.ptr):
    "llvm.intr.prefetch"(%arg10) <{cache = 0 : i32, hint = 3 : i32, rw = 0 : i32}> : (!llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_prefetch_offsetable_0", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: !llvm.ptr):
    %117 = "llvm.mlir.constant"() <{value = 2016 : i64}> : () -> i64
    %118 = "llvm.getelementptr"(%arg9, %117) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.intr.prefetch"(%118) <{cache = 1 : i32, hint = 0 : i32, rw = 0 : i32}> : (!llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_prefetch_offsetable_1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: !llvm.ptr):
    %115 = "llvm.mlir.constant"() <{value = -2048 : i64}> : () -> i64
    %116 = "llvm.getelementptr"(%arg8, %115) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.intr.prefetch"(%116) <{cache = 1 : i32, hint = 0 : i32, rw = 0 : i32}> : (!llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_prefetch_offsetable_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg7: !llvm.ptr):
    %113 = "llvm.mlir.constant"() <{value = 32 : i64}> : () -> i64
    %114 = "llvm.getelementptr"(%arg7, %113) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.intr.prefetch"(%114) <{cache = 1 : i32, hint = 0 : i32, rw = 0 : i32}> : (!llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_prefetch_offsetable_3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: !llvm.ptr):
    %111 = "llvm.mlir.constant"() <{value = -32 : i64}> : () -> i64
    %112 = "llvm.getelementptr"(%arg6, %111) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.intr.prefetch"(%112) <{cache = 1 : i32, hint = 0 : i32, rw = 0 : i32}> : (!llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_prefetch_offsetable_4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: !llvm.ptr):
    %109 = "llvm.mlir.constant"() <{value = 2048 : i64}> : () -> i64
    %110 = "llvm.getelementptr"(%arg5, %109) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.intr.prefetch"(%110) <{cache = 1 : i32, hint = 0 : i32, rw = 0 : i32}> : (!llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_prefetch_offsetable_5", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: !llvm.ptr):
    %107 = "llvm.mlir.constant"() <{value = -2049 : i64}> : () -> i64
    %108 = "llvm.getelementptr"(%arg4, %107) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.intr.prefetch"(%108) <{cache = 1 : i32, hint = 0 : i32, rw = 0 : i32}> : (!llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_prefetch_offsetable_6", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: !llvm.ptr):
    %105 = "llvm.mlir.constant"() <{value = 16 : i64}> : () -> i64
    %106 = "llvm.getelementptr"(%arg3, %105) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.intr.prefetch"(%106) <{cache = 1 : i32, hint = 0 : i32, rw = 0 : i32}> : (!llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_prefetch_offsetable_7", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: !llvm.ptr):
    %103 = "llvm.mlir.constant"() <{value = -16 : i64}> : () -> i64
    %104 = "llvm.getelementptr"(%arg2, %103) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.intr.prefetch"(%104) <{cache = 1 : i32, hint = 0 : i32, rw = 0 : i32}> : (!llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_prefetch_offsetable_9", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: !llvm.ptr):
    %101 = "llvm.mlir.constant"() <{value = 4160 : i64}> : () -> i64
    %102 = "llvm.getelementptr"(%arg1, %101) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.intr.prefetch"(%102) <{cache = 1 : i32, hint = 0 : i32, rw = 0 : i32}> : (!llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_prefetch_offsetable_8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: !llvm.ptr):
    %99 = "llvm.mlir.constant"() <{value = -4160 : i64}> : () -> i64
    %100 = "llvm.getelementptr"(%arg0, %99) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.intr.prefetch"(%100) <{cache = 1 : i32, hint = 0 : i32, rw = 0 : i32}> : (!llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_prefetch_frameindex_0", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %94 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %95 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %96 = "llvm.alloca"(%94) <{alignment = 4 : i64, elem_type = !llvm.array<128 x i32>}> : (i32) -> !llvm.ptr
    %97 = "llvm.bitcast"(%96) : (!llvm.ptr) -> !llvm.ptr
    %98 = "llvm.getelementptr"(%97, %95, %95) <{elem_type = !llvm.array<128 x i32>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    "llvm.intr.prefetch"(%98) <{cache = 1 : i32, hint = 0 : i32, rw = 0 : i32}> : (!llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_prefetch_frameindex_1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %91 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %92 = "llvm.alloca"(%91) <{alignment = 4 : i64, elem_type = !llvm.array<1024 x i32>}> : (i32) -> !llvm.ptr
    %93 = "llvm.bitcast"(%92) : (!llvm.ptr) -> !llvm.ptr
    "llvm.intr.prefetch"(%93) <{cache = 1 : i32, hint = 0 : i32, rw = 0 : i32}> : (!llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_prefetch_frameindex_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %85 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %86 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %87 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %88 = "llvm.alloca"(%85) <{alignment = 4 : i64, elem_type = !llvm.array<128 x i32>}> : (i32) -> !llvm.ptr
    %89 = "llvm.bitcast"(%88) : (!llvm.ptr) -> !llvm.ptr
    %90 = "llvm.getelementptr"(%89, %86, %87) <{elem_type = !llvm.array<128 x i32>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    "llvm.intr.prefetch"(%90) <{cache = 1 : i32, hint = 0 : i32, rw = 0 : i32}> : (!llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_prefetch_frameindex_3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %79 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %80 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %81 = "llvm.mlir.constant"() <{value = -4 : i32}> : () -> i32
    %82 = "llvm.alloca"(%79) <{alignment = 4 : i64, elem_type = !llvm.array<128 x i32>}> : (i32) -> !llvm.ptr
    %83 = "llvm.bitcast"(%82) : (!llvm.ptr) -> !llvm.ptr
    %84 = "llvm.getelementptr"(%83, %80, %81) <{elem_type = !llvm.array<128 x i32>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    "llvm.intr.prefetch"(%84) <{cache = 1 : i32, hint = 0 : i32, rw = 0 : i32}> : (!llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_prefetch_frameindex_4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %73 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %74 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %75 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %76 = "llvm.alloca"(%73) <{alignment = 4 : i64, elem_type = !llvm.array<128 x i32>}> : (i32) -> !llvm.ptr
    %77 = "llvm.bitcast"(%76) : (!llvm.ptr) -> !llvm.ptr
    %78 = "llvm.getelementptr"(%77, %74, %75) <{elem_type = !llvm.array<128 x i32>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    "llvm.intr.prefetch"(%78) <{cache = 1 : i32, hint = 0 : i32, rw = 0 : i32}> : (!llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_prefetch_frameindex_5", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %67 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %68 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %69 = "llvm.mlir.constant"() <{value = -8 : i32}> : () -> i32
    %70 = "llvm.alloca"(%67) <{alignment = 4 : i64, elem_type = !llvm.array<128 x i32>}> : (i32) -> !llvm.ptr
    %71 = "llvm.bitcast"(%70) : (!llvm.ptr) -> !llvm.ptr
    %72 = "llvm.getelementptr"(%71, %68, %69) <{elem_type = !llvm.array<128 x i32>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    "llvm.intr.prefetch"(%72) <{cache = 1 : i32, hint = 0 : i32, rw = 0 : i32}> : (!llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_prefetch_frameindex_6", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %61 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %62 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %63 = "llvm.mlir.constant"() <{value = 504 : i32}> : () -> i32
    %64 = "llvm.alloca"(%61) <{alignment = 4 : i64, elem_type = !llvm.array<128 x i32>}> : (i32) -> !llvm.ptr
    %65 = "llvm.bitcast"(%64) : (!llvm.ptr) -> !llvm.ptr
    %66 = "llvm.getelementptr"(%65, %62, %63) <{elem_type = !llvm.array<128 x i32>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    "llvm.intr.prefetch"(%66) <{cache = 1 : i32, hint = 0 : i32, rw = 0 : i32}> : (!llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_prefetch_frameindex_7", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %55 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %56 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %57 = "llvm.mlir.constant"() <{value = -512 : i32}> : () -> i32
    %58 = "llvm.alloca"(%55) <{alignment = 4 : i64, elem_type = !llvm.array<128 x i32>}> : (i32) -> !llvm.ptr
    %59 = "llvm.bitcast"(%58) : (!llvm.ptr) -> !llvm.ptr
    %60 = "llvm.getelementptr"(%59, %56, %57) <{elem_type = !llvm.array<128 x i32>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    "llvm.intr.prefetch"(%60) <{cache = 1 : i32, hint = 0 : i32, rw = 0 : i32}> : (!llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_prefetch_frameindex_8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %49 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %50 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %51 = "llvm.mlir.constant"() <{value = 505 : i32}> : () -> i32
    %52 = "llvm.alloca"(%49) <{alignment = 4 : i64, elem_type = !llvm.array<128 x i32>}> : (i32) -> !llvm.ptr
    %53 = "llvm.bitcast"(%52) : (!llvm.ptr) -> !llvm.ptr
    %54 = "llvm.getelementptr"(%53, %50, %51) <{elem_type = !llvm.array<128 x i32>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    "llvm.intr.prefetch"(%54) <{cache = 1 : i32, hint = 0 : i32, rw = 0 : i32}> : (!llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_prefetch_frameindex_9", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %43 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %44 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %45 = "llvm.mlir.constant"() <{value = -513 : i32}> : () -> i32
    %46 = "llvm.alloca"(%43) <{alignment = 4 : i64, elem_type = !llvm.array<128 x i32>}> : (i32) -> !llvm.ptr
    %47 = "llvm.bitcast"(%46) : (!llvm.ptr) -> !llvm.ptr
    %48 = "llvm.getelementptr"(%47, %44, %45) <{elem_type = !llvm.array<128 x i32>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    "llvm.intr.prefetch"(%48) <{cache = 1 : i32, hint = 0 : i32, rw = 0 : i32}> : (!llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_prefetch_constant_address_0", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %41 = "llvm.mlir.constant"() <{value = 4128 : i64}> : () -> i64
    %42 = "llvm.inttoptr"(%41) : (i64) -> !llvm.ptr
    "llvm.intr.prefetch"(%42) <{cache = 1 : i32, hint = 0 : i32, rw = 0 : i32}> : (!llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_prefetch_constant_address_1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %39 = "llvm.mlir.constant"() <{value = 4127 : i64}> : () -> i64
    %40 = "llvm.inttoptr"(%39) : (i64) -> !llvm.ptr
    "llvm.intr.prefetch"(%40) <{cache = 1 : i32, hint = 0 : i32, rw = 0 : i32}> : (!llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_prefetch_constant_address_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %37 = "llvm.mlir.constant"() <{value = -61408 : i64}> : () -> i64
    %38 = "llvm.inttoptr"(%37) : (i64) -> !llvm.ptr
    "llvm.intr.prefetch"(%38) <{cache = 1 : i32, hint = 0 : i32, rw = 0 : i32}> : (!llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_prefetch_constant_address_3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %35 = "llvm.mlir.constant"() <{value = -61409 : i64}> : () -> i64
    %36 = "llvm.inttoptr"(%35) : (i64) -> !llvm.ptr
    "llvm.intr.prefetch"(%36) <{cache = 1 : i32, hint = 0 : i32, rw = 0 : i32}> : (!llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_prefetch_global_0", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %32 = "llvm.mlir.addressof"() <{global_name = @g}> : () -> !llvm.ptr
    %33 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %34 = "llvm.getelementptr"(%32, %33, %33) <{elem_type = !llvm.array<1024 x i32>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    "llvm.intr.prefetch"(%34) <{cache = 1 : i32, hint = 0 : i32, rw = 0 : i32}> : (!llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_prefetch_global_1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %28 = "llvm.mlir.addressof"() <{global_name = @g}> : () -> !llvm.ptr
    %29 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %30 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %31 = "llvm.getelementptr"(%28, %29, %30) <{elem_type = !llvm.array<1024 x i32>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    "llvm.intr.prefetch"(%31) <{cache = 1 : i32, hint = 0 : i32, rw = 0 : i32}> : (!llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_prefetch_global_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %24 = "llvm.mlir.addressof"() <{global_name = @g}> : () -> !llvm.ptr
    %25 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %26 = "llvm.mlir.constant"() <{value = -4 : i32}> : () -> i32
    %27 = "llvm.getelementptr"(%24, %25, %26) <{elem_type = !llvm.array<1024 x i32>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    "llvm.intr.prefetch"(%27) <{cache = 1 : i32, hint = 0 : i32, rw = 0 : i32}> : (!llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_prefetch_global_3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %20 = "llvm.mlir.addressof"() <{global_name = @g}> : () -> !llvm.ptr
    %21 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %22 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %23 = "llvm.getelementptr"(%20, %21, %22) <{elem_type = !llvm.array<1024 x i32>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    "llvm.intr.prefetch"(%23) <{cache = 1 : i32, hint = 0 : i32, rw = 0 : i32}> : (!llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_prefetch_global_4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %16 = "llvm.mlir.addressof"() <{global_name = @g}> : () -> !llvm.ptr
    %17 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %18 = "llvm.mlir.constant"() <{value = -8 : i32}> : () -> i32
    %19 = "llvm.getelementptr"(%16, %17, %18) <{elem_type = !llvm.array<1024 x i32>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    "llvm.intr.prefetch"(%19) <{cache = 1 : i32, hint = 0 : i32, rw = 0 : i32}> : (!llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_prefetch_global_5", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %12 = "llvm.mlir.addressof"() <{global_name = @g}> : () -> !llvm.ptr
    %13 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %14 = "llvm.mlir.constant"() <{value = 504 : i32}> : () -> i32
    %15 = "llvm.getelementptr"(%12, %13, %14) <{elem_type = !llvm.array<1024 x i32>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    "llvm.intr.prefetch"(%15) <{cache = 1 : i32, hint = 0 : i32, rw = 0 : i32}> : (!llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_prefetch_global_6", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %8 = "llvm.mlir.addressof"() <{global_name = @g}> : () -> !llvm.ptr
    %9 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %10 = "llvm.mlir.constant"() <{value = -512 : i32}> : () -> i32
    %11 = "llvm.getelementptr"(%8, %9, %10) <{elem_type = !llvm.array<1024 x i32>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    "llvm.intr.prefetch"(%11) <{cache = 1 : i32, hint = 0 : i32, rw = 0 : i32}> : (!llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_prefetch_global_7", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %4 = "llvm.mlir.addressof"() <{global_name = @g}> : () -> !llvm.ptr
    %5 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %6 = "llvm.mlir.constant"() <{value = 505 : i32}> : () -> i32
    %7 = "llvm.getelementptr"(%4, %5, %6) <{elem_type = !llvm.array<1024 x i32>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    "llvm.intr.prefetch"(%7) <{cache = 1 : i32, hint = 0 : i32, rw = 0 : i32}> : (!llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_prefetch_global_8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %0 = "llvm.mlir.addressof"() <{global_name = @g}> : () -> !llvm.ptr
    %1 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %2 = "llvm.mlir.constant"() <{value = -513 : i32}> : () -> i32
    %3 = "llvm.getelementptr"(%0, %1, %2) <{elem_type = !llvm.array<1024 x i32>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    "llvm.intr.prefetch"(%3) <{cache = 1 : i32, hint = 0 : i32, rw = 0 : i32}> : (!llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

