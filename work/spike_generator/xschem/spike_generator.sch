v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
L 4 1160 -110 1160 -30 {}
P 4 5 1060 -150 1060 -110 1360 -110 1360 -150 1060 -150 {}
P 4 4 1060 -110 1060 -70 1360 -70 1360 -110 {}
P 4 4 1060 -70 1060 -30 1360 -30 1360 -70 {}
T {Current consumption [mA]} 1080 -140 0 0 0.4 0.4 {}
T {Imax} 1070 -60 0 0 0.4 0.4 {}
T {Imin} 1070 -100 0 0 0.4 0.4 {}
T {0.05381192} 1190 -100 0 0 0.4 0.4 {}
T {0.1029193} 1190 -60 0 0 0.4 0.4 {}
N 600 -440 720 -440 {lab=SPK_OUT}
N 680 -170 720 -170 {lab=#net1}
N 540 -350 540 -330 {lab=VSS}
N 560 -90 560 -60 {lab=VSS}
N 920 -440 970 -440 {lab=Vspk}
N 560 -290 560 -250 {lab=VDD}
N 540 -550 540 -530 {lab=VDD}
N 540 -330 800 -330 {lab=VSS}
N 440 -440 440 -350 {lab=Vcmp}
N 440 -350 460 -340 {lab=Vcmp}
N 460 -340 460 -320 {lab=Vcmp}
N 440 -310 460 -320 {lab=Vcmp}
N 440 -310 440 -190 {lab=Vcmp}
N 440 -190 500 -190 {lab=Vcmp}
N 800 -100 800 -70 {lab=VSS}
N 800 -280 800 -240 {lab=VDD}
N 920 -170 960 -170 {lab=Vrst}
N 800 -550 800 -510 {lab=VDD}
N 540 -550 800 -550 {lab=VDD}
N 800 -370 800 -330 {lab=VSS}
N 440 -440 480 -440 {lab=Vcmp}
N 360 -440 440 -440 {lab=Vcmp}
N 360 -150 500 -150 {lab=Ven}
N 360 -550 540 -550 {lab=VDD}
N 360 -330 540 -330 {lab=VSS}
C {iopin.sym} 360 -440 2 0 {name=p1 lab=Vcmp}
C {iopin.sym} 360 -150 2 0 {name=p2 lab=Ven}
C {iopin.sym} 960 -170 0 0 {name=p3 lab=Vrst
}
C {iopin.sym} 970 -440 0 0 {name=p4 lab=Vspk}
C {iopin.sym} 360 -550 2 0 {name=p5 lab=VDD
}
C {iopin.sym} 360 -330 2 0 {name=p6 lab=VSS}
C {lab_wire.sym} 560 -270 2 0 {name=p19 sig_type=std_logic lab=VDD
}
C {lab_wire.sym} 560 -80 2 0 {name=p20 sig_type=std_logic lab=VSS

}
C {lab_wire.sym} 690 -440 0 0 {name=p22 sig_type=std_logic lab=SPK_OUT
}
C {lab_wire.sym} 800 -260 2 0 {name=p23 sig_type=std_logic lab=VDD
}
C {lab_wire.sym} 800 -90 2 0 {name=p24 sig_type=std_logic lab=VSS

}
C {ROI_LIF_NEURON_UNIC-CASS/work/edge_detector/xschem/edge_detector.sym} 540 -440 0 0 {name=xEDGE}
C {ROI_LIF_NEURON_UNIC-CASS/work/gate_buff_L0d13/xschem/gate_buff_L0d13.sym} 540 -260 0 0 {name=xBSPK}
C {ROI_LIF_NEURON_UNIC-CASS/work/gate_buff_L0d13/xschem/gate_buff_L0d13.sym} 540 10 0 0 {name=xBRST}
C {ROI_LIF_NEURON_UNIC-CASS/work/gate_or/xschem/gate_or.sym} 580 -170 0 0 {name=xOR}
