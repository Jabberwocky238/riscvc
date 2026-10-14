; ModuleID = '../llvm-project/compiler-rt/test/builtins/Unit/extendhfdf2_test.c'
source_filename = "../llvm-project/compiler-rt/test/builtins/Unit/extendhfdf2_test.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

@.str = private unnamed_addr constant [53 x i8] c"error in test__extendhfdf2(%#.4x) = %f, expected %f\0A\00", align 1
@assumption_1 = dso_local local_unnamed_addr global [1 x i8] zeroinitializer, align 1

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @test__extendhfdf2(i16 noundef zeroext %a, i64 noundef %expected) local_unnamed_addr #0 {
entry:
  %x.addr.i = alloca i64, align 8
  %ret.i = alloca double, align 8
  %x.addr.i.i = alloca double, align 8
  %ret.i.i = alloca i64, align 8
  %call = tail call double @__extendhfdf2(i16 noundef zeroext %a) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %x.addr.i.i)
  store double %call, ptr %x.addr.i.i, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %ret.i.i) #4
  %call.i.i = call ptr @memcpy(ptr noundef nonnull %ret.i.i, ptr noundef nonnull %x.addr.i.i, i32 noundef 8) #3
  %0 = load i64, ptr %ret.i.i, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %ret.i.i) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %x.addr.i.i)
  %cmp.i = icmp eq i64 %0, %expected
  br i1 %cmp.i, label %if.end, label %compareResultD.exit

compareResultD.exit:                              ; preds = %entry
  %cmp1.i = icmp eq i64 %expected, 9221120237041090560
  %and.i = and i64 %0, 9218868437227405312
  %cmp3.i = icmp eq i64 %and.i, 9218868437227405312
  %or.cond.not13.i.not12 = and i1 %cmp1.i, %cmp3.i
  %and4.i = and i64 %0, 4503599627370495
  %cmp5.not.i = icmp ne i64 %and4.i, 0
  %or.cond12.i.not = and i1 %cmp5.not.i, %or.cond.not13.i.not12
  br i1 %or.cond12.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %compareResultD.exit
  %conv = zext i16 %a to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %x.addr.i)
  store i64 %expected, ptr %x.addr.i, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %ret.i) #4
  %call.i = call ptr @memcpy(ptr noundef nonnull %ret.i, ptr noundef nonnull %x.addr.i, i32 noundef 8) #3
  %1 = load double, ptr %ret.i, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %ret.i) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %x.addr.i)
  %call4 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef %conv, double noundef %call, double noundef %1) #3
  br label %if.end

if.end:                                           ; preds = %entry, %if.then, %compareResultD.exit
  %retval.0.i11 = phi i32 [ 0, %compareResultD.exit ], [ 1, %if.then ], [ 0, %entry ]
  ret i32 %retval.0.i11
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare dso_local double @__extendhfdf2(i16 noundef zeroext) local_unnamed_addr #2

declare dso_local i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @main() local_unnamed_addr #0 {
entry:
  %x.addr.i.i118 = alloca i64, align 8
  %ret.i.i119 = alloca double, align 8
  %x.addr.i.i.i120 = alloca double, align 8
  %ret.i.i.i121 = alloca i64, align 8
  %x.addr.i.i100 = alloca i64, align 8
  %ret.i.i101 = alloca double, align 8
  %x.addr.i.i.i102 = alloca double, align 8
  %ret.i.i.i103 = alloca i64, align 8
  %x.addr.i.i82 = alloca i64, align 8
  %ret.i.i83 = alloca double, align 8
  %x.addr.i.i.i84 = alloca double, align 8
  %ret.i.i.i85 = alloca i64, align 8
  %x.addr.i.i = alloca i64, align 8
  %ret.i.i = alloca double, align 8
  %x.addr.i.i.i = alloca double, align 8
  %ret.i.i.i = alloca i64, align 8
  %call.i = tail call double @__extendhfdf2(i16 noundef zeroext 32256) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %x.addr.i.i.i)
  store double %call.i, ptr %x.addr.i.i.i, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %ret.i.i.i) #4
  %call.i.i.i = call ptr @memcpy(ptr noundef nonnull %ret.i.i.i, ptr noundef nonnull %x.addr.i.i.i, i32 noundef 8) #3
  %0 = load i64, ptr %ret.i.i.i, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %ret.i.i.i) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %x.addr.i.i.i)
  %cmp.i.i = icmp eq i64 %0, 9221120237041090560
  br i1 %cmp.i.i, label %if.end, label %compareResultD.exit.i

compareResultD.exit.i:                            ; preds = %entry
  %and.i.i = and i64 %0, 9218868437227405312
  %cmp3.i.i = icmp eq i64 %and.i.i, 9218868437227405312
  %and4.i.i = and i64 %0, 4503599627370495
  %cmp5.not.i.i = icmp ne i64 %and4.i.i, 0
  %or.cond12.i.not.i = and i1 %cmp5.not.i.i, %cmp3.i.i
  br i1 %or.cond12.i.not.i, label %if.end, label %test__extendhfdf2.exit

test__extendhfdf2.exit:                           ; preds = %compareResultD.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %x.addr.i.i)
  store i64 9221120237041090560, ptr %x.addr.i.i, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %ret.i.i) #4
  %call.i.i = call ptr @memcpy(ptr noundef nonnull %ret.i.i, ptr noundef nonnull %x.addr.i.i, i32 noundef 8) #3
  %1 = load double, ptr %ret.i.i, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %ret.i.i) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %x.addr.i.i)
  %call4.i = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef 32256, double noundef %call.i, double noundef %1) #3
  br label %return

if.end:                                           ; preds = %compareResultD.exit.i, %entry
  %call.i86 = call double @__extendhfdf2(i16 noundef zeroext 32640) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %x.addr.i.i.i84)
  store double %call.i86, ptr %x.addr.i.i.i84, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %ret.i.i.i85) #4
  %call.i.i.i87 = call ptr @memcpy(ptr noundef nonnull %ret.i.i.i85, ptr noundef nonnull %x.addr.i.i.i84, i32 noundef 8) #3
  %2 = load i64, ptr %ret.i.i.i85, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %ret.i.i.i85) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %x.addr.i.i.i84)
  %cmp.i.i88 = icmp eq i64 %2, 9222809086901354496
  br i1 %cmp.i.i88, label %if.end6, label %test__extendhfdf2.exit99

test__extendhfdf2.exit99:                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(ptr nonnull %x.addr.i.i82)
  store i64 9222809086901354496, ptr %x.addr.i.i82, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %ret.i.i83) #4
  %call.i.i96 = call ptr @memcpy(ptr noundef nonnull %ret.i.i83, ptr noundef nonnull %x.addr.i.i82, i32 noundef 8) #3
  %3 = load double, ptr %ret.i.i83, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %ret.i.i83) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %x.addr.i.i82)
  %call4.i97 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef 32640, double noundef %call.i86, double noundef %3) #3
  br label %return

if.end6:                                          ; preds = %if.end
  %call.i104 = call double @__extendhfdf2(i16 noundef zeroext 31744) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %x.addr.i.i.i102)
  store double %call.i104, ptr %x.addr.i.i.i102, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %ret.i.i.i103) #4
  %call.i.i.i105 = call ptr @memcpy(ptr noundef nonnull %ret.i.i.i103, ptr noundef nonnull %x.addr.i.i.i102, i32 noundef 8) #3
  %4 = load i64, ptr %ret.i.i.i103, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %ret.i.i.i103) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %x.addr.i.i.i102)
  %cmp.i.i106 = icmp eq i64 %4, 9218868437227405312
  br i1 %cmp.i.i106, label %if.end11, label %test__extendhfdf2.exit117

test__extendhfdf2.exit117:                        ; preds = %if.end6
  call void @llvm.lifetime.start.p0(ptr nonnull %x.addr.i.i100)
  store i64 9218868437227405312, ptr %x.addr.i.i100, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %ret.i.i101) #4
  %call.i.i114 = call ptr @memcpy(ptr noundef nonnull %ret.i.i101, ptr noundef nonnull %x.addr.i.i100, i32 noundef 8) #3
  %5 = load double, ptr %ret.i.i101, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %ret.i.i101) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %x.addr.i.i100)
  %call4.i115 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef 31744, double noundef %call.i104, double noundef %5) #3
  br label %return

if.end11:                                         ; preds = %if.end6
  %call.i122 = call double @__extendhfdf2(i16 noundef zeroext -1024) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %x.addr.i.i.i120)
  store double %call.i122, ptr %x.addr.i.i.i120, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %ret.i.i.i121) #4
  %call.i.i.i123 = call ptr @memcpy(ptr noundef nonnull %ret.i.i.i121, ptr noundef nonnull %x.addr.i.i.i120, i32 noundef 8) #3
  %6 = load i64, ptr %ret.i.i.i121, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %ret.i.i.i121) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %x.addr.i.i.i120)
  %cmp.i.i124 = icmp eq i64 %6, -4503599627370496
  br i1 %cmp.i.i124, label %if.end16, label %test__extendhfdf2.exit135

test__extendhfdf2.exit135:                        ; preds = %if.end11
  call void @llvm.lifetime.start.p0(ptr nonnull %x.addr.i.i118)
  store i64 -4503599627370496, ptr %x.addr.i.i118, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %ret.i.i119) #4
  %call.i.i132 = call ptr @memcpy(ptr noundef nonnull %ret.i.i119, ptr noundef nonnull %x.addr.i.i118, i32 noundef 8) #3
  %7 = load double, ptr %ret.i.i119, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %ret.i.i119) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %x.addr.i.i118)
  %call4.i133 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef 64512, double noundef %call.i122, double noundef %7) #3
  br label %return

if.end16:                                         ; preds = %if.end11
  %call18 = call i32 @test__extendhfdf2(i16 noundef zeroext 0, i64 noundef 0) #5
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %return

if.end21:                                         ; preds = %if.end16
  %call23 = call i32 @test__extendhfdf2(i16 noundef zeroext -32768, i64 noundef -9223372036854775808) #5
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %return

if.end26:                                         ; preds = %if.end21
  %call28 = call i32 @test__extendhfdf2(i16 noundef zeroext 16968, i64 noundef 4614254477589872640) #5
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %return

if.end31:                                         ; preds = %if.end26
  %call33 = call i32 @test__extendhfdf2(i16 noundef zeroext -15800, i64 noundef -4609117559264903168) #5
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %return

if.end36:                                         ; preds = %if.end31
  %call38 = call i32 @test__extendhfdf2(i16 noundef zeroext 28258, i64 noundef 4663908422700236800) #5
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %return

if.end41:                                         ; preds = %if.end36
  %call43 = call i32 @test__extendhfdf2(i16 noundef zeroext 15360, i64 noundef 4607182418800017408) #5
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %return

if.end46:                                         ; preds = %if.end41
  %call48 = call i32 @test__extendhfdf2(i16 noundef zeroext 1024, i64 noundef 4544132024016830464) #5
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %return

if.end51:                                         ; preds = %if.end46
  %call53 = call i32 @test__extendhfdf2(i16 noundef zeroext 16, i64 noundef 4517110426252607488) #5
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end56, label %return

if.end56:                                         ; preds = %if.end51
  %call58 = call i32 @test__extendhfdf2(i16 noundef zeroext 1, i64 noundef 4499096027743125504) #5
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end61, label %return

if.end61:                                         ; preds = %if.end56
  %call63 = call i32 @test__extendhfdf2(i16 noundef zeroext -32767, i64 noundef -4724276009111650304) #5
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end66, label %return

if.end66:                                         ; preds = %if.end61
  %call68 = call i32 @test__extendhfdf2(i16 noundef zeroext 1, i64 noundef 4499096027743125504) #5
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end71, label %return

if.end71:                                         ; preds = %if.end66
  %call73 = call i32 @test__extendhfdf2(i16 noundef zeroext 31743, i64 noundef 4679235614791434240) #5
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end76, label %return

if.end76:                                         ; preds = %if.end71
  %call78 = call i32 @test__extendhfdf2(i16 noundef zeroext 31743, i64 noundef 4679235614791434240) #5
  br label %return

return:                                           ; preds = %test__extendhfdf2.exit135, %test__extendhfdf2.exit117, %test__extendhfdf2.exit99, %test__extendhfdf2.exit, %if.end76, %if.end71, %if.end66, %if.end61, %if.end56, %if.end51, %if.end46, %if.end41, %if.end36, %if.end31, %if.end26, %if.end21, %if.end16
  %retval.0 = phi i32 [ 1, %if.end71 ], [ 1, %test__extendhfdf2.exit ], [ 1, %test__extendhfdf2.exit99 ], [ 1, %test__extendhfdf2.exit117 ], [ 1, %test__extendhfdf2.exit135 ], [ 1, %if.end16 ], [ 1, %if.end21 ], [ 1, %if.end26 ], [ 1, %if.end31 ], [ 1, %if.end36 ], [ 1, %if.end41 ], [ 1, %if.end46 ], [ 1, %if.end51 ], [ 1, %if.end56 ], [ 1, %if.end61 ], [ 1, %if.end66 ], [ %call78, %if.end76 ]
  ret i32 %retval.0
}

declare dso_local ptr @memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcalculet,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcalculet,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin "no-builtins" }

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
!10 = !{!11, !11, i64 0}
!11 = !{!"double", !8, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"long long", !8, i64 0}
