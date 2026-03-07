# integrator

- Description: Digital edge detector for a spiking analog neuron
- PDK: ihp-sg13g2

## Authorship

- Designer: Jorge Angarita .. juan pablo luengas
- Company: OnChip UIS
- Created: Dic 15, 2025
- License: Apache 2.0
- Last modified: None

## Pins

- VDD
  + Description: Analog power supply
  + Type: power
  + Direction: inout
  + Vmin: 1.08
  + Vmax: 1.32
- VSS
  + Description: Analog ground
  + Type: ground
  + Direction: inout
- VCTR
  + Description: Digital Input
  + Type: signal
  + Direction: inout
- RST
  + Description: Reset input pulse signal
  + Type: signal
  + Direction: inout
- VREF
  + Description: Analog reference voltage output
  + Type: signal
  + Direction: inout
- OUT
  + Description: Output
  + Type: signal
  + Direction: out

## Default Conditions

- VDD
  + Description: Analog power supply voltage
  + Display: VDD
  + Unit: V
  + Typical: 1.2
- corner_mos
  + Description: Process corner (MOSFET)
  + Display: Corner-MOS
  + Typical: mos_tt
- corner_res
  + Description: Process corner (Resistance)
  + Display: Corner-RES
  + Typical: res_typ_stat
- temperature
  + Description: Ambient temperature
  + Display: Temp
  + Unit: °C
  + Typical: 27

## Symbol

![Symbol of integrator](integrator_symbol.svg)

## Schematic

![Schematic of integrator](integrator_schematic.svg)

## Layout

![Layout of integrator with white background](integrator_w.png)
![Layout of integrator with black background](integrator_b.png)
