**NAME** : SATHISH SARAVANAMUTHU

**COMPANY** : CODTECH IT SOLUTIONS

**ID** : CT08DS2462

**DOMAIN** : VLSI

**DURATION** : JUNE TO JULY 2024

**MENTOR** : NEELA SANTHOSH KUMAR

### Project Overview

#### SPI (SERIAL PERIPHERAL INTERFACE) CONTROLLER DESIGN
This project demonstrates the simulation of an SPI (Serial Peripheral Interface) controller module using Verilog HDL and ModelSim. The SPI controller module is designed to facilitate communication between a master device and multiple slave devices using a serial communication protocol.

#### Features

- **SPI Controller Module (`spi_controller.v`)**:
  - Implements SPI master functionality.
  - Controls serial clock (`SCLK`), master output (`MOSI`), and master input (`MISO`) signals.
  - Manages slave select (`SS`) signals for device selection.

- **Testbench (`spi_tb.v`)**:
  - Verifies the functionality of `spi_controller.v`.
  - Provides stimulus to simulate various SPI transactions.
  - Monitors and checks the correctness of data transmission and reception.

#### Simulation Environment

- **ModelSim**:
  - Used for compiling and simulating Verilog HDL designs.
  - Provides waveform visualization to debug and analyze signal behavior.

#### Project Structure

```
├── README.md               # Project overview and instructions
├── spi_controller.v        # Verilog module for SPI controller
├── spi_tb.v                # Verilog testbench for SPI controller simulation
└── simulation_results      # Folder containing simulation waveform screenshots
    └── waveform.png        # Example waveform screenshot
```

#### Getting Started

To simulate the SPI controller module:

1. **Clone Repository**:
   ```bash
   git clone https://github.com/yourusername/spi-controller.git
   cd spi-controller
   ```

2. **Open in ModelSim**:
   - Add `spi_controller.v` and `spi_tb.v` to your ModelSim project.
   - Compile the design and run behavioral simulation.

3. **View Waveforms**:
   - Open the waveform viewer in ModelSim to analyze `clk`, `reset`, `data_in`, `start`, `data_out`, `sclk`, `mosi`, `miso`, `ss`, etc.

### OUTPUT 
![image](https://github.com/user-attachments/assets/80b176b1-ac9e-49d5-8abd-f81e693b2c53)



#### Contributing

Contributions are welcome! Please fork the repository and create a pull request with any improvements, bug fixes, or additional features.





