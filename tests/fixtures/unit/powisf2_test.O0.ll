; ModuleID = '../llvm-project/compiler-rt/test/builtins/Unit/powisf2_test.c'
source_filename = "../llvm-project/compiler-rt/test/builtins/Unit/powisf2_test.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

@.str = private unnamed_addr constant [46 x i8] c"error in __powisf2(%f, %d) = %f, expected %f\0A\00", align 1

; Function Attrs: noinline nounwind optnone
define dso_local i32 @test__powisf2(float noundef %a, i32 noundef %b, float noundef %expected) #0 {
entry:
  %a.addr = alloca float, align 4
  %b.addr = alloca i32, align 4
  %expected.addr = alloca float, align 4
  %x = alloca float, align 4
  %correct = alloca i32, align 4
  store float %a, ptr %a.addr, align 4
  store i32 %b, ptr %b.addr, align 4
  store float %expected, ptr %expected.addr, align 4
  %0 = load float, ptr %a.addr, align 4
  %1 = load i32, ptr %b.addr, align 4
  %call = call float @__powisf2(float noundef %0, i32 noundef %1) #2
  store float %call, ptr %x, align 4
  %2 = load float, ptr %x, align 4
  %3 = load float, ptr %expected.addr, align 4
  %cmp = fcmp oeq float %2, %3
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %4 = load float, ptr %x, align 4
  %5 = bitcast float %4 to i32
  %6 = icmp slt i32 %5, 0
  %7 = zext i1 %6 to i32
  %8 = load float, ptr %expected.addr, align 4
  %9 = bitcast float %8 to i32
  %10 = icmp slt i32 %9, 0
  %11 = zext i1 %10 to i32
  %cmp1 = icmp eq i32 %7, %11
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %12 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ]
  %land.ext = zext i1 %12 to i32
  store i32 %land.ext, ptr %correct, align 4
  %13 = load i32, ptr %correct, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.end
  %14 = load float, ptr %a.addr, align 4
  %conv = fpext float %14 to double
  %15 = load i32, ptr %b.addr, align 4
  %16 = load float, ptr %x, align 4
  %conv2 = fpext float %16 to double
  %17 = load float, ptr %expected.addr, align 4
  %conv3 = fpext float %17 to double
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %conv, i32 noundef %15, double noundef %conv2, double noundef %conv3) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %18 = load i32, ptr %correct, align 4
  %tobool5 = icmp ne i32 %18, 0
  %lnot = xor i1 %tobool5, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

declare dso_local float @__powisf2(float noundef, i32 noundef) #1

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %call = call i32 @test__powisf2(float noundef 0.000000e+00, i32 noundef 0, float noundef 1.000000e+00) #2
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call i32 @test__powisf2(float noundef 1.000000e+00, i32 noundef 0, float noundef 1.000000e+00) #2
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @test__powisf2(float noundef 1.500000e+00, i32 noundef 0, float noundef 1.000000e+00) #2
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  store i32 1, ptr %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end4
  %call9 = call i32 @test__powisf2(float noundef 2.000000e+00, i32 noundef 0, float noundef 1.000000e+00) #2
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  store i32 1, ptr %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.end8
  %call13 = call i32 @test__powisf2(float noundef 0x7FF0000000000000, i32 noundef 0, float noundef 1.000000e+00) #2
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end12
  store i32 1, ptr %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.end12
  %call17 = call i32 @test__powisf2(float noundef -0.000000e+00, i32 noundef 0, float noundef 1.000000e+00) #2
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end16
  store i32 1, ptr %retval, align 4
  br label %return

if.end20:                                         ; preds = %if.end16
  %call21 = call i32 @test__powisf2(float noundef -1.000000e+00, i32 noundef 0, float noundef 1.000000e+00) #2
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end20
  store i32 1, ptr %retval, align 4
  br label %return

if.end24:                                         ; preds = %if.end20
  %call25 = call i32 @test__powisf2(float noundef -1.500000e+00, i32 noundef 0, float noundef 1.000000e+00) #2
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end24
  store i32 1, ptr %retval, align 4
  br label %return

if.end28:                                         ; preds = %if.end24
  %call29 = call i32 @test__powisf2(float noundef -2.000000e+00, i32 noundef 0, float noundef 1.000000e+00) #2
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end28
  store i32 1, ptr %retval, align 4
  br label %return

if.end32:                                         ; preds = %if.end28
  %call33 = call i32 @test__powisf2(float noundef 0xFFF0000000000000, i32 noundef 0, float noundef 1.000000e+00) #2
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.end32
  store i32 1, ptr %retval, align 4
  br label %return

if.end36:                                         ; preds = %if.end32
  %call37 = call i32 @test__powisf2(float noundef 0.000000e+00, i32 noundef 1, float noundef 0.000000e+00) #2
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.end36
  store i32 1, ptr %retval, align 4
  br label %return

if.end40:                                         ; preds = %if.end36
  %call41 = call i32 @test__powisf2(float noundef 0.000000e+00, i32 noundef 2, float noundef 0.000000e+00) #2
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.end40
  store i32 1, ptr %retval, align 4
  br label %return

if.end44:                                         ; preds = %if.end40
  %call45 = call i32 @test__powisf2(float noundef 0.000000e+00, i32 noundef 3, float noundef 0.000000e+00) #2
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.end44
  store i32 1, ptr %retval, align 4
  br label %return

if.end48:                                         ; preds = %if.end44
  %call49 = call i32 @test__powisf2(float noundef 0.000000e+00, i32 noundef 4, float noundef 0.000000e+00) #2
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.end48
  store i32 1, ptr %retval, align 4
  br label %return

if.end52:                                         ; preds = %if.end48
  %call53 = call i32 @test__powisf2(float noundef 0.000000e+00, i32 noundef 2147483646, float noundef 0.000000e+00) #2
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.then55, label %if.end56

if.then55:                                        ; preds = %if.end52
  store i32 1, ptr %retval, align 4
  br label %return

if.end56:                                         ; preds = %if.end52
  %call57 = call i32 @test__powisf2(float noundef 0.000000e+00, i32 noundef 2147483647, float noundef 0.000000e+00) #2
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.then59, label %if.end60

if.then59:                                        ; preds = %if.end56
  store i32 1, ptr %retval, align 4
  br label %return

if.end60:                                         ; preds = %if.end56
  %call61 = call i32 @test__powisf2(float noundef -0.000000e+00, i32 noundef 1, float noundef -0.000000e+00) #2
  %tobool62 = icmp ne i32 %call61, 0
  br i1 %tobool62, label %if.then63, label %if.end64

if.then63:                                        ; preds = %if.end60
  store i32 1, ptr %retval, align 4
  br label %return

if.end64:                                         ; preds = %if.end60
  %call65 = call i32 @test__powisf2(float noundef -0.000000e+00, i32 noundef 2, float noundef 0.000000e+00) #2
  %tobool66 = icmp ne i32 %call65, 0
  br i1 %tobool66, label %if.then67, label %if.end68

if.then67:                                        ; preds = %if.end64
  store i32 1, ptr %retval, align 4
  br label %return

if.end68:                                         ; preds = %if.end64
  %call69 = call i32 @test__powisf2(float noundef -0.000000e+00, i32 noundef 3, float noundef -0.000000e+00) #2
  %tobool70 = icmp ne i32 %call69, 0
  br i1 %tobool70, label %if.then71, label %if.end72

if.then71:                                        ; preds = %if.end68
  store i32 1, ptr %retval, align 4
  br label %return

if.end72:                                         ; preds = %if.end68
  %call73 = call i32 @test__powisf2(float noundef -0.000000e+00, i32 noundef 4, float noundef 0.000000e+00) #2
  %tobool74 = icmp ne i32 %call73, 0
  br i1 %tobool74, label %if.then75, label %if.end76

if.then75:                                        ; preds = %if.end72
  store i32 1, ptr %retval, align 4
  br label %return

if.end76:                                         ; preds = %if.end72
  %call77 = call i32 @test__powisf2(float noundef -0.000000e+00, i32 noundef 2147483646, float noundef 0.000000e+00) #2
  %tobool78 = icmp ne i32 %call77, 0
  br i1 %tobool78, label %if.then79, label %if.end80

if.then79:                                        ; preds = %if.end76
  store i32 1, ptr %retval, align 4
  br label %return

if.end80:                                         ; preds = %if.end76
  %call81 = call i32 @test__powisf2(float noundef -0.000000e+00, i32 noundef 2147483647, float noundef -0.000000e+00) #2
  %tobool82 = icmp ne i32 %call81, 0
  br i1 %tobool82, label %if.then83, label %if.end84

if.then83:                                        ; preds = %if.end80
  store i32 1, ptr %retval, align 4
  br label %return

if.end84:                                         ; preds = %if.end80
  %call85 = call i32 @test__powisf2(float noundef 1.000000e+00, i32 noundef 1, float noundef 1.000000e+00) #2
  %tobool86 = icmp ne i32 %call85, 0
  br i1 %tobool86, label %if.then87, label %if.end88

if.then87:                                        ; preds = %if.end84
  store i32 1, ptr %retval, align 4
  br label %return

if.end88:                                         ; preds = %if.end84
  %call89 = call i32 @test__powisf2(float noundef 1.000000e+00, i32 noundef 2, float noundef 1.000000e+00) #2
  %tobool90 = icmp ne i32 %call89, 0
  br i1 %tobool90, label %if.then91, label %if.end92

if.then91:                                        ; preds = %if.end88
  store i32 1, ptr %retval, align 4
  br label %return

if.end92:                                         ; preds = %if.end88
  %call93 = call i32 @test__powisf2(float noundef 1.000000e+00, i32 noundef 3, float noundef 1.000000e+00) #2
  %tobool94 = icmp ne i32 %call93, 0
  br i1 %tobool94, label %if.then95, label %if.end96

if.then95:                                        ; preds = %if.end92
  store i32 1, ptr %retval, align 4
  br label %return

if.end96:                                         ; preds = %if.end92
  %call97 = call i32 @test__powisf2(float noundef 1.000000e+00, i32 noundef 4, float noundef 1.000000e+00) #2
  %tobool98 = icmp ne i32 %call97, 0
  br i1 %tobool98, label %if.then99, label %if.end100

if.then99:                                        ; preds = %if.end96
  store i32 1, ptr %retval, align 4
  br label %return

if.end100:                                        ; preds = %if.end96
  %call101 = call i32 @test__powisf2(float noundef 1.000000e+00, i32 noundef 2147483646, float noundef 1.000000e+00) #2
  %tobool102 = icmp ne i32 %call101, 0
  br i1 %tobool102, label %if.then103, label %if.end104

if.then103:                                       ; preds = %if.end100
  store i32 1, ptr %retval, align 4
  br label %return

if.end104:                                        ; preds = %if.end100
  %call105 = call i32 @test__powisf2(float noundef 1.000000e+00, i32 noundef 2147483647, float noundef 1.000000e+00) #2
  %tobool106 = icmp ne i32 %call105, 0
  br i1 %tobool106, label %if.then107, label %if.end108

if.then107:                                       ; preds = %if.end104
  store i32 1, ptr %retval, align 4
  br label %return

if.end108:                                        ; preds = %if.end104
  %call109 = call i32 @test__powisf2(float noundef 0x7FF0000000000000, i32 noundef 1, float noundef 0x7FF0000000000000) #2
  %tobool110 = icmp ne i32 %call109, 0
  br i1 %tobool110, label %if.then111, label %if.end112

if.then111:                                       ; preds = %if.end108
  store i32 1, ptr %retval, align 4
  br label %return

if.end112:                                        ; preds = %if.end108
  %call113 = call i32 @test__powisf2(float noundef 0x7FF0000000000000, i32 noundef 2, float noundef 0x7FF0000000000000) #2
  %tobool114 = icmp ne i32 %call113, 0
  br i1 %tobool114, label %if.then115, label %if.end116

if.then115:                                       ; preds = %if.end112
  store i32 1, ptr %retval, align 4
  br label %return

if.end116:                                        ; preds = %if.end112
  %call117 = call i32 @test__powisf2(float noundef 0x7FF0000000000000, i32 noundef 3, float noundef 0x7FF0000000000000) #2
  %tobool118 = icmp ne i32 %call117, 0
  br i1 %tobool118, label %if.then119, label %if.end120

if.then119:                                       ; preds = %if.end116
  store i32 1, ptr %retval, align 4
  br label %return

if.end120:                                        ; preds = %if.end116
  %call121 = call i32 @test__powisf2(float noundef 0x7FF0000000000000, i32 noundef 4, float noundef 0x7FF0000000000000) #2
  %tobool122 = icmp ne i32 %call121, 0
  br i1 %tobool122, label %if.then123, label %if.end124

if.then123:                                       ; preds = %if.end120
  store i32 1, ptr %retval, align 4
  br label %return

if.end124:                                        ; preds = %if.end120
  %call125 = call i32 @test__powisf2(float noundef 0x7FF0000000000000, i32 noundef 2147483646, float noundef 0x7FF0000000000000) #2
  %tobool126 = icmp ne i32 %call125, 0
  br i1 %tobool126, label %if.then127, label %if.end128

if.then127:                                       ; preds = %if.end124
  store i32 1, ptr %retval, align 4
  br label %return

if.end128:                                        ; preds = %if.end124
  %call129 = call i32 @test__powisf2(float noundef 0x7FF0000000000000, i32 noundef 2147483647, float noundef 0x7FF0000000000000) #2
  %tobool130 = icmp ne i32 %call129, 0
  br i1 %tobool130, label %if.then131, label %if.end132

if.then131:                                       ; preds = %if.end128
  store i32 1, ptr %retval, align 4
  br label %return

if.end132:                                        ; preds = %if.end128
  %call133 = call i32 @test__powisf2(float noundef 0xFFF0000000000000, i32 noundef 1, float noundef 0xFFF0000000000000) #2
  %tobool134 = icmp ne i32 %call133, 0
  br i1 %tobool134, label %if.then135, label %if.end136

if.then135:                                       ; preds = %if.end132
  store i32 1, ptr %retval, align 4
  br label %return

if.end136:                                        ; preds = %if.end132
  %call137 = call i32 @test__powisf2(float noundef 0xFFF0000000000000, i32 noundef 2, float noundef 0x7FF0000000000000) #2
  %tobool138 = icmp ne i32 %call137, 0
  br i1 %tobool138, label %if.then139, label %if.end140

if.then139:                                       ; preds = %if.end136
  store i32 1, ptr %retval, align 4
  br label %return

if.end140:                                        ; preds = %if.end136
  %call141 = call i32 @test__powisf2(float noundef 0xFFF0000000000000, i32 noundef 3, float noundef 0xFFF0000000000000) #2
  %tobool142 = icmp ne i32 %call141, 0
  br i1 %tobool142, label %if.then143, label %if.end144

if.then143:                                       ; preds = %if.end140
  store i32 1, ptr %retval, align 4
  br label %return

if.end144:                                        ; preds = %if.end140
  %call145 = call i32 @test__powisf2(float noundef 0xFFF0000000000000, i32 noundef 4, float noundef 0x7FF0000000000000) #2
  %tobool146 = icmp ne i32 %call145, 0
  br i1 %tobool146, label %if.then147, label %if.end148

if.then147:                                       ; preds = %if.end144
  store i32 1, ptr %retval, align 4
  br label %return

if.end148:                                        ; preds = %if.end144
  %call149 = call i32 @test__powisf2(float noundef 0xFFF0000000000000, i32 noundef 2147483646, float noundef 0x7FF0000000000000) #2
  %tobool150 = icmp ne i32 %call149, 0
  br i1 %tobool150, label %if.then151, label %if.end152

if.then151:                                       ; preds = %if.end148
  store i32 1, ptr %retval, align 4
  br label %return

if.end152:                                        ; preds = %if.end148
  %call153 = call i32 @test__powisf2(float noundef 0xFFF0000000000000, i32 noundef 2147483647, float noundef 0xFFF0000000000000) #2
  %tobool154 = icmp ne i32 %call153, 0
  br i1 %tobool154, label %if.then155, label %if.end156

if.then155:                                       ; preds = %if.end152
  store i32 1, ptr %retval, align 4
  br label %return

if.end156:                                        ; preds = %if.end152
  %call157 = call i32 @test__powisf2(float noundef 0.000000e+00, i32 noundef -1, float noundef 0x7FF0000000000000) #2
  %tobool158 = icmp ne i32 %call157, 0
  br i1 %tobool158, label %if.then159, label %if.end160

if.then159:                                       ; preds = %if.end156
  store i32 1, ptr %retval, align 4
  br label %return

if.end160:                                        ; preds = %if.end156
  %call161 = call i32 @test__powisf2(float noundef 0.000000e+00, i32 noundef -2, float noundef 0x7FF0000000000000) #2
  %tobool162 = icmp ne i32 %call161, 0
  br i1 %tobool162, label %if.then163, label %if.end164

if.then163:                                       ; preds = %if.end160
  store i32 1, ptr %retval, align 4
  br label %return

if.end164:                                        ; preds = %if.end160
  %call165 = call i32 @test__powisf2(float noundef 0.000000e+00, i32 noundef -3, float noundef 0x7FF0000000000000) #2
  %tobool166 = icmp ne i32 %call165, 0
  br i1 %tobool166, label %if.then167, label %if.end168

if.then167:                                       ; preds = %if.end164
  store i32 1, ptr %retval, align 4
  br label %return

if.end168:                                        ; preds = %if.end164
  %call169 = call i32 @test__powisf2(float noundef 0.000000e+00, i32 noundef -4, float noundef 0x7FF0000000000000) #2
  %tobool170 = icmp ne i32 %call169, 0
  br i1 %tobool170, label %if.then171, label %if.end172

if.then171:                                       ; preds = %if.end168
  store i32 1, ptr %retval, align 4
  br label %return

if.end172:                                        ; preds = %if.end168
  %call173 = call i32 @test__powisf2(float noundef 0.000000e+00, i32 noundef -2147483646, float noundef 0x7FF0000000000000) #2
  %tobool174 = icmp ne i32 %call173, 0
  br i1 %tobool174, label %if.then175, label %if.end176

if.then175:                                       ; preds = %if.end172
  store i32 1, ptr %retval, align 4
  br label %return

if.end176:                                        ; preds = %if.end172
  %call177 = call i32 @test__powisf2(float noundef 0.000000e+00, i32 noundef -2147483647, float noundef 0x7FF0000000000000) #2
  %tobool178 = icmp ne i32 %call177, 0
  br i1 %tobool178, label %if.then179, label %if.end180

if.then179:                                       ; preds = %if.end176
  store i32 1, ptr %retval, align 4
  br label %return

if.end180:                                        ; preds = %if.end176
  %call181 = call i32 @test__powisf2(float noundef 0.000000e+00, i32 noundef -2147483648, float noundef 0x7FF0000000000000) #2
  %tobool182 = icmp ne i32 %call181, 0
  br i1 %tobool182, label %if.then183, label %if.end184

if.then183:                                       ; preds = %if.end180
  store i32 1, ptr %retval, align 4
  br label %return

if.end184:                                        ; preds = %if.end180
  %call185 = call i32 @test__powisf2(float noundef -0.000000e+00, i32 noundef -1, float noundef 0xFFF0000000000000) #2
  %tobool186 = icmp ne i32 %call185, 0
  br i1 %tobool186, label %if.then187, label %if.end188

if.then187:                                       ; preds = %if.end184
  store i32 1, ptr %retval, align 4
  br label %return

if.end188:                                        ; preds = %if.end184
  %call189 = call i32 @test__powisf2(float noundef -0.000000e+00, i32 noundef -2, float noundef 0x7FF0000000000000) #2
  %tobool190 = icmp ne i32 %call189, 0
  br i1 %tobool190, label %if.then191, label %if.end192

if.then191:                                       ; preds = %if.end188
  store i32 1, ptr %retval, align 4
  br label %return

if.end192:                                        ; preds = %if.end188
  %call193 = call i32 @test__powisf2(float noundef -0.000000e+00, i32 noundef -3, float noundef 0xFFF0000000000000) #2
  %tobool194 = icmp ne i32 %call193, 0
  br i1 %tobool194, label %if.then195, label %if.end196

if.then195:                                       ; preds = %if.end192
  store i32 1, ptr %retval, align 4
  br label %return

if.end196:                                        ; preds = %if.end192
  %call197 = call i32 @test__powisf2(float noundef -0.000000e+00, i32 noundef -4, float noundef 0x7FF0000000000000) #2
  %tobool198 = icmp ne i32 %call197, 0
  br i1 %tobool198, label %if.then199, label %if.end200

if.then199:                                       ; preds = %if.end196
  store i32 1, ptr %retval, align 4
  br label %return

if.end200:                                        ; preds = %if.end196
  %call201 = call i32 @test__powisf2(float noundef -0.000000e+00, i32 noundef -2147483646, float noundef 0x7FF0000000000000) #2
  %tobool202 = icmp ne i32 %call201, 0
  br i1 %tobool202, label %if.then203, label %if.end204

if.then203:                                       ; preds = %if.end200
  store i32 1, ptr %retval, align 4
  br label %return

if.end204:                                        ; preds = %if.end200
  %call205 = call i32 @test__powisf2(float noundef -0.000000e+00, i32 noundef -2147483647, float noundef 0xFFF0000000000000) #2
  %tobool206 = icmp ne i32 %call205, 0
  br i1 %tobool206, label %if.then207, label %if.end208

if.then207:                                       ; preds = %if.end204
  store i32 1, ptr %retval, align 4
  br label %return

if.end208:                                        ; preds = %if.end204
  %call209 = call i32 @test__powisf2(float noundef -0.000000e+00, i32 noundef -2147483648, float noundef 0x7FF0000000000000) #2
  %tobool210 = icmp ne i32 %call209, 0
  br i1 %tobool210, label %if.then211, label %if.end212

if.then211:                                       ; preds = %if.end208
  store i32 1, ptr %retval, align 4
  br label %return

if.end212:                                        ; preds = %if.end208
  %call213 = call i32 @test__powisf2(float noundef 1.000000e+00, i32 noundef -1, float noundef 1.000000e+00) #2
  %tobool214 = icmp ne i32 %call213, 0
  br i1 %tobool214, label %if.then215, label %if.end216

if.then215:                                       ; preds = %if.end212
  store i32 1, ptr %retval, align 4
  br label %return

if.end216:                                        ; preds = %if.end212
  %call217 = call i32 @test__powisf2(float noundef 1.000000e+00, i32 noundef -2, float noundef 1.000000e+00) #2
  %tobool218 = icmp ne i32 %call217, 0
  br i1 %tobool218, label %if.then219, label %if.end220

if.then219:                                       ; preds = %if.end216
  store i32 1, ptr %retval, align 4
  br label %return

if.end220:                                        ; preds = %if.end216
  %call221 = call i32 @test__powisf2(float noundef 1.000000e+00, i32 noundef -3, float noundef 1.000000e+00) #2
  %tobool222 = icmp ne i32 %call221, 0
  br i1 %tobool222, label %if.then223, label %if.end224

if.then223:                                       ; preds = %if.end220
  store i32 1, ptr %retval, align 4
  br label %return

if.end224:                                        ; preds = %if.end220
  %call225 = call i32 @test__powisf2(float noundef 1.000000e+00, i32 noundef -4, float noundef 1.000000e+00) #2
  %tobool226 = icmp ne i32 %call225, 0
  br i1 %tobool226, label %if.then227, label %if.end228

if.then227:                                       ; preds = %if.end224
  store i32 1, ptr %retval, align 4
  br label %return

if.end228:                                        ; preds = %if.end224
  %call229 = call i32 @test__powisf2(float noundef 1.000000e+00, i32 noundef -2147483646, float noundef 1.000000e+00) #2
  %tobool230 = icmp ne i32 %call229, 0
  br i1 %tobool230, label %if.then231, label %if.end232

if.then231:                                       ; preds = %if.end228
  store i32 1, ptr %retval, align 4
  br label %return

if.end232:                                        ; preds = %if.end228
  %call233 = call i32 @test__powisf2(float noundef 1.000000e+00, i32 noundef -2147483647, float noundef 1.000000e+00) #2
  %tobool234 = icmp ne i32 %call233, 0
  br i1 %tobool234, label %if.then235, label %if.end236

if.then235:                                       ; preds = %if.end232
  store i32 1, ptr %retval, align 4
  br label %return

if.end236:                                        ; preds = %if.end232
  %call237 = call i32 @test__powisf2(float noundef 1.000000e+00, i32 noundef -2147483648, float noundef 1.000000e+00) #2
  %tobool238 = icmp ne i32 %call237, 0
  br i1 %tobool238, label %if.then239, label %if.end240

if.then239:                                       ; preds = %if.end236
  store i32 1, ptr %retval, align 4
  br label %return

if.end240:                                        ; preds = %if.end236
  %call241 = call i32 @test__powisf2(float noundef 0x7FF0000000000000, i32 noundef -1, float noundef 0.000000e+00) #2
  %tobool242 = icmp ne i32 %call241, 0
  br i1 %tobool242, label %if.then243, label %if.end244

if.then243:                                       ; preds = %if.end240
  store i32 1, ptr %retval, align 4
  br label %return

if.end244:                                        ; preds = %if.end240
  %call245 = call i32 @test__powisf2(float noundef 0x7FF0000000000000, i32 noundef -2, float noundef 0.000000e+00) #2
  %tobool246 = icmp ne i32 %call245, 0
  br i1 %tobool246, label %if.then247, label %if.end248

if.then247:                                       ; preds = %if.end244
  store i32 1, ptr %retval, align 4
  br label %return

if.end248:                                        ; preds = %if.end244
  %call249 = call i32 @test__powisf2(float noundef 0x7FF0000000000000, i32 noundef -3, float noundef 0.000000e+00) #2
  %tobool250 = icmp ne i32 %call249, 0
  br i1 %tobool250, label %if.then251, label %if.end252

if.then251:                                       ; preds = %if.end248
  store i32 1, ptr %retval, align 4
  br label %return

if.end252:                                        ; preds = %if.end248
  %call253 = call i32 @test__powisf2(float noundef 0x7FF0000000000000, i32 noundef -4, float noundef 0.000000e+00) #2
  %tobool254 = icmp ne i32 %call253, 0
  br i1 %tobool254, label %if.then255, label %if.end256

if.then255:                                       ; preds = %if.end252
  store i32 1, ptr %retval, align 4
  br label %return

if.end256:                                        ; preds = %if.end252
  %call257 = call i32 @test__powisf2(float noundef 0x7FF0000000000000, i32 noundef -2147483646, float noundef 0.000000e+00) #2
  %tobool258 = icmp ne i32 %call257, 0
  br i1 %tobool258, label %if.then259, label %if.end260

if.then259:                                       ; preds = %if.end256
  store i32 1, ptr %retval, align 4
  br label %return

if.end260:                                        ; preds = %if.end256
  %call261 = call i32 @test__powisf2(float noundef 0x7FF0000000000000, i32 noundef -2147483647, float noundef 0.000000e+00) #2
  %tobool262 = icmp ne i32 %call261, 0
  br i1 %tobool262, label %if.then263, label %if.end264

if.then263:                                       ; preds = %if.end260
  store i32 1, ptr %retval, align 4
  br label %return

if.end264:                                        ; preds = %if.end260
  %call265 = call i32 @test__powisf2(float noundef 0x7FF0000000000000, i32 noundef -2147483648, float noundef 0.000000e+00) #2
  %tobool266 = icmp ne i32 %call265, 0
  br i1 %tobool266, label %if.then267, label %if.end268

if.then267:                                       ; preds = %if.end264
  store i32 1, ptr %retval, align 4
  br label %return

if.end268:                                        ; preds = %if.end264
  %call269 = call i32 @test__powisf2(float noundef 0xFFF0000000000000, i32 noundef -1, float noundef -0.000000e+00) #2
  %tobool270 = icmp ne i32 %call269, 0
  br i1 %tobool270, label %if.then271, label %if.end272

if.then271:                                       ; preds = %if.end268
  store i32 1, ptr %retval, align 4
  br label %return

if.end272:                                        ; preds = %if.end268
  %call273 = call i32 @test__powisf2(float noundef 0xFFF0000000000000, i32 noundef -2, float noundef 0.000000e+00) #2
  %tobool274 = icmp ne i32 %call273, 0
  br i1 %tobool274, label %if.then275, label %if.end276

if.then275:                                       ; preds = %if.end272
  store i32 1, ptr %retval, align 4
  br label %return

if.end276:                                        ; preds = %if.end272
  %call277 = call i32 @test__powisf2(float noundef 0xFFF0000000000000, i32 noundef -3, float noundef -0.000000e+00) #2
  %tobool278 = icmp ne i32 %call277, 0
  br i1 %tobool278, label %if.then279, label %if.end280

if.then279:                                       ; preds = %if.end276
  store i32 1, ptr %retval, align 4
  br label %return

if.end280:                                        ; preds = %if.end276
  %call281 = call i32 @test__powisf2(float noundef 0xFFF0000000000000, i32 noundef -4, float noundef 0.000000e+00) #2
  %tobool282 = icmp ne i32 %call281, 0
  br i1 %tobool282, label %if.then283, label %if.end284

if.then283:                                       ; preds = %if.end280
  store i32 1, ptr %retval, align 4
  br label %return

if.end284:                                        ; preds = %if.end280
  %call285 = call i32 @test__powisf2(float noundef 0xFFF0000000000000, i32 noundef -2147483646, float noundef 0.000000e+00) #2
  %tobool286 = icmp ne i32 %call285, 0
  br i1 %tobool286, label %if.then287, label %if.end288

if.then287:                                       ; preds = %if.end284
  store i32 1, ptr %retval, align 4
  br label %return

if.end288:                                        ; preds = %if.end284
  %call289 = call i32 @test__powisf2(float noundef 0xFFF0000000000000, i32 noundef -2147483647, float noundef -0.000000e+00) #2
  %tobool290 = icmp ne i32 %call289, 0
  br i1 %tobool290, label %if.then291, label %if.end292

if.then291:                                       ; preds = %if.end288
  store i32 1, ptr %retval, align 4
  br label %return

if.end292:                                        ; preds = %if.end288
  %call293 = call i32 @test__powisf2(float noundef 0xFFF0000000000000, i32 noundef -2147483648, float noundef 0.000000e+00) #2
  %tobool294 = icmp ne i32 %call293, 0
  br i1 %tobool294, label %if.then295, label %if.end296

if.then295:                                       ; preds = %if.end292
  store i32 1, ptr %retval, align 4
  br label %return

if.end296:                                        ; preds = %if.end292
  %call297 = call i32 @test__powisf2(float noundef 2.000000e+00, i32 noundef 10, float noundef 1.024000e+03) #2
  %tobool298 = icmp ne i32 %call297, 0
  br i1 %tobool298, label %if.then299, label %if.end300

if.then299:                                       ; preds = %if.end296
  store i32 1, ptr %retval, align 4
  br label %return

if.end300:                                        ; preds = %if.end296
  %call301 = call i32 @test__powisf2(float noundef -2.000000e+00, i32 noundef 10, float noundef 1.024000e+03) #2
  %tobool302 = icmp ne i32 %call301, 0
  br i1 %tobool302, label %if.then303, label %if.end304

if.then303:                                       ; preds = %if.end300
  store i32 1, ptr %retval, align 4
  br label %return

if.end304:                                        ; preds = %if.end300
  %call305 = call i32 @test__powisf2(float noundef 2.000000e+00, i32 noundef -10, float noundef 0x3F50000000000000) #2
  %tobool306 = icmp ne i32 %call305, 0
  br i1 %tobool306, label %if.then307, label %if.end308

if.then307:                                       ; preds = %if.end304
  store i32 1, ptr %retval, align 4
  br label %return

if.end308:                                        ; preds = %if.end304
  %call309 = call i32 @test__powisf2(float noundef -2.000000e+00, i32 noundef -10, float noundef 0x3F50000000000000) #2
  %tobool310 = icmp ne i32 %call309, 0
  br i1 %tobool310, label %if.then311, label %if.end312

if.then311:                                       ; preds = %if.end308
  store i32 1, ptr %retval, align 4
  br label %return

if.end312:                                        ; preds = %if.end308
  %call313 = call i32 @test__powisf2(float noundef 2.000000e+00, i32 noundef 19, float noundef 5.242880e+05) #2
  %tobool314 = icmp ne i32 %call313, 0
  br i1 %tobool314, label %if.then315, label %if.end316

if.then315:                                       ; preds = %if.end312
  store i32 1, ptr %retval, align 4
  br label %return

if.end316:                                        ; preds = %if.end312
  %call317 = call i32 @test__powisf2(float noundef -2.000000e+00, i32 noundef 19, float noundef -5.242880e+05) #2
  %tobool318 = icmp ne i32 %call317, 0
  br i1 %tobool318, label %if.then319, label %if.end320

if.then319:                                       ; preds = %if.end316
  store i32 1, ptr %retval, align 4
  br label %return

if.end320:                                        ; preds = %if.end316
  %call321 = call i32 @test__powisf2(float noundef 2.000000e+00, i32 noundef -19, float noundef 0x3EC0000000000000) #2
  %tobool322 = icmp ne i32 %call321, 0
  br i1 %tobool322, label %if.then323, label %if.end324

if.then323:                                       ; preds = %if.end320
  store i32 1, ptr %retval, align 4
  br label %return

if.end324:                                        ; preds = %if.end320
  %call325 = call i32 @test__powisf2(float noundef -2.000000e+00, i32 noundef -19, float noundef 0xBEC0000000000000) #2
  %tobool326 = icmp ne i32 %call325, 0
  br i1 %tobool326, label %if.then327, label %if.end328

if.then327:                                       ; preds = %if.end324
  store i32 1, ptr %retval, align 4
  br label %return

if.end328:                                        ; preds = %if.end324
  %call329 = call i32 @test__powisf2(float noundef 2.000000e+00, i32 noundef 31, float noundef 0x41E0000000000000) #2
  %tobool330 = icmp ne i32 %call329, 0
  br i1 %tobool330, label %if.then331, label %if.end332

if.then331:                                       ; preds = %if.end328
  store i32 1, ptr %retval, align 4
  br label %return

if.end332:                                        ; preds = %if.end328
  %call333 = call i32 @test__powisf2(float noundef -2.000000e+00, i32 noundef 31, float noundef 0xC1E0000000000000) #2
  %tobool334 = icmp ne i32 %call333, 0
  br i1 %tobool334, label %if.then335, label %if.end336

if.then335:                                       ; preds = %if.end332
  store i32 1, ptr %retval, align 4
  br label %return

if.end336:                                        ; preds = %if.end332
  %call337 = call i32 @test__powisf2(float noundef 2.000000e+00, i32 noundef -31, float noundef 0x3E00000000000000) #2
  %tobool338 = icmp ne i32 %call337, 0
  br i1 %tobool338, label %if.then339, label %if.end340

if.then339:                                       ; preds = %if.end336
  store i32 1, ptr %retval, align 4
  br label %return

if.end340:                                        ; preds = %if.end336
  %call341 = call i32 @test__powisf2(float noundef -2.000000e+00, i32 noundef -31, float noundef 0xBE00000000000000) #2
  %tobool342 = icmp ne i32 %call341, 0
  br i1 %tobool342, label %if.then343, label %if.end344

if.then343:                                       ; preds = %if.end340
  store i32 1, ptr %retval, align 4
  br label %return

if.end344:                                        ; preds = %if.end340
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end344, %if.then343, %if.then339, %if.then335, %if.then331, %if.then327, %if.then323, %if.then319, %if.then315, %if.then311, %if.then307, %if.then303, %if.then299, %if.then295, %if.then291, %if.then287, %if.then283, %if.then279, %if.then275, %if.then271, %if.then267, %if.then263, %if.then259, %if.then255, %if.then251, %if.then247, %if.then243, %if.then239, %if.then235, %if.then231, %if.then227, %if.then223, %if.then219, %if.then215, %if.then211, %if.then207, %if.then203, %if.then199, %if.then195, %if.then191, %if.then187, %if.then183, %if.then179, %if.then175, %if.then171, %if.then167, %if.then163, %if.then159, %if.then155, %if.then151, %if.then147, %if.then143, %if.then139, %if.then135, %if.then131, %if.then127, %if.then123, %if.then119, %if.then115, %if.then111, %if.then107, %if.then103, %if.then99, %if.then95, %if.then91, %if.then87, %if.then83, %if.then79, %if.then75, %if.then71, %if.then67, %if.then63, %if.then59, %if.then55, %if.then51, %if.then47, %if.then43, %if.then39, %if.then35, %if.then31, %if.then27, %if.then23, %if.then19, %if.then15, %if.then11, %if.then7, %if.then3, %if.then
  %0 = load i32, ptr %retval, align 4
  ret i32 %0
}

attributes #0 = { noinline nounwind optnone "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
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
