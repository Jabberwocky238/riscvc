"builtin.module"() ({
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<warning, "Debug Info Version", 3 : i32>]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, i32, ptr, ptr, f32)>, linkage = #llvm.linkage<external>, sym_name = "omp_atomic_capture_prefix_update", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: !llvm.ptr, %arg1: !llvm.ptr, %arg2: i32, %arg3: !llvm.ptr, %arg4: !llvm.ptr, %arg5: f32):
    %0 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "llvm.alloca"(%0) <{alignment = 4 : i64, elem_type = f32}> : (i32) -> !llvm.ptr
    %2 = "llvm.alloca"(%0) <{alignment = 4 : i64, elem_type = f32}> : (i32) -> !llvm.ptr
    %3 = "llvm.alloca"(%0) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %4 = "llvm.alloca"(%0) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %5 = "llvm.alloca"(%0) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %6 = "llvm.alloca"(%0) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %7 = "llvm.alloca"(%0) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %8 = "llvm.alloca"(%0) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %9 = "llvm.alloca"(%0) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %10 = "llvm.alloca"(%0) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %11 = "llvm.alloca"(%0) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %12 = "llvm.alloca"(%0) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    %13 = "llvm.atomicrmw"(%arg0, %arg2) <{alignment = 4 : i64, bin_op = 1 : i64, ordering = 2 : i64}> : (!llvm.ptr, i32) -> i32
    %14 = "llvm.add"(%13, %arg2) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.store"(%14, %arg1) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %15 = "llvm.atomicrmw"(%arg0, %arg2) <{alignment = 4 : i64, bin_op = 2 : i64, ordering = 2 : i64}> : (!llvm.ptr, i32) -> i32
    %16 = "llvm.sub"(%15, %arg2) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.store"(%16, %arg1) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %17 = "llvm.atomicrmw"(%arg0, %arg2) <{alignment = 4 : i64, bin_op = 3 : i64, ordering = 2 : i64}> : (!llvm.ptr, i32) -> i32
    %18 = "llvm.and"(%17, %arg2) : (i32, i32) -> i32
    "llvm.store"(%18, %arg1) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %19 = "llvm.atomicrmw"(%arg0, %arg2) <{alignment = 4 : i64, bin_op = 5 : i64, ordering = 2 : i64}> : (!llvm.ptr, i32) -> i32
    %20 = "llvm.or"(%19, %arg2) : (i32, i32) -> i32
    "llvm.store"(%20, %arg1) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %21 = "llvm.atomicrmw"(%arg0, %arg2) <{alignment = 4 : i64, bin_op = 6 : i64, ordering = 2 : i64}> : (!llvm.ptr, i32) -> i32
    %22 = "llvm.xor"(%21, %arg2) : (i32, i32) -> i32
    "llvm.store"(%22, %arg1) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %23 = "llvm.load"(%arg0) <{alignment = 4 : i64, ordering = 2 : i64}> : (!llvm.ptr) -> i32
    "llvm.br"(%23)[^bb2] : (i32) -> ()
  ^bb2(%24: i32):  // 2 preds: ^bb1, ^bb2
    %25 = "llvm.mul"(%24, %arg2) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.store"(%25, %12) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %26 = "llvm.load"(%12) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %27 = "llvm.cmpxchg"(%arg0, %24, %26) <{alignment = 4 : i64, failure_ordering = 2 : i64, success_ordering = 2 : i64}> : (!llvm.ptr, i32, i32) -> !llvm.struct<(i32, i1)>
    %28 = "llvm.extractvalue"(%27) <{position = array<i64: 0>}> : (!llvm.struct<(i32, i1)>) -> i32
    %29 = "llvm.extractvalue"(%27) <{position = array<i64: 1>}> : (!llvm.struct<(i32, i1)>) -> i1
    "llvm.cond_br"(%29, %28)[^bb3, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb3:  // pred: ^bb2
    "llvm.store"(%25, %arg1) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %30 = "llvm.load"(%arg0) <{alignment = 4 : i64, ordering = 2 : i64}> : (!llvm.ptr) -> i32
    "llvm.br"(%30)[^bb4] : (i32) -> ()
  ^bb4(%31: i32):  // 2 preds: ^bb3, ^bb4
    %32 = "llvm.sdiv"(%31, %arg2) : (i32, i32) -> i32
    "llvm.store"(%32, %11) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %33 = "llvm.load"(%11) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %34 = "llvm.cmpxchg"(%arg0, %31, %33) <{alignment = 4 : i64, failure_ordering = 2 : i64, success_ordering = 2 : i64}> : (!llvm.ptr, i32, i32) -> !llvm.struct<(i32, i1)>
    %35 = "llvm.extractvalue"(%34) <{position = array<i64: 0>}> : (!llvm.struct<(i32, i1)>) -> i32
    %36 = "llvm.extractvalue"(%34) <{position = array<i64: 1>}> : (!llvm.struct<(i32, i1)>) -> i1
    "llvm.cond_br"(%36, %35)[^bb5, ^bb4] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb5:  // pred: ^bb4
    "llvm.store"(%32, %arg1) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %37 = "llvm.load"(%arg0) <{alignment = 4 : i64, ordering = 2 : i64}> : (!llvm.ptr) -> i32
    "llvm.br"(%37)[^bb6] : (i32) -> ()
  ^bb6(%38: i32):  // 2 preds: ^bb5, ^bb6
    %39 = "llvm.udiv"(%38, %arg2) : (i32, i32) -> i32
    "llvm.store"(%39, %10) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %40 = "llvm.load"(%10) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %41 = "llvm.cmpxchg"(%arg0, %38, %40) <{alignment = 4 : i64, failure_ordering = 2 : i64, success_ordering = 2 : i64}> : (!llvm.ptr, i32, i32) -> !llvm.struct<(i32, i1)>
    %42 = "llvm.extractvalue"(%41) <{position = array<i64: 0>}> : (!llvm.struct<(i32, i1)>) -> i32
    %43 = "llvm.extractvalue"(%41) <{position = array<i64: 1>}> : (!llvm.struct<(i32, i1)>) -> i1
    "llvm.cond_br"(%43, %42)[^bb7, ^bb6] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb7:  // pred: ^bb6
    "llvm.store"(%39, %arg1) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %44 = "llvm.load"(%arg0) <{alignment = 4 : i64, ordering = 2 : i64}> : (!llvm.ptr) -> i32
    "llvm.br"(%44)[^bb8] : (i32) -> ()
  ^bb8(%45: i32):  // 2 preds: ^bb7, ^bb8
    %46 = "llvm.shl"(%45, %arg2) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.store"(%46, %9) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %47 = "llvm.load"(%9) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %48 = "llvm.cmpxchg"(%arg0, %45, %47) <{alignment = 4 : i64, failure_ordering = 2 : i64, success_ordering = 2 : i64}> : (!llvm.ptr, i32, i32) -> !llvm.struct<(i32, i1)>
    %49 = "llvm.extractvalue"(%48) <{position = array<i64: 0>}> : (!llvm.struct<(i32, i1)>) -> i32
    %50 = "llvm.extractvalue"(%48) <{position = array<i64: 1>}> : (!llvm.struct<(i32, i1)>) -> i1
    "llvm.cond_br"(%50, %49)[^bb9, ^bb8] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb9:  // pred: ^bb8
    "llvm.store"(%46, %arg1) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %51 = "llvm.load"(%arg0) <{alignment = 4 : i64, ordering = 2 : i64}> : (!llvm.ptr) -> i32
    "llvm.br"(%51)[^bb10] : (i32) -> ()
  ^bb10(%52: i32):  // 2 preds: ^bb9, ^bb10
    %53 = "llvm.lshr"(%52, %arg2) : (i32, i32) -> i32
    "llvm.store"(%53, %8) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %54 = "llvm.load"(%8) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %55 = "llvm.cmpxchg"(%arg0, %52, %54) <{alignment = 4 : i64, failure_ordering = 2 : i64, success_ordering = 2 : i64}> : (!llvm.ptr, i32, i32) -> !llvm.struct<(i32, i1)>
    %56 = "llvm.extractvalue"(%55) <{position = array<i64: 0>}> : (!llvm.struct<(i32, i1)>) -> i32
    %57 = "llvm.extractvalue"(%55) <{position = array<i64: 1>}> : (!llvm.struct<(i32, i1)>) -> i1
    "llvm.cond_br"(%57, %56)[^bb11, ^bb10] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb11:  // pred: ^bb10
    "llvm.store"(%53, %arg1) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %58 = "llvm.load"(%arg0) <{alignment = 4 : i64, ordering = 2 : i64}> : (!llvm.ptr) -> i32
    "llvm.br"(%58)[^bb12] : (i32) -> ()
  ^bb12(%59: i32):  // 2 preds: ^bb11, ^bb12
    %60 = "llvm.ashr"(%59, %arg2) : (i32, i32) -> i32
    "llvm.store"(%60, %7) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %61 = "llvm.load"(%7) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %62 = "llvm.cmpxchg"(%arg0, %59, %61) <{alignment = 4 : i64, failure_ordering = 2 : i64, success_ordering = 2 : i64}> : (!llvm.ptr, i32, i32) -> !llvm.struct<(i32, i1)>
    %63 = "llvm.extractvalue"(%62) <{position = array<i64: 0>}> : (!llvm.struct<(i32, i1)>) -> i32
    %64 = "llvm.extractvalue"(%62) <{position = array<i64: 1>}> : (!llvm.struct<(i32, i1)>) -> i1
    "llvm.cond_br"(%64, %63)[^bb13, ^bb12] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb13:  // pred: ^bb12
    "llvm.store"(%60, %arg1) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %65 = "llvm.load"(%arg0) <{alignment = 4 : i64, ordering = 2 : i64}> : (!llvm.ptr) -> i32
    "llvm.br"(%65)[^bb14] : (i32) -> ()
  ^bb14(%66: i32):  // 2 preds: ^bb13, ^bb14
    %67 = "llvm.intr.smax"(%66, %arg2) : (i32, i32) -> i32
    "llvm.store"(%67, %6) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %68 = "llvm.load"(%6) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %69 = "llvm.cmpxchg"(%arg0, %66, %68) <{alignment = 4 : i64, failure_ordering = 2 : i64, success_ordering = 2 : i64}> : (!llvm.ptr, i32, i32) -> !llvm.struct<(i32, i1)>
    %70 = "llvm.extractvalue"(%69) <{position = array<i64: 0>}> : (!llvm.struct<(i32, i1)>) -> i32
    %71 = "llvm.extractvalue"(%69) <{position = array<i64: 1>}> : (!llvm.struct<(i32, i1)>) -> i1
    "llvm.cond_br"(%71, %70)[^bb15, ^bb14] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb15:  // pred: ^bb14
    "llvm.store"(%67, %arg1) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %72 = "llvm.load"(%arg0) <{alignment = 4 : i64, ordering = 2 : i64}> : (!llvm.ptr) -> i32
    "llvm.br"(%72)[^bb16] : (i32) -> ()
  ^bb16(%73: i32):  // 2 preds: ^bb15, ^bb16
    %74 = "llvm.intr.smin"(%73, %arg2) : (i32, i32) -> i32
    "llvm.store"(%74, %5) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %75 = "llvm.load"(%5) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %76 = "llvm.cmpxchg"(%arg0, %73, %75) <{alignment = 4 : i64, failure_ordering = 2 : i64, success_ordering = 2 : i64}> : (!llvm.ptr, i32, i32) -> !llvm.struct<(i32, i1)>
    %77 = "llvm.extractvalue"(%76) <{position = array<i64: 0>}> : (!llvm.struct<(i32, i1)>) -> i32
    %78 = "llvm.extractvalue"(%76) <{position = array<i64: 1>}> : (!llvm.struct<(i32, i1)>) -> i1
    "llvm.cond_br"(%78, %77)[^bb17, ^bb16] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb17:  // pred: ^bb16
    "llvm.store"(%74, %arg1) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %79 = "llvm.load"(%arg0) <{alignment = 4 : i64, ordering = 2 : i64}> : (!llvm.ptr) -> i32
    "llvm.br"(%79)[^bb18] : (i32) -> ()
  ^bb18(%80: i32):  // 2 preds: ^bb17, ^bb18
    %81 = "llvm.intr.umax"(%80, %arg2) : (i32, i32) -> i32
    "llvm.store"(%81, %4) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %82 = "llvm.load"(%4) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %83 = "llvm.cmpxchg"(%arg0, %80, %82) <{alignment = 4 : i64, failure_ordering = 2 : i64, success_ordering = 2 : i64}> : (!llvm.ptr, i32, i32) -> !llvm.struct<(i32, i1)>
    %84 = "llvm.extractvalue"(%83) <{position = array<i64: 0>}> : (!llvm.struct<(i32, i1)>) -> i32
    %85 = "llvm.extractvalue"(%83) <{position = array<i64: 1>}> : (!llvm.struct<(i32, i1)>) -> i1
    "llvm.cond_br"(%85, %84)[^bb19, ^bb18] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb19:  // pred: ^bb18
    "llvm.store"(%81, %arg1) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %86 = "llvm.load"(%arg0) <{alignment = 4 : i64, ordering = 2 : i64}> : (!llvm.ptr) -> i32
    "llvm.br"(%86)[^bb20] : (i32) -> ()
  ^bb20(%87: i32):  // 2 preds: ^bb19, ^bb20
    %88 = "llvm.intr.umin"(%87, %arg2) : (i32, i32) -> i32
    "llvm.store"(%88, %3) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %89 = "llvm.load"(%3) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %90 = "llvm.cmpxchg"(%arg0, %87, %89) <{alignment = 4 : i64, failure_ordering = 2 : i64, success_ordering = 2 : i64}> : (!llvm.ptr, i32, i32) -> !llvm.struct<(i32, i1)>
    %91 = "llvm.extractvalue"(%90) <{position = array<i64: 0>}> : (!llvm.struct<(i32, i1)>) -> i32
    %92 = "llvm.extractvalue"(%90) <{position = array<i64: 1>}> : (!llvm.struct<(i32, i1)>) -> i1
    "llvm.cond_br"(%92, %91)[^bb21, ^bb20] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb21:  // pred: ^bb20
    "llvm.store"(%88, %arg1) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %93 = "llvm.load"(%arg3) <{alignment = 4 : i64, ordering = 2 : i64}> : (!llvm.ptr) -> i32
    "llvm.br"(%93)[^bb22] : (i32) -> ()
  ^bb22(%94: i32):  // 2 preds: ^bb21, ^bb22
    %95 = "llvm.bitcast"(%94) : (i32) -> f32
    %96 = "llvm.fadd"(%95, %arg5) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    "llvm.store"(%96, %2) <{alignment = 4 : i64, ordering = 0 : i64}> : (f32, !llvm.ptr) -> ()
    %97 = "llvm.load"(%2) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %98 = "llvm.cmpxchg"(%arg3, %94, %97) <{alignment = 4 : i64, failure_ordering = 2 : i64, success_ordering = 2 : i64}> : (!llvm.ptr, i32, i32) -> !llvm.struct<(i32, i1)>
    %99 = "llvm.extractvalue"(%98) <{position = array<i64: 0>}> : (!llvm.struct<(i32, i1)>) -> i32
    %100 = "llvm.extractvalue"(%98) <{position = array<i64: 1>}> : (!llvm.struct<(i32, i1)>) -> i1
    "llvm.cond_br"(%100, %99)[^bb23, ^bb22] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb23:  // pred: ^bb22
    "llvm.store"(%96, %arg4) <{alignment = 4 : i64, ordering = 0 : i64}> : (f32, !llvm.ptr) -> ()
    %101 = "llvm.load"(%arg3) <{alignment = 4 : i64, ordering = 2 : i64}> : (!llvm.ptr) -> i32
    "llvm.br"(%101)[^bb24] : (i32) -> ()
  ^bb24(%102: i32):  // 2 preds: ^bb23, ^bb24
    %103 = "llvm.bitcast"(%102) : (i32) -> f32
    %104 = "llvm.fsub"(%103, %arg5) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    "llvm.store"(%104, %1) <{alignment = 4 : i64, ordering = 0 : i64}> : (f32, !llvm.ptr) -> ()
    %105 = "llvm.load"(%1) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %106 = "llvm.cmpxchg"(%arg3, %102, %105) <{alignment = 4 : i64, failure_ordering = 2 : i64, success_ordering = 2 : i64}> : (!llvm.ptr, i32, i32) -> !llvm.struct<(i32, i1)>
    %107 = "llvm.extractvalue"(%106) <{position = array<i64: 0>}> : (!llvm.struct<(i32, i1)>) -> i32
    %108 = "llvm.extractvalue"(%106) <{position = array<i64: 1>}> : (!llvm.struct<(i32, i1)>) -> i1
    "llvm.cond_br"(%108, %107)[^bb25, ^bb24] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb25:  // pred: ^bb24
    "llvm.store"(%104, %arg4) <{alignment = 4 : i64, ordering = 0 : i64}> : (f32, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

