; ModuleID = 'tests/programs/recursion.c'
source_filename = "tests/programs/recursion.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

@cols = internal global [8 x i32] zeroinitializer, align 4
@memo = internal global [32 x [32 x i32]] zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone
define dso_local i32 @main() #0 {
entry:
  %h = alloca i32, align 4
  %call = call i32 @ack(i32 noundef 2, i32 noundef 3) #1
  %mul = mul i32 %call, 1000
  %call1 = call i32 @ack(i32 noundef 3, i32 noundef 3) #1
  %add = add i32 %mul, %call1
  store i32 %add, ptr %h, align 4
  %0 = load i32, ptr %h, align 4
  %mul2 = mul i32 %0, 31
  %call3 = call i32 @fib(i32 noundef 20) #1
  %add4 = add i32 %mul2, %call3
  store i32 %add4, ptr %h, align 4
  %1 = load i32, ptr %h, align 4
  %mul5 = mul i32 %1, 31
  %call6 = call i32 @hanoi(i32 noundef 12, i32 noundef 1, i32 noundef 3, i32 noundef 2) #1
  %add7 = add i32 %mul5, %call6
  store i32 %add7, ptr %h, align 4
  %2 = load i32, ptr %h, align 4
  %mul8 = mul i32 %2, 31
  %call9 = call i32 @is_even(i32 noundef 301) #1
  %mul10 = mul i32 %call9, 2
  %add11 = add i32 %mul8, %mul10
  %call12 = call i32 @is_odd(i32 noundef 77) #1
  %add13 = add i32 %add11, %call12
  store i32 %add13, ptr %h, align 4
  %3 = load i32, ptr %h, align 4
  %mul14 = mul i32 %3, 31
  %call15 = call i32 @queens(i32 noundef 0) #1
  %add16 = add i32 %mul14, %call15
  store i32 %add16, ptr %h, align 4
  %4 = load i32, ptr %h, align 4
  %mul17 = mul i32 %4, 31
  %call18 = call i32 @choose(i32 noundef 30, i32 noundef 15) #1
  %add19 = add i32 %mul17, %call18
  store i32 %add19, ptr %h, align 4
  %5 = load i32, ptr %h, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone
define internal i32 @ack(i32 noundef %m, i32 noundef %n) #0 {
entry:
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  store i32 %m, ptr %m.addr, align 4
  store i32 %n, ptr %n.addr, align 4
  %0 = load i32, ptr %m.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i32, ptr %n.addr, align 4
  %add = add nsw i32 %1, 1
  br label %cond.end8

cond.false:                                       ; preds = %entry
  %2 = load i32, ptr %n.addr, align 4
  %cmp1 = icmp eq i32 %2, 0
  br i1 %cmp1, label %cond.true2, label %cond.false3

cond.true2:                                       ; preds = %cond.false
  %3 = load i32, ptr %m.addr, align 4
  %sub = sub nsw i32 %3, 1
  %call = call i32 @ack(i32 noundef %sub, i32 noundef 1) #1
  br label %cond.end

cond.false3:                                      ; preds = %cond.false
  %4 = load i32, ptr %m.addr, align 4
  %sub4 = sub nsw i32 %4, 1
  %5 = load i32, ptr %m.addr, align 4
  %6 = load i32, ptr %n.addr, align 4
  %sub5 = sub nsw i32 %6, 1
  %call6 = call i32 @ack(i32 noundef %5, i32 noundef %sub5) #1
  %call7 = call i32 @ack(i32 noundef %sub4, i32 noundef %call6) #1
  br label %cond.end

cond.end:                                         ; preds = %cond.false3, %cond.true2
  %cond = phi i32 [ %call, %cond.true2 ], [ %call7, %cond.false3 ]
  br label %cond.end8

cond.end8:                                        ; preds = %cond.end, %cond.true
  %cond9 = phi i32 [ %add, %cond.true ], [ %cond, %cond.end ]
  ret i32 %cond9
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
  %2 = load i32, ptr %n.addr, align 4
  %sub = sub nsw i32 %2, 1
  %call = call i32 @fib(i32 noundef %sub) #1
  %3 = load i32, ptr %n.addr, align 4
  %sub1 = sub nsw i32 %3, 2
  %call2 = call i32 @fib(i32 noundef %sub1) #1
  %add = add nsw i32 %call, %call2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %1, %cond.true ], [ %add, %cond.false ]
  ret i32 %cond
}

; Function Attrs: noinline nounwind optnone
define internal i32 @hanoi(i32 noundef %n, i32 noundef %from, i32 noundef %to, i32 noundef %via) #0 {
entry:
  %n.addr = alloca i32, align 4
  %from.addr = alloca i32, align 4
  %to.addr = alloca i32, align 4
  %via.addr = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  store i32 %from, ptr %from.addr, align 4
  store i32 %to, ptr %to.addr, align 4
  store i32 %via, ptr %via.addr, align 4
  %0 = load i32, ptr %n.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load i32, ptr %n.addr, align 4
  %sub = sub nsw i32 %1, 1
  %2 = load i32, ptr %from.addr, align 4
  %3 = load i32, ptr %via.addr, align 4
  %4 = load i32, ptr %to.addr, align 4
  %call = call i32 @hanoi(i32 noundef %sub, i32 noundef %2, i32 noundef %3, i32 noundef %4) #1
  %add = add nsw i32 %call, 1
  %5 = load i32, ptr %n.addr, align 4
  %sub1 = sub nsw i32 %5, 1
  %6 = load i32, ptr %via.addr, align 4
  %7 = load i32, ptr %to.addr, align 4
  %8 = load i32, ptr %from.addr, align 4
  %call2 = call i32 @hanoi(i32 noundef %sub1, i32 noundef %6, i32 noundef %7, i32 noundef %8) #1
  %add3 = add nsw i32 %add, %call2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %add3, %cond.false ]
  ret i32 %cond
}

; Function Attrs: noinline nounwind optnone
define internal i32 @is_even(i32 noundef %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  %0 = load i32, ptr %n.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load i32, ptr %n.addr, align 4
  %sub = sub i32 %1, 1
  %call = call i32 @is_odd(i32 noundef %sub) #1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %call, %cond.false ]
  ret i32 %cond
}

; Function Attrs: noinline nounwind optnone
define internal i32 @is_odd(i32 noundef %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  %0 = load i32, ptr %n.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load i32, ptr %n.addr, align 4
  %sub = sub i32 %1, 1
  %call = call i32 @is_even(i32 noundef %sub) #1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call, %cond.false ]
  ret i32 %cond
}

; Function Attrs: noinline nounwind optnone
define internal i32 @queens(i32 noundef %row) #0 {
entry:
  %retval = alloca i32, align 4
  %row.addr = alloca i32, align 4
  %n = alloca i32, align 4
  %c = alloca i32, align 4
  %ok = alloca i32, align 4
  %r = alloca i32, align 4
  store i32 %row, ptr %row.addr, align 4
  %0 = load i32, ptr %row.addr, align 4
  %cmp = icmp eq i32 %0, 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, ptr %n, align 4
  store i32 0, ptr %c, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc20, %if.end
  %1 = load i32, ptr %c, align 4
  %cmp1 = icmp slt i32 %1, 8
  br i1 %cmp1, label %for.body, label %for.end22

for.body:                                         ; preds = %for.cond
  store i32 1, ptr %ok, align 4
  store i32 0, ptr %r, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %r, align 4
  %3 = load i32, ptr %row.addr, align 4
  %cmp3 = icmp slt i32 %2, %3
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond2
  %4 = load i32, ptr %ok, align 4
  %tobool = icmp ne i32 %4, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond2
  %5 = phi i1 [ false, %for.cond2 ], [ %tobool, %land.rhs ]
  br i1 %5, label %for.body4, label %for.end

for.body4:                                        ; preds = %land.end
  %6 = load i32, ptr %r, align 4
  %arrayidx = getelementptr inbounds [8 x i32], ptr @cols, i32 0, i32 %6
  %7 = load i32, ptr %arrayidx, align 4
  %8 = load i32, ptr %c, align 4
  %cmp5 = icmp ne i32 %7, %8
  br i1 %cmp5, label %land.lhs.true, label %land.end14

land.lhs.true:                                    ; preds = %for.body4
  %9 = load i32, ptr %r, align 4
  %arrayidx6 = getelementptr inbounds [8 x i32], ptr @cols, i32 0, i32 %9
  %10 = load i32, ptr %arrayidx6, align 4
  %11 = load i32, ptr %c, align 4
  %sub = sub nsw i32 %10, %11
  %12 = load i32, ptr %row.addr, align 4
  %13 = load i32, ptr %r, align 4
  %sub7 = sub nsw i32 %12, %13
  %cmp8 = icmp ne i32 %sub, %sub7
  br i1 %cmp8, label %land.rhs9, label %land.end14

land.rhs9:                                        ; preds = %land.lhs.true
  %14 = load i32, ptr %c, align 4
  %15 = load i32, ptr %r, align 4
  %arrayidx10 = getelementptr inbounds [8 x i32], ptr @cols, i32 0, i32 %15
  %16 = load i32, ptr %arrayidx10, align 4
  %sub11 = sub nsw i32 %14, %16
  %17 = load i32, ptr %row.addr, align 4
  %18 = load i32, ptr %r, align 4
  %sub12 = sub nsw i32 %17, %18
  %cmp13 = icmp ne i32 %sub11, %sub12
  br label %land.end14

land.end14:                                       ; preds = %land.rhs9, %land.lhs.true, %for.body4
  %19 = phi i1 [ false, %land.lhs.true ], [ false, %for.body4 ], [ %cmp13, %land.rhs9 ]
  %land.ext = zext i1 %19 to i32
  store i32 %land.ext, ptr %ok, align 4
  br label %for.inc

for.inc:                                          ; preds = %land.end14
  %20 = load i32, ptr %r, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, ptr %r, align 4
  br label %for.cond2, !llvm.loop !7

for.end:                                          ; preds = %land.end
  %21 = load i32, ptr %ok, align 4
  %tobool15 = icmp ne i32 %21, 0
  br i1 %tobool15, label %if.then16, label %if.end19

if.then16:                                        ; preds = %for.end
  %22 = load i32, ptr %c, align 4
  %23 = load i32, ptr %row.addr, align 4
  %arrayidx17 = getelementptr inbounds [8 x i32], ptr @cols, i32 0, i32 %23
  store i32 %22, ptr %arrayidx17, align 4
  %24 = load i32, ptr %row.addr, align 4
  %add = add nsw i32 %24, 1
  %call = call i32 @queens(i32 noundef %add) #1
  %25 = load i32, ptr %n, align 4
  %add18 = add nsw i32 %25, %call
  store i32 %add18, ptr %n, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %for.end
  br label %for.inc20

for.inc20:                                        ; preds = %if.end19
  %26 = load i32, ptr %c, align 4
  %inc21 = add nsw i32 %26, 1
  store i32 %inc21, ptr %c, align 4
  br label %for.cond, !llvm.loop !9

for.end22:                                        ; preds = %for.cond
  %27 = load i32, ptr %n, align 4
  store i32 %27, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end22, %if.then
  %28 = load i32, ptr %retval, align 4
  ret i32 %28
}

; Function Attrs: noinline nounwind optnone
define internal i32 @choose(i32 noundef %n, i32 noundef %k) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %k.addr = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  store i32 %k, ptr %k.addr, align 4
  %0 = load i32, ptr %k.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %k.addr, align 4
  %2 = load i32, ptr %n.addr, align 4
  %cmp1 = icmp eq i32 %1, %2
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i32, ptr %n.addr, align 4
  %arrayidx = getelementptr inbounds [32 x [32 x i32]], ptr @memo, i32 0, i32 %3
  %4 = load i32, ptr %k.addr, align 4
  %arrayidx2 = getelementptr inbounds [32 x i32], ptr %arrayidx, i32 0, i32 %4
  %5 = load i32, ptr %arrayidx2, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then3, label %if.end6

if.then3:                                         ; preds = %if.end
  %6 = load i32, ptr %n.addr, align 4
  %arrayidx4 = getelementptr inbounds [32 x [32 x i32]], ptr @memo, i32 0, i32 %6
  %7 = load i32, ptr %k.addr, align 4
  %arrayidx5 = getelementptr inbounds [32 x i32], ptr %arrayidx4, i32 0, i32 %7
  %8 = load i32, ptr %arrayidx5, align 4
  store i32 %8, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  %9 = load i32, ptr %n.addr, align 4
  %sub = sub nsw i32 %9, 1
  %10 = load i32, ptr %k.addr, align 4
  %sub7 = sub nsw i32 %10, 1
  %call = call i32 @choose(i32 noundef %sub, i32 noundef %sub7) #1
  %11 = load i32, ptr %n.addr, align 4
  %sub8 = sub nsw i32 %11, 1
  %12 = load i32, ptr %k.addr, align 4
  %call9 = call i32 @choose(i32 noundef %sub8, i32 noundef %12) #1
  %add = add i32 %call, %call9
  %13 = load i32, ptr %n.addr, align 4
  %arrayidx10 = getelementptr inbounds [32 x [32 x i32]], ptr @memo, i32 0, i32 %13
  %14 = load i32, ptr %k.addr, align 4
  %arrayidx11 = getelementptr inbounds [32 x i32], ptr %arrayidx10, i32 0, i32 %14
  store i32 %add, ptr %arrayidx11, align 4
  store i32 %add, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end6, %if.then3, %if.then
  %15 = load i32, ptr %retval, align 4
  ret i32 %15
}

attributes #0 = { noinline nounwind optnone "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcalculet,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
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
