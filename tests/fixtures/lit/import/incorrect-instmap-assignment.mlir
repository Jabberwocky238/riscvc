"builtin.module"() ({
  "llvm.mlir.global"() <{addr_space = 0 : i32, global_type = !llvm.struct<"my_struct", (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "gvar", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "f", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "llvm.mlir.addressof"() <{global_name = @gvar}> : () -> !llvm.ptr
    %1 = "llvm.add"(%arg0, %arg1) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %2 = "llvm.add"(%arg1, %1) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %3 = "llvm.add"(%1, %2) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %4 = "llvm.add"(%2, %3) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %5 = "llvm.add"(%3, %4) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %6 = "llvm.add"(%4, %5) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %7 = "llvm.add"(%5, %6) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %8 = "llvm.add"(%6, %7) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %9 = "llvm.add"(%7, %8) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %10 = "llvm.add"(%8, %9) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %11 = "llvm.add"(%9, %10) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %12 = "llvm.add"(%10, %11) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %13 = "llvm.add"(%11, %12) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %14 = "llvm.add"(%12, %13) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %15 = "llvm.add"(%13, %14) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %16 = "llvm.add"(%14, %15) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %17 = "llvm.add"(%15, %16) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %18 = "llvm.add"(%16, %17) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %19 = "llvm.add"(%17, %18) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %20 = "llvm.add"(%18, %19) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %21 = "llvm.add"(%19, %20) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %22 = "llvm.add"(%20, %21) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %23 = "llvm.add"(%21, %22) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %24 = "llvm.add"(%22, %23) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %25 = "llvm.add"(%23, %24) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %26 = "llvm.add"(%24, %25) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %27 = "llvm.add"(%25, %26) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %28 = "llvm.add"(%26, %27) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %29 = "llvm.add"(%27, %28) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %30 = "llvm.add"(%28, %29) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %31 = "llvm.add"(%29, %30) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %32 = "llvm.add"(%30, %31) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %33 = "llvm.add"(%31, %32) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %34 = "llvm.add"(%32, %33) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %35 = "llvm.add"(%33, %34) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %36 = "llvm.add"(%34, %35) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %37 = "llvm.add"(%35, %36) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %38 = "llvm.add"(%36, %37) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %39 = "llvm.add"(%37, %38) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %40 = "llvm.add"(%38, %39) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %41 = "llvm.add"(%39, %40) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %42 = "llvm.add"(%40, %41) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %43 = "llvm.add"(%41, %42) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %44 = "llvm.add"(%42, %43) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %45 = "llvm.add"(%43, %44) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %46 = "llvm.add"(%44, %45) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %47 = "llvm.add"(%45, %46) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %48 = "llvm.add"(%46, %47) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %49 = "llvm.add"(%47, %48) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %50 = "llvm.add"(%48, %49) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %51 = "llvm.add"(%49, %50) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %52 = "llvm.add"(%50, %51) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %53 = "llvm.add"(%51, %52) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %54 = "llvm.add"(%52, %53) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %55 = "llvm.add"(%53, %54) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %56 = "llvm.add"(%54, %55) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %57 = "llvm.add"(%55, %56) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %58 = "llvm.add"(%56, %57) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %59 = "llvm.add"(%57, %58) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %60 = "llvm.add"(%58, %59) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %61 = "llvm.add"(%59, %60) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %62 = "llvm.add"(%60, %61) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %63 = "llvm.add"(%61, %62) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %64 = "llvm.add"(%62, %63) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %65 = "llvm.add"(%63, %64) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %66 = "llvm.add"(%64, %65) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %67 = "llvm.add"(%65, %66) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %68 = "llvm.add"(%66, %67) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %69 = "llvm.add"(%67, %68) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %70 = "llvm.add"(%68, %69) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %71 = "llvm.add"(%69, %70) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %72 = "llvm.add"(%70, %71) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %73 = "llvm.add"(%71, %72) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %74 = "llvm.add"(%72, %73) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %75 = "llvm.add"(%73, %74) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %76 = "llvm.add"(%74, %75) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %77 = "llvm.add"(%75, %76) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %78 = "llvm.add"(%76, %77) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %79 = "llvm.add"(%77, %78) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %80 = "llvm.add"(%78, %79) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %81 = "llvm.add"(%79, %80) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %82 = "llvm.add"(%80, %81) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %83 = "llvm.add"(%81, %82) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %84 = "llvm.add"(%82, %83) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %85 = "llvm.add"(%83, %84) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %86 = "llvm.add"(%84, %85) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %87 = "llvm.add"(%85, %86) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %88 = "llvm.add"(%86, %87) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %89 = "llvm.add"(%87, %88) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %90 = "llvm.add"(%88, %89) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %91 = "llvm.add"(%89, %90) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %92 = "llvm.add"(%90, %91) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %93 = "llvm.load"(%0) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %94 = "llvm.add"(%arg1, %93) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"() : () -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

