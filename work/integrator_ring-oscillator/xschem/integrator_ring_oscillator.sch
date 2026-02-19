v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
P 4 5 290 -770 2950 -770 2950 -290 290 -290 290 -770 {}
T {Main Ring VCO (5 Stages)} 410 -755 0 0 0.6 0.6 {}
N 670 -500 670 -460 {lab=VSS}
N 670 -680 670 -640 {lab=VDD}
N 1150 -500 1150 -460 {lab=VSS}
N 1150 -680 1150 -640 {lab=VDD}
N 1600 -500 1600 -460 {lab=VSS}
N 1600 -680 1600 -640 {lab=VDD}
N 560 -520 590 -520 {lab=Vctr}
N 1040 -520 1070 -520 {lab=Vctr}
N 1490 -520 1520 -520 {lab=Vctr}
N 570 -620 590 -620 {lab=VcrtPP}
N 1050 -620 1070 -620 {lab=VcrtPP}
N 1500 -620 1520 -620 {lab=VcrtPP}
N 2050 -500 2050 -460 {lab=VSS}
N 2050 -680 2050 -640 {lab=VDD}
N 1940 -520 1970 -520 {lab=Vctr}
N 1950 -620 1970 -620 {lab=VcrtPP}
N 2520 -500 2520 -460 {lab=VSS}
N 2520 -680 2520 -640 {lab=VDD}
N 2410 -520 2440 -520 {lab=Vctr}
N 2420 -620 2440 -620 {lab=VcrtPP}
N 530 -570 530 -340 {lab=A[0]}
N 530 -570 590 -570 {lab=A[0]}
N 120 -530 150 -530 {lab=Vctr}
N 190 -650 190 -560 {lab=VcrtPP}
N 120 -700 150 -700 {lab=VcrtPP}
N 190 -700 230 -700 {lab=VDD}
N 190 -770 190 -730 {lab=VDD}
N 190 -530 240 -530 {lab=VSS}
N 190 -500 190 -460 {lab=VSS}
N 120 -690 120 -650 {lab=VcrtPP}
N 120 -650 190 -650 {lab=VcrtPP}
N 190 -670 190 -650 {lab=VcrtPP}
N 100 -690 120 -690 {lab=VcrtPP}
N 120 -700 120 -690 {lab=VcrtPP}
N 800 -570 1070 -570 {lab=A[1]}
N 1280 -570 1520 -570 {lab=A[2]}
N 1730 -570 1970 -570 {lab=A[3]}
N 2180 -570 2440 -570 {lab=A[4]}
N 2750 -570 2750 -340 {lab=A[0]}
N 630 -480 630 -400 {lab=RST}
N 1110 -480 1110 -400 {lab=VSS}
N 1560 -480 1560 -400 {lab=RST}
N 2010 -480 2010 -400 {lab=VSS}
N 2480 -480 2480 -400 {lab=RST}
N 2650 -570 2750 -570 {lab=A[0]}
N 530 -340 2750 -340 {lab=A[0]}
C {/foss/designs/chipathon_2025/designs/ihp-sg13g2/integrator_curstav_inv/xschem/integrator_curstav_inv.sym} 550 -410 0 0 {name=x6}
C {lab_wire.sym} 670 -460 2 1 {name=p42 sig_type=std_logic lab=VSS
value=0}
C {/foss/designs/chipathon_2025/designs/ihp-sg13g2/integrator_curstav_inv/xschem/integrator_curstav_inv.sym} 1030 -410 0 0 {name=x7}
C {lab_wire.sym} 1150 -460 2 1 {name=p44 sig_type=std_logic lab=VSS
value=0}
C {/foss/designs/chipathon_2025/designs/ihp-sg13g2/integrator_curstav_inv/xschem/integrator_curstav_inv.sym} 1480 -410 0 0 {name=x8}
C {lab_wire.sym} 1600 -460 2 1 {name=p46 sig_type=std_logic lab=VSS
value=0}
C {/foss/designs/chipathon_2025/designs/ihp-sg13g2/integrator_curstav_inv/xschem/integrator_curstav_inv.sym} 1930 -410 0 0 {name=x9}
C {lab_wire.sym} 2050 -460 2 1 {name=p54 sig_type=std_logic lab=VSS
value=0}
C {/foss/designs/chipathon_2025/designs/ihp-sg13g2/integrator_curstav_inv/xschem/integrator_curstav_inv.sym} 2400 -410 0 0 {name=x10}
C {lab_wire.sym} 2520 -460 2 1 {name=p58 sig_type=std_logic lab=VSS
value=0}
C {lab_wire.sym} 230 -700 2 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 240 -530 2 0 {name=p2 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 190 -460 2 1 {name=p9 sig_type=std_logic lab=VSS
value=0}
C {lab_wire.sym} 190 -770 0 0 {name=p73 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 120 -530 0 0 {name=p74 sig_type=std_logic lab=Vctr}
C {lab_wire.sym} 570 -620 0 0 {name=p51 sig_type=std_logic lab=VcrtPP}
C {lab_wire.sym} 1050 -620 0 0 {name=p52 sig_type=std_logic lab=VcrtPP}
C {lab_wire.sym} 100 -690 0 0 {name=p76 sig_type=std_logic lab=VcrtPP}
C {lab_wire.sym} 1500 -620 0 0 {name=p50 sig_type=std_logic lab=VcrtPP}
C {lab_wire.sym} 1950 -620 0 0 {name=p56 sig_type=std_logic lab=VcrtPP}
C {lab_wire.sym} 2430 -620 0 0 {name=p61 sig_type=std_logic lab=VcrtPP}
C {lab_wire.sym} 570 -520 0 0 {name=p47 sig_type=std_logic lab=Vctr}
C {lab_wire.sym} 1060 -520 0 0 {name=p48 sig_type=std_logic lab=Vctr}
C {lab_wire.sym} 1510 -520 0 0 {name=p49 sig_type=std_logic lab=Vctr}
C {lab_wire.sym} 1950 -520 0 0 {name=p55 sig_type=std_logic lab=Vctr}
C {lab_wire.sym} 2430 -520 0 0 {name=p60 sig_type=std_logic lab=Vctr}
C {lab_wire.sym} 630 -400 0 0 {name=p84 sig_type=std_logic lab=RST}
C {lab_wire.sym} 1560 -400 0 0 {name=p25 sig_type=std_logic lab=RST}
C {lab_wire.sym} 2480 -405 0 0 {name=p79 sig_type=std_logic lab=RST}
C {lab_wire.sym} 670 -670 0 0 {name=p53 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1150 -650 0 0 {name=p57 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1600 -670 0 0 {name=p77 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 2050 -670 0 0 {name=p95 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 2520 -670 0 0 {name=p96 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1110 -400 2 1 {name=p88 sig_type=std_logic lab=VSS
value=0}
C {lab_wire.sym} 2010 -405 2 1 {name=p97 sig_type=std_logic lab=VSS
value=0}
C {sg13g2_pr/sg13_lv_nmos.sym} 170 -530 0 0 {name=M1
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 170 -700 0 0 {name=M3
l=0.13u
w=2u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {iopin.sym} 220 -320 0 1 {name=p10 lab=VDD}
C {iopin.sym} 220 -280 0 1 {name=p18 lab=Vctr}
C {iopin.sym} 220 -300 0 1 {name=p19 lab=VSS}
C {iopin.sym} 220 -260 2 0 {name=p12 lab=RST}
C {iopin.sym} 220 -240 2 0 {name=p11 lab=A[4:0]}
C {lab_wire.sym} 540 -570 0 0 {name=p17 sig_type=std_logic lab=A[0]}
C {lab_wire.sym} 970 -570 0 0 {name=p3 sig_type=std_logic lab=A[1]}
C {lab_wire.sym} 1400 -570 0 0 {name=p4 sig_type=std_logic lab=A[2]}
C {lab_wire.sym} 1870 -570 0 0 {name=p5 sig_type=std_logic lab=A[3]}
C {lab_wire.sym} 2300 -570 0 0 {name=p6 sig_type=std_logic lab=A[4]}
