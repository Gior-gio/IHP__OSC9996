v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 220 -370 260 -370 {lab=A}
N 100 -130 140 -130 {lab=B}
N 300 -270 400 -270 {lab=VDD}
N 180 -130 280 -130 {lab=VSS}
N 180 -100 180 -60 {lab=VSS}
N 480 -130 580 -130 {lab=VSS}
N 480 -100 480 -60 {lab=VSS}
N 300 -370 400 -370 {lab=VDD}
N 300 -240 300 -200 {lab=OUTN}
N 220 -270 260 -270 {lab=B}
N 400 -130 440 -130 {lab=A}
N 180 -200 180 -160 {lab=OUTN}
N 660 -270 660 -200 {lab=OUTN}
N 660 -270 700 -270 {lab=OUTN}
N 740 -200 740 -160 {lab=OUT}
N 660 -200 660 -130 {lab=OUTN}
N 660 -130 700 -130 {lab=OUTN}
N 740 -130 840 -130 {lab=VSS}
N 740 -100 740 -60 {lab=VSS}
N 740 -270 840 -270 {lab=VDD}
N 740 -340 740 -300 {lab=VDD}
N 740 -200 840 -200 {lab=OUT}
N 100 -200 180 -200 {lab=OUTN}
N 480 -200 480 -160 {lab=OUTN}
N 300 -200 480 -200 {lab=OUTN}
N 300 -460 300 -400 {lab=VDD}
N 480 -200 660 -200 {lab=OUTN}
N 180 -200 300 -200 {lab=OUTN}
N 740 -240 740 -200 {lab=OUT}
N 300 -340 300 -300 {lab=X}
C {opin.sym} 840 -200 0 0 {name=p1 lab=OUT}
C {ipin.sym} 400 -130 0 0 {name=p2 lab=A}
C {iopin.sym} 300 -460 3 0 {name=p5 lab=VDD}
C {iopin.sym} 480 -60 1 0 {name=p4 lab=VSS}
C {lab_pin.sym} 280 -130 0 1 {name=p3 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 580 -130 0 1 {name=p6 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 400 -370 0 1 {name=p7 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 400 -270 0 1 {name=p8 sig_type=std_logic lab=VDD}
C {ipin.sym} 100 -130 0 0 {name=p9 lab=B}
C {lab_pin.sym} 220 -370 0 0 {name=p10 sig_type=std_logic lab=A}
C {lab_pin.sym} 220 -270 0 0 {name=p13 sig_type=std_logic lab=B}
C {lab_pin.sym} 840 -130 0 1 {name=p15 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 840 -270 0 1 {name=p16 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 100 -200 0 0 {name=p17 sig_type=std_logic lab=OUTN}
C {lab_pin.sym} 740 -60 1 1 {name=p12 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 180 -60 1 1 {name=p14 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 740 -340 3 1 {name=p11 sig_type=std_logic lab=VDD}
C {sg13g2_pr/sg13_lv_nmos.sym} 160 -130 0 0 {name=MNB
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 460 -130 0 0 {name=MNA
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 280 -370 0 0 {name=MPA
l=0.13u
w=2u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 280 -270 0 0 {name=MPB
l=0.13u
w=2u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_pin.sym} 300 -320 0 0 {name=p24 sig_type=std_logic lab=X}
C {sg13g2_pr/sg13_lv_nmos.sym} 720 -130 0 0 {name=MNI
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 720 -270 0 0 {name=MPI
l=0.13u
w=2u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
