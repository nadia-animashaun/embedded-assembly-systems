# FPGA Digital Logic & Control Systems (VHDL)

This directory contains FPGA-based digital system implementations developed using VHDL and Intel Quartus Prime. The designs emphasize combinational logic, sequential control architectures, finite state machines (FSMs), input signal conditioning, and simulation-driven verification.

The work demonstrates practical hardware design principles including logic abstraction, modular hierarchy, timing-aware design, and hardware reliability considerations.

## Platform Context

Designs were implemented targeting FPGA-based systems within an Intel Quartus Prime environment. Modules were developed for soft-core processor and peripheral-integrated architectures, incorporating schematic-based system integration (BDF), symbol-based hierarchy (BSF), and waveform simulation (VWF).

## Implemented Components

- Seven-segment display decoder (combinational logic)
- Traffic light controller (finite state machine)
- Input signal debouncer (signal conditioning / glitch filtering)
- Hierarchical hardware integration (Block Diagram Files)
- Waveform-based functional verification

## Design Focus Areas

- Combinational logic modeling
- Sequential logic & FSM design
- Hardware modularization & reuse
- Input signal integrity & stability
- Timing & functional verification

## Directory Structure

src/  
Core VHDL logic implementations

hardware/  
System-level schematic integration and symbol definitions

verification/  
Waveform simulation artifacts for functional validation

project/  
Quartus project configuration and hardware assignments
