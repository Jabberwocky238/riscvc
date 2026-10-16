"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<fastcc>, frame_pointer = #llvm.framePointerKind<"non-leaf">, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, no_unwind, passthrough = ["noimplicitfloat", "sspstrong", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"]], sym_name = "search_tx_type", unnamed_addr = 0 : i64, uwtable_kind = #llvm.uwtableKind<async>, visibility_ = 0 : i64, vscale_range = #llvm.vscale_range<minRange = 2 : i32, maxRange = 1024 : i32>}> ({
    %0 = "llvm.mlir.zero"() : () -> !llvm.ptr
    %1 = "llvm.mlir.constant"() <{value = 0 : i8}> : () -> i8
    %2 = "llvm.mlir.constant"() <{value = 0 : i16}> : () -> i16
    %3 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %4 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %5 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %6 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %7 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %8 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %9 = "llvm.mlir.constant"() <{value = 16 : i32}> : () -> i32
    %10 = "llvm.mlir.constant"() <{value = 32 : i32}> : () -> i32
    %11 = "llvm.mlir.constant"() <{value = 64 : i32}> : () -> i32
    %12 = "llvm.mlir.constant"() <{value = 128 : i32}> : () -> i32
    %13 = "llvm.mlir.constant"() <{value = 256 : i32}> : () -> i32
    %14 = "llvm.mlir.constant"() <{value = 512 : i32}> : () -> i32
    %15 = "llvm.mlir.constant"() <{value = 1024 : i32}> : () -> i32
    %16 = "llvm.mlir.constant"() <{value = 2048 : i32}> : () -> i32
    %17 = "llvm.mlir.constant"() <{value = 4096 : i32}> : () -> i32
    %18 = "llvm.mlir.constant"() <{value = false}> : () -> i1
    %19 = "llvm.mlir.constant"() <{value = 13 : i32}> : () -> i32
    %20 = "llvm.mlir.constant"() <{value = 14 : i32}> : () -> i32
    %21 = "llvm.mlir.constant"() <{value = -32768 : i16}> : () -> i16
    %22 = "llvm.mlir.constant"() <{value = -1 : i16}> : () -> i16
    %23 = "llvm.load"(%0) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %24 = "llvm.load"(%0) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %25 = "llvm.and"(%24, %23) : (i16, i16) -> i16
    %26 = "llvm.trunc"(%1) <{overflowFlags = 2 : i32}> : (i8) -> i1
    "llvm.cond_br"(%26, %2)[^bb2, ^bb1] <{operandSegmentSizes = array<i32: 1, 1, 0>}> : (i1, i16) -> ()
  ^bb1:  // pred: ^bb0
    %27 = "llvm.load"(%0) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %28 = "llvm.icmp"(%27, %1) <{predicate = 0 : i64}> : (i8, i8) -> i1
    %29 = "llvm.select"(%28, %2, %25) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i16, i16) -> i16
    %30 = "llvm.load"(%0) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %31 = "llvm.zext"(%29) : (i16) -> i32
    %32 = "llvm.load"(%0) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %33 = "llvm.icmp"(%32, %3) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %34 = "llvm.and"(%31, %4) : (i32, i32) -> i32
    %35 = "llvm.icmp"(%34, %5) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %36 = "llvm.select"(%35, %3, %32) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %37 = "llvm.select"(%33, %36, %3) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %38 = "llvm.icmp"(%5, %37) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %39 = "llvm.and"(%31, %6) : (i32, i32) -> i32
    %40 = "llvm.icmp"(%39, %5) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %41 = "llvm.select"(%40, %37, %5) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %42 = "llvm.select"(%38, %41, %37) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %43 = "llvm.load"(%0) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %44 = "llvm.icmp"(%43, %42) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %45 = "llvm.and"(%31, %7) : (i32, i32) -> i32
    %46 = "llvm.icmp"(%45, %5) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %47 = "llvm.select"(%46, %42, %43) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %48 = "llvm.select"(%44, %47, %42) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %49 = "llvm.load"(%0) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %50 = "llvm.icmp"(%49, %48) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %51 = "llvm.and"(%31, %8) : (i32, i32) -> i32
    %52 = "llvm.icmp"(%51, %5) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %53 = "llvm.select"(%52, %48, %49) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %54 = "llvm.select"(%50, %53, %48) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %55 = "llvm.load"(%0) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %56 = "llvm.icmp"(%55, %54) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %57 = "llvm.and"(%31, %9) : (i32, i32) -> i32
    %58 = "llvm.icmp"(%57, %5) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %59 = "llvm.select"(%58, %54, %55) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %60 = "llvm.select"(%56, %59, %54) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %61 = "llvm.load"(%0) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %62 = "llvm.icmp"(%61, %60) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %63 = "llvm.and"(%31, %10) : (i32, i32) -> i32
    %64 = "llvm.icmp"(%63, %5) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %65 = "llvm.select"(%64, %60, %61) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %66 = "llvm.select"(%62, %65, %60) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %67 = "llvm.load"(%0) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %68 = "llvm.icmp"(%67, %66) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %69 = "llvm.and"(%31, %11) : (i32, i32) -> i32
    %70 = "llvm.icmp"(%69, %5) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %71 = "llvm.select"(%70, %66, %67) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %72 = "llvm.select"(%68, %71, %66) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %73 = "llvm.load"(%0) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %74 = "llvm.icmp"(%73, %72) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %75 = "llvm.and"(%31, %12) : (i32, i32) -> i32
    %76 = "llvm.icmp"(%75, %5) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %77 = "llvm.select"(%76, %72, %73) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %78 = "llvm.select"(%74, %77, %72) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %79 = "llvm.load"(%0) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %80 = "llvm.icmp"(%79, %78) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %81 = "llvm.and"(%31, %13) : (i32, i32) -> i32
    %82 = "llvm.icmp"(%81, %5) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %83 = "llvm.select"(%82, %78, %79) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %84 = "llvm.select"(%80, %83, %78) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %85 = "llvm.load"(%0) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %86 = "llvm.icmp"(%85, %84) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %87 = "llvm.and"(%31, %14) : (i32, i32) -> i32
    %88 = "llvm.icmp"(%87, %5) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %89 = "llvm.select"(%88, %84, %85) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %90 = "llvm.select"(%86, %89, %84) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %91 = "llvm.load"(%0) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %92 = "llvm.icmp"(%91, %90) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %93 = "llvm.and"(%31, %15) : (i32, i32) -> i32
    %94 = "llvm.icmp"(%93, %5) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %95 = "llvm.select"(%94, %90, %91) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %96 = "llvm.select"(%92, %95, %90) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %97 = "llvm.load"(%0) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %98 = "llvm.icmp"(%97, %96) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %99 = "llvm.and"(%31, %16) : (i32, i32) -> i32
    %100 = "llvm.icmp"(%99, %5) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %101 = "llvm.select"(%100, %96, %97) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %102 = "llvm.select"(%98, %101, %96) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %103 = "llvm.load"(%0) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %104 = "llvm.icmp"(%103, %102) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %105 = "llvm.and"(%31, %17) : (i32, i32) -> i32
    %106 = "llvm.icmp"(%105, %5) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %107 = "llvm.select"(%106, %102, %103) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %108 = "llvm.select"(%104, %107, %102) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %109 = "llvm.load"(%0) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %110 = "llvm.icmp"(%109, %108) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %111 = "llvm.select"(%18, %108, %109) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %112 = "llvm.select"(%110, %111, %108) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %113 = "llvm.select"(%110, %19, %5) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %114 = "llvm.icmp"(%5, %112) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %115 = "llvm.select"(%114, %20, %113) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %116 = "llvm.icmp"(%5, %30) <{predicate = 2 : i64}> : (i32, i32) -> i1
    %117 = "llvm.select"(%116, %21, %2) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i16, i16) -> i16
    %118 = "llvm.zext"(%117) : (i16) -> i32
    %119 = "llvm.shl"(%4, %115) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    %120 = "llvm.and"(%119, %118) : (i32, i32) -> i32
    %121 = "llvm.icmp"(%120, %5) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %122 = "llvm.trunc"(%119) <{overflowFlags = 2 : i32}> : (i32) -> i16
    %123 = "llvm.xor"(%122, %22) : (i16, i16) -> i16
    %124 = "llvm.select"(%121, %22, %123) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i16, i16) -> i16
    %125 = "llvm.and"(%124, %117) : (i16, i16) -> i16
    %126 = "llvm.xor"(%125, %22) : (i16, i16) -> i16
    %127 = "llvm.and"(%29, %126) : (i16, i16) -> i16
    "llvm.br"(%127)[^bb2] : (i16) -> ()
  ^bb2(%128: i16):  // 2 preds: ^bb0, ^bb1
    %129 = "llvm.icmp"(%128, %2) <{predicate = 0 : i64}> : (i16, i16) -> i1
    %130 = "llvm.select"(%129, %2, %128) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i16, i16) -> i16
    "llvm.return"() : () -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i64 = dense<64> : vector<2xi64>, i128 = dense<128> : vector<2xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little", "dlti.mangling_mode" = "e", "dlti.legal_int_widths" = array<i32: 32, 64>, "dlti.stack_alignment" = 128 : i64>, llvm.module_asm = [], llvm.target_triple = "riscv64-unknown-linux-android10000"} : () -> ()

