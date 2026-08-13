# PHASE 4 — Run the RTL-to-GDS Flow

## 4.1 Objective

* Run the complete RTL-to-GDS physical design flow for the `user_project_wrapper` design.
* Perform synthesis, floorplanning, placement, Clock Tree Synthesis (CTS), routing, and fill insertion.
* Generate the final design database, netlist, GDSII, and timing reports.
* Verify the completion of each stage using logs, reports, and screenshots.

## 4.2 RTL-to-GDS Flow Stages

The overall implementation flow is:
| Stage            | Description                             | Status    |
| ---------------- | --------------------------------------- | --------- |
| Synthesis        | RTL converted to gate-level netlist     | Completed |
| Floorplanning    | Core and die area generated             | Completed |
| Placement        | Standard cells placed                   | Completed |
| CTS              | Clock tree generated                    | Completed |
| Routing          | Global and detailed routing completed   | Completed |
| Fill Insertion   | Metal fill inserted                     | Completed |
| Final Database   | Final physical database generated       | Completed |
| GDSII Generation | Final GDSII generated                   | Completed |
| Timing Analysis  | Setup and hold timing reports generated | Completed |


## 4.3 Synthesis

* The RTL files were processed by the synthesis tool.
* The top-level module `user_project_wrapper` was synthesized.
* RTL dependencies were resolved during synthesis.
* A synthesized gate-level netlist was generated.
* The synthesis reports were checked for errors and warnings.

### Evidence
<img width="1200" height="95" alt="Screenshot from 2026-08-13 13-55-13" src="https://github.com/user-attachments/assets/d776a134-9326-48a2-bf9e-f92cd83cf473" />
**Figure 1: Successful synthesis of the `user_project_wrapper` design.**

## 4.4 Floorplanning

* The synthesized design was passed to the floorplanning stage.
* The design core area and die area were generated.
* Power distribution planning and initial physical constraints were applied.
* The floorplan database was generated successfully.

### Evidence
<img width="1200" height="230" alt="Screenshot from 2026-08-13 13-55-31" src="https://github.com/user-attachments/assets/f15947bd-f13c-4041-82b1-e1b504c1814d" />

**Figure 2: Floorplanning completed for the `user_project_wrapper` design.**

## 4.5 Placement

* Standard cells were placed within the defined core area.
* Placement optimization was performed to improve timing and congestion.
* The placed design database was generated.

### Evidence
<img width="1266" height="275" alt="Screenshot from 2026-08-13 14-49-59" src="https://github.com/user-attachments/assets/6f884278-723a-45d6-a8f0-74908e326190" />

**Figure 3: Placement stage completed successfully.**

## 4.6 Clock Tree Synthesis

* Clock Tree Synthesis (CTS) was performed after placement.
* Clock buffers and other required clock tree components were inserted.
* The clock signal was distributed to sequential elements.
* Post-CTS timing analysis was performed.

### Evidence
<img width="1251" height="97" alt="Screenshot from 2026-08-13 14-50-31" src="https://github.com/user-attachments/assets/69f49b37-a291-4ae7-9212-f8f2e6bb1abb" />


**Figure 4: Clock Tree Synthesis completed for the design.**

## 4.7 Routing

* Global routing was performed to create routing paths.
* Detailed routing connected the design nets using the available routing layers.
* Routing checks were performed after completion.
* The routed design database was generated.

### Evidence
<img width="1280" height="530" alt="Screenshot from 2026-08-13 14-51-07" src="https://github.com/user-attachments/assets/2e1a79ac-0e1c-496d-9f2a-4e04d205a24c" />


**Figure 5: Routing completed for the `user_project_wrapper` design.**

## 4.8 Fill Insertion

* Metal fill was inserted into the design after routing.
* The fill process helps satisfy manufacturing density requirements.
* The final filled physical design database was generated.

### Evidence

<img width="1219" height="333" alt="Screenshot from 2026-08-13 15-24-00" src="https://github.com/user-attachments/assets/eed1cb7f-8e59-4efd-8023-67562d972a6a" />

**Figure 6: Fill insertion completed successfully.**

## 4.9 Final GDSII Generation

* The final physical design was converted into GDSII format.
* The generated GDSII represents the final chip layout.
* The GDSII file was generated after completing the physical implementation flow.

### Evidence
<img width="1240" height="138" alt="Screenshot from 2026-08-13 14-51-30" src="https://github.com/user-attachments/assets/8058c6ee-51e1-40f2-bcf5-f23d505da1ce" />

**Figure 8: Final GDSII generated for the `user_project_wrapper` design.**

## 4.10 Timing Analysis

Timing analysis was performed to evaluate the design against the applied clock constraint.

The timing reports include:

* Setup timing analysis
* Hold timing analysis
* Worst Negative Slack (WNS)
* Total Negative Slack (TNS)

The final timing results were collected from the generated timing reports.

### Evidence
<img width="1215" height="681" alt="Screenshot from 2026-08-13 15-26-05" src="https://github.com/user-attachments/assets/95ad301d-d63f-4bf5-88c3-e56ed4d1073a" />

**Figure 9: Final timing analysis report.**

## 4.11 Conclusion

* The `user_project_wrapper` design was processed through the RTL-to-GDS implementation flow.
* The implementation included synthesis, floorplanning, placement, CTS, routing, and fill insertion.
* The final physical design database and GDSII were generated.
* Timing reports were collected for timing verification.
* The generated outputs will be used in the next phase for gate-level verification preparation.
  
<img width="1280" height="800" alt="Screenshot from 2026-08-13 14-55-18" src="https://github.com/user-attachments/assets/bf777bb6-f61d-4cff-8ecf-401dac3a079d" />

