v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
P 4 5 1180 -440 2140 -440 2140 -60 1180 -60 1180 -440 {}
P 4 5 -0 -640 0 -0 1120 0 1120 -640 -0 -640 {}
T {OUTPUT BUFFERS} 1600 -420 0 0 0.4 0.4 {}
T {NEURON CORE} 440 -620 0 0 0.4 0.4 {}
N 770 -180 830 -180 {lab=RST}
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
N 680 -240 830 -240 {lab=COMP}
N 1040 -240 1080 -240 {lab=SPIKE}
N 1680 -240 1760 -240 {lab=SPIKE}
N 1840 -380 1840 -310 {lab=VDDB}
N 1840 -170 1840 -100 {lab=VSS}
N 1220 -240 1300 -240 {lab=COMP}
N 1380 -380 1380 -310 {lab=VDDB}
N 1380 -170 1380 -100 {lab=VSS}
N 1500 -240 1540 -240 {lab=COMPB}
N 1960 -240 2000 -240 {lab=SPIKEB}
C {ihp-sg13g2/integrator/xschem/integrator.sym} 120 -80 0 0 {name=xINT}
C {ihp-sg13g2/spike_generator/xschem/spike_generator.sym} 940 -210 0 0 {name=xSPK}
C {iopin.sym} 80 -440 0 1 {name=p2 lab=VDD}
C {iopin.sym} 80 -20 0 1 {name=p1 lab=VSS}
C {opin.sym} 450 -350 0 0 {name=p7 lab=MEM
}
C {ipin.sym} 80 -260 0 0 {name=p8 lab=Vx}
C {ipin.sym} 80 -220 0 0 {name=p6 lab=Vref}
C {opin.sym} 2000 -240 0 0 {name=p3 lab=SPIKEB}
C {ipin.sym} 770 -180 0 0 {name=p4 lab=RST}
C {lab_wire.sym} 790 -60 0 1 {name=p5 sig_type=std_logic lab=INT_RST}
C {ihp-sg13g2/resistance_bank/resistence_bank.sym} 280 -500 0 0 {name=xRES}
C {lab_wire.sym} 280 -590 0 1 {name=p9 sig_type=std_logic lab=VDD}
C {ihp-sg13g2/threshold_circuit/xschem/threshold_comparator.sym} 600 -240 0 0 {name=xCOMP}
C {lab_wire.sym} 730 -240 0 1 {name=p11 sig_type=std_logic lab=COMP}
C {lab_wire.sym} 1040 -240 0 1 {name=p13 sig_type=std_logic lab=SPIKE}
C {opin.sym} 1540 -240 0 0 {name=p10 lab=COMPB
}
C {ihp-sg13g2/gate_buff_pad/xschem/gate_buff_pad.sym} 1840 -240 0 0 {name=xSPKB}
C {lab_wire.sym} 1840 -330 3 1 {name=p14 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1840 -150 3 0 {name=p15 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1690 -240 0 1 {name=p16 sig_type=std_logic lab=SPIKE}
C {ihp-sg13g2/gate_buff_pad/xschem/gate_buff_pad.sym} 1380 -240 0 0 {name=xCOMPB}
C {lab_wire.sym} 1380 -330 3 1 {name=p17 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1380 -150 3 0 {name=p18 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1240 -240 0 1 {name=p19 sig_type=std_logic lab=COMP}
