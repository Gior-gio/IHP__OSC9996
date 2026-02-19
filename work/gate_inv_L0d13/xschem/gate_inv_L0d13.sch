v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 670 -370 670 -320 {lab=VOUT}
N 600 -290 630 -290 {lab=VIN}
N 600 -370 600 -290 {lab=VIN}
N 600 -460 630 -460 {lab=VIN}
N 670 -540 670 -460 {lab=VDD}
N 560 -370 600 -370 {lab=VIN}
N 600 -460 600 -370 {lab=VIN}
N 670 -370 720 -370 {lab=VOUT}
N 670 -430 670 -370 {lab=VOUT}
N 670 -290 670 -220 {lab=VSS}
C {ipin.sym} 670 -540 1 0 {name=p1 lab=VDD}
C {ipin.sym} 670 -220 3 0 {name=p2 lab=VSS}
C {ipin.sym} 560 -370 0 0 {name=p3 lab=VIN
}
C {opin.sym} 720 -370 0 0 {name=p4 lab=VOUT}
C {sg13g2_pr/sg13_lv_pmos.sym} 650 -460 0 0 {name=M2
l=0.13u
w=2u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 650 -290 0 0 {name=M1
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {title.sym} 160 -30 0 0 {name=l1 author="Juan pablo luengas -- Nicolas Velasco"}
