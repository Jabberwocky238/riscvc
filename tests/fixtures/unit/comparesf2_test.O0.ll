; ModuleID = '../llvm-project/compiler-rt/test/builtins/Unit/comparesf2_test.c'
source_filename = "../llvm-project/compiler-rt/test/builtins/Unit/comparesf2_test.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

%struct.TestVector = type { float, float, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [44 x i8] c"error in __eqsf2(%a, %a) = %d, expected %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"error in __gesf2(%a, %a) = %d, expected %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"error in __gtsf2(%a, %a) = %d, expected %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"error in __lesf2(%a, %a) = %d, expected %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"error in __ltsf2(%a, %a) = %d, expected %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"error in __nesf2(%a, %a) = %d, expected %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"error in __unordsf2(%a, %a) = %d, expected %d\0A\00", align 1
@vectors = internal constant [324 x %struct.TestVector] [%struct.TestVector { float 0x7FF8000000000000, float 0x7FF8000000000000, i32 1, i32 -1, i32 -1, i32 1, i32 1, i32 1, i32 1 }, %struct.TestVector { float 0x7FF8000000000000, float 0xFFF0000000000000, i32 1, i32 -1, i32 -1, i32 1, i32 1, i32 1, i32 1 }, %struct.TestVector { float 0x7FF8000000000000, float 0xC7EFFFFFE0000000, i32 1, i32 -1, i32 -1, i32 1, i32 1, i32 1, i32 1 }, %struct.TestVector { float 0x7FF8000000000000, float -1.000000e+00, i32 1, i32 -1, i32 -1, i32 1, i32 1, i32 1, i32 1 }, %struct.TestVector { float 0x7FF8000000000000, float 0xBFEFFFFFE0000000, i32 1, i32 -1, i32 -1, i32 1, i32 1, i32 1, i32 1 }, %struct.TestVector { float 0x7FF8000000000000, float 0xB810000000000000, i32 1, i32 -1, i32 -1, i32 1, i32 1, i32 1, i32 1 }, %struct.TestVector { float 0x7FF8000000000000, float 0xB80FFFFFC0000000, i32 1, i32 -1, i32 -1, i32 1, i32 1, i32 1, i32 1 }, %struct.TestVector { float 0x7FF8000000000000, float 0xB6A0000000000000, i32 1, i32 -1, i32 -1, i32 1, i32 1, i32 1, i32 1 }, %struct.TestVector { float 0x7FF8000000000000, float -0.000000e+00, i32 1, i32 -1, i32 -1, i32 1, i32 1, i32 1, i32 1 }, %struct.TestVector { float 0x7FF8000000000000, float 0.000000e+00, i32 1, i32 -1, i32 -1, i32 1, i32 1, i32 1, i32 1 }, %struct.TestVector { float 0x7FF8000000000000, float 0x36A0000000000000, i32 1, i32 -1, i32 -1, i32 1, i32 1, i32 1, i32 1 }, %struct.TestVector { float 0x7FF8000000000000, float 0x380FFFFFC0000000, i32 1, i32 -1, i32 -1, i32 1, i32 1, i32 1, i32 1 }, %struct.TestVector { float 0x7FF8000000000000, float 0x3810000000000000, i32 1, i32 -1, i32 -1, i32 1, i32 1, i32 1, i32 1 }, %struct.TestVector { float 0x7FF8000000000000, float 0x3FEFFFFFE0000000, i32 1, i32 -1, i32 -1, i32 1, i32 1, i32 1, i32 1 }, %struct.TestVector { float 0x7FF8000000000000, float 1.000000e+00, i32 1, i32 -1, i32 -1, i32 1, i32 1, i32 1, i32 1 }, %struct.TestVector { float 0x7FF8000000000000, float 0x3FF0000020000000, i32 1, i32 -1, i32 -1, i32 1, i32 1, i32 1, i32 1 }, %struct.TestVector { float 0x7FF8000000000000, float 0x47EFFFFFE0000000, i32 1, i32 -1, i32 -1, i32 1, i32 1, i32 1, i32 1 }, %struct.TestVector { float 0x7FF8000000000000, float 0x7FF0000000000000, i32 1, i32 -1, i32 -1, i32 1, i32 1, i32 1, i32 1 }, %struct.TestVector { float 0xFFF0000000000000, float 0x7FF8000000000000, i32 1, i32 -1, i32 -1, i32 1, i32 1, i32 1, i32 1 }, %struct.TestVector { float 0xFFF0000000000000, float 0xFFF0000000000000, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.TestVector { float 0xFFF0000000000000, float 0xC7EFFFFFE0000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0xFFF0000000000000, float -1.000000e+00, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0xFFF0000000000000, float 0xBFEFFFFFE0000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0xFFF0000000000000, float 0xB810000000000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0xFFF0000000000000, float 0xB80FFFFFC0000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0xFFF0000000000000, float 0xB6A0000000000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0xFFF0000000000000, float -0.000000e+00, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0xFFF0000000000000, float 0.000000e+00, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0xFFF0000000000000, float 0x36A0000000000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0xFFF0000000000000, float 0x380FFFFFC0000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0xFFF0000000000000, float 0x3810000000000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0xFFF0000000000000, float 0x3FEFFFFFE0000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0xFFF0000000000000, float 1.000000e+00, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0xFFF0000000000000, float 0x3FF0000020000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0xFFF0000000000000, float 0x47EFFFFFE0000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0xFFF0000000000000, float 0x7FF0000000000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0xC7EFFFFFE0000000, float 0x7FF8000000000000, i32 1, i32 -1, i32 -1, i32 1, i32 1, i32 1, i32 1 }, %struct.TestVector { float 0xC7EFFFFFE0000000, float 0xFFF0000000000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.TestVector { float 0xC7EFFFFFE0000000, float -1.000000e+00, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0xC7EFFFFFE0000000, float 0xBFEFFFFFE0000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0xC7EFFFFFE0000000, float 0xB810000000000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0xC7EFFFFFE0000000, float 0xB80FFFFFC0000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0xC7EFFFFFE0000000, float 0xB6A0000000000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0xC7EFFFFFE0000000, float -0.000000e+00, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0xC7EFFFFFE0000000, float 0.000000e+00, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0xC7EFFFFFE0000000, float 0x36A0000000000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0xC7EFFFFFE0000000, float 0x380FFFFFC0000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0xC7EFFFFFE0000000, float 0x3810000000000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0xC7EFFFFFE0000000, float 0x3FEFFFFFE0000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0xC7EFFFFFE0000000, float 1.000000e+00, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0xC7EFFFFFE0000000, float 0x3FF0000020000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0xC7EFFFFFE0000000, float 0x7FF0000000000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float -1.000000e+00, float 0x7FF8000000000000, i32 1, i32 -1, i32 -1, i32 1, i32 1, i32 1, i32 1 }, %struct.TestVector { float -1.000000e+00, float 0xFFF0000000000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float -1.000000e+00, float 0xC7EFFFFFE0000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float -1.000000e+00, float -1.000000e+00, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.TestVector { float -1.000000e+00, float 0xBFEFFFFFE0000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float -1.000000e+00, float 0xB810000000000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float -1.000000e+00, float 0xB80FFFFFC0000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float -1.000000e+00, float 0xB6A0000000000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float -1.000000e+00, float -0.000000e+00, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float -1.000000e+00, float 0.000000e+00, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float -1.000000e+00, float 0x36A0000000000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float -1.000000e+00, float 0x380FFFFFC0000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float -1.000000e+00, float 0x3810000000000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float -1.000000e+00, float 0x3FEFFFFFE0000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float -1.000000e+00, float 1.000000e+00, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float -1.000000e+00, float 0x3FF0000020000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float -1.000000e+00, float 0x47EFFFFFE0000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float -1.000000e+00, float 0x7FF0000000000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0xBFEFFFFFE0000000, float 0x7FF8000000000000, i32 1, i32 -1, i32 -1, i32 1, i32 1, i32 1, i32 1 }, %struct.TestVector { float 0xBFEFFFFFE0000000, float 0xFFF0000000000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0xBFEFFFFFE0000000, float 0xC7EFFFFFE0000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0xBFEFFFFFE0000000, float -1.000000e+00, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.TestVector { float 0xBFEFFFFFE0000000, float 0xB810000000000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0xBFEFFFFFE0000000, float 0xB80FFFFFC0000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0xBFEFFFFFE0000000, float 0xB6A0000000000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0xBFEFFFFFE0000000, float -0.000000e+00, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0xBFEFFFFFE0000000, float 0.000000e+00, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0xBFEFFFFFE0000000, float 0x36A0000000000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0xBFEFFFFFE0000000, float 0x380FFFFFC0000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0xBFEFFFFFE0000000, float 0x3810000000000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0xBFEFFFFFE0000000, float 0x3FEFFFFFE0000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0xBFEFFFFFE0000000, float 1.000000e+00, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0xBFEFFFFFE0000000, float 0x3FF0000020000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0xBFEFFFFFE0000000, float 0x47EFFFFFE0000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0xBFEFFFFFE0000000, float 0x7FF0000000000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0xB810000000000000, float 0x7FF8000000000000, i32 1, i32 -1, i32 -1, i32 1, i32 1, i32 1, i32 1 }, %struct.TestVector { float 0xB810000000000000, float 0xFFF0000000000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0xB810000000000000, float 0xC7EFFFFFE0000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0xB810000000000000, float -1.000000e+00, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0xB810000000000000, float 0xBFEFFFFFE0000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0xB810000000000000, float 0xB810000000000000, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.TestVector { float 0xB810000000000000, float 0xB80FFFFFC0000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0xB810000000000000, float 0xB6A0000000000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0xB810000000000000, float -0.000000e+00, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0xB810000000000000, float 0.000000e+00, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0xB810000000000000, float 0x36A0000000000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0xB810000000000000, float 0x380FFFFFC0000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0xB810000000000000, float 0x3810000000000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0xB810000000000000, float 0x3FEFFFFFE0000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0xB810000000000000, float 1.000000e+00, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0xB810000000000000, float 0x3FF0000020000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0xB810000000000000, float 0x47EFFFFFE0000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0xB810000000000000, float 0x7FF0000000000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0xB80FFFFFC0000000, float 0x7FF8000000000000, i32 1, i32 -1, i32 -1, i32 1, i32 1, i32 1, i32 1 }, %struct.TestVector { float 0xB80FFFFFC0000000, float 0xFFF0000000000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0xB80FFFFFC0000000, float 0xC7EFFFFFE0000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0xB80FFFFFC0000000, float -1.000000e+00, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0xB80FFFFFC0000000, float 0xBFEFFFFFE0000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0xB80FFFFFC0000000, float 0xB810000000000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0xB80FFFFFC0000000, float 0xB80FFFFFC0000000, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.TestVector { float 0xB80FFFFFC0000000, float 0xB6A0000000000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0xB80FFFFFC0000000, float -0.000000e+00, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0xB80FFFFFC0000000, float 0.000000e+00, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0xB80FFFFFC0000000, float 0x36A0000000000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0xB80FFFFFC0000000, float 0x380FFFFFC0000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0xB80FFFFFC0000000, float 0x3810000000000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0xB80FFFFFC0000000, float 0x3FEFFFFFE0000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0xB80FFFFFC0000000, float 1.000000e+00, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0xB80FFFFFC0000000, float 0x3FF0000020000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0xB80FFFFFC0000000, float 0x47EFFFFFE0000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0xB80FFFFFC0000000, float 0x7FF0000000000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0xB6A0000000000000, float 0x7FF8000000000000, i32 1, i32 -1, i32 -1, i32 1, i32 1, i32 1, i32 1 }, %struct.TestVector { float 0xB6A0000000000000, float 0xFFF0000000000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0xB6A0000000000000, float 0xC7EFFFFFE0000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0xB6A0000000000000, float -1.000000e+00, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0xB6A0000000000000, float 0xBFEFFFFFE0000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0xB6A0000000000000, float 0xB810000000000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0xB6A0000000000000, float 0xB80FFFFFC0000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0xB6A0000000000000, float 0xB6A0000000000000, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.TestVector { float 0xB6A0000000000000, float -0.000000e+00, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0xB6A0000000000000, float 0.000000e+00, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0xB6A0000000000000, float 0x36A0000000000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0xB6A0000000000000, float 0x380FFFFFC0000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0xB6A0000000000000, float 0x3810000000000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0xB6A0000000000000, float 0x3FEFFFFFE0000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0xB6A0000000000000, float 1.000000e+00, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0xB6A0000000000000, float 0x3FF0000020000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0xB6A0000000000000, float 0x47EFFFFFE0000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0xB6A0000000000000, float 0x7FF0000000000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float -0.000000e+00, float 0x7FF8000000000000, i32 1, i32 -1, i32 -1, i32 1, i32 1, i32 1, i32 1 }, %struct.TestVector { float -0.000000e+00, float 0xFFF0000000000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float -0.000000e+00, float 0xC7EFFFFFE0000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float -0.000000e+00, float -1.000000e+00, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float -0.000000e+00, float 0xBFEFFFFFE0000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float -0.000000e+00, float 0xB810000000000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float -0.000000e+00, float 0xB80FFFFFC0000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float -0.000000e+00, float 0xB6A0000000000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float -0.000000e+00, float -0.000000e+00, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.TestVector { float -0.000000e+00, float 0.000000e+00, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.TestVector { float -0.000000e+00, float 0x36A0000000000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float -0.000000e+00, float 0x380FFFFFC0000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float -0.000000e+00, float 0x3810000000000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float -0.000000e+00, float 0x3FEFFFFFE0000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float -0.000000e+00, float 1.000000e+00, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float -0.000000e+00, float 0x3FF0000020000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float -0.000000e+00, float 0x47EFFFFFE0000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float -0.000000e+00, float 0x7FF0000000000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0.000000e+00, float 0x7FF8000000000000, i32 1, i32 -1, i32 -1, i32 1, i32 1, i32 1, i32 1 }, %struct.TestVector { float 0.000000e+00, float 0xFFF0000000000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0.000000e+00, float 0xC7EFFFFFE0000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0.000000e+00, float -1.000000e+00, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0.000000e+00, float 0xBFEFFFFFE0000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0.000000e+00, float 0xB810000000000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0.000000e+00, float 0xB80FFFFFC0000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0.000000e+00, float 0xB6A0000000000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0.000000e+00, float -0.000000e+00, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.TestVector zeroinitializer, %struct.TestVector { float 0.000000e+00, float 0x36A0000000000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0.000000e+00, float 0x380FFFFFC0000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0.000000e+00, float 0x3810000000000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0.000000e+00, float 0x3FEFFFFFE0000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0.000000e+00, float 1.000000e+00, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0.000000e+00, float 0x3FF0000020000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0.000000e+00, float 0x47EFFFFFE0000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0.000000e+00, float 0x7FF0000000000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0x36A0000000000000, float 0x7FF8000000000000, i32 1, i32 -1, i32 -1, i32 1, i32 1, i32 1, i32 1 }, %struct.TestVector { float 0x36A0000000000000, float 0xFFF0000000000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0x36A0000000000000, float 0xC7EFFFFFE0000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0x36A0000000000000, float -1.000000e+00, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0x36A0000000000000, float 0xBFEFFFFFE0000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0x36A0000000000000, float 0xB810000000000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0x36A0000000000000, float 0xB80FFFFFC0000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0x36A0000000000000, float 0xB6A0000000000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0x36A0000000000000, float -0.000000e+00, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0x36A0000000000000, float 0.000000e+00, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0x36A0000000000000, float 0x36A0000000000000, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.TestVector { float 0x36A0000000000000, float 0x380FFFFFC0000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0x36A0000000000000, float 0x3810000000000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0x36A0000000000000, float 0x3FEFFFFFE0000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0x36A0000000000000, float 1.000000e+00, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0x36A0000000000000, float 0x3FF0000020000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0x36A0000000000000, float 0x47EFFFFFE0000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0x36A0000000000000, float 0x7FF0000000000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0x380FFFFFC0000000, float 0x7FF8000000000000, i32 1, i32 -1, i32 -1, i32 1, i32 1, i32 1, i32 1 }, %struct.TestVector { float 0x380FFFFFC0000000, float 0xFFF0000000000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0x380FFFFFC0000000, float 0xC7EFFFFFE0000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0x380FFFFFC0000000, float -1.000000e+00, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0x380FFFFFC0000000, float 0xBFEFFFFFE0000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0x380FFFFFC0000000, float 0xB810000000000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0x380FFFFFC0000000, float 0xB80FFFFFC0000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0x380FFFFFC0000000, float 0xB6A0000000000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0x380FFFFFC0000000, float -0.000000e+00, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0x380FFFFFC0000000, float 0.000000e+00, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0x380FFFFFC0000000, float 0x36A0000000000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0x380FFFFFC0000000, float 0x380FFFFFC0000000, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.TestVector { float 0x380FFFFFC0000000, float 0x3810000000000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0x380FFFFFC0000000, float 0x3FEFFFFFE0000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0x380FFFFFC0000000, float 1.000000e+00, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0x380FFFFFC0000000, float 0x3FF0000020000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0x380FFFFFC0000000, float 0x47EFFFFFE0000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0x380FFFFFC0000000, float 0x7FF0000000000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0x3810000000000000, float 0x7FF8000000000000, i32 1, i32 -1, i32 -1, i32 1, i32 1, i32 1, i32 1 }, %struct.TestVector { float 0x3810000000000000, float 0xFFF0000000000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0x3810000000000000, float 0xC7EFFFFFE0000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0x3810000000000000, float -1.000000e+00, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0x3810000000000000, float 0xBFEFFFFFE0000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0x3810000000000000, float 0xB810000000000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0x3810000000000000, float 0xB80FFFFFC0000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0x3810000000000000, float 0xB6A0000000000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0x3810000000000000, float -0.000000e+00, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0x3810000000000000, float 0.000000e+00, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0x3810000000000000, float 0x36A0000000000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0x3810000000000000, float 0x380FFFFFC0000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0x3810000000000000, float 0x3810000000000000, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.TestVector { float 0x3810000000000000, float 0x3FEFFFFFE0000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0x3810000000000000, float 1.000000e+00, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0x3810000000000000, float 0x3FF0000020000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0x3810000000000000, float 0x47EFFFFFE0000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0x3810000000000000, float 0x7FF0000000000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0x3FEFFFFFE0000000, float 0x7FF8000000000000, i32 1, i32 -1, i32 -1, i32 1, i32 1, i32 1, i32 1 }, %struct.TestVector { float 0x3FEFFFFFE0000000, float 0xFFF0000000000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0x3FEFFFFFE0000000, float 0xC7EFFFFFE0000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0x3FEFFFFFE0000000, float -1.000000e+00, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0x3FEFFFFFE0000000, float 0xBFEFFFFFE0000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0x3FEFFFFFE0000000, float 0xB810000000000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0x3FEFFFFFE0000000, float 0xB80FFFFFC0000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0x3FEFFFFFE0000000, float 0xB6A0000000000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0x3FEFFFFFE0000000, float -0.000000e+00, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0x3FEFFFFFE0000000, float 0.000000e+00, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0x3FEFFFFFE0000000, float 0x36A0000000000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0x3FEFFFFFE0000000, float 0x380FFFFFC0000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0x3FEFFFFFE0000000, float 0x3810000000000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0x3FEFFFFFE0000000, float 0x3FEFFFFFE0000000, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.TestVector { float 0x3FEFFFFFE0000000, float 1.000000e+00, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0x3FEFFFFFE0000000, float 0x3FF0000020000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0x3FEFFFFFE0000000, float 0x47EFFFFFE0000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0x3FEFFFFFE0000000, float 0x7FF0000000000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 1.000000e+00, float 0x7FF8000000000000, i32 1, i32 -1, i32 -1, i32 1, i32 1, i32 1, i32 1 }, %struct.TestVector { float 1.000000e+00, float 0xFFF0000000000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 1.000000e+00, float 0xC7EFFFFFE0000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 1.000000e+00, float -1.000000e+00, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 1.000000e+00, float 0xBFEFFFFFE0000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 1.000000e+00, float 0xB810000000000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 1.000000e+00, float 0xB80FFFFFC0000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 1.000000e+00, float 0xB6A0000000000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 1.000000e+00, float -0.000000e+00, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 1.000000e+00, float 0.000000e+00, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 1.000000e+00, float 0x36A0000000000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 1.000000e+00, float 0x380FFFFFC0000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 1.000000e+00, float 0x3810000000000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 1.000000e+00, float 0x3FEFFFFFE0000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 1.000000e+00, float 1.000000e+00, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.TestVector { float 1.000000e+00, float 0x3FF0000020000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 1.000000e+00, float 0x47EFFFFFE0000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 1.000000e+00, float 0x7FF0000000000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0x3FF0000020000000, float 0x7FF8000000000000, i32 1, i32 -1, i32 -1, i32 1, i32 1, i32 1, i32 1 }, %struct.TestVector { float 0x3FF0000020000000, float 0xFFF0000000000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0x3FF0000020000000, float 0xC7EFFFFFE0000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0x3FF0000020000000, float -1.000000e+00, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0x3FF0000020000000, float 0xBFEFFFFFE0000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0x3FF0000020000000, float 0xB810000000000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0x3FF0000020000000, float 0xB80FFFFFC0000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0x3FF0000020000000, float 0xB6A0000000000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0x3FF0000020000000, float -0.000000e+00, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0x3FF0000020000000, float 0.000000e+00, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0x3FF0000020000000, float 0x36A0000000000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0x3FF0000020000000, float 0x380FFFFFC0000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0x3FF0000020000000, float 0x3810000000000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0x3FF0000020000000, float 0x3FEFFFFFE0000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0x3FF0000020000000, float 1.000000e+00, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0x3FF0000020000000, float 0x3FF0000020000000, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.TestVector { float 0x3FF0000020000000, float 0x47EFFFFFE0000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0x3FF0000020000000, float 0x7FF0000000000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0x47EFFFFFE0000000, float 0x7FF8000000000000, i32 1, i32 -1, i32 -1, i32 1, i32 1, i32 1, i32 1 }, %struct.TestVector { float 0x47EFFFFFE0000000, float 0xFFF0000000000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0x47EFFFFFE0000000, float 0xC7EFFFFFE0000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0x47EFFFFFE0000000, float -1.000000e+00, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0x47EFFFFFE0000000, float 0xBFEFFFFFE0000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0x47EFFFFFE0000000, float 0xB810000000000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0x47EFFFFFE0000000, float 0xB80FFFFFC0000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0x47EFFFFFE0000000, float 0xB6A0000000000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0x47EFFFFFE0000000, float -0.000000e+00, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0x47EFFFFFE0000000, float 0.000000e+00, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0x47EFFFFFE0000000, float 0x36A0000000000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0x47EFFFFFE0000000, float 0x380FFFFFC0000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0x47EFFFFFE0000000, float 0x3810000000000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0x47EFFFFFE0000000, float 0x3FEFFFFFE0000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0x47EFFFFFE0000000, float 1.000000e+00, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0x47EFFFFFE0000000, float 0x3FF0000020000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0x47EFFFFFE0000000, float 0x47EFFFFFE0000000, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.TestVector { float 0x47EFFFFFE0000000, float 0x7FF0000000000000, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, %struct.TestVector { float 0x7FF0000000000000, float 0x7FF8000000000000, i32 1, i32 -1, i32 -1, i32 1, i32 1, i32 1, i32 1 }, %struct.TestVector { float 0x7FF0000000000000, float 0xFFF0000000000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0x7FF0000000000000, float 0xC7EFFFFFE0000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0x7FF0000000000000, float -1.000000e+00, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0x7FF0000000000000, float 0xBFEFFFFFE0000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0x7FF0000000000000, float 0xB810000000000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0x7FF0000000000000, float 0xB80FFFFFC0000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0x7FF0000000000000, float 0xB6A0000000000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0x7FF0000000000000, float -0.000000e+00, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0x7FF0000000000000, float 0.000000e+00, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0x7FF0000000000000, float 0x36A0000000000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0x7FF0000000000000, float 0x380FFFFFC0000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0x7FF0000000000000, float 0x3810000000000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0x7FF0000000000000, float 0x3FEFFFFFE0000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0x7FF0000000000000, float 1.000000e+00, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0x7FF0000000000000, float 0x3FF0000020000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0x7FF0000000000000, float 0x47EFFFFFE0000000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0 }, %struct.TestVector { float 0x7FF0000000000000, float 0x7FF0000000000000, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }], align 4

; Function Attrs: noinline nounwind optnone
define dso_local i32 @test__cmpsf2(ptr noundef %vector) #0 {
entry:
  %retval = alloca i32, align 4
  %vector.addr = alloca ptr, align 4
  store ptr %vector, ptr %vector.addr, align 4
  %0 = load ptr, ptr %vector.addr, align 4
  %a = getelementptr inbounds nuw %struct.TestVector, ptr %0, i32 0, i32 0
  %1 = load float, ptr %a, align 4
  %2 = load ptr, ptr %vector.addr, align 4
  %b = getelementptr inbounds nuw %struct.TestVector, ptr %2, i32 0, i32 1
  %3 = load float, ptr %b, align 4
  %call = call i32 @__eqsf2(float noundef %1, float noundef %3) #2
  %4 = load ptr, ptr %vector.addr, align 4
  %eqReference = getelementptr inbounds nuw %struct.TestVector, ptr %4, i32 0, i32 2
  %5 = load i32, ptr %eqReference, align 4
  %cmp = icmp ne i32 %call, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %vector.addr, align 4
  %a1 = getelementptr inbounds nuw %struct.TestVector, ptr %6, i32 0, i32 0
  %7 = load float, ptr %a1, align 4
  %conv = fpext float %7 to double
  %8 = load ptr, ptr %vector.addr, align 4
  %b2 = getelementptr inbounds nuw %struct.TestVector, ptr %8, i32 0, i32 1
  %9 = load float, ptr %b2, align 4
  %conv3 = fpext float %9 to double
  %10 = load ptr, ptr %vector.addr, align 4
  %a4 = getelementptr inbounds nuw %struct.TestVector, ptr %10, i32 0, i32 0
  %11 = load float, ptr %a4, align 4
  %12 = load ptr, ptr %vector.addr, align 4
  %b5 = getelementptr inbounds nuw %struct.TestVector, ptr %12, i32 0, i32 1
  %13 = load float, ptr %b5, align 4
  %call6 = call i32 @__eqsf2(float noundef %11, float noundef %13) #2
  %14 = load ptr, ptr %vector.addr, align 4
  %eqReference7 = getelementptr inbounds nuw %struct.TestVector, ptr %14, i32 0, i32 2
  %15 = load i32, ptr %eqReference7, align 4
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %conv, double noundef %conv3, i32 noundef %call6, i32 noundef %15) #2
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %16 = load ptr, ptr %vector.addr, align 4
  %a9 = getelementptr inbounds nuw %struct.TestVector, ptr %16, i32 0, i32 0
  %17 = load float, ptr %a9, align 4
  %18 = load ptr, ptr %vector.addr, align 4
  %b10 = getelementptr inbounds nuw %struct.TestVector, ptr %18, i32 0, i32 1
  %19 = load float, ptr %b10, align 4
  %call11 = call i32 @__gesf2(float noundef %17, float noundef %19) #2
  %20 = load ptr, ptr %vector.addr, align 4
  %geReference = getelementptr inbounds nuw %struct.TestVector, ptr %20, i32 0, i32 3
  %21 = load i32, ptr %geReference, align 4
  %cmp12 = icmp ne i32 %call11, %21
  br i1 %cmp12, label %if.then14, label %if.end24

if.then14:                                        ; preds = %if.end
  %22 = load ptr, ptr %vector.addr, align 4
  %a15 = getelementptr inbounds nuw %struct.TestVector, ptr %22, i32 0, i32 0
  %23 = load float, ptr %a15, align 4
  %conv16 = fpext float %23 to double
  %24 = load ptr, ptr %vector.addr, align 4
  %b17 = getelementptr inbounds nuw %struct.TestVector, ptr %24, i32 0, i32 1
  %25 = load float, ptr %b17, align 4
  %conv18 = fpext float %25 to double
  %26 = load ptr, ptr %vector.addr, align 4
  %a19 = getelementptr inbounds nuw %struct.TestVector, ptr %26, i32 0, i32 0
  %27 = load float, ptr %a19, align 4
  %28 = load ptr, ptr %vector.addr, align 4
  %b20 = getelementptr inbounds nuw %struct.TestVector, ptr %28, i32 0, i32 1
  %29 = load float, ptr %b20, align 4
  %call21 = call i32 @__gesf2(float noundef %27, float noundef %29) #2
  %30 = load ptr, ptr %vector.addr, align 4
  %geReference22 = getelementptr inbounds nuw %struct.TestVector, ptr %30, i32 0, i32 3
  %31 = load i32, ptr %geReference22, align 4
  %call23 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %conv16, double noundef %conv18, i32 noundef %call21, i32 noundef %31) #2
  store i32 1, ptr %retval, align 4
  br label %return

if.end24:                                         ; preds = %if.end
  %32 = load ptr, ptr %vector.addr, align 4
  %a25 = getelementptr inbounds nuw %struct.TestVector, ptr %32, i32 0, i32 0
  %33 = load float, ptr %a25, align 4
  %34 = load ptr, ptr %vector.addr, align 4
  %b26 = getelementptr inbounds nuw %struct.TestVector, ptr %34, i32 0, i32 1
  %35 = load float, ptr %b26, align 4
  %call27 = call i32 @__gtsf2(float noundef %33, float noundef %35) #2
  %36 = load ptr, ptr %vector.addr, align 4
  %gtReference = getelementptr inbounds nuw %struct.TestVector, ptr %36, i32 0, i32 4
  %37 = load i32, ptr %gtReference, align 4
  %cmp28 = icmp ne i32 %call27, %37
  br i1 %cmp28, label %if.then30, label %if.end40

if.then30:                                        ; preds = %if.end24
  %38 = load ptr, ptr %vector.addr, align 4
  %a31 = getelementptr inbounds nuw %struct.TestVector, ptr %38, i32 0, i32 0
  %39 = load float, ptr %a31, align 4
  %conv32 = fpext float %39 to double
  %40 = load ptr, ptr %vector.addr, align 4
  %b33 = getelementptr inbounds nuw %struct.TestVector, ptr %40, i32 0, i32 1
  %41 = load float, ptr %b33, align 4
  %conv34 = fpext float %41 to double
  %42 = load ptr, ptr %vector.addr, align 4
  %a35 = getelementptr inbounds nuw %struct.TestVector, ptr %42, i32 0, i32 0
  %43 = load float, ptr %a35, align 4
  %44 = load ptr, ptr %vector.addr, align 4
  %b36 = getelementptr inbounds nuw %struct.TestVector, ptr %44, i32 0, i32 1
  %45 = load float, ptr %b36, align 4
  %call37 = call i32 @__gtsf2(float noundef %43, float noundef %45) #2
  %46 = load ptr, ptr %vector.addr, align 4
  %gtReference38 = getelementptr inbounds nuw %struct.TestVector, ptr %46, i32 0, i32 4
  %47 = load i32, ptr %gtReference38, align 4
  %call39 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, double noundef %conv32, double noundef %conv34, i32 noundef %call37, i32 noundef %47) #2
  store i32 1, ptr %retval, align 4
  br label %return

if.end40:                                         ; preds = %if.end24
  %48 = load ptr, ptr %vector.addr, align 4
  %a41 = getelementptr inbounds nuw %struct.TestVector, ptr %48, i32 0, i32 0
  %49 = load float, ptr %a41, align 4
  %50 = load ptr, ptr %vector.addr, align 4
  %b42 = getelementptr inbounds nuw %struct.TestVector, ptr %50, i32 0, i32 1
  %51 = load float, ptr %b42, align 4
  %call43 = call i32 @__lesf2(float noundef %49, float noundef %51) #2
  %52 = load ptr, ptr %vector.addr, align 4
  %leReference = getelementptr inbounds nuw %struct.TestVector, ptr %52, i32 0, i32 5
  %53 = load i32, ptr %leReference, align 4
  %cmp44 = icmp ne i32 %call43, %53
  br i1 %cmp44, label %if.then46, label %if.end56

if.then46:                                        ; preds = %if.end40
  %54 = load ptr, ptr %vector.addr, align 4
  %a47 = getelementptr inbounds nuw %struct.TestVector, ptr %54, i32 0, i32 0
  %55 = load float, ptr %a47, align 4
  %conv48 = fpext float %55 to double
  %56 = load ptr, ptr %vector.addr, align 4
  %b49 = getelementptr inbounds nuw %struct.TestVector, ptr %56, i32 0, i32 1
  %57 = load float, ptr %b49, align 4
  %conv50 = fpext float %57 to double
  %58 = load ptr, ptr %vector.addr, align 4
  %a51 = getelementptr inbounds nuw %struct.TestVector, ptr %58, i32 0, i32 0
  %59 = load float, ptr %a51, align 4
  %60 = load ptr, ptr %vector.addr, align 4
  %b52 = getelementptr inbounds nuw %struct.TestVector, ptr %60, i32 0, i32 1
  %61 = load float, ptr %b52, align 4
  %call53 = call i32 @__lesf2(float noundef %59, float noundef %61) #2
  %62 = load ptr, ptr %vector.addr, align 4
  %leReference54 = getelementptr inbounds nuw %struct.TestVector, ptr %62, i32 0, i32 5
  %63 = load i32, ptr %leReference54, align 4
  %call55 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, double noundef %conv48, double noundef %conv50, i32 noundef %call53, i32 noundef %63) #2
  store i32 1, ptr %retval, align 4
  br label %return

if.end56:                                         ; preds = %if.end40
  %64 = load ptr, ptr %vector.addr, align 4
  %a57 = getelementptr inbounds nuw %struct.TestVector, ptr %64, i32 0, i32 0
  %65 = load float, ptr %a57, align 4
  %66 = load ptr, ptr %vector.addr, align 4
  %b58 = getelementptr inbounds nuw %struct.TestVector, ptr %66, i32 0, i32 1
  %67 = load float, ptr %b58, align 4
  %call59 = call i32 @__ltsf2(float noundef %65, float noundef %67) #2
  %68 = load ptr, ptr %vector.addr, align 4
  %ltReference = getelementptr inbounds nuw %struct.TestVector, ptr %68, i32 0, i32 6
  %69 = load i32, ptr %ltReference, align 4
  %cmp60 = icmp ne i32 %call59, %69
  br i1 %cmp60, label %if.then62, label %if.end72

if.then62:                                        ; preds = %if.end56
  %70 = load ptr, ptr %vector.addr, align 4
  %a63 = getelementptr inbounds nuw %struct.TestVector, ptr %70, i32 0, i32 0
  %71 = load float, ptr %a63, align 4
  %conv64 = fpext float %71 to double
  %72 = load ptr, ptr %vector.addr, align 4
  %b65 = getelementptr inbounds nuw %struct.TestVector, ptr %72, i32 0, i32 1
  %73 = load float, ptr %b65, align 4
  %conv66 = fpext float %73 to double
  %74 = load ptr, ptr %vector.addr, align 4
  %a67 = getelementptr inbounds nuw %struct.TestVector, ptr %74, i32 0, i32 0
  %75 = load float, ptr %a67, align 4
  %76 = load ptr, ptr %vector.addr, align 4
  %b68 = getelementptr inbounds nuw %struct.TestVector, ptr %76, i32 0, i32 1
  %77 = load float, ptr %b68, align 4
  %call69 = call i32 @__ltsf2(float noundef %75, float noundef %77) #2
  %78 = load ptr, ptr %vector.addr, align 4
  %ltReference70 = getelementptr inbounds nuw %struct.TestVector, ptr %78, i32 0, i32 6
  %79 = load i32, ptr %ltReference70, align 4
  %call71 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %conv64, double noundef %conv66, i32 noundef %call69, i32 noundef %79) #2
  store i32 1, ptr %retval, align 4
  br label %return

if.end72:                                         ; preds = %if.end56
  %80 = load ptr, ptr %vector.addr, align 4
  %a73 = getelementptr inbounds nuw %struct.TestVector, ptr %80, i32 0, i32 0
  %81 = load float, ptr %a73, align 4
  %82 = load ptr, ptr %vector.addr, align 4
  %b74 = getelementptr inbounds nuw %struct.TestVector, ptr %82, i32 0, i32 1
  %83 = load float, ptr %b74, align 4
  %call75 = call i32 @__nesf2(float noundef %81, float noundef %83) #2
  %84 = load ptr, ptr %vector.addr, align 4
  %neReference = getelementptr inbounds nuw %struct.TestVector, ptr %84, i32 0, i32 7
  %85 = load i32, ptr %neReference, align 4
  %cmp76 = icmp ne i32 %call75, %85
  br i1 %cmp76, label %if.then78, label %if.end88

if.then78:                                        ; preds = %if.end72
  %86 = load ptr, ptr %vector.addr, align 4
  %a79 = getelementptr inbounds nuw %struct.TestVector, ptr %86, i32 0, i32 0
  %87 = load float, ptr %a79, align 4
  %conv80 = fpext float %87 to double
  %88 = load ptr, ptr %vector.addr, align 4
  %b81 = getelementptr inbounds nuw %struct.TestVector, ptr %88, i32 0, i32 1
  %89 = load float, ptr %b81, align 4
  %conv82 = fpext float %89 to double
  %90 = load ptr, ptr %vector.addr, align 4
  %a83 = getelementptr inbounds nuw %struct.TestVector, ptr %90, i32 0, i32 0
  %91 = load float, ptr %a83, align 4
  %92 = load ptr, ptr %vector.addr, align 4
  %b84 = getelementptr inbounds nuw %struct.TestVector, ptr %92, i32 0, i32 1
  %93 = load float, ptr %b84, align 4
  %call85 = call i32 @__nesf2(float noundef %91, float noundef %93) #2
  %94 = load ptr, ptr %vector.addr, align 4
  %neReference86 = getelementptr inbounds nuw %struct.TestVector, ptr %94, i32 0, i32 7
  %95 = load i32, ptr %neReference86, align 4
  %call87 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, double noundef %conv80, double noundef %conv82, i32 noundef %call85, i32 noundef %95) #2
  store i32 1, ptr %retval, align 4
  br label %return

if.end88:                                         ; preds = %if.end72
  %96 = load ptr, ptr %vector.addr, align 4
  %a89 = getelementptr inbounds nuw %struct.TestVector, ptr %96, i32 0, i32 0
  %97 = load float, ptr %a89, align 4
  %98 = load ptr, ptr %vector.addr, align 4
  %b90 = getelementptr inbounds nuw %struct.TestVector, ptr %98, i32 0, i32 1
  %99 = load float, ptr %b90, align 4
  %call91 = call i32 @__unordsf2(float noundef %97, float noundef %99) #2
  %100 = load ptr, ptr %vector.addr, align 4
  %unReference = getelementptr inbounds nuw %struct.TestVector, ptr %100, i32 0, i32 8
  %101 = load i32, ptr %unReference, align 4
  %cmp92 = icmp ne i32 %call91, %101
  br i1 %cmp92, label %if.then94, label %if.end104

if.then94:                                        ; preds = %if.end88
  %102 = load ptr, ptr %vector.addr, align 4
  %a95 = getelementptr inbounds nuw %struct.TestVector, ptr %102, i32 0, i32 0
  %103 = load float, ptr %a95, align 4
  %conv96 = fpext float %103 to double
  %104 = load ptr, ptr %vector.addr, align 4
  %b97 = getelementptr inbounds nuw %struct.TestVector, ptr %104, i32 0, i32 1
  %105 = load float, ptr %b97, align 4
  %conv98 = fpext float %105 to double
  %106 = load ptr, ptr %vector.addr, align 4
  %a99 = getelementptr inbounds nuw %struct.TestVector, ptr %106, i32 0, i32 0
  %107 = load float, ptr %a99, align 4
  %108 = load ptr, ptr %vector.addr, align 4
  %b100 = getelementptr inbounds nuw %struct.TestVector, ptr %108, i32 0, i32 1
  %109 = load float, ptr %b100, align 4
  %call101 = call i32 @__unordsf2(float noundef %107, float noundef %109) #2
  %110 = load ptr, ptr %vector.addr, align 4
  %unReference102 = getelementptr inbounds nuw %struct.TestVector, ptr %110, i32 0, i32 8
  %111 = load i32, ptr %unReference102, align 4
  %call103 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, double noundef %conv96, double noundef %conv98, i32 noundef %call101, i32 noundef %111) #2
  store i32 1, ptr %retval, align 4
  br label %return

if.end104:                                        ; preds = %if.end88
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end104, %if.then94, %if.then78, %if.then62, %if.then46, %if.then30, %if.then14, %if.then
  %112 = load i32, ptr %retval, align 4
  ret i32 %112
}

declare dso_local i32 @__eqsf2(float noundef, float noundef) #1

declare dso_local i32 @printf(ptr noundef, ...) #1

declare dso_local i32 @__gesf2(float noundef, float noundef) #1

declare dso_local i32 @__gtsf2(float noundef, float noundef) #1

declare dso_local i32 @__lesf2(float noundef, float noundef) #1

declare dso_local i32 @__ltsf2(float noundef, float noundef) #1

declare dso_local i32 @__nesf2(float noundef, float noundef) #1

declare dso_local i32 @__unordsf2(float noundef, float noundef) #1

; Function Attrs: noinline nounwind optnone
define dso_local i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 4
  %numVectors = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 4
  store i32 324, ptr %numVectors, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 324
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %arrayidx = getelementptr inbounds [324 x %struct.TestVector], ptr @vectors, i32 0, i32 %1
  %call = call i32 @test__cmpsf2(ptr noundef %arrayidx) #2
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %2 = load i32, ptr %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %3 = load i32, ptr %retval, align 4
  ret i32 %3
}

attributes #0 = { noinline nounwind optnone "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcalculet,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcalculet,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #2 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"ilp32f"}
!2 = !{i32 6, !"riscv-isa", !3}
!3 = !{!"rv32i2p1_m2p0_f2p2_zicsr2p0_zmmul1p0"}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{i32 8, !"SmallDataLimit", i32 0}
!6 = !{!"clang version 22.1.8"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
