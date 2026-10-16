; ModuleID = 'tests/programs/bigint.c'
source_filename = "tests/programs/bigint.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

%struct.Big = type { [24 x i32] }

; Function Attrs: noinline nounwind optnone
define dso_local i32 @main() #0 {
entry:
  %f = alloca %struct.Big, align 4
  %p = alloca %struct.Big, align 4
  %s = alloca %struct.Big, align 4
  %k = alloca i32, align 4
  %k1 = alloca i32, align 4
  %byval-temp = alloca %struct.Big, align 4
  %byval-temp8 = alloca %struct.Big, align 4
  %byval-temp10 = alloca %struct.Big, align 4
  call void @llvm.memset.p0.i32(ptr align 4 %f, i8 0, i32 96, i1 false)
  %0 = getelementptr inbounds { <{ i32, [23 x i32] }> }, ptr %f, i32 0, i32 0
  %1 = getelementptr inbounds <{ i32, [23 x i32] }>, ptr %0, i32 0, i32 0
  store i32 1, ptr %1, align 4
  call void @llvm.memset.p0.i32(ptr align 4 %p, i8 0, i32 96, i1 false)
  %2 = getelementptr inbounds { <{ i32, [23 x i32] }> }, ptr %p, i32 0, i32 0
  %3 = getelementptr inbounds <{ i32, [23 x i32] }>, ptr %2, i32 0, i32 0
  store i32 1, ptr %3, align 4
  call void @llvm.memset.p0.i32(ptr align 4 %s, i8 0, i32 96, i1 false)
  store i32 2, ptr %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, ptr %k, align 4
  %cmp = icmp ule i32 %4, 50
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, ptr %k, align 4
  call void @mul_small(ptr noundef %f, i32 noundef %5) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %k, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr %k, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %k1, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc5, %for.end
  %7 = load i32, ptr %k1, align 4
  %cmp3 = icmp slt i32 %7, 200
  br i1 %cmp3, label %for.body4, label %for.end7

for.body4:                                        ; preds = %for.cond2
  call void @mul_small(ptr noundef %p, i32 noundef 2) #3
  br label %for.inc5

for.inc5:                                         ; preds = %for.body4
  %8 = load i32, ptr %k1, align 4
  %inc6 = add nsw i32 %8, 1
  store i32 %inc6, ptr %k1, align 4
  br label %for.cond2, !llvm.loop !9

for.end7:                                         ; preds = %for.cond2
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %s, ptr align 4 %f, i32 96, i1 false)
  call void @add(ptr noundef %s, ptr noundef %p) #3
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %byval-temp, ptr align 4 %f, i32 96, i1 false)
  %call = call i32 @digits(ptr dead_on_return noundef %byval-temp) #3
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %byval-temp8, ptr align 4 %p, i32 96, i1 false)
  %call9 = call i32 @digits(ptr dead_on_return noundef %byval-temp8) #3
  %mul = mul i32 %call9, 3
  %xor = xor i32 %call, %mul
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %byval-temp10, ptr align 4 %s, i32 96, i1 false)
  %call11 = call i32 @digits(ptr dead_on_return noundef %byval-temp10) #3
  %mul12 = mul i32 %call11, 5
  %xor13 = xor i32 %xor, %mul12
  ret i32 %xor13
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i32(ptr writeonly captures(none), i8, i32, i1 immarg) #1

; Function Attrs: noinline nounwind optnone
define internal void @mul_small(ptr noundef %a, i32 noundef %k) #0 {
entry:
  %a.addr = alloca ptr, align 4
  %k.addr = alloca i32, align 4
  %c = alloca i64, align 8
  %i = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 4
  store i32 %k, ptr %k.addr, align 4
  store i64 0, ptr %c, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 24
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %a.addr, align 4
  %d = getelementptr inbounds nuw %struct.Big, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %i, align 4
  %arrayidx = getelementptr inbounds [24 x i32], ptr %d, i32 0, i32 %2
  %3 = load i32, ptr %arrayidx, align 4
  %conv = zext i32 %3 to i64
  %4 = load i32, ptr %k.addr, align 4
  %conv1 = zext i32 %4 to i64
  %mul = mul i64 %conv, %conv1
  %5 = load i64, ptr %c, align 8
  %add = add i64 %5, %mul
  store i64 %add, ptr %c, align 8
  %6 = load i64, ptr %c, align 8
  %conv2 = trunc i64 %6 to i32
  %7 = load ptr, ptr %a.addr, align 4
  %d3 = getelementptr inbounds nuw %struct.Big, ptr %7, i32 0, i32 0
  %8 = load i32, ptr %i, align 4
  %arrayidx4 = getelementptr inbounds [24 x i32], ptr %d3, i32 0, i32 %8
  store i32 %conv2, ptr %arrayidx4, align 4
  %9 = load i64, ptr %c, align 8
  %shr = lshr i64 %9, 32
  store i64 %shr, ptr %c, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, ptr %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i32, i1 immarg) #2

; Function Attrs: noinline nounwind optnone
define internal void @add(ptr noundef %a, ptr noundef %b) #0 {
entry:
  %a.addr = alloca ptr, align 4
  %b.addr = alloca ptr, align 4
  %c = alloca i64, align 8
  %i = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 4
  store ptr %b, ptr %b.addr, align 4
  store i64 0, ptr %c, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 24
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %a.addr, align 4
  %d = getelementptr inbounds nuw %struct.Big, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %i, align 4
  %arrayidx = getelementptr inbounds [24 x i32], ptr %d, i32 0, i32 %2
  %3 = load i32, ptr %arrayidx, align 4
  %conv = zext i32 %3 to i64
  %4 = load ptr, ptr %b.addr, align 4
  %d1 = getelementptr inbounds nuw %struct.Big, ptr %4, i32 0, i32 0
  %5 = load i32, ptr %i, align 4
  %arrayidx2 = getelementptr inbounds [24 x i32], ptr %d1, i32 0, i32 %5
  %6 = load i32, ptr %arrayidx2, align 4
  %conv3 = zext i32 %6 to i64
  %add = add i64 %conv, %conv3
  %7 = load i64, ptr %c, align 8
  %add4 = add i64 %7, %add
  store i64 %add4, ptr %c, align 8
  %8 = load i64, ptr %c, align 8
  %conv5 = trunc i64 %8 to i32
  %9 = load ptr, ptr %a.addr, align 4
  %d6 = getelementptr inbounds nuw %struct.Big, ptr %9, i32 0, i32 0
  %10 = load i32, ptr %i, align 4
  %arrayidx7 = getelementptr inbounds [24 x i32], ptr %d6, i32 0, i32 %10
  store i32 %conv5, ptr %arrayidx7, align 4
  %11 = load i64, ptr %c, align 8
  %shr = lshr i64 %11, 32
  store i64 %shr, ptr %c, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, ptr %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone
define internal i32 @digits(ptr dead_on_return noundef %a) #0 {
entry:
  %a.indirect_addr = alloca ptr, align 4
  %h = alloca i32, align 4
  %n = alloca i32, align 4
  store ptr %a, ptr %a.indirect_addr, align 4
  store i32 0, ptr %h, align 4
  store i32 0, ptr %n, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %call = call i32 @zero(ptr noundef %a) #3
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %0 = load i32, ptr %h, align 4
  %mul = mul i32 %0, 10
  %call1 = call i32 @div_small(ptr noundef %a, i32 noundef 10) #3
  %add = add i32 %mul, %call1
  store i32 %add, ptr %h, align 4
  %1 = load i32, ptr %n, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr %n, align 4
  br label %while.cond, !llvm.loop !12

while.end:                                        ; preds = %while.cond
  %2 = load i32, ptr %h, align 4
  %mul2 = mul i32 %2, 1000
  %3 = load i32, ptr %n, align 4
  %add3 = add i32 %mul2, %3
  ret i32 %add3
}

; Function Attrs: noinline nounwind optnone
define internal i32 @zero(ptr noundef %a) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca ptr, align 4
  %i = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 24
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %a.addr, align 4
  %d = getelementptr inbounds nuw %struct.Big, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %i, align 4
  %arrayidx = getelementptr inbounds [24 x i32], ptr %d, i32 0, i32 %2
  %3 = load i32, ptr %arrayidx, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load i32, ptr %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %5 = load i32, ptr %retval, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone
define internal i32 @div_small(ptr noundef %a, i32 noundef %k) #0 {
entry:
  %a.addr = alloca ptr, align 4
  %k.addr = alloca i32, align 4
  %r = alloca i64, align 8
  %i = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 4
  store i32 %k, ptr %k.addr, align 4
  store i64 0, ptr %r, align 8
  store i32 23, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i64, ptr %r, align 8
  %shl = shl i64 %1, 32
  %2 = load ptr, ptr %a.addr, align 4
  %d = getelementptr inbounds nuw %struct.Big, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %i, align 4
  %arrayidx = getelementptr inbounds [24 x i32], ptr %d, i32 0, i32 %3
  %4 = load i32, ptr %arrayidx, align 4
  %conv = zext i32 %4 to i64
  %or = or i64 %shl, %conv
  store i64 %or, ptr %r, align 8
  %5 = load i64, ptr %r, align 8
  %6 = load i32, ptr %k.addr, align 4
  %conv1 = zext i32 %6 to i64
  %div = udiv i64 %5, %conv1
  %conv2 = trunc i64 %div to i32
  %7 = load ptr, ptr %a.addr, align 4
  %d3 = getelementptr inbounds nuw %struct.Big, ptr %7, i32 0, i32 0
  %8 = load i32, ptr %i, align 4
  %arrayidx4 = getelementptr inbounds [24 x i32], ptr %d3, i32 0, i32 %8
  store i32 %conv2, ptr %arrayidx4, align 4
  %9 = load i32, ptr %k.addr, align 4
  %conv5 = zext i32 %9 to i64
  %10 = load i64, ptr %r, align 8
  %rem = urem i64 %10, %conv5
  store i64 %rem, ptr %r, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, ptr %i, align 4
  %dec = add nsw i32 %11, -1
  store i32 %dec, ptr %i, align 4
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  %12 = load i64, ptr %r, align 8
  %conv6 = trunc i64 %12 to i32
  ret i32 %conv6
}

attributes #0 = { noinline nounwind optnone "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcalculet,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nobuiltin "no-builtins" }

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
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
!11 = distinct !{!11, !8}
!12 = distinct !{!12, !8}
!13 = distinct !{!13, !8}
!14 = distinct !{!14, !8}
