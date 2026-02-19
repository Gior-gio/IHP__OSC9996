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
N 190 -300 260 -300 {lab=Vin}
N 470 -300 530 -300 {lab=#net1}
N 740 -300 850 -300 {lab=Vout}
N 340 -230 340 -160 {lab=VSS}
N 340 -440 340 -370 {lab=VDD}
N 610 -440 610 -370 {lab=VDD}
N 610 -230 610 -160 {lab=VSS}
C {/foss/designs/chipathon_2025/designs/ihp-sg13g2/gate_inv_L0d13/xschem/gate_inv_L0d13.sym} 120 -80 0 0 {name=x1}
C {/foss/designs/chipathon_2025/designs/ihp-sg13g2/gate_inv_L0d13/xschem/gate_inv_L0d13.sym} 390 -80 0 0 {name=x2}
C {iopin.sym} 340 -440 1 1 {name=p5 lab=VDD}
C {iopin.sym} 340 -160 1 0 {name=p4 lab=VSS}
C {ipin.sym} 190 -300 0 0 {name=p2 lab=Vin
}
C {opin.sym} 850 -300 0 0 {name=p1 lab=Vout
}
C {lab_pin.sym} 610 -440 0 1 {name=p8 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 610 -160 0 1 {name=p6 sig_type=std_logic lab=VSS}
C {title.sym} 170 -40 0 0 {name=l5 author="Carlos Alvarez -- Michel Salazar"}
