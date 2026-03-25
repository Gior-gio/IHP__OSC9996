v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 220 -340 220 -290 {lab=X}
N 150 -260 180 -260 {lab=VIN}
N 150 -340 150 -260 {lab=VIN}
N 220 -340 330 -340 {lab=X}
N 220 -400 220 -340 {lab=X}
N 150 -430 180 -430 {lab=VIN}
N 220 -430 260 -430 {lab=VDD}
N 220 -500 220 -460 {lab=VDD}
N 220 -260 270 -260 {lab=VSS}
N 100 -340 150 -340 {lab=VIN}
N 150 -430 150 -340 {lab=VIN}
N 220 -230 220 -190 {lab=VSS}
N 330 -260 360 -260 {lab=X}
N 400 -340 400 -290 {lab=Y}
N 330 -430 360 -430 {lab=X}
N 400 -430 440 -430 {lab=VDD}
N 400 -260 450 -260 {lab=VSS}
N 330 -340 330 -260 {lab=X}
N 400 -230 400 -190 {lab=VSS}
N 400 -510 400 -460 {lab=VDD}
N 330 -430 330 -340 {lab=X}
N 580 -340 580 -290 {lab=Z}
N 510 -260 540 -260 {lab=Y}
N 580 -340 690 -340 {lab=Z}
N 580 -400 580 -340 {lab=Z}
N 510 -430 540 -430 {lab=Y}
N 580 -430 620 -430 {lab=VDD}
N 580 -260 630 -260 {lab=VSS}
N 510 -340 510 -260 {lab=Y}
N 760 -340 760 -290 {lab=VOUT}
N 690 -260 720 -260 {lab=Z}
N 760 -340 810 -340 {lab=VOUT}
N 760 -400 760 -340 {lab=VOUT}
N 690 -430 720 -430 {lab=Z}
N 760 -430 800 -430 {lab=VDD}
N 760 -260 810 -260 {lab=VSS}
N 690 -340 690 -260 {lab=Z}
N 690 -430 690 -340 {lab=Z}
N 580 -230 580 -190 {lab=VSS}
N 580 -510 580 -460 {lab=VDD}
N 760 -230 760 -190 {lab=VSS}
N 760 -510 760 -460 {lab=VDD}
N 400 -340 510 -340 {lab=Y}
N 400 -400 400 -340 {lab=Y}
N 510 -430 510 -340 {lab=Y}
C {lab_wire.sym} 260 -430 2 0 {name=p8 sig_type=std_logic lab=VDD}
C {sg13g2_pr/sg13_lv_nmos.sym} 200 -260 0 0 {name=MN1
l=0.13u
w=4.8u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 200 -430 0 0 {name=MP1
l=0.13u
w=9.6u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {ipin.sym} 220 -500 1 0 {name=p1 lab=VDD}
C {ipin.sym} 100 -340 0 0 {name=p3 lab=VIN
}
C {ipin.sym} 220 -190 3 0 {name=p2 lab=VSS}
C {opin.sym} 810 -340 0 0 {name=p6 lab=VOUT}
C {lab_wire.sym} 270 -260 2 0 {name=p4 sig_type=std_logic lab=VSS
w=4.8u}
C {title.sym} 160 -40 0 0 {name=l1 author="Jorge Angarita Perez"}
C {lab_wire.sym} 440 -430 0 1 {name=p5 sig_type=std_logic lab=VDD}
C {sg13g2_pr/sg13_lv_nmos.sym} 380 -260 0 0 {name=MN2
l=0.13u
w=4.8u
ng=1
m=4
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 380 -430 0 0 {name=MP2
l=0.13u
w=9.6u
ng=1
m=4
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_wire.sym} 450 -260 2 0 {name=p7 sig_type=std_logic lab=VSS
w=4.8u}
C {lab_wire.sym} 400 -190 2 0 {name=p9 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 400 -510 0 1 {name=p10 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 620 -430 2 0 {name=p11 sig_type=std_logic lab=VDD}
C {sg13g2_pr/sg13_lv_nmos.sym} 560 -260 0 0 {name=MN3
l=0.13u
w=4.8u
ng=1
m=16
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 560 -430 0 0 {name=MP3
l=0.13u
w=9.6u
ng=1
m=16
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_wire.sym} 630 -260 2 0 {name=p12 sig_type=std_logic lab=VSS
w=4.8u}
C {lab_wire.sym} 800 -430 0 1 {name=p13 sig_type=std_logic lab=VDD}
C {sg13g2_pr/sg13_lv_nmos.sym} 740 -260 0 0 {name=MN4
l=0.13u
w=4.8u
ng=1
m=64
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 740 -430 0 0 {name=MP4
l=0.13u
w=9.6u
ng=1
m=64
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_wire.sym} 810 -260 2 0 {name=p14 sig_type=std_logic lab=VSS
w=1u}
C {lab_wire.sym} 580 -190 2 0 {name=p16 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 580 -510 0 1 {name=p17 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 760 -190 2 0 {name=p15 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 760 -510 0 1 {name=p18 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 240 -340 0 1 {name=p19 sig_type=std_logic lab=X}
C {lab_wire.sym} 420 -340 0 1 {name=p20 sig_type=std_logic lab=Y}
C {lab_wire.sym} 600 -340 0 1 {name=p21 sig_type=std_logic lab=Z}
