v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 1890 -180 1990 -180 {lab=OUT}
N 260 -320 260 -270 {lab=VDD}
N 570 -320 570 -270 {lab=VDD}
N 880 -320 880 -270 {lab=VDD}
N 1190 -320 1190 -270 {lab=VDD}
N 1500 -320 1500 -270 {lab=VDD}
N 1810 -320 1810 -260 {lab=VDD}
N 120 -200 120 -70 {lab=IN}
N 240 -70 250 -80 {lab=IN}
N 250 -80 270 -80 {lab=IN}
N 270 -80 280 -70 {lab=IN}
N 550 -70 560 -80 {lab=IN}
N 560 -80 580 -80 {lab=IN}
N 580 -80 590 -70 {lab=IN}
N 860 -70 870 -80 {lab=IN}
N 870 -80 890 -80 {lab=IN}
N 890 -80 900 -70 {lab=IN}
N 1170 -70 1180 -80 {lab=IN}
N 1180 -80 1200 -80 {lab=IN}
N 1200 -80 1210 -70 {lab=IN}
N 1480 -70 1490 -80 {lab=IN}
N 1490 -80 1510 -80 {lab=IN}
N 1510 -80 1520 -70 {lab=IN}
N 1690 -160 1730 -160 {lab=IN}
N 1810 -100 1810 -40 {lab=VSS}
N 260 -130 260 -40 {lab=VSS}
N 570 -130 570 -40 {lab=VSS}
N 880 -130 880 -40 {lab=VSS}
N 1190 -130 1190 -40 {lab=VSS}
N 1500 -130 1500 -40 {lab=VSS}
N 1190 -320 1500 -320 {lab=VDD}
N 80 -200 120 -200 {lab=IN}
N 1190 -40 1500 -40 {lab=VSS}
N 80 -320 260 -320 {lab=VDD}
N 260 -320 570 -320 {lab=VDD}
N 570 -320 880 -320 {lab=VDD}
N 880 -320 1190 -320 {lab=VDD}
N 80 -40 260 -40 {lab=VSS}
N 260 -40 570 -40 {lab=VSS}
N 570 -40 880 -40 {lab=VSS}
N 880 -40 1190 -40 {lab=VSS}
N 1500 -320 1810 -320 {lab=VDD}
N 1500 -40 1810 -40 {lab=VSS}
N 1520 -70 1690 -70 {lab=IN}
N 1690 -160 1690 -70 {lab=IN}
N 1210 -70 1480 -70 {lab=IN}
N 900 -70 1170 -70 {lab=IN}
N 590 -70 860 -70 {lab=IN}
N 280 -70 550 -70 {lab=IN}
N 120 -70 240 -70 {lab=IN}
N 120 -200 200 -200 {lab=IN}
N 340 -200 510 -200 {lab=I0}
N 650 -200 820 -200 {lab=I1}
N 960 -200 1130 -200 {lab=I2}
N 1270 -200 1440 -200 {lab=I3}
N 1580 -200 1730 -200 {lab=I4}
C {lab_pin.sym} 470 -200 3 1 {name=p7 sig_type=std_logic lab=I0
}
C {lab_pin.sym} 1710 -200 3 1 {name=p10 sig_type=std_logic lab=I4}
C {iopin.sym} 80 -320 0 1 {name=p15 lab=VDD}
C {iopin.sym} 80 -40 0 1 {name=p16 lab=VSS}
C {ipin.sym} 80 -200 0 0 {name=p17 lab=IN}
C {opin.sym} 1990 -180 0 0 {name=p18 lab=OUT}
C {lab_pin.sym} 780 -200 3 1 {name=p21 sig_type=std_logic lab=I1}
C {lab_pin.sym} 1400 -200 3 1 {name=p22 sig_type=std_logic lab=I3}
C {gate_and.sym} 1810 -180 0 0 {name=xAND}
C {lab_pin.sym} 1090 -200 3 1 {name=p1 sig_type=std_logic lab=I2
}
C {gate_inv_L0d65.sym} 260 -200 0 0 {name=xINV0}
C {gate_inv_L0d65.sym} 570 -200 0 0 {name=xINV1}
C {gate_inv_L0d65.sym} 880 -200 0 0 {name=xINV2}
C {gate_inv_L0d65.sym} 1190 -200 0 0 {name=xINV3}
C {gate_inv_L0d65.sym} 1500 -200 0 0 {name=xINV4}
