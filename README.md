# High-Pass RC Filter Project

## Overview
This MATLAB project implements a high-pass RC filter simulation, demonstrating the behavior of signals through a high-pass filter, allowing high-frequency signals to pass from source to load while blocking low-frequency signals. It includes user interaction for dynamic parameter adjustment and visualization of input and output signals and their respective frequency and phase response graphs.

## Project Structure
The project consists of several MATLAB files that together simulate and visualize the high-pass RC filter:

- `fts_start.m`: Initializes the project with default signal and filter parameters and starts the simulation.
- `fts.m`: Creates the user interface, handles user input, and displays the results, including signal graphs and filter response.
- `grafic.m`: Manages the plotting of the frequency and phase response of the filter.
- `fvm4.PNG`: Circuit diagram image displayed in the user interface.

## Getting Started
### Prerequisites
Ensure you have MATLAB installed on your system with support for GUI elements. This project was developed using MATLAB R2022a.

### Running the Simulation
1. Clone the repository or download the source files into your MATLAB working directory.
2. Open MATLAB and navigate to the directory containing the project files.
3. Run the `fts_start.m` script:
   This will initialize the simulation with default parameters and open the graphical user interface.

### User Interface
- **Adjust Parameters**: Input fields allow the user to change the amplitude, frequency, resistance, and capacitance of the filter.
- **Reset Button**: Resets all parameters to their default values and re-runs the simulation.
- **Close Button**: Closes the application window.
- **Output Graphs**: Displays the input and output signal waveforms, as well as the gain and phase response of the filter.

## Results
<br>
![image](https://github.com/user-attachments/assets/66008b75-755a-4e16-8930-d77b8f8aee6a)<br>
<br>

## Conclusion
The High-Pass RC Filter project demonstrates the utility of MATLAB for simulating and visualizing electronic filters. It offers educational insights into the frequency response of high-pass filters and their practical applications.
