# Final Project: Frequency Analysis System
- Given discrete time domain signal for a period of time
- Please find the main frequency band
- main frequency band : the frequency whose sum of square of the real part data and imaginary part. Data is maximum.

### 3 steps
1. Use low-pass filter to filter noise which frequency higher than cut-off frequency
2. Use FFT to transform signal from time domain into frequency domain
3. Analysis all frequencies and find the main frequency band

### System structure : 4 components
- FIR Filter (Finite Impulse Response Filter)
  - Filter out the high frequency noise
- S2P (Serial to Parallel)
  - Transfer the serial outputs which output from FIR Filter to FFT in parallel
- FFT (Fast Fourier Transform)
  - Time domain -> Frequency domain
- Analysis
  - Find the main frequency band
 
![image](https://github.com/boboloiono/Logic-System-Lab/assets/62455939/53876fb8-837c-40df-927f-0331ec2fa1c8)

**Detail Statement** is in the file of **Final_Project/Final_Project_statement**
