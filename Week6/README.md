# Week 6: RTL to GDSII Flow Implementation for housekeeping_spi

This directory documents the complete physical design flow for the **housekeeping_spi** macro using the SkyWater 130nm PDK and the OpenLane/OpenROAD ASIC design flow.

---

## 1. Functional Simulation & Verification

Simulation waveforms verifying the core functionality of the SPI controller logic before physical implementation.

![Simulation Waveforms](screenshots/01_simulation_waveform.png)

---

## 2. Synthesis (Yosys & ABC)

Synthesis of RTL Verilog code into logic gates mapped to the `sky130_fd_sc_hd` standard cell library.

![Synthesis Statistics](screenshots/02_synthesis.png)

---

## 3. Floorplanning

Definition of core and die boundaries, power distribution networks (PDN), and I/O pin placements.

![Floorplan Layout](screenshots/03_floorplan.png)

---

## 4. Standard Cell Placement (Global & Detailed)

Placement of standard logic cells within rows while avoiding overlaps and minimizing half-perimeter wirelength (HPWL).

![Placement Layout](screenshots/04_placement.png)

---

## 5. Clock Tree Synthesis (CTS - TritonCTS)

Clock tree insertion to minimize clock skew and balance latency across sequential elements.

![Clock Tree Synthesis](screenshots/05_cts.png)

---

## 6. Routing (Global & Detailed - FastRoute & TritonRoute)

Interconnect routing using metal layers from Metal 1 to Metal 5 with zero DRC and LVS violations.

![Routing](screenshots/06_routing.png)

---

## 7. Final Chip Layout & GDSII Signoff

The final streamed-out GDSII macro layout viewed in KLayout / Magic.

![Final GDS Chip Layout](screenshots/07_final_gds_chip_layout.png)

### Signoff Deliverables Verification
![GDS Generation Summary](screenshots/08_gds_file_terminal.png)

---

## 8. Summary of Flow Metrics

Consolidated physical design and timing closure metrics:

![Design Metrics Summary](screenshots/09_metric_values.png)

| Key Metric | Value | Description |
|---|---|---|
| **Synthesized Cell Count** | 278 | Standard logic cells after ABC mapping |
| **Total Physical Cells** | 989 | Includes Decap (374), Welltap (99), Fill (168) |
| **Target Floorplan Core Utilization** | 40% | Configured utilization target (`FP_CORE_UTIL`) |
| **OpenDP Utilization** | 42.7% | Placed standard cell core utilization |
| **Core Area** | 7175.63 µm² | Active cell placement boundary |
| **Die Area** | 0.0103 mm² | Total die bounding box area |
