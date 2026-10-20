; ModuleID = '../llvm-project/compiler-rt/test/builtins/Unit/clzsi2_test.c'
source_filename = "../llvm-project/compiler-rt/test/builtins/Unit/clzsi2_test.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

@.str = private unnamed_addr constant [43 x i8] c"error in __clzsi2(0x%X) = %d, expected %d\0A\00", align 1
@assumption_1 = dso_local global [1 x i8] zeroinitializer, align 1
@assumption_2 = dso_local global [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone
define dso_local i32 @test__clzsi2(i32 noundef %a, i32 noundef %expected) #0 {
entry:
  %a.addr = alloca i32, align 4
  %expected.addr = alloca i32, align 4
  %x = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4
  store i32 %expected, ptr %expected.addr, align 4
  %0 = load i32, ptr %a.addr, align 4
  %call = call i32 @__clzsi2(i32 noundef %0) #2
  store i32 %call, ptr %x, align 4
  %1 = load i32, ptr %x, align 4
  %2 = load i32, ptr %expected.addr, align 4
  %cmp = icmp ne i32 %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %a.addr, align 4
  %4 = load i32, ptr %x, align 4
  %5 = load i32, ptr %expected.addr, align 4
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %3, i32 noundef %4, i32 noundef %5) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, ptr %x, align 4
  %7 = load i32, ptr %expected.addr, align 4
  %cmp2 = icmp ne i32 %6, %7
  %conv = zext i1 %cmp2 to i32
  ret i32 %conv
}

declare dso_local i32 @__clzsi2(i32 noundef) #1

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %call = call i32 @test__clzsi2(i32 noundef 8388608, i32 noundef 8) #2
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call i32 @test__clzsi2(i32 noundef 16777216, i32 noundef 7) #2
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @test__clzsi2(i32 noundef 33554432, i32 noundef 6) #2
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  store i32 1, ptr %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end4
  %call9 = call i32 @test__clzsi2(i32 noundef 50331648, i32 noundef 6) #2
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  store i32 1, ptr %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.end8
  %call13 = call i32 @test__clzsi2(i32 noundef 67108864, i32 noundef 5) #2
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end12
  store i32 1, ptr %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.end12
  %call17 = call i32 @test__clzsi2(i32 noundef 83886080, i32 noundef 5) #2
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end16
  store i32 1, ptr %retval, align 4
  br label %return

if.end20:                                         ; preds = %if.end16
  %call21 = call i32 @test__clzsi2(i32 noundef 100663296, i32 noundef 5) #2
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end20
  store i32 1, ptr %retval, align 4
  br label %return

if.end24:                                         ; preds = %if.end20
  %call25 = call i32 @test__clzsi2(i32 noundef 117440512, i32 noundef 5) #2
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end24
  store i32 1, ptr %retval, align 4
  br label %return

if.end28:                                         ; preds = %if.end24
  %call29 = call i32 @test__clzsi2(i32 noundef 134217728, i32 noundef 4) #2
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end28
  store i32 1, ptr %retval, align 4
  br label %return

if.end32:                                         ; preds = %if.end28
  %call33 = call i32 @test__clzsi2(i32 noundef 150994944, i32 noundef 4) #2
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.end32
  store i32 1, ptr %retval, align 4
  br label %return

if.end36:                                         ; preds = %if.end32
  %call37 = call i32 @test__clzsi2(i32 noundef 167772160, i32 noundef 4) #2
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.end36
  store i32 1, ptr %retval, align 4
  br label %return

if.end40:                                         ; preds = %if.end36
  %call41 = call i32 @test__clzsi2(i32 noundef 184549376, i32 noundef 4) #2
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.end40
  store i32 1, ptr %retval, align 4
  br label %return

if.end44:                                         ; preds = %if.end40
  %call45 = call i32 @test__clzsi2(i32 noundef 201326592, i32 noundef 4) #2
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.end44
  store i32 1, ptr %retval, align 4
  br label %return

if.end48:                                         ; preds = %if.end44
  %call49 = call i32 @test__clzsi2(i32 noundef 218103808, i32 noundef 4) #2
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.end48
  store i32 1, ptr %retval, align 4
  br label %return

if.end52:                                         ; preds = %if.end48
  %call53 = call i32 @test__clzsi2(i32 noundef 234881024, i32 noundef 4) #2
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.then55, label %if.end56

if.then55:                                        ; preds = %if.end52
  store i32 1, ptr %retval, align 4
  br label %return

if.end56:                                         ; preds = %if.end52
  %call57 = call i32 @test__clzsi2(i32 noundef 251658240, i32 noundef 4) #2
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.then59, label %if.end60

if.then59:                                        ; preds = %if.end56
  store i32 1, ptr %retval, align 4
  br label %return

if.end60:                                         ; preds = %if.end56
  %call61 = call i32 @test__clzsi2(i32 noundef 268435456, i32 noundef 3) #2
  %tobool62 = icmp ne i32 %call61, 0
  br i1 %tobool62, label %if.then63, label %if.end64

if.then63:                                        ; preds = %if.end60
  store i32 1, ptr %retval, align 4
  br label %return

if.end64:                                         ; preds = %if.end60
  %call65 = call i32 @test__clzsi2(i32 noundef 285212672, i32 noundef 3) #2
  %tobool66 = icmp ne i32 %call65, 0
  br i1 %tobool66, label %if.then67, label %if.end68

if.then67:                                        ; preds = %if.end64
  store i32 1, ptr %retval, align 4
  br label %return

if.end68:                                         ; preds = %if.end64
  %call69 = call i32 @test__clzsi2(i32 noundef 301989888, i32 noundef 3) #2
  %tobool70 = icmp ne i32 %call69, 0
  br i1 %tobool70, label %if.then71, label %if.end72

if.then71:                                        ; preds = %if.end68
  store i32 1, ptr %retval, align 4
  br label %return

if.end72:                                         ; preds = %if.end68
  %call73 = call i32 @test__clzsi2(i32 noundef 318767104, i32 noundef 3) #2
  %tobool74 = icmp ne i32 %call73, 0
  br i1 %tobool74, label %if.then75, label %if.end76

if.then75:                                        ; preds = %if.end72
  store i32 1, ptr %retval, align 4
  br label %return

if.end76:                                         ; preds = %if.end72
  %call77 = call i32 @test__clzsi2(i32 noundef 335544320, i32 noundef 3) #2
  %tobool78 = icmp ne i32 %call77, 0
  br i1 %tobool78, label %if.then79, label %if.end80

if.then79:                                        ; preds = %if.end76
  store i32 1, ptr %retval, align 4
  br label %return

if.end80:                                         ; preds = %if.end76
  %call81 = call i32 @test__clzsi2(i32 noundef 352321536, i32 noundef 3) #2
  %tobool82 = icmp ne i32 %call81, 0
  br i1 %tobool82, label %if.then83, label %if.end84

if.then83:                                        ; preds = %if.end80
  store i32 1, ptr %retval, align 4
  br label %return

if.end84:                                         ; preds = %if.end80
  %call85 = call i32 @test__clzsi2(i32 noundef 369098752, i32 noundef 3) #2
  %tobool86 = icmp ne i32 %call85, 0
  br i1 %tobool86, label %if.then87, label %if.end88

if.then87:                                        ; preds = %if.end84
  store i32 1, ptr %retval, align 4
  br label %return

if.end88:                                         ; preds = %if.end84
  %call89 = call i32 @test__clzsi2(i32 noundef 385875968, i32 noundef 3) #2
  %tobool90 = icmp ne i32 %call89, 0
  br i1 %tobool90, label %if.then91, label %if.end92

if.then91:                                        ; preds = %if.end88
  store i32 1, ptr %retval, align 4
  br label %return

if.end92:                                         ; preds = %if.end88
  %call93 = call i32 @test__clzsi2(i32 noundef 402653184, i32 noundef 3) #2
  %tobool94 = icmp ne i32 %call93, 0
  br i1 %tobool94, label %if.then95, label %if.end96

if.then95:                                        ; preds = %if.end92
  store i32 1, ptr %retval, align 4
  br label %return

if.end96:                                         ; preds = %if.end92
  %call97 = call i32 @test__clzsi2(i32 noundef 419430400, i32 noundef 3) #2
  %tobool98 = icmp ne i32 %call97, 0
  br i1 %tobool98, label %if.then99, label %if.end100

if.then99:                                        ; preds = %if.end96
  store i32 1, ptr %retval, align 4
  br label %return

if.end100:                                        ; preds = %if.end96
  %call101 = call i32 @test__clzsi2(i32 noundef 436207616, i32 noundef 3) #2
  %tobool102 = icmp ne i32 %call101, 0
  br i1 %tobool102, label %if.then103, label %if.end104

if.then103:                                       ; preds = %if.end100
  store i32 1, ptr %retval, align 4
  br label %return

if.end104:                                        ; preds = %if.end100
  %call105 = call i32 @test__clzsi2(i32 noundef 452984832, i32 noundef 3) #2
  %tobool106 = icmp ne i32 %call105, 0
  br i1 %tobool106, label %if.then107, label %if.end108

if.then107:                                       ; preds = %if.end104
  store i32 1, ptr %retval, align 4
  br label %return

if.end108:                                        ; preds = %if.end104
  %call109 = call i32 @test__clzsi2(i32 noundef 469762048, i32 noundef 3) #2
  %tobool110 = icmp ne i32 %call109, 0
  br i1 %tobool110, label %if.then111, label %if.end112

if.then111:                                       ; preds = %if.end108
  store i32 1, ptr %retval, align 4
  br label %return

if.end112:                                        ; preds = %if.end108
  %call113 = call i32 @test__clzsi2(i32 noundef 486539264, i32 noundef 3) #2
  %tobool114 = icmp ne i32 %call113, 0
  br i1 %tobool114, label %if.then115, label %if.end116

if.then115:                                       ; preds = %if.end112
  store i32 1, ptr %retval, align 4
  br label %return

if.end116:                                        ; preds = %if.end112
  %call117 = call i32 @test__clzsi2(i32 noundef 503316480, i32 noundef 3) #2
  %tobool118 = icmp ne i32 %call117, 0
  br i1 %tobool118, label %if.then119, label %if.end120

if.then119:                                       ; preds = %if.end116
  store i32 1, ptr %retval, align 4
  br label %return

if.end120:                                        ; preds = %if.end116
  %call121 = call i32 @test__clzsi2(i32 noundef 520093696, i32 noundef 3) #2
  %tobool122 = icmp ne i32 %call121, 0
  br i1 %tobool122, label %if.then123, label %if.end124

if.then123:                                       ; preds = %if.end120
  store i32 1, ptr %retval, align 4
  br label %return

if.end124:                                        ; preds = %if.end120
  %call125 = call i32 @test__clzsi2(i32 noundef 536870912, i32 noundef 2) #2
  %tobool126 = icmp ne i32 %call125, 0
  br i1 %tobool126, label %if.then127, label %if.end128

if.then127:                                       ; preds = %if.end124
  store i32 1, ptr %retval, align 4
  br label %return

if.end128:                                        ; preds = %if.end124
  %call129 = call i32 @test__clzsi2(i32 noundef 553648128, i32 noundef 2) #2
  %tobool130 = icmp ne i32 %call129, 0
  br i1 %tobool130, label %if.then131, label %if.end132

if.then131:                                       ; preds = %if.end128
  store i32 1, ptr %retval, align 4
  br label %return

if.end132:                                        ; preds = %if.end128
  %call133 = call i32 @test__clzsi2(i32 noundef 570425344, i32 noundef 2) #2
  %tobool134 = icmp ne i32 %call133, 0
  br i1 %tobool134, label %if.then135, label %if.end136

if.then135:                                       ; preds = %if.end132
  store i32 1, ptr %retval, align 4
  br label %return

if.end136:                                        ; preds = %if.end132
  %call137 = call i32 @test__clzsi2(i32 noundef 587202560, i32 noundef 2) #2
  %tobool138 = icmp ne i32 %call137, 0
  br i1 %tobool138, label %if.then139, label %if.end140

if.then139:                                       ; preds = %if.end136
  store i32 1, ptr %retval, align 4
  br label %return

if.end140:                                        ; preds = %if.end136
  %call141 = call i32 @test__clzsi2(i32 noundef 603979776, i32 noundef 2) #2
  %tobool142 = icmp ne i32 %call141, 0
  br i1 %tobool142, label %if.then143, label %if.end144

if.then143:                                       ; preds = %if.end140
  store i32 1, ptr %retval, align 4
  br label %return

if.end144:                                        ; preds = %if.end140
  %call145 = call i32 @test__clzsi2(i32 noundef 620756992, i32 noundef 2) #2
  %tobool146 = icmp ne i32 %call145, 0
  br i1 %tobool146, label %if.then147, label %if.end148

if.then147:                                       ; preds = %if.end144
  store i32 1, ptr %retval, align 4
  br label %return

if.end148:                                        ; preds = %if.end144
  %call149 = call i32 @test__clzsi2(i32 noundef 637534208, i32 noundef 2) #2
  %tobool150 = icmp ne i32 %call149, 0
  br i1 %tobool150, label %if.then151, label %if.end152

if.then151:                                       ; preds = %if.end148
  store i32 1, ptr %retval, align 4
  br label %return

if.end152:                                        ; preds = %if.end148
  %call153 = call i32 @test__clzsi2(i32 noundef 654311424, i32 noundef 2) #2
  %tobool154 = icmp ne i32 %call153, 0
  br i1 %tobool154, label %if.then155, label %if.end156

if.then155:                                       ; preds = %if.end152
  store i32 1, ptr %retval, align 4
  br label %return

if.end156:                                        ; preds = %if.end152
  %call157 = call i32 @test__clzsi2(i32 noundef 671088640, i32 noundef 2) #2
  %tobool158 = icmp ne i32 %call157, 0
  br i1 %tobool158, label %if.then159, label %if.end160

if.then159:                                       ; preds = %if.end156
  store i32 1, ptr %retval, align 4
  br label %return

if.end160:                                        ; preds = %if.end156
  %call161 = call i32 @test__clzsi2(i32 noundef 687865856, i32 noundef 2) #2
  %tobool162 = icmp ne i32 %call161, 0
  br i1 %tobool162, label %if.then163, label %if.end164

if.then163:                                       ; preds = %if.end160
  store i32 1, ptr %retval, align 4
  br label %return

if.end164:                                        ; preds = %if.end160
  %call165 = call i32 @test__clzsi2(i32 noundef 704643072, i32 noundef 2) #2
  %tobool166 = icmp ne i32 %call165, 0
  br i1 %tobool166, label %if.then167, label %if.end168

if.then167:                                       ; preds = %if.end164
  store i32 1, ptr %retval, align 4
  br label %return

if.end168:                                        ; preds = %if.end164
  %call169 = call i32 @test__clzsi2(i32 noundef 721420288, i32 noundef 2) #2
  %tobool170 = icmp ne i32 %call169, 0
  br i1 %tobool170, label %if.then171, label %if.end172

if.then171:                                       ; preds = %if.end168
  store i32 1, ptr %retval, align 4
  br label %return

if.end172:                                        ; preds = %if.end168
  %call173 = call i32 @test__clzsi2(i32 noundef 738197504, i32 noundef 2) #2
  %tobool174 = icmp ne i32 %call173, 0
  br i1 %tobool174, label %if.then175, label %if.end176

if.then175:                                       ; preds = %if.end172
  store i32 1, ptr %retval, align 4
  br label %return

if.end176:                                        ; preds = %if.end172
  %call177 = call i32 @test__clzsi2(i32 noundef 754974720, i32 noundef 2) #2
  %tobool178 = icmp ne i32 %call177, 0
  br i1 %tobool178, label %if.then179, label %if.end180

if.then179:                                       ; preds = %if.end176
  store i32 1, ptr %retval, align 4
  br label %return

if.end180:                                        ; preds = %if.end176
  %call181 = call i32 @test__clzsi2(i32 noundef 771751936, i32 noundef 2) #2
  %tobool182 = icmp ne i32 %call181, 0
  br i1 %tobool182, label %if.then183, label %if.end184

if.then183:                                       ; preds = %if.end180
  store i32 1, ptr %retval, align 4
  br label %return

if.end184:                                        ; preds = %if.end180
  %call185 = call i32 @test__clzsi2(i32 noundef 788529152, i32 noundef 2) #2
  %tobool186 = icmp ne i32 %call185, 0
  br i1 %tobool186, label %if.then187, label %if.end188

if.then187:                                       ; preds = %if.end184
  store i32 1, ptr %retval, align 4
  br label %return

if.end188:                                        ; preds = %if.end184
  %call189 = call i32 @test__clzsi2(i32 noundef 805306368, i32 noundef 2) #2
  %tobool190 = icmp ne i32 %call189, 0
  br i1 %tobool190, label %if.then191, label %if.end192

if.then191:                                       ; preds = %if.end188
  store i32 1, ptr %retval, align 4
  br label %return

if.end192:                                        ; preds = %if.end188
  %call193 = call i32 @test__clzsi2(i32 noundef 822083584, i32 noundef 2) #2
  %tobool194 = icmp ne i32 %call193, 0
  br i1 %tobool194, label %if.then195, label %if.end196

if.then195:                                       ; preds = %if.end192
  store i32 1, ptr %retval, align 4
  br label %return

if.end196:                                        ; preds = %if.end192
  %call197 = call i32 @test__clzsi2(i32 noundef 838860800, i32 noundef 2) #2
  %tobool198 = icmp ne i32 %call197, 0
  br i1 %tobool198, label %if.then199, label %if.end200

if.then199:                                       ; preds = %if.end196
  store i32 1, ptr %retval, align 4
  br label %return

if.end200:                                        ; preds = %if.end196
  %call201 = call i32 @test__clzsi2(i32 noundef 855638016, i32 noundef 2) #2
  %tobool202 = icmp ne i32 %call201, 0
  br i1 %tobool202, label %if.then203, label %if.end204

if.then203:                                       ; preds = %if.end200
  store i32 1, ptr %retval, align 4
  br label %return

if.end204:                                        ; preds = %if.end200
  %call205 = call i32 @test__clzsi2(i32 noundef 872415232, i32 noundef 2) #2
  %tobool206 = icmp ne i32 %call205, 0
  br i1 %tobool206, label %if.then207, label %if.end208

if.then207:                                       ; preds = %if.end204
  store i32 1, ptr %retval, align 4
  br label %return

if.end208:                                        ; preds = %if.end204
  %call209 = call i32 @test__clzsi2(i32 noundef 889192448, i32 noundef 2) #2
  %tobool210 = icmp ne i32 %call209, 0
  br i1 %tobool210, label %if.then211, label %if.end212

if.then211:                                       ; preds = %if.end208
  store i32 1, ptr %retval, align 4
  br label %return

if.end212:                                        ; preds = %if.end208
  %call213 = call i32 @test__clzsi2(i32 noundef 905969664, i32 noundef 2) #2
  %tobool214 = icmp ne i32 %call213, 0
  br i1 %tobool214, label %if.then215, label %if.end216

if.then215:                                       ; preds = %if.end212
  store i32 1, ptr %retval, align 4
  br label %return

if.end216:                                        ; preds = %if.end212
  %call217 = call i32 @test__clzsi2(i32 noundef 922746880, i32 noundef 2) #2
  %tobool218 = icmp ne i32 %call217, 0
  br i1 %tobool218, label %if.then219, label %if.end220

if.then219:                                       ; preds = %if.end216
  store i32 1, ptr %retval, align 4
  br label %return

if.end220:                                        ; preds = %if.end216
  %call221 = call i32 @test__clzsi2(i32 noundef 939524096, i32 noundef 2) #2
  %tobool222 = icmp ne i32 %call221, 0
  br i1 %tobool222, label %if.then223, label %if.end224

if.then223:                                       ; preds = %if.end220
  store i32 1, ptr %retval, align 4
  br label %return

if.end224:                                        ; preds = %if.end220
  %call225 = call i32 @test__clzsi2(i32 noundef 956301312, i32 noundef 2) #2
  %tobool226 = icmp ne i32 %call225, 0
  br i1 %tobool226, label %if.then227, label %if.end228

if.then227:                                       ; preds = %if.end224
  store i32 1, ptr %retval, align 4
  br label %return

if.end228:                                        ; preds = %if.end224
  %call229 = call i32 @test__clzsi2(i32 noundef 973078528, i32 noundef 2) #2
  %tobool230 = icmp ne i32 %call229, 0
  br i1 %tobool230, label %if.then231, label %if.end232

if.then231:                                       ; preds = %if.end228
  store i32 1, ptr %retval, align 4
  br label %return

if.end232:                                        ; preds = %if.end228
  %call233 = call i32 @test__clzsi2(i32 noundef 989855744, i32 noundef 2) #2
  %tobool234 = icmp ne i32 %call233, 0
  br i1 %tobool234, label %if.then235, label %if.end236

if.then235:                                       ; preds = %if.end232
  store i32 1, ptr %retval, align 4
  br label %return

if.end236:                                        ; preds = %if.end232
  %call237 = call i32 @test__clzsi2(i32 noundef 1006632960, i32 noundef 2) #2
  %tobool238 = icmp ne i32 %call237, 0
  br i1 %tobool238, label %if.then239, label %if.end240

if.then239:                                       ; preds = %if.end236
  store i32 1, ptr %retval, align 4
  br label %return

if.end240:                                        ; preds = %if.end236
  %call241 = call i32 @test__clzsi2(i32 noundef 1023410176, i32 noundef 2) #2
  %tobool242 = icmp ne i32 %call241, 0
  br i1 %tobool242, label %if.then243, label %if.end244

if.then243:                                       ; preds = %if.end240
  store i32 1, ptr %retval, align 4
  br label %return

if.end244:                                        ; preds = %if.end240
  %call245 = call i32 @test__clzsi2(i32 noundef 1040187392, i32 noundef 2) #2
  %tobool246 = icmp ne i32 %call245, 0
  br i1 %tobool246, label %if.then247, label %if.end248

if.then247:                                       ; preds = %if.end244
  store i32 1, ptr %retval, align 4
  br label %return

if.end248:                                        ; preds = %if.end244
  %call249 = call i32 @test__clzsi2(i32 noundef 1056964608, i32 noundef 2) #2
  %tobool250 = icmp ne i32 %call249, 0
  br i1 %tobool250, label %if.then251, label %if.end252

if.then251:                                       ; preds = %if.end248
  store i32 1, ptr %retval, align 4
  br label %return

if.end252:                                        ; preds = %if.end248
  %call253 = call i32 @test__clzsi2(i32 noundef 1073741824, i32 noundef 1) #2
  %tobool254 = icmp ne i32 %call253, 0
  br i1 %tobool254, label %if.then255, label %if.end256

if.then255:                                       ; preds = %if.end252
  store i32 1, ptr %retval, align 4
  br label %return

if.end256:                                        ; preds = %if.end252
  %call257 = call i32 @test__clzsi2(i32 noundef 1090519040, i32 noundef 1) #2
  %tobool258 = icmp ne i32 %call257, 0
  br i1 %tobool258, label %if.then259, label %if.end260

if.then259:                                       ; preds = %if.end256
  store i32 1, ptr %retval, align 4
  br label %return

if.end260:                                        ; preds = %if.end256
  %call261 = call i32 @test__clzsi2(i32 noundef 1107296256, i32 noundef 1) #2
  %tobool262 = icmp ne i32 %call261, 0
  br i1 %tobool262, label %if.then263, label %if.end264

if.then263:                                       ; preds = %if.end260
  store i32 1, ptr %retval, align 4
  br label %return

if.end264:                                        ; preds = %if.end260
  %call265 = call i32 @test__clzsi2(i32 noundef 1124073472, i32 noundef 1) #2
  %tobool266 = icmp ne i32 %call265, 0
  br i1 %tobool266, label %if.then267, label %if.end268

if.then267:                                       ; preds = %if.end264
  store i32 1, ptr %retval, align 4
  br label %return

if.end268:                                        ; preds = %if.end264
  %call269 = call i32 @test__clzsi2(i32 noundef 1140850688, i32 noundef 1) #2
  %tobool270 = icmp ne i32 %call269, 0
  br i1 %tobool270, label %if.then271, label %if.end272

if.then271:                                       ; preds = %if.end268
  store i32 1, ptr %retval, align 4
  br label %return

if.end272:                                        ; preds = %if.end268
  %call273 = call i32 @test__clzsi2(i32 noundef 1157627904, i32 noundef 1) #2
  %tobool274 = icmp ne i32 %call273, 0
  br i1 %tobool274, label %if.then275, label %if.end276

if.then275:                                       ; preds = %if.end272
  store i32 1, ptr %retval, align 4
  br label %return

if.end276:                                        ; preds = %if.end272
  %call277 = call i32 @test__clzsi2(i32 noundef 1174405120, i32 noundef 1) #2
  %tobool278 = icmp ne i32 %call277, 0
  br i1 %tobool278, label %if.then279, label %if.end280

if.then279:                                       ; preds = %if.end276
  store i32 1, ptr %retval, align 4
  br label %return

if.end280:                                        ; preds = %if.end276
  %call281 = call i32 @test__clzsi2(i32 noundef 1191182336, i32 noundef 1) #2
  %tobool282 = icmp ne i32 %call281, 0
  br i1 %tobool282, label %if.then283, label %if.end284

if.then283:                                       ; preds = %if.end280
  store i32 1, ptr %retval, align 4
  br label %return

if.end284:                                        ; preds = %if.end280
  %call285 = call i32 @test__clzsi2(i32 noundef 1207959552, i32 noundef 1) #2
  %tobool286 = icmp ne i32 %call285, 0
  br i1 %tobool286, label %if.then287, label %if.end288

if.then287:                                       ; preds = %if.end284
  store i32 1, ptr %retval, align 4
  br label %return

if.end288:                                        ; preds = %if.end284
  %call289 = call i32 @test__clzsi2(i32 noundef 1224736768, i32 noundef 1) #2
  %tobool290 = icmp ne i32 %call289, 0
  br i1 %tobool290, label %if.then291, label %if.end292

if.then291:                                       ; preds = %if.end288
  store i32 1, ptr %retval, align 4
  br label %return

if.end292:                                        ; preds = %if.end288
  %call293 = call i32 @test__clzsi2(i32 noundef 1241513984, i32 noundef 1) #2
  %tobool294 = icmp ne i32 %call293, 0
  br i1 %tobool294, label %if.then295, label %if.end296

if.then295:                                       ; preds = %if.end292
  store i32 1, ptr %retval, align 4
  br label %return

if.end296:                                        ; preds = %if.end292
  %call297 = call i32 @test__clzsi2(i32 noundef 1258291200, i32 noundef 1) #2
  %tobool298 = icmp ne i32 %call297, 0
  br i1 %tobool298, label %if.then299, label %if.end300

if.then299:                                       ; preds = %if.end296
  store i32 1, ptr %retval, align 4
  br label %return

if.end300:                                        ; preds = %if.end296
  %call301 = call i32 @test__clzsi2(i32 noundef 1275068416, i32 noundef 1) #2
  %tobool302 = icmp ne i32 %call301, 0
  br i1 %tobool302, label %if.then303, label %if.end304

if.then303:                                       ; preds = %if.end300
  store i32 1, ptr %retval, align 4
  br label %return

if.end304:                                        ; preds = %if.end300
  %call305 = call i32 @test__clzsi2(i32 noundef 1291845632, i32 noundef 1) #2
  %tobool306 = icmp ne i32 %call305, 0
  br i1 %tobool306, label %if.then307, label %if.end308

if.then307:                                       ; preds = %if.end304
  store i32 1, ptr %retval, align 4
  br label %return

if.end308:                                        ; preds = %if.end304
  %call309 = call i32 @test__clzsi2(i32 noundef 1308622848, i32 noundef 1) #2
  %tobool310 = icmp ne i32 %call309, 0
  br i1 %tobool310, label %if.then311, label %if.end312

if.then311:                                       ; preds = %if.end308
  store i32 1, ptr %retval, align 4
  br label %return

if.end312:                                        ; preds = %if.end308
  %call313 = call i32 @test__clzsi2(i32 noundef 1325400064, i32 noundef 1) #2
  %tobool314 = icmp ne i32 %call313, 0
  br i1 %tobool314, label %if.then315, label %if.end316

if.then315:                                       ; preds = %if.end312
  store i32 1, ptr %retval, align 4
  br label %return

if.end316:                                        ; preds = %if.end312
  %call317 = call i32 @test__clzsi2(i32 noundef 1342177280, i32 noundef 1) #2
  %tobool318 = icmp ne i32 %call317, 0
  br i1 %tobool318, label %if.then319, label %if.end320

if.then319:                                       ; preds = %if.end316
  store i32 1, ptr %retval, align 4
  br label %return

if.end320:                                        ; preds = %if.end316
  %call321 = call i32 @test__clzsi2(i32 noundef 1358954496, i32 noundef 1) #2
  %tobool322 = icmp ne i32 %call321, 0
  br i1 %tobool322, label %if.then323, label %if.end324

if.then323:                                       ; preds = %if.end320
  store i32 1, ptr %retval, align 4
  br label %return

if.end324:                                        ; preds = %if.end320
  %call325 = call i32 @test__clzsi2(i32 noundef 1375731712, i32 noundef 1) #2
  %tobool326 = icmp ne i32 %call325, 0
  br i1 %tobool326, label %if.then327, label %if.end328

if.then327:                                       ; preds = %if.end324
  store i32 1, ptr %retval, align 4
  br label %return

if.end328:                                        ; preds = %if.end324
  %call329 = call i32 @test__clzsi2(i32 noundef 1392508928, i32 noundef 1) #2
  %tobool330 = icmp ne i32 %call329, 0
  br i1 %tobool330, label %if.then331, label %if.end332

if.then331:                                       ; preds = %if.end328
  store i32 1, ptr %retval, align 4
  br label %return

if.end332:                                        ; preds = %if.end328
  %call333 = call i32 @test__clzsi2(i32 noundef 1409286144, i32 noundef 1) #2
  %tobool334 = icmp ne i32 %call333, 0
  br i1 %tobool334, label %if.then335, label %if.end336

if.then335:                                       ; preds = %if.end332
  store i32 1, ptr %retval, align 4
  br label %return

if.end336:                                        ; preds = %if.end332
  %call337 = call i32 @test__clzsi2(i32 noundef 1426063360, i32 noundef 1) #2
  %tobool338 = icmp ne i32 %call337, 0
  br i1 %tobool338, label %if.then339, label %if.end340

if.then339:                                       ; preds = %if.end336
  store i32 1, ptr %retval, align 4
  br label %return

if.end340:                                        ; preds = %if.end336
  %call341 = call i32 @test__clzsi2(i32 noundef 1442840576, i32 noundef 1) #2
  %tobool342 = icmp ne i32 %call341, 0
  br i1 %tobool342, label %if.then343, label %if.end344

if.then343:                                       ; preds = %if.end340
  store i32 1, ptr %retval, align 4
  br label %return

if.end344:                                        ; preds = %if.end340
  %call345 = call i32 @test__clzsi2(i32 noundef 1459617792, i32 noundef 1) #2
  %tobool346 = icmp ne i32 %call345, 0
  br i1 %tobool346, label %if.then347, label %if.end348

if.then347:                                       ; preds = %if.end344
  store i32 1, ptr %retval, align 4
  br label %return

if.end348:                                        ; preds = %if.end344
  %call349 = call i32 @test__clzsi2(i32 noundef 1476395008, i32 noundef 1) #2
  %tobool350 = icmp ne i32 %call349, 0
  br i1 %tobool350, label %if.then351, label %if.end352

if.then351:                                       ; preds = %if.end348
  store i32 1, ptr %retval, align 4
  br label %return

if.end352:                                        ; preds = %if.end348
  %call353 = call i32 @test__clzsi2(i32 noundef 1493172224, i32 noundef 1) #2
  %tobool354 = icmp ne i32 %call353, 0
  br i1 %tobool354, label %if.then355, label %if.end356

if.then355:                                       ; preds = %if.end352
  store i32 1, ptr %retval, align 4
  br label %return

if.end356:                                        ; preds = %if.end352
  %call357 = call i32 @test__clzsi2(i32 noundef 1509949440, i32 noundef 1) #2
  %tobool358 = icmp ne i32 %call357, 0
  br i1 %tobool358, label %if.then359, label %if.end360

if.then359:                                       ; preds = %if.end356
  store i32 1, ptr %retval, align 4
  br label %return

if.end360:                                        ; preds = %if.end356
  %call361 = call i32 @test__clzsi2(i32 noundef 1526726656, i32 noundef 1) #2
  %tobool362 = icmp ne i32 %call361, 0
  br i1 %tobool362, label %if.then363, label %if.end364

if.then363:                                       ; preds = %if.end360
  store i32 1, ptr %retval, align 4
  br label %return

if.end364:                                        ; preds = %if.end360
  %call365 = call i32 @test__clzsi2(i32 noundef 1543503872, i32 noundef 1) #2
  %tobool366 = icmp ne i32 %call365, 0
  br i1 %tobool366, label %if.then367, label %if.end368

if.then367:                                       ; preds = %if.end364
  store i32 1, ptr %retval, align 4
  br label %return

if.end368:                                        ; preds = %if.end364
  %call369 = call i32 @test__clzsi2(i32 noundef 1560281088, i32 noundef 1) #2
  %tobool370 = icmp ne i32 %call369, 0
  br i1 %tobool370, label %if.then371, label %if.end372

if.then371:                                       ; preds = %if.end368
  store i32 1, ptr %retval, align 4
  br label %return

if.end372:                                        ; preds = %if.end368
  %call373 = call i32 @test__clzsi2(i32 noundef 1577058304, i32 noundef 1) #2
  %tobool374 = icmp ne i32 %call373, 0
  br i1 %tobool374, label %if.then375, label %if.end376

if.then375:                                       ; preds = %if.end372
  store i32 1, ptr %retval, align 4
  br label %return

if.end376:                                        ; preds = %if.end372
  %call377 = call i32 @test__clzsi2(i32 noundef 1593835520, i32 noundef 1) #2
  %tobool378 = icmp ne i32 %call377, 0
  br i1 %tobool378, label %if.then379, label %if.end380

if.then379:                                       ; preds = %if.end376
  store i32 1, ptr %retval, align 4
  br label %return

if.end380:                                        ; preds = %if.end376
  %call381 = call i32 @test__clzsi2(i32 noundef 1610612736, i32 noundef 1) #2
  %tobool382 = icmp ne i32 %call381, 0
  br i1 %tobool382, label %if.then383, label %if.end384

if.then383:                                       ; preds = %if.end380
  store i32 1, ptr %retval, align 4
  br label %return

if.end384:                                        ; preds = %if.end380
  %call385 = call i32 @test__clzsi2(i32 noundef 1627389952, i32 noundef 1) #2
  %tobool386 = icmp ne i32 %call385, 0
  br i1 %tobool386, label %if.then387, label %if.end388

if.then387:                                       ; preds = %if.end384
  store i32 1, ptr %retval, align 4
  br label %return

if.end388:                                        ; preds = %if.end384
  %call389 = call i32 @test__clzsi2(i32 noundef 1644167168, i32 noundef 1) #2
  %tobool390 = icmp ne i32 %call389, 0
  br i1 %tobool390, label %if.then391, label %if.end392

if.then391:                                       ; preds = %if.end388
  store i32 1, ptr %retval, align 4
  br label %return

if.end392:                                        ; preds = %if.end388
  %call393 = call i32 @test__clzsi2(i32 noundef 1660944384, i32 noundef 1) #2
  %tobool394 = icmp ne i32 %call393, 0
  br i1 %tobool394, label %if.then395, label %if.end396

if.then395:                                       ; preds = %if.end392
  store i32 1, ptr %retval, align 4
  br label %return

if.end396:                                        ; preds = %if.end392
  %call397 = call i32 @test__clzsi2(i32 noundef 1677721600, i32 noundef 1) #2
  %tobool398 = icmp ne i32 %call397, 0
  br i1 %tobool398, label %if.then399, label %if.end400

if.then399:                                       ; preds = %if.end396
  store i32 1, ptr %retval, align 4
  br label %return

if.end400:                                        ; preds = %if.end396
  %call401 = call i32 @test__clzsi2(i32 noundef 1694498816, i32 noundef 1) #2
  %tobool402 = icmp ne i32 %call401, 0
  br i1 %tobool402, label %if.then403, label %if.end404

if.then403:                                       ; preds = %if.end400
  store i32 1, ptr %retval, align 4
  br label %return

if.end404:                                        ; preds = %if.end400
  %call405 = call i32 @test__clzsi2(i32 noundef 1711276032, i32 noundef 1) #2
  %tobool406 = icmp ne i32 %call405, 0
  br i1 %tobool406, label %if.then407, label %if.end408

if.then407:                                       ; preds = %if.end404
  store i32 1, ptr %retval, align 4
  br label %return

if.end408:                                        ; preds = %if.end404
  %call409 = call i32 @test__clzsi2(i32 noundef 1728053248, i32 noundef 1) #2
  %tobool410 = icmp ne i32 %call409, 0
  br i1 %tobool410, label %if.then411, label %if.end412

if.then411:                                       ; preds = %if.end408
  store i32 1, ptr %retval, align 4
  br label %return

if.end412:                                        ; preds = %if.end408
  %call413 = call i32 @test__clzsi2(i32 noundef 1744830464, i32 noundef 1) #2
  %tobool414 = icmp ne i32 %call413, 0
  br i1 %tobool414, label %if.then415, label %if.end416

if.then415:                                       ; preds = %if.end412
  store i32 1, ptr %retval, align 4
  br label %return

if.end416:                                        ; preds = %if.end412
  %call417 = call i32 @test__clzsi2(i32 noundef 1761607680, i32 noundef 1) #2
  %tobool418 = icmp ne i32 %call417, 0
  br i1 %tobool418, label %if.then419, label %if.end420

if.then419:                                       ; preds = %if.end416
  store i32 1, ptr %retval, align 4
  br label %return

if.end420:                                        ; preds = %if.end416
  %call421 = call i32 @test__clzsi2(i32 noundef 1778384896, i32 noundef 1) #2
  %tobool422 = icmp ne i32 %call421, 0
  br i1 %tobool422, label %if.then423, label %if.end424

if.then423:                                       ; preds = %if.end420
  store i32 1, ptr %retval, align 4
  br label %return

if.end424:                                        ; preds = %if.end420
  %call425 = call i32 @test__clzsi2(i32 noundef 1795162112, i32 noundef 1) #2
  %tobool426 = icmp ne i32 %call425, 0
  br i1 %tobool426, label %if.then427, label %if.end428

if.then427:                                       ; preds = %if.end424
  store i32 1, ptr %retval, align 4
  br label %return

if.end428:                                        ; preds = %if.end424
  %call429 = call i32 @test__clzsi2(i32 noundef 1811939328, i32 noundef 1) #2
  %tobool430 = icmp ne i32 %call429, 0
  br i1 %tobool430, label %if.then431, label %if.end432

if.then431:                                       ; preds = %if.end428
  store i32 1, ptr %retval, align 4
  br label %return

if.end432:                                        ; preds = %if.end428
  %call433 = call i32 @test__clzsi2(i32 noundef 1828716544, i32 noundef 1) #2
  %tobool434 = icmp ne i32 %call433, 0
  br i1 %tobool434, label %if.then435, label %if.end436

if.then435:                                       ; preds = %if.end432
  store i32 1, ptr %retval, align 4
  br label %return

if.end436:                                        ; preds = %if.end432
  %call437 = call i32 @test__clzsi2(i32 noundef 1845493760, i32 noundef 1) #2
  %tobool438 = icmp ne i32 %call437, 0
  br i1 %tobool438, label %if.then439, label %if.end440

if.then439:                                       ; preds = %if.end436
  store i32 1, ptr %retval, align 4
  br label %return

if.end440:                                        ; preds = %if.end436
  %call441 = call i32 @test__clzsi2(i32 noundef 1862270976, i32 noundef 1) #2
  %tobool442 = icmp ne i32 %call441, 0
  br i1 %tobool442, label %if.then443, label %if.end444

if.then443:                                       ; preds = %if.end440
  store i32 1, ptr %retval, align 4
  br label %return

if.end444:                                        ; preds = %if.end440
  %call445 = call i32 @test__clzsi2(i32 noundef 1879048192, i32 noundef 1) #2
  %tobool446 = icmp ne i32 %call445, 0
  br i1 %tobool446, label %if.then447, label %if.end448

if.then447:                                       ; preds = %if.end444
  store i32 1, ptr %retval, align 4
  br label %return

if.end448:                                        ; preds = %if.end444
  %call449 = call i32 @test__clzsi2(i32 noundef 1895825408, i32 noundef 1) #2
  %tobool450 = icmp ne i32 %call449, 0
  br i1 %tobool450, label %if.then451, label %if.end452

if.then451:                                       ; preds = %if.end448
  store i32 1, ptr %retval, align 4
  br label %return

if.end452:                                        ; preds = %if.end448
  %call453 = call i32 @test__clzsi2(i32 noundef 1912602624, i32 noundef 1) #2
  %tobool454 = icmp ne i32 %call453, 0
  br i1 %tobool454, label %if.then455, label %if.end456

if.then455:                                       ; preds = %if.end452
  store i32 1, ptr %retval, align 4
  br label %return

if.end456:                                        ; preds = %if.end452
  %call457 = call i32 @test__clzsi2(i32 noundef 1929379840, i32 noundef 1) #2
  %tobool458 = icmp ne i32 %call457, 0
  br i1 %tobool458, label %if.then459, label %if.end460

if.then459:                                       ; preds = %if.end456
  store i32 1, ptr %retval, align 4
  br label %return

if.end460:                                        ; preds = %if.end456
  %call461 = call i32 @test__clzsi2(i32 noundef 1946157056, i32 noundef 1) #2
  %tobool462 = icmp ne i32 %call461, 0
  br i1 %tobool462, label %if.then463, label %if.end464

if.then463:                                       ; preds = %if.end460
  store i32 1, ptr %retval, align 4
  br label %return

if.end464:                                        ; preds = %if.end460
  %call465 = call i32 @test__clzsi2(i32 noundef 1962934272, i32 noundef 1) #2
  %tobool466 = icmp ne i32 %call465, 0
  br i1 %tobool466, label %if.then467, label %if.end468

if.then467:                                       ; preds = %if.end464
  store i32 1, ptr %retval, align 4
  br label %return

if.end468:                                        ; preds = %if.end464
  %call469 = call i32 @test__clzsi2(i32 noundef 1979711488, i32 noundef 1) #2
  %tobool470 = icmp ne i32 %call469, 0
  br i1 %tobool470, label %if.then471, label %if.end472

if.then471:                                       ; preds = %if.end468
  store i32 1, ptr %retval, align 4
  br label %return

if.end472:                                        ; preds = %if.end468
  %call473 = call i32 @test__clzsi2(i32 noundef 1996488704, i32 noundef 1) #2
  %tobool474 = icmp ne i32 %call473, 0
  br i1 %tobool474, label %if.then475, label %if.end476

if.then475:                                       ; preds = %if.end472
  store i32 1, ptr %retval, align 4
  br label %return

if.end476:                                        ; preds = %if.end472
  %call477 = call i32 @test__clzsi2(i32 noundef 2013265920, i32 noundef 1) #2
  %tobool478 = icmp ne i32 %call477, 0
  br i1 %tobool478, label %if.then479, label %if.end480

if.then479:                                       ; preds = %if.end476
  store i32 1, ptr %retval, align 4
  br label %return

if.end480:                                        ; preds = %if.end476
  %call481 = call i32 @test__clzsi2(i32 noundef 2030043136, i32 noundef 1) #2
  %tobool482 = icmp ne i32 %call481, 0
  br i1 %tobool482, label %if.then483, label %if.end484

if.then483:                                       ; preds = %if.end480
  store i32 1, ptr %retval, align 4
  br label %return

if.end484:                                        ; preds = %if.end480
  %call485 = call i32 @test__clzsi2(i32 noundef 2046820352, i32 noundef 1) #2
  %tobool486 = icmp ne i32 %call485, 0
  br i1 %tobool486, label %if.then487, label %if.end488

if.then487:                                       ; preds = %if.end484
  store i32 1, ptr %retval, align 4
  br label %return

if.end488:                                        ; preds = %if.end484
  %call489 = call i32 @test__clzsi2(i32 noundef 2063597568, i32 noundef 1) #2
  %tobool490 = icmp ne i32 %call489, 0
  br i1 %tobool490, label %if.then491, label %if.end492

if.then491:                                       ; preds = %if.end488
  store i32 1, ptr %retval, align 4
  br label %return

if.end492:                                        ; preds = %if.end488
  %call493 = call i32 @test__clzsi2(i32 noundef 2080374784, i32 noundef 1) #2
  %tobool494 = icmp ne i32 %call493, 0
  br i1 %tobool494, label %if.then495, label %if.end496

if.then495:                                       ; preds = %if.end492
  store i32 1, ptr %retval, align 4
  br label %return

if.end496:                                        ; preds = %if.end492
  %call497 = call i32 @test__clzsi2(i32 noundef 2097152000, i32 noundef 1) #2
  %tobool498 = icmp ne i32 %call497, 0
  br i1 %tobool498, label %if.then499, label %if.end500

if.then499:                                       ; preds = %if.end496
  store i32 1, ptr %retval, align 4
  br label %return

if.end500:                                        ; preds = %if.end496
  %call501 = call i32 @test__clzsi2(i32 noundef 2113929216, i32 noundef 1) #2
  %tobool502 = icmp ne i32 %call501, 0
  br i1 %tobool502, label %if.then503, label %if.end504

if.then503:                                       ; preds = %if.end500
  store i32 1, ptr %retval, align 4
  br label %return

if.end504:                                        ; preds = %if.end500
  %call505 = call i32 @test__clzsi2(i32 noundef 2130706432, i32 noundef 1) #2
  %tobool506 = icmp ne i32 %call505, 0
  br i1 %tobool506, label %if.then507, label %if.end508

if.then507:                                       ; preds = %if.end504
  store i32 1, ptr %retval, align 4
  br label %return

if.end508:                                        ; preds = %if.end504
  %call509 = call i32 @test__clzsi2(i32 noundef -2147483648, i32 noundef 0) #2
  %tobool510 = icmp ne i32 %call509, 0
  br i1 %tobool510, label %if.then511, label %if.end512

if.then511:                                       ; preds = %if.end508
  store i32 1, ptr %retval, align 4
  br label %return

if.end512:                                        ; preds = %if.end508
  %call513 = call i32 @test__clzsi2(i32 noundef -2130706432, i32 noundef 0) #2
  %tobool514 = icmp ne i32 %call513, 0
  br i1 %tobool514, label %if.then515, label %if.end516

if.then515:                                       ; preds = %if.end512
  store i32 1, ptr %retval, align 4
  br label %return

if.end516:                                        ; preds = %if.end512
  %call517 = call i32 @test__clzsi2(i32 noundef -2113929216, i32 noundef 0) #2
  %tobool518 = icmp ne i32 %call517, 0
  br i1 %tobool518, label %if.then519, label %if.end520

if.then519:                                       ; preds = %if.end516
  store i32 1, ptr %retval, align 4
  br label %return

if.end520:                                        ; preds = %if.end516
  %call521 = call i32 @test__clzsi2(i32 noundef -2097152000, i32 noundef 0) #2
  %tobool522 = icmp ne i32 %call521, 0
  br i1 %tobool522, label %if.then523, label %if.end524

if.then523:                                       ; preds = %if.end520
  store i32 1, ptr %retval, align 4
  br label %return

if.end524:                                        ; preds = %if.end520
  %call525 = call i32 @test__clzsi2(i32 noundef -2080374784, i32 noundef 0) #2
  %tobool526 = icmp ne i32 %call525, 0
  br i1 %tobool526, label %if.then527, label %if.end528

if.then527:                                       ; preds = %if.end524
  store i32 1, ptr %retval, align 4
  br label %return

if.end528:                                        ; preds = %if.end524
  %call529 = call i32 @test__clzsi2(i32 noundef -2063597568, i32 noundef 0) #2
  %tobool530 = icmp ne i32 %call529, 0
  br i1 %tobool530, label %if.then531, label %if.end532

if.then531:                                       ; preds = %if.end528
  store i32 1, ptr %retval, align 4
  br label %return

if.end532:                                        ; preds = %if.end528
  %call533 = call i32 @test__clzsi2(i32 noundef -2046820352, i32 noundef 0) #2
  %tobool534 = icmp ne i32 %call533, 0
  br i1 %tobool534, label %if.then535, label %if.end536

if.then535:                                       ; preds = %if.end532
  store i32 1, ptr %retval, align 4
  br label %return

if.end536:                                        ; preds = %if.end532
  %call537 = call i32 @test__clzsi2(i32 noundef -2030043136, i32 noundef 0) #2
  %tobool538 = icmp ne i32 %call537, 0
  br i1 %tobool538, label %if.then539, label %if.end540

if.then539:                                       ; preds = %if.end536
  store i32 1, ptr %retval, align 4
  br label %return

if.end540:                                        ; preds = %if.end536
  %call541 = call i32 @test__clzsi2(i32 noundef -2013265920, i32 noundef 0) #2
  %tobool542 = icmp ne i32 %call541, 0
  br i1 %tobool542, label %if.then543, label %if.end544

if.then543:                                       ; preds = %if.end540
  store i32 1, ptr %retval, align 4
  br label %return

if.end544:                                        ; preds = %if.end540
  %call545 = call i32 @test__clzsi2(i32 noundef -1996488704, i32 noundef 0) #2
  %tobool546 = icmp ne i32 %call545, 0
  br i1 %tobool546, label %if.then547, label %if.end548

if.then547:                                       ; preds = %if.end544
  store i32 1, ptr %retval, align 4
  br label %return

if.end548:                                        ; preds = %if.end544
  %call549 = call i32 @test__clzsi2(i32 noundef -1979711488, i32 noundef 0) #2
  %tobool550 = icmp ne i32 %call549, 0
  br i1 %tobool550, label %if.then551, label %if.end552

if.then551:                                       ; preds = %if.end548
  store i32 1, ptr %retval, align 4
  br label %return

if.end552:                                        ; preds = %if.end548
  %call553 = call i32 @test__clzsi2(i32 noundef -1962934272, i32 noundef 0) #2
  %tobool554 = icmp ne i32 %call553, 0
  br i1 %tobool554, label %if.then555, label %if.end556

if.then555:                                       ; preds = %if.end552
  store i32 1, ptr %retval, align 4
  br label %return

if.end556:                                        ; preds = %if.end552
  %call557 = call i32 @test__clzsi2(i32 noundef -1946157056, i32 noundef 0) #2
  %tobool558 = icmp ne i32 %call557, 0
  br i1 %tobool558, label %if.then559, label %if.end560

if.then559:                                       ; preds = %if.end556
  store i32 1, ptr %retval, align 4
  br label %return

if.end560:                                        ; preds = %if.end556
  %call561 = call i32 @test__clzsi2(i32 noundef -1929379840, i32 noundef 0) #2
  %tobool562 = icmp ne i32 %call561, 0
  br i1 %tobool562, label %if.then563, label %if.end564

if.then563:                                       ; preds = %if.end560
  store i32 1, ptr %retval, align 4
  br label %return

if.end564:                                        ; preds = %if.end560
  %call565 = call i32 @test__clzsi2(i32 noundef -1912602624, i32 noundef 0) #2
  %tobool566 = icmp ne i32 %call565, 0
  br i1 %tobool566, label %if.then567, label %if.end568

if.then567:                                       ; preds = %if.end564
  store i32 1, ptr %retval, align 4
  br label %return

if.end568:                                        ; preds = %if.end564
  %call569 = call i32 @test__clzsi2(i32 noundef -1895825408, i32 noundef 0) #2
  %tobool570 = icmp ne i32 %call569, 0
  br i1 %tobool570, label %if.then571, label %if.end572

if.then571:                                       ; preds = %if.end568
  store i32 1, ptr %retval, align 4
  br label %return

if.end572:                                        ; preds = %if.end568
  %call573 = call i32 @test__clzsi2(i32 noundef -1879048192, i32 noundef 0) #2
  %tobool574 = icmp ne i32 %call573, 0
  br i1 %tobool574, label %if.then575, label %if.end576

if.then575:                                       ; preds = %if.end572
  store i32 1, ptr %retval, align 4
  br label %return

if.end576:                                        ; preds = %if.end572
  %call577 = call i32 @test__clzsi2(i32 noundef -1862270976, i32 noundef 0) #2
  %tobool578 = icmp ne i32 %call577, 0
  br i1 %tobool578, label %if.then579, label %if.end580

if.then579:                                       ; preds = %if.end576
  store i32 1, ptr %retval, align 4
  br label %return

if.end580:                                        ; preds = %if.end576
  %call581 = call i32 @test__clzsi2(i32 noundef -1845493760, i32 noundef 0) #2
  %tobool582 = icmp ne i32 %call581, 0
  br i1 %tobool582, label %if.then583, label %if.end584

if.then583:                                       ; preds = %if.end580
  store i32 1, ptr %retval, align 4
  br label %return

if.end584:                                        ; preds = %if.end580
  %call585 = call i32 @test__clzsi2(i32 noundef -1828716544, i32 noundef 0) #2
  %tobool586 = icmp ne i32 %call585, 0
  br i1 %tobool586, label %if.then587, label %if.end588

if.then587:                                       ; preds = %if.end584
  store i32 1, ptr %retval, align 4
  br label %return

if.end588:                                        ; preds = %if.end584
  %call589 = call i32 @test__clzsi2(i32 noundef -1811939328, i32 noundef 0) #2
  %tobool590 = icmp ne i32 %call589, 0
  br i1 %tobool590, label %if.then591, label %if.end592

if.then591:                                       ; preds = %if.end588
  store i32 1, ptr %retval, align 4
  br label %return

if.end592:                                        ; preds = %if.end588
  %call593 = call i32 @test__clzsi2(i32 noundef -1795162112, i32 noundef 0) #2
  %tobool594 = icmp ne i32 %call593, 0
  br i1 %tobool594, label %if.then595, label %if.end596

if.then595:                                       ; preds = %if.end592
  store i32 1, ptr %retval, align 4
  br label %return

if.end596:                                        ; preds = %if.end592
  %call597 = call i32 @test__clzsi2(i32 noundef -1778384896, i32 noundef 0) #2
  %tobool598 = icmp ne i32 %call597, 0
  br i1 %tobool598, label %if.then599, label %if.end600

if.then599:                                       ; preds = %if.end596
  store i32 1, ptr %retval, align 4
  br label %return

if.end600:                                        ; preds = %if.end596
  %call601 = call i32 @test__clzsi2(i32 noundef -1761607680, i32 noundef 0) #2
  %tobool602 = icmp ne i32 %call601, 0
  br i1 %tobool602, label %if.then603, label %if.end604

if.then603:                                       ; preds = %if.end600
  store i32 1, ptr %retval, align 4
  br label %return

if.end604:                                        ; preds = %if.end600
  %call605 = call i32 @test__clzsi2(i32 noundef -1744830464, i32 noundef 0) #2
  %tobool606 = icmp ne i32 %call605, 0
  br i1 %tobool606, label %if.then607, label %if.end608

if.then607:                                       ; preds = %if.end604
  store i32 1, ptr %retval, align 4
  br label %return

if.end608:                                        ; preds = %if.end604
  %call609 = call i32 @test__clzsi2(i32 noundef -1728053248, i32 noundef 0) #2
  %tobool610 = icmp ne i32 %call609, 0
  br i1 %tobool610, label %if.then611, label %if.end612

if.then611:                                       ; preds = %if.end608
  store i32 1, ptr %retval, align 4
  br label %return

if.end612:                                        ; preds = %if.end608
  %call613 = call i32 @test__clzsi2(i32 noundef -1711276032, i32 noundef 0) #2
  %tobool614 = icmp ne i32 %call613, 0
  br i1 %tobool614, label %if.then615, label %if.end616

if.then615:                                       ; preds = %if.end612
  store i32 1, ptr %retval, align 4
  br label %return

if.end616:                                        ; preds = %if.end612
  %call617 = call i32 @test__clzsi2(i32 noundef -1694498816, i32 noundef 0) #2
  %tobool618 = icmp ne i32 %call617, 0
  br i1 %tobool618, label %if.then619, label %if.end620

if.then619:                                       ; preds = %if.end616
  store i32 1, ptr %retval, align 4
  br label %return

if.end620:                                        ; preds = %if.end616
  %call621 = call i32 @test__clzsi2(i32 noundef -1677721600, i32 noundef 0) #2
  %tobool622 = icmp ne i32 %call621, 0
  br i1 %tobool622, label %if.then623, label %if.end624

if.then623:                                       ; preds = %if.end620
  store i32 1, ptr %retval, align 4
  br label %return

if.end624:                                        ; preds = %if.end620
  %call625 = call i32 @test__clzsi2(i32 noundef -1660944384, i32 noundef 0) #2
  %tobool626 = icmp ne i32 %call625, 0
  br i1 %tobool626, label %if.then627, label %if.end628

if.then627:                                       ; preds = %if.end624
  store i32 1, ptr %retval, align 4
  br label %return

if.end628:                                        ; preds = %if.end624
  %call629 = call i32 @test__clzsi2(i32 noundef -1644167168, i32 noundef 0) #2
  %tobool630 = icmp ne i32 %call629, 0
  br i1 %tobool630, label %if.then631, label %if.end632

if.then631:                                       ; preds = %if.end628
  store i32 1, ptr %retval, align 4
  br label %return

if.end632:                                        ; preds = %if.end628
  %call633 = call i32 @test__clzsi2(i32 noundef -1627389952, i32 noundef 0) #2
  %tobool634 = icmp ne i32 %call633, 0
  br i1 %tobool634, label %if.then635, label %if.end636

if.then635:                                       ; preds = %if.end632
  store i32 1, ptr %retval, align 4
  br label %return

if.end636:                                        ; preds = %if.end632
  %call637 = call i32 @test__clzsi2(i32 noundef -1610612736, i32 noundef 0) #2
  %tobool638 = icmp ne i32 %call637, 0
  br i1 %tobool638, label %if.then639, label %if.end640

if.then639:                                       ; preds = %if.end636
  store i32 1, ptr %retval, align 4
  br label %return

if.end640:                                        ; preds = %if.end636
  %call641 = call i32 @test__clzsi2(i32 noundef -1593835520, i32 noundef 0) #2
  %tobool642 = icmp ne i32 %call641, 0
  br i1 %tobool642, label %if.then643, label %if.end644

if.then643:                                       ; preds = %if.end640
  store i32 1, ptr %retval, align 4
  br label %return

if.end644:                                        ; preds = %if.end640
  %call645 = call i32 @test__clzsi2(i32 noundef -1577058304, i32 noundef 0) #2
  %tobool646 = icmp ne i32 %call645, 0
  br i1 %tobool646, label %if.then647, label %if.end648

if.then647:                                       ; preds = %if.end644
  store i32 1, ptr %retval, align 4
  br label %return

if.end648:                                        ; preds = %if.end644
  %call649 = call i32 @test__clzsi2(i32 noundef -1560281088, i32 noundef 0) #2
  %tobool650 = icmp ne i32 %call649, 0
  br i1 %tobool650, label %if.then651, label %if.end652

if.then651:                                       ; preds = %if.end648
  store i32 1, ptr %retval, align 4
  br label %return

if.end652:                                        ; preds = %if.end648
  %call653 = call i32 @test__clzsi2(i32 noundef -1543503872, i32 noundef 0) #2
  %tobool654 = icmp ne i32 %call653, 0
  br i1 %tobool654, label %if.then655, label %if.end656

if.then655:                                       ; preds = %if.end652
  store i32 1, ptr %retval, align 4
  br label %return

if.end656:                                        ; preds = %if.end652
  %call657 = call i32 @test__clzsi2(i32 noundef -1526726656, i32 noundef 0) #2
  %tobool658 = icmp ne i32 %call657, 0
  br i1 %tobool658, label %if.then659, label %if.end660

if.then659:                                       ; preds = %if.end656
  store i32 1, ptr %retval, align 4
  br label %return

if.end660:                                        ; preds = %if.end656
  %call661 = call i32 @test__clzsi2(i32 noundef -1509949440, i32 noundef 0) #2
  %tobool662 = icmp ne i32 %call661, 0
  br i1 %tobool662, label %if.then663, label %if.end664

if.then663:                                       ; preds = %if.end660
  store i32 1, ptr %retval, align 4
  br label %return

if.end664:                                        ; preds = %if.end660
  %call665 = call i32 @test__clzsi2(i32 noundef -1493172224, i32 noundef 0) #2
  %tobool666 = icmp ne i32 %call665, 0
  br i1 %tobool666, label %if.then667, label %if.end668

if.then667:                                       ; preds = %if.end664
  store i32 1, ptr %retval, align 4
  br label %return

if.end668:                                        ; preds = %if.end664
  %call669 = call i32 @test__clzsi2(i32 noundef -1476395008, i32 noundef 0) #2
  %tobool670 = icmp ne i32 %call669, 0
  br i1 %tobool670, label %if.then671, label %if.end672

if.then671:                                       ; preds = %if.end668
  store i32 1, ptr %retval, align 4
  br label %return

if.end672:                                        ; preds = %if.end668
  %call673 = call i32 @test__clzsi2(i32 noundef -1459617792, i32 noundef 0) #2
  %tobool674 = icmp ne i32 %call673, 0
  br i1 %tobool674, label %if.then675, label %if.end676

if.then675:                                       ; preds = %if.end672
  store i32 1, ptr %retval, align 4
  br label %return

if.end676:                                        ; preds = %if.end672
  %call677 = call i32 @test__clzsi2(i32 noundef -1442840576, i32 noundef 0) #2
  %tobool678 = icmp ne i32 %call677, 0
  br i1 %tobool678, label %if.then679, label %if.end680

if.then679:                                       ; preds = %if.end676
  store i32 1, ptr %retval, align 4
  br label %return

if.end680:                                        ; preds = %if.end676
  %call681 = call i32 @test__clzsi2(i32 noundef -1426063360, i32 noundef 0) #2
  %tobool682 = icmp ne i32 %call681, 0
  br i1 %tobool682, label %if.then683, label %if.end684

if.then683:                                       ; preds = %if.end680
  store i32 1, ptr %retval, align 4
  br label %return

if.end684:                                        ; preds = %if.end680
  %call685 = call i32 @test__clzsi2(i32 noundef -1409286144, i32 noundef 0) #2
  %tobool686 = icmp ne i32 %call685, 0
  br i1 %tobool686, label %if.then687, label %if.end688

if.then687:                                       ; preds = %if.end684
  store i32 1, ptr %retval, align 4
  br label %return

if.end688:                                        ; preds = %if.end684
  %call689 = call i32 @test__clzsi2(i32 noundef -1392508928, i32 noundef 0) #2
  %tobool690 = icmp ne i32 %call689, 0
  br i1 %tobool690, label %if.then691, label %if.end692

if.then691:                                       ; preds = %if.end688
  store i32 1, ptr %retval, align 4
  br label %return

if.end692:                                        ; preds = %if.end688
  %call693 = call i32 @test__clzsi2(i32 noundef -1375731712, i32 noundef 0) #2
  %tobool694 = icmp ne i32 %call693, 0
  br i1 %tobool694, label %if.then695, label %if.end696

if.then695:                                       ; preds = %if.end692
  store i32 1, ptr %retval, align 4
  br label %return

if.end696:                                        ; preds = %if.end692
  %call697 = call i32 @test__clzsi2(i32 noundef -1358954496, i32 noundef 0) #2
  %tobool698 = icmp ne i32 %call697, 0
  br i1 %tobool698, label %if.then699, label %if.end700

if.then699:                                       ; preds = %if.end696
  store i32 1, ptr %retval, align 4
  br label %return

if.end700:                                        ; preds = %if.end696
  %call701 = call i32 @test__clzsi2(i32 noundef -1342177280, i32 noundef 0) #2
  %tobool702 = icmp ne i32 %call701, 0
  br i1 %tobool702, label %if.then703, label %if.end704

if.then703:                                       ; preds = %if.end700
  store i32 1, ptr %retval, align 4
  br label %return

if.end704:                                        ; preds = %if.end700
  %call705 = call i32 @test__clzsi2(i32 noundef -1325400064, i32 noundef 0) #2
  %tobool706 = icmp ne i32 %call705, 0
  br i1 %tobool706, label %if.then707, label %if.end708

if.then707:                                       ; preds = %if.end704
  store i32 1, ptr %retval, align 4
  br label %return

if.end708:                                        ; preds = %if.end704
  %call709 = call i32 @test__clzsi2(i32 noundef -1308622848, i32 noundef 0) #2
  %tobool710 = icmp ne i32 %call709, 0
  br i1 %tobool710, label %if.then711, label %if.end712

if.then711:                                       ; preds = %if.end708
  store i32 1, ptr %retval, align 4
  br label %return

if.end712:                                        ; preds = %if.end708
  %call713 = call i32 @test__clzsi2(i32 noundef -1291845632, i32 noundef 0) #2
  %tobool714 = icmp ne i32 %call713, 0
  br i1 %tobool714, label %if.then715, label %if.end716

if.then715:                                       ; preds = %if.end712
  store i32 1, ptr %retval, align 4
  br label %return

if.end716:                                        ; preds = %if.end712
  %call717 = call i32 @test__clzsi2(i32 noundef -1275068416, i32 noundef 0) #2
  %tobool718 = icmp ne i32 %call717, 0
  br i1 %tobool718, label %if.then719, label %if.end720

if.then719:                                       ; preds = %if.end716
  store i32 1, ptr %retval, align 4
  br label %return

if.end720:                                        ; preds = %if.end716
  %call721 = call i32 @test__clzsi2(i32 noundef -1258291200, i32 noundef 0) #2
  %tobool722 = icmp ne i32 %call721, 0
  br i1 %tobool722, label %if.then723, label %if.end724

if.then723:                                       ; preds = %if.end720
  store i32 1, ptr %retval, align 4
  br label %return

if.end724:                                        ; preds = %if.end720
  %call725 = call i32 @test__clzsi2(i32 noundef -1241513984, i32 noundef 0) #2
  %tobool726 = icmp ne i32 %call725, 0
  br i1 %tobool726, label %if.then727, label %if.end728

if.then727:                                       ; preds = %if.end724
  store i32 1, ptr %retval, align 4
  br label %return

if.end728:                                        ; preds = %if.end724
  %call729 = call i32 @test__clzsi2(i32 noundef -1224736768, i32 noundef 0) #2
  %tobool730 = icmp ne i32 %call729, 0
  br i1 %tobool730, label %if.then731, label %if.end732

if.then731:                                       ; preds = %if.end728
  store i32 1, ptr %retval, align 4
  br label %return

if.end732:                                        ; preds = %if.end728
  %call733 = call i32 @test__clzsi2(i32 noundef -1207959552, i32 noundef 0) #2
  %tobool734 = icmp ne i32 %call733, 0
  br i1 %tobool734, label %if.then735, label %if.end736

if.then735:                                       ; preds = %if.end732
  store i32 1, ptr %retval, align 4
  br label %return

if.end736:                                        ; preds = %if.end732
  %call737 = call i32 @test__clzsi2(i32 noundef -1191182336, i32 noundef 0) #2
  %tobool738 = icmp ne i32 %call737, 0
  br i1 %tobool738, label %if.then739, label %if.end740

if.then739:                                       ; preds = %if.end736
  store i32 1, ptr %retval, align 4
  br label %return

if.end740:                                        ; preds = %if.end736
  %call741 = call i32 @test__clzsi2(i32 noundef -1174405120, i32 noundef 0) #2
  %tobool742 = icmp ne i32 %call741, 0
  br i1 %tobool742, label %if.then743, label %if.end744

if.then743:                                       ; preds = %if.end740
  store i32 1, ptr %retval, align 4
  br label %return

if.end744:                                        ; preds = %if.end740
  %call745 = call i32 @test__clzsi2(i32 noundef -1157627904, i32 noundef 0) #2
  %tobool746 = icmp ne i32 %call745, 0
  br i1 %tobool746, label %if.then747, label %if.end748

if.then747:                                       ; preds = %if.end744
  store i32 1, ptr %retval, align 4
  br label %return

if.end748:                                        ; preds = %if.end744
  %call749 = call i32 @test__clzsi2(i32 noundef -1140850688, i32 noundef 0) #2
  %tobool750 = icmp ne i32 %call749, 0
  br i1 %tobool750, label %if.then751, label %if.end752

if.then751:                                       ; preds = %if.end748
  store i32 1, ptr %retval, align 4
  br label %return

if.end752:                                        ; preds = %if.end748
  %call753 = call i32 @test__clzsi2(i32 noundef -1124073472, i32 noundef 0) #2
  %tobool754 = icmp ne i32 %call753, 0
  br i1 %tobool754, label %if.then755, label %if.end756

if.then755:                                       ; preds = %if.end752
  store i32 1, ptr %retval, align 4
  br label %return

if.end756:                                        ; preds = %if.end752
  %call757 = call i32 @test__clzsi2(i32 noundef -1107296256, i32 noundef 0) #2
  %tobool758 = icmp ne i32 %call757, 0
  br i1 %tobool758, label %if.then759, label %if.end760

if.then759:                                       ; preds = %if.end756
  store i32 1, ptr %retval, align 4
  br label %return

if.end760:                                        ; preds = %if.end756
  %call761 = call i32 @test__clzsi2(i32 noundef -1090519040, i32 noundef 0) #2
  %tobool762 = icmp ne i32 %call761, 0
  br i1 %tobool762, label %if.then763, label %if.end764

if.then763:                                       ; preds = %if.end760
  store i32 1, ptr %retval, align 4
  br label %return

if.end764:                                        ; preds = %if.end760
  %call765 = call i32 @test__clzsi2(i32 noundef -1073741824, i32 noundef 0) #2
  %tobool766 = icmp ne i32 %call765, 0
  br i1 %tobool766, label %if.then767, label %if.end768

if.then767:                                       ; preds = %if.end764
  store i32 1, ptr %retval, align 4
  br label %return

if.end768:                                        ; preds = %if.end764
  %call769 = call i32 @test__clzsi2(i32 noundef -1056964608, i32 noundef 0) #2
  %tobool770 = icmp ne i32 %call769, 0
  br i1 %tobool770, label %if.then771, label %if.end772

if.then771:                                       ; preds = %if.end768
  store i32 1, ptr %retval, align 4
  br label %return

if.end772:                                        ; preds = %if.end768
  %call773 = call i32 @test__clzsi2(i32 noundef -1040187392, i32 noundef 0) #2
  %tobool774 = icmp ne i32 %call773, 0
  br i1 %tobool774, label %if.then775, label %if.end776

if.then775:                                       ; preds = %if.end772
  store i32 1, ptr %retval, align 4
  br label %return

if.end776:                                        ; preds = %if.end772
  %call777 = call i32 @test__clzsi2(i32 noundef -1023410176, i32 noundef 0) #2
  %tobool778 = icmp ne i32 %call777, 0
  br i1 %tobool778, label %if.then779, label %if.end780

if.then779:                                       ; preds = %if.end776
  store i32 1, ptr %retval, align 4
  br label %return

if.end780:                                        ; preds = %if.end776
  %call781 = call i32 @test__clzsi2(i32 noundef -1006632960, i32 noundef 0) #2
  %tobool782 = icmp ne i32 %call781, 0
  br i1 %tobool782, label %if.then783, label %if.end784

if.then783:                                       ; preds = %if.end780
  store i32 1, ptr %retval, align 4
  br label %return

if.end784:                                        ; preds = %if.end780
  %call785 = call i32 @test__clzsi2(i32 noundef -989855744, i32 noundef 0) #2
  %tobool786 = icmp ne i32 %call785, 0
  br i1 %tobool786, label %if.then787, label %if.end788

if.then787:                                       ; preds = %if.end784
  store i32 1, ptr %retval, align 4
  br label %return

if.end788:                                        ; preds = %if.end784
  %call789 = call i32 @test__clzsi2(i32 noundef -973078528, i32 noundef 0) #2
  %tobool790 = icmp ne i32 %call789, 0
  br i1 %tobool790, label %if.then791, label %if.end792

if.then791:                                       ; preds = %if.end788
  store i32 1, ptr %retval, align 4
  br label %return

if.end792:                                        ; preds = %if.end788
  %call793 = call i32 @test__clzsi2(i32 noundef -956301312, i32 noundef 0) #2
  %tobool794 = icmp ne i32 %call793, 0
  br i1 %tobool794, label %if.then795, label %if.end796

if.then795:                                       ; preds = %if.end792
  store i32 1, ptr %retval, align 4
  br label %return

if.end796:                                        ; preds = %if.end792
  %call797 = call i32 @test__clzsi2(i32 noundef -939524096, i32 noundef 0) #2
  %tobool798 = icmp ne i32 %call797, 0
  br i1 %tobool798, label %if.then799, label %if.end800

if.then799:                                       ; preds = %if.end796
  store i32 1, ptr %retval, align 4
  br label %return

if.end800:                                        ; preds = %if.end796
  %call801 = call i32 @test__clzsi2(i32 noundef -922746880, i32 noundef 0) #2
  %tobool802 = icmp ne i32 %call801, 0
  br i1 %tobool802, label %if.then803, label %if.end804

if.then803:                                       ; preds = %if.end800
  store i32 1, ptr %retval, align 4
  br label %return

if.end804:                                        ; preds = %if.end800
  %call805 = call i32 @test__clzsi2(i32 noundef -905969664, i32 noundef 0) #2
  %tobool806 = icmp ne i32 %call805, 0
  br i1 %tobool806, label %if.then807, label %if.end808

if.then807:                                       ; preds = %if.end804
  store i32 1, ptr %retval, align 4
  br label %return

if.end808:                                        ; preds = %if.end804
  %call809 = call i32 @test__clzsi2(i32 noundef -889192448, i32 noundef 0) #2
  %tobool810 = icmp ne i32 %call809, 0
  br i1 %tobool810, label %if.then811, label %if.end812

if.then811:                                       ; preds = %if.end808
  store i32 1, ptr %retval, align 4
  br label %return

if.end812:                                        ; preds = %if.end808
  %call813 = call i32 @test__clzsi2(i32 noundef -872415232, i32 noundef 0) #2
  %tobool814 = icmp ne i32 %call813, 0
  br i1 %tobool814, label %if.then815, label %if.end816

if.then815:                                       ; preds = %if.end812
  store i32 1, ptr %retval, align 4
  br label %return

if.end816:                                        ; preds = %if.end812
  %call817 = call i32 @test__clzsi2(i32 noundef -855638016, i32 noundef 0) #2
  %tobool818 = icmp ne i32 %call817, 0
  br i1 %tobool818, label %if.then819, label %if.end820

if.then819:                                       ; preds = %if.end816
  store i32 1, ptr %retval, align 4
  br label %return

if.end820:                                        ; preds = %if.end816
  %call821 = call i32 @test__clzsi2(i32 noundef -838860800, i32 noundef 0) #2
  %tobool822 = icmp ne i32 %call821, 0
  br i1 %tobool822, label %if.then823, label %if.end824

if.then823:                                       ; preds = %if.end820
  store i32 1, ptr %retval, align 4
  br label %return

if.end824:                                        ; preds = %if.end820
  %call825 = call i32 @test__clzsi2(i32 noundef -822083584, i32 noundef 0) #2
  %tobool826 = icmp ne i32 %call825, 0
  br i1 %tobool826, label %if.then827, label %if.end828

if.then827:                                       ; preds = %if.end824
  store i32 1, ptr %retval, align 4
  br label %return

if.end828:                                        ; preds = %if.end824
  %call829 = call i32 @test__clzsi2(i32 noundef -805306368, i32 noundef 0) #2
  %tobool830 = icmp ne i32 %call829, 0
  br i1 %tobool830, label %if.then831, label %if.end832

if.then831:                                       ; preds = %if.end828
  store i32 1, ptr %retval, align 4
  br label %return

if.end832:                                        ; preds = %if.end828
  %call833 = call i32 @test__clzsi2(i32 noundef -788529152, i32 noundef 0) #2
  %tobool834 = icmp ne i32 %call833, 0
  br i1 %tobool834, label %if.then835, label %if.end836

if.then835:                                       ; preds = %if.end832
  store i32 1, ptr %retval, align 4
  br label %return

if.end836:                                        ; preds = %if.end832
  %call837 = call i32 @test__clzsi2(i32 noundef -771751936, i32 noundef 0) #2
  %tobool838 = icmp ne i32 %call837, 0
  br i1 %tobool838, label %if.then839, label %if.end840

if.then839:                                       ; preds = %if.end836
  store i32 1, ptr %retval, align 4
  br label %return

if.end840:                                        ; preds = %if.end836
  %call841 = call i32 @test__clzsi2(i32 noundef -754974720, i32 noundef 0) #2
  %tobool842 = icmp ne i32 %call841, 0
  br i1 %tobool842, label %if.then843, label %if.end844

if.then843:                                       ; preds = %if.end840
  store i32 1, ptr %retval, align 4
  br label %return

if.end844:                                        ; preds = %if.end840
  %call845 = call i32 @test__clzsi2(i32 noundef -738197504, i32 noundef 0) #2
  %tobool846 = icmp ne i32 %call845, 0
  br i1 %tobool846, label %if.then847, label %if.end848

if.then847:                                       ; preds = %if.end844
  store i32 1, ptr %retval, align 4
  br label %return

if.end848:                                        ; preds = %if.end844
  %call849 = call i32 @test__clzsi2(i32 noundef -721420288, i32 noundef 0) #2
  %tobool850 = icmp ne i32 %call849, 0
  br i1 %tobool850, label %if.then851, label %if.end852

if.then851:                                       ; preds = %if.end848
  store i32 1, ptr %retval, align 4
  br label %return

if.end852:                                        ; preds = %if.end848
  %call853 = call i32 @test__clzsi2(i32 noundef -704643072, i32 noundef 0) #2
  %tobool854 = icmp ne i32 %call853, 0
  br i1 %tobool854, label %if.then855, label %if.end856

if.then855:                                       ; preds = %if.end852
  store i32 1, ptr %retval, align 4
  br label %return

if.end856:                                        ; preds = %if.end852
  %call857 = call i32 @test__clzsi2(i32 noundef -687865856, i32 noundef 0) #2
  %tobool858 = icmp ne i32 %call857, 0
  br i1 %tobool858, label %if.then859, label %if.end860

if.then859:                                       ; preds = %if.end856
  store i32 1, ptr %retval, align 4
  br label %return

if.end860:                                        ; preds = %if.end856
  %call861 = call i32 @test__clzsi2(i32 noundef -671088640, i32 noundef 0) #2
  %tobool862 = icmp ne i32 %call861, 0
  br i1 %tobool862, label %if.then863, label %if.end864

if.then863:                                       ; preds = %if.end860
  store i32 1, ptr %retval, align 4
  br label %return

if.end864:                                        ; preds = %if.end860
  %call865 = call i32 @test__clzsi2(i32 noundef -654311424, i32 noundef 0) #2
  %tobool866 = icmp ne i32 %call865, 0
  br i1 %tobool866, label %if.then867, label %if.end868

if.then867:                                       ; preds = %if.end864
  store i32 1, ptr %retval, align 4
  br label %return

if.end868:                                        ; preds = %if.end864
  %call869 = call i32 @test__clzsi2(i32 noundef -637534208, i32 noundef 0) #2
  %tobool870 = icmp ne i32 %call869, 0
  br i1 %tobool870, label %if.then871, label %if.end872

if.then871:                                       ; preds = %if.end868
  store i32 1, ptr %retval, align 4
  br label %return

if.end872:                                        ; preds = %if.end868
  %call873 = call i32 @test__clzsi2(i32 noundef -620756992, i32 noundef 0) #2
  %tobool874 = icmp ne i32 %call873, 0
  br i1 %tobool874, label %if.then875, label %if.end876

if.then875:                                       ; preds = %if.end872
  store i32 1, ptr %retval, align 4
  br label %return

if.end876:                                        ; preds = %if.end872
  %call877 = call i32 @test__clzsi2(i32 noundef -603979776, i32 noundef 0) #2
  %tobool878 = icmp ne i32 %call877, 0
  br i1 %tobool878, label %if.then879, label %if.end880

if.then879:                                       ; preds = %if.end876
  store i32 1, ptr %retval, align 4
  br label %return

if.end880:                                        ; preds = %if.end876
  %call881 = call i32 @test__clzsi2(i32 noundef -587202560, i32 noundef 0) #2
  %tobool882 = icmp ne i32 %call881, 0
  br i1 %tobool882, label %if.then883, label %if.end884

if.then883:                                       ; preds = %if.end880
  store i32 1, ptr %retval, align 4
  br label %return

if.end884:                                        ; preds = %if.end880
  %call885 = call i32 @test__clzsi2(i32 noundef -570425344, i32 noundef 0) #2
  %tobool886 = icmp ne i32 %call885, 0
  br i1 %tobool886, label %if.then887, label %if.end888

if.then887:                                       ; preds = %if.end884
  store i32 1, ptr %retval, align 4
  br label %return

if.end888:                                        ; preds = %if.end884
  %call889 = call i32 @test__clzsi2(i32 noundef -553648128, i32 noundef 0) #2
  %tobool890 = icmp ne i32 %call889, 0
  br i1 %tobool890, label %if.then891, label %if.end892

if.then891:                                       ; preds = %if.end888
  store i32 1, ptr %retval, align 4
  br label %return

if.end892:                                        ; preds = %if.end888
  %call893 = call i32 @test__clzsi2(i32 noundef -536870912, i32 noundef 0) #2
  %tobool894 = icmp ne i32 %call893, 0
  br i1 %tobool894, label %if.then895, label %if.end896

if.then895:                                       ; preds = %if.end892
  store i32 1, ptr %retval, align 4
  br label %return

if.end896:                                        ; preds = %if.end892
  %call897 = call i32 @test__clzsi2(i32 noundef -520093696, i32 noundef 0) #2
  %tobool898 = icmp ne i32 %call897, 0
  br i1 %tobool898, label %if.then899, label %if.end900

if.then899:                                       ; preds = %if.end896
  store i32 1, ptr %retval, align 4
  br label %return

if.end900:                                        ; preds = %if.end896
  %call901 = call i32 @test__clzsi2(i32 noundef -503316480, i32 noundef 0) #2
  %tobool902 = icmp ne i32 %call901, 0
  br i1 %tobool902, label %if.then903, label %if.end904

if.then903:                                       ; preds = %if.end900
  store i32 1, ptr %retval, align 4
  br label %return

if.end904:                                        ; preds = %if.end900
  %call905 = call i32 @test__clzsi2(i32 noundef -486539264, i32 noundef 0) #2
  %tobool906 = icmp ne i32 %call905, 0
  br i1 %tobool906, label %if.then907, label %if.end908

if.then907:                                       ; preds = %if.end904
  store i32 1, ptr %retval, align 4
  br label %return

if.end908:                                        ; preds = %if.end904
  %call909 = call i32 @test__clzsi2(i32 noundef -469762048, i32 noundef 0) #2
  %tobool910 = icmp ne i32 %call909, 0
  br i1 %tobool910, label %if.then911, label %if.end912

if.then911:                                       ; preds = %if.end908
  store i32 1, ptr %retval, align 4
  br label %return

if.end912:                                        ; preds = %if.end908
  %call913 = call i32 @test__clzsi2(i32 noundef -452984832, i32 noundef 0) #2
  %tobool914 = icmp ne i32 %call913, 0
  br i1 %tobool914, label %if.then915, label %if.end916

if.then915:                                       ; preds = %if.end912
  store i32 1, ptr %retval, align 4
  br label %return

if.end916:                                        ; preds = %if.end912
  %call917 = call i32 @test__clzsi2(i32 noundef -436207616, i32 noundef 0) #2
  %tobool918 = icmp ne i32 %call917, 0
  br i1 %tobool918, label %if.then919, label %if.end920

if.then919:                                       ; preds = %if.end916
  store i32 1, ptr %retval, align 4
  br label %return

if.end920:                                        ; preds = %if.end916
  %call921 = call i32 @test__clzsi2(i32 noundef -419430400, i32 noundef 0) #2
  %tobool922 = icmp ne i32 %call921, 0
  br i1 %tobool922, label %if.then923, label %if.end924

if.then923:                                       ; preds = %if.end920
  store i32 1, ptr %retval, align 4
  br label %return

if.end924:                                        ; preds = %if.end920
  %call925 = call i32 @test__clzsi2(i32 noundef -402653184, i32 noundef 0) #2
  %tobool926 = icmp ne i32 %call925, 0
  br i1 %tobool926, label %if.then927, label %if.end928

if.then927:                                       ; preds = %if.end924
  store i32 1, ptr %retval, align 4
  br label %return

if.end928:                                        ; preds = %if.end924
  %call929 = call i32 @test__clzsi2(i32 noundef -385875968, i32 noundef 0) #2
  %tobool930 = icmp ne i32 %call929, 0
  br i1 %tobool930, label %if.then931, label %if.end932

if.then931:                                       ; preds = %if.end928
  store i32 1, ptr %retval, align 4
  br label %return

if.end932:                                        ; preds = %if.end928
  %call933 = call i32 @test__clzsi2(i32 noundef -369098752, i32 noundef 0) #2
  %tobool934 = icmp ne i32 %call933, 0
  br i1 %tobool934, label %if.then935, label %if.end936

if.then935:                                       ; preds = %if.end932
  store i32 1, ptr %retval, align 4
  br label %return

if.end936:                                        ; preds = %if.end932
  %call937 = call i32 @test__clzsi2(i32 noundef -352321536, i32 noundef 0) #2
  %tobool938 = icmp ne i32 %call937, 0
  br i1 %tobool938, label %if.then939, label %if.end940

if.then939:                                       ; preds = %if.end936
  store i32 1, ptr %retval, align 4
  br label %return

if.end940:                                        ; preds = %if.end936
  %call941 = call i32 @test__clzsi2(i32 noundef -335544320, i32 noundef 0) #2
  %tobool942 = icmp ne i32 %call941, 0
  br i1 %tobool942, label %if.then943, label %if.end944

if.then943:                                       ; preds = %if.end940
  store i32 1, ptr %retval, align 4
  br label %return

if.end944:                                        ; preds = %if.end940
  %call945 = call i32 @test__clzsi2(i32 noundef -318767104, i32 noundef 0) #2
  %tobool946 = icmp ne i32 %call945, 0
  br i1 %tobool946, label %if.then947, label %if.end948

if.then947:                                       ; preds = %if.end944
  store i32 1, ptr %retval, align 4
  br label %return

if.end948:                                        ; preds = %if.end944
  %call949 = call i32 @test__clzsi2(i32 noundef -301989888, i32 noundef 0) #2
  %tobool950 = icmp ne i32 %call949, 0
  br i1 %tobool950, label %if.then951, label %if.end952

if.then951:                                       ; preds = %if.end948
  store i32 1, ptr %retval, align 4
  br label %return

if.end952:                                        ; preds = %if.end948
  %call953 = call i32 @test__clzsi2(i32 noundef -285212672, i32 noundef 0) #2
  %tobool954 = icmp ne i32 %call953, 0
  br i1 %tobool954, label %if.then955, label %if.end956

if.then955:                                       ; preds = %if.end952
  store i32 1, ptr %retval, align 4
  br label %return

if.end956:                                        ; preds = %if.end952
  %call957 = call i32 @test__clzsi2(i32 noundef -268435456, i32 noundef 0) #2
  %tobool958 = icmp ne i32 %call957, 0
  br i1 %tobool958, label %if.then959, label %if.end960

if.then959:                                       ; preds = %if.end956
  store i32 1, ptr %retval, align 4
  br label %return

if.end960:                                        ; preds = %if.end956
  %call961 = call i32 @test__clzsi2(i32 noundef -251658240, i32 noundef 0) #2
  %tobool962 = icmp ne i32 %call961, 0
  br i1 %tobool962, label %if.then963, label %if.end964

if.then963:                                       ; preds = %if.end960
  store i32 1, ptr %retval, align 4
  br label %return

if.end964:                                        ; preds = %if.end960
  %call965 = call i32 @test__clzsi2(i32 noundef -234881024, i32 noundef 0) #2
  %tobool966 = icmp ne i32 %call965, 0
  br i1 %tobool966, label %if.then967, label %if.end968

if.then967:                                       ; preds = %if.end964
  store i32 1, ptr %retval, align 4
  br label %return

if.end968:                                        ; preds = %if.end964
  %call969 = call i32 @test__clzsi2(i32 noundef -218103808, i32 noundef 0) #2
  %tobool970 = icmp ne i32 %call969, 0
  br i1 %tobool970, label %if.then971, label %if.end972

if.then971:                                       ; preds = %if.end968
  store i32 1, ptr %retval, align 4
  br label %return

if.end972:                                        ; preds = %if.end968
  %call973 = call i32 @test__clzsi2(i32 noundef -201326592, i32 noundef 0) #2
  %tobool974 = icmp ne i32 %call973, 0
  br i1 %tobool974, label %if.then975, label %if.end976

if.then975:                                       ; preds = %if.end972
  store i32 1, ptr %retval, align 4
  br label %return

if.end976:                                        ; preds = %if.end972
  %call977 = call i32 @test__clzsi2(i32 noundef -184549376, i32 noundef 0) #2
  %tobool978 = icmp ne i32 %call977, 0
  br i1 %tobool978, label %if.then979, label %if.end980

if.then979:                                       ; preds = %if.end976
  store i32 1, ptr %retval, align 4
  br label %return

if.end980:                                        ; preds = %if.end976
  %call981 = call i32 @test__clzsi2(i32 noundef -167772160, i32 noundef 0) #2
  %tobool982 = icmp ne i32 %call981, 0
  br i1 %tobool982, label %if.then983, label %if.end984

if.then983:                                       ; preds = %if.end980
  store i32 1, ptr %retval, align 4
  br label %return

if.end984:                                        ; preds = %if.end980
  %call985 = call i32 @test__clzsi2(i32 noundef -150994944, i32 noundef 0) #2
  %tobool986 = icmp ne i32 %call985, 0
  br i1 %tobool986, label %if.then987, label %if.end988

if.then987:                                       ; preds = %if.end984
  store i32 1, ptr %retval, align 4
  br label %return

if.end988:                                        ; preds = %if.end984
  %call989 = call i32 @test__clzsi2(i32 noundef -134217728, i32 noundef 0) #2
  %tobool990 = icmp ne i32 %call989, 0
  br i1 %tobool990, label %if.then991, label %if.end992

if.then991:                                       ; preds = %if.end988
  store i32 1, ptr %retval, align 4
  br label %return

if.end992:                                        ; preds = %if.end988
  %call993 = call i32 @test__clzsi2(i32 noundef -117440512, i32 noundef 0) #2
  %tobool994 = icmp ne i32 %call993, 0
  br i1 %tobool994, label %if.then995, label %if.end996

if.then995:                                       ; preds = %if.end992
  store i32 1, ptr %retval, align 4
  br label %return

if.end996:                                        ; preds = %if.end992
  %call997 = call i32 @test__clzsi2(i32 noundef -100663296, i32 noundef 0) #2
  %tobool998 = icmp ne i32 %call997, 0
  br i1 %tobool998, label %if.then999, label %if.end1000

if.then999:                                       ; preds = %if.end996
  store i32 1, ptr %retval, align 4
  br label %return

if.end1000:                                       ; preds = %if.end996
  %call1001 = call i32 @test__clzsi2(i32 noundef -83886080, i32 noundef 0) #2
  %tobool1002 = icmp ne i32 %call1001, 0
  br i1 %tobool1002, label %if.then1003, label %if.end1004

if.then1003:                                      ; preds = %if.end1000
  store i32 1, ptr %retval, align 4
  br label %return

if.end1004:                                       ; preds = %if.end1000
  %call1005 = call i32 @test__clzsi2(i32 noundef -67108864, i32 noundef 0) #2
  %tobool1006 = icmp ne i32 %call1005, 0
  br i1 %tobool1006, label %if.then1007, label %if.end1008

if.then1007:                                      ; preds = %if.end1004
  store i32 1, ptr %retval, align 4
  br label %return

if.end1008:                                       ; preds = %if.end1004
  %call1009 = call i32 @test__clzsi2(i32 noundef -50331648, i32 noundef 0) #2
  %tobool1010 = icmp ne i32 %call1009, 0
  br i1 %tobool1010, label %if.then1011, label %if.end1012

if.then1011:                                      ; preds = %if.end1008
  store i32 1, ptr %retval, align 4
  br label %return

if.end1012:                                       ; preds = %if.end1008
  %call1013 = call i32 @test__clzsi2(i32 noundef -33554432, i32 noundef 0) #2
  %tobool1014 = icmp ne i32 %call1013, 0
  br i1 %tobool1014, label %if.then1015, label %if.end1016

if.then1015:                                      ; preds = %if.end1012
  store i32 1, ptr %retval, align 4
  br label %return

if.end1016:                                       ; preds = %if.end1012
  %call1017 = call i32 @test__clzsi2(i32 noundef -16777216, i32 noundef 0) #2
  %tobool1018 = icmp ne i32 %call1017, 0
  br i1 %tobool1018, label %if.then1019, label %if.end1020

if.then1019:                                      ; preds = %if.end1016
  store i32 1, ptr %retval, align 4
  br label %return

if.end1020:                                       ; preds = %if.end1016
  %call1021 = call i32 @test__clzsi2(i32 noundef 1, i32 noundef 31) #2
  %tobool1022 = icmp ne i32 %call1021, 0
  br i1 %tobool1022, label %if.then1023, label %if.end1024

if.then1023:                                      ; preds = %if.end1020
  store i32 1, ptr %retval, align 4
  br label %return

if.end1024:                                       ; preds = %if.end1020
  %call1025 = call i32 @test__clzsi2(i32 noundef 2, i32 noundef 30) #2
  %tobool1026 = icmp ne i32 %call1025, 0
  br i1 %tobool1026, label %if.then1027, label %if.end1028

if.then1027:                                      ; preds = %if.end1024
  store i32 1, ptr %retval, align 4
  br label %return

if.end1028:                                       ; preds = %if.end1024
  %call1029 = call i32 @test__clzsi2(i32 noundef 4, i32 noundef 29) #2
  %tobool1030 = icmp ne i32 %call1029, 0
  br i1 %tobool1030, label %if.then1031, label %if.end1032

if.then1031:                                      ; preds = %if.end1028
  store i32 1, ptr %retval, align 4
  br label %return

if.end1032:                                       ; preds = %if.end1028
  %call1033 = call i32 @test__clzsi2(i32 noundef 8, i32 noundef 28) #2
  %tobool1034 = icmp ne i32 %call1033, 0
  br i1 %tobool1034, label %if.then1035, label %if.end1036

if.then1035:                                      ; preds = %if.end1032
  store i32 1, ptr %retval, align 4
  br label %return

if.end1036:                                       ; preds = %if.end1032
  %call1037 = call i32 @test__clzsi2(i32 noundef 16, i32 noundef 27) #2
  %tobool1038 = icmp ne i32 %call1037, 0
  br i1 %tobool1038, label %if.then1039, label %if.end1040

if.then1039:                                      ; preds = %if.end1036
  store i32 1, ptr %retval, align 4
  br label %return

if.end1040:                                       ; preds = %if.end1036
  %call1041 = call i32 @test__clzsi2(i32 noundef 32, i32 noundef 26) #2
  %tobool1042 = icmp ne i32 %call1041, 0
  br i1 %tobool1042, label %if.then1043, label %if.end1044

if.then1043:                                      ; preds = %if.end1040
  store i32 1, ptr %retval, align 4
  br label %return

if.end1044:                                       ; preds = %if.end1040
  %call1045 = call i32 @test__clzsi2(i32 noundef 64, i32 noundef 25) #2
  %tobool1046 = icmp ne i32 %call1045, 0
  br i1 %tobool1046, label %if.then1047, label %if.end1048

if.then1047:                                      ; preds = %if.end1044
  store i32 1, ptr %retval, align 4
  br label %return

if.end1048:                                       ; preds = %if.end1044
  %call1049 = call i32 @test__clzsi2(i32 noundef 128, i32 noundef 24) #2
  %tobool1050 = icmp ne i32 %call1049, 0
  br i1 %tobool1050, label %if.then1051, label %if.end1052

if.then1051:                                      ; preds = %if.end1048
  store i32 1, ptr %retval, align 4
  br label %return

if.end1052:                                       ; preds = %if.end1048
  %call1053 = call i32 @test__clzsi2(i32 noundef 256, i32 noundef 23) #2
  %tobool1054 = icmp ne i32 %call1053, 0
  br i1 %tobool1054, label %if.then1055, label %if.end1056

if.then1055:                                      ; preds = %if.end1052
  store i32 1, ptr %retval, align 4
  br label %return

if.end1056:                                       ; preds = %if.end1052
  %call1057 = call i32 @test__clzsi2(i32 noundef 512, i32 noundef 22) #2
  %tobool1058 = icmp ne i32 %call1057, 0
  br i1 %tobool1058, label %if.then1059, label %if.end1060

if.then1059:                                      ; preds = %if.end1056
  store i32 1, ptr %retval, align 4
  br label %return

if.end1060:                                       ; preds = %if.end1056
  %call1061 = call i32 @test__clzsi2(i32 noundef 1024, i32 noundef 21) #2
  %tobool1062 = icmp ne i32 %call1061, 0
  br i1 %tobool1062, label %if.then1063, label %if.end1064

if.then1063:                                      ; preds = %if.end1060
  store i32 1, ptr %retval, align 4
  br label %return

if.end1064:                                       ; preds = %if.end1060
  %call1065 = call i32 @test__clzsi2(i32 noundef 2048, i32 noundef 20) #2
  %tobool1066 = icmp ne i32 %call1065, 0
  br i1 %tobool1066, label %if.then1067, label %if.end1068

if.then1067:                                      ; preds = %if.end1064
  store i32 1, ptr %retval, align 4
  br label %return

if.end1068:                                       ; preds = %if.end1064
  %call1069 = call i32 @test__clzsi2(i32 noundef 4096, i32 noundef 19) #2
  %tobool1070 = icmp ne i32 %call1069, 0
  br i1 %tobool1070, label %if.then1071, label %if.end1072

if.then1071:                                      ; preds = %if.end1068
  store i32 1, ptr %retval, align 4
  br label %return

if.end1072:                                       ; preds = %if.end1068
  %call1073 = call i32 @test__clzsi2(i32 noundef 8192, i32 noundef 18) #2
  %tobool1074 = icmp ne i32 %call1073, 0
  br i1 %tobool1074, label %if.then1075, label %if.end1076

if.then1075:                                      ; preds = %if.end1072
  store i32 1, ptr %retval, align 4
  br label %return

if.end1076:                                       ; preds = %if.end1072
  %call1077 = call i32 @test__clzsi2(i32 noundef 16384, i32 noundef 17) #2
  %tobool1078 = icmp ne i32 %call1077, 0
  br i1 %tobool1078, label %if.then1079, label %if.end1080

if.then1079:                                      ; preds = %if.end1076
  store i32 1, ptr %retval, align 4
  br label %return

if.end1080:                                       ; preds = %if.end1076
  %call1081 = call i32 @test__clzsi2(i32 noundef 32768, i32 noundef 16) #2
  %tobool1082 = icmp ne i32 %call1081, 0
  br i1 %tobool1082, label %if.then1083, label %if.end1084

if.then1083:                                      ; preds = %if.end1080
  store i32 1, ptr %retval, align 4
  br label %return

if.end1084:                                       ; preds = %if.end1080
  %call1085 = call i32 @test__clzsi2(i32 noundef 65536, i32 noundef 15) #2
  %tobool1086 = icmp ne i32 %call1085, 0
  br i1 %tobool1086, label %if.then1087, label %if.end1088

if.then1087:                                      ; preds = %if.end1084
  store i32 1, ptr %retval, align 4
  br label %return

if.end1088:                                       ; preds = %if.end1084
  %call1089 = call i32 @test__clzsi2(i32 noundef 131072, i32 noundef 14) #2
  %tobool1090 = icmp ne i32 %call1089, 0
  br i1 %tobool1090, label %if.then1091, label %if.end1092

if.then1091:                                      ; preds = %if.end1088
  store i32 1, ptr %retval, align 4
  br label %return

if.end1092:                                       ; preds = %if.end1088
  %call1093 = call i32 @test__clzsi2(i32 noundef 262144, i32 noundef 13) #2
  %tobool1094 = icmp ne i32 %call1093, 0
  br i1 %tobool1094, label %if.then1095, label %if.end1096

if.then1095:                                      ; preds = %if.end1092
  store i32 1, ptr %retval, align 4
  br label %return

if.end1096:                                       ; preds = %if.end1092
  %call1097 = call i32 @test__clzsi2(i32 noundef 524288, i32 noundef 12) #2
  %tobool1098 = icmp ne i32 %call1097, 0
  br i1 %tobool1098, label %if.then1099, label %if.end1100

if.then1099:                                      ; preds = %if.end1096
  store i32 1, ptr %retval, align 4
  br label %return

if.end1100:                                       ; preds = %if.end1096
  %call1101 = call i32 @test__clzsi2(i32 noundef 1048576, i32 noundef 11) #2
  %tobool1102 = icmp ne i32 %call1101, 0
  br i1 %tobool1102, label %if.then1103, label %if.end1104

if.then1103:                                      ; preds = %if.end1100
  store i32 1, ptr %retval, align 4
  br label %return

if.end1104:                                       ; preds = %if.end1100
  %call1105 = call i32 @test__clzsi2(i32 noundef 2097152, i32 noundef 10) #2
  %tobool1106 = icmp ne i32 %call1105, 0
  br i1 %tobool1106, label %if.then1107, label %if.end1108

if.then1107:                                      ; preds = %if.end1104
  store i32 1, ptr %retval, align 4
  br label %return

if.end1108:                                       ; preds = %if.end1104
  %call1109 = call i32 @test__clzsi2(i32 noundef 4194304, i32 noundef 9) #2
  %tobool1110 = icmp ne i32 %call1109, 0
  br i1 %tobool1110, label %if.then1111, label %if.end1112

if.then1111:                                      ; preds = %if.end1108
  store i32 1, ptr %retval, align 4
  br label %return

if.end1112:                                       ; preds = %if.end1108
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end1112, %if.then1111, %if.then1107, %if.then1103, %if.then1099, %if.then1095, %if.then1091, %if.then1087, %if.then1083, %if.then1079, %if.then1075, %if.then1071, %if.then1067, %if.then1063, %if.then1059, %if.then1055, %if.then1051, %if.then1047, %if.then1043, %if.then1039, %if.then1035, %if.then1031, %if.then1027, %if.then1023, %if.then1019, %if.then1015, %if.then1011, %if.then1007, %if.then1003, %if.then999, %if.then995, %if.then991, %if.then987, %if.then983, %if.then979, %if.then975, %if.then971, %if.then967, %if.then963, %if.then959, %if.then955, %if.then951, %if.then947, %if.then943, %if.then939, %if.then935, %if.then931, %if.then927, %if.then923, %if.then919, %if.then915, %if.then911, %if.then907, %if.then903, %if.then899, %if.then895, %if.then891, %if.then887, %if.then883, %if.then879, %if.then875, %if.then871, %if.then867, %if.then863, %if.then859, %if.then855, %if.then851, %if.then847, %if.then843, %if.then839, %if.then835, %if.then831, %if.then827, %if.then823, %if.then819, %if.then815, %if.then811, %if.then807, %if.then803, %if.then799, %if.then795, %if.then791, %if.then787, %if.then783, %if.then779, %if.then775, %if.then771, %if.then767, %if.then763, %if.then759, %if.then755, %if.then751, %if.then747, %if.then743, %if.then739, %if.then735, %if.then731, %if.then727, %if.then723, %if.then719, %if.then715, %if.then711, %if.then707, %if.then703, %if.then699, %if.then695, %if.then691, %if.then687, %if.then683, %if.then679, %if.then675, %if.then671, %if.then667, %if.then663, %if.then659, %if.then655, %if.then651, %if.then647, %if.then643, %if.then639, %if.then635, %if.then631, %if.then627, %if.then623, %if.then619, %if.then615, %if.then611, %if.then607, %if.then603, %if.then599, %if.then595, %if.then591, %if.then587, %if.then583, %if.then579, %if.then575, %if.then571, %if.then567, %if.then563, %if.then559, %if.then555, %if.then551, %if.then547, %if.then543, %if.then539, %if.then535, %if.then531, %if.then527, %if.then523, %if.then519, %if.then515, %if.then511, %if.then507, %if.then503, %if.then499, %if.then495, %if.then491, %if.then487, %if.then483, %if.then479, %if.then475, %if.then471, %if.then467, %if.then463, %if.then459, %if.then455, %if.then451, %if.then447, %if.then443, %if.then439, %if.then435, %if.then431, %if.then427, %if.then423, %if.then419, %if.then415, %if.then411, %if.then407, %if.then403, %if.then399, %if.then395, %if.then391, %if.then387, %if.then383, %if.then379, %if.then375, %if.then371, %if.then367, %if.then363, %if.then359, %if.then355, %if.then351, %if.then347, %if.then343, %if.then339, %if.then335, %if.then331, %if.then327, %if.then323, %if.then319, %if.then315, %if.then311, %if.then307, %if.then303, %if.then299, %if.then295, %if.then291, %if.then287, %if.then283, %if.then279, %if.then275, %if.then271, %if.then267, %if.then263, %if.then259, %if.then255, %if.then251, %if.then247, %if.then243, %if.then239, %if.then235, %if.then231, %if.then227, %if.then223, %if.then219, %if.then215, %if.then211, %if.then207, %if.then203, %if.then199, %if.then195, %if.then191, %if.then187, %if.then183, %if.then179, %if.then175, %if.then171, %if.then167, %if.then163, %if.then159, %if.then155, %if.then151, %if.then147, %if.then143, %if.then139, %if.then135, %if.then131, %if.then127, %if.then123, %if.then119, %if.then115, %if.then111, %if.then107, %if.then103, %if.then99, %if.then95, %if.then91, %if.then87, %if.then83, %if.then79, %if.then75, %if.then71, %if.then67, %if.then63, %if.then59, %if.then55, %if.then51, %if.then47, %if.then43, %if.then39, %if.then35, %if.then31, %if.then27, %if.then23, %if.then19, %if.then15, %if.then11, %if.then7, %if.then3, %if.then
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
