; ModuleID = '../llvm-project/compiler-rt/test/builtins/Unit/powidf2_test.c'
source_filename = "../llvm-project/compiler-rt/test/builtins/Unit/powidf2_test.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

@.str = private unnamed_addr constant [46 x i8] c"error in __powidf2(%f, %d) = %f, expected %f\0A\00", align 1

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @test__powidf2(double noundef %a, i32 noundef %b, double noundef %expected) local_unnamed_addr #0 {
entry:
  %call = tail call double @__powidf2(double noundef %a, i32 noundef %b) #2
  %cmp = fcmp oeq double %call, %expected
  br i1 %cmp, label %land.end, label %if.then

land.end:                                         ; preds = %entry
  %0 = bitcast double %call to i64
  %.lobit = lshr i64 %0, 63
  %1 = trunc nuw nsw i64 %.lobit to i32
  %2 = bitcast double %expected to i64
  %.lobit11 = lshr i64 %2, 63
  %3 = trunc nuw nsw i64 %.lobit11 to i32
  %cmp1 = icmp eq i32 %1, %3
  br i1 %cmp1, label %if.end, label %if.then

if.then:                                          ; preds = %entry, %land.end
  %call2 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, double noundef %a, i32 noundef %b, double noundef %call, double noundef %expected) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %lnot = phi i32 [ 1, %if.then ], [ 0, %land.end ]
  ret i32 %lnot
}

declare dso_local double @__powidf2(double noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @printf(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @main() local_unnamed_addr #0 {
entry:
  %call.i = tail call double @__powidf2(double noundef 0.000000e+00, i32 noundef 0) #2
  %cmp.i = fcmp oeq double %call.i, 1.000000e+00
  br i1 %cmp.i, label %if.end, label %test__powidf2.exit

test__powidf2.exit:                               ; preds = %entry
  %call2.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, double noundef 0.000000e+00, i32 noundef 0, double noundef %call.i, double noundef 1.000000e+00) #2
  br label %return

if.end:                                           ; preds = %entry
  %call.i345 = tail call double @__powidf2(double noundef 1.000000e+00, i32 noundef 0) #2
  %cmp.i346 = fcmp oeq double %call.i345, 1.000000e+00
  br i1 %cmp.i346, label %if.end4, label %test__powidf2.exit353

test__powidf2.exit353:                            ; preds = %if.end
  %call2.i348 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, double noundef 1.000000e+00, i32 noundef 0, double noundef %call.i345, double noundef 1.000000e+00) #2
  br label %return

if.end4:                                          ; preds = %if.end
  %call.i354 = tail call double @__powidf2(double noundef 1.500000e+00, i32 noundef 0) #2
  %cmp.i355 = fcmp oeq double %call.i354, 1.000000e+00
  br i1 %cmp.i355, label %if.end8, label %test__powidf2.exit362

test__powidf2.exit362:                            ; preds = %if.end4
  %call2.i357 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, double noundef 1.500000e+00, i32 noundef 0, double noundef %call.i354, double noundef 1.000000e+00) #2
  br label %return

if.end8:                                          ; preds = %if.end4
  %call.i363 = tail call double @__powidf2(double noundef 2.000000e+00, i32 noundef 0) #2
  %cmp.i364 = fcmp oeq double %call.i363, 1.000000e+00
  br i1 %cmp.i364, label %if.end12, label %test__powidf2.exit371

test__powidf2.exit371:                            ; preds = %if.end8
  %call2.i366 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, double noundef 2.000000e+00, i32 noundef 0, double noundef %call.i363, double noundef 1.000000e+00) #2
  br label %return

if.end12:                                         ; preds = %if.end8
  %call13 = tail call i32 @test__powidf2(double noundef 0x7FF0000000000000, i32 noundef 0, double noundef 1.000000e+00) #3
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %return

if.end16:                                         ; preds = %if.end12
  %call17 = tail call i32 @test__powidf2(double noundef -0.000000e+00, i32 noundef 0, double noundef 1.000000e+00) #3
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %return

if.end20:                                         ; preds = %if.end16
  %call21 = tail call i32 @test__powidf2(double noundef -1.000000e+00, i32 noundef 0, double noundef 1.000000e+00) #3
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %return

if.end24:                                         ; preds = %if.end20
  %call25 = tail call i32 @test__powidf2(double noundef -1.500000e+00, i32 noundef 0, double noundef 1.000000e+00) #3
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %return

if.end28:                                         ; preds = %if.end24
  %call29 = tail call i32 @test__powidf2(double noundef -2.000000e+00, i32 noundef 0, double noundef 1.000000e+00) #3
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %return

if.end32:                                         ; preds = %if.end28
  %call33 = tail call i32 @test__powidf2(double noundef 0xFFF0000000000000, i32 noundef 0, double noundef 1.000000e+00) #3
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %return

if.end36:                                         ; preds = %if.end32
  %call37 = tail call i32 @test__powidf2(double noundef 0.000000e+00, i32 noundef 1, double noundef 0.000000e+00) #3
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %return

if.end40:                                         ; preds = %if.end36
  %call41 = tail call i32 @test__powidf2(double noundef 0.000000e+00, i32 noundef 2, double noundef 0.000000e+00) #3
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end44, label %return

if.end44:                                         ; preds = %if.end40
  %call45 = tail call i32 @test__powidf2(double noundef 0.000000e+00, i32 noundef 3, double noundef 0.000000e+00) #3
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %return

if.end48:                                         ; preds = %if.end44
  %call49 = tail call i32 @test__powidf2(double noundef 0.000000e+00, i32 noundef 4, double noundef 0.000000e+00) #3
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end52, label %return

if.end52:                                         ; preds = %if.end48
  %call53 = tail call i32 @test__powidf2(double noundef 0.000000e+00, i32 noundef 2147483646, double noundef 0.000000e+00) #3
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end56, label %return

if.end56:                                         ; preds = %if.end52
  %call57 = tail call i32 @test__powidf2(double noundef 0.000000e+00, i32 noundef 2147483647, double noundef 0.000000e+00) #3
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end60, label %return

if.end60:                                         ; preds = %if.end56
  %call61 = tail call i32 @test__powidf2(double noundef -0.000000e+00, i32 noundef 1, double noundef -0.000000e+00) #3
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end64, label %return

if.end64:                                         ; preds = %if.end60
  %call65 = tail call i32 @test__powidf2(double noundef -0.000000e+00, i32 noundef 2, double noundef 0.000000e+00) #3
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end68, label %return

if.end68:                                         ; preds = %if.end64
  %call69 = tail call i32 @test__powidf2(double noundef -0.000000e+00, i32 noundef 3, double noundef -0.000000e+00) #3
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end72, label %return

if.end72:                                         ; preds = %if.end68
  %call73 = tail call i32 @test__powidf2(double noundef -0.000000e+00, i32 noundef 4, double noundef 0.000000e+00) #3
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end76, label %return

if.end76:                                         ; preds = %if.end72
  %call77 = tail call i32 @test__powidf2(double noundef -0.000000e+00, i32 noundef 2147483646, double noundef 0.000000e+00) #3
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end80, label %return

if.end80:                                         ; preds = %if.end76
  %call81 = tail call i32 @test__powidf2(double noundef -0.000000e+00, i32 noundef 2147483647, double noundef -0.000000e+00) #3
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.end84, label %return

if.end84:                                         ; preds = %if.end80
  %call85 = tail call i32 @test__powidf2(double noundef 1.000000e+00, i32 noundef 1, double noundef 1.000000e+00) #3
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.end88, label %return

if.end88:                                         ; preds = %if.end84
  %call89 = tail call i32 @test__powidf2(double noundef 1.000000e+00, i32 noundef 2, double noundef 1.000000e+00) #3
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.end92, label %return

if.end92:                                         ; preds = %if.end88
  %call93 = tail call i32 @test__powidf2(double noundef 1.000000e+00, i32 noundef 3, double noundef 1.000000e+00) #3
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.end96, label %return

if.end96:                                         ; preds = %if.end92
  %call97 = tail call i32 @test__powidf2(double noundef 1.000000e+00, i32 noundef 4, double noundef 1.000000e+00) #3
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %if.end100, label %return

if.end100:                                        ; preds = %if.end96
  %call101 = tail call i32 @test__powidf2(double noundef 1.000000e+00, i32 noundef 2147483646, double noundef 1.000000e+00) #3
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.end104, label %return

if.end104:                                        ; preds = %if.end100
  %call105 = tail call i32 @test__powidf2(double noundef 1.000000e+00, i32 noundef 2147483647, double noundef 1.000000e+00) #3
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %if.end108, label %return

if.end108:                                        ; preds = %if.end104
  %call109 = tail call i32 @test__powidf2(double noundef 0x7FF0000000000000, i32 noundef 1, double noundef 0x7FF0000000000000) #3
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %if.end112, label %return

if.end112:                                        ; preds = %if.end108
  %call113 = tail call i32 @test__powidf2(double noundef 0x7FF0000000000000, i32 noundef 2, double noundef 0x7FF0000000000000) #3
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %if.end116, label %return

if.end116:                                        ; preds = %if.end112
  %call117 = tail call i32 @test__powidf2(double noundef 0x7FF0000000000000, i32 noundef 3, double noundef 0x7FF0000000000000) #3
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %if.end120, label %return

if.end120:                                        ; preds = %if.end116
  %call121 = tail call i32 @test__powidf2(double noundef 0x7FF0000000000000, i32 noundef 4, double noundef 0x7FF0000000000000) #3
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %if.end124, label %return

if.end124:                                        ; preds = %if.end120
  %call125 = tail call i32 @test__powidf2(double noundef 0x7FF0000000000000, i32 noundef 2147483646, double noundef 0x7FF0000000000000) #3
  %tobool126.not = icmp eq i32 %call125, 0
  br i1 %tobool126.not, label %if.end128, label %return

if.end128:                                        ; preds = %if.end124
  %call129 = tail call i32 @test__powidf2(double noundef 0x7FF0000000000000, i32 noundef 2147483647, double noundef 0x7FF0000000000000) #3
  %tobool130.not = icmp eq i32 %call129, 0
  br i1 %tobool130.not, label %if.end132, label %return

if.end132:                                        ; preds = %if.end128
  %call133 = tail call i32 @test__powidf2(double noundef 0xFFF0000000000000, i32 noundef 1, double noundef 0xFFF0000000000000) #3
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %if.end136, label %return

if.end136:                                        ; preds = %if.end132
  %call137 = tail call i32 @test__powidf2(double noundef 0xFFF0000000000000, i32 noundef 2, double noundef 0x7FF0000000000000) #3
  %tobool138.not = icmp eq i32 %call137, 0
  br i1 %tobool138.not, label %if.end140, label %return

if.end140:                                        ; preds = %if.end136
  %call141 = tail call i32 @test__powidf2(double noundef 0xFFF0000000000000, i32 noundef 3, double noundef 0xFFF0000000000000) #3
  %tobool142.not = icmp eq i32 %call141, 0
  br i1 %tobool142.not, label %if.end144, label %return

if.end144:                                        ; preds = %if.end140
  %call145 = tail call i32 @test__powidf2(double noundef 0xFFF0000000000000, i32 noundef 4, double noundef 0x7FF0000000000000) #3
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %if.end148, label %return

if.end148:                                        ; preds = %if.end144
  %call149 = tail call i32 @test__powidf2(double noundef 0xFFF0000000000000, i32 noundef 2147483646, double noundef 0x7FF0000000000000) #3
  %tobool150.not = icmp eq i32 %call149, 0
  br i1 %tobool150.not, label %if.end152, label %return

if.end152:                                        ; preds = %if.end148
  %call153 = tail call i32 @test__powidf2(double noundef 0xFFF0000000000000, i32 noundef 2147483647, double noundef 0xFFF0000000000000) #3
  %tobool154.not = icmp eq i32 %call153, 0
  br i1 %tobool154.not, label %if.end156, label %return

if.end156:                                        ; preds = %if.end152
  %call157 = tail call i32 @test__powidf2(double noundef 0.000000e+00, i32 noundef -1, double noundef 0x7FF0000000000000) #3
  %tobool158.not = icmp eq i32 %call157, 0
  br i1 %tobool158.not, label %if.end160, label %return

if.end160:                                        ; preds = %if.end156
  %call161 = tail call i32 @test__powidf2(double noundef 0.000000e+00, i32 noundef -2, double noundef 0x7FF0000000000000) #3
  %tobool162.not = icmp eq i32 %call161, 0
  br i1 %tobool162.not, label %if.end164, label %return

if.end164:                                        ; preds = %if.end160
  %call165 = tail call i32 @test__powidf2(double noundef 0.000000e+00, i32 noundef -3, double noundef 0x7FF0000000000000) #3
  %tobool166.not = icmp eq i32 %call165, 0
  br i1 %tobool166.not, label %if.end168, label %return

if.end168:                                        ; preds = %if.end164
  %call169 = tail call i32 @test__powidf2(double noundef 0.000000e+00, i32 noundef -4, double noundef 0x7FF0000000000000) #3
  %tobool170.not = icmp eq i32 %call169, 0
  br i1 %tobool170.not, label %if.end172, label %return

if.end172:                                        ; preds = %if.end168
  %call173 = tail call i32 @test__powidf2(double noundef 0.000000e+00, i32 noundef -2147483646, double noundef 0x7FF0000000000000) #3
  %tobool174.not = icmp eq i32 %call173, 0
  br i1 %tobool174.not, label %if.end176, label %return

if.end176:                                        ; preds = %if.end172
  %call177 = tail call i32 @test__powidf2(double noundef 0.000000e+00, i32 noundef -2147483647, double noundef 0x7FF0000000000000) #3
  %tobool178.not = icmp eq i32 %call177, 0
  br i1 %tobool178.not, label %if.end180, label %return

if.end180:                                        ; preds = %if.end176
  %call181 = tail call i32 @test__powidf2(double noundef 0.000000e+00, i32 noundef -2147483648, double noundef 0x7FF0000000000000) #3
  %tobool182.not = icmp eq i32 %call181, 0
  br i1 %tobool182.not, label %if.end184, label %return

if.end184:                                        ; preds = %if.end180
  %call185 = tail call i32 @test__powidf2(double noundef -0.000000e+00, i32 noundef -1, double noundef 0xFFF0000000000000) #3
  %tobool186.not = icmp eq i32 %call185, 0
  br i1 %tobool186.not, label %if.end188, label %return

if.end188:                                        ; preds = %if.end184
  %call189 = tail call i32 @test__powidf2(double noundef -0.000000e+00, i32 noundef -2, double noundef 0x7FF0000000000000) #3
  %tobool190.not = icmp eq i32 %call189, 0
  br i1 %tobool190.not, label %if.end192, label %return

if.end192:                                        ; preds = %if.end188
  %call193 = tail call i32 @test__powidf2(double noundef -0.000000e+00, i32 noundef -3, double noundef 0xFFF0000000000000) #3
  %tobool194.not = icmp eq i32 %call193, 0
  br i1 %tobool194.not, label %if.end196, label %return

if.end196:                                        ; preds = %if.end192
  %call197 = tail call i32 @test__powidf2(double noundef -0.000000e+00, i32 noundef -4, double noundef 0x7FF0000000000000) #3
  %tobool198.not = icmp eq i32 %call197, 0
  br i1 %tobool198.not, label %if.end200, label %return

if.end200:                                        ; preds = %if.end196
  %call201 = tail call i32 @test__powidf2(double noundef -0.000000e+00, i32 noundef -2147483646, double noundef 0x7FF0000000000000) #3
  %tobool202.not = icmp eq i32 %call201, 0
  br i1 %tobool202.not, label %if.end204, label %return

if.end204:                                        ; preds = %if.end200
  %call205 = tail call i32 @test__powidf2(double noundef -0.000000e+00, i32 noundef -2147483647, double noundef 0xFFF0000000000000) #3
  %tobool206.not = icmp eq i32 %call205, 0
  br i1 %tobool206.not, label %if.end208, label %return

if.end208:                                        ; preds = %if.end204
  %call209 = tail call i32 @test__powidf2(double noundef -0.000000e+00, i32 noundef -2147483648, double noundef 0x7FF0000000000000) #3
  %tobool210.not = icmp eq i32 %call209, 0
  br i1 %tobool210.not, label %if.end212, label %return

if.end212:                                        ; preds = %if.end208
  %call213 = tail call i32 @test__powidf2(double noundef 1.000000e+00, i32 noundef -1, double noundef 1.000000e+00) #3
  %tobool214.not = icmp eq i32 %call213, 0
  br i1 %tobool214.not, label %if.end216, label %return

if.end216:                                        ; preds = %if.end212
  %call217 = tail call i32 @test__powidf2(double noundef 1.000000e+00, i32 noundef -2, double noundef 1.000000e+00) #3
  %tobool218.not = icmp eq i32 %call217, 0
  br i1 %tobool218.not, label %if.end220, label %return

if.end220:                                        ; preds = %if.end216
  %call221 = tail call i32 @test__powidf2(double noundef 1.000000e+00, i32 noundef -3, double noundef 1.000000e+00) #3
  %tobool222.not = icmp eq i32 %call221, 0
  br i1 %tobool222.not, label %if.end224, label %return

if.end224:                                        ; preds = %if.end220
  %call225 = tail call i32 @test__powidf2(double noundef 1.000000e+00, i32 noundef -4, double noundef 1.000000e+00) #3
  %tobool226.not = icmp eq i32 %call225, 0
  br i1 %tobool226.not, label %if.end228, label %return

if.end228:                                        ; preds = %if.end224
  %call229 = tail call i32 @test__powidf2(double noundef 1.000000e+00, i32 noundef -2147483646, double noundef 1.000000e+00) #3
  %tobool230.not = icmp eq i32 %call229, 0
  br i1 %tobool230.not, label %if.end232, label %return

if.end232:                                        ; preds = %if.end228
  %call233 = tail call i32 @test__powidf2(double noundef 1.000000e+00, i32 noundef -2147483647, double noundef 1.000000e+00) #3
  %tobool234.not = icmp eq i32 %call233, 0
  br i1 %tobool234.not, label %if.end236, label %return

if.end236:                                        ; preds = %if.end232
  %call237 = tail call i32 @test__powidf2(double noundef 1.000000e+00, i32 noundef -2147483648, double noundef 1.000000e+00) #3
  %tobool238.not = icmp eq i32 %call237, 0
  br i1 %tobool238.not, label %if.end240, label %return

if.end240:                                        ; preds = %if.end236
  %call241 = tail call i32 @test__powidf2(double noundef 0x7FF0000000000000, i32 noundef -1, double noundef 0.000000e+00) #3
  %tobool242.not = icmp eq i32 %call241, 0
  br i1 %tobool242.not, label %if.end244, label %return

if.end244:                                        ; preds = %if.end240
  %call245 = tail call i32 @test__powidf2(double noundef 0x7FF0000000000000, i32 noundef -2, double noundef 0.000000e+00) #3
  %tobool246.not = icmp eq i32 %call245, 0
  br i1 %tobool246.not, label %if.end248, label %return

if.end248:                                        ; preds = %if.end244
  %call249 = tail call i32 @test__powidf2(double noundef 0x7FF0000000000000, i32 noundef -3, double noundef 0.000000e+00) #3
  %tobool250.not = icmp eq i32 %call249, 0
  br i1 %tobool250.not, label %if.end252, label %return

if.end252:                                        ; preds = %if.end248
  %call253 = tail call i32 @test__powidf2(double noundef 0x7FF0000000000000, i32 noundef -4, double noundef 0.000000e+00) #3
  %tobool254.not = icmp eq i32 %call253, 0
  br i1 %tobool254.not, label %if.end256, label %return

if.end256:                                        ; preds = %if.end252
  %call257 = tail call i32 @test__powidf2(double noundef 0x7FF0000000000000, i32 noundef -2147483646, double noundef 0.000000e+00) #3
  %tobool258.not = icmp eq i32 %call257, 0
  br i1 %tobool258.not, label %if.end260, label %return

if.end260:                                        ; preds = %if.end256
  %call261 = tail call i32 @test__powidf2(double noundef 0x7FF0000000000000, i32 noundef -2147483647, double noundef 0.000000e+00) #3
  %tobool262.not = icmp eq i32 %call261, 0
  br i1 %tobool262.not, label %if.end264, label %return

if.end264:                                        ; preds = %if.end260
  %call265 = tail call i32 @test__powidf2(double noundef 0x7FF0000000000000, i32 noundef -2147483648, double noundef 0.000000e+00) #3
  %tobool266.not = icmp eq i32 %call265, 0
  br i1 %tobool266.not, label %if.end268, label %return

if.end268:                                        ; preds = %if.end264
  %call269 = tail call i32 @test__powidf2(double noundef 0xFFF0000000000000, i32 noundef -1, double noundef -0.000000e+00) #3
  %tobool270.not = icmp eq i32 %call269, 0
  br i1 %tobool270.not, label %if.end272, label %return

if.end272:                                        ; preds = %if.end268
  %call273 = tail call i32 @test__powidf2(double noundef 0xFFF0000000000000, i32 noundef -2, double noundef 0.000000e+00) #3
  %tobool274.not = icmp eq i32 %call273, 0
  br i1 %tobool274.not, label %if.end276, label %return

if.end276:                                        ; preds = %if.end272
  %call277 = tail call i32 @test__powidf2(double noundef 0xFFF0000000000000, i32 noundef -3, double noundef -0.000000e+00) #3
  %tobool278.not = icmp eq i32 %call277, 0
  br i1 %tobool278.not, label %if.end280, label %return

if.end280:                                        ; preds = %if.end276
  %call281 = tail call i32 @test__powidf2(double noundef 0xFFF0000000000000, i32 noundef -4, double noundef 0.000000e+00) #3
  %tobool282.not = icmp eq i32 %call281, 0
  br i1 %tobool282.not, label %if.end284, label %return

if.end284:                                        ; preds = %if.end280
  %call285 = tail call i32 @test__powidf2(double noundef 0xFFF0000000000000, i32 noundef -2147483646, double noundef 0.000000e+00) #3
  %tobool286.not = icmp eq i32 %call285, 0
  br i1 %tobool286.not, label %if.end288, label %return

if.end288:                                        ; preds = %if.end284
  %call289 = tail call i32 @test__powidf2(double noundef 0xFFF0000000000000, i32 noundef -2147483647, double noundef -0.000000e+00) #3
  %tobool290.not = icmp eq i32 %call289, 0
  br i1 %tobool290.not, label %if.end292, label %return

if.end292:                                        ; preds = %if.end288
  %call293 = tail call i32 @test__powidf2(double noundef 0xFFF0000000000000, i32 noundef -2147483648, double noundef 0.000000e+00) #3
  %tobool294.not = icmp eq i32 %call293, 0
  br i1 %tobool294.not, label %if.end296, label %return

if.end296:                                        ; preds = %if.end292
  %call297 = tail call i32 @test__powidf2(double noundef 2.000000e+00, i32 noundef 10, double noundef 1.024000e+03) #3
  %tobool298.not = icmp eq i32 %call297, 0
  br i1 %tobool298.not, label %if.end300, label %return

if.end300:                                        ; preds = %if.end296
  %call301 = tail call i32 @test__powidf2(double noundef -2.000000e+00, i32 noundef 10, double noundef 1.024000e+03) #3
  %tobool302.not = icmp eq i32 %call301, 0
  br i1 %tobool302.not, label %if.end304, label %return

if.end304:                                        ; preds = %if.end300
  %call305 = tail call i32 @test__powidf2(double noundef 2.000000e+00, i32 noundef -10, double noundef 0x3F50000000000000) #3
  %tobool306.not = icmp eq i32 %call305, 0
  br i1 %tobool306.not, label %if.end308, label %return

if.end308:                                        ; preds = %if.end304
  %call309 = tail call i32 @test__powidf2(double noundef -2.000000e+00, i32 noundef -10, double noundef 0x3F50000000000000) #3
  %tobool310.not = icmp eq i32 %call309, 0
  br i1 %tobool310.not, label %if.end312, label %return

if.end312:                                        ; preds = %if.end308
  %call313 = tail call i32 @test__powidf2(double noundef 2.000000e+00, i32 noundef 19, double noundef 5.242880e+05) #3
  %tobool314.not = icmp eq i32 %call313, 0
  br i1 %tobool314.not, label %if.end316, label %return

if.end316:                                        ; preds = %if.end312
  %call317 = tail call i32 @test__powidf2(double noundef -2.000000e+00, i32 noundef 19, double noundef -5.242880e+05) #3
  %tobool318.not = icmp eq i32 %call317, 0
  br i1 %tobool318.not, label %if.end320, label %return

if.end320:                                        ; preds = %if.end316
  %call321 = tail call i32 @test__powidf2(double noundef 2.000000e+00, i32 noundef -19, double noundef 0x3EC0000000000000) #3
  %tobool322.not = icmp eq i32 %call321, 0
  br i1 %tobool322.not, label %if.end324, label %return

if.end324:                                        ; preds = %if.end320
  %call325 = tail call i32 @test__powidf2(double noundef -2.000000e+00, i32 noundef -19, double noundef 0xBEC0000000000000) #3
  %tobool326.not = icmp eq i32 %call325, 0
  br i1 %tobool326.not, label %if.end328, label %return

if.end328:                                        ; preds = %if.end324
  %call329 = tail call i32 @test__powidf2(double noundef 2.000000e+00, i32 noundef 31, double noundef 0x41E0000000000000) #3
  %tobool330.not = icmp eq i32 %call329, 0
  br i1 %tobool330.not, label %if.end332, label %return

if.end332:                                        ; preds = %if.end328
  %call333 = tail call i32 @test__powidf2(double noundef -2.000000e+00, i32 noundef 31, double noundef 0xC1E0000000000000) #3
  %tobool334.not = icmp eq i32 %call333, 0
  br i1 %tobool334.not, label %if.end336, label %return

if.end336:                                        ; preds = %if.end332
  %call337 = tail call i32 @test__powidf2(double noundef 2.000000e+00, i32 noundef -31, double noundef 0x3E00000000000000) #3
  %tobool338.not = icmp eq i32 %call337, 0
  br i1 %tobool338.not, label %if.end340, label %return

if.end340:                                        ; preds = %if.end336
  %call341 = tail call i32 @test__powidf2(double noundef -2.000000e+00, i32 noundef -31, double noundef 0xBE00000000000000) #3
  br label %return

return:                                           ; preds = %test__powidf2.exit371, %test__powidf2.exit362, %test__powidf2.exit353, %test__powidf2.exit, %if.end340, %if.end336, %if.end332, %if.end328, %if.end324, %if.end320, %if.end316, %if.end312, %if.end308, %if.end304, %if.end300, %if.end296, %if.end292, %if.end288, %if.end284, %if.end280, %if.end276, %if.end272, %if.end268, %if.end264, %if.end260, %if.end256, %if.end252, %if.end248, %if.end244, %if.end240, %if.end236, %if.end232, %if.end228, %if.end224, %if.end220, %if.end216, %if.end212, %if.end208, %if.end204, %if.end200, %if.end196, %if.end192, %if.end188, %if.end184, %if.end180, %if.end176, %if.end172, %if.end168, %if.end164, %if.end160, %if.end156, %if.end152, %if.end148, %if.end144, %if.end140, %if.end136, %if.end132, %if.end128, %if.end124, %if.end120, %if.end116, %if.end112, %if.end108, %if.end104, %if.end100, %if.end96, %if.end92, %if.end88, %if.end84, %if.end80, %if.end76, %if.end72, %if.end68, %if.end64, %if.end60, %if.end56, %if.end52, %if.end48, %if.end44, %if.end40, %if.end36, %if.end32, %if.end28, %if.end24, %if.end20, %if.end16, %if.end12
  %retval.0 = phi i32 [ 1, %if.end336 ], [ 1, %test__powidf2.exit ], [ 1, %test__powidf2.exit353 ], [ 1, %test__powidf2.exit362 ], [ 1, %test__powidf2.exit371 ], [ 1, %if.end12 ], [ 1, %if.end16 ], [ 1, %if.end20 ], [ 1, %if.end24 ], [ 1, %if.end28 ], [ 1, %if.end32 ], [ 1, %if.end36 ], [ 1, %if.end40 ], [ 1, %if.end44 ], [ 1, %if.end48 ], [ 1, %if.end52 ], [ 1, %if.end56 ], [ 1, %if.end60 ], [ 1, %if.end64 ], [ 1, %if.end68 ], [ 1, %if.end72 ], [ 1, %if.end76 ], [ 1, %if.end80 ], [ 1, %if.end84 ], [ 1, %if.end88 ], [ 1, %if.end92 ], [ 1, %if.end96 ], [ 1, %if.end100 ], [ 1, %if.end104 ], [ 1, %if.end108 ], [ 1, %if.end112 ], [ 1, %if.end116 ], [ 1, %if.end120 ], [ 1, %if.end124 ], [ 1, %if.end128 ], [ 1, %if.end132 ], [ 1, %if.end136 ], [ 1, %if.end140 ], [ 1, %if.end144 ], [ 1, %if.end148 ], [ 1, %if.end152 ], [ 1, %if.end156 ], [ 1, %if.end160 ], [ 1, %if.end164 ], [ 1, %if.end168 ], [ 1, %if.end172 ], [ 1, %if.end176 ], [ 1, %if.end180 ], [ 1, %if.end184 ], [ 1, %if.end188 ], [ 1, %if.end192 ], [ 1, %if.end196 ], [ 1, %if.end200 ], [ 1, %if.end204 ], [ 1, %if.end208 ], [ 1, %if.end212 ], [ 1, %if.end216 ], [ 1, %if.end220 ], [ 1, %if.end224 ], [ 1, %if.end228 ], [ 1, %if.end232 ], [ 1, %if.end236 ], [ 1, %if.end240 ], [ 1, %if.end244 ], [ 1, %if.end248 ], [ 1, %if.end252 ], [ 1, %if.end256 ], [ 1, %if.end260 ], [ 1, %if.end264 ], [ 1, %if.end268 ], [ 1, %if.end272 ], [ 1, %if.end276 ], [ 1, %if.end280 ], [ 1, %if.end284 ], [ 1, %if.end288 ], [ 1, %if.end292 ], [ 1, %if.end296 ], [ 1, %if.end300 ], [ 1, %if.end304 ], [ 1, %if.end308 ], [ 1, %if.end312 ], [ 1, %if.end316 ], [ 1, %if.end320 ], [ 1, %if.end324 ], [ 1, %if.end328 ], [ 1, %if.end332 ], [ %call341, %if.end340 ]
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
