# LIF_Neuron

- Description: Spiking neuron with a time domain integrator and a ring amplifier comparator
- PDK: ihp-sg13g2

## Authorship

- Designer: Jorge Angarita
- Company: OnChip UIS
- Created: ..
- License: Apache 2.0
- Last modified: None

## Pins

- vdd
  + Description: Analog power supply
  + Type: power
  + Direction: inout
  + Vmin: 1.08
  + Vmax: 1.32
- vss
  + Description: Analog ground
  + Type: ground
  + Direction: inout
- RST
  + Description: Reset neuron signal
  + Type: signal
  + Direction: inout
- Vx
  + Description: Feedback voltage for the low pass filter
  + Type: signal
  + Direction: inout
- Vref
  + Description: Reference voltage
  + Type: signal
  + Direction: inout
- MEM
  + Description: Membrane voltage
  + Type: signal
  + Direction: out
- SPIKE
  + Description: Output spike voltage
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

![Symbol of LIF_Neuron](LIF_Neuron_symbol.svg)

## Schematic

![Schematic of LIF_Neuron](LIF_Neuron_schematic.svg)

## Layout

![Layout of LIF_Neuron with white background](LIF_Neuron_w.png)
![Layout of LIF_Neuron with black background](LIF_Neuron_b.png)
