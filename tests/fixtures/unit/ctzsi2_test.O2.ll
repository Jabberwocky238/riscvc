; ModuleID = '../llvm-project/compiler-rt/test/builtins/Unit/ctzsi2_test.c'
source_filename = "../llvm-project/compiler-rt/test/builtins/Unit/ctzsi2_test.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

@.str = private unnamed_addr constant [43 x i8] c"error in __ctzsi2(0x%X) = %d, expected %d\0A\00", align 1
@assumption_1 = dso_local local_unnamed_addr global [1 x i8] zeroinitializer, align 1
@assumption_2 = dso_local local_unnamed_addr global [1 x i8] zeroinitializer, align 1

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @test__ctzsi2(i32 noundef %a, i32 noundef %expected) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @__ctzsi2(i32 noundef %a) #2
  %cmp = icmp ne i32 %call, %expected
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef %a, i32 noundef %call, i32 noundef %expected) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

declare dso_local i32 @__ctzsi2(i32 noundef) local_unnamed_addr #1

declare dso_local i32 @printf(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @main() local_unnamed_addr #0 {
entry:
  %call.i = tail call i32 @__ctzsi2(i32 noundef 1) #2
  %cmp.i.not = icmp eq i32 %call.i, 0
  br i1 %cmp.i.not, label %if.end, label %test__ctzsi2.exit

test__ctzsi2.exit:                                ; preds = %entry
  %call1.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef 1, i32 noundef %call.i, i32 noundef 0) #2
  br label %return

if.end:                                           ; preds = %entry
  %call.i1053 = tail call i32 @__ctzsi2(i32 noundef 2) #2
  %cmp.i1054.not = icmp eq i32 %call.i1053, 1
  br i1 %cmp.i1054.not, label %if.end4, label %test__ctzsi2.exit1058

test__ctzsi2.exit1058:                            ; preds = %if.end
  %call1.i1057 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef 2, i32 noundef %call.i1053, i32 noundef 1) #2
  br label %return

if.end4:                                          ; preds = %if.end
  %call.i1059 = tail call i32 @__ctzsi2(i32 noundef 3) #2
  %cmp.i1060.not = icmp eq i32 %call.i1059, 0
  br i1 %cmp.i1060.not, label %if.end8, label %test__ctzsi2.exit1064

test__ctzsi2.exit1064:                            ; preds = %if.end4
  %call1.i1063 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef 3, i32 noundef %call.i1059, i32 noundef 0) #2
  br label %return

if.end8:                                          ; preds = %if.end4
  %call.i1065 = tail call i32 @__ctzsi2(i32 noundef 4) #2
  %cmp.i1066.not = icmp eq i32 %call.i1065, 2
  br i1 %cmp.i1066.not, label %if.end12, label %test__ctzsi2.exit1070

test__ctzsi2.exit1070:                            ; preds = %if.end8
  %call1.i1069 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef 4, i32 noundef %call.i1065, i32 noundef 2) #2
  br label %return

if.end12:                                         ; preds = %if.end8
  %call13 = tail call i32 @test__ctzsi2(i32 noundef 5, i32 noundef 0) #3
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %return

if.end16:                                         ; preds = %if.end12
  %call17 = tail call i32 @test__ctzsi2(i32 noundef 6, i32 noundef 1) #3
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %return

if.end20:                                         ; preds = %if.end16
  %call21 = tail call i32 @test__ctzsi2(i32 noundef 7, i32 noundef 0) #3
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %return

if.end24:                                         ; preds = %if.end20
  %call25 = tail call i32 @test__ctzsi2(i32 noundef 8, i32 noundef 3) #3
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %return

if.end28:                                         ; preds = %if.end24
  %call29 = tail call i32 @test__ctzsi2(i32 noundef 9, i32 noundef 0) #3
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %return

if.end32:                                         ; preds = %if.end28
  %call33 = tail call i32 @test__ctzsi2(i32 noundef 10, i32 noundef 1) #3
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %return

if.end36:                                         ; preds = %if.end32
  %call37 = tail call i32 @test__ctzsi2(i32 noundef 11, i32 noundef 0) #3
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %return

if.end40:                                         ; preds = %if.end36
  %call41 = tail call i32 @test__ctzsi2(i32 noundef 12, i32 noundef 2) #3
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end44, label %return

if.end44:                                         ; preds = %if.end40
  %call45 = tail call i32 @test__ctzsi2(i32 noundef 13, i32 noundef 0) #3
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %return

if.end48:                                         ; preds = %if.end44
  %call49 = tail call i32 @test__ctzsi2(i32 noundef 14, i32 noundef 1) #3
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end52, label %return

if.end52:                                         ; preds = %if.end48
  %call53 = tail call i32 @test__ctzsi2(i32 noundef 15, i32 noundef 0) #3
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end56, label %return

if.end56:                                         ; preds = %if.end52
  %call57 = tail call i32 @test__ctzsi2(i32 noundef 16, i32 noundef 4) #3
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end60, label %return

if.end60:                                         ; preds = %if.end56
  %call61 = tail call i32 @test__ctzsi2(i32 noundef 18, i32 noundef 1) #3
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end64, label %return

if.end64:                                         ; preds = %if.end60
  %call65 = tail call i32 @test__ctzsi2(i32 noundef 19, i32 noundef 0) #3
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end68, label %return

if.end68:                                         ; preds = %if.end64
  %call69 = tail call i32 @test__ctzsi2(i32 noundef 20, i32 noundef 2) #3
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end72, label %return

if.end72:                                         ; preds = %if.end68
  %call73 = tail call i32 @test__ctzsi2(i32 noundef 21, i32 noundef 0) #3
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end76, label %return

if.end76:                                         ; preds = %if.end72
  %call77 = tail call i32 @test__ctzsi2(i32 noundef 22, i32 noundef 1) #3
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end80, label %return

if.end80:                                         ; preds = %if.end76
  %call81 = tail call i32 @test__ctzsi2(i32 noundef 23, i32 noundef 0) #3
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.end84, label %return

if.end84:                                         ; preds = %if.end80
  %call85 = tail call i32 @test__ctzsi2(i32 noundef 24, i32 noundef 3) #3
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.end88, label %return

if.end88:                                         ; preds = %if.end84
  %call89 = tail call i32 @test__ctzsi2(i32 noundef 25, i32 noundef 0) #3
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.end92, label %return

if.end92:                                         ; preds = %if.end88
  %call93 = tail call i32 @test__ctzsi2(i32 noundef 26, i32 noundef 1) #3
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.end96, label %return

if.end96:                                         ; preds = %if.end92
  %call97 = tail call i32 @test__ctzsi2(i32 noundef 27, i32 noundef 0) #3
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %if.end100, label %return

if.end100:                                        ; preds = %if.end96
  %call101 = tail call i32 @test__ctzsi2(i32 noundef 28, i32 noundef 2) #3
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.end104, label %return

if.end104:                                        ; preds = %if.end100
  %call105 = tail call i32 @test__ctzsi2(i32 noundef 29, i32 noundef 0) #3
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %if.end108, label %return

if.end108:                                        ; preds = %if.end104
  %call109 = tail call i32 @test__ctzsi2(i32 noundef 30, i32 noundef 1) #3
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %if.end112, label %return

if.end112:                                        ; preds = %if.end108
  %call113 = tail call i32 @test__ctzsi2(i32 noundef 31, i32 noundef 0) #3
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %if.end116, label %return

if.end116:                                        ; preds = %if.end112
  %call117 = tail call i32 @test__ctzsi2(i32 noundef 32, i32 noundef 5) #3
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %if.end120, label %return

if.end120:                                        ; preds = %if.end116
  %call121 = tail call i32 @test__ctzsi2(i32 noundef 34, i32 noundef 1) #3
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %if.end124, label %return

if.end124:                                        ; preds = %if.end120
  %call125 = tail call i32 @test__ctzsi2(i32 noundef 35, i32 noundef 0) #3
  %tobool126.not = icmp eq i32 %call125, 0
  br i1 %tobool126.not, label %if.end128, label %return

if.end128:                                        ; preds = %if.end124
  %call129 = tail call i32 @test__ctzsi2(i32 noundef 36, i32 noundef 2) #3
  %tobool130.not = icmp eq i32 %call129, 0
  br i1 %tobool130.not, label %if.end132, label %return

if.end132:                                        ; preds = %if.end128
  %call133 = tail call i32 @test__ctzsi2(i32 noundef 37, i32 noundef 0) #3
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %if.end136, label %return

if.end136:                                        ; preds = %if.end132
  %call137 = tail call i32 @test__ctzsi2(i32 noundef 38, i32 noundef 1) #3
  %tobool138.not = icmp eq i32 %call137, 0
  br i1 %tobool138.not, label %if.end140, label %return

if.end140:                                        ; preds = %if.end136
  %call141 = tail call i32 @test__ctzsi2(i32 noundef 39, i32 noundef 0) #3
  %tobool142.not = icmp eq i32 %call141, 0
  br i1 %tobool142.not, label %if.end144, label %return

if.end144:                                        ; preds = %if.end140
  %call145 = tail call i32 @test__ctzsi2(i32 noundef 40, i32 noundef 3) #3
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %if.end148, label %return

if.end148:                                        ; preds = %if.end144
  %call149 = tail call i32 @test__ctzsi2(i32 noundef 41, i32 noundef 0) #3
  %tobool150.not = icmp eq i32 %call149, 0
  br i1 %tobool150.not, label %if.end152, label %return

if.end152:                                        ; preds = %if.end148
  %call153 = tail call i32 @test__ctzsi2(i32 noundef 42, i32 noundef 1) #3
  %tobool154.not = icmp eq i32 %call153, 0
  br i1 %tobool154.not, label %if.end156, label %return

if.end156:                                        ; preds = %if.end152
  %call157 = tail call i32 @test__ctzsi2(i32 noundef 43, i32 noundef 0) #3
  %tobool158.not = icmp eq i32 %call157, 0
  br i1 %tobool158.not, label %if.end160, label %return

if.end160:                                        ; preds = %if.end156
  %call161 = tail call i32 @test__ctzsi2(i32 noundef 44, i32 noundef 2) #3
  %tobool162.not = icmp eq i32 %call161, 0
  br i1 %tobool162.not, label %if.end164, label %return

if.end164:                                        ; preds = %if.end160
  %call165 = tail call i32 @test__ctzsi2(i32 noundef 45, i32 noundef 0) #3
  %tobool166.not = icmp eq i32 %call165, 0
  br i1 %tobool166.not, label %if.end168, label %return

if.end168:                                        ; preds = %if.end164
  %call169 = tail call i32 @test__ctzsi2(i32 noundef 46, i32 noundef 1) #3
  %tobool170.not = icmp eq i32 %call169, 0
  br i1 %tobool170.not, label %if.end172, label %return

if.end172:                                        ; preds = %if.end168
  %call173 = tail call i32 @test__ctzsi2(i32 noundef 47, i32 noundef 0) #3
  %tobool174.not = icmp eq i32 %call173, 0
  br i1 %tobool174.not, label %if.end176, label %return

if.end176:                                        ; preds = %if.end172
  %call177 = tail call i32 @test__ctzsi2(i32 noundef 48, i32 noundef 4) #3
  %tobool178.not = icmp eq i32 %call177, 0
  br i1 %tobool178.not, label %if.end180, label %return

if.end180:                                        ; preds = %if.end176
  %call181 = tail call i32 @test__ctzsi2(i32 noundef 50, i32 noundef 1) #3
  %tobool182.not = icmp eq i32 %call181, 0
  br i1 %tobool182.not, label %if.end184, label %return

if.end184:                                        ; preds = %if.end180
  %call185 = tail call i32 @test__ctzsi2(i32 noundef 51, i32 noundef 0) #3
  %tobool186.not = icmp eq i32 %call185, 0
  br i1 %tobool186.not, label %if.end188, label %return

if.end188:                                        ; preds = %if.end184
  %call189 = tail call i32 @test__ctzsi2(i32 noundef 52, i32 noundef 2) #3
  %tobool190.not = icmp eq i32 %call189, 0
  br i1 %tobool190.not, label %if.end192, label %return

if.end192:                                        ; preds = %if.end188
  %call193 = tail call i32 @test__ctzsi2(i32 noundef 53, i32 noundef 0) #3
  %tobool194.not = icmp eq i32 %call193, 0
  br i1 %tobool194.not, label %if.end196, label %return

if.end196:                                        ; preds = %if.end192
  %call197 = tail call i32 @test__ctzsi2(i32 noundef 54, i32 noundef 1) #3
  %tobool198.not = icmp eq i32 %call197, 0
  br i1 %tobool198.not, label %if.end200, label %return

if.end200:                                        ; preds = %if.end196
  %call201 = tail call i32 @test__ctzsi2(i32 noundef 55, i32 noundef 0) #3
  %tobool202.not = icmp eq i32 %call201, 0
  br i1 %tobool202.not, label %if.end204, label %return

if.end204:                                        ; preds = %if.end200
  %call205 = tail call i32 @test__ctzsi2(i32 noundef 56, i32 noundef 3) #3
  %tobool206.not = icmp eq i32 %call205, 0
  br i1 %tobool206.not, label %if.end208, label %return

if.end208:                                        ; preds = %if.end204
  %call209 = tail call i32 @test__ctzsi2(i32 noundef 57, i32 noundef 0) #3
  %tobool210.not = icmp eq i32 %call209, 0
  br i1 %tobool210.not, label %if.end212, label %return

if.end212:                                        ; preds = %if.end208
  %call213 = tail call i32 @test__ctzsi2(i32 noundef 58, i32 noundef 1) #3
  %tobool214.not = icmp eq i32 %call213, 0
  br i1 %tobool214.not, label %if.end216, label %return

if.end216:                                        ; preds = %if.end212
  %call217 = tail call i32 @test__ctzsi2(i32 noundef 59, i32 noundef 0) #3
  %tobool218.not = icmp eq i32 %call217, 0
  br i1 %tobool218.not, label %if.end220, label %return

if.end220:                                        ; preds = %if.end216
  %call221 = tail call i32 @test__ctzsi2(i32 noundef 60, i32 noundef 2) #3
  %tobool222.not = icmp eq i32 %call221, 0
  br i1 %tobool222.not, label %if.end224, label %return

if.end224:                                        ; preds = %if.end220
  %call225 = tail call i32 @test__ctzsi2(i32 noundef 61, i32 noundef 0) #3
  %tobool226.not = icmp eq i32 %call225, 0
  br i1 %tobool226.not, label %if.end228, label %return

if.end228:                                        ; preds = %if.end224
  %call229 = tail call i32 @test__ctzsi2(i32 noundef 62, i32 noundef 1) #3
  %tobool230.not = icmp eq i32 %call229, 0
  br i1 %tobool230.not, label %if.end232, label %return

if.end232:                                        ; preds = %if.end228
  %call233 = tail call i32 @test__ctzsi2(i32 noundef 63, i32 noundef 0) #3
  %tobool234.not = icmp eq i32 %call233, 0
  br i1 %tobool234.not, label %if.end236, label %return

if.end236:                                        ; preds = %if.end232
  %call237 = tail call i32 @test__ctzsi2(i32 noundef 64, i32 noundef 6) #3
  %tobool238.not = icmp eq i32 %call237, 0
  br i1 %tobool238.not, label %if.end240, label %return

if.end240:                                        ; preds = %if.end236
  %call241 = tail call i32 @test__ctzsi2(i32 noundef 66, i32 noundef 1) #3
  %tobool242.not = icmp eq i32 %call241, 0
  br i1 %tobool242.not, label %if.end244, label %return

if.end244:                                        ; preds = %if.end240
  %call245 = tail call i32 @test__ctzsi2(i32 noundef 67, i32 noundef 0) #3
  %tobool246.not = icmp eq i32 %call245, 0
  br i1 %tobool246.not, label %if.end248, label %return

if.end248:                                        ; preds = %if.end244
  %call249 = tail call i32 @test__ctzsi2(i32 noundef 68, i32 noundef 2) #3
  %tobool250.not = icmp eq i32 %call249, 0
  br i1 %tobool250.not, label %if.end252, label %return

if.end252:                                        ; preds = %if.end248
  %call253 = tail call i32 @test__ctzsi2(i32 noundef 69, i32 noundef 0) #3
  %tobool254.not = icmp eq i32 %call253, 0
  br i1 %tobool254.not, label %if.end256, label %return

if.end256:                                        ; preds = %if.end252
  %call257 = tail call i32 @test__ctzsi2(i32 noundef 70, i32 noundef 1) #3
  %tobool258.not = icmp eq i32 %call257, 0
  br i1 %tobool258.not, label %if.end260, label %return

if.end260:                                        ; preds = %if.end256
  %call261 = tail call i32 @test__ctzsi2(i32 noundef 71, i32 noundef 0) #3
  %tobool262.not = icmp eq i32 %call261, 0
  br i1 %tobool262.not, label %if.end264, label %return

if.end264:                                        ; preds = %if.end260
  %call265 = tail call i32 @test__ctzsi2(i32 noundef 72, i32 noundef 3) #3
  %tobool266.not = icmp eq i32 %call265, 0
  br i1 %tobool266.not, label %if.end268, label %return

if.end268:                                        ; preds = %if.end264
  %call269 = tail call i32 @test__ctzsi2(i32 noundef 73, i32 noundef 0) #3
  %tobool270.not = icmp eq i32 %call269, 0
  br i1 %tobool270.not, label %if.end272, label %return

if.end272:                                        ; preds = %if.end268
  %call273 = tail call i32 @test__ctzsi2(i32 noundef 74, i32 noundef 1) #3
  %tobool274.not = icmp eq i32 %call273, 0
  br i1 %tobool274.not, label %if.end276, label %return

if.end276:                                        ; preds = %if.end272
  %call277 = tail call i32 @test__ctzsi2(i32 noundef 75, i32 noundef 0) #3
  %tobool278.not = icmp eq i32 %call277, 0
  br i1 %tobool278.not, label %if.end280, label %return

if.end280:                                        ; preds = %if.end276
  %call281 = tail call i32 @test__ctzsi2(i32 noundef 76, i32 noundef 2) #3
  %tobool282.not = icmp eq i32 %call281, 0
  br i1 %tobool282.not, label %if.end284, label %return

if.end284:                                        ; preds = %if.end280
  %call285 = tail call i32 @test__ctzsi2(i32 noundef 77, i32 noundef 0) #3
  %tobool286.not = icmp eq i32 %call285, 0
  br i1 %tobool286.not, label %if.end288, label %return

if.end288:                                        ; preds = %if.end284
  %call289 = tail call i32 @test__ctzsi2(i32 noundef 78, i32 noundef 1) #3
  %tobool290.not = icmp eq i32 %call289, 0
  br i1 %tobool290.not, label %if.end292, label %return

if.end292:                                        ; preds = %if.end288
  %call293 = tail call i32 @test__ctzsi2(i32 noundef 79, i32 noundef 0) #3
  %tobool294.not = icmp eq i32 %call293, 0
  br i1 %tobool294.not, label %if.end296, label %return

if.end296:                                        ; preds = %if.end292
  %call297 = tail call i32 @test__ctzsi2(i32 noundef 80, i32 noundef 4) #3
  %tobool298.not = icmp eq i32 %call297, 0
  br i1 %tobool298.not, label %if.end300, label %return

if.end300:                                        ; preds = %if.end296
  %call301 = tail call i32 @test__ctzsi2(i32 noundef 82, i32 noundef 1) #3
  %tobool302.not = icmp eq i32 %call301, 0
  br i1 %tobool302.not, label %if.end304, label %return

if.end304:                                        ; preds = %if.end300
  %call305 = tail call i32 @test__ctzsi2(i32 noundef 83, i32 noundef 0) #3
  %tobool306.not = icmp eq i32 %call305, 0
  br i1 %tobool306.not, label %if.end308, label %return

if.end308:                                        ; preds = %if.end304
  %call309 = tail call i32 @test__ctzsi2(i32 noundef 84, i32 noundef 2) #3
  %tobool310.not = icmp eq i32 %call309, 0
  br i1 %tobool310.not, label %if.end312, label %return

if.end312:                                        ; preds = %if.end308
  %call313 = tail call i32 @test__ctzsi2(i32 noundef 85, i32 noundef 0) #3
  %tobool314.not = icmp eq i32 %call313, 0
  br i1 %tobool314.not, label %if.end316, label %return

if.end316:                                        ; preds = %if.end312
  %call317 = tail call i32 @test__ctzsi2(i32 noundef 86, i32 noundef 1) #3
  %tobool318.not = icmp eq i32 %call317, 0
  br i1 %tobool318.not, label %if.end320, label %return

if.end320:                                        ; preds = %if.end316
  %call321 = tail call i32 @test__ctzsi2(i32 noundef 87, i32 noundef 0) #3
  %tobool322.not = icmp eq i32 %call321, 0
  br i1 %tobool322.not, label %if.end324, label %return

if.end324:                                        ; preds = %if.end320
  %call325 = tail call i32 @test__ctzsi2(i32 noundef 88, i32 noundef 3) #3
  %tobool326.not = icmp eq i32 %call325, 0
  br i1 %tobool326.not, label %if.end328, label %return

if.end328:                                        ; preds = %if.end324
  %call329 = tail call i32 @test__ctzsi2(i32 noundef 89, i32 noundef 0) #3
  %tobool330.not = icmp eq i32 %call329, 0
  br i1 %tobool330.not, label %if.end332, label %return

if.end332:                                        ; preds = %if.end328
  %call333 = tail call i32 @test__ctzsi2(i32 noundef 90, i32 noundef 1) #3
  %tobool334.not = icmp eq i32 %call333, 0
  br i1 %tobool334.not, label %if.end336, label %return

if.end336:                                        ; preds = %if.end332
  %call337 = tail call i32 @test__ctzsi2(i32 noundef 91, i32 noundef 0) #3
  %tobool338.not = icmp eq i32 %call337, 0
  br i1 %tobool338.not, label %if.end340, label %return

if.end340:                                        ; preds = %if.end336
  %call341 = tail call i32 @test__ctzsi2(i32 noundef 92, i32 noundef 2) #3
  %tobool342.not = icmp eq i32 %call341, 0
  br i1 %tobool342.not, label %if.end344, label %return

if.end344:                                        ; preds = %if.end340
  %call345 = tail call i32 @test__ctzsi2(i32 noundef 93, i32 noundef 0) #3
  %tobool346.not = icmp eq i32 %call345, 0
  br i1 %tobool346.not, label %if.end348, label %return

if.end348:                                        ; preds = %if.end344
  %call349 = tail call i32 @test__ctzsi2(i32 noundef 94, i32 noundef 1) #3
  %tobool350.not = icmp eq i32 %call349, 0
  br i1 %tobool350.not, label %if.end352, label %return

if.end352:                                        ; preds = %if.end348
  %call353 = tail call i32 @test__ctzsi2(i32 noundef 95, i32 noundef 0) #3
  %tobool354.not = icmp eq i32 %call353, 0
  br i1 %tobool354.not, label %if.end356, label %return

if.end356:                                        ; preds = %if.end352
  %call357 = tail call i32 @test__ctzsi2(i32 noundef 96, i32 noundef 5) #3
  %tobool358.not = icmp eq i32 %call357, 0
  br i1 %tobool358.not, label %if.end360, label %return

if.end360:                                        ; preds = %if.end356
  %call361 = tail call i32 @test__ctzsi2(i32 noundef 98, i32 noundef 1) #3
  %tobool362.not = icmp eq i32 %call361, 0
  br i1 %tobool362.not, label %if.end364, label %return

if.end364:                                        ; preds = %if.end360
  %call365 = tail call i32 @test__ctzsi2(i32 noundef 99, i32 noundef 0) #3
  %tobool366.not = icmp eq i32 %call365, 0
  br i1 %tobool366.not, label %if.end368, label %return

if.end368:                                        ; preds = %if.end364
  %call369 = tail call i32 @test__ctzsi2(i32 noundef 100, i32 noundef 2) #3
  %tobool370.not = icmp eq i32 %call369, 0
  br i1 %tobool370.not, label %if.end372, label %return

if.end372:                                        ; preds = %if.end368
  %call373 = tail call i32 @test__ctzsi2(i32 noundef 101, i32 noundef 0) #3
  %tobool374.not = icmp eq i32 %call373, 0
  br i1 %tobool374.not, label %if.end376, label %return

if.end376:                                        ; preds = %if.end372
  %call377 = tail call i32 @test__ctzsi2(i32 noundef 102, i32 noundef 1) #3
  %tobool378.not = icmp eq i32 %call377, 0
  br i1 %tobool378.not, label %if.end380, label %return

if.end380:                                        ; preds = %if.end376
  %call381 = tail call i32 @test__ctzsi2(i32 noundef 103, i32 noundef 0) #3
  %tobool382.not = icmp eq i32 %call381, 0
  br i1 %tobool382.not, label %if.end384, label %return

if.end384:                                        ; preds = %if.end380
  %call385 = tail call i32 @test__ctzsi2(i32 noundef 104, i32 noundef 3) #3
  %tobool386.not = icmp eq i32 %call385, 0
  br i1 %tobool386.not, label %if.end388, label %return

if.end388:                                        ; preds = %if.end384
  %call389 = tail call i32 @test__ctzsi2(i32 noundef 105, i32 noundef 0) #3
  %tobool390.not = icmp eq i32 %call389, 0
  br i1 %tobool390.not, label %if.end392, label %return

if.end392:                                        ; preds = %if.end388
  %call393 = tail call i32 @test__ctzsi2(i32 noundef 106, i32 noundef 1) #3
  %tobool394.not = icmp eq i32 %call393, 0
  br i1 %tobool394.not, label %if.end396, label %return

if.end396:                                        ; preds = %if.end392
  %call397 = tail call i32 @test__ctzsi2(i32 noundef 107, i32 noundef 0) #3
  %tobool398.not = icmp eq i32 %call397, 0
  br i1 %tobool398.not, label %if.end400, label %return

if.end400:                                        ; preds = %if.end396
  %call401 = tail call i32 @test__ctzsi2(i32 noundef 108, i32 noundef 2) #3
  %tobool402.not = icmp eq i32 %call401, 0
  br i1 %tobool402.not, label %if.end404, label %return

if.end404:                                        ; preds = %if.end400
  %call405 = tail call i32 @test__ctzsi2(i32 noundef 109, i32 noundef 0) #3
  %tobool406.not = icmp eq i32 %call405, 0
  br i1 %tobool406.not, label %if.end408, label %return

if.end408:                                        ; preds = %if.end404
  %call409 = tail call i32 @test__ctzsi2(i32 noundef 110, i32 noundef 1) #3
  %tobool410.not = icmp eq i32 %call409, 0
  br i1 %tobool410.not, label %if.end412, label %return

if.end412:                                        ; preds = %if.end408
  %call413 = tail call i32 @test__ctzsi2(i32 noundef 111, i32 noundef 0) #3
  %tobool414.not = icmp eq i32 %call413, 0
  br i1 %tobool414.not, label %if.end416, label %return

if.end416:                                        ; preds = %if.end412
  %call417 = tail call i32 @test__ctzsi2(i32 noundef 112, i32 noundef 4) #3
  %tobool418.not = icmp eq i32 %call417, 0
  br i1 %tobool418.not, label %if.end420, label %return

if.end420:                                        ; preds = %if.end416
  %call421 = tail call i32 @test__ctzsi2(i32 noundef 114, i32 noundef 1) #3
  %tobool422.not = icmp eq i32 %call421, 0
  br i1 %tobool422.not, label %if.end424, label %return

if.end424:                                        ; preds = %if.end420
  %call425 = tail call i32 @test__ctzsi2(i32 noundef 115, i32 noundef 0) #3
  %tobool426.not = icmp eq i32 %call425, 0
  br i1 %tobool426.not, label %if.end428, label %return

if.end428:                                        ; preds = %if.end424
  %call429 = tail call i32 @test__ctzsi2(i32 noundef 116, i32 noundef 2) #3
  %tobool430.not = icmp eq i32 %call429, 0
  br i1 %tobool430.not, label %if.end432, label %return

if.end432:                                        ; preds = %if.end428
  %call433 = tail call i32 @test__ctzsi2(i32 noundef 117, i32 noundef 0) #3
  %tobool434.not = icmp eq i32 %call433, 0
  br i1 %tobool434.not, label %if.end436, label %return

if.end436:                                        ; preds = %if.end432
  %call437 = tail call i32 @test__ctzsi2(i32 noundef 118, i32 noundef 1) #3
  %tobool438.not = icmp eq i32 %call437, 0
  br i1 %tobool438.not, label %if.end440, label %return

if.end440:                                        ; preds = %if.end436
  %call441 = tail call i32 @test__ctzsi2(i32 noundef 119, i32 noundef 0) #3
  %tobool442.not = icmp eq i32 %call441, 0
  br i1 %tobool442.not, label %if.end444, label %return

if.end444:                                        ; preds = %if.end440
  %call445 = tail call i32 @test__ctzsi2(i32 noundef 120, i32 noundef 3) #3
  %tobool446.not = icmp eq i32 %call445, 0
  br i1 %tobool446.not, label %if.end448, label %return

if.end448:                                        ; preds = %if.end444
  %call449 = tail call i32 @test__ctzsi2(i32 noundef 121, i32 noundef 0) #3
  %tobool450.not = icmp eq i32 %call449, 0
  br i1 %tobool450.not, label %if.end452, label %return

if.end452:                                        ; preds = %if.end448
  %call453 = tail call i32 @test__ctzsi2(i32 noundef 122, i32 noundef 1) #3
  %tobool454.not = icmp eq i32 %call453, 0
  br i1 %tobool454.not, label %if.end456, label %return

if.end456:                                        ; preds = %if.end452
  %call457 = tail call i32 @test__ctzsi2(i32 noundef 123, i32 noundef 0) #3
  %tobool458.not = icmp eq i32 %call457, 0
  br i1 %tobool458.not, label %if.end460, label %return

if.end460:                                        ; preds = %if.end456
  %call461 = tail call i32 @test__ctzsi2(i32 noundef 124, i32 noundef 2) #3
  %tobool462.not = icmp eq i32 %call461, 0
  br i1 %tobool462.not, label %if.end464, label %return

if.end464:                                        ; preds = %if.end460
  %call465 = tail call i32 @test__ctzsi2(i32 noundef 125, i32 noundef 0) #3
  %tobool466.not = icmp eq i32 %call465, 0
  br i1 %tobool466.not, label %if.end468, label %return

if.end468:                                        ; preds = %if.end464
  %call469 = tail call i32 @test__ctzsi2(i32 noundef 126, i32 noundef 1) #3
  %tobool470.not = icmp eq i32 %call469, 0
  br i1 %tobool470.not, label %if.end472, label %return

if.end472:                                        ; preds = %if.end468
  %call473 = tail call i32 @test__ctzsi2(i32 noundef 127, i32 noundef 0) #3
  %tobool474.not = icmp eq i32 %call473, 0
  br i1 %tobool474.not, label %if.end476, label %return

if.end476:                                        ; preds = %if.end472
  %call477 = tail call i32 @test__ctzsi2(i32 noundef 128, i32 noundef 7) #3
  %tobool478.not = icmp eq i32 %call477, 0
  br i1 %tobool478.not, label %if.end480, label %return

if.end480:                                        ; preds = %if.end476
  %call481 = tail call i32 @test__ctzsi2(i32 noundef 130, i32 noundef 1) #3
  %tobool482.not = icmp eq i32 %call481, 0
  br i1 %tobool482.not, label %if.end484, label %return

if.end484:                                        ; preds = %if.end480
  %call485 = tail call i32 @test__ctzsi2(i32 noundef 131, i32 noundef 0) #3
  %tobool486.not = icmp eq i32 %call485, 0
  br i1 %tobool486.not, label %if.end488, label %return

if.end488:                                        ; preds = %if.end484
  %call489 = tail call i32 @test__ctzsi2(i32 noundef 132, i32 noundef 2) #3
  %tobool490.not = icmp eq i32 %call489, 0
  br i1 %tobool490.not, label %if.end492, label %return

if.end492:                                        ; preds = %if.end488
  %call493 = tail call i32 @test__ctzsi2(i32 noundef 133, i32 noundef 0) #3
  %tobool494.not = icmp eq i32 %call493, 0
  br i1 %tobool494.not, label %if.end496, label %return

if.end496:                                        ; preds = %if.end492
  %call497 = tail call i32 @test__ctzsi2(i32 noundef 134, i32 noundef 1) #3
  %tobool498.not = icmp eq i32 %call497, 0
  br i1 %tobool498.not, label %if.end500, label %return

if.end500:                                        ; preds = %if.end496
  %call501 = tail call i32 @test__ctzsi2(i32 noundef 135, i32 noundef 0) #3
  %tobool502.not = icmp eq i32 %call501, 0
  br i1 %tobool502.not, label %if.end504, label %return

if.end504:                                        ; preds = %if.end500
  %call505 = tail call i32 @test__ctzsi2(i32 noundef 136, i32 noundef 3) #3
  %tobool506.not = icmp eq i32 %call505, 0
  br i1 %tobool506.not, label %if.end508, label %return

if.end508:                                        ; preds = %if.end504
  %call509 = tail call i32 @test__ctzsi2(i32 noundef 137, i32 noundef 0) #3
  %tobool510.not = icmp eq i32 %call509, 0
  br i1 %tobool510.not, label %if.end512, label %return

if.end512:                                        ; preds = %if.end508
  %call513 = tail call i32 @test__ctzsi2(i32 noundef 138, i32 noundef 1) #3
  %tobool514.not = icmp eq i32 %call513, 0
  br i1 %tobool514.not, label %if.end516, label %return

if.end516:                                        ; preds = %if.end512
  %call517 = tail call i32 @test__ctzsi2(i32 noundef 139, i32 noundef 0) #3
  %tobool518.not = icmp eq i32 %call517, 0
  br i1 %tobool518.not, label %if.end520, label %return

if.end520:                                        ; preds = %if.end516
  %call521 = tail call i32 @test__ctzsi2(i32 noundef 140, i32 noundef 2) #3
  %tobool522.not = icmp eq i32 %call521, 0
  br i1 %tobool522.not, label %if.end524, label %return

if.end524:                                        ; preds = %if.end520
  %call525 = tail call i32 @test__ctzsi2(i32 noundef 141, i32 noundef 0) #3
  %tobool526.not = icmp eq i32 %call525, 0
  br i1 %tobool526.not, label %if.end528, label %return

if.end528:                                        ; preds = %if.end524
  %call529 = tail call i32 @test__ctzsi2(i32 noundef 142, i32 noundef 1) #3
  %tobool530.not = icmp eq i32 %call529, 0
  br i1 %tobool530.not, label %if.end532, label %return

if.end532:                                        ; preds = %if.end528
  %call533 = tail call i32 @test__ctzsi2(i32 noundef 143, i32 noundef 0) #3
  %tobool534.not = icmp eq i32 %call533, 0
  br i1 %tobool534.not, label %if.end536, label %return

if.end536:                                        ; preds = %if.end532
  %call537 = tail call i32 @test__ctzsi2(i32 noundef 144, i32 noundef 4) #3
  %tobool538.not = icmp eq i32 %call537, 0
  br i1 %tobool538.not, label %if.end540, label %return

if.end540:                                        ; preds = %if.end536
  %call541 = tail call i32 @test__ctzsi2(i32 noundef 146, i32 noundef 1) #3
  %tobool542.not = icmp eq i32 %call541, 0
  br i1 %tobool542.not, label %if.end544, label %return

if.end544:                                        ; preds = %if.end540
  %call545 = tail call i32 @test__ctzsi2(i32 noundef 147, i32 noundef 0) #3
  %tobool546.not = icmp eq i32 %call545, 0
  br i1 %tobool546.not, label %if.end548, label %return

if.end548:                                        ; preds = %if.end544
  %call549 = tail call i32 @test__ctzsi2(i32 noundef 148, i32 noundef 2) #3
  %tobool550.not = icmp eq i32 %call549, 0
  br i1 %tobool550.not, label %if.end552, label %return

if.end552:                                        ; preds = %if.end548
  %call553 = tail call i32 @test__ctzsi2(i32 noundef 149, i32 noundef 0) #3
  %tobool554.not = icmp eq i32 %call553, 0
  br i1 %tobool554.not, label %if.end556, label %return

if.end556:                                        ; preds = %if.end552
  %call557 = tail call i32 @test__ctzsi2(i32 noundef 150, i32 noundef 1) #3
  %tobool558.not = icmp eq i32 %call557, 0
  br i1 %tobool558.not, label %if.end560, label %return

if.end560:                                        ; preds = %if.end556
  %call561 = tail call i32 @test__ctzsi2(i32 noundef 151, i32 noundef 0) #3
  %tobool562.not = icmp eq i32 %call561, 0
  br i1 %tobool562.not, label %if.end564, label %return

if.end564:                                        ; preds = %if.end560
  %call565 = tail call i32 @test__ctzsi2(i32 noundef 152, i32 noundef 3) #3
  %tobool566.not = icmp eq i32 %call565, 0
  br i1 %tobool566.not, label %if.end568, label %return

if.end568:                                        ; preds = %if.end564
  %call569 = tail call i32 @test__ctzsi2(i32 noundef 153, i32 noundef 0) #3
  %tobool570.not = icmp eq i32 %call569, 0
  br i1 %tobool570.not, label %if.end572, label %return

if.end572:                                        ; preds = %if.end568
  %call573 = tail call i32 @test__ctzsi2(i32 noundef 154, i32 noundef 1) #3
  %tobool574.not = icmp eq i32 %call573, 0
  br i1 %tobool574.not, label %if.end576, label %return

if.end576:                                        ; preds = %if.end572
  %call577 = tail call i32 @test__ctzsi2(i32 noundef 155, i32 noundef 0) #3
  %tobool578.not = icmp eq i32 %call577, 0
  br i1 %tobool578.not, label %if.end580, label %return

if.end580:                                        ; preds = %if.end576
  %call581 = tail call i32 @test__ctzsi2(i32 noundef 156, i32 noundef 2) #3
  %tobool582.not = icmp eq i32 %call581, 0
  br i1 %tobool582.not, label %if.end584, label %return

if.end584:                                        ; preds = %if.end580
  %call585 = tail call i32 @test__ctzsi2(i32 noundef 157, i32 noundef 0) #3
  %tobool586.not = icmp eq i32 %call585, 0
  br i1 %tobool586.not, label %if.end588, label %return

if.end588:                                        ; preds = %if.end584
  %call589 = tail call i32 @test__ctzsi2(i32 noundef 158, i32 noundef 1) #3
  %tobool590.not = icmp eq i32 %call589, 0
  br i1 %tobool590.not, label %if.end592, label %return

if.end592:                                        ; preds = %if.end588
  %call593 = tail call i32 @test__ctzsi2(i32 noundef 159, i32 noundef 0) #3
  %tobool594.not = icmp eq i32 %call593, 0
  br i1 %tobool594.not, label %if.end596, label %return

if.end596:                                        ; preds = %if.end592
  %call597 = tail call i32 @test__ctzsi2(i32 noundef 160, i32 noundef 5) #3
  %tobool598.not = icmp eq i32 %call597, 0
  br i1 %tobool598.not, label %if.end600, label %return

if.end600:                                        ; preds = %if.end596
  %call601 = tail call i32 @test__ctzsi2(i32 noundef 162, i32 noundef 1) #3
  %tobool602.not = icmp eq i32 %call601, 0
  br i1 %tobool602.not, label %if.end604, label %return

if.end604:                                        ; preds = %if.end600
  %call605 = tail call i32 @test__ctzsi2(i32 noundef 163, i32 noundef 0) #3
  %tobool606.not = icmp eq i32 %call605, 0
  br i1 %tobool606.not, label %if.end608, label %return

if.end608:                                        ; preds = %if.end604
  %call609 = tail call i32 @test__ctzsi2(i32 noundef 164, i32 noundef 2) #3
  %tobool610.not = icmp eq i32 %call609, 0
  br i1 %tobool610.not, label %if.end612, label %return

if.end612:                                        ; preds = %if.end608
  %call613 = tail call i32 @test__ctzsi2(i32 noundef 165, i32 noundef 0) #3
  %tobool614.not = icmp eq i32 %call613, 0
  br i1 %tobool614.not, label %if.end616, label %return

if.end616:                                        ; preds = %if.end612
  %call617 = tail call i32 @test__ctzsi2(i32 noundef 166, i32 noundef 1) #3
  %tobool618.not = icmp eq i32 %call617, 0
  br i1 %tobool618.not, label %if.end620, label %return

if.end620:                                        ; preds = %if.end616
  %call621 = tail call i32 @test__ctzsi2(i32 noundef 167, i32 noundef 0) #3
  %tobool622.not = icmp eq i32 %call621, 0
  br i1 %tobool622.not, label %if.end624, label %return

if.end624:                                        ; preds = %if.end620
  %call625 = tail call i32 @test__ctzsi2(i32 noundef 168, i32 noundef 3) #3
  %tobool626.not = icmp eq i32 %call625, 0
  br i1 %tobool626.not, label %if.end628, label %return

if.end628:                                        ; preds = %if.end624
  %call629 = tail call i32 @test__ctzsi2(i32 noundef 169, i32 noundef 0) #3
  %tobool630.not = icmp eq i32 %call629, 0
  br i1 %tobool630.not, label %if.end632, label %return

if.end632:                                        ; preds = %if.end628
  %call633 = tail call i32 @test__ctzsi2(i32 noundef 170, i32 noundef 1) #3
  %tobool634.not = icmp eq i32 %call633, 0
  br i1 %tobool634.not, label %if.end636, label %return

if.end636:                                        ; preds = %if.end632
  %call637 = tail call i32 @test__ctzsi2(i32 noundef 171, i32 noundef 0) #3
  %tobool638.not = icmp eq i32 %call637, 0
  br i1 %tobool638.not, label %if.end640, label %return

if.end640:                                        ; preds = %if.end636
  %call641 = tail call i32 @test__ctzsi2(i32 noundef 172, i32 noundef 2) #3
  %tobool642.not = icmp eq i32 %call641, 0
  br i1 %tobool642.not, label %if.end644, label %return

if.end644:                                        ; preds = %if.end640
  %call645 = tail call i32 @test__ctzsi2(i32 noundef 173, i32 noundef 0) #3
  %tobool646.not = icmp eq i32 %call645, 0
  br i1 %tobool646.not, label %if.end648, label %return

if.end648:                                        ; preds = %if.end644
  %call649 = tail call i32 @test__ctzsi2(i32 noundef 174, i32 noundef 1) #3
  %tobool650.not = icmp eq i32 %call649, 0
  br i1 %tobool650.not, label %if.end652, label %return

if.end652:                                        ; preds = %if.end648
  %call653 = tail call i32 @test__ctzsi2(i32 noundef 175, i32 noundef 0) #3
  %tobool654.not = icmp eq i32 %call653, 0
  br i1 %tobool654.not, label %if.end656, label %return

if.end656:                                        ; preds = %if.end652
  %call657 = tail call i32 @test__ctzsi2(i32 noundef 176, i32 noundef 4) #3
  %tobool658.not = icmp eq i32 %call657, 0
  br i1 %tobool658.not, label %if.end660, label %return

if.end660:                                        ; preds = %if.end656
  %call661 = tail call i32 @test__ctzsi2(i32 noundef 178, i32 noundef 1) #3
  %tobool662.not = icmp eq i32 %call661, 0
  br i1 %tobool662.not, label %if.end664, label %return

if.end664:                                        ; preds = %if.end660
  %call665 = tail call i32 @test__ctzsi2(i32 noundef 179, i32 noundef 0) #3
  %tobool666.not = icmp eq i32 %call665, 0
  br i1 %tobool666.not, label %if.end668, label %return

if.end668:                                        ; preds = %if.end664
  %call669 = tail call i32 @test__ctzsi2(i32 noundef 180, i32 noundef 2) #3
  %tobool670.not = icmp eq i32 %call669, 0
  br i1 %tobool670.not, label %if.end672, label %return

if.end672:                                        ; preds = %if.end668
  %call673 = tail call i32 @test__ctzsi2(i32 noundef 181, i32 noundef 0) #3
  %tobool674.not = icmp eq i32 %call673, 0
  br i1 %tobool674.not, label %if.end676, label %return

if.end676:                                        ; preds = %if.end672
  %call677 = tail call i32 @test__ctzsi2(i32 noundef 182, i32 noundef 1) #3
  %tobool678.not = icmp eq i32 %call677, 0
  br i1 %tobool678.not, label %if.end680, label %return

if.end680:                                        ; preds = %if.end676
  %call681 = tail call i32 @test__ctzsi2(i32 noundef 183, i32 noundef 0) #3
  %tobool682.not = icmp eq i32 %call681, 0
  br i1 %tobool682.not, label %if.end684, label %return

if.end684:                                        ; preds = %if.end680
  %call685 = tail call i32 @test__ctzsi2(i32 noundef 184, i32 noundef 3) #3
  %tobool686.not = icmp eq i32 %call685, 0
  br i1 %tobool686.not, label %if.end688, label %return

if.end688:                                        ; preds = %if.end684
  %call689 = tail call i32 @test__ctzsi2(i32 noundef 185, i32 noundef 0) #3
  %tobool690.not = icmp eq i32 %call689, 0
  br i1 %tobool690.not, label %if.end692, label %return

if.end692:                                        ; preds = %if.end688
  %call693 = tail call i32 @test__ctzsi2(i32 noundef 186, i32 noundef 1) #3
  %tobool694.not = icmp eq i32 %call693, 0
  br i1 %tobool694.not, label %if.end696, label %return

if.end696:                                        ; preds = %if.end692
  %call697 = tail call i32 @test__ctzsi2(i32 noundef 187, i32 noundef 0) #3
  %tobool698.not = icmp eq i32 %call697, 0
  br i1 %tobool698.not, label %if.end700, label %return

if.end700:                                        ; preds = %if.end696
  %call701 = tail call i32 @test__ctzsi2(i32 noundef 188, i32 noundef 2) #3
  %tobool702.not = icmp eq i32 %call701, 0
  br i1 %tobool702.not, label %if.end704, label %return

if.end704:                                        ; preds = %if.end700
  %call705 = tail call i32 @test__ctzsi2(i32 noundef 189, i32 noundef 0) #3
  %tobool706.not = icmp eq i32 %call705, 0
  br i1 %tobool706.not, label %if.end708, label %return

if.end708:                                        ; preds = %if.end704
  %call709 = tail call i32 @test__ctzsi2(i32 noundef 190, i32 noundef 1) #3
  %tobool710.not = icmp eq i32 %call709, 0
  br i1 %tobool710.not, label %if.end712, label %return

if.end712:                                        ; preds = %if.end708
  %call713 = tail call i32 @test__ctzsi2(i32 noundef 191, i32 noundef 0) #3
  %tobool714.not = icmp eq i32 %call713, 0
  br i1 %tobool714.not, label %if.end716, label %return

if.end716:                                        ; preds = %if.end712
  %call717 = tail call i32 @test__ctzsi2(i32 noundef 192, i32 noundef 6) #3
  %tobool718.not = icmp eq i32 %call717, 0
  br i1 %tobool718.not, label %if.end720, label %return

if.end720:                                        ; preds = %if.end716
  %call721 = tail call i32 @test__ctzsi2(i32 noundef 194, i32 noundef 1) #3
  %tobool722.not = icmp eq i32 %call721, 0
  br i1 %tobool722.not, label %if.end724, label %return

if.end724:                                        ; preds = %if.end720
  %call725 = tail call i32 @test__ctzsi2(i32 noundef 195, i32 noundef 0) #3
  %tobool726.not = icmp eq i32 %call725, 0
  br i1 %tobool726.not, label %if.end728, label %return

if.end728:                                        ; preds = %if.end724
  %call729 = tail call i32 @test__ctzsi2(i32 noundef 196, i32 noundef 2) #3
  %tobool730.not = icmp eq i32 %call729, 0
  br i1 %tobool730.not, label %if.end732, label %return

if.end732:                                        ; preds = %if.end728
  %call733 = tail call i32 @test__ctzsi2(i32 noundef 197, i32 noundef 0) #3
  %tobool734.not = icmp eq i32 %call733, 0
  br i1 %tobool734.not, label %if.end736, label %return

if.end736:                                        ; preds = %if.end732
  %call737 = tail call i32 @test__ctzsi2(i32 noundef 198, i32 noundef 1) #3
  %tobool738.not = icmp eq i32 %call737, 0
  br i1 %tobool738.not, label %if.end740, label %return

if.end740:                                        ; preds = %if.end736
  %call741 = tail call i32 @test__ctzsi2(i32 noundef 199, i32 noundef 0) #3
  %tobool742.not = icmp eq i32 %call741, 0
  br i1 %tobool742.not, label %if.end744, label %return

if.end744:                                        ; preds = %if.end740
  %call745 = tail call i32 @test__ctzsi2(i32 noundef 200, i32 noundef 3) #3
  %tobool746.not = icmp eq i32 %call745, 0
  br i1 %tobool746.not, label %if.end748, label %return

if.end748:                                        ; preds = %if.end744
  %call749 = tail call i32 @test__ctzsi2(i32 noundef 201, i32 noundef 0) #3
  %tobool750.not = icmp eq i32 %call749, 0
  br i1 %tobool750.not, label %if.end752, label %return

if.end752:                                        ; preds = %if.end748
  %call753 = tail call i32 @test__ctzsi2(i32 noundef 202, i32 noundef 1) #3
  %tobool754.not = icmp eq i32 %call753, 0
  br i1 %tobool754.not, label %if.end756, label %return

if.end756:                                        ; preds = %if.end752
  %call757 = tail call i32 @test__ctzsi2(i32 noundef 203, i32 noundef 0) #3
  %tobool758.not = icmp eq i32 %call757, 0
  br i1 %tobool758.not, label %if.end760, label %return

if.end760:                                        ; preds = %if.end756
  %call761 = tail call i32 @test__ctzsi2(i32 noundef 204, i32 noundef 2) #3
  %tobool762.not = icmp eq i32 %call761, 0
  br i1 %tobool762.not, label %if.end764, label %return

if.end764:                                        ; preds = %if.end760
  %call765 = tail call i32 @test__ctzsi2(i32 noundef 205, i32 noundef 0) #3
  %tobool766.not = icmp eq i32 %call765, 0
  br i1 %tobool766.not, label %if.end768, label %return

if.end768:                                        ; preds = %if.end764
  %call769 = tail call i32 @test__ctzsi2(i32 noundef 206, i32 noundef 1) #3
  %tobool770.not = icmp eq i32 %call769, 0
  br i1 %tobool770.not, label %if.end772, label %return

if.end772:                                        ; preds = %if.end768
  %call773 = tail call i32 @test__ctzsi2(i32 noundef 207, i32 noundef 0) #3
  %tobool774.not = icmp eq i32 %call773, 0
  br i1 %tobool774.not, label %if.end776, label %return

if.end776:                                        ; preds = %if.end772
  %call777 = tail call i32 @test__ctzsi2(i32 noundef 208, i32 noundef 4) #3
  %tobool778.not = icmp eq i32 %call777, 0
  br i1 %tobool778.not, label %if.end780, label %return

if.end780:                                        ; preds = %if.end776
  %call781 = tail call i32 @test__ctzsi2(i32 noundef 210, i32 noundef 1) #3
  %tobool782.not = icmp eq i32 %call781, 0
  br i1 %tobool782.not, label %if.end784, label %return

if.end784:                                        ; preds = %if.end780
  %call785 = tail call i32 @test__ctzsi2(i32 noundef 211, i32 noundef 0) #3
  %tobool786.not = icmp eq i32 %call785, 0
  br i1 %tobool786.not, label %if.end788, label %return

if.end788:                                        ; preds = %if.end784
  %call789 = tail call i32 @test__ctzsi2(i32 noundef 212, i32 noundef 2) #3
  %tobool790.not = icmp eq i32 %call789, 0
  br i1 %tobool790.not, label %if.end792, label %return

if.end792:                                        ; preds = %if.end788
  %call793 = tail call i32 @test__ctzsi2(i32 noundef 213, i32 noundef 0) #3
  %tobool794.not = icmp eq i32 %call793, 0
  br i1 %tobool794.not, label %if.end796, label %return

if.end796:                                        ; preds = %if.end792
  %call797 = tail call i32 @test__ctzsi2(i32 noundef 214, i32 noundef 1) #3
  %tobool798.not = icmp eq i32 %call797, 0
  br i1 %tobool798.not, label %if.end800, label %return

if.end800:                                        ; preds = %if.end796
  %call801 = tail call i32 @test__ctzsi2(i32 noundef 215, i32 noundef 0) #3
  %tobool802.not = icmp eq i32 %call801, 0
  br i1 %tobool802.not, label %if.end804, label %return

if.end804:                                        ; preds = %if.end800
  %call805 = tail call i32 @test__ctzsi2(i32 noundef 216, i32 noundef 3) #3
  %tobool806.not = icmp eq i32 %call805, 0
  br i1 %tobool806.not, label %if.end808, label %return

if.end808:                                        ; preds = %if.end804
  %call809 = tail call i32 @test__ctzsi2(i32 noundef 217, i32 noundef 0) #3
  %tobool810.not = icmp eq i32 %call809, 0
  br i1 %tobool810.not, label %if.end812, label %return

if.end812:                                        ; preds = %if.end808
  %call813 = tail call i32 @test__ctzsi2(i32 noundef 218, i32 noundef 1) #3
  %tobool814.not = icmp eq i32 %call813, 0
  br i1 %tobool814.not, label %if.end816, label %return

if.end816:                                        ; preds = %if.end812
  %call817 = tail call i32 @test__ctzsi2(i32 noundef 219, i32 noundef 0) #3
  %tobool818.not = icmp eq i32 %call817, 0
  br i1 %tobool818.not, label %if.end820, label %return

if.end820:                                        ; preds = %if.end816
  %call821 = tail call i32 @test__ctzsi2(i32 noundef 220, i32 noundef 2) #3
  %tobool822.not = icmp eq i32 %call821, 0
  br i1 %tobool822.not, label %if.end824, label %return

if.end824:                                        ; preds = %if.end820
  %call825 = tail call i32 @test__ctzsi2(i32 noundef 221, i32 noundef 0) #3
  %tobool826.not = icmp eq i32 %call825, 0
  br i1 %tobool826.not, label %if.end828, label %return

if.end828:                                        ; preds = %if.end824
  %call829 = tail call i32 @test__ctzsi2(i32 noundef 222, i32 noundef 1) #3
  %tobool830.not = icmp eq i32 %call829, 0
  br i1 %tobool830.not, label %if.end832, label %return

if.end832:                                        ; preds = %if.end828
  %call833 = tail call i32 @test__ctzsi2(i32 noundef 223, i32 noundef 0) #3
  %tobool834.not = icmp eq i32 %call833, 0
  br i1 %tobool834.not, label %if.end836, label %return

if.end836:                                        ; preds = %if.end832
  %call837 = tail call i32 @test__ctzsi2(i32 noundef 224, i32 noundef 5) #3
  %tobool838.not = icmp eq i32 %call837, 0
  br i1 %tobool838.not, label %if.end840, label %return

if.end840:                                        ; preds = %if.end836
  %call841 = tail call i32 @test__ctzsi2(i32 noundef 226, i32 noundef 1) #3
  %tobool842.not = icmp eq i32 %call841, 0
  br i1 %tobool842.not, label %if.end844, label %return

if.end844:                                        ; preds = %if.end840
  %call845 = tail call i32 @test__ctzsi2(i32 noundef 227, i32 noundef 0) #3
  %tobool846.not = icmp eq i32 %call845, 0
  br i1 %tobool846.not, label %if.end848, label %return

if.end848:                                        ; preds = %if.end844
  %call849 = tail call i32 @test__ctzsi2(i32 noundef 228, i32 noundef 2) #3
  %tobool850.not = icmp eq i32 %call849, 0
  br i1 %tobool850.not, label %if.end852, label %return

if.end852:                                        ; preds = %if.end848
  %call853 = tail call i32 @test__ctzsi2(i32 noundef 229, i32 noundef 0) #3
  %tobool854.not = icmp eq i32 %call853, 0
  br i1 %tobool854.not, label %if.end856, label %return

if.end856:                                        ; preds = %if.end852
  %call857 = tail call i32 @test__ctzsi2(i32 noundef 230, i32 noundef 1) #3
  %tobool858.not = icmp eq i32 %call857, 0
  br i1 %tobool858.not, label %if.end860, label %return

if.end860:                                        ; preds = %if.end856
  %call861 = tail call i32 @test__ctzsi2(i32 noundef 231, i32 noundef 0) #3
  %tobool862.not = icmp eq i32 %call861, 0
  br i1 %tobool862.not, label %if.end864, label %return

if.end864:                                        ; preds = %if.end860
  %call865 = tail call i32 @test__ctzsi2(i32 noundef 232, i32 noundef 3) #3
  %tobool866.not = icmp eq i32 %call865, 0
  br i1 %tobool866.not, label %if.end868, label %return

if.end868:                                        ; preds = %if.end864
  %call869 = tail call i32 @test__ctzsi2(i32 noundef 233, i32 noundef 0) #3
  %tobool870.not = icmp eq i32 %call869, 0
  br i1 %tobool870.not, label %if.end872, label %return

if.end872:                                        ; preds = %if.end868
  %call873 = tail call i32 @test__ctzsi2(i32 noundef 234, i32 noundef 1) #3
  %tobool874.not = icmp eq i32 %call873, 0
  br i1 %tobool874.not, label %if.end876, label %return

if.end876:                                        ; preds = %if.end872
  %call877 = tail call i32 @test__ctzsi2(i32 noundef 235, i32 noundef 0) #3
  %tobool878.not = icmp eq i32 %call877, 0
  br i1 %tobool878.not, label %if.end880, label %return

if.end880:                                        ; preds = %if.end876
  %call881 = tail call i32 @test__ctzsi2(i32 noundef 236, i32 noundef 2) #3
  %tobool882.not = icmp eq i32 %call881, 0
  br i1 %tobool882.not, label %if.end884, label %return

if.end884:                                        ; preds = %if.end880
  %call885 = tail call i32 @test__ctzsi2(i32 noundef 237, i32 noundef 0) #3
  %tobool886.not = icmp eq i32 %call885, 0
  br i1 %tobool886.not, label %if.end888, label %return

if.end888:                                        ; preds = %if.end884
  %call889 = tail call i32 @test__ctzsi2(i32 noundef 238, i32 noundef 1) #3
  %tobool890.not = icmp eq i32 %call889, 0
  br i1 %tobool890.not, label %if.end892, label %return

if.end892:                                        ; preds = %if.end888
  %call893 = tail call i32 @test__ctzsi2(i32 noundef 239, i32 noundef 0) #3
  %tobool894.not = icmp eq i32 %call893, 0
  br i1 %tobool894.not, label %if.end896, label %return

if.end896:                                        ; preds = %if.end892
  %call897 = tail call i32 @test__ctzsi2(i32 noundef 240, i32 noundef 4) #3
  %tobool898.not = icmp eq i32 %call897, 0
  br i1 %tobool898.not, label %if.end900, label %return

if.end900:                                        ; preds = %if.end896
  %call901 = tail call i32 @test__ctzsi2(i32 noundef 242, i32 noundef 1) #3
  %tobool902.not = icmp eq i32 %call901, 0
  br i1 %tobool902.not, label %if.end904, label %return

if.end904:                                        ; preds = %if.end900
  %call905 = tail call i32 @test__ctzsi2(i32 noundef 243, i32 noundef 0) #3
  %tobool906.not = icmp eq i32 %call905, 0
  br i1 %tobool906.not, label %if.end908, label %return

if.end908:                                        ; preds = %if.end904
  %call909 = tail call i32 @test__ctzsi2(i32 noundef 244, i32 noundef 2) #3
  %tobool910.not = icmp eq i32 %call909, 0
  br i1 %tobool910.not, label %if.end912, label %return

if.end912:                                        ; preds = %if.end908
  %call913 = tail call i32 @test__ctzsi2(i32 noundef 245, i32 noundef 0) #3
  %tobool914.not = icmp eq i32 %call913, 0
  br i1 %tobool914.not, label %if.end916, label %return

if.end916:                                        ; preds = %if.end912
  %call917 = tail call i32 @test__ctzsi2(i32 noundef 246, i32 noundef 1) #3
  %tobool918.not = icmp eq i32 %call917, 0
  br i1 %tobool918.not, label %if.end920, label %return

if.end920:                                        ; preds = %if.end916
  %call921 = tail call i32 @test__ctzsi2(i32 noundef 247, i32 noundef 0) #3
  %tobool922.not = icmp eq i32 %call921, 0
  br i1 %tobool922.not, label %if.end924, label %return

if.end924:                                        ; preds = %if.end920
  %call925 = tail call i32 @test__ctzsi2(i32 noundef 248, i32 noundef 3) #3
  %tobool926.not = icmp eq i32 %call925, 0
  br i1 %tobool926.not, label %if.end928, label %return

if.end928:                                        ; preds = %if.end924
  %call929 = tail call i32 @test__ctzsi2(i32 noundef 249, i32 noundef 0) #3
  %tobool930.not = icmp eq i32 %call929, 0
  br i1 %tobool930.not, label %if.end932, label %return

if.end932:                                        ; preds = %if.end928
  %call933 = tail call i32 @test__ctzsi2(i32 noundef 250, i32 noundef 1) #3
  %tobool934.not = icmp eq i32 %call933, 0
  br i1 %tobool934.not, label %if.end936, label %return

if.end936:                                        ; preds = %if.end932
  %call937 = tail call i32 @test__ctzsi2(i32 noundef 251, i32 noundef 0) #3
  %tobool938.not = icmp eq i32 %call937, 0
  br i1 %tobool938.not, label %if.end940, label %return

if.end940:                                        ; preds = %if.end936
  %call941 = tail call i32 @test__ctzsi2(i32 noundef 252, i32 noundef 2) #3
  %tobool942.not = icmp eq i32 %call941, 0
  br i1 %tobool942.not, label %if.end944, label %return

if.end944:                                        ; preds = %if.end940
  %call945 = tail call i32 @test__ctzsi2(i32 noundef 253, i32 noundef 0) #3
  %tobool946.not = icmp eq i32 %call945, 0
  br i1 %tobool946.not, label %if.end948, label %return

if.end948:                                        ; preds = %if.end944
  %call949 = tail call i32 @test__ctzsi2(i32 noundef 254, i32 noundef 1) #3
  %tobool950.not = icmp eq i32 %call949, 0
  br i1 %tobool950.not, label %if.end952, label %return

if.end952:                                        ; preds = %if.end948
  %call953 = tail call i32 @test__ctzsi2(i32 noundef 255, i32 noundef 0) #3
  %tobool954.not = icmp eq i32 %call953, 0
  br i1 %tobool954.not, label %if.end956, label %return

if.end956:                                        ; preds = %if.end952
  %call957 = tail call i32 @test__ctzsi2(i32 noundef 256, i32 noundef 8) #3
  %tobool958.not = icmp eq i32 %call957, 0
  br i1 %tobool958.not, label %if.end960, label %return

if.end960:                                        ; preds = %if.end956
  %call961 = tail call i32 @test__ctzsi2(i32 noundef 512, i32 noundef 9) #3
  %tobool962.not = icmp eq i32 %call961, 0
  br i1 %tobool962.not, label %if.end964, label %return

if.end964:                                        ; preds = %if.end960
  %call965 = tail call i32 @test__ctzsi2(i32 noundef 1024, i32 noundef 10) #3
  %tobool966.not = icmp eq i32 %call965, 0
  br i1 %tobool966.not, label %if.end968, label %return

if.end968:                                        ; preds = %if.end964
  %call969 = tail call i32 @test__ctzsi2(i32 noundef 2048, i32 noundef 11) #3
  %tobool970.not = icmp eq i32 %call969, 0
  br i1 %tobool970.not, label %if.end972, label %return

if.end972:                                        ; preds = %if.end968
  %call973 = tail call i32 @test__ctzsi2(i32 noundef 4096, i32 noundef 12) #3
  %tobool974.not = icmp eq i32 %call973, 0
  br i1 %tobool974.not, label %if.end976, label %return

if.end976:                                        ; preds = %if.end972
  %call977 = tail call i32 @test__ctzsi2(i32 noundef 8192, i32 noundef 13) #3
  %tobool978.not = icmp eq i32 %call977, 0
  br i1 %tobool978.not, label %if.end980, label %return

if.end980:                                        ; preds = %if.end976
  %call981 = tail call i32 @test__ctzsi2(i32 noundef 16384, i32 noundef 14) #3
  %tobool982.not = icmp eq i32 %call981, 0
  br i1 %tobool982.not, label %if.end984, label %return

if.end984:                                        ; preds = %if.end980
  %call985 = tail call i32 @test__ctzsi2(i32 noundef 32768, i32 noundef 15) #3
  %tobool986.not = icmp eq i32 %call985, 0
  br i1 %tobool986.not, label %if.end988, label %return

if.end988:                                        ; preds = %if.end984
  %call989 = tail call i32 @test__ctzsi2(i32 noundef 65536, i32 noundef 16) #3
  %tobool990.not = icmp eq i32 %call989, 0
  br i1 %tobool990.not, label %if.end992, label %return

if.end992:                                        ; preds = %if.end988
  %call993 = tail call i32 @test__ctzsi2(i32 noundef 131072, i32 noundef 17) #3
  %tobool994.not = icmp eq i32 %call993, 0
  br i1 %tobool994.not, label %if.end996, label %return

if.end996:                                        ; preds = %if.end992
  %call997 = tail call i32 @test__ctzsi2(i32 noundef 262144, i32 noundef 18) #3
  %tobool998.not = icmp eq i32 %call997, 0
  br i1 %tobool998.not, label %if.end1000, label %return

if.end1000:                                       ; preds = %if.end996
  %call1001 = tail call i32 @test__ctzsi2(i32 noundef 524288, i32 noundef 19) #3
  %tobool1002.not = icmp eq i32 %call1001, 0
  br i1 %tobool1002.not, label %if.end1004, label %return

if.end1004:                                       ; preds = %if.end1000
  %call1005 = tail call i32 @test__ctzsi2(i32 noundef 1048576, i32 noundef 20) #3
  %tobool1006.not = icmp eq i32 %call1005, 0
  br i1 %tobool1006.not, label %if.end1008, label %return

if.end1008:                                       ; preds = %if.end1004
  %call1009 = tail call i32 @test__ctzsi2(i32 noundef 2097152, i32 noundef 21) #3
  %tobool1010.not = icmp eq i32 %call1009, 0
  br i1 %tobool1010.not, label %if.end1012, label %return

if.end1012:                                       ; preds = %if.end1008
  %call1013 = tail call i32 @test__ctzsi2(i32 noundef 4194304, i32 noundef 22) #3
  %tobool1014.not = icmp eq i32 %call1013, 0
  br i1 %tobool1014.not, label %if.end1016, label %return

if.end1016:                                       ; preds = %if.end1012
  %call1017 = tail call i32 @test__ctzsi2(i32 noundef 8388608, i32 noundef 23) #3
  %tobool1018.not = icmp eq i32 %call1017, 0
  br i1 %tobool1018.not, label %if.end1020, label %return

if.end1020:                                       ; preds = %if.end1016
  %call1021 = tail call i32 @test__ctzsi2(i32 noundef 16777216, i32 noundef 24) #3
  %tobool1022.not = icmp eq i32 %call1021, 0
  br i1 %tobool1022.not, label %if.end1024, label %return

if.end1024:                                       ; preds = %if.end1020
  %call1025 = tail call i32 @test__ctzsi2(i32 noundef 33554432, i32 noundef 25) #3
  %tobool1026.not = icmp eq i32 %call1025, 0
  br i1 %tobool1026.not, label %if.end1028, label %return

if.end1028:                                       ; preds = %if.end1024
  %call1029 = tail call i32 @test__ctzsi2(i32 noundef 67108864, i32 noundef 26) #3
  %tobool1030.not = icmp eq i32 %call1029, 0
  br i1 %tobool1030.not, label %if.end1032, label %return

if.end1032:                                       ; preds = %if.end1028
  %call1033 = tail call i32 @test__ctzsi2(i32 noundef 134217728, i32 noundef 27) #3
  %tobool1034.not = icmp eq i32 %call1033, 0
  br i1 %tobool1034.not, label %if.end1036, label %return

if.end1036:                                       ; preds = %if.end1032
  %call1037 = tail call i32 @test__ctzsi2(i32 noundef 268435456, i32 noundef 28) #3
  %tobool1038.not = icmp eq i32 %call1037, 0
  br i1 %tobool1038.not, label %if.end1040, label %return

if.end1040:                                       ; preds = %if.end1036
  %call1041 = tail call i32 @test__ctzsi2(i32 noundef 536870912, i32 noundef 29) #3
  %tobool1042.not = icmp eq i32 %call1041, 0
  br i1 %tobool1042.not, label %if.end1044, label %return

if.end1044:                                       ; preds = %if.end1040
  %call1045 = tail call i32 @test__ctzsi2(i32 noundef 1073741824, i32 noundef 30) #3
  %tobool1046.not = icmp eq i32 %call1045, 0
  br i1 %tobool1046.not, label %if.end1048, label %return

if.end1048:                                       ; preds = %if.end1044
  %call1049 = tail call i32 @test__ctzsi2(i32 noundef -2147483648, i32 noundef 31) #3
  br label %return

return:                                           ; preds = %test__ctzsi2.exit1070, %test__ctzsi2.exit1064, %test__ctzsi2.exit1058, %test__ctzsi2.exit, %if.end1048, %if.end1044, %if.end1040, %if.end1036, %if.end1032, %if.end1028, %if.end1024, %if.end1020, %if.end1016, %if.end1012, %if.end1008, %if.end1004, %if.end1000, %if.end996, %if.end992, %if.end988, %if.end984, %if.end980, %if.end976, %if.end972, %if.end968, %if.end964, %if.end960, %if.end956, %if.end952, %if.end948, %if.end944, %if.end940, %if.end936, %if.end932, %if.end928, %if.end924, %if.end920, %if.end916, %if.end912, %if.end908, %if.end904, %if.end900, %if.end896, %if.end892, %if.end888, %if.end884, %if.end880, %if.end876, %if.end872, %if.end868, %if.end864, %if.end860, %if.end856, %if.end852, %if.end848, %if.end844, %if.end840, %if.end836, %if.end832, %if.end828, %if.end824, %if.end820, %if.end816, %if.end812, %if.end808, %if.end804, %if.end800, %if.end796, %if.end792, %if.end788, %if.end784, %if.end780, %if.end776, %if.end772, %if.end768, %if.end764, %if.end760, %if.end756, %if.end752, %if.end748, %if.end744, %if.end740, %if.end736, %if.end732, %if.end728, %if.end724, %if.end720, %if.end716, %if.end712, %if.end708, %if.end704, %if.end700, %if.end696, %if.end692, %if.end688, %if.end684, %if.end680, %if.end676, %if.end672, %if.end668, %if.end664, %if.end660, %if.end656, %if.end652, %if.end648, %if.end644, %if.end640, %if.end636, %if.end632, %if.end628, %if.end624, %if.end620, %if.end616, %if.end612, %if.end608, %if.end604, %if.end600, %if.end596, %if.end592, %if.end588, %if.end584, %if.end580, %if.end576, %if.end572, %if.end568, %if.end564, %if.end560, %if.end556, %if.end552, %if.end548, %if.end544, %if.end540, %if.end536, %if.end532, %if.end528, %if.end524, %if.end520, %if.end516, %if.end512, %if.end508, %if.end504, %if.end500, %if.end496, %if.end492, %if.end488, %if.end484, %if.end480, %if.end476, %if.end472, %if.end468, %if.end464, %if.end460, %if.end456, %if.end452, %if.end448, %if.end444, %if.end440, %if.end436, %if.end432, %if.end428, %if.end424, %if.end420, %if.end416, %if.end412, %if.end408, %if.end404, %if.end400, %if.end396, %if.end392, %if.end388, %if.end384, %if.end380, %if.end376, %if.end372, %if.end368, %if.end364, %if.end360, %if.end356, %if.end352, %if.end348, %if.end344, %if.end340, %if.end336, %if.end332, %if.end328, %if.end324, %if.end320, %if.end316, %if.end312, %if.end308, %if.end304, %if.end300, %if.end296, %if.end292, %if.end288, %if.end284, %if.end280, %if.end276, %if.end272, %if.end268, %if.end264, %if.end260, %if.end256, %if.end252, %if.end248, %if.end244, %if.end240, %if.end236, %if.end232, %if.end228, %if.end224, %if.end220, %if.end216, %if.end212, %if.end208, %if.end204, %if.end200, %if.end196, %if.end192, %if.end188, %if.end184, %if.end180, %if.end176, %if.end172, %if.end168, %if.end164, %if.end160, %if.end156, %if.end152, %if.end148, %if.end144, %if.end140, %if.end136, %if.end132, %if.end128, %if.end124, %if.end120, %if.end116, %if.end112, %if.end108, %if.end104, %if.end100, %if.end96, %if.end92, %if.end88, %if.end84, %if.end80, %if.end76, %if.end72, %if.end68, %if.end64, %if.end60, %if.end56, %if.end52, %if.end48, %if.end44, %if.end40, %if.end36, %if.end32, %if.end28, %if.end24, %if.end20, %if.end16, %if.end12
  %retval.0 = phi i32 [ 1, %if.end1044 ], [ 1, %test__ctzsi2.exit ], [ 1, %test__ctzsi2.exit1058 ], [ 1, %test__ctzsi2.exit1064 ], [ 1, %test__ctzsi2.exit1070 ], [ 1, %if.end12 ], [ 1, %if.end16 ], [ 1, %if.end20 ], [ 1, %if.end24 ], [ 1, %if.end28 ], [ 1, %if.end32 ], [ 1, %if.end36 ], [ 1, %if.end40 ], [ 1, %if.end44 ], [ 1, %if.end48 ], [ 1, %if.end52 ], [ 1, %if.end56 ], [ 1, %if.end60 ], [ 1, %if.end64 ], [ 1, %if.end68 ], [ 1, %if.end72 ], [ 1, %if.end76 ], [ 1, %if.end80 ], [ 1, %if.end84 ], [ 1, %if.end88 ], [ 1, %if.end92 ], [ 1, %if.end96 ], [ 1, %if.end100 ], [ 1, %if.end104 ], [ 1, %if.end108 ], [ 1, %if.end112 ], [ 1, %if.end116 ], [ 1, %if.end120 ], [ 1, %if.end124 ], [ 1, %if.end128 ], [ 1, %if.end132 ], [ 1, %if.end136 ], [ 1, %if.end140 ], [ 1, %if.end144 ], [ 1, %if.end148 ], [ 1, %if.end152 ], [ 1, %if.end156 ], [ 1, %if.end160 ], [ 1, %if.end164 ], [ 1, %if.end168 ], [ 1, %if.end172 ], [ 1, %if.end176 ], [ 1, %if.end180 ], [ 1, %if.end184 ], [ 1, %if.end188 ], [ 1, %if.end192 ], [ 1, %if.end196 ], [ 1, %if.end200 ], [ 1, %if.end204 ], [ 1, %if.end208 ], [ 1, %if.end212 ], [ 1, %if.end216 ], [ 1, %if.end220 ], [ 1, %if.end224 ], [ 1, %if.end228 ], [ 1, %if.end232 ], [ 1, %if.end236 ], [ 1, %if.end240 ], [ 1, %if.end244 ], [ 1, %if.end248 ], [ 1, %if.end252 ], [ 1, %if.end256 ], [ 1, %if.end260 ], [ 1, %if.end264 ], [ 1, %if.end268 ], [ 1, %if.end272 ], [ 1, %if.end276 ], [ 1, %if.end280 ], [ 1, %if.end284 ], [ 1, %if.end288 ], [ 1, %if.end292 ], [ 1, %if.end296 ], [ 1, %if.end300 ], [ 1, %if.end304 ], [ 1, %if.end308 ], [ 1, %if.end312 ], [ 1, %if.end316 ], [ 1, %if.end320 ], [ 1, %if.end324 ], [ 1, %if.end328 ], [ 1, %if.end332 ], [ 1, %if.end336 ], [ 1, %if.end340 ], [ 1, %if.end344 ], [ 1, %if.end348 ], [ 1, %if.end352 ], [ 1, %if.end356 ], [ 1, %if.end360 ], [ 1, %if.end364 ], [ 1, %if.end368 ], [ 1, %if.end372 ], [ 1, %if.end376 ], [ 1, %if.end380 ], [ 1, %if.end384 ], [ 1, %if.end388 ], [ 1, %if.end392 ], [ 1, %if.end396 ], [ 1, %if.end400 ], [ 1, %if.end404 ], [ 1, %if.end408 ], [ 1, %if.end412 ], [ 1, %if.end416 ], [ 1, %if.end420 ], [ 1, %if.end424 ], [ 1, %if.end428 ], [ 1, %if.end432 ], [ 1, %if.end436 ], [ 1, %if.end440 ], [ 1, %if.end444 ], [ 1, %if.end448 ], [ 1, %if.end452 ], [ 1, %if.end456 ], [ 1, %if.end460 ], [ 1, %if.end464 ], [ 1, %if.end468 ], [ 1, %if.end472 ], [ 1, %if.end476 ], [ 1, %if.end480 ], [ 1, %if.end484 ], [ 1, %if.end488 ], [ 1, %if.end492 ], [ 1, %if.end496 ], [ 1, %if.end500 ], [ 1, %if.end504 ], [ 1, %if.end508 ], [ 1, %if.end512 ], [ 1, %if.end516 ], [ 1, %if.end520 ], [ 1, %if.end524 ], [ 1, %if.end528 ], [ 1, %if.end532 ], [ 1, %if.end536 ], [ 1, %if.end540 ], [ 1, %if.end544 ], [ 1, %if.end548 ], [ 1, %if.end552 ], [ 1, %if.end556 ], [ 1, %if.end560 ], [ 1, %if.end564 ], [ 1, %if.end568 ], [ 1, %if.end572 ], [ 1, %if.end576 ], [ 1, %if.end580 ], [ 1, %if.end584 ], [ 1, %if.end588 ], [ 1, %if.end592 ], [ 1, %if.end596 ], [ 1, %if.end600 ], [ 1, %if.end604 ], [ 1, %if.end608 ], [ 1, %if.end612 ], [ 1, %if.end616 ], [ 1, %if.end620 ], [ 1, %if.end624 ], [ 1, %if.end628 ], [ 1, %if.end632 ], [ 1, %if.end636 ], [ 1, %if.end640 ], [ 1, %if.end644 ], [ 1, %if.end648 ], [ 1, %if.end652 ], [ 1, %if.end656 ], [ 1, %if.end660 ], [ 1, %if.end664 ], [ 1, %if.end668 ], [ 1, %if.end672 ], [ 1, %if.end676 ], [ 1, %if.end680 ], [ 1, %if.end684 ], [ 1, %if.end688 ], [ 1, %if.end692 ], [ 1, %if.end696 ], [ 1, %if.end700 ], [ 1, %if.end704 ], [ 1, %if.end708 ], [ 1, %if.end712 ], [ 1, %if.end716 ], [ 1, %if.end720 ], [ 1, %if.end724 ], [ 1, %if.end728 ], [ 1, %if.end732 ], [ 1, %if.end736 ], [ 1, %if.end740 ], [ 1, %if.end744 ], [ 1, %if.end748 ], [ 1, %if.end752 ], [ 1, %if.end756 ], [ 1, %if.end760 ], [ 1, %if.end764 ], [ 1, %if.end768 ], [ 1, %if.end772 ], [ 1, %if.end776 ], [ 1, %if.end780 ], [ 1, %if.end784 ], [ 1, %if.end788 ], [ 1, %if.end792 ], [ 1, %if.end796 ], [ 1, %if.end800 ], [ 1, %if.end804 ], [ 1, %if.end808 ], [ 1, %if.end812 ], [ 1, %if.end816 ], [ 1, %if.end820 ], [ 1, %if.end824 ], [ 1, %if.end828 ], [ 1, %if.end832 ], [ 1, %if.end836 ], [ 1, %if.end840 ], [ 1, %if.end844 ], [ 1, %if.end848 ], [ 1, %if.end852 ], [ 1, %if.end856 ], [ 1, %if.end860 ], [ 1, %if.end864 ], [ 1, %if.end868 ], [ 1, %if.end872 ], [ 1, %if.end876 ], [ 1, %if.end880 ], [ 1, %if.end884 ], [ 1, %if.end888 ], [ 1, %if.end892 ], [ 1, %if.end896 ], [ 1, %if.end900 ], [ 1, %if.end904 ], [ 1, %if.end908 ], [ 1, %if.end912 ], [ 1, %if.end916 ], [ 1, %if.end920 ], [ 1, %if.end924 ], [ 1, %if.end928 ], [ 1, %if.end932 ], [ 1, %if.end936 ], [ 1, %if.end940 ], [ 1, %if.end944 ], [ 1, %if.end948 ], [ 1, %if.end952 ], [ 1, %if.end956 ], [ 1, %if.end960 ], [ 1, %if.end964 ], [ 1, %if.end968 ], [ 1, %if.end972 ], [ 1, %if.end976 ], [ 1, %if.end980 ], [ 1, %if.end984 ], [ 1, %if.end988 ], [ 1, %if.end992 ], [ 1, %if.end996 ], [ 1, %if.end1000 ], [ 1, %if.end1004 ], [ 1, %if.end1008 ], [ 1, %if.end1012 ], [ 1, %if.end1016 ], [ 1, %if.end1020 ], [ 1, %if.end1024 ], [ 1, %if.end1028 ], [ 1, %if.end1032 ], [ 1, %if.end1036 ], [ 1, %if.end1040 ], [ %call1049, %if.end1048 ]
  ret i32 %retval.0
}

attributes #0 = { nounwind "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #2 = { nobuiltin nounwind "no-builtins" }
attributes #3 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"ilp32f"}
!2 = !{i32 6, !"riscv-isa", !3}
!3 = !{!"rv32i2p1_m2p0_f2p2_zicsr2p0_zmmul1p0"}
!4 = !{i32 8, !"SmallDataLimit", i32 0}
!5 = !{!"clang version 22.1.8"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
