# Week–4: RTL-to-GDS Implementation of User Project Wrapper

---

## Phase 1 — Top-Level Wrapper & Hierarchy Analysis

### 1. Design Overview
The top-level module `__user_project_wrapper.v` connects custom user blocks to the Caravel harness via Wishbone interconnects, logic analyzer probes, and GPIO pads.

### 2. Module Hierarchy & Dependency Tree
```text
__user_project_wrapper (Top Module)
├── user_project_la_example (instantiated as: la_testing)
├── user_project_gpio_example (instantiated as: gpio_testing)
└── debug_regs (instantiated as: debug)
```

<img width="1273" height="255" alt="image" src="https://github.com/user-attachments/assets/1c986f14-3666-4d01-98f4-1fbc1fcb50e6" />

### 3. List of all files used in design.

| No. | File | Module | Role | Status |
|---|---|---|---|---|
| 1 | `__user_project_wrapper.v` | `user_project_wrapper` | Top-level wrapper | **Required** |
| 2 | `debug_regs.v` | `debug_regs` | Debug register block | **Required** |
| 3 | `defines.v` | Preprocessor definitions | Defines `MPRJ_IO_PADS` and other global parameters | **Required for compilation** |
| 4 | `__user_project_la_example.v` | `user_project_la_example` | Logic-analyzer test module | **Conditional: `LA_TESTING`** |
| 5 | `__user_project_gpio_example.v` | `user_project_gpio_example` | GPIO test module | **Conditional: `GPIO_TESTING`** |



