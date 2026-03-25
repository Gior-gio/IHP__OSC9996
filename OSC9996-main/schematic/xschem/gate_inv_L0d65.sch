v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 200 -340 200 -320 {lab=VDD}
N 200 -220 200 -180 {lab=B}
N 120 -290 160 -290 {lab=A}
N 120 -290 120 -220 {lab=A}
N 80 -220 120 -220 {lab=A}
N 120 -220 120 -150 {lab=A}
N 120 -150 160 -150 {lab=A}
N 200 -290 300 -290 {lab=VDD}
N 300 -340 300 -290 {lab=VDD}
N 200 -340 300 -340 {lab=VDD}
N 200 -150 300 -150 {lab=VSS}
N 300 -150 300 -100 {lab=VSS}
N 200 -100 300 -100 {lab=VSS}
N 200 -100 200 -80 {lab=VSS}
N 200 -220 340 -220 {lab=B}
N 200 -380 200 -340 {lab=VDD}
N 200 -120 200 -100 {lab=VSS}
N 200 -260 200 -220 {lab=B}
C {opin.sym} 340 -220 0 0 {name=p1 lab=B}
C {ipin.sym} 80 -220 0 0 {name=p2 lab=A}
C {iopin.sym} 200 -380 1 1 {name=p5 lab=VDD}
C {iopin.sym} 200 -80 1 0 {name=p4 lab=VSS}
C {sg13g2_pr/sg13_lv_nmos.sym} 180 -150 0 0 {name=MN
l=0.65u
w=1u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 180 -290 0 0 {name=MP
l=0.65u
w=2u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
