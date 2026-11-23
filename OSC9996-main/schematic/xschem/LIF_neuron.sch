v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 770 -180 830 -180 {lab=RST}
N 1040 -240 1140 -240 {lab=SPIKE}
N 950 -70 960 -60 {lab=INT_RST}
N 930 -70 950 -70 {lab=INT_RST}
N 920 -60 930 -70 {lab=INT_RST}
N 440 -350 450 -350 {lab=MEM}
N 140 -240 180 -240 {lab=INT_RST}
N 80 -220 180 -220 {lab=Vref}
N 280 -170 280 -20 {lab=VSS}
N 80 -20 280 -20 {lab=VSS}
N 140 -60 260 -60 {lab=INT_RST}
N 260 -60 270 -70 {lab=INT_RST}
N 270 -70 290 -70 {lab=INT_RST}
N 290 -70 300 -60 {lab=INT_RST}
N 390 -240 440 -240 {lab=MEM}
N 600 -20 940 -20 {lab=VSS}
N 940 -130 940 -20 {lab=VSS}
N 620 -60 920 -60 {lab=INT_RST}
N 1040 -180 1080 -180 {lab=INT_RST}
N 1080 -180 1080 -60 {lab=INT_RST}
N 960 -60 1080 -60 {lab=INT_RST}
N 140 -240 140 -60 {lab=INT_RST}
N 940 -440 940 -290 {lab=VDD}
N 600 -440 600 -300 {lab=VDD}
N 600 -440 940 -440 {lab=VDD}
N 280 -440 280 -320 {lab=VDD}
N 80 -440 280 -440 {lab=VDD}
N 140 -260 180 -260 {lab=Vx}
N 130 -430 140 -420 {lab=Vx}
N 130 -450 130 -430 {lab=Vx}
N 130 -450 140 -460 {lab=Vx}
N 140 -500 140 -460 {lab=Vx}
N 140 -420 140 -260 {lab=Vx}
N 80 -260 140 -260 {lab=Vx}
N 430 -430 440 -420 {lab=MEM}
N 430 -450 430 -430 {lab=MEM}
N 430 -450 440 -460 {lab=MEM}
N 440 -500 440 -460 {lab=MEM}
N 440 -420 440 -350 {lab=MEM}
N 440 -240 520 -240 {lab=MEM}
N 440 -350 440 -240 {lab=MEM}
N 140 -500 190 -500 {lab=Vx}
N 370 -500 440 -500 {lab=MEM}
N 280 -590 280 -560 {lab=VDD}
N 280 -440 600 -440 {lab=VDD}
N 280 -20 600 -20 {lab=VSS}
N 600 -180 600 -20 {lab=VSS}
N 300 -60 580 -60 {lab=INT_RST}
N 580 -60 590 -70 {lab=INT_RST}
N 590 -70 610 -70 {lab=INT_RST}
N 610 -70 620 -60 {lab=INT_RST}
N 720 -300 720 -240 {lab=COMP}
N 680 -240 720 -240 {lab=COMP}
N 720 -240 830 -240 {lab=COMP}
N 720 -300 780 -300 {lab=COMP}
N 240 -590 240 -560 {lab=VDD}
C {integrator.sym} 120 -80 0 0 {name=xINT}
C {spike_generator.sym} 940 -210 0 0 {name=xSPK}
C {iopin.sym} 80 -440 0 1 {name=p2 lab=VDD}
C {iopin.sym} 80 -20 0 1 {name=p1 lab=VSS}
C {opin.sym} 450 -350 0 0 {name=p7 lab=MEM
}
C {ipin.sym} 80 -260 0 0 {name=p8 lab=Vx}
C {ipin.sym} 80 -220 0 0 {name=p6 lab=Vref}
C {opin.sym} 1140 -240 0 0 {name=p3 lab=SPIKE
}
C {ipin.sym} 770 -180 0 0 {name=p4 lab=RST}
C {lab_wire.sym} 790 -60 0 1 {name=p5 sig_type=std_logic lab=INT_RST}
C {resistence_bank.sym} 280 -500 0 0 {name=xRES}
C {lab_wire.sym} 280 -590 0 1 {name=p9 sig_type=std_logic lab=VDD}
C {threshold_comparator.sym} 600 -240 0 0 {name=xCOMP}
C {opin.sym} 780 -300 0 0 {name=p10 lab=COMP
=======
C \{opin.sym}
C {lab_wire.sym} 240 -590 0 0 {name=p11 sig_type=std_logic lab=VSS}
