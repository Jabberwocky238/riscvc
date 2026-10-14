; ModuleID = '../llvm-project/compiler-rt/test/builtins/Unit/umodsi3_test.c'
source_filename = "../llvm-project/compiler-rt/test/builtins/Unit/umodsi3_test.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

@.str = private unnamed_addr constant [48 x i8] c"error in __umodsi3: %X %% %X = %X, expected %X\0A\00", align 1
@tests = dso_local global [132 x [4 x i32]] [[4 x i32] [i32 0, i32 1, i32 0, i32 0], [4 x i32] [i32 0, i32 2, i32 0, i32 0], [4 x i32] [i32 0, i32 3, i32 0, i32 0], [4 x i32] [i32 0, i32 16, i32 0, i32 0], [4 x i32] [i32 0, i32 126239994, i32 0, i32 0], [4 x i32] [i32 0, i32 122138132, i32 0, i32 0], [4 x i32] [i32 0, i32 2147483647, i32 0, i32 0], [4 x i32] [i32 0, i32 -2147483648, i32 0, i32 0], [4 x i32] [i32 0, i32 -3, i32 0, i32 0], [4 x i32] [i32 0, i32 -2, i32 0, i32 0], [4 x i32] [i32 0, i32 -1, i32 0, i32 0], [4 x i32] [i32 1, i32 1, i32 0, i32 0], [4 x i32] [i32 1, i32 2, i32 1, i32 0], [4 x i32] [i32 1, i32 3, i32 1, i32 0], [4 x i32] [i32 1, i32 16, i32 1, i32 0], [4 x i32] [i32 1, i32 126239994, i32 1, i32 0], [4 x i32] [i32 1, i32 122138132, i32 1, i32 0], [4 x i32] [i32 1, i32 2147483647, i32 1, i32 0], [4 x i32] [i32 1, i32 -2147483648, i32 1, i32 0], [4 x i32] [i32 1, i32 -3, i32 1, i32 0], [4 x i32] [i32 1, i32 -2, i32 1, i32 0], [4 x i32] [i32 1, i32 -1, i32 1, i32 0], [4 x i32] [i32 2, i32 1, i32 0, i32 0], [4 x i32] [i32 2, i32 2, i32 0, i32 0], [4 x i32] [i32 2, i32 3, i32 2, i32 0], [4 x i32] [i32 2, i32 16, i32 2, i32 0], [4 x i32] [i32 2, i32 126239994, i32 2, i32 0], [4 x i32] [i32 2, i32 122138132, i32 2, i32 0], [4 x i32] [i32 2, i32 2147483647, i32 2, i32 0], [4 x i32] [i32 2, i32 -2147483648, i32 2, i32 0], [4 x i32] [i32 2, i32 -3, i32 2, i32 0], [4 x i32] [i32 2, i32 -2, i32 2, i32 0], [4 x i32] [i32 2, i32 -1, i32 2, i32 0], [4 x i32] [i32 3, i32 1, i32 0, i32 0], [4 x i32] [i32 3, i32 2, i32 1, i32 0], [4 x i32] [i32 3, i32 3, i32 0, i32 0], [4 x i32] [i32 3, i32 16, i32 3, i32 0], [4 x i32] [i32 3, i32 126239994, i32 3, i32 0], [4 x i32] [i32 3, i32 122138132, i32 3, i32 0], [4 x i32] [i32 3, i32 2147483647, i32 3, i32 0], [4 x i32] [i32 3, i32 -2147483648, i32 3, i32 0], [4 x i32] [i32 3, i32 -3, i32 3, i32 0], [4 x i32] [i32 3, i32 -2, i32 3, i32 0], [4 x i32] [i32 3, i32 -1, i32 3, i32 0], [4 x i32] [i32 16, i32 1, i32 0, i32 0], [4 x i32] [i32 16, i32 2, i32 0, i32 0], [4 x i32] [i32 16, i32 3, i32 1, i32 0], [4 x i32] [i32 16, i32 16, i32 0, i32 0], [4 x i32] [i32 16, i32 126239994, i32 16, i32 0], [4 x i32] [i32 16, i32 122138132, i32 16, i32 0], [4 x i32] [i32 16, i32 2147483647, i32 16, i32 0], [4 x i32] [i32 16, i32 -2147483648, i32 16, i32 0], [4 x i32] [i32 16, i32 -3, i32 16, i32 0], [4 x i32] [i32 16, i32 -2, i32 16, i32 0], [4 x i32] [i32 16, i32 -1, i32 16, i32 0], [4 x i32] [i32 126239994, i32 1, i32 0, i32 0], [4 x i32] [i32 126239994, i32 2, i32 0, i32 0], [4 x i32] [i32 126239994, i32 3, i32 0, i32 0], [4 x i32] [i32 126239994, i32 16, i32 10, i32 0], [4 x i32] [i32 126239994, i32 126239994, i32 0, i32 0], [4 x i32] [i32 126239994, i32 122138132, i32 4101862, i32 0], [4 x i32] [i32 126239994, i32 2147483647, i32 126239994, i32 0], [4 x i32] [i32 126239994, i32 -2147483648, i32 126239994, i32 0], [4 x i32] [i32 126239994, i32 -3, i32 126239994, i32 0], [4 x i32] [i32 126239994, i32 -2, i32 126239994, i32 0], [4 x i32] [i32 126239994, i32 -1, i32 126239994, i32 0], [4 x i32] [i32 122138132, i32 1, i32 0, i32 0], [4 x i32] [i32 122138132, i32 2, i32 0, i32 0], [4 x i32] [i32 122138132, i32 3, i32 2, i32 0], [4 x i32] [i32 122138132, i32 16, i32 4, i32 0], [4 x i32] [i32 122138132, i32 126239994, i32 122138132, i32 0], [4 x i32] [i32 122138132, i32 122138132, i32 0, i32 0], [4 x i32] [i32 122138132, i32 2147483647, i32 122138132, i32 0], [4 x i32] [i32 122138132, i32 -2147483648, i32 122138132, i32 0], [4 x i32] [i32 122138132, i32 -3, i32 122138132, i32 0], [4 x i32] [i32 122138132, i32 -2, i32 122138132, i32 0], [4 x i32] [i32 122138132, i32 -1, i32 122138132, i32 0], [4 x i32] [i32 2147483647, i32 1, i32 0, i32 0], [4 x i32] [i32 2147483647, i32 2, i32 1, i32 0], [4 x i32] [i32 2147483647, i32 3, i32 1, i32 0], [4 x i32] [i32 2147483647, i32 16, i32 15, i32 0], [4 x i32] [i32 2147483647, i32 126239994, i32 1403749, i32 0], [4 x i32] [i32 2147483647, i32 122138132, i32 71135403, i32 0], [4 x i32] [i32 2147483647, i32 2147483647, i32 0, i32 0], [4 x i32] [i32 2147483647, i32 -2147483648, i32 2147483647, i32 0], [4 x i32] [i32 2147483647, i32 -3, i32 2147483647, i32 0], [4 x i32] [i32 2147483647, i32 -2, i32 2147483647, i32 0], [4 x i32] [i32 2147483647, i32 -1, i32 2147483647, i32 0], [4 x i32] [i32 -2147483648, i32 1, i32 0, i32 0], [4 x i32] [i32 -2147483648, i32 2, i32 0, i32 0], [4 x i32] [i32 -2147483648, i32 3, i32 2, i32 0], [4 x i32] [i32 -2147483648, i32 16, i32 0, i32 0], [4 x i32] [i32 -2147483648, i32 126239994, i32 1403750, i32 0], [4 x i32] [i32 -2147483648, i32 122138132, i32 71135404, i32 0], [4 x i32] [i32 -2147483648, i32 2147483647, i32 1, i32 0], [4 x i32] [i32 -2147483648, i32 -2147483648, i32 0, i32 0], [4 x i32] [i32 -2147483648, i32 -3, i32 -2147483648, i32 0], [4 x i32] [i32 -2147483648, i32 -2, i32 -2147483648, i32 0], [4 x i32] [i32 -2147483648, i32 -1, i32 -2147483648, i32 0], [4 x i32] [i32 -3, i32 1, i32 0, i32 0], [4 x i32] [i32 -3, i32 2, i32 1, i32 0], [4 x i32] [i32 -3, i32 3, i32 1, i32 0], [4 x i32] [i32 -3, i32 16, i32 13, i32 0], [4 x i32] [i32 -3, i32 126239994, i32 2807497, i32 0], [4 x i32] [i32 -3, i32 122138132, i32 20132673, i32 0], [4 x i32] [i32 -3, i32 2147483647, i32 2147483646, i32 0], [4 x i32] [i32 -3, i32 -2147483648, i32 2147483645, i32 0], [4 x i32] [i32 -3, i32 -3, i32 0, i32 0], [4 x i32] [i32 -3, i32 -2, i32 -3, i32 0], [4 x i32] [i32 -3, i32 -1, i32 -3, i32 0], [4 x i32] [i32 -2, i32 1, i32 0, i32 0], [4 x i32] [i32 -2, i32 2, i32 0, i32 0], [4 x i32] [i32 -2, i32 3, i32 2, i32 0], [4 x i32] [i32 -2, i32 16, i32 14, i32 0], [4 x i32] [i32 -2, i32 126239994, i32 2807498, i32 0], [4 x i32] [i32 -2, i32 122138132, i32 20132674, i32 0], [4 x i32] [i32 -2, i32 2147483647, i32 0, i32 0], [4 x i32] [i32 -2, i32 -2147483648, i32 2147483646, i32 0], [4 x i32] [i32 -2, i32 -3, i32 1, i32 0], [4 x i32] [i32 -2, i32 -2, i32 0, i32 0], [4 x i32] [i32 -2, i32 -1, i32 -2, i32 0], [4 x i32] [i32 -1, i32 1, i32 0, i32 0], [4 x i32] [i32 -1, i32 2, i32 1, i32 0], [4 x i32] [i32 -1, i32 3, i32 0, i32 0], [4 x i32] [i32 -1, i32 16, i32 15, i32 0], [4 x i32] [i32 -1, i32 126239994, i32 2807499, i32 0], [4 x i32] [i32 -1, i32 122138132, i32 20132675, i32 0], [4 x i32] [i32 -1, i32 2147483647, i32 1, i32 0], [4 x i32] [i32 -1, i32 -2147483648, i32 2147483647, i32 0], [4 x i32] [i32 -1, i32 -3, i32 2, i32 0], [4 x i32] [i32 -1, i32 -2, i32 1, i32 0], [4 x i32] [i32 -1, i32 -1, i32 0, i32 0]], align 4

; Function Attrs: noinline nounwind optnone
define dso_local i32 @test__umodsi3(i32 noundef %a, i32 noundef %b, i32 noundef %expected_r) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %expected_r.addr = alloca i32, align 4
  %r = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4
  store i32 %b, ptr %b.addr, align 4
  store i32 %expected_r, ptr %expected_r.addr, align 4
  %0 = load i32, ptr %a.addr, align 4
  %1 = load i32, ptr %b.addr, align 4
  %call = call i32 @__umodsi3(i32 noundef %0, i32 noundef %1) #2
  store i32 %call, ptr %r, align 4
  %2 = load i32, ptr %r, align 4
  %3 = load i32, ptr %expected_r.addr, align 4
  %cmp = icmp ne i32 %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %a.addr, align 4
  %5 = load i32, ptr %b.addr, align 4
  %6 = load i32, ptr %r, align 4
  %7 = load i32, ptr %expected_r.addr, align 4
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32, ptr %r, align 4
  %9 = load i32, ptr %expected_r.addr, align 4
  %cmp2 = icmp ne i32 %8, %9
  %conv = zext i1 %cmp2 to i32
  ret i32 %conv
}

declare dso_local i32 @__umodsi3(i32 noundef, i32 noundef) #1

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %N = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 132, ptr %N, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp ult i32 %0, 132
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %arrayidx = getelementptr inbounds nuw [132 x [4 x i32]], ptr @tests, i32 0, i32 %1
  %arrayidx1 = getelementptr inbounds [4 x i32], ptr %arrayidx, i32 0, i32 0
  %2 = load i32, ptr %arrayidx1, align 4
  %3 = load i32, ptr %i, align 4
  %arrayidx2 = getelementptr inbounds nuw [132 x [4 x i32]], ptr @tests, i32 0, i32 %3
  %arrayidx3 = getelementptr inbounds [4 x i32], ptr %arrayidx2, i32 0, i32 1
  %4 = load i32, ptr %arrayidx3, align 4
  %5 = load i32, ptr %i, align 4
  %arrayidx4 = getelementptr inbounds nuw [132 x [4 x i32]], ptr @tests, i32 0, i32 %5
  %arrayidx5 = getelementptr inbounds [4 x i32], ptr %arrayidx4, i32 0, i32 2
  %6 = load i32, ptr %arrayidx5, align 4
  %call = call i32 @test__umodsi3(i32 noundef %2, i32 noundef %4, i32 noundef %6) #2
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, ptr %i, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
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
