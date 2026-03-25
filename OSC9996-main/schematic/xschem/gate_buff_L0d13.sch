v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 590 -350 590 -300 {lab=#net1}
N 520 -270 550 -270 {lab=VIN}
N 520 -350 520 -270 {lab=VIN}
N 590 -350 700 -350 {lab=#net1}
N 590 -410 590 -350 {lab=#net1}
N 520 -440 550 -440 {lab=VIN}
N 590 -440 630 -440 {lab=VDD}
N 590 -510 590 -470 {lab=VDD}
N 590 -270 640 -270 {lab=VSS}
N 470 -350 520 -350 {lab=VIN}
N 520 -440 520 -350 {lab=VIN}
N 590 -240 590 -200 {lab=VSS}
N 770 -350 770 -300 {lab=VOUT}
N 700 -270 730 -270 {lab=#net1}
N 770 -350 820 -350 {lab=VOUT}
N 770 -410 770 -350 {lab=VOUT}
N 700 -440 730 -440 {lab=#net1}
N 770 -440 810 -440 {lab=VDD}
N 770 -270 820 -270 {lab=VSS}
N 700 -350 700 -270 {lab=#net1}
N 770 -240 770 -200 {lab=VSS}
N 770 -520 770 -470 {lab=VDD}
N 700 -440 700 -350 {lab=#net1}
C {lab_wire.sym} 630 -440 2 0 {name=p8 sig_type=std_logic lab=VDD}
C {sg13g2_pr/sg13_lv_nmos.sym} 570 -270 0 0 {name=M1
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 570 -440 0 0 {name=M2
l=0.13u
w=2u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {ipin.sym} 590 -510 1 0 {name=p1 lab=VDD}
C {ipin.sym} 470 -350 0 0 {name=p3 lab=VIN
}
C {ipin.sym} 590 -200 3 0 {name=p2 lab=VSS}
C {opin.sym} 820 -350 0 0 {name=p6 lab=VOUT}
C {lab_wire.sym} 640 -270 2 0 {name=p4 sig_type=std_logic lab=VSS}
C {title.sym} 160 -40 0 0 {name=l1 author="Juan pablo luengas -- Nicolas Velasco"}
C {lab_wire.sym} 810 -440 0 1 {name=p5 sig_type=std_logic lab=VDD}
C {sg13g2_pr/sg13_lv_nmos.sym} 750 -270 0 0 {name=M3
l=0.13u
w=1.0u
ng=1
m=3
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 750 -440 0 0 {name=M4
l=0.13u
w=2u
ng=1
m=3
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_wire.sym} 820 -270 2 0 {name=p7 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 770 -200 2 0 {name=p9 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 770 -520 0 1 {name=p10 sig_type=std_logic lab=VDD}
