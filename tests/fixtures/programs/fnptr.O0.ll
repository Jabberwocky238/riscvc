; ModuleID = 'tests/programs/fnptr.c'
source_filename = "tests/programs/fnptr.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

@unops = internal constant [4 x ptr] [ptr @sq, ptr @neg, ptr @half, ptr @inc], align 4
@binops = internal global [3 x ptr] [ptr @add, ptr @mx, ptr @mix], align 4
@fibp = internal global ptr @fib, align 4

; Function Attrs: noinline nounwind optnone
define dso_local i32 @main() #0 {
entry:
  %a = alloca [16 x i32], align 4
  %h = alloca i32, align 4
  %round = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, ptr %h, align 4
  store i32 0, ptr %round, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc14, %entry
  %0 = load i32, ptr %round, align 4
  %cmp = icmp slt i32 %0, 8
  br i1 %cmp, label %for.body, label %for.end16

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %i, align 4
  %cmp2 = icmp slt i32 %1, 16
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load i32, ptr %i, align 4
  %mul = mul nsw i32 %2, 7
  %sub = sub nsw i32 %mul, 40
  %3 = load i32, ptr %round, align 4
  %add = add nsw i32 %sub, %3
  %4 = load i32, ptr %i, align 4
  %arrayidx = getelementptr inbounds [16 x i32], ptr %a, i32 0, i32 %4
  store i32 %add, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %5 = load i32, ptr %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond1, !llvm.loop !7

for.end:                                          ; preds = %for.cond1
  %arraydecay = getelementptr inbounds [16 x i32], ptr %a, i32 0, i32 0
  %6 = load i32, ptr %round, align 4
  %rem = srem i32 %6, 4
  %arrayidx4 = getelementptr inbounds [4 x ptr], ptr @unops, i32 0, i32 %rem
  %7 = load ptr, ptr %arrayidx4, align 4
  call void @map(ptr noundef %arraydecay, i32 noundef 16, ptr noundef %7) #1
  %8 = load i32, ptr %h, align 4
  %mul5 = mul i32 %8, 13
  %arraydecay6 = getelementptr inbounds [16 x i32], ptr %a, i32 0, i32 0
  %9 = load i32, ptr %round, align 4
  %10 = load i32, ptr %round, align 4
  %rem7 = srem i32 %10, 3
  %arrayidx8 = getelementptr inbounds [3 x ptr], ptr @binops, i32 0, i32 %rem7
  %11 = load ptr, ptr %arrayidx8, align 4
  %call = call i32 @fold(ptr noundef %arraydecay6, i32 noundef 16, i32 noundef %9, ptr noundef %11) #1
  %add9 = add i32 %mul5, %call
  store i32 %add9, ptr %h, align 4
  %12 = load i32, ptr %round, align 4
  %mul10 = mul nsw i32 %12, 5
  %sub11 = sub nsw i32 %mul10, 9
  %call12 = call i32 @compose(ptr noundef @unops, i32 noundef 4, i32 noundef %sub11) #1
  %13 = load i32, ptr %h, align 4
  %add13 = add i32 %13, %call12
  store i32 %add13, ptr %h, align 4
  br label %for.inc14

for.inc14:                                        ; preds = %for.end
  %14 = load i32, ptr %round, align 4
  %inc15 = add nsw i32 %14, 1
  store i32 %inc15, ptr %round, align 4
  br label %for.cond, !llvm.loop !9

for.end16:                                        ; preds = %for.cond
  store ptr @mix, ptr @binops, align 4
  %arraydecay17 = getelementptr inbounds [16 x i32], ptr %a, i32 0, i32 0
  %15 = load ptr, ptr @binops, align 4
  %call18 = call i32 @fold(ptr noundef %arraydecay17, i32 noundef 16, i32 noundef 1, ptr noundef %15) #1
  %16 = load i32, ptr %h, align 4
  %xor = xor i32 %16, %call18
  store i32 %xor, ptr %h, align 4
  %17 = load i32, ptr %h, align 4
  %call19 = call i32 @fib(i32 noundef 15) #1
  %add20 = add i32 %17, %call19
  ret i32 %add20
}

; Function Attrs: noinline nounwind optnone
define internal void @map(ptr noundef %a, i32 noundef %n, ptr noundef %f) #0 {
entry:
  %a.addr = alloca ptr, align 4
  %n.addr = alloca i32, align 4
  %f.addr = alloca ptr, align 4
  %i = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 4
  store i32 %n, ptr %n.addr, align 4
  store ptr %f, ptr %f.addr, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %f.addr, align 4
  %3 = load ptr, ptr %a.addr, align 4
  %4 = load i32, ptr %i, align 4
  %arrayidx = getelementptr inbounds i32, ptr %3, i32 %4
  %5 = load i32, ptr %arrayidx, align 4
  %call = call i32 %2(i32 noundef %5) #1
  %6 = load ptr, ptr %a.addr, align 4
  %7 = load i32, ptr %i, align 4
  %arrayidx1 = getelementptr inbounds i32, ptr %6, i32 %7
  store i32 %call, ptr %arrayidx1, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone
define internal i32 @fold(ptr noundef %a, i32 noundef %n, i32 noundef %init, ptr noundef %f) #0 {
entry:
  %a.addr = alloca ptr, align 4
  %n.addr = alloca i32, align 4
  %init.addr = alloca i32, align 4
  %f.addr = alloca ptr, align 4
  %i = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 4
  store i32 %n, ptr %n.addr, align 4
  store i32 %init, ptr %init.addr, align 4
  store ptr %f, ptr %f.addr, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %f.addr, align 4
  %3 = load i32, ptr %init.addr, align 4
  %4 = load ptr, ptr %a.addr, align 4
  %5 = load i32, ptr %i, align 4
  %arrayidx = getelementptr inbounds i32, ptr %4, i32 %5
  %6 = load i32, ptr %arrayidx, align 4
  %call = call i32 %2(i32 noundef %3, i32 noundef %6) #1
  store i32 %call, ptr %init.addr, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  %8 = load i32, ptr %init.addr, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone
define internal i32 @compose(ptr noundef %fs, i32 noundef %n, i32 noundef %x) #0 {
entry:
  %fs.addr = alloca ptr, align 4
  %n.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %fs, ptr %fs.addr, align 4
  store i32 %n, ptr %n.addr, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %fs.addr, align 4
  %3 = load i32, ptr %i, align 4
  %arrayidx = getelementptr inbounds ptr, ptr %2, i32 %3
  %4 = load ptr, ptr %arrayidx, align 4
  %5 = load i32, ptr %x.addr, align 4
  %call = call i32 %4(i32 noundef %5) #1
  store i32 %call, ptr %x.addr, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  %7 = load i32, ptr %x.addr, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone
define internal i32 @mix(i32 noundef %a, i32 noundef %b) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4
  store i32 %b, ptr %b.addr, align 4
  %0 = load i32, ptr %a.addr, align 4
  %mul = mul nsw i32 %0, 31
  %1 = load i32, ptr %b.addr, align 4
  %xor = xor i32 %mul, %1
  ret i32 %xor
}

; Function Attrs: noinline nounwind optnone
define internal i32 @fib(i32 noundef %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  %0 = load i32, ptr %n.addr, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i32, ptr %n.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load volatile ptr, ptr @fibp, align 4
  %3 = load i32, ptr %n.addr, align 4
  %sub = sub nsw i32 %3, 1
  %call = call i32 %2(i32 noundef %sub) #1
  %4 = load volatile ptr, ptr @fibp, align 4
  %5 = load i32, ptr %n.addr, align 4
  %sub1 = sub nsw i32 %5, 2
  %call2 = call i32 %4(i32 noundef %sub1) #1
  %add = add nsw i32 %call, %call2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %1, %cond.true ], [ %add, %cond.false ]
  ret i32 %cond
}

; Function Attrs: noinline nounwind optnone
define internal i32 @sq(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %1 = load i32, ptr %x.addr, align 4
  %mul = mul nsw i32 %0, %1
  ret i32 %mul
}

; Function Attrs: noinline nounwind optnone
define internal i32 @neg(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %sub = sub nsw i32 0, %0
  ret i32 %sub
}

; Function Attrs: noinline nounwind optnone
define internal i32 @half(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %div = sdiv i32 %0, 2
  ret i32 %div
}

; Function Attrs: noinline nounwind optnone
define internal i32 @inc(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %0, 1
  ret i32 %add
}

; Function Attrs: noinline nounwind optnone
define internal i32 @add(i32 noundef %a, i32 noundef %b) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4
  store i32 %b, ptr %b.addr, align 4
  %0 = load i32, ptr %a.addr, align 4
  %1 = load i32, ptr %b.addr, align 4
  %add = add nsw i32 %0, %1
  ret i32 %add
}

; Function Attrs: noinline nounwind optnone
define internal i32 @mx(i32 noundef %a, i32 noundef %b) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4
  store i32 %b, ptr %b.addr, align 4
  %0 = load i32, ptr %a.addr, align 4
  %1 = load i32, ptr %b.addr, align 4
  %cmp = icmp sgt i32 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, ptr %a.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, ptr %b.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %3, %cond.false ]
  ret i32 %cond
}

attributes #0 = { noinline nounwind optnone "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { nobuiltin "no-builtins" }

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
