v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
L 4 1060 -260 1060 -180 {}
P 4 5 960 -300 960 -260 1260 -260 1260 -300 960 -300 {}
P 4 4 960 -260 960 -220 1260 -220 1260 -260 {}
P 4 4 960 -220 960 -180 1260 -180 1260 -220 {}
T {Current consumption [mA]} 980 -290 0 0 0.4 0.4 {}
T {Imax} 970 -210 0 0 0.4 0.4 {}
T {Imin} 970 -250 0 0 0.4 0.4 {}
T {0.006753759} 1090 -250 0 0 0.4 0.4 {}
T {0.01374132} 1090 -210 0 0 0.4 0.4 {}
N 190 -250 220 -250 {lab=Vin}
N 190 -430 220 -430 {lab=Vin}
N 260 -250 260 -180 {lab=VSS}
N 260 -510 260 -430 {lab=VDD}
N 260 -340 260 -280 {lab=Vx}
N 370 -250 400 -250 {lab=Vx}
N 370 -430 400 -430 {lab=Vx}
N 440 -250 440 -180 {lab=VSS}
N 370 -340 370 -250 {lab=Vx}
N 440 -510 440 -430 {lab=VDD}
N 440 -340 490 -340 {lab=Vout}
N 440 -340 440 -280 {lab=Vout}
N 150 -340 190 -340 {lab=Vin}
N 190 -340 190 -250 {lab=Vin}
N 260 -340 370 -340 {lab=Vx}
N 260 -400 260 -340 {lab=Vx}
N 370 -430 370 -340 {lab=Vx}
N 440 -400 440 -340 {lab=Vout}
N 190 -430 190 -340 {lab=Vin}
C {iopin.sym} 260 -510 0 0 {name=p5 lab=VDD}
C {iopin.sym} 260 -180 2 1 {name=p4 lab=VSS}
C {ipin.sym} 150 -340 0 0 {name=p2 lab=Vin
}
C {opin.sym} 490 -340 0 0 {name=p1 lab=Vout
}
C {lab_pin.sym} 440 -510 0 1 {name=p8 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 440 -180 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {title.sym} 170 -40 0 0 {name=l5 author="Carlos Alvarez -- Michel Salazar"}
C {sg13g2_pr/sg13_lv_pmos.sym} 240 -430 0 0 {name=M2
l=0.13u
w=2u
ng=1
m=2
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 240 -250 0 0 {name=M1
l=0.13u
w=1.0u
ng=1
m=2
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 420 -430 0 0 {name=M3
l=0.13u
w=2u
ng=1
m=2
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 420 -250 0 0 {name=M4
l=0.13u
w=1.0u
ng=1
m=2
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_pin.sym} 370 -320 0 1 {name=p3 sig_type=std_logic lab=Vx}
