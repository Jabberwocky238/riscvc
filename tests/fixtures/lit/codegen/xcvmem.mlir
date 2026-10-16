"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<vector<2xi32> (ptr)>, linkage = #llvm.linkage<external>, sym_name = "lb_ri_inc", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg48: !llvm.ptr):
    %109 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %110 = "llvm.mlir.poison"() : () -> vector<2xi32>
    %111 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %112 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %113 = "llvm.load"(%arg48) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %114 = "llvm.sext"(%113) : (i8) -> i32
    %115 = "llvm.getelementptr"(%arg48, %109) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %116 = "llvm.ptrtoint"(%115) : (!llvm.ptr) -> i32
    %117 = "llvm.insertelement"(%110, %116, %111) : (vector<2xi32>, i32, i32) -> vector<2xi32>
    %118 = "llvm.insertelement"(%117, %114, %112) : (vector<2xi32>, i32, i32) -> vector<2xi32>
    "llvm.return"(%118) : (vector<2xi32>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<vector<2xi32> (ptr, i32)>, linkage = #llvm.linkage<external>, sym_name = "lb_rr_inc", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg46: !llvm.ptr, %arg47: i32):
    %100 = "llvm.mlir.poison"() : () -> vector<2xi32>
    %101 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %102 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %103 = "llvm.load"(%arg46) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %104 = "llvm.sext"(%103) : (i8) -> i32
    %105 = "llvm.getelementptr"(%arg46, %arg47) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %106 = "llvm.ptrtoint"(%105) : (!llvm.ptr) -> i32
    %107 = "llvm.insertelement"(%100, %106, %101) : (vector<2xi32>, i32, i32) -> vector<2xi32>
    %108 = "llvm.insertelement"(%107, %104, %102) : (vector<2xi32>, i32, i32) -> vector<2xi32>
    "llvm.return"(%108) : (vector<2xi32>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, sym_name = "lb_rr", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg44: !llvm.ptr, %arg45: i32):
    %97 = "llvm.getelementptr"(%arg44, %arg45) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %98 = "llvm.load"(%97) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %99 = "llvm.sext"(%98) : (i8) -> i32
    "llvm.return"(%99) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<vector<2xi32> (ptr)>, linkage = #llvm.linkage<external>, sym_name = "lbu_ri_inc", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg43: !llvm.ptr):
    %87 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %88 = "llvm.mlir.poison"() : () -> vector<2xi32>
    %89 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %90 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %91 = "llvm.load"(%arg43) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %92 = "llvm.zext"(%91) : (i8) -> i32
    %93 = "llvm.getelementptr"(%arg43, %87) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %94 = "llvm.ptrtoint"(%93) : (!llvm.ptr) -> i32
    %95 = "llvm.insertelement"(%88, %94, %89) : (vector<2xi32>, i32, i32) -> vector<2xi32>
    %96 = "llvm.insertelement"(%95, %92, %90) : (vector<2xi32>, i32, i32) -> vector<2xi32>
    "llvm.return"(%96) : (vector<2xi32>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<vector<2xi32> (ptr, i32)>, linkage = #llvm.linkage<external>, sym_name = "lbu_rr_inc", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg41: !llvm.ptr, %arg42: i32):
    %78 = "llvm.mlir.poison"() : () -> vector<2xi32>
    %79 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %80 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %81 = "llvm.load"(%arg41) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %82 = "llvm.zext"(%81) : (i8) -> i32
    %83 = "llvm.getelementptr"(%arg41, %arg42) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %84 = "llvm.ptrtoint"(%83) : (!llvm.ptr) -> i32
    %85 = "llvm.insertelement"(%78, %84, %79) : (vector<2xi32>, i32, i32) -> vector<2xi32>
    %86 = "llvm.insertelement"(%85, %82, %80) : (vector<2xi32>, i32, i32) -> vector<2xi32>
    "llvm.return"(%86) : (vector<2xi32>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, sym_name = "lbu_rr", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg39: !llvm.ptr, %arg40: i32):
    %75 = "llvm.getelementptr"(%arg39, %arg40) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %76 = "llvm.load"(%75) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %77 = "llvm.zext"(%76) : (i8) -> i32
    "llvm.return"(%77) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<vector<2xi32> (ptr)>, linkage = #llvm.linkage<external>, sym_name = "lh_ri_inc", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg38: !llvm.ptr):
    %65 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %66 = "llvm.mlir.poison"() : () -> vector<2xi32>
    %67 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %68 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %69 = "llvm.load"(%arg38) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %70 = "llvm.sext"(%69) : (i16) -> i32
    %71 = "llvm.getelementptr"(%arg38, %65) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %72 = "llvm.ptrtoint"(%71) : (!llvm.ptr) -> i32
    %73 = "llvm.insertelement"(%66, %72, %67) : (vector<2xi32>, i32, i32) -> vector<2xi32>
    %74 = "llvm.insertelement"(%73, %70, %68) : (vector<2xi32>, i32, i32) -> vector<2xi32>
    "llvm.return"(%74) : (vector<2xi32>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<vector<2xi32> (ptr, i32)>, linkage = #llvm.linkage<external>, sym_name = "lh_rr_inc", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg36: !llvm.ptr, %arg37: i32):
    %56 = "llvm.mlir.poison"() : () -> vector<2xi32>
    %57 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %58 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %59 = "llvm.load"(%arg36) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %60 = "llvm.sext"(%59) : (i16) -> i32
    %61 = "llvm.getelementptr"(%arg36, %arg37) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %62 = "llvm.ptrtoint"(%61) : (!llvm.ptr) -> i32
    %63 = "llvm.insertelement"(%56, %62, %57) : (vector<2xi32>, i32, i32) -> vector<2xi32>
    %64 = "llvm.insertelement"(%63, %60, %58) : (vector<2xi32>, i32, i32) -> vector<2xi32>
    "llvm.return"(%64) : (vector<2xi32>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, sym_name = "lh_rr", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg34: !llvm.ptr, %arg35: i32):
    %53 = "llvm.getelementptr"(%arg34, %arg35) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %54 = "llvm.load"(%53) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %55 = "llvm.sext"(%54) : (i16) -> i32
    "llvm.return"(%55) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<vector<2xi32> (ptr)>, linkage = #llvm.linkage<external>, sym_name = "lhu_ri_inc", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg33: !llvm.ptr):
    %43 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %44 = "llvm.mlir.poison"() : () -> vector<2xi32>
    %45 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %46 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %47 = "llvm.load"(%arg33) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %48 = "llvm.zext"(%47) : (i16) -> i32
    %49 = "llvm.getelementptr"(%arg33, %43) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %50 = "llvm.ptrtoint"(%49) : (!llvm.ptr) -> i32
    %51 = "llvm.insertelement"(%44, %50, %45) : (vector<2xi32>, i32, i32) -> vector<2xi32>
    %52 = "llvm.insertelement"(%51, %48, %46) : (vector<2xi32>, i32, i32) -> vector<2xi32>
    "llvm.return"(%52) : (vector<2xi32>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<vector<2xi32> (ptr, i32)>, linkage = #llvm.linkage<external>, sym_name = "lhu_rr_inc", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg31: !llvm.ptr, %arg32: i32):
    %34 = "llvm.mlir.poison"() : () -> vector<2xi32>
    %35 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %36 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %37 = "llvm.load"(%arg31) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %38 = "llvm.zext"(%37) : (i16) -> i32
    %39 = "llvm.getelementptr"(%arg31, %arg32) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %40 = "llvm.ptrtoint"(%39) : (!llvm.ptr) -> i32
    %41 = "llvm.insertelement"(%34, %40, %35) : (vector<2xi32>, i32, i32) -> vector<2xi32>
    %42 = "llvm.insertelement"(%41, %38, %36) : (vector<2xi32>, i32, i32) -> vector<2xi32>
    "llvm.return"(%42) : (vector<2xi32>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, sym_name = "lhu_rr", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg29: !llvm.ptr, %arg30: i32):
    %31 = "llvm.getelementptr"(%arg29, %arg30) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %32 = "llvm.load"(%31) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %33 = "llvm.zext"(%32) : (i16) -> i32
    "llvm.return"(%33) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<vector<2xi32> (ptr)>, linkage = #llvm.linkage<external>, sym_name = "lw_ri_inc", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg28: !llvm.ptr):
    %22 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %23 = "llvm.mlir.poison"() : () -> vector<2xi32>
    %24 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %25 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %26 = "llvm.load"(%arg28) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %27 = "llvm.getelementptr"(%arg28, %22) <{elem_type = i32, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %28 = "llvm.ptrtoint"(%27) : (!llvm.ptr) -> i32
    %29 = "llvm.insertelement"(%23, %28, %24) : (vector<2xi32>, i32, i32) -> vector<2xi32>
    %30 = "llvm.insertelement"(%29, %26, %25) : (vector<2xi32>, i32, i32) -> vector<2xi32>
    "llvm.return"(%30) : (vector<2xi32>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<vector<2xi32> (ptr, i32)>, linkage = #llvm.linkage<external>, sym_name = "lw_rr_inc", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg26: !llvm.ptr, %arg27: i32):
    %14 = "llvm.mlir.poison"() : () -> vector<2xi32>
    %15 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %16 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %17 = "llvm.load"(%arg26) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %18 = "llvm.getelementptr"(%arg26, %arg27) <{elem_type = i32, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %19 = "llvm.ptrtoint"(%18) : (!llvm.ptr) -> i32
    %20 = "llvm.insertelement"(%14, %19, %15) : (vector<2xi32>, i32, i32) -> vector<2xi32>
    %21 = "llvm.insertelement"(%20, %17, %16) : (vector<2xi32>, i32, i32) -> vector<2xi32>
    "llvm.return"(%21) : (vector<2xi32>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, sym_name = "lw_rr", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg24: !llvm.ptr, %arg25: i32):
    %12 = "llvm.getelementptr"(%arg24, %arg25) <{elem_type = i32, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %13 = "llvm.load"(%12) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.return"(%13) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<ptr (ptr, i8)>, linkage = #llvm.linkage<external>, sym_name = "sb_ri_inc", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg22: !llvm.ptr, %arg23: i8):
    %10 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    "llvm.store"(%arg23, %arg22) <{alignment = 1 : i64, ordering = 0 : i64}> : (i8, !llvm.ptr) -> ()
    %11 = "llvm.getelementptr"(%arg22, %10) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.return"(%11) : (!llvm.ptr) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<ptr (ptr, i8, i32)>, linkage = #llvm.linkage<external>, sym_name = "sb_rr_inc", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg19: !llvm.ptr, %arg20: i8, %arg21: i32):
    "llvm.store"(%arg20, %arg19) <{alignment = 1 : i64, ordering = 0 : i64}> : (i8, !llvm.ptr) -> ()
    %9 = "llvm.getelementptr"(%arg19, %arg21) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.return"(%9) : (!llvm.ptr) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i8, i32)>, linkage = #llvm.linkage<external>, sym_name = "sb_rr", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg16: !llvm.ptr, %arg17: i8, %arg18: i32):
    %8 = "llvm.getelementptr"(%arg16, %arg18) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%arg17, %8) <{alignment = 1 : i64, ordering = 0 : i64}> : (i8, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<ptr (ptr, i16)>, linkage = #llvm.linkage<external>, sym_name = "sh_ri_inc", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: !llvm.ptr, %arg15: i16):
    %6 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    "llvm.store"(%arg15, %arg14) <{alignment = 2 : i64, ordering = 0 : i64}> : (i16, !llvm.ptr) -> ()
    %7 = "llvm.getelementptr"(%arg14, %6) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.return"(%7) : (!llvm.ptr) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<ptr (ptr, i16, i32)>, linkage = #llvm.linkage<external>, sym_name = "sh_rr_inc", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg11: !llvm.ptr, %arg12: i16, %arg13: i32):
    "llvm.store"(%arg12, %arg11) <{alignment = 2 : i64, ordering = 0 : i64}> : (i16, !llvm.ptr) -> ()
    %5 = "llvm.getelementptr"(%arg11, %arg13) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.return"(%5) : (!llvm.ptr) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i16, i32)>, linkage = #llvm.linkage<external>, sym_name = "sh_rr", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: !llvm.ptr, %arg9: i16, %arg10: i32):
    %4 = "llvm.getelementptr"(%arg8, %arg10) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%arg9, %4) <{alignment = 2 : i64, ordering = 0 : i64}> : (i16, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<ptr (ptr, i32)>, linkage = #llvm.linkage<external>, sym_name = "sw_ri_inc", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: !llvm.ptr, %arg7: i32):
    %2 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    "llvm.store"(%arg7, %arg6) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %3 = "llvm.getelementptr"(%arg6, %2) <{elem_type = i32, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.return"(%3) : (!llvm.ptr) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<ptr (ptr, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "sw_rr_inc", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: !llvm.ptr, %arg4: i32, %arg5: i32):
    "llvm.store"(%arg4, %arg3) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %1 = "llvm.getelementptr"(%arg3, %arg5) <{elem_type = i32, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.return"(%1) : (!llvm.ptr) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "sw_rr", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: !llvm.ptr, %arg1: i32, %arg2: i32):
    %0 = "llvm.getelementptr"(%arg0, %arg2) <{elem_type = i32, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%arg1, %0) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

