v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 650 -720 650 -640 {lab=#net1}
N 910 -720 910 -640 {lab=#net2}
N 650 -840 650 -780 {lab=VDD}
N 780 -840 910 -840 {lab=VDD}
N 910 -840 910 -780 {lab=VDD}
N 780 -750 910 -750 {lab=VDD}
N 780 -610 910 -610 {lab=VDD}
N 580 -750 610 -750 {lab=A}
N 950 -750 990 -750 {lab=-A}
N 950 -610 990 -610 {lab=B}
N 580 -610 610 -610 {lab=-B}
N 580 -280 610 -280 {lab=A}
N 580 -420 610 -420 {lab=B}
N 650 -250 650 -210 {lab=VSS}
N 910 -390 910 -310 {lab=#net3}
N 950 -280 980 -280 {lab=-A}
N 950 -420 980 -420 {lab=-B}
N 910 -250 910 -210 {lab=VSS}
N 780 -210 910 -210 {lab=VSS}
N 780 -420 910 -420 {lab=VSS}
N 780 -280 910 -280 {lab=VSS}
N 780 -770 780 -750 {lab=VDD}
N 650 -750 780 -750 {lab=VDD}
N 780 -750 780 -610 {lab=VDD}
N 650 -610 780 -610 {lab=VDD}
N 650 -500 650 -450 {lab=S}
N 780 -500 910 -500 {lab=S}
N 650 -580 650 -550 {lab=S}
N 780 -550 910 -550 {lab=S}
N 910 -580 910 -550 {lab=S}
N 910 -500 910 -450 {lab=S}
N 780 -550 780 -500 {lab=S}
N 650 -550 780 -550 {lab=S}
N 650 -500 780 -500 {lab=S}
N 650 -280 780 -280 {lab=VSS}
N 780 -420 780 -280 {lab=VSS}
N 650 -420 780 -420 {lab=VSS}
N 780 -280 780 -250 {lab=VSS}
N 780 -210 780 -190 {lab=VSS}
N 650 -210 780 -210 {lab=VSS}
N 320 -670 370 -670 {lab=-A}
N 190 -600 190 -560 {lab=VSS}
N 190 -790 190 -740 {lab=VDD}
N 70 -670 110 -670 {lab=A}
N 330 -370 380 -370 {lab=-B}
N 200 -300 200 -260 {lab=VSS}
N 200 -490 200 -440 {lab=VDD}
N 80 -370 120 -370 {lab=B}
N 780 -860 780 -840 {lab=VDD}
N 650 -840 780 -840 {lab=VDD}
N 650 -390 650 -310 {lab=#net4}
N 910 -500 1000 -500 {lab=S}
C {title.sym} 160 -30 0 0 {name=l5 author="Juan pablo luengas -- Nicolas Velasco"}
C {lab_wire.sym} 780 -770 0 0 {name=p1 sig_type=std_logic lab=VDD
}
C {lab_wire.sym} 780 -250 2 1 {name=p2 sig_type=std_logic lab=VSS
}
C {ipin.sym} 780 -190 3 0 {name=p3 lab=VSS}
C {ipin.sym} 580 -420 0 0 {name=p4 lab=B}
C {ipin.sym} 580 -280 0 0 {name=p5 lab=A}
C {lab_wire.sym} 190 -560 2 1 {name=p6 sig_type=std_logic lab=VSS
}
C {lab_wire.sym} 190 -790 0 0 {name=p7 sig_type=std_logic lab=VDD
}
C {lab_wire.sym} 200 -260 2 1 {name=p8 sig_type=std_logic lab=VSS
}
C {lab_wire.sym} 200 -490 0 0 {name=p9 sig_type=std_logic lab=VDD
}
C {lab_wire.sym} 70 -670 2 1 {name=p10 sig_type=std_logic lab=A
}
C {lab_wire.sym} 370 -670 2 0 {name=p11 sig_type=std_logic lab=-A
}
C {lab_wire.sym} 80 -370 2 1 {name=p12 sig_type=std_logic lab=B
}
C {lab_wire.sym} 380 -370 2 0 {name=p13 sig_type=std_logic lab=-B
}
C {lab_wire.sym} 980 -420 2 0 {name=p14 sig_type=std_logic lab=-B
}
C {lab_wire.sym} 980 -280 2 0 {name=p15 sig_type=std_logic lab=-A
}
C {lab_wire.sym} 580 -750 2 1 {name=p16 sig_type=std_logic lab=A
}
C {lab_wire.sym} 990 -750 2 0 {name=p17 sig_type=std_logic lab=-A
}
C {lab_wire.sym} 580 -610 2 1 {name=p18 sig_type=std_logic lab=-B
}
C {lab_wire.sym} 990 -610 2 0 {name=p19 sig_type=std_logic lab=B
}
C {ipin.sym} 780 -860 1 0 {name=p20 lab=VDD}
C {opin.sym} 1000 -500 0 0 {name=p21 lab=S}
C {sg13g2_pr/sg13_lv_pmos.sym} 630 -750 0 0 {name=M2
l=0.13u
w=2u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 630 -610 0 0 {name=M1
l=0.13u
w=2u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 930 -750 0 1 {name=M4
l=0.13u
w=2u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 930 -610 0 1 {name=M5
l=0.13u
w=2u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 630 -420 0 0 {name=M6
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 630 -280 0 0 {name=M3
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 930 -420 0 1 {name=M7
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 930 -280 0 1 {name=M8
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {/foss/designs/ROI_LIF_NEURON_UNIC-CASS/work/gate_inv_L0d13/xschem/gate_inv_L0d13.sym} -30 -450 0 0 {name=x3}
C {/foss/designs/ROI_LIF_NEURON_UNIC-CASS/work/gate_inv_L0d13/xschem/gate_inv_L0d13.sym} -20 -150 0 0 {name=x1}
