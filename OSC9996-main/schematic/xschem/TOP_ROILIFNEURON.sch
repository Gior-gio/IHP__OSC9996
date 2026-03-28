v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
P 4 5 40 -1200 40 -80 640 -80 640 -1200 40 -1200 {}
P 4 5 700 -1200 700 -80 1180 -80 1180 -1200 700 -1200 {}
T {OUTPUT BUFFERS} 800 -1180 0 0 0.6 0.6 {}
T {NEURONS (x2)} 240 -1180 0 0 0.6 0.6 {}
N 740 -780 820 -780 {lab=SPIKE1}
N 900 -710 900 -640 {lab=VDD}
N 740 -980 820 -980 {lab=COMP1}
N 900 -1120 900 -1050 {lab=VDD}
N 1020 -980 1060 -980 {lab=COMPB1}
N 1020 -780 1060 -780 {lab=SPIKEB1}
N 120 -940 180 -940 {lab=Vx1}
N 120 -860 180 -860 {lab=RST}
N 290 -800 290 -740 {lab=Vref1}
N 460 -800 460 -740 {lab=VSS}
N 460 -1060 460 -1000 {lab=VDD}
N 540 -940 600 -940 {lab=MEM1}
N 120 -420 180 -420 {lab=Vx2}
N 120 -340 180 -340 {lab=RST}
N 290 -280 290 -220 {lab=Vref2}
N 460 -280 460 -220 {lab=VSS}
N 460 -540 460 -480 {lab=VDD}
N 540 -420 600 -420 {lab=MEM2}
N 900 -910 900 -850 {lab=VSS}
N 740 -860 740 -780 {lab=SPIKE1}
N 740 -980 740 -900 {lab=COMP1}
N 740 -260 820 -260 {lab=SPIKE2}
N 900 -190 900 -120 {lab=VDD}
N 740 -460 820 -460 {lab=COMP2}
N 900 -600 900 -530 {lab=VDD}
N 1020 -460 1060 -460 {lab=COMPB2}
N 1020 -260 1060 -260 {lab=SPIKEB2}
N 900 -390 900 -330 {lab=VSS}
N 740 -340 740 -260 {lab=SPIKE2}
N 740 -460 740 -380 {lab=COMP2}
N 540 -900 740 -900 {lab=COMP1}
N 540 -860 740 -860 {lab=SPIKE1}
N 540 -380 740 -380 {lab=COMP2}
N 540 -340 740 -340 {lab=SPIKE2}
C {opin.sym} 1060 -780 2 1 {name=p3 lab=SPIKEB1}
C {opin.sym} 1060 -980 0 0 {name=p10 lab=COMPB1
}
C {gate_buff_pad.sym} 900 -780 2 1 {name=xSPKB1}
C {lab_wire.sym} 900 -690 3 0 {name=p14 sig_type=std_logic lab=VDD}
C {gate_buff_pad.sym} 900 -980 0 0 {name=xCOMPB1}
C {lab_wire.sym} 900 -1070 3 1 {name=p17 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 900 -890 3 0 {name=p18 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 460 -750 3 1 {name=p5 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 460 -1020 3 1 {name=p6 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 550 -900 0 1 {name=p7 sig_type=std_logic lab=COMP1}
C {lab_wire.sym} 550 -860 0 1 {name=p8 sig_type=std_logic lab=SPIKE1}
C {lab_wire.sym} 550 -940 0 1 {name=p9 sig_type=std_logic lab=MEM1}
C {noconn.sym} 600 -940 2 0 {name=l3}
C {lab_wire.sym} 130 -340 0 1 {name=p12 sig_type=std_logic lab=RST}
C {lab_wire.sym} 460 -230 3 1 {name=p20 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 460 -500 3 1 {name=p21 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 550 -380 0 1 {name=p22 sig_type=std_logic lab=COMP2}
C {lab_wire.sym} 550 -340 0 1 {name=p23 sig_type=std_logic lab=SPIKE2}
C {lab_wire.sym} 550 -420 0 1 {name=p24 sig_type=std_logic lab=MEM2}
C {noconn.sym} 600 -420 2 0 {name=l1}
C {opin.sym} 1060 -260 2 1 {name=p15 lab=SPIKEB2}
C {opin.sym} 1060 -460 0 0 {name=p25 lab=COMPB2
}
C {gate_buff_pad.sym} 900 -260 2 1 {name=xSPKB2}
C {lab_wire.sym} 900 -170 3 0 {name=p26 sig_type=std_logic lab=VDD}
C {gate_buff_pad.sym} 900 -460 0 0 {name=xCOMPB2}
C {lab_wire.sym} 900 -550 3 1 {name=p28 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 900 -370 3 0 {name=p29 sig_type=std_logic lab=VSS}
C {iopin.sym} 170 -1170 0 1 {name=p16 lab=VDD}
C {iopin.sym} 170 -1140 0 1 {name=p19 lab=VSS}
C {ipin.sym} 120 -940 0 0 {name=p27 lab=Vx1}
C {ipin.sym} 290 -740 3 0 {name=p30 lab=Vref1}
C {ipin.sym} 120 -420 0 0 {name=p31 lab=Vx2}
C {ipin.sym} 290 -220 3 0 {name=p32 lab=Vref2}
C {ipin.sym} 120 -860 0 0 {name=p33 lab=RST}
C {LIF_neuron.sym} 50 -670 0 0 {name=xLIF1}
C {LIF_neuron.sym} 50 -150 0 0 {name=xLIF2}
