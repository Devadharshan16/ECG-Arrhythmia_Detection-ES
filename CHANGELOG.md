# Changelog

## 2026-08-30

### Added / Updated
- Completed Step 4: Vitis HLS C-Synthesis and RTL generation for the Tiny ECG 1D-CNN inference core.
- Verified the generated report at `Wearable_ECG_EdgeAI/Cardiac_1D_CNN_HLS/solution1/syn/report/tiny_ecg_inference_csynth.rpt`.
- Confirmed synthesis timing, latency, and resource utilization against the Zynq-7000 target (`xc7z020clg400-1`).
- Recorded the hardware implementation summary in `Wearable_ECG_EdgeAI/HARDWARE_LOG.md`.
- Verified that the RTL files exist under `impl/verilog` and `impl/vhdl`, while `impl/ip` is not yet present and therefore requires `export_design` before Step 5.

### Status
- Step 4: Complete for C-synthesis and RTL generation.
- Step 5 (Vivado block design + bitstream generation): Pending export and packaging of the generated HLS IP.
