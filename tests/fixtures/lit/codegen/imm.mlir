"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "zero", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %71 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    "llvm.return"(%71) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "pos_small", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %70 = "llvm.mlir.constant"() <{value = 2047 : i32}> : () -> i32
    "llvm.return"(%70) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "neg_small", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %69 = "llvm.mlir.constant"() <{value = -2048 : i32}> : () -> i32
    "llvm.return"(%69) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "pos_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %68 = "llvm.mlir.constant"() <{value = 1735928559 : i32}> : () -> i32
    "llvm.return"(%68) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "neg_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %67 = "llvm.mlir.constant"() <{value = -559038737 : i32}> : () -> i32
    "llvm.return"(%67) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "pos_i32_hi20_only", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %66 = "llvm.mlir.constant"() <{value = 65536 : i32}> : () -> i32
    "llvm.return"(%66) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "neg_i32_hi20_only", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %65 = "llvm.mlir.constant"() <{value = -65536 : i32}> : () -> i32
    "llvm.return"(%65) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "imm_left_shifted_addi", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %64 = "llvm.mlir.constant"() <{value = 131008 : i32}> : () -> i32
    "llvm.return"(%64) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "imm_right_shifted_addi", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %63 = "llvm.mlir.constant"() <{value = 2147483647 : i32}> : () -> i32
    "llvm.return"(%63) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "imm_right_shifted_lui", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %62 = "llvm.mlir.constant"() <{value = 229956 : i32}> : () -> i32
    "llvm.return"(%62) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "imm64_1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %61 = "llvm.mlir.constant"() <{value = 2147483648 : i64}> : () -> i64
    "llvm.return"(%61) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "imm64_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %60 = "llvm.mlir.constant"() <{value = 4294967295 : i64}> : () -> i64
    "llvm.return"(%60) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "imm64_3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %59 = "llvm.mlir.constant"() <{value = 4294967296 : i64}> : () -> i64
    "llvm.return"(%59) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "imm64_4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %58 = "llvm.mlir.constant"() <{value = -9223372036854775808 : i64}> : () -> i64
    "llvm.return"(%58) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "imm64_5", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %57 = "llvm.mlir.constant"() <{value = -9223372036854775808 : i64}> : () -> i64
    "llvm.return"(%57) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "imm64_6", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %56 = "llvm.mlir.constant"() <{value = 1311768464867721216 : i64}> : () -> i64
    "llvm.return"(%56) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "imm64_7", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %55 = "llvm.mlir.constant"() <{value = 8070450532432478223 : i64}> : () -> i64
    "llvm.return"(%55) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "imm64_8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %54 = "llvm.mlir.constant"() <{value = 1311768467463790320 : i64}> : () -> i64
    "llvm.return"(%54) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "imm64_9", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %53 = "llvm.mlir.constant"() <{value = -1 : i64}> : () -> i64
    "llvm.return"(%53) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "imm_left_shifted_lui_1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %52 = "llvm.mlir.constant"() <{value = 2147491840 : i64}> : () -> i64
    "llvm.return"(%52) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "imm_left_shifted_lui_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %51 = "llvm.mlir.constant"() <{value = 4294983680 : i64}> : () -> i64
    "llvm.return"(%51) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "imm_left_shifted_lui_3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %50 = "llvm.mlir.constant"() <{value = 17596481011712 : i64}> : () -> i64
    "llvm.return"(%50) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "imm_right_shifted_lui_1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %49 = "llvm.mlir.constant"() <{value = 281474976706561 : i64}> : () -> i64
    "llvm.return"(%49) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "imm_right_shifted_lui_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %48 = "llvm.mlir.constant"() <{value = 1099511623681 : i64}> : () -> i64
    "llvm.return"(%48) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "imm_decoupled_lui_addi", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %47 = "llvm.mlir.constant"() <{value = 17596481011709 : i64}> : () -> i64
    "llvm.return"(%47) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "imm_end_xori_1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %46 = "llvm.mlir.constant"() <{value = -2305843009180139521 : i64}> : () -> i64
    "llvm.return"(%46) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "imm_end_2addi_1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %45 = "llvm.mlir.constant"() <{value = -1125350151030785 : i64}> : () -> i64
    "llvm.return"(%45) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "imm_2reg_1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %44 = "llvm.mlir.constant"() <{value = -1152921504301427080 : i64}> : () -> i64
    "llvm.return"(%44) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "imm_store_i8_neg1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: !llvm.ptr):
    %43 = "llvm.mlir.constant"() <{value = -1 : i8}> : () -> i8
    "llvm.store"(%43, %arg2) <{alignment = 1 : i64, ordering = 0 : i64}> : (i8, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "imm_store_i16_neg1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: !llvm.ptr):
    %42 = "llvm.mlir.constant"() <{value = -1 : i16}> : () -> i16
    "llvm.store"(%42, %arg1) <{alignment = 2 : i64, ordering = 0 : i64}> : (i16, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "imm_store_i32_neg1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: !llvm.ptr):
    %41 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    "llvm.store"(%41, %arg0) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, sym_name = "imm_5372288229", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %40 = "llvm.mlir.constant"() <{value = 5372288229 : i64}> : () -> i64
    "llvm.return"(%40) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, sym_name = "imm_neg_5372288229", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %39 = "llvm.mlir.constant"() <{value = -5372288229 : i64}> : () -> i64
    "llvm.return"(%39) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, sym_name = "imm_8953813715", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %38 = "llvm.mlir.constant"() <{value = 8953813715 : i64}> : () -> i64
    "llvm.return"(%38) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, sym_name = "imm_neg_8953813715", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %37 = "llvm.mlir.constant"() <{value = -8953813715 : i64}> : () -> i64
    "llvm.return"(%37) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, sym_name = "imm_16116864687", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %36 = "llvm.mlir.constant"() <{value = 16116864687 : i64}> : () -> i64
    "llvm.return"(%36) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, sym_name = "imm_neg_16116864687", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %35 = "llvm.mlir.constant"() <{value = -16116864687 : i64}> : () -> i64
    "llvm.return"(%35) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, sym_name = "imm_2344336315", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %34 = "llvm.mlir.constant"() <{value = 2344336315 : i64}> : () -> i64
    "llvm.return"(%34) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, sym_name = "imm_70370820078523", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %33 = "llvm.mlir.constant"() <{value = 70370820078523 : i64}> : () -> i64
    "llvm.return"(%33) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, sym_name = "imm_neg_9223372034778874949", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %32 = "llvm.mlir.constant"() <{value = -9223372034778874949 : i64}> : () -> i64
    "llvm.return"(%32) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, sym_name = "imm_neg_9223301666034697285", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %31 = "llvm.mlir.constant"() <{value = -9223301666034697285 : i64}> : () -> i64
    "llvm.return"(%31) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, sym_name = "imm_neg_2219066437", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %30 = "llvm.mlir.constant"() <{value = -2219066437 : i64}> : () -> i64
    "llvm.return"(%30) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, sym_name = "imm_neg_8798043653189", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %29 = "llvm.mlir.constant"() <{value = -8798043653189 : i64}> : () -> i64
    "llvm.return"(%29) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, sym_name = "imm_9223372034904144827", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %28 = "llvm.mlir.constant"() <{value = 9223372034904144827 : i64}> : () -> i64
    "llvm.return"(%28) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, sym_name = "imm_neg_9223354442718100411", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %27 = "llvm.mlir.constant"() <{value = 9223354442718100411 : i64}> : () -> i64
    "llvm.return"(%27) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, sym_name = "imm_2863311530", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %26 = "llvm.mlir.constant"() <{value = 2863311530 : i64}> : () -> i64
    "llvm.return"(%26) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, sym_name = "imm_neg_2863311530", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %25 = "llvm.mlir.constant"() <{value = -2863311530 : i64}> : () -> i64
    "llvm.return"(%25) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, sym_name = "imm_2147486378", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %24 = "llvm.mlir.constant"() <{value = 2147485013 : i64}> : () -> i64
    "llvm.return"(%24) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, sym_name = "imm_neg_2147485013", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %23 = "llvm.mlir.constant"() <{value = -2147485013 : i64}> : () -> i64
    "llvm.return"(%23) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, sym_name = "imm_12900924131259", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %22 = "llvm.mlir.constant"() <{value = 12900924131259 : i64}> : () -> i64
    "llvm.return"(%22) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, sym_name = "imm_50394234880", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %21 = "llvm.mlir.constant"() <{value = 50394234880 : i64}> : () -> i64
    "llvm.return"(%21) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, sym_name = "imm_12900936431479", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %20 = "llvm.mlir.constant"() <{value = 12900936431479 : i64}> : () -> i64
    "llvm.return"(%20) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, sym_name = "imm_12900918536874", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %19 = "llvm.mlir.constant"() <{value = 12900918536874 : i64}> : () -> i64
    "llvm.return"(%19) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, sym_name = "imm_12900925247761", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %18 = "llvm.mlir.constant"() <{value = 12900925247761 : i64}> : () -> i64
    "llvm.return"(%18) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, sym_name = "imm_7158272001", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %17 = "llvm.mlir.constant"() <{value = 7158272001 : i64}> : () -> i64
    "llvm.return"(%17) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, sym_name = "imm_12884889601", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %16 = "llvm.mlir.constant"() <{value = 12884889601 : i64}> : () -> i64
    "llvm.return"(%16) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, sym_name = "imm_neg_3435982847", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %15 = "llvm.mlir.constant"() <{value = -3435982847 : i64}> : () -> i64
    "llvm.return"(%15) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, sym_name = "imm_neg_5726842879", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %14 = "llvm.mlir.constant"() <{value = -5726842879 : i64}> : () -> i64
    "llvm.return"(%14) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, sym_name = "imm_neg_10307948543", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %13 = "llvm.mlir.constant"() <{value = -10307948543 : i64}> : () -> i64
    "llvm.return"(%13) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, sym_name = "li_rori_1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %12 = "llvm.mlir.constant"() <{value = -149533581377537 : i64}> : () -> i64
    "llvm.return"(%12) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, sym_name = "li_rori_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %11 = "llvm.mlir.constant"() <{value = -5764607523034234886 : i64}> : () -> i64
    "llvm.return"(%11) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, sym_name = "li_rori_3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %10 = "llvm.mlir.constant"() <{value = -2281701377 : i64}> : () -> i64
    "llvm.return"(%10) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, sym_name = "PR54812", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %9 = "llvm.mlir.constant"() <{value = -2158497792 : i64}> : () -> i64
    "llvm.return"(%9) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "pos_2048", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %8 = "llvm.mlir.constant"() <{value = 2048 : i32}> : () -> i32
    "llvm.return"(%8) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "imm64_same_lo_hi", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %7 = "llvm.mlir.constant"() <{value = 1157442765409226768 : i64}> : () -> i64
    "llvm.return"(%7) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, no_unwind, passthrough = ["optsize"], sym_name = "imm64_same_lo_hi_optsize", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %6 = "llvm.mlir.constant"() <{value = 1157442765409226768 : i64}> : () -> i64
    "llvm.return"(%6) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "imm64_same_lo_hi_negative", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %5 = "llvm.mlir.constant"() <{value = -9187201950435737472 : i64}> : () -> i64
    "llvm.return"(%5) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, sym_name = "imm64_0x8000080000000", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %4 = "llvm.mlir.constant"() <{value = 2251801961168896 : i64}> : () -> i64
    "llvm.return"(%4) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, sym_name = "imm64_0x10000100000000", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %3 = "llvm.mlir.constant"() <{value = 4503603922337792 : i64}> : () -> i64
    "llvm.return"(%3) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, sym_name = "imm64_0xFF7FFFFF7FFFFFFE", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %2 = "llvm.mlir.constant"() <{value = -36028799166447617 : i64}> : () -> i64
    "llvm.return"(%2) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, sym_name = "imm64_0xFFFFFFFF0", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %1 = "llvm.mlir.constant"() <{value = 68719476720 : i64}> : () -> i64
    "llvm.return"(%1) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, sym_name = "imm64_0x1FFFFFF08", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %0 = "llvm.mlir.constant"() <{value = 8589934344 : i64}> : () -> i64
    "llvm.return"(%0) : (i64) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

