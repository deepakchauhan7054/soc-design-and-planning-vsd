# RTL Analysis: Housekeeping SPI

## 1. Interface & Architecture
The `housekeeping_spi` macro interfaces external SPI masters to the Caravel chip infrastructure:

- **SPI Ports**:
  - `SCK`: Serial Clock input.
  - `CSB`: Active-low Chip Select.
  - `SDI`: Serial Data Input.
  - `SDO`: Serial Data Output (tri-state capable via `sdoenb`).
- **Internal Bus Interface**:
  - `oaddr[7:0]`: Output address bus to internal housekeeping registers.
  - `odata[7:0]`: Output write data bus.
  - `idata[7:0]`: Input read data bus from registers.
  - `rdstb` / `wrstb`: Read and write strobes.
- **Pass-Through Logic**:
  - Supports pass-through control paths for user project area and management SoC debugging.

## 2. Timing Considerations
- High sensitivity to setup/hold times between `SCK` and `SDI`.
- Delay matching across the SDO output enable and multiplexing paths.
