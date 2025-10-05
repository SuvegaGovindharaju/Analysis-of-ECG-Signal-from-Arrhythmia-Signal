# Analysis-of-ECG-Signal-from-Arrhythmia-Signal

## 📘 Overview
-This project focuses on the **analysis and correction of ECG signals from arrhythmic patients** using **MATLAB Simulink**.  
- It processes ECG signals to detect abnormalities, applies control and modulation techniques, and converts irregular ECG waveforms into normal patterns.  
- By utilizing **PID controllers**, **transfer functions**, **saturation blocks**, and **PWM (Pulse Width Modulation)**, the system demonstrates how computational modeling can be applied for **signal correction, stability, and arrhythmia management**.

---

## 🎯 Objective
- To analyze ECG signals and identify arrhythmia patterns.  
- To correct abnormal ECG waveforms using **control system principles**.  
- To develop a **Simulink-based simulation model** that generates a normalized ECG output resembling a healthy heart rhythm.  
- To demonstrate how **MATLAB Simulink** can enhance **signal accuracy** and **clinical reliability** in biomedical engineering.

---

## 💻 Software Used
- **MATLAB Simulink** – for modeling, simulation, and signal correction.  
- **MATLAB Script** – to generate normal and arrhythmic ECG signals.  
- **Simulink Blocks Used:**  
  - PID Controller  
  - Transfer Function  
  - Saturation Block  
  - Pulse Width Modulation (PWM) Block  
  - Sum Block  
  - Scopes (for signal visualization)  

---

## ⚙️ Working Principle
1. **Input Signal Generation** – Two ECG signals are created:  
   - A *normal ECG* representing a healthy cardiac rhythm.  
   - An *abnormal ECG* with added noise and irregularities simulating arrhythmia.  

2. **Signal Comparison (Sum Block)** – The difference between normal and abnormal ECGs is calculated to identify deviations or error signals.  

3. **PID Controller** – Adjusts the waveform dynamically to minimize the error, aligning the arrhythmic signal with the healthy reference.  

4. **Transfer Function** – Filters and refines the corrected ECG waveform for smoother output.  

5. **Saturation Block** – Limits the amplitude of corrections to maintain physiological signal stability.  

6. **PWM Block** – Converts the stabilized ECG signal into pulse-width modulated output suitable for applications like pacemaker control.  

7. **Output Visualization** – Displays both the corrected ECG and PWM outputs on scopes for real-time analysis.  
