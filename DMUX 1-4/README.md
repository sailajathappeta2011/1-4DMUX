# 1:4 Demultiplexer using Verilog

## 📌 Description

A **1:4 Demultiplexer (DEMUX)** is a combinational digital circuit that takes one input and routes it to one of four outputs based on two select lines.

## 🔹 Inputs and Outputs

* Input: `din`
* Select lines: `s0`, `s1`
* Outputs: `y0`, `y1`, `y2`, `y3`

## 🔹 Truth Table

| s1 | s0 | din | y0 | y1 | y2 | y3 |
| -- | -- | --- | -- | -- | -- | -- |
| 0  | 0  | 1   | 1  | 0  | 0  | 0  |
| 0  | 1  | 1   | 0  | 1  | 0  | 0  |
| 1  | 0  | 1   | 0  | 0  | 1  | 0  |
| 1  | 1  | 1   | 0  | 0  | 0  | 1  |

## 🔹 Working

The select lines determine which output receives the input signal.

* `s1s0 = 00` → `y0 = din`
* `s1s0 = 01` → `y1 = din`
* `s1s0 = 10` → `y2 = din`
* `s1s0 = 11` → `y3 = din`

All other outputs remain `0`.

## 🔹 Files

* `demux1to4.v` – Verilog design code
* `demux1to4_tb.v` – Testbench
* `simulation/waveform.png` – Simulation waveform

## 🔹 Tools Used

* Verilog HDL
* Icarus Verilog / ModelSim / Vivado
* GTKWave

## 🔹 Result

The 1:4 Demultiplexer was successfully designed and verified using Verilog HDL through simulation.

