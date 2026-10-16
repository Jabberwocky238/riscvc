# RUN: llvm-mc %s -triple=riscv32 -mattr=+experimental-p -show-encoding \
# RUN:     | FileCheck -check-prefixes=CHECK-ASM,CHECK-ASM-AND-OBJ %s
# RUN: llvm-mc -filetype=obj -triple=riscv32 -mattr=+experimental-p < %s \
# RUN:     | llvm-objdump --mattr=+experimental-p -d -r --no-print-imm-hex - \
# RUN:     | FileCheck --check-prefixes=CHECK-ASM-AND-OBJ %s

# CHECK-ASM-AND-OBJ: cls a1, a2
# CHECK-ASM: encoding: [0x93,0x15,0x36,0x60]
# riscvc-fixtures: cls a1, a2
# CHECK-ASM-AND-OBJ: abs a4, a5
# CHECK-ASM: encoding: [0x13,0x97,0x77,0x60]
# riscvc-fixtures: abs a4, a5
# CHECK-ASM-AND-OBJ: rev s2, s3
# CHECK-ASM: encoding: [0x13,0xd9,0xf9,0x69]
# riscvc-fixtures: rev s2, s3
# CHECK-ASM-AND-OBJ: pack s0, s1, s2
# CHECK-ASM: encoding: [0x33,0xc4,0x24,0x09]
# riscvc-fixtures: pack s0, s1, s2
# CHECK-ASM-AND-OBJ: zext.h t0, t1
# CHECK-ASM: encoding: [0xb3,0x42,0x03,0x08]
# riscvc-fixtures: pack t0, t1, x0
# CHECK-ASM-AND-OBJ: zext.h t0, t1
# CHECK-ASM: encoding: [0xb3,0x42,0x03,0x08]
zext.h t0, t1
# CHECK-ASM-AND-OBJ: pslli.b a6, a7, 0
# CHECK-ASM: encoding: [0x1b,0xa8,0x88,0x80]
# riscvc-fixtures: pslli.b a6, a7, 0
# CHECK-ASM-AND-OBJ: pslli.h ra, sp, 1
# CHECK-ASM: encoding: [0x9b,0x20,0x11,0x81]
# riscvc-fixtures: pslli.h ra, sp, 1
# CHECK-ASM-AND-OBJ: psslai.h t0, t1, 2
# CHECK-ASM: encoding: [0x9b,0x22,0x23,0xd1]
# riscvc-fixtures: psslai.h t0, t1, 2
# CHECK-ASM-AND-OBJ: sslai a4, a5, 3
# CHECK-ASM: encoding: [0x1b,0xa7,0x37,0xd2]
# riscvc-fixtures: sslai a4, a5, 3
# CHECK-ASM-AND-OBJ: pli.h a5, 16
# CHECK-ASM: encoding: [0x9b,0x27,0x10,0xb0]
# riscvc-fixtures: pli.h a5, 16
# CHECK-ASM-AND-OBJ: pli.b a6, 16
# CHECK-ASM: encoding: [0x1b,0x28,0x10,0xb4]
# riscvc-fixtures: pli.b a6, 16
# CHECK-ASM-AND-OBJ: pli.b a6, -128
# CHECK-ASM: encoding: [0x1b,0x28,0x80,0xb4]
# riscvc-fixtures: pli.b a6, -128
# CHECK-ASM-AND-OBJ: psext.h.b a7, a0
# CHECK-ASM: encoding: [0x9b,0x28,0x45,0xe0]
# riscvc-fixtures: psext.h.b a7, a0
# CHECK-ASM-AND-OBJ: psabs.h a1, a2
# CHECK-ASM: encoding: [0x9b,0x25,0x76,0xe0]
# riscvc-fixtures: psabs.h a1, a2
# CHECK-ASM-AND-OBJ: psabs.b t0, t1
# CHECK-ASM: encoding: [0x9b,0x22,0x73,0xe4]
# riscvc-fixtures: psabs.b t0, t1
# CHECK-ASM-AND-OBJ: plui.h gp, 32
# CHECK-ASM: encoding: [0x9b,0x21,0x08,0xf0]
# riscvc-fixtures: plui.h gp, 32
# CHECK-ASM-AND-OBJ: plui.h gp, -412
# CHECK-ASM: encoding: [0x9b,0x21,0x99,0xf0]
# riscvc-fixtures: plui.h gp, 612
# CHECK-ASM-AND-OBJ: psll.hs a0, a1, a2
# CHECK-ASM: encoding: [0x1b,0xa5,0xc5,0x88]
# riscvc-fixtures: psll.hs a0, a1, a2
# CHECK-ASM-AND-OBJ: psll.bs a3, a4, a5
# CHECK-ASM: encoding: [0x9b,0x26,0xf7,0x8c]
# riscvc-fixtures: psll.bs a3, a4, a5
# CHECK-ASM-AND-OBJ: padd.hs t0, t1, t2
# CHECK-ASM: encoding: [0x9b,0x22,0x73,0x98]
# riscvc-fixtures: padd.hs t0, t1, t2
# CHECK-ASM-AND-OBJ: padd.bs ra, a1, a2
# CHECK-ASM: encoding: [0x9b,0xa0,0xc5,0x9c]
# riscvc-fixtures: padd.bs ra, a1, a2
# CHECK-ASM-AND-OBJ: pssha.hs a3, a4, a5
# CHECK-ASM: encoding: [0x9b,0x26,0xf7,0xe8]
# riscvc-fixtures: pssha.hs a3, a4, a5
# CHECK-ASM-AND-OBJ: ssha gp, a4, a5
# CHECK-ASM: encoding: [0x9b,0x21,0xf7,0xea]
# riscvc-fixtures: ssha gp, a4, a5
# CHECK-ASM-AND-OBJ: psshar.hs a6, a7, a0
# CHECK-ASM: encoding: [0x1b,0xa8,0xa8,0xf8]
# riscvc-fixtures: psshar.hs a6, a7, a0
# CHECK-ASM-AND-OBJ: sshar t1, a7, a0
# CHECK-ASM: encoding: [0x1b,0xa3,0xa8,0xfa]
# riscvc-fixtures: sshar t1, a7, a0
# CHECK-ASM-AND-OBJ: psrli.b a6, a7, 0
# CHECK-ASM: encoding: [0x1b,0xc8,0x88,0x80]
# riscvc-fixtures: psrli.b a6, a7, 0
# CHECK-ASM-AND-OBJ: psrli.h ra, sp, 1
# CHECK-ASM: encoding: [0x9b,0x40,0x11,0x81]
# riscvc-fixtures: psrli.h ra, sp, 1
# CHECK-ASM-AND-OBJ: pusati.h t2, t3, 4
# CHECK-ASM: encoding: [0x9b,0x43,0x4e,0xa1]
# riscvc-fixtures: pusati.h t2, t3, 4
# CHECK-ASM-AND-OBJ: usati t3, t4, 5
# CHECK-ASM: encoding: [0x1b,0xce,0x5e,0xa2]
# riscvc-fixtures: usati t3, t4, 5
# CHECK-ASM-AND-OBJ: psrai.b a6, a7, 0
# CHECK-ASM: encoding: [0x1b,0xc8,0x88,0xc0]
# riscvc-fixtures: psrai.b a6, a7, 0
# CHECK-ASM-AND-OBJ: psrai.h ra, sp, 1
# CHECK-ASM: encoding: [0x9b,0x40,0x11,0xc1]
# riscvc-fixtures: psrai.h ra, sp, 1
# CHECK-ASM-AND-OBJ: psrari.h t4, t5, 6
# CHECK-ASM: encoding: [0x9b,0x4e,0x6f,0xd1]
# riscvc-fixtures: psrari.h t4, t5, 6
# CHECK-ASM-AND-OBJ: srari t5, t6, 7
# CHECK-ASM: encoding: [0x1b,0xcf,0x7f,0xd2]
# riscvc-fixtures: srari t5, t6, 7
# CHECK-ASM-AND-OBJ: psati.h t6, s11, 8
# CHECK-ASM: encoding: [0x9b,0xcf,0x8d,0xe1]
# riscvc-fixtures: psati.h t6, s11, 8
# CHECK-ASM-AND-OBJ: sati s11, s10, 9
# CHECK-ASM: encoding: [0x9b,0x4d,0x9d,0xe2]
# riscvc-fixtures: sati s11, s10, 9
# CHECK-ASM-AND-OBJ: psrl.hs a6, a7, a1
# CHECK-ASM: encoding: [0x1b,0xc8,0xb8,0x88]
# riscvc-fixtures: psrl.hs a6, a7, a1
# CHECK-ASM-AND-OBJ: psrl.bs a1, a2, a3
# CHECK-ASM: encoding: [0x9b,0x45,0xd6,0x8c]
# riscvc-fixtures: psrl.bs a1, a2, a3
# CHECK-ASM-AND-OBJ: predsum.hs a4, a5, a6
# CHECK-ASM: encoding: [0x1b,0xc7,0x07,0x99]
# riscvc-fixtures: predsum.hs a4, a5, a6
# CHECK-ASM-AND-OBJ: predsum.bs a7, a1, a1
# CHECK-ASM: encoding: [0x9b,0xc8,0xb5,0x9c]
# riscvc-fixtures: predsum.bs a7, a1, a1
# CHECK-ASM-AND-OBJ: predsumu.hs t0, t1, t2
# CHECK-ASM: encoding: [0x9b,0x42,0x73,0xb8]
# riscvc-fixtures: predsumu.hs t0, t1, t2
# CHECK-ASM-AND-OBJ: predsumu.bs t3, t4, t5
# CHECK-ASM: encoding: [0x1b,0xce,0xee,0xbd]
# riscvc-fixtures: predsumu.bs t3, t4, t5
# CHECK-ASM-AND-OBJ: psra.hs ra, a1, a2
# CHECK-ASM: encoding: [0x9b,0xc0,0xc5,0xc8]
# riscvc-fixtures: psra.hs ra, a1, a2
# CHECK-ASM-AND-OBJ: psra.bs sp, a2, a3
# CHECK-ASM: encoding: [0x1b,0x41,0xd6,0xcc]
# riscvc-fixtures: psra.bs sp, a2, a3
# CHECK-ASM-AND-OBJ: padd.h t0, t1, t2
# CHECK-ASM: encoding: [0xbb,0x02,0x73,0x80]
# riscvc-fixtures: padd.h t0, t1, t2
# CHECK-ASM-AND-OBJ: padd.b ra, a1, a2
# CHECK-ASM: encoding: [0xbb,0x80,0xc5,0x84]
# riscvc-fixtures: padd.b ra, a1, a2
# CHECK-ASM-AND-OBJ: psadd.h t3, t4, t5
# CHECK-ASM: encoding: [0x3b,0x8e,0xee,0x91]
# riscvc-fixtures: psadd.h t3, t4, t5
# CHECK-ASM-AND-OBJ: sadd t1, a7, a0
# CHECK-ASM: encoding: [0x3b,0x83,0xa8,0x92]
# riscvc-fixtures: sadd t1, a7, a0
# CHECK-ASM-AND-OBJ: psadd.b t0, t1, t2
# CHECK-ASM: encoding: [0xbb,0x02,0x73,0x94]
# riscvc-fixtures: psadd.b t0, t1, t2
# CHECK-ASM-AND-OBJ: paadd.h t3, t4, t5
# CHECK-ASM: encoding: [0x3b,0x8e,0xee,0x99]
# riscvc-fixtures: paadd.h t3, t4, t5
# CHECK-ASM-AND-OBJ: aadd t1, a7, a0
# CHECK-ASM: encoding: [0x3b,0x83,0xa8,0x9a]
# riscvc-fixtures: aadd t1, a7, a0
# CHECK-ASM-AND-OBJ: paadd.b t0, t1, t2
# CHECK-ASM: encoding: [0xbb,0x02,0x73,0x9c]
# riscvc-fixtures: paadd.b t0, t1, t2
# CHECK-ASM-AND-OBJ: psaddu.h t3, t4, t5
# CHECK-ASM: encoding: [0x3b,0x8e,0xee,0xb1]
# riscvc-fixtures: psaddu.h t3, t4, t5
# CHECK-ASM-AND-OBJ: saddu t1, a7, a0
# CHECK-ASM: encoding: [0x3b,0x83,0xa8,0xb2]
# riscvc-fixtures: saddu t1, a7, a0
# CHECK-ASM-AND-OBJ: psaddu.b t0, t1, t2
# CHECK-ASM: encoding: [0xbb,0x02,0x73,0xb4]
# riscvc-fixtures: psaddu.b t0, t1, t2
# CHECK-ASM-AND-OBJ: paaddu.h t3, t4, t5
# CHECK-ASM: encoding: [0x3b,0x8e,0xee,0xb9]
# riscvc-fixtures: paaddu.h t3, t4, t5
# CHECK-ASM-AND-OBJ: aaddu t1, a7, a0
# CHECK-ASM: encoding: [0x3b,0x83,0xa8,0xba]
# riscvc-fixtures: aaddu t1, a7, a0
# CHECK-ASM-AND-OBJ: paaddu.b t0, t1, t2
# CHECK-ASM: encoding: [0xbb,0x02,0x73,0xbc]
# riscvc-fixtures: paaddu.b t0, t1, t2
# CHECK-ASM-AND-OBJ: psub.h t3, t4, t5
# CHECK-ASM: encoding: [0x3b,0x8e,0xee,0xc1]
# riscvc-fixtures: psub.h t3, t4, t5
# CHECK-ASM-AND-OBJ: psub.b t0, t1, t2
# CHECK-ASM: encoding: [0xbb,0x02,0x73,0xc4]
# riscvc-fixtures: psub.b t0, t1, t2
# CHECK-ASM-AND-OBJ: pabd.h t3, t4, t5
# CHECK-ASM: encoding: [0x3b,0x8e,0xee,0xc9]
# riscvc-fixtures: pabd.h t3, t4, t5
# CHECK-ASM-AND-OBJ: pabd.b t0, t1, t2
# CHECK-ASM: encoding: [0xbb,0x02,0x73,0xcc]
# riscvc-fixtures: pabd.b t0, t1, t2
# CHECK-ASM-AND-OBJ: pssub.h t3, t4, t5
# CHECK-ASM: encoding: [0x3b,0x8e,0xee,0xd1]
# riscvc-fixtures: pssub.h t3, t4, t5
# CHECK-ASM-AND-OBJ: ssub t1, a7, a0
# CHECK-ASM: encoding: [0x3b,0x83,0xa8,0xd2]
# riscvc-fixtures: ssub t1, a7, a0
# CHECK-ASM-AND-OBJ: pssub.b t0, t1, t2
# CHECK-ASM: encoding: [0xbb,0x02,0x73,0xd4]
# riscvc-fixtures: pssub.b t0, t1, t2
# CHECK-ASM-AND-OBJ: pasub.h t3, t4, t5
# CHECK-ASM: encoding: [0x3b,0x8e,0xee,0xd9]
# riscvc-fixtures: pasub.h t3, t4, t5
# CHECK-ASM-AND-OBJ: asub t1, a7, a0
# CHECK-ASM: encoding: [0x3b,0x83,0xa8,0xda]
# riscvc-fixtures: asub t1, a7, a0
# CHECK-ASM-AND-OBJ: pasub.b t0, t1, t2
# CHECK-ASM: encoding: [0xbb,0x02,0x73,0xdc]
# riscvc-fixtures: pasub.b t0, t1, t2
# CHECK-ASM-AND-OBJ: pabdu.h t3, t4, t5
# CHECK-ASM: encoding: [0x3b,0x8e,0xee,0xe9]
# riscvc-fixtures: pabdu.h t3, t4, t5
# CHECK-ASM-AND-OBJ: pabdu.b t0, t1, t2
# CHECK-ASM: encoding: [0xbb,0x02,0x73,0xec]
# riscvc-fixtures: pabdu.b t0, t1, t2
# CHECK-ASM-AND-OBJ: pssubu.h t3, t4, t5
# CHECK-ASM: encoding: [0x3b,0x8e,0xee,0xf1]
# riscvc-fixtures: pssubu.h t3, t4, t5
# CHECK-ASM-AND-OBJ: ssubu t1, a7, a0
# CHECK-ASM: encoding: [0x3b,0x83,0xa8,0xf2]
# riscvc-fixtures: ssubu t1, a7, a0
# CHECK-ASM-AND-OBJ: pssubu.b t0, t1, t2
# CHECK-ASM: encoding: [0xbb,0x02,0x73,0xf4]
# riscvc-fixtures: pssubu.b t0, t1, t2
# CHECK-ASM-AND-OBJ: pasubu.h t3, t4, t5
# CHECK-ASM: encoding: [0x3b,0x8e,0xee,0xf9]
# riscvc-fixtures: pasubu.h t3, t4, t5
# CHECK-ASM-AND-OBJ: asubu t1, a7, a0
# CHECK-ASM: encoding: [0x3b,0x83,0xa8,0xfa]
# riscvc-fixtures: asubu t1, a7, a0
# CHECK-ASM-AND-OBJ: pasubu.b t0, t1, t2
# CHECK-ASM: encoding: [0xbb,0x02,0x73,0xfc]
# riscvc-fixtures: pasubu.b t0, t1, t2
# CHECK-ASM-AND-OBJ: slx gp, a4, a5
# CHECK-ASM: encoding: [0xbb,0x11,0xf7,0x8e]
# riscvc-fixtures: slx gp, a4, a5
# CHECK-ASM-AND-OBJ: pmul.h.b01 t3, t4, t5
# CHECK-ASM: encoding: [0x3b,0x9e,0xee,0x91]
# riscvc-fixtures: pmul.h.b01 t3, t4, t5
# CHECK-ASM-AND-OBJ: mul.h01 t0, t1, t2
# CHECK-ASM: encoding: [0xbb,0x12,0x73,0x92]
# riscvc-fixtures: mul.h01 t0, t1, t2
# CHECK-ASM-AND-OBJ: macc.h01 t3, t4, t5
# CHECK-ASM: encoding: [0x3b,0x9e,0xee,0x9b]
# riscvc-fixtures: macc.h01 t3, t4, t5
# CHECK-ASM-AND-OBJ: mvm a0, a1, a2
# CHECK-ASM: encoding: [0x3b,0x95,0xc5,0xa8]
# riscvc-fixtures: mvm a0, a1, a2
# CHECK-ASM-AND-OBJ: mvmn gp, a4, a5
# CHECK-ASM: encoding: [0xbb,0x11,0xf7,0xaa]
# riscvc-fixtures: mvmn gp, a4, a5
# CHECK-ASM-AND-OBJ: merge t0, t1, t2
# CHECK-ASM: encoding: [0xbb,0x12,0x73,0xac]
# riscvc-fixtures: merge t0, t1, t2
# CHECK-ASM-AND-OBJ: srx gp, a4, a5
# CHECK-ASM: encoding: [0xbb,0x11,0xf7,0xae]
# riscvc-fixtures: srx gp, a4, a5
# CHECK-ASM-AND-OBJ: pmulu.h.b01 t3, t4, t5
# CHECK-ASM: encoding: [0x3b,0x9e,0xee,0xb1]
# riscvc-fixtures: pmulu.h.b01 t3, t4, t5
# CHECK-ASM-AND-OBJ: mulu.h01 t0, t1, t2
# CHECK-ASM: encoding: [0xbb,0x12,0x73,0xb2]
# riscvc-fixtures: mulu.h01 t0, t1, t2
# CHECK-ASM-AND-OBJ: pabdsumu.b t3, t4, t5
# CHECK-ASM: encoding: [0x3b,0x9e,0xee,0xb5]
# riscvc-fixtures: pabdsumu.b t3, t4, t5
# CHECK-ASM-AND-OBJ: maccu.h01 t3, t4, t5
# CHECK-ASM: encoding: [0x3b,0x9e,0xee,0xbb]
# riscvc-fixtures: maccu.h01 t3, t4, t5
# CHECK-ASM-AND-OBJ: pabdsumau.b t3, t4, t5
# CHECK-ASM: encoding: [0x3b,0x9e,0xee,0xbd]
# riscvc-fixtures: pabdsumau.b t3, t4, t5
# CHECK-ASM-AND-OBJ: psh1add.h a0, a1, a2
# CHECK-ASM: encoding: [0x3b,0xa5,0xc5,0xa0]
# riscvc-fixtures: psh1add.h a0, a1, a2
# CHECK-ASM-AND-OBJ: pssh1sadd.h a3, a4, a5
# CHECK-ASM: encoding: [0xbb,0x26,0xf7,0xb0]
# riscvc-fixtures: pssh1sadd.h a3, a4, a5
# CHECK-ASM-AND-OBJ: ssh1sadd t0, t1, t2
# CHECK-ASM: encoding: [0xbb,0x22,0x73,0xb2]
# riscvc-fixtures: ssh1sadd t0, t1, t2
# CHECK-ASM-AND-OBJ: pmul.h.b00 s6, t4, s8
# CHECK-ASM: encoding: [0x3b,0xbb,0x8e,0x81]
# riscvc-fixtures: pmul.h.b00 s6, t4, s8
# CHECK-ASM-AND-OBJ: mul.h00 a4, t4, s2
# CHECK-ASM: encoding: [0x3b,0xb7,0x2e,0x83]
# riscvc-fixtures: mul.h00 a4, t4, s2
# CHECK-ASM-AND-OBJ: macc.h00 a4, a0, s0
# CHECK-ASM: encoding: [0x3b,0x37,0x85,0x8a]
# riscvc-fixtures: macc.h00 a4, a0, s0
# CHECK-ASM-AND-OBJ: pmul.h.b11 t0, t4, s4
# CHECK-ASM: encoding: [0xbb,0xb2,0x4e,0x91]
# riscvc-fixtures: pmul.h.b11 t0, t4, s4
# CHECK-ASM-AND-OBJ: mul.h11 a0, a4, a0
# CHECK-ASM: encoding: [0x3b,0x35,0xa7,0x92]
# riscvc-fixtures: mul.h11 a0, a4, a0
# CHECK-ASM-AND-OBJ: macc.h11 s6, a4, s4
# CHECK-ASM: encoding: [0x3b,0x3b,0x47,0x9b]
# riscvc-fixtures: macc.h11 s6, a4, s4
# CHECK-ASM-AND-OBJ: pmulu.h.b00 t2, s6, s8
# CHECK-ASM: encoding: [0xbb,0x33,0x8b,0xa1]
# riscvc-fixtures: pmulu.h.b00 t2, s6, s8
# CHECK-ASM-AND-OBJ: mulu.h00 s6, s0, a0
# CHECK-ASM: encoding: [0x3b,0x3b,0xa4,0xa2]
# riscvc-fixtures: mulu.h00 s6, s0, a0
# CHECK-ASM-AND-OBJ: maccu.h00 s0, s6, s0
# CHECK-ASM: encoding: [0x3b,0x34,0x8b,0xaa]
# riscvc-fixtures: maccu.h00 s0, s6, s0
# CHECK-ASM-AND-OBJ: pmulu.h.b11 t2, s6, a0
# CHECK-ASM: encoding: [0xbb,0x33,0xab,0xb0]
# riscvc-fixtures: pmulu.h.b11 t2, s6, a0
# CHECK-ASM-AND-OBJ: mulu.h11 s0, s4, s6
# CHECK-ASM: encoding: [0x3b,0x34,0x6a,0xb3]
# riscvc-fixtures: mulu.h11 s0, s4, s6
# CHECK-ASM-AND-OBJ: maccu.h11 s0, t4, t4
# CHECK-ASM: encoding: [0x3b,0xb4,0xde,0xbb]
# riscvc-fixtures: maccu.h11 s0, t4, t4
# CHECK-ASM-AND-OBJ: pmulsu.h.b00 s4, a4, s8
# CHECK-ASM: encoding: [0x3b,0x3a,0x87,0xe1]
# riscvc-fixtures: pmulsu.h.b00 s4, a4, s8
# CHECK-ASM-AND-OBJ: mulsu.h00 a4, s4, s6
# CHECK-ASM: encoding: [0x3b,0x37,0x6a,0xe3]
# riscvc-fixtures: mulsu.h00 a4, s4, s6
# CHECK-ASM-AND-OBJ: maccsu.h00 s4, s4, s0
# CHECK-ASM: encoding: [0x3b,0x3a,0x8a,0xea]
# riscvc-fixtures: maccsu.h00 s4, s4, s0
# CHECK-ASM-AND-OBJ: pmulsu.h.b11 s6, a2, s4
# CHECK-ASM: encoding: [0x3b,0x3b,0x46,0xf1]
# riscvc-fixtures: pmulsu.h.b11 s6, a2, s4
# CHECK-ASM-AND-OBJ: mulsu.h11 s8, s4, s0
# CHECK-ASM: encoding: [0x3b,0x3c,0x8a,0xf2]
# riscvc-fixtures: mulsu.h11 s8, s4, s0
# CHECK-ASM-AND-OBJ: maccsu.h11 s0, a2, s6
# CHECK-ASM: encoding: [0x3b,0x34,0x66,0xfb]
# riscvc-fixtures: maccsu.h11 s0, a2, s6
# CHECK-ASM-AND-OBJ: ppaire.b t1, a2, t5
# CHECK-ASM: encoding: [0x3b,0x43,0xe6,0x81]
# riscvc-fixtures: ppaire.b t1, a2, t5
# CHECK-ASM-AND-OBJ: ppaireo.b t5, t3, s2
# CHECK-ASM: encoding: [0x3b,0x4f,0x2e,0x91]
# riscvc-fixtures: ppaireo.b t5, t3, s2
# CHECK-ASM-AND-OBJ: ppaireo.h t1, t1, s2
# CHECK-ASM: encoding: [0x3b,0x43,0x23,0x93]
# riscvc-fixtures: ppaireo.h t1, t1, s2
# CHECK-ASM-AND-OBJ: ppairoe.b t1, t1, s0
# CHECK-ASM: encoding: [0x3b,0x43,0x83,0xa0]
# riscvc-fixtures: ppairoe.b t1, t1, s0
# CHECK-ASM-AND-OBJ: ppairoe.h t5, s0, a2
# CHECK-ASM: encoding: [0x3b,0x4f,0xc4,0xa2]
# riscvc-fixtures: ppairoe.h t5, s0, a2
# CHECK-ASM-AND-OBJ: ppairo.b t3, s0, s0
# CHECK-ASM: encoding: [0x3b,0x4e,0x84,0xb0]
# riscvc-fixtures: ppairo.b t3, s0, s0
# CHECK-ASM-AND-OBJ: ppairo.h a2, t3, t1
# CHECK-ASM: encoding: [0x3b,0x46,0x6e,0xb2]
# riscvc-fixtures: ppairo.h a2, t3, t1
# CHECK-ASM: encoding: [0x3b,0x5e,0x83,0x80]
# riscvc-fixtures: pm2add.h t3, t1, s0
# CHECK-ASM-AND-OBJ: pm4add.b t1, s2, t5
# CHECK-ASM: encoding: [0x3b,0x53,0xe9,0x85]
# riscvc-fixtures: pm4add.b t1, s2, t5
# CHECK-ASM-AND-OBJ: pm2adda.h t1, s2, a4
# CHECK-ASM: encoding: [0x3b,0x53,0xe9,0x88]
# riscvc-fixtures: pm2adda.h t1, s2, a4
# CHECK-ASM-AND-OBJ: pm4adda.b t3, a0, t5
# CHECK-ASM: encoding: [0x3b,0x5e,0xe5,0x8d]
# riscvc-fixtures: pm4adda.b t3, a0, t5
# CHECK-ASM-AND-OBJ: pm2add.hx s0, t5, a4
# CHECK-ASM: encoding: [0x3b,0x54,0xef,0x90]
# riscvc-fixtures: pm2add.hx s0, t5, a4
# CHECK-ASM-AND-OBJ: pm2adda.hx a0, a0, t1
# CHECK-ASM: encoding: [0x3b,0x55,0x65,0x98]
# riscvc-fixtures: pm2adda.hx a0, a0, t1
# CHECK-ASM-AND-OBJ: pm2addu.h s2, t5, a2
# CHECK-ASM: encoding: [0x3b,0x59,0xcf,0xa0]
# riscvc-fixtures: pm2addu.h s2, t5, a2
# CHECK-ASM-AND-OBJ: pm4addu.b t5, s0, t1
# CHECK-ASM: encoding: [0x3b,0x5f,0x64,0xa4]
# riscvc-fixtures: pm4addu.b t5, s0, t1
# CHECK-ASM-AND-OBJ: pm2addau.h t3, t1, t5
# CHECK-ASM: encoding: [0x3b,0x5e,0xe3,0xa9]
# riscvc-fixtures: pm2addau.h t3, t1, t5
# CHECK-ASM-AND-OBJ: pm4addau.b a4, t3, a0
# CHECK-ASM: encoding: [0x3b,0x57,0xae,0xac]
# riscvc-fixtures: pm4addau.b a4, t3, a0
# CHECK-ASM-AND-OBJ: pmq2add.h t1, a2, t1
# CHECK-ASM: encoding: [0x3b,0x53,0x66,0xb0]
# riscvc-fixtures: pmq2add.h t1, a2, t1
# CHECK-ASM-AND-OBJ: pmqr2add.h a2, a4, s2
# CHECK-ASM: encoding: [0x3b,0x56,0x27,0xb5]
# riscvc-fixtures: pmqr2add.h a2, a4, s2
# CHECK-ASM-AND-OBJ: pmq2adda.h a2, s2, t1
# CHECK-ASM: encoding: [0x3b,0x56,0x69,0xb8]
# riscvc-fixtures: pmq2adda.h a2, s2, t1
# CHECK-ASM-AND-OBJ: pmqr2adda.h t1, s0, a2
# CHECK-ASM: encoding: [0x3b,0x53,0xc4,0xbc]
# riscvc-fixtures: pmqr2adda.h t1, s0, a2
# CHECK-ASM-AND-OBJ: pm2sub.h t1, a0, a4
# CHECK-ASM: encoding: [0x3b,0x53,0xe5,0xc0]
# riscvc-fixtures: pm2sub.h t1, a0, a4
# CHECK-ASM-AND-OBJ: pm2sadd.h s2, s2, t3
# CHECK-ASM: encoding: [0x3b,0x59,0xc9,0xc5]
# riscvc-fixtures: pm2sadd.h s2, s2, t3
# CHECK-ASM-AND-OBJ: pm2suba.h s0, s0, t3
# CHECK-ASM: encoding: [0x3b,0x54,0xc4,0xc9]
# riscvc-fixtures: pm2suba.h s0, s0, t3
# CHECK-ASM-AND-OBJ: pm2sub.hx a2, a2, a0
# CHECK-ASM: encoding: [0x3b,0x56,0xa6,0xd0]
# riscvc-fixtures: pm2sub.hx a2, a2, a0
# CHECK-ASM-AND-OBJ: pm2sadd.hx t5, s2, a0
# CHECK-ASM: encoding: [0x3b,0x5f,0xa9,0xd4]
# riscvc-fixtures: pm2sadd.hx t5, s2, a0
# CHECK-ASM-AND-OBJ: pm2suba.hx a4, a2, t5
# CHECK-ASM: encoding: [0x3b,0x57,0xe6,0xd9]
# riscvc-fixtures: pm2suba.hx a4, a2, t5
# CHECK-ASM-AND-OBJ: pm2addsu.h s0, s0, s2
# CHECK-ASM: encoding: [0x3b,0x54,0x24,0xe1]
# riscvc-fixtures: pm2addsu.h s0, s0, s2
# CHECK-ASM-AND-OBJ: pm4addsu.b a0, s0, t3
# CHECK-ASM: encoding: [0x3b,0x55,0xc4,0xe5]
# riscvc-fixtures: pm4addsu.b a0, s0, t3
# CHECK-ASM-AND-OBJ: pm2addasu.h a4, t1, a2
# CHECK-ASM: encoding: [0x3b,0x57,0xc3,0xe8]
# riscvc-fixtures: pm2addasu.h a4, t1, a2
# CHECK-ASM-AND-OBJ: pm4addasu.b s2, s0, a2
# CHECK-ASM: encoding: [0x3b,0x59,0xc4,0xec]
# riscvc-fixtures: pm4addasu.b s2, s0, a2
# CHECK-ASM-AND-OBJ: mqacc.h01 a4, t1, a0
# CHECK-ASM: encoding: [0x3b,0x57,0xa3,0xf8]
# riscvc-fixtures: mqacc.h01 a4, t1, a0
# CHECK-ASM-AND-OBJ: mqracc.h01 s0, a0, t5
# CHECK-ASM: encoding: [0x3b,0x54,0xe5,0xfd]
# riscvc-fixtures: mqracc.h01 s0, a0, t5
# CHECK-ASM-AND-OBJ: pas.hx t5, s2, t5
# CHECK-ASM: encoding: [0x3b,0x6f,0xe9,0x81]
# riscvc-fixtures: pas.hx t5, s2, t5
# CHECK-ASM-AND-OBJ: psa.hx s0, t1, t3
# CHECK-ASM: encoding: [0x3b,0x64,0xc3,0x85]
# riscvc-fixtures: psa.hx s0, t1, t3
# CHECK-ASM-AND-OBJ: psas.hx t5, s2, a2
# CHECK-ASM: encoding: [0x3b,0x6f,0xc9,0x90]
# riscvc-fixtures: psas.hx t5, s2, a2
# CHECK-ASM-AND-OBJ: pssa.hx s2, t3, t5
# CHECK-ASM: encoding: [0x3b,0x69,0xee,0x95]
# riscvc-fixtures: pssa.hx s2, t3, t5
# CHECK-ASM-AND-OBJ: paas.hx t1, a2, s0
# CHECK-ASM: encoding: [0x3b,0x63,0x86,0x98]
# riscvc-fixtures: paas.hx t1, a2, s0
# CHECK-ASM-AND-OBJ: pasa.hx t1, s2, t3
# CHECK-ASM: encoding: [0x3b,0x63,0xc9,0x9d]
# riscvc-fixtures: pasa.hx t1, s2, t3
# CHECK-ASM-AND-OBJ: pmseq.h a0, t1, s0
# CHECK-ASM: encoding: [0x3b,0x65,0x83,0xc0]
# riscvc-fixtures: pmseq.h a0, t1, s0
# CHECK-ASM-AND-OBJ: pmseq.b s0, s2, s0
# CHECK-ASM: encoding: [0x3b,0x64,0x89,0xc4]
# riscvc-fixtures: pmseq.b s0, s2, s0
# CHECK-ASM-AND-OBJ: pmslt.h t3, a2, a4
# CHECK-ASM: encoding: [0x3b,0x6e,0xe6,0xd0]
# riscvc-fixtures: pmslt.h t3, a2, a4
# CHECK-ASM-AND-OBJ: pmslt.b t5, a4, t1
# CHECK-ASM: encoding: [0x3b,0x6f,0x67,0xd4]
# riscvc-fixtures: pmslt.b t5, a4, t1
# CHECK-ASM-AND-OBJ: pmsltu.h s2, s0, s2
# CHECK-ASM: encoding: [0x3b,0x69,0x24,0xd9]
# riscvc-fixtures: pmsltu.h s2, s0, s2
# CHECK-ASM-AND-OBJ: pmsltu.b s0, s2, t5
# CHECK-ASM: encoding: [0x3b,0x64,0xe9,0xdd]
# riscvc-fixtures: pmsltu.b s0, s2, t5
# CHECK-ASM-AND-OBJ: pmin.h s2, t3, s2
# CHECK-ASM: encoding: [0x3b,0x69,0x2e,0xe1]
# riscvc-fixtures: pmin.h s2, t3, s2
# CHECK-ASM-AND-OBJ: pmin.b a2, a2, t5
# CHECK-ASM: encoding: [0x3b,0x66,0xe6,0xe5]
# riscvc-fixtures: pmin.b a2, a2, t5
# CHECK-ASM-AND-OBJ: pminu.h a0, a4, a2
# CHECK-ASM: encoding: [0x3b,0x65,0xc7,0xe8]
# riscvc-fixtures: pminu.h a0, a4, a2
# CHECK-ASM-AND-OBJ: pminu.b a4, t3, s2
# CHECK-ASM: encoding: [0x3b,0x67,0x2e,0xed]
# riscvc-fixtures: pminu.b a4, t3, s2
# CHECK-ASM-AND-OBJ: pmax.h a4, s2, a0
# CHECK-ASM: encoding: [0x3b,0x67,0xa9,0xf0]
# riscvc-fixtures: pmax.h a4, s2, a0
# CHECK-ASM-AND-OBJ: pmax.b t1, s0, s0
# CHECK-ASM: encoding: [0x3b,0x63,0x84,0xf4]
# riscvc-fixtures: pmax.b t1, s0, s0
# CHECK-ASM-AND-OBJ: pmaxu.h a0, s0, s0
# CHECK-ASM: encoding: [0x3b,0x65,0x84,0xf8]
# riscvc-fixtures: pmaxu.h a0, s0, s0
# CHECK-ASM-AND-OBJ: pmaxu.b t3, a0, t1
# CHECK-ASM: encoding: [0x3b,0x6e,0x65,0xfc]
# riscvc-fixtures: pmaxu.b t3, a0, t1
# CHECK-ASM-AND-OBJ: mseq a4, t1, s0
# CHECK-ASM: encoding: [0x3b,0x67,0x83,0xc2]
# riscvc-fixtures: mseq a4, t1, s0
# CHECK-ASM-AND-OBJ: mslt t5, t5, t1
# CHECK-ASM: encoding: [0x3b,0x6f,0x6f,0xd2]
# riscvc-fixtures: mslt t5, t5, t1
# CHECK-ASM-AND-OBJ: msltu s2, a0, t3
# CHECK-ASM: encoding: [0x3b,0x69,0xc5,0xdb]
# riscvc-fixtures: msltu s2, a0, t3
# CHECK-ASM-AND-OBJ: pmulh.h s0, t3, t3
# CHECK-ASM: encoding: [0x3b,0x74,0xce,0x81]
# riscvc-fixtures: pmulh.h s0, t3, t3
# CHECK-ASM-AND-OBJ: pmulhr.h t1, t5, s0
# CHECK-ASM: encoding: [0x3b,0x73,0x8f,0x84]
# riscvc-fixtures: pmulhr.h t1, t5, s0
# CHECK-ASM-AND-OBJ: pmhacc.h s0, t5, s2
# CHECK-ASM: encoding: [0x3b,0x74,0x2f,0x89]
# riscvc-fixtures: pmhacc.h s0, t5, s2
# CHECK-ASM-AND-OBJ: pmhracc.h a4, t3, a2
# CHECK-ASM: encoding: [0x3b,0x77,0xce,0x8c]
# riscvc-fixtures: pmhracc.h a4, t3, a2
# CHECK-ASM-AND-OBJ: pmulhu.h a4, t5, a2
# CHECK-ASM: encoding: [0x3b,0x77,0xcf,0x90]
# riscvc-fixtures: pmulhu.h a4, t5, a2
# CHECK-ASM-AND-OBJ: pmulhru.h a4, a2, a4
# CHECK-ASM: encoding: [0x3b,0x77,0xe6,0x94]
# riscvc-fixtures: pmulhru.h a4, a2, a4
# CHECK-ASM-AND-OBJ: pmhaccu.h a4, t1, t3
# CHECK-ASM: encoding: [0x3b,0x77,0xc3,0x99]
# riscvc-fixtures: pmhaccu.h a4, t1, t3
# CHECK-ASM-AND-OBJ: pmhraccu.h s2, s0, t1
# CHECK-ASM: encoding: [0x3b,0x79,0x64,0x9c]
# riscvc-fixtures: pmhraccu.h s2, s0, t1
# CHECK-ASM-AND-OBJ: pmulh.h.b0 a0, t5, a4
# CHECK-ASM: encoding: [0x3b,0x75,0xef,0xa0]
# riscvc-fixtures: pmulh.h.b0 a0, t5, a4
# CHECK-ASM-AND-OBJ: pmulhsu.h.b0 s0, a4, s2
# CHECK-ASM: encoding: [0x3b,0x74,0x27,0xa5]
# riscvc-fixtures: pmulhsu.h.b0 s0, a4, s2
# CHECK-ASM-AND-OBJ: pmhacc.h.b0 s0, a0, t5
# CHECK-ASM: encoding: [0x3b,0x74,0xe5,0xa9]
# riscvc-fixtures: pmhacc.h.b0 s0, a0, t5
# CHECK-ASM-AND-OBJ: pmhaccsu.h.b0 t3, s0, a4
# CHECK-ASM: encoding: [0x3b,0x7e,0xe4,0xac]
# riscvc-fixtures: pmhaccsu.h.b0 t3, s0, a4
# CHECK-ASM-AND-OBJ: pmulh.h.b1 a0, a4, s2
# CHECK-ASM: encoding: [0x3b,0x75,0x27,0xb1]
# riscvc-fixtures: pmulh.h.b1 a0, a4, s2
# CHECK-ASM-AND-OBJ: pmulhsu.h.b1 t5, t3, t1
# CHECK-ASM: encoding: [0x3b,0x7f,0x6e,0xb4]
# riscvc-fixtures: pmulhsu.h.b1 t5, t3, t1
# CHECK-ASM-AND-OBJ: pmhacc.h.b1 t1, t5, a2
# CHECK-ASM: encoding: [0x3b,0x73,0xcf,0xb8]
# riscvc-fixtures: pmhacc.h.b1 t1, t5, a2
# CHECK-ASM-AND-OBJ: pmhaccsu.h.b1 a2, a0, a4
# CHECK-ASM: encoding: [0x3b,0x76,0xe5,0xbc]
# riscvc-fixtures: pmhaccsu.h.b1 a2, a0, a4
# CHECK-ASM-AND-OBJ: pmulhsu.h s0, a0, t1
# CHECK-ASM: encoding: [0x3b,0x74,0x65,0xc0]
# riscvc-fixtures: pmulhsu.h s0, a0, t1
# CHECK-ASM-AND-OBJ: pmulhrsu.h t3, t5, a4
# CHECK-ASM: encoding: [0x3b,0x7e,0xef,0xc4]
# riscvc-fixtures: pmulhrsu.h t3, t5, a4
# CHECK-ASM-AND-OBJ: pmhaccsu.h s0, s0, a4
# CHECK-ASM: encoding: [0x3b,0x74,0xe4,0xc8]
# riscvc-fixtures: pmhaccsu.h s0, s0, a4
# CHECK-ASM-AND-OBJ: pmhraccsu.h a2, a2, a0
# CHECK-ASM: encoding: [0x3b,0x76,0xa6,0xcc]
# riscvc-fixtures: pmhraccsu.h a2, a2, a0
# CHECK-ASM-AND-OBJ: pmulq.h a0, t1, t1
# CHECK-ASM: encoding: [0x3b,0x75,0x63,0xd0]
# riscvc-fixtures: pmulq.h a0, t1, t1
# CHECK-ASM-AND-OBJ: pmulqr.h s2, s0, s2
# CHECK-ASM: encoding: [0x3b,0x79,0x24,0xd5]
# riscvc-fixtures: pmulqr.h s2, s0, s2
# CHECK-ASM-AND-OBJ: mulhr a4, s2, t5
# CHECK-ASM: encoding: [0x3b,0x77,0xe9,0x87]
# riscvc-fixtures: mulhr a4, s2, t5
# CHECK-ASM-AND-OBJ: mhacc t1, s0, a2
# CHECK-ASM: encoding: [0x3b,0x73,0xc4,0x8a]
# riscvc-fixtures: mhacc t1, s0, a2
# CHECK-ASM-AND-OBJ: mhracc t1, t5, s0
# CHECK-ASM: encoding: [0x3b,0x73,0x8f,0x8e]
# riscvc-fixtures: mhracc t1, t5, s0
# CHECK-ASM-AND-OBJ: mulhru t1, t5, s0
# CHECK-ASM: encoding: [0x3b,0x73,0x8f,0x96]
# riscvc-fixtures: mulhru t1, t5, s0
# CHECK-ASM-AND-OBJ: mhaccu t3, a2, s2
# CHECK-ASM: encoding: [0x3b,0x7e,0x26,0x9b]
# riscvc-fixtures: mhaccu t3, a2, s2
# CHECK-ASM-AND-OBJ: mhraccu a0, t1, a4
# CHECK-ASM: encoding: [0x3b,0x75,0xe3,0x9e]
# riscvc-fixtures: mhraccu a0, t1, a4
# CHECK-ASM-AND-OBJ: mulh.h0 t3, a4, t1
# CHECK-ASM: encoding: [0x3b,0x7e,0x67,0xa2]
# riscvc-fixtures: mulh.h0 t3, a4, t1
# CHECK-ASM-AND-OBJ: mulhsu.h0 t1, a2, a0
# CHECK-ASM: encoding: [0x3b,0x73,0xa6,0xa6]
# riscvc-fixtures: mulhsu.h0 t1, a2, a0
# CHECK-ASM-AND-OBJ: mhacc.h0 s0, a2, t3
# CHECK-ASM: encoding: [0x3b,0x74,0xc6,0xab]
# riscvc-fixtures: mhacc.h0 s0, a2, t3
# CHECK-ASM-AND-OBJ: mhaccsu.h0 a2, t1, s0
# CHECK-ASM: encoding: [0x3b,0x76,0x83,0xae]
# riscvc-fixtures: mhaccsu.h0 a2, t1, s0
# CHECK-ASM-AND-OBJ: mulh.h1 t1, t1, t3
# CHECK-ASM: encoding: [0x3b,0x73,0xc3,0xb3]
# riscvc-fixtures: mulh.h1 t1, t1, t3
# CHECK-ASM-AND-OBJ: mulhsu.h1 t3, a2, t1
# CHECK-ASM: encoding: [0x3b,0x7e,0x66,0xb6]
# riscvc-fixtures: mulhsu.h1 t3, a2, t1
# CHECK-ASM-AND-OBJ: mhacc.h1 t3, a2, a0
# CHECK-ASM: encoding: [0x3b,0x7e,0xa6,0xba]
# riscvc-fixtures: mhacc.h1 t3, a2, a0
# CHECK-ASM-AND-OBJ: mhaccsu.h1 s0, s2, s0
# CHECK-ASM: encoding: [0x3b,0x74,0x89,0xbe]
# riscvc-fixtures: mhaccsu.h1 s0, s2, s0
# CHECK-ASM-AND-OBJ: mulhrsu t5, a4, t5
# CHECK-ASM: encoding: [0x3b,0x7f,0xe7,0xc7]
# riscvc-fixtures: mulhrsu t5, a4, t5
# CHECK-ASM-AND-OBJ: mhaccsu a0, a2, s2
# CHECK-ASM: encoding: [0x3b,0x75,0x26,0xcb]
# riscvc-fixtures: mhaccsu a0, a2, s2
# CHECK-ASM-AND-OBJ: mhraccsu a0, a0, t1
# CHECK-ASM: encoding: [0x3b,0x75,0x65,0xce]
# riscvc-fixtures: mhraccsu a0, a0, t1
# CHECK-ASM-AND-OBJ: mulq t1, a2, a2
# CHECK-ASM: encoding: [0x3b,0x73,0xc6,0xd2]
# riscvc-fixtures: mulq t1, a2, a2
# CHECK-ASM-AND-OBJ: mulqr a4, a4, t3
# CHECK-ASM: encoding: [0x3b,0x77,0xc7,0xd7]
# riscvc-fixtures: mulqr a4, a4, t3
# CHECK-ASM-AND-OBJ: mqacc.h00 a2, t3, t3
# CHECK-ASM: encoding: [0x3b,0x76,0xce,0xe9]
# riscvc-fixtures: mqacc.h00 a2, t3, t3
# CHECK-ASM-AND-OBJ: mqracc.h00 t5, a4, t3
# CHECK-ASM: encoding: [0x3b,0x7f,0xc7,0xed]
# riscvc-fixtures: mqracc.h00 t5, a4, t3
# CHECK-ASM-AND-OBJ: mqacc.h11 t5, t5, s0
# CHECK-ASM: encoding: [0x3b,0x7f,0x8f,0xf8]
# riscvc-fixtures: mqacc.h11 t5, t5, s0
# CHECK-ASM-AND-OBJ: mqracc.h11 s0, t5, s2
# CHECK-ASM: encoding: [0x3b,0x74,0x2f,0xfd]
# riscvc-fixtures: mqracc.h11 s0, t5, s2
# CHECK-ASM-AND-OBJ: pwslli.b a0, t1
# CHECK-ASM: encoding: [0x1b,0x25,0x03,0x01]
# riscvc-fixtures: pwslli.b a0, t1, 0
# CHECK-ASM-AND-OBJ: pwslli.h s0, a0
# CHECK-ASM: encoding: [0x1b,0x24,0xf5,0x03]
# riscvc-fixtures: pwslli.h s0, a0, 31
# CHECK-ASM-AND-OBJ: wslli s2, t3
# CHECK-ASM: encoding: [0x1b,0x29,0xfe,0x07]
# riscvc-fixtures: wslli s2, t3, 63
# CHECK-ASM-AND-OBJ: pwslai.b t5, t5
# CHECK-ASM: encoding: [0x1b,0x2f,0x8f,0x41]
# riscvc-fixtures: pwslai.b t5, t5, 8
# CHECK-ASM-AND-OBJ: pwslai.h t5, a4
# CHECK-ASM: encoding: [0x1b,0x2f,0xf7,0x43]
# riscvc-fixtures: pwslai.h t5, a4, 31
# CHECK-ASM-AND-OBJ: wslai t1, a2
# CHECK-ASM: encoding: [0x1b,0x23,0xf6,0x47]
# riscvc-fixtures: wslai t1, a2, 63
# CHECK-ASM-AND-OBJ: pli.dh a4, 16
# CHECK-ASM: encoding: [0x1b,0x27,0x10,0x30]
# riscvc-fixtures: pli.dh a4, 16
# CHECK-ASM-AND-OBJ: pli.db a6, 16
# CHECK-ASM: encoding: [0x1b,0x28,0x10,0x34]
# riscvc-fixtures: pli.db a6, 16
# CHECK-ASM-AND-OBJ: pli.db a6, -128
# CHECK-ASM: encoding: [0x1b,0x28,0x80,0x34]
# riscvc-fixtures: pli.db a6, -128
# CHECK-ASM-AND-OBJ: plui.dh tp, 32
# CHECK-ASM: encoding: [0x1b,0x22,0x08,0x70]
# riscvc-fixtures: plui.dh tp, 32
# CHECK-ASM-AND-OBJ: plui.dh tp, -412
# CHECK-ASM: encoding: [0x1b,0x22,0x99,0x70]
# riscvc-fixtures: plui.dh tp, 612
# CHECK-ASM-AND-OBJ: pwsll.bs t3, t1, s0
# CHECK-ASM: encoding: [0x1b,0x2e,0x83,0x08]
# riscvc-fixtures: pwsll.bs t3, t1, s0
# CHECK-ASM-AND-OBJ: pwsll.hs s0, a4, t1
# CHECK-ASM: encoding: [0x1b,0x24,0x67,0x0a]
# riscvc-fixtures: pwsll.hs s0, a4, t1
# CHECK-ASM-AND-OBJ: wsll a0, s0, s2
# CHECK-ASM: encoding: [0x1b,0x25,0x24,0x0f]
# riscvc-fixtures: wsll a0, s0, s2
# CHECK-ASM-AND-OBJ: pwsla.bs s0, s0, s0
# CHECK-ASM: encoding: [0x1b,0x24,0x84,0x48]
# riscvc-fixtures: pwsla.bs s0, s0, s0
# CHECK-ASM-AND-OBJ: pwsla.hs a4, a2, t5
# CHECK-ASM: encoding: [0x1b,0x27,0xe6,0x4b]
# riscvc-fixtures: pwsla.hs a4, a2, t5
# CHECK-ASM-AND-OBJ: wsla s0, a0, s2
# CHECK-ASM: encoding: [0x1b,0x24,0x25,0x4f]
# riscvc-fixtures: wsla s0, a0, s2
# CHECK-ASM-AND-OBJ: wzip8p t1, s2, a2
# CHECK-ASM: encoding: [0x1b,0x23,0xc9,0x78]
# riscvc-fixtures: wzip8p t1, s2, a2
# CHECK-ASM-AND-OBJ: wzip16p s2, t3, s2
# CHECK-ASM: encoding: [0x1b,0x29,0x2e,0x7b]
# riscvc-fixtures: wzip16p s2, t3, s2
# CHECK-ASM-AND-OBJ: pwadd.h a4, a2, a0
# CHECK-ASM: encoding: [0x9b,0x27,0xa6,0x00]
# riscvc-fixtures: pwadd.h a4, a2, a0
# CHECK-ASM-AND-OBJ: wadd t1, t5, t5
# CHECK-ASM: encoding: [0x9b,0x23,0xef,0x03]
# riscvc-fixtures: wadd t1, t5, t5
# CHECK-ASM-AND-OBJ: pwadd.b s0, t3, a4
# CHECK-ASM: encoding: [0x9b,0x24,0xee,0x04]
# riscvc-fixtures: pwadd.b s0, t3, a4
# CHECK-ASM-AND-OBJ: pm2wadd.h t3, t3, a4
# CHECK-ASM: encoding: [0x9b,0x2e,0xee,0x06]
# riscvc-fixtures: pm2wadd.h t3, t3, a4
# CHECK-ASM-AND-OBJ: pwadda.h t1, t3, s2
# CHECK-ASM: encoding: [0x9b,0x23,0x2e,0x09]
# riscvc-fixtures: pwadda.h t1, t3, s2
# CHECK-ASM-AND-OBJ: wadda s2, t1, a0
# CHECK-ASM: encoding: [0x9b,0x29,0xa3,0x0a]
# riscvc-fixtures: wadda s2, t1, a0
# CHECK-ASM-AND-OBJ: pwadda.b a2, a2, s2
# CHECK-ASM: encoding: [0x9b,0x26,0x26,0x0d]
# riscvc-fixtures: pwadda.b a2, a2, s2
# CHECK-ASM-AND-OBJ: pm2wadda.h t3, t1, t1
# CHECK-ASM: encoding: [0x9b,0x2e,0x63,0x0e]
# riscvc-fixtures: pm2wadda.h t3, t1, t1
# CHECK-ASM-AND-OBJ: pwaddu.h a2, t1, a4
# CHECK-ASM: encoding: [0x9b,0x26,0xe3,0x10]
# riscvc-fixtures: pwaddu.h a2, t1, a4
# CHECK-ASM-AND-OBJ: waddu t1, s0, t1
# CHECK-ASM: encoding: [0x9b,0x23,0x64,0x12]
# riscvc-fixtures: waddu t1, s0, t1
# CHECK-ASM-AND-OBJ: pwaddu.b s2, a0, t3
# CHECK-ASM: encoding: [0x9b,0x29,0xc5,0x15]
# riscvc-fixtures: pwaddu.b s2, a0, t3
# CHECK-ASM-AND-OBJ: pm2wadd.hx a0, s0, t1
# CHECK-ASM: encoding: [0x9b,0x25,0x64,0x16]
# riscvc-fixtures: pm2wadd.hx a0, s0, t1
# CHECK-ASM-AND-OBJ: pwaddau.h t1, t5, t3
# CHECK-ASM: encoding: [0x9b,0x23,0xcf,0x19]
# riscvc-fixtures: pwaddau.h t1, t5, t3
# CHECK-ASM-AND-OBJ: waddau t3, s0, s0
# CHECK-ASM: encoding: [0x9b,0x2e,0x84,0x1a]
# riscvc-fixtures: waddau t3, s0, s0
# CHECK-ASM-AND-OBJ: pwaddau.b a0, a0, t1
# CHECK-ASM: encoding: [0x9b,0x25,0x65,0x1c]
# riscvc-fixtures: pwaddau.b a0, a0, t1
# CHECK-ASM-AND-OBJ: pm2wadda.hx a4, a2, t3
# CHECK-ASM: encoding: [0x9b,0x27,0xc6,0x1f]
# riscvc-fixtures: pm2wadda.hx a4, a2, t3
# CHECK-ASM-AND-OBJ: pwmul.h s2, t1, a0
# CHECK-ASM: encoding: [0x9b,0x29,0xa3,0x20]
# riscvc-fixtures: pwmul.h s2, t1, a0
# CHECK-ASM-AND-OBJ: wmul t3, a2, t5
# CHECK-ASM: encoding: [0x9b,0x2e,0xe6,0x23]
# riscvc-fixtures: wmul t3, a2, t5
# CHECK-ASM-AND-OBJ: pwmul.b a0, s0, s2
# CHECK-ASM: encoding: [0x9b,0x25,0x24,0x25]
# riscvc-fixtures: pwmul.b a0, s0, s2
# CHECK-ASM-AND-OBJ: pm2waddu.h s2, s2, a0
# CHECK-ASM: encoding: [0x9b,0x29,0xa9,0x26]
# riscvc-fixtures: pm2waddu.h s2, s2, a0
# CHECK-ASM-AND-OBJ: pwmacc.h s0, a2, a2
# CHECK-ASM: encoding: [0x9b,0x24,0xc6,0x28]
# riscvc-fixtures: pwmacc.h s0, a2, a2
# CHECK-ASM-AND-OBJ: wmacc a0, a2, a2
# CHECK-ASM: encoding: [0x9b,0x25,0xc6,0x2a]
# riscvc-fixtures: wmacc a0, a2, a2
# CHECK-ASM-AND-OBJ: pm2waddau.h t5, a2, t5
# CHECK-ASM: encoding: [0x9b,0x2f,0xe6,0x2f]
# riscvc-fixtures: pm2waddau.h t5, a2, t5
# CHECK-ASM-AND-OBJ: pwmulu.h a2, a0, t5
# CHECK-ASM: encoding: [0x9b,0x26,0xe5,0x31]
# riscvc-fixtures: pwmulu.h a2, a0, t5
# CHECK-ASM-AND-OBJ: wmulu s2, a0, t3
# CHECK-ASM: encoding: [0x9b,0x29,0xc5,0x33]
# riscvc-fixtures: wmulu s2, a0, t3
# CHECK-ASM-AND-OBJ: pwmulu.b a2, a4, a2
# CHECK-ASM: encoding: [0x9b,0x26,0xc7,0x34]
# riscvc-fixtures: pwmulu.b a2, a4, a2
# CHECK-ASM-AND-OBJ: pwmaccu.h t1, a4, a2
# CHECK-ASM: encoding: [0x9b,0x23,0xc7,0x38]
# riscvc-fixtures: pwmaccu.h t1, a4, a2
# CHECK-ASM-AND-OBJ: wmaccu a2, a0, t1
# CHECK-ASM: encoding: [0x9b,0x26,0x65,0x3a]
# riscvc-fixtures: wmaccu a2, a0, t1
# CHECK-ASM-AND-OBJ: pwsub.h s0, s2, t3
# CHECK-ASM: encoding: [0x9b,0x24,0xc9,0x41]
# riscvc-fixtures: pwsub.h s0, s2, t3
# CHECK-ASM-AND-OBJ: wsub t1, s2, a4
# CHECK-ASM: encoding: [0x9b,0x23,0xe9,0x42]
# riscvc-fixtures: wsub t1, s2, a4
# CHECK-ASM-AND-OBJ: pwsub.b a4, s2, s2
# CHECK-ASM: encoding: [0x9b,0x27,0x29,0x45]
# riscvc-fixtures: pwsub.b a4, s2, s2
# CHECK-ASM-AND-OBJ: pm2wsub.h t1, a4, t3
# CHECK-ASM: encoding: [0x9b,0x23,0xc7,0x47]
# riscvc-fixtures: pm2wsub.h t1, a4, t3
# CHECK-ASM-AND-OBJ: pwsuba.h a4, t5, t1
# CHECK-ASM: encoding: [0x9b,0x27,0x6f,0x48]
# riscvc-fixtures: pwsuba.h a4, t5, t1
# CHECK-ASM-AND-OBJ: wsuba a0, s0, t5
# CHECK-ASM: encoding: [0x9b,0x25,0xe4,0x4b]
# riscvc-fixtures: wsuba a0, s0, t5
# CHECK-ASM-AND-OBJ: pwsuba.b a0, a2, s2
# CHECK-ASM: encoding: [0x9b,0x25,0x26,0x4d]
# riscvc-fixtures: pwsuba.b a0, a2, s2
# CHECK-ASM-AND-OBJ: pm2wsuba.h t5, s0, s2
# CHECK-ASM: encoding: [0x9b,0x2f,0x24,0x4f]
# riscvc-fixtures: pm2wsuba.h t5, s0, s2
# CHECK-ASM-AND-OBJ: pwsubu.h t5, s2, a2
# CHECK-ASM: encoding: [0x9b,0x2f,0xc9,0x50]
# riscvc-fixtures: pwsubu.h t5, s2, a2
# CHECK-ASM-AND-OBJ: wsubu a2, a4, a0
# CHECK-ASM: encoding: [0x9b,0x26,0xa7,0x52]
# riscvc-fixtures: wsubu a2, a4, a0
# CHECK-ASM-AND-OBJ: pwsubu.b a2, a2, t5
# CHECK-ASM: encoding: [0x9b,0x26,0xe6,0x55]
# riscvc-fixtures: pwsubu.b a2, a2, t5
# CHECK-ASM-AND-OBJ: pm2wsub.hx t5, a2, a0
# CHECK-ASM: encoding: [0x9b,0x2f,0xa6,0x56]
# riscvc-fixtures: pm2wsub.hx t5, a2, a0
# CHECK-ASM-AND-OBJ: pwsubau.h t5, s0, s2
# CHECK-ASM: encoding: [0x9b,0x2f,0x24,0x59]
# riscvc-fixtures: pwsubau.h t5, s0, s2
# CHECK-ASM-AND-OBJ: wsubau t5, a0, t1
# CHECK-ASM: encoding: [0x9b,0x2f,0x65,0x5a]
# riscvc-fixtures: wsubau t5, a0, t1
# CHECK-ASM-AND-OBJ: pwsubau.b a2, a4, a0
# CHECK-ASM: encoding: [0x9b,0x26,0xa7,0x5c]
# riscvc-fixtures: pwsubau.b a2, a4, a0
# CHECK-ASM-AND-OBJ: pm2wsuba.hx a2, a3, t5
# CHECK-ASM: encoding: [0x9b,0xa6,0xe6,0x5f]
# riscvc-fixtures: pm2wsuba.hx a2, a3, t5
# CHECK-ASM-AND-OBJ: pwmulsu.h s0, a2, t3
# CHECK-ASM: encoding: [0x9b,0x24,0xc6,0x61]
# riscvc-fixtures: pwmulsu.h s0, a2, t3
# CHECK-ASM-AND-OBJ: wmulsu a0, s2, a0
# CHECK-ASM: encoding: [0x9b,0x25,0xa9,0x62]
# riscvc-fixtures: wmulsu a0, s2, a0
# CHECK-ASM-AND-OBJ: pwmulsu.b t3, t5, t1
# CHECK-ASM: encoding: [0x9b,0x2e,0x6f,0x64]
# riscvc-fixtures: pwmulsu.b t3, t5, t1
# CHECK-ASM-AND-OBJ: pm2waddsu.h a4, a2, s2
# CHECK-ASM: encoding: [0x9b,0x27,0x26,0x67]
# riscvc-fixtures: pm2waddsu.h a4, a2, s2
# CHECK-ASM-AND-OBJ: pwmaccsu.h t5, s2, a2
# CHECK-ASM: encoding: [0x9b,0x2f,0xc9,0x68]
# riscvc-fixtures: pwmaccsu.h t5, s2, a2
# CHECK-ASM-AND-OBJ: wmaccsu t3, s0, a4
# CHECK-ASM: encoding: [0x9b,0x2e,0xe4,0x6a]
# riscvc-fixtures: wmaccsu t3, s0, a4
# CHECK-ASM-AND-OBJ: pm2waddasu.h t3, t5, a0
# CHECK-ASM: encoding: [0x9b,0x2e,0xaf,0x6e]
# riscvc-fixtures: pm2waddasu.h t3, t5, a0
# CHECK-ASM-AND-OBJ: pmqwacc.h t5, t5, a2
# CHECK-ASM: encoding: [0x9b,0x2f,0xcf,0x78]
# riscvc-fixtures: pmqwacc.h t5, t5, a2
# CHECK-ASM-AND-OBJ: pmqwacc s2, a4, a2
# CHECK-ASM: encoding: [0x9b,0x29,0xc7,0x7a]
# riscvc-fixtures: pmqwacc s2, a4, a2
# CHECK-ASM-AND-OBJ: pmqrwacc.h a4, t3, a4
# CHECK-ASM: encoding: [0x9b,0x27,0xee,0x7c]
# riscvc-fixtures: pmqrwacc.h a4, t3, a4
# CHECK-ASM-AND-OBJ: pmqrwacc s0, s2, t5
# CHECK-ASM: encoding: [0x9b,0x24,0xe9,0x7f]
# riscvc-fixtures: pmqrwacc s0, s2, t5
# CHECK-ASM-AND-OBJ: predsum.dhs s0, t3, a0
# CHECK-ASM: encoding: [0x1b,0x44,0xae,0x18]
# riscvc-fixtures: predsum.dhs s0, t3, a0
# CHECK-ASM-AND-OBJ: predsum.dbs a2, s0, t3
# CHECK-ASM: encoding: [0x1b,0x46,0xc4,0x1d]
# riscvc-fixtures: predsum.dbs a2, s0, t3
# CHECK-ASM-AND-OBJ: predsumu.dhs a2, a2, t3
# CHECK-ASM: encoding: [0x1b,0x46,0xc6,0x39]
# riscvc-fixtures: predsumu.dhs a2, a2, t3
# CHECK-ASM-AND-OBJ: predsumu.dbs a2, a0, s0
# CHECK-ASM: encoding: [0x1b,0x46,0x85,0x3c]
# riscvc-fixtures: predsumu.dbs a2, a0, s0
# CHECK-ASM-AND-OBJ: pnsrli.b a2, a0
# CHECK-ASM: encoding: [0x1b,0xc6,0x05,0x01]
# riscvc-fixtures: pnsrli.b a2, a0, 0
# CHECK-ASM-AND-OBJ: pnsrli.h a0, t3
# CHECK-ASM: encoding: [0x1b,0xc5,0x1e,0x02]
# riscvc-fixtures: pnsrli.h a0, t3, 1
# CHECK-ASM-AND-OBJ: nsrli a2, a0
# CHECK-ASM: encoding: [0x1b,0xc6,0x35,0x04]
# riscvc-fixtures: nsrli a2, a0, 3
# CHECK-ASM-AND-OBJ: pnclipiu.b a4, t3
# CHECK-ASM: encoding: [0x1b,0xc7,0x2e,0x21]
# riscvc-fixtures: pnclipiu.b a4, t3, 2
# CHECK-ASM-AND-OBJ: pnclipiu.h t1, s2
# CHECK-ASM: encoding: [0x1b,0xc3,0x39,0x22]
# riscvc-fixtures: pnclipiu.h t1, s2, 3
# CHECK-ASM-AND-OBJ: nclipiu s0, a2
# CHECK-ASM: encoding: [0x1b,0xc4,0x46,0x24]
# riscvc-fixtures: nclipiu s0, a2, 4
# CHECK-ASM-AND-OBJ: pnclipriu.b s2, s0
# CHECK-ASM: encoding: [0x1b,0xc9,0x14,0x31]
# riscvc-fixtures: pnclipriu.b s2, s0, 1
# CHECK-ASM-AND-OBJ: pnclipriu.h s0, s0
# CHECK-ASM: encoding: [0x1b,0xc4,0x24,0x32]
# riscvc-fixtures: pnclipriu.h s0, s0, 2
# CHECK-ASM-AND-OBJ: nclipriu t3, t3
# CHECK-ASM: encoding: [0x1b,0xce,0x4e,0x34]
# riscvc-fixtures: nclipriu t3, t3, 4
# CHECK-ASM-AND-OBJ: pnsrai.b s2, t5
# CHECK-ASM: encoding: [0x1b,0xc9,0x3f,0x41]
# riscvc-fixtures: pnsrai.b s2, t5, 3
# CHECK-ASM-AND-OBJ: pnsrai.h s0, a0
# CHECK-ASM: encoding: [0x1b,0xc4,0x25,0x42]
# riscvc-fixtures: pnsrai.h s0, a0, 2
# CHECK-ASM-AND-OBJ: nsrai a4, t3
# CHECK-ASM: encoding: [0x1b,0xc7,0x4e,0x44]
# riscvc-fixtures: nsrai a4, t3, 4
# CHECK-ASM-AND-OBJ: pnsari.b t5, t5
# CHECK-ASM: encoding: [0x1b,0xcf,0x0f,0x51]
# riscvc-fixtures: pnsari.b t5, t5, 0
# CHECK-ASM-AND-OBJ: pnsari.h t1, a4
# CHECK-ASM: encoding: [0x1b,0xc3,0x37,0x52]
# riscvc-fixtures: pnsari.h t1, a4, 3
# CHECK-ASM-AND-OBJ: nsari s0, t1
# CHECK-ASM: encoding: [0x1b,0xc4,0x53,0x54]
# riscvc-fixtures: nsari s0, t1, 5
# CHECK-ASM-AND-OBJ: pnclipi.b t1, a4
# CHECK-ASM: encoding: [0x1b,0xc3,0x77,0x61]
# riscvc-fixtures: pnclipi.b t1, a4, 7
# CHECK-ASM-AND-OBJ: pnclipi.h a0, a4
# CHECK-ASM: encoding: [0x1b,0xc5,0x27,0x62]
# riscvc-fixtures: pnclipi.h a0, a4, 2
# CHECK-ASM-AND-OBJ: nclipi t5, t5
# CHECK-ASM: encoding: [0x1b,0xcf,0x5f,0x64]
# riscvc-fixtures: nclipi t5, t5, 5
# CHECK-ASM-AND-OBJ: pnclipri.b a0, s0
# CHECK-ASM: encoding: [0x1b,0xc5,0x24,0x71]
# riscvc-fixtures: pnclipri.b a0, s0, 2
# CHECK-ASM-AND-OBJ: pnclipri.h s2, t5
# CHECK-ASM: encoding: [0x1b,0xc9,0x3f,0x72]
# riscvc-fixtures: pnclipri.h s2, t5, 3
# CHECK-ASM-AND-OBJ: nclipri t3, s0
# CHECK-ASM: encoding: [0x1b,0xce,0x54,0x74]
# riscvc-fixtures: nclipri t3, s0, 5
# CHECK-ASM-AND-OBJ: pnsrl.bs t3, s0, a4
# CHECK-ASM: encoding: [0x1b,0xce,0xe4,0x08]
# riscvc-fixtures: pnsrl.bs t3, s0, a4
# CHECK-ASM-AND-OBJ: pnsrl.hs a2, t1, a4
# CHECK-ASM: encoding: [0x1b,0xc6,0xe3,0x0a]
# riscvc-fixtures: pnsrl.hs a2, t1, a4
# CHECK-ASM-AND-OBJ: nsrl a2, a2, a0
# CHECK-ASM: encoding: [0x1b,0xc6,0xa6,0x0e]
# riscvc-fixtures: nsrl a2, a2, a0
# CHECK-ASM-AND-OBJ: pnclipu.bs a4, t5, a2
# CHECK-ASM: encoding: [0x1b,0xc7,0xcf,0x28]
# riscvc-fixtures: pnclipu.bs a4, t5, a2
# CHECK-ASM-AND-OBJ: pnclipu.hs t1, a2, a4
# CHECK-ASM: encoding: [0x1b,0xc3,0xe6,0x2a]
# riscvc-fixtures: pnclipu.hs t1, a2, a4
# CHECK-ASM-AND-OBJ: nclipu t5, s2, t1
# CHECK-ASM: encoding: [0x1b,0xcf,0x69,0x2e]
# riscvc-fixtures: nclipu t5, s2, t1
# CHECK-ASM-AND-OBJ: pnclipru.bs t5, s2, s2
# CHECK-ASM: encoding: [0x1b,0xcf,0x29,0x39]
# riscvc-fixtures: pnclipru.bs t5, s2, s2
# CHECK-ASM-AND-OBJ: pnclipru.hs t5, s2, a0
# CHECK-ASM: encoding: [0x1b,0xcf,0xa9,0x3a]
# riscvc-fixtures: pnclipru.hs t5, s2, a0
# CHECK-ASM-AND-OBJ: nclipru a4, t5, t5
# CHECK-ASM: encoding: [0x1b,0xc7,0xef,0x3f]
# riscvc-fixtures: nclipru a4, t5, t5
# CHECK-ASM-AND-OBJ: pnsra.bs a4, t1, a4
# CHECK-ASM: encoding: [0x1b,0xc7,0xe3,0x48]
# riscvc-fixtures: pnsra.bs a4, t1, a4
# CHECK-ASM-AND-OBJ: pnsra.hs s0, s2, t3
# CHECK-ASM: encoding: [0x1b,0xc4,0xc9,0x4b]
# riscvc-fixtures: pnsra.hs s0, s2, t3
# CHECK-ASM-AND-OBJ: nsra t1, s0, a4
# CHECK-ASM: encoding: [0x1b,0xc3,0xe4,0x4e]
# riscvc-fixtures: nsra t1, s0, a4
# CHECK-ASM-AND-OBJ: pnsrar.bs a2, s0, a4
# CHECK-ASM: encoding: [0x1b,0xc6,0xe4,0x58]
# riscvc-fixtures: pnsrar.bs a2, s0, a4
# CHECK-ASM-AND-OBJ: pnsrar.hs s0, a4, a0
# CHECK-ASM: encoding: [0x1b,0xc4,0xa7,0x5a]
# riscvc-fixtures: pnsrar.hs s0, a4, a0
# CHECK-ASM-AND-OBJ: nsrar a4, a4, s0
# CHECK-ASM: encoding: [0x1b,0xc7,0x87,0x5e]
# riscvc-fixtures: nsrar a4, a4, s0
# CHECK-ASM-AND-OBJ: pnclip.bs t1, t5, t3
# CHECK-ASM: encoding: [0x1b,0xc3,0xcf,0x69]
# riscvc-fixtures: pnclip.bs t1, t5, t3
# CHECK-ASM-AND-OBJ: pnclip.hs a0, a2, a0
# CHECK-ASM: encoding: [0x1b,0xc5,0xa6,0x6a]
# riscvc-fixtures: pnclip.hs a0, a2, a0
# CHECK-ASM-AND-OBJ: nclip t3, t5, t3
# CHECK-ASM: encoding: [0x1b,0xce,0xcf,0x6f]
# riscvc-fixtures: nclip t3, t5, t3
# CHECK-ASM-AND-OBJ: pnclipr.bs t1, a2, a0
# CHECK-ASM: encoding: [0x1b,0xc3,0xa6,0x78]
# riscvc-fixtures: pnclipr.bs t1, a2, a0
# CHECK-ASM-AND-OBJ: pnclipr.hs a4, s2, t3
# CHECK-ASM: encoding: [0x1b,0xc7,0xc9,0x7b]
# riscvc-fixtures: pnclipr.hs a4, s2, t3
# CHECK-ASM-AND-OBJ: nclipr t1, t5, a2
# CHECK-ASM: encoding: [0x1b,0xc3,0xcf,0x7e]
# riscvc-fixtures: nclipr t1, t5, a2
# CHECK-ASM-AND-OBJ: pslli.db a0, s2, 0
# CHECK-ASM: encoding: [0x1b,0x65,0x89,0x00]
# riscvc-fixtures: pslli.db a0, s2, 0
# CHECK-ASM-AND-OBJ: pslli.dh t3, t1, 2
# CHECK-ASM: encoding: [0x1b,0x6e,0x23,0x01]
# riscvc-fixtures: pslli.dh t3, t1, 2
# CHECK-ASM-AND-OBJ: pslli.dw a4, t3, 1
# CHECK-ASM: encoding: [0x1b,0x67,0x1e,0x02]
# riscvc-fixtures: pslli.dw a4, t3, 1
# CHECK-ASM-AND-OBJ: psslai.dh t1, a4, 3
# CHECK-ASM: encoding: [0x1b,0x63,0x37,0x51]
# riscvc-fixtures: psslai.dh t1, a4, 3
# CHECK-ASM-AND-OBJ: psslai.dw a0, t3, 5
# CHECK-ASM: encoding: [0x1b,0x65,0x5e,0x52]
# riscvc-fixtures: psslai.dw a0, t3, 5
# CHECK-ASM-AND-OBJ: psext.dh.b t1, t5
# CHECK-ASM: encoding: [0x1b,0x63,0x4f,0x60]
# riscvc-fixtures: psext.dh.b t1, t5
# CHECK-ASM-AND-OBJ: psext.dw.b t5, t5
# CHECK-ASM: encoding: [0x1b,0x6f,0x4f,0x62]
# riscvc-fixtures: psext.dw.b t5, t5
# CHECK-ASM-AND-OBJ: psext.dw.h s0, t1
# CHECK-ASM: encoding: [0x1b,0x64,0x53,0x62]
# riscvc-fixtures: psext.dw.h s0, t1
# CHECK-ASM-AND-OBJ: psabs.dh s0, s2
# CHECK-ASM: encoding: [0x1b,0x64,0x79,0x60]
# riscvc-fixtures: psabs.dh s0, s2
# CHECK-ASM-AND-OBJ: psabs.db s2, a2
# CHECK-ASM: encoding: [0x1b,0x69,0x76,0x64]
# riscvc-fixtures: psabs.db s2, a2
# CHECK-ASM-AND-OBJ: psll.dhs s2, t3, a4
# CHECK-ASM: encoding: [0x1b,0x69,0xee,0x08]
# riscvc-fixtures: psll.dhs s2, t3, a4
# CHECK-ASM-AND-OBJ: psll.dws a2, t1, t3
# CHECK-ASM: encoding: [0x1b,0x66,0xc3,0x0b]
# riscvc-fixtures: psll.dws a2, t1, t3
# CHECK-ASM-AND-OBJ: psll.dbs a0, a4, a2
# CHECK-ASM: encoding: [0x1b,0x65,0xc7,0x0c]
# riscvc-fixtures: psll.dbs a0, a4, a2
# CHECK-ASM-AND-OBJ: padd.dhs t1, a4, s2
# CHECK-ASM: encoding: [0x1b,0x63,0x27,0x19]
# riscvc-fixtures: padd.dhs t1, a4, s2
# CHECK-ASM-AND-OBJ: padd.dws a4, a4, t3
# CHECK-ASM: encoding: [0x1b,0x67,0xc7,0x1b]
# riscvc-fixtures: padd.dws a4, a4, t3
# CHECK-ASM-AND-OBJ: padd.dbs a2, a4, t3
# CHECK-ASM: encoding: [0x1b,0x66,0xc7,0x1d]
# riscvc-fixtures: padd.dbs a2, a4, t3
# CHECK-ASM-AND-OBJ: pssha.dhs a0, s0, s2
# CHECK-ASM: encoding: [0x1b,0x65,0x24,0x69]
# riscvc-fixtures: pssha.dhs a0, s0, s2
# CHECK-ASM-AND-OBJ: pssha.dws a0, t1, s2
# CHECK-ASM: encoding: [0x1b,0x65,0x23,0x6b]
# riscvc-fixtures: pssha.dws a0, t1, s2
# CHECK-ASM-AND-OBJ: psshar.dhs a2, a4, t3
# CHECK-ASM: encoding: [0x1b,0x66,0xc7,0x79]
# riscvc-fixtures: psshar.dhs a2, a4, t3
# CHECK-ASM-AND-OBJ: psshar.dws s0, t3, s0
# CHECK-ASM: encoding: [0x1b,0x64,0x8e,0x7a]
# riscvc-fixtures: psshar.dws s0, t3, s0
# CHECK-ASM-AND-OBJ: psrli.db t5, a2, 0
# CHECK-ASM: encoding: [0x1b,0xef,0x86,0x00]
# riscvc-fixtures: psrli.db t5, a2, 0
# CHECK-ASM-AND-OBJ: psrli.dh a2, t3, 1
# CHECK-ASM: encoding: [0x1b,0xe6,0x1e,0x01]
# riscvc-fixtures: psrli.dh a2, t3, 1
# CHECK-ASM-AND-OBJ: psrli.dw s2, t1, 3
# CHECK-ASM: encoding: [0x1b,0xe9,0x33,0x02]
# riscvc-fixtures: psrli.dw s2, t1, 3
# CHECK-ASM-AND-OBJ: pusati.dh a0, a4, 5
# CHECK-ASM: encoding: [0x1b,0xe5,0x57,0x21]
# riscvc-fixtures: pusati.dh a0, a4, 5
# CHECK-ASM-AND-OBJ: pusati.dw a0, s2, 7
# CHECK-ASM: encoding: [0x1b,0xe5,0x79,0x22]
# riscvc-fixtures: pusati.dw a0, s2, 7
# CHECK-ASM-AND-OBJ: psrai.db t5, t5, 1
# CHECK-ASM: encoding: [0x1b,0xef,0x9f,0x40]
# riscvc-fixtures: psrai.db t5, t5, 1
# CHECK-ASM-AND-OBJ: psrai.dh s0, a2, 5
# CHECK-ASM: encoding: [0x1b,0xe4,0x56,0x41]
# riscvc-fixtures: psrai.dh s0, a2, 5
# CHECK-ASM-AND-OBJ: psrai.dw t5, a0, 9
# CHECK-ASM: encoding: [0x1b,0xef,0x95,0x42]
# riscvc-fixtures: psrai.dw t5, a0, 9
# CHECK-ASM-AND-OBJ: psrari.dh a2, a2, 6
# CHECK-ASM: encoding: [0x1b,0xe6,0x66,0x51]
# riscvc-fixtures: psrari.dh a2, a2, 6
# CHECK-ASM-AND-OBJ: psrari.dw a4, a0, 5
# CHECK-ASM: encoding: [0x1b,0xe7,0x55,0x52]
# riscvc-fixtures: psrari.dw a4, a0, 5
# CHECK-ASM-AND-OBJ: psati.dh s2, s2, 9
# CHECK-ASM: encoding: [0x1b,0xe9,0x99,0x61]
# riscvc-fixtures: psati.dh s2, s2, 9
# CHECK-ASM-AND-OBJ: psati.dw t5, t3, 14
# CHECK-ASM: encoding: [0x1b,0xef,0xee,0x62]
# riscvc-fixtures: psati.dw t5, t3, 14
# CHECK-ASM-AND-OBJ: psrl.dhs a0, t1, t5
# CHECK-ASM: encoding: [0x1b,0xe5,0xe3,0x09]
# riscvc-fixtures: psrl.dhs a0, t1, t5
# CHECK-ASM-AND-OBJ: psrl.dws s0, s2, t1
# CHECK-ASM: encoding: [0x1b,0xe4,0x69,0x0a]
# riscvc-fixtures: psrl.dws s0, s2, t1
# CHECK-ASM-AND-OBJ: psrl.dbs a0, s0, t5
# CHECK-ASM: encoding: [0x1b,0xe5,0xe4,0x0d]
# riscvc-fixtures: psrl.dbs a0, s0, t5
# CHECK-ASM-AND-OBJ: psra.dhs a4, t3, t1
# CHECK-ASM: encoding: [0x1b,0xe7,0x6e,0x48]
# riscvc-fixtures: psra.dhs a4, t3, t1
# CHECK-ASM-AND-OBJ: psra.dws a2, s2, t1
# CHECK-ASM: encoding: [0x1b,0xe6,0x69,0x4a]
# riscvc-fixtures: psra.dws a2, s2, t1
# CHECK-ASM-AND-OBJ: psra.dbs s0, t1, t5
# CHECK-ASM: encoding: [0x1b,0xe4,0xe3,0x4d]
# riscvc-fixtures: psra.dbs s0, t1, t5
# CHECK-ASM-AND-OBJ: padd.dh s2, a4, a2
# CHECK-ASM: encoding: [0x1b,0x69,0xc7,0x80]
# riscvc-fixtures: padd.dh s2, a4, a2
# CHECK-ASM-AND-OBJ: padd.dw a2, s2, a2
# CHECK-ASM: encoding: [0x1b,0x66,0xc9,0x82]
# riscvc-fixtures: padd.dw a2, s2, a2
# CHECK-ASM-AND-OBJ: padd.db a4, a2, a2
# CHECK-ASM: encoding: [0x1b,0x67,0xc6,0x84]
# riscvc-fixtures: padd.db a4, a2, a2
# CHECK-ASM-AND-OBJ: addd t1, s2, s0
# CHECK-ASM: encoding: [0x1b,0x63,0x89,0x86]
# riscvc-fixtures: addd t1, s2, s0
# CHECK-ASM-AND-OBJ: psadd.dh t3, s2, t3
# CHECK-ASM: encoding: [0x1b,0x6e,0xc9,0x91]
# riscvc-fixtures: psadd.dh t3, s2, t3
# CHECK-ASM-AND-OBJ: psadd.dw a4, t3, t3
# CHECK-ASM: encoding: [0x1b,0x67,0xce,0x93]
# riscvc-fixtures: psadd.dw a4, t3, t3
# CHECK-ASM-AND-OBJ: psadd.db t5, s0, a2
# CHECK-ASM: encoding: [0x1b,0x6f,0xc4,0x94]
# riscvc-fixtures: psadd.db t5, s0, a2
# CHECK-ASM-AND-OBJ: paadd.dh t1, s2, a0
# CHECK-ASM: encoding: [0x1b,0x63,0xa9,0x98]
# riscvc-fixtures: paadd.dh t1, s2, a0
# CHECK-ASM-AND-OBJ: paadd.dw a4, a2, s0
# CHECK-ASM: encoding: [0x1b,0x67,0x86,0x9a]
# riscvc-fixtures: paadd.dw a4, a2, s0
# CHECK-ASM-AND-OBJ: paadd.db t5, t3, s0
# CHECK-ASM: encoding: [0x1b,0x6f,0x8e,0x9c]
# riscvc-fixtures: paadd.db t5, t3, s0
# CHECK-ASM-AND-OBJ: psaddu.dh a4, a2, t5
# CHECK-ASM: encoding: [0x1b,0x67,0xe6,0xb1]
# riscvc-fixtures: psaddu.dh a4, a2, t5
# CHECK-ASM-AND-OBJ: psaddu.dw a4, t5, s2
# CHECK-ASM: encoding: [0x1b,0x67,0x2f,0xb3]
# riscvc-fixtures: psaddu.dw a4, t5, s2
# CHECK-ASM-AND-OBJ: psaddu.db a4, a0, t1
# CHECK-ASM: encoding: [0x1b,0x67,0x65,0xb4]
# riscvc-fixtures: psaddu.db a4, a0, t1
# CHECK-ASM-AND-OBJ: paaddu.dh a4, a4, s2
# CHECK-ASM: encoding: [0x1b,0x67,0x27,0xb9]
# riscvc-fixtures: paaddu.dh a4, a4, s2
# CHECK-ASM-AND-OBJ: paaddu.dw t3, s0, t5
# CHECK-ASM: encoding: [0x1b,0x6e,0xe4,0xbb]
# riscvc-fixtures: paaddu.dw t3, s0, t5
# CHECK-ASM-AND-OBJ: paaddu.db a0, s0, s0
# CHECK-ASM: encoding: [0x1b,0x65,0x84,0xbc]
# riscvc-fixtures: paaddu.db a0, s0, s0
# CHECK-ASM-AND-OBJ: psub.dh t5, a4, a4
# CHECK-ASM: encoding: [0x1b,0x6f,0xe7,0xc0]
# riscvc-fixtures: psub.dh t5, a4, a4
# CHECK-ASM-AND-OBJ: psub.dw t1, s0, t5
# CHECK-ASM: encoding: [0x1b,0x63,0xe4,0xc3]
# riscvc-fixtures: psub.dw t1, s0, t5
# CHECK-ASM-AND-OBJ: psub.db a4, a0, t5
# CHECK-ASM: encoding: [0x1b,0x67,0xe5,0xc5]
# riscvc-fixtures: psub.db a4, a0, t5
# CHECK-ASM-AND-OBJ: subd a2, a4, t1
# CHECK-ASM: encoding: [0x1b,0x66,0x67,0xc6]
# riscvc-fixtures: subd a2, a4, t1
# CHECK-ASM-AND-OBJ: pabd.dh t5, t1, t3
# CHECK-ASM: encoding: [0x1b,0x6f,0xc3,0xc9]
# riscvc-fixtures: pabd.dh t5, t1, t3
# CHECK-ASM-AND-OBJ: pabd.db t1, t5, a0
# CHECK-ASM: encoding: [0x1b,0x63,0xaf,0xcc]
# riscvc-fixtures: pabd.db t1, t5, a0
# CHECK-ASM-AND-OBJ: pssub.dh s0, s2, s2
# CHECK-ASM: encoding: [0x1b,0x64,0x29,0xd1]
# riscvc-fixtures: pssub.dh s0, s2, s2
# CHECK-ASM-AND-OBJ: pssub.dw t3, a2, t3
# CHECK-ASM: encoding: [0x1b,0x6e,0xc6,0xd3]
# riscvc-fixtures: pssub.dw t3, a2, t3
# CHECK-ASM-AND-OBJ: pssub.db a0, s0, s2
# CHECK-ASM: encoding: [0x1b,0x65,0x24,0xd5]
# riscvc-fixtures: pssub.db a0, s0, s2
# CHECK-ASM-AND-OBJ: pasub.dh t1, a4, s0
# CHECK-ASM: encoding: [0x1b,0x63,0x87,0xd8]
# riscvc-fixtures: pasub.dh t1, a4, s0
# CHECK-ASM-AND-OBJ: pasub.dw t1, s2, s2
# CHECK-ASM: encoding: [0x1b,0x63,0x29,0xdb]
# riscvc-fixtures: pasub.dw t1, s2, s2
# CHECK-ASM-AND-OBJ: pasub.db a0, a0, a0
# CHECK-ASM: encoding: [0x1b,0x65,0xa5,0xdc]
# riscvc-fixtures: pasub.db a0, a0, a0
# CHECK-ASM-AND-OBJ: pabdu.dh t5, a4, a4
# CHECK-ASM: encoding: [0x1b,0x6f,0xe7,0xe8]
# riscvc-fixtures: pabdu.dh t5, a4, a4
# CHECK-ASM-AND-OBJ: pabdu.db t1, t1, a4
# CHECK-ASM: encoding: [0x1b,0x63,0xe3,0xec]
# riscvc-fixtures: pabdu.db t1, t1, a4
# CHECK-ASM-AND-OBJ: pssubu.dh t5, t1, t5
# CHECK-ASM: encoding: [0x1b,0x6f,0xe3,0xf1]
# riscvc-fixtures: pssubu.dh t5, t1, t5
# CHECK-ASM-AND-OBJ: pssubu.dw a4, a4, t1
# CHECK-ASM: encoding: [0x1b,0x67,0x67,0xf2]
# riscvc-fixtures: pssubu.dw a4, a4, t1
# CHECK-ASM-AND-OBJ: pssubu.db s0, t5, a2
# CHECK-ASM: encoding: [0x1b,0x64,0xcf,0xf4]
# riscvc-fixtures: pssubu.db s0, t5, a2
# CHECK-ASM-AND-OBJ: pasubu.dh t5, a2, a2
# CHECK-ASM: encoding: [0x1b,0x6f,0xc6,0xf8]
# riscvc-fixtures: pasubu.dh t5, a2, a2
# CHECK-ASM-AND-OBJ: pasubu.dw a0, a2, a4
# CHECK-ASM: encoding: [0x1b,0x65,0xe6,0xfa]
# riscvc-fixtures: pasubu.dw a0, a2, a4
# CHECK-ASM-AND-OBJ: pasubu.db a0, s0, s0
# CHECK-ASM: encoding: [0x1b,0x65,0x84,0xfc]
# riscvc-fixtures: pasubu.db a0, s0, s0
# CHECK-ASM-AND-OBJ: psh1add.dh t5, a4, t5
# CHECK-ASM: encoding: [0x1b,0x6f,0xf7,0xa1]
# riscvc-fixtures: psh1add.dh t5, a4, t5
# CHECK-ASM-AND-OBJ: psh1add.dw a4, t5, s0
# CHECK-ASM: encoding: [0x1b,0x67,0x9f,0xa2]
# riscvc-fixtures: psh1add.dw a4, t5, s0
# CHECK-ASM-AND-OBJ: pssh1sadd.dh t3, a4, a0
# CHECK-ASM: encoding: [0x1b,0x6e,0xb7,0xb0]
# riscvc-fixtures: pssh1sadd.dh t3, a4, a0
# CHECK-ASM-AND-OBJ: pssh1sadd.dw t1, t1, a2
# CHECK-ASM: encoding: [0x1b,0x63,0xd3,0xb2]
# riscvc-fixtures: pssh1sadd.dw t1, t1, a2
# CHECK-ASM-AND-OBJ: ppaire.db a2, t1, s2
# CHECK-ASM: encoding: [0x1b,0xe6,0x23,0x81]
# riscvc-fixtures: ppaire.db a2, t1, s2
# CHECK-ASM-AND-OBJ: ppaire.dh t5, t3, a4
# CHECK-ASM: encoding: [0x1b,0xef,0xee,0x82]
# riscvc-fixtures: ppaire.dh t5, t3, a4
# CHECK-ASM-AND-OBJ: ppaireo.db t1, t3, t1
# CHECK-ASM: encoding: [0x1b,0xe3,0x6e,0x90]
# riscvc-fixtures: ppaireo.db t1, t3, t1
# CHECK-ASM-AND-OBJ: ppaireo.dh a4, t5, a2
# CHECK-ASM: encoding: [0x1b,0xe7,0xcf,0x92]
# riscvc-fixtures: ppaireo.dh a4, t5, a2
# CHECK-ASM-AND-OBJ: ppairoe.db a4, t1, a2
# CHECK-ASM: encoding: [0x1b,0xe7,0xc3,0xa0]
# riscvc-fixtures: ppairoe.db a4, t1, a2
# CHECK-ASM-AND-OBJ: ppairoe.dh a2, t5, s0
# CHECK-ASM: encoding: [0x1b,0xe6,0x8f,0xa2]
# riscvc-fixtures: ppairoe.dh a2, t5, s0
# CHECK-ASM-AND-OBJ: ppairo.db a0, a0, s0
# CHECK-ASM: encoding: [0x1b,0xe5,0x85,0xb0]
# riscvc-fixtures: ppairo.db a0, a0, s0
# CHECK-ASM-AND-OBJ: ppairo.dh a4, a4, a2
# CHECK-ASM: encoding: [0x1b,0xe7,0xc7,0xb2]
# riscvc-fixtures: ppairo.dh a4, a4, a2
# CHECK-ASM-AND-OBJ: pas.dhx t3, t3, s2
# CHECK-ASM: encoding: [0x1b,0xee,0x3e,0x81]
# riscvc-fixtures: pas.dhx t3, t3, s2
# CHECK-ASM-AND-OBJ: psa.dhx a0, s2, a2
# CHECK-ASM: encoding: [0x1b,0xe5,0xd9,0x84]
# riscvc-fixtures: psa.dhx a0, s2, a2
# CHECK-ASM-AND-OBJ: psas.dhx a2, a2, s0
# CHECK-ASM: encoding: [0x1b,0xe6,0x96,0x90]
# riscvc-fixtures: psas.dhx a2, a2, s0
# CHECK-ASM-AND-OBJ: pssa.dhx t3, t3, t3
# CHECK-ASM: encoding: [0x1b,0xee,0xde,0x95]
# riscvc-fixtures: pssa.dhx t3, t3, t3
# CHECK-ASM-AND-OBJ: paax.dhx t3, t3, a4
# CHECK-ASM: encoding: [0x1b,0xee,0xfe,0x98]
# riscvc-fixtures: paax.dhx t3, t3, a4
# CHECK-ASM-AND-OBJ: pasa.dhx a0, t1, t1
# CHECK-ASM: encoding: [0x1b,0xe5,0x73,0x9c]
# riscvc-fixtures: pasa.dhx a0, t1, t1
# CHECK-ASM-AND-OBJ: pmseq.dh a4, t1, t3
# CHECK-ASM: encoding: [0x1b,0xe7,0xd3,0xc1]
# riscvc-fixtures: pmseq.dh a4, t1, t3
# CHECK-ASM-AND-OBJ: pmseq.dw t1, s0, a2
# CHECK-ASM: encoding: [0x1b,0xe3,0xd4,0xc2]
# riscvc-fixtures: pmseq.dw t1, s0, a2
# CHECK-ASM-AND-OBJ: pmseq.db a2, a2, t5
# CHECK-ASM: encoding: [0x1b,0xe6,0xf6,0xc5]
# riscvc-fixtures: pmseq.db a2, a2, t5
# CHECK-ASM-AND-OBJ: pmslt.dh s2, t5, s2
# CHECK-ASM: encoding: [0x1b,0xe9,0x3f,0xd1]
# riscvc-fixtures: pmslt.dh s2, t5, s2
# CHECK-ASM-AND-OBJ: pmslt.dw t1, t1, a2
# CHECK-ASM: encoding: [0x1b,0xe3,0xd3,0xd2]
# riscvc-fixtures: pmslt.dw t1, t1, a2
# CHECK-ASM-AND-OBJ: pmslt.db t5, s0, s2
# CHECK-ASM: encoding: [0x1b,0xef,0x34,0xd5]
# riscvc-fixtures: pmslt.db t5, s0, s2
# CHECK-ASM-AND-OBJ: pmsltu.dh s2, a0, s2
# CHECK-ASM: encoding: [0x1b,0xe9,0x35,0xd9]
# riscvc-fixtures: pmsltu.dh s2, a0, s2
# CHECK-ASM-AND-OBJ: pmsltu.dw s0, t3, a0
# CHECK-ASM: encoding: [0x1b,0xe4,0xbe,0xda]
# riscvc-fixtures: pmsltu.dw s0, t3, a0
# CHECK-ASM-AND-OBJ: pmsltu.db s0, t3, t3
# CHECK-ASM: encoding: [0x1b,0xe4,0xde,0xdd]
# riscvc-fixtures: pmsltu.db s0, t3, t3
# CHECK-ASM-AND-OBJ: pmin.dh a2, s0, t3
# CHECK-ASM: encoding: [0x1b,0xe6,0xd4,0xe1]
# riscvc-fixtures: pmin.dh a2, s0, t3
# CHECK-ASM-AND-OBJ: pmin.dw a2, s0, t3
# CHECK-ASM: encoding: [0x1b,0xe6,0xd4,0xe3]
# riscvc-fixtures: pmin.dw a2, s0, t3
# CHECK-ASM-AND-OBJ: pmin.db t3, s2, t3
# CHECK-ASM: encoding: [0x1b,0xee,0xd9,0xe5]
# riscvc-fixtures: pmin.db t3, s2, t3
# CHECK-ASM-AND-OBJ: pminu.dh t1, t3, t5
# CHECK-ASM: encoding: [0x1b,0xe3,0xfe,0xe9]
# riscvc-fixtures: pminu.dh t1, t3, t5
# CHECK-ASM-AND-OBJ: pminu.dw t1, t3, t5
# CHECK-ASM: encoding: [0x1b,0xe3,0xfe,0xeb]
# riscvc-fixtures: pminu.dw t1, t3, t5
# CHECK-ASM-AND-OBJ: pminu.db t1, s0, a2
# CHECK-ASM: encoding: [0x1b,0xe3,0xd4,0xec]
# riscvc-fixtures: pminu.db t1, s0, a2
# CHECK-ASM-AND-OBJ: pmax.dh a0, a0, a0
# CHECK-ASM: encoding: [0x1b,0xe5,0xb5,0xf0]
# riscvc-fixtures: pmax.dh a0, a0, a0
# CHECK-ASM-AND-OBJ: pmax.dw a0, a0, a0
# CHECK-ASM: encoding: [0x1b,0xe5,0xb5,0xf2]
# riscvc-fixtures: pmax.dw a0, a0, a0
# CHECK-ASM-AND-OBJ: pmax.db a2, a2, s2
# CHECK-ASM: encoding: [0x1b,0xe6,0x36,0xf5]
# riscvc-fixtures: pmax.db a2, a2, s2
# CHECK-ASM-AND-OBJ: pmaxu.dh a4, t3, s0
# CHECK-ASM: encoding: [0x1b,0xe7,0x9e,0xf8]
# riscvc-fixtures: pmaxu.dh a4, t3, s0
# CHECK-ASM-AND-OBJ: pmaxu.dw a4, t3, s0
# CHECK-ASM: encoding: [0x1b,0xe7,0x9e,0xfa]
# riscvc-fixtures: pmaxu.dw a4, t3, s0
# CHECK-ASM-AND-OBJ: pmaxu.db a4, t5, a0
# CHECK-ASM: encoding: [0x1b,0xe7,0xbf,0xfc]
# riscvc-fixtures: pmaxu.db a4, t5, a0
