v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 370 -470 370 -420 {lab=out}
N 300 -390 330 -390 {lab=in}
N 300 -470 300 -390 {lab=in}
N 260 -470 300 -470 {lab=in}
N 300 -560 300 -470 {lab=in}
N 370 -470 420 -470 {lab=out}
N 370 -530 370 -470 {lab=out}
N 300 -560 330 -560 {lab=in}
N 370 -560 410 -560 {lab=VDD}
N 370 -660 410 -660 {lab=VDD}
N 370 -630 370 -590 {lab=#net1}
N 370 -250 370 -210 {lab=VSS}
N 370 -360 370 -310 {lab=#net2}
N 370 -390 420 -390 {lab=VSS}
N 270 -280 330 -280 {lab=VcrtN}
N 270 -660 330 -660 {lab=VcrtP}
N 370 -750 370 -690 {lab=VDD}
N 370 -280 430 -280 {lab=VSS}
C {ipin.sym} 370 -750 1 0 {name=p1 lab=VDD}
C {ipin.sym} 370 -210 3 0 {name=p2 lab=VSS}
C {ipin.sym} 260 -470 0 0 {name=p3 lab=in
}
C {opin.sym} 420 -470 0 0 {name=p4 lab=out}
C {ipin.sym} 270 -660 0 0 {name=p5 lab=VcrtP
}
C {ipin.sym} 270 -280 0 0 {name=p6 lab=VcrtN
}
C {lab_wire.sym} 410 -660 2 0 {name=p7 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 410 -560 2 0 {name=p8 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 420 -390 2 0 {name=p9 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 430 -280 2 0 {name=p10 sig_type=std_logic lab=VSS}
C {sg13g2_pr/sg13_lv_nmos.sym} 350 -390 0 0 {name=M1
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 350 -280 0 0 {name=M2
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 350 -560 2 1 {name=M3
l=0.13u
w=2u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 350 -660 2 1 {name=M4
l=0.13u
w=2u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
