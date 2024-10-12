DESIGN AND SIMULATION OF DATA FLOW AND ARITHMETIC CONTROL UNIT USING FINITE STATE MACHINE

Project Overview
This project implements a Dataflow-style Arithmetic Logic Unit (ALU) controlled by a Finite State Machine (FSM) using VHDL. The ALU performs arithmetic and logical operations, while the FSM manages control signals based on inputs such as clock, reset, and operation select signals. The design integrates D Flip-Flops (DFF), multiplexers, half-adders, and other logic gates to demonstrate the working of an ALU in a digital system.

Block Diagram
The design is modeled and simulated in Quartus Prime. The system contains the following key components:
- **D Flip-Flops (DFF):** Used for storing state information.
- **Multiplexer (MUX):** A 2-to-1 multiplexer is used for selecting between inputs.
- **Finite State Machine (FSM):** Manages control signals based on clock and reset.
- **Half Adders:** Used to perform binary addition.
- **ALU (Arithmetic Logic Unit):** Performs operations like addition, subtraction, and bitwise logical operations.
- **Logic Gates:** Various logic gates are used to implement control logic.

 Components
1. **D Flip-Flops:** Used to store bits of data and manage state.
2. **2-to-1 Multiplexer (MUX):** Selects between two 8-bit data inputs.
3. **Finite State Machine (FSM):** A 4-state FSM controls the operational flow.
4. **Half Adders:** Performs simple binary additions with carry.
5. **ALU:** Executes arithmetic operations like addition, subtraction, and logical operations.

 Features
- 8-bit data processing.
- Clock-driven finite state machine for control.
- Multiplexer-based input selection.
- Data storage with D Flip-Flops.

 Files
- alu_dataflow.bdf`: Block diagram of the ALU.
- 21MUX_GATES.bdf`: Block diagram of the 2-to-1 multiplexer.
- Other project files include the source VHDL code and test benches.

 How to Use
1. Open the project in **Quartus Prime Lite Edition**.
2. Load the block diagram files and ensure all connections are correct.
3. Run simulation to observe the ALU and FSM operation.
4. Modify the testbench to simulate different inputs.

 Requirements
- **Quartus Prime Lite Edition**
- **ModelSim** (optional for detailed simulations)

Preview![portfolio-1](https://github.com/user-attachments/assets/5588914e-b59a-4e74-b1dd-511cfae8ccfd)


