# Block Selection: Housekeeping SPI

## 1. Selected Block
- **Macro Name**: `housekeeping_spi`
- **Domain**: System-on-Chip (SoC) Housekeeping & Control
- **SoC Integration**: Caravel SoC Harness (SkyWater 130nm)

## 2. Reason for Selection
- **Critical Functionality**: The SPI acts as the primary external bridge into the Caravel SoC, handling core register configurations, system clock adjustments, and pass-through modes to the user area.
- **Moderate Complexity**: Compact logic footprint with critical multi-clock interfaces, making it ideal for complete end-to-end physical design, clock-tree balancing, and post-layout timing closure.
- **Signoff Rigor**: Demonstrates zero DRC/LVS violations and meets all setup/hold timing requirements across voltage/temperature corners.
