
# CACE Summary for LIF_neuron

**netlist source**: schematic

|      Parameter       |         Tool         |     Result      | Min Limit  |  Min Value   | Typ Target |  Typ Value   | Max Limit  |  Max Value   |  Status  |
| :------------------- | :------------------- | :-------------- | ---------: | -----------: | ---------: | -----------: | ---------: | -----------: | :------: |
| Fspk(PVT)            | ngspice              | Fspk                 |             any | 389.218 MHz |          any | 534.370 MHz |          any | 802.647 MHz |   Pass ✅    |
| Iavg(PVT)            | ngspice              | Iavg                 |             any |   0.902 mA |          any |   1.510 mA |          any |   2.559 mA |   Pass ✅    |
| Pavg(PVT)            | ngspice              | Pavg                 |             any |   0.974 mW |          any |   1.817 mW |          any |   3.378 mW |   Pass ✅    |
| Espk(PVT)            | ngspice              | Espk                 |             any |   2.248 pJ |          any |   3.232 pJ |          any |   5.466 pJ |   Pass ✅    |
| Fspk(MC)             | ngspice              | Fspk                 |             any | 575.956 MHz |          any | 585.159 MHz |          any | 601.967 MHz |   Pass ✅    |
| Iavg(MC)             | ngspice              | Iavg                 |             any |   1.493 mA |          any |   1.642 mA |          any |   1.729 mA |   Pass ✅    |
| Pavg(MC)             | ngspice              | Pavg                 |             any |   1.791 mW |          any |   1.971 mW |          any |   2.075 mW |   Pass ✅    |
| Espk(MC)             | ngspice              | Espk                 |             any |   3.100 pJ |          any |   3.352 pJ |          any |   3.493 pJ |   Pass ✅    |
| Area                 | magic_area           | area                 |               ​ |          ​ |            ​ |          ​ |          any |          ​ |   Skip 🟧    |
| Width                | magic_area           | width                |               ​ |          ​ |            ​ |          ​ |          any |          ​ |   Skip 🟧    |
| Height               | magic_area           | height               |               ​ |          ​ |            ​ |          ​ |          any |          ​ |   Skip 🟧    |
| Magic DRC            | magic_drc            | drc_errors           |               ​ |          ​ |            ​ |          ​ |            0 |          ​ |   Skip 🟧    |
| KLayout DRC full     | klayout_drc          | drc_errors           |               ​ |          ​ |            ​ |          ​ |            0 |          ​ |   Skip 🟧    |


## Plots

## Fout_mc

![Fout_mc](./LIF_neuron/schematic/Fout_mc.png)
