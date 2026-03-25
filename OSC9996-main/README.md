# Spiking neuron using a time domain ring oscillator integrator // UNIC-CASS 2025

## About this project

Recently, the leaky integrate and fire (LIF) neuron model has become one of the most common models for implementing spiking neural networks (SNNs) in silicon. However, one of the main difficulties is finding a topology that is easily scalable on a large scale [1]. Many of them end up requiring opamps, and therefore high supply voltages and good gain, which also makes their design difficult for advanced CMOS nodes [2]. To this end, this project will implement a ring oscillator-based integrator, a mostly digital implementation that achieves this by converting phase to voltage at the output of a pair of voltage-controlled oscillators (VCOs). This will be demonstrated by designing a basic neuron block taken from [1], which, to the project authors' knowledge, has not yet been reported in the literature as having been manufactured in silicon [2].

### Pin list

| Pin Name | Type    | Direction     | Description            |
|----------|--------|--------------|------------------------|
| VDD      | Power  | Bidirectional | Positive power supply  |
| VSS      | Power  | Bidirectional | Negative power supply  |
| Vx       | Analog | Input         | Input voltage          |
| Vref     | Analog | Input         | Reference voltage      | 
| RST      | Digital| Input         | Reset signal           |
| COMP     | Analog| Output        | Output comparison      |
| SPIKE    | Analog| Output        | Output spike           |

## Team Members:

- Jorge Angarita (M)
- Juan Luengas (B)
- Nicolás Velasco (B)
- Michel Salazar (B)
- Carlos Álvarez (B)

**Academic Experience:**
- (M): MSc in EE Student at UIS
- (B): BSc in EE Student at UIS

## Expected outcome:

The goal is to implement the three core building blocks of the LIF neuron as shown in the figure below: the integrator, the threshold circuit, and the spike generator. By wiring these up with one external resistor, the neuron’s behavior can be observed when input voltage pulses are applied. The design also includes a controlled reset through the Vrst pin. Depending on pin availability, extra outputs will be added to monitor the Vmem integrator output and the phases of the two ring oscillators.

![Expected outcome](../doc/Media_Readme/RO_Neuron_Functional.png)

This project seeks to show that this topology can serve as a basic building block for a spiking neural network. Multiple neurons can be interconnected on the same chip to form a small network, as demonstrated in [1]. By adding more input resistors in parallel, an N-input neuron can be created, where the synaptic weight is determined by the resistor ratio. Two neuron types are expected: one with internal resistors and another connected directly to the pads. The first type will test the feasibility of integration into an SNN accelerator, while the second will allow manual control of synaptic weights through the external resistor.

## References

[1] S. Sanjeet, S. Das, S. -H. W. Chiang, M. Fujita and B. D. Sahoo, ""Systematic Design of Ring VCO-Based SNN - Translating Training Parameters to Circuits -,"" 2024 IEEE 67th International Midwest Symposium on Circuits and Systems (MWSCAS), Springfield, MA, USA, 2024, pp. 1212-1216, doi: 10.1109/MWSCAS60917.2024.10658910.

[2] T. Barton et al., ""A Subthreshold Time-Domain Analog Spiking Neuron With PLL-Based Leak Circuit and Capacitive DAC Synapse,"" in IEEE Solid-State Circuits Letters, vol. 7, pp. 143-146, 2024, doi: 10.1109/LSSC.2024.3384762
