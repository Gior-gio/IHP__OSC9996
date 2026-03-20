v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 590 -350 590 -300 {lab=X}
N 520 -270 550 -270 {lab=VIN}
N 520 -350 520 -270 {lab=VIN}
N 590 -350 700 -350 {lab=X}
N 590 -410 590 -350 {lab=X}
N 520 -440 550 -440 {lab=VIN}
N 590 -440 630 -440 {lab=VDD}
N 590 -510 590 -470 {lab=VDD}
N 590 -270 640 -270 {lab=VSS}
N 470 -350 520 -350 {lab=VIN}
N 520 -440 520 -350 {lab=VIN}
N 590 -240 590 -200 {lab=VSS}
N 700 -270 730 -270 {lab=X}
N 770 -350 770 -300 {lab=Y}
N 700 -440 730 -440 {lab=X}
N 770 -440 810 -440 {lab=VDD}
N 770 -270 820 -270 {lab=VSS}
N 700 -350 700 -270 {lab=X}
N 770 -240 770 -200 {lab=VSS}
N 770 -520 770 -470 {lab=VDD}
N 700 -440 700 -350 {lab=X}
N 950 -350 950 -300 {lab=Z}
N 880 -270 910 -270 {lab=Y}
N 950 -350 1060 -350 {lab=Z}
N 950 -410 950 -350 {lab=Z}
N 880 -440 910 -440 {lab=Y}
N 950 -440 990 -440 {lab=VDD}
N 950 -270 1000 -270 {lab=VSS}
N 880 -350 880 -270 {lab=Y}
N 1130 -350 1130 -300 {lab=VOUT}
N 1060 -270 1090 -270 {lab=Z}
N 1130 -350 1180 -350 {lab=VOUT}
N 1130 -410 1130 -350 {lab=VOUT}
N 1060 -440 1090 -440 {lab=Z}
N 1130 -440 1170 -440 {lab=VDD}
N 1130 -270 1180 -270 {lab=VSS}
N 1060 -350 1060 -270 {lab=Z}
N 1060 -440 1060 -350 {lab=Z}
N 950 -240 950 -200 {lab=VSS}
N 950 -520 950 -470 {lab=VDD}
N 1130 -240 1130 -200 {lab=VSS}
N 1130 -520 1130 -470 {lab=VDD}
N 770 -350 880 -350 {lab=Y}
N 770 -410 770 -350 {lab=Y}
N 880 -440 880 -350 {lab=Y}
C {lab_wire.sym} 630 -440 2 0 {name=p8 sig_type=std_logic lab=VDD}
C {sg13g2_pr/sg13_lv_nmos.sym} 570 -270 0 0 {name=MN1
l=0.13u
w=2u
ng=1
m=4
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 570 -440 0 0 {name=MP1
l=0.13u
w=4u
ng=1
m=4
model=sg13_lv_pmos
spiceprefix=X
}
C {ipin.sym} 590 -510 1 0 {name=p1 lab=VDD}
C {ipin.sym} 470 -350 0 0 {name=p3 lab=VIN
}
C {ipin.sym} 590 -200 3 0 {name=p2 lab=VSS}
C {opin.sym} 1180 -350 0 0 {name=p6 lab=VOUT}
C {lab_wire.sym} 640 -270 2 0 {name=p4 sig_type=std_logic lab=VSS}
C {title.sym} 160 -40 0 0 {name=l1 author="Jorge Angarita Perez"}
C {lab_wire.sym} 810 -440 0 1 {name=p5 sig_type=std_logic lab=VDD}
C {sg13g2_pr/sg13_lv_nmos.sym} 750 -270 0 0 {name=MN2
l=0.13u
w=2u
ng=1
m=16
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 750 -440 0 0 {name=MP2
l=0.13u
w=4u
ng=1
m=16
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_wire.sym} 820 -270 2 0 {name=p7 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 770 -200 2 0 {name=p9 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 770 -520 0 1 {name=p10 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 990 -440 2 0 {name=p11 sig_type=std_logic lab=VDD}
C {sg13g2_pr/sg13_lv_nmos.sym} 930 -270 0 0 {name=MN3
l=0.13u
w=2u
ng=1
m=64
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 930 -440 0 0 {name=MP3
l=0.13u
w=4u
ng=1
m=64
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_wire.sym} 1000 -270 2 0 {name=p12 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1170 -440 0 1 {name=p13 sig_type=std_logic lab=VDD}
C {sg13g2_pr/sg13_lv_nmos.sym} 1110 -270 0 0 {name=MN4
l=0.13u
w=2u
ng=1
m=256
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 1110 -440 0 0 {name=MP4
l=0.13u
w=4u
ng=1
m=256
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_wire.sym} 1180 -270 2 0 {name=p14 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 950 -200 2 0 {name=p16 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 950 -520 0 1 {name=p17 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1130 -200 2 0 {name=p15 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1130 -520 0 1 {name=p18 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 610 -350 0 1 {name=p19 sig_type=std_logic lab=X}
C {lab_wire.sym} 790 -350 0 1 {name=p20 sig_type=std_logic lab=Y}
C {lab_wire.sym} 970 -350 0 1 {name=p21 sig_type=std_logic lab=Z}
