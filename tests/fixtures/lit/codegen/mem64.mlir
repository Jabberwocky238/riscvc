"builtin.module"() ({
  "llvm.mlir.global"() <{addr_space = 0 : i32, dso_local, global_type = i64, linkage = #llvm.linkage<external>, sym_name = "G", unnamed_addr = 0 : i64, value = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<i64 (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "lb", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg33: !llvm.ptr):
    %98 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %99 = "llvm.getelementptr"(%arg33, %98) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %100 = "llvm.load"(%99) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %101 = "llvm.sext"(%100) : (i8) -> i64
    %102 = "llvm.load"(%arg33) <{alignment = 1 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i8
    "llvm.return"(%101) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<i64 (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "lh", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg32: !llvm.ptr):
    %93 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %94 = "llvm.getelementptr"(%arg32, %93) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %95 = "llvm.load"(%94) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %96 = "llvm.sext"(%95) : (i16) -> i64
    %97 = "llvm.load"(%arg32) <{alignment = 2 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i16
    "llvm.return"(%96) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<i64 (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "lw", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg31: !llvm.ptr):
    %88 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %89 = "llvm.getelementptr"(%arg31, %88) <{elem_type = i32, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %90 = "llvm.load"(%89) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %91 = "llvm.sext"(%90) : (i32) -> i64
    %92 = "llvm.load"(%arg31) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i32
    "llvm.return"(%91) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<i64 (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "lbu", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg30: !llvm.ptr):
    %81 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %82 = "llvm.getelementptr"(%arg30, %81) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %83 = "llvm.load"(%82) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %84 = "llvm.zext"(%83) : (i8) -> i64
    %85 = "llvm.load"(%arg30) <{alignment = 1 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i8
    %86 = "llvm.zext"(%85) : (i8) -> i64
    %87 = "llvm.add"(%84, %86) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%87) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<i64 (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "lhu", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg29: !llvm.ptr):
    %74 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %75 = "llvm.getelementptr"(%arg29, %74) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %76 = "llvm.load"(%75) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %77 = "llvm.zext"(%76) : (i16) -> i64
    %78 = "llvm.load"(%arg29) <{alignment = 2 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i16
    %79 = "llvm.zext"(%78) : (i16) -> i64
    %80 = "llvm.add"(%77, %79) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%80) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<i64 (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "lwu", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg28: !llvm.ptr):
    %67 = "llvm.mlir.constant"() <{value = 6 : i32}> : () -> i32
    %68 = "llvm.getelementptr"(%arg28, %67) <{elem_type = i32, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %69 = "llvm.load"(%68) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %70 = "llvm.zext"(%69) : (i32) -> i64
    %71 = "llvm.load"(%arg28) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i32
    %72 = "llvm.zext"(%71) : (i32) -> i64
    %73 = "llvm.add"(%70, %72) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%73) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<void (ptr, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sb", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg26: !llvm.ptr, %arg27: i8):
    %65 = "llvm.mlir.constant"() <{value = 7 : i32}> : () -> i32
    "llvm.store"(%arg27, %arg26) <{alignment = 1 : i64, ordering = 0 : i64}> : (i8, !llvm.ptr) -> ()
    %66 = "llvm.getelementptr"(%arg26, %65) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%arg27, %66) <{alignment = 1 : i64, ordering = 0 : i64}> : (i8, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<void (ptr, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sh", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg24: !llvm.ptr, %arg25: i16):
    %63 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    "llvm.store"(%arg25, %arg24) <{alignment = 2 : i64, ordering = 0 : i64}> : (i16, !llvm.ptr) -> ()
    %64 = "llvm.getelementptr"(%arg24, %63) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%arg25, %64) <{alignment = 2 : i64, ordering = 0 : i64}> : (i16, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<void (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sw", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg22: !llvm.ptr, %arg23: i32):
    %61 = "llvm.mlir.constant"() <{value = 9 : i32}> : () -> i32
    "llvm.store"(%arg23, %arg22) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %62 = "llvm.getelementptr"(%arg22, %61) <{elem_type = i32, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%arg23, %62) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<i64 (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "ld", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg21: !llvm.ptr):
    %57 = "llvm.mlir.constant"() <{value = 10 : i32}> : () -> i32
    %58 = "llvm.getelementptr"(%arg21, %57) <{elem_type = i64, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %59 = "llvm.load"(%58) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    %60 = "llvm.load"(%arg21) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i64
    "llvm.return"(%59) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<void (ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sd", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg19: !llvm.ptr, %arg20: i64):
    %55 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    "llvm.store"(%arg20, %arg19) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %56 = "llvm.getelementptr"(%arg19, %55) <{elem_type = i64, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%arg20, %56) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<i64 (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "load_sext_zext_anyext_i1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg18: !llvm.ptr):
    %45 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %46 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %47 = "llvm.getelementptr"(%arg18, %45) <{elem_type = i1, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %48 = "llvm.load"(%47) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i1
    %49 = "llvm.sext"(%48) : (i1) -> i64
    %50 = "llvm.getelementptr"(%arg18, %46) <{elem_type = i1, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %51 = "llvm.load"(%50) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i1
    %52 = "llvm.zext"(%51) : (i1) -> i64
    %53 = "llvm.add"(%49, %52) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %54 = "llvm.load"(%arg18) <{alignment = 1 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i1
    "llvm.return"(%53) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<i16 (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "load_sext_zext_anyext_i1_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg17: !llvm.ptr):
    %35 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %36 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %37 = "llvm.getelementptr"(%arg17, %35) <{elem_type = i1, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %38 = "llvm.load"(%37) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i1
    %39 = "llvm.sext"(%38) : (i1) -> i16
    %40 = "llvm.getelementptr"(%arg17, %36) <{elem_type = i1, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %41 = "llvm.load"(%40) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i1
    %42 = "llvm.zext"(%41) : (i1) -> i16
    %43 = "llvm.add"(%39, %42) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    %44 = "llvm.load"(%arg17) <{alignment = 1 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i1
    "llvm.return"(%43) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "ld_sd_global", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg16: i64):
    %30 = "llvm.mlir.addressof"() <{global_name = @G}> : () -> !llvm.ptr
    %31 = "llvm.mlir.constant"() <{value = 9 : i64}> : () -> i64
    %32 = "llvm.load"(%30) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i64
    "llvm.store"(%arg16, %30) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %33 = "llvm.getelementptr"(%30, %31) <{elem_type = i64, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %34 = "llvm.load"(%33) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i64
    "llvm.store"(%arg16, %33) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    "llvm.return"(%32) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr)>, linkage = #llvm.linkage<external>, sym_name = "lw_near_local", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg15: !llvm.ptr):
    %27 = "llvm.mlir.constant"() <{value = 257 : i64}> : () -> i64
    %28 = "llvm.getelementptr"(%arg15, %27) <{elem_type = i64, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %29 = "llvm.load"(%28) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i64
    "llvm.return"(%29) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i64)>, linkage = #llvm.linkage<external>, sym_name = "st_near_local", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg13: !llvm.ptr, %arg14: i64):
    %25 = "llvm.mlir.constant"() <{value = 257 : i64}> : () -> i64
    %26 = "llvm.getelementptr"(%arg13, %25) <{elem_type = i64, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.store"(%arg14, %26) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64)>, linkage = #llvm.linkage<external>, sym_name = "lw_sw_near_local", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg11: !llvm.ptr, %arg12: i64):
    %22 = "llvm.mlir.constant"() <{value = 257 : i64}> : () -> i64
    %23 = "llvm.getelementptr"(%arg11, %22) <{elem_type = i64, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %24 = "llvm.load"(%23) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i64
    "llvm.store"(%arg12, %23) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    "llvm.return"(%24) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr)>, linkage = #llvm.linkage<external>, sym_name = "lw_far_local", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: !llvm.ptr):
    %19 = "llvm.mlir.constant"() <{value = 4095 : i64}> : () -> i64
    %20 = "llvm.getelementptr"(%arg10, %19) <{elem_type = i64, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %21 = "llvm.load"(%20) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i64
    "llvm.return"(%21) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i64)>, linkage = #llvm.linkage<external>, sym_name = "st_far_local", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: !llvm.ptr, %arg9: i64):
    %17 = "llvm.mlir.constant"() <{value = 4095 : i64}> : () -> i64
    %18 = "llvm.getelementptr"(%arg8, %17) <{elem_type = i64, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.store"(%arg9, %18) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64)>, linkage = #llvm.linkage<external>, sym_name = "lw_sw_far_local", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: !llvm.ptr, %arg7: i64):
    %14 = "llvm.mlir.constant"() <{value = 4095 : i64}> : () -> i64
    %15 = "llvm.getelementptr"(%arg6, %14) <{elem_type = i64, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %16 = "llvm.load"(%15) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i64
    "llvm.store"(%arg7, %15) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    "llvm.return"(%16) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr)>, linkage = #llvm.linkage<external>, sym_name = "lw_really_far_local", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: !llvm.ptr):
    %11 = "llvm.mlir.constant"() <{value = 268435200 : i64}> : () -> i64
    %12 = "llvm.getelementptr"(%arg5, %11) <{elem_type = i64, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %13 = "llvm.load"(%12) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i64
    "llvm.return"(%13) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i64)>, linkage = #llvm.linkage<external>, sym_name = "st_really_far_local", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: !llvm.ptr, %arg4: i64):
    %9 = "llvm.mlir.constant"() <{value = 268435200 : i64}> : () -> i64
    %10 = "llvm.getelementptr"(%arg3, %9) <{elem_type = i64, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.store"(%arg4, %10) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64)>, linkage = #llvm.linkage<external>, sym_name = "lw_sw_really_far_local", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: !llvm.ptr, %arg2: i64):
    %6 = "llvm.mlir.constant"() <{value = 268435200 : i64}> : () -> i64
    %7 = "llvm.getelementptr"(%arg1, %6) <{elem_type = i64, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %8 = "llvm.load"(%7) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i64
    "llvm.store"(%arg2, %7) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    "llvm.return"(%8) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "addi_fold_crash", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i64):
    %0 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %2 = "llvm.mlir.constant"() <{value = 0 : i8}> : () -> i8
    %3 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = !llvm.struct<"struct.quux", (i32, array<0 x i8>)>}> : (i32) -> !llvm.ptr
    %4 = "llvm.getelementptr"(%3, %1) <{elem_type = !llvm.struct<"struct.quux", (i32, array<0 x i8>)>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %5 = "llvm.getelementptr"(%3, %1, %arg0) <{elem_type = !llvm.struct<"struct.quux", (i32, array<0 x i8>)>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, 1, -2147483648>}> : (!llvm.ptr, i64, i64) -> !llvm.ptr
    "llvm.store"(%2, %5) <{alignment = 1 : i64, ordering = 0 : i64}> : (i8, !llvm.ptr) -> ()
    "llvm.call"(%4) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @snork, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, sym_name = "snork", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

