clc; 
clear; 
close all;

% Provided Signal as the Normal ECG Template (PQRST waveform) 

Signal = [0,0,0,0.5,0.7,0.8,0.7,0.5,0,0,-1,-1.5,1,2,4,6,4,2,1,-1,-2,-4,0,0,0,0,0.2,0.4,0.8,0,0,0,0,0,0,0,0.5,0.7,0.8,0.7,0.5,0,0,-1,-1.5,1,2,4,6,4,2,1,-1,-2,-4,0,0,0,0,0.2,0.4,0.8,0,0,0,0,0,0,0,0.5,0.7,0.8,0.7,0.5,0,0,-1,-1.5,1,2,4,6,4,2,1,-1,-2,-4,0,0,0,0,0.2,0.4,0.8,0,0,0,0,0,0,0,0.5,0.7,0.8,0.7,0.5,0,0,-1,-1.5,1,2,4,6,4,2,1,-1,-2,-4,0,0,0,0,0.2,0.4,0.8,0,0,0,0,0,0,0,0.5,0.7,0.8,0.7,0.5,0,0,-1,-1.5,1,2,4,6,4,2,1,-1,-2,-4,0,0,0,0,0.2,0.4,0.8,0,0,0,0,0,0,0,0.5,0.7,0.8,0.7,0.5,0,0,-1,-1.5,1,2,4,6,4,2,1,-1,-2,-4,0,0,0,0,0.2,0.4,0.8,0,0,0,0,0,0,0,0.5,0.7,0.8,0.7,0.5,0,0,-1,-1.5,1,2,4,6,4,2,1,-1,-2,-4,0,0,0,0,0.2,0.4,0.8,0,0,0,0,0,0,0,0.5,0.7,0.8,0.7,0.5,0,0,-1,-1.5,1,2,4,6,4,2,1,-1,-2,-4,0,0,0,0,0.2,0.4,0.8,0,0,0,0,0,0,0,0.5,0.7,0.8,0.7,0.5,0,0,-1,-1.5,1,2,4,6,4,2,1,-1,-2,-4,0,0,0,0,0.2,0.4,0.8,0,0,0,0,0,0,0,0.5,0.7,0.8,0.7,0.5,0,0,-1,-1.5,1,2,4,6,4,2,1,-1,-2,-4,0,0,0,0,0.2,0.4,0.8,0,0,0,0,0,0,0,0.5,0.7,0.8,0.7,0.5,0,0,-1,-1.5,1,2,4,6,4,2,1,-1,-2,-4,0,0,0,0,0.2,0.4,0.8,0,0,0,0,0,0,0,0.5,0.7,0.8,0.7,0.5,0,0,-1,-1.5,1,2,4,6,4,2,1,-1,-2,-4,0,0,0,0,0.2,0.4,0.8,0,0,0,0];




% Normalize Signal to have consistent amplitude 
Signal = Signal / max(abs(Signal));

% Time vector for simulation (ensure it matches length of Signal) 
fs = 500; % Sampling frequency (500 Hz)
t = linspace(0, length(Signal) / fs, length(Signal)); % Time for the signal
 
% Generate arrhythmic signal by adding noise and distortion rng(1); % For reproducibility
arrhythmic_signal = Signal + 0.3 * randn(size(Signal));


% Add an abnormal peak to simulate arrhythmia within valid bounds 
arrhythmic_signal(50:80) = arrhythmic_signal(50:80) + 1; % Simulated abnormal peak

% Convert Normal ECG to Simulink-compatible structure 
simSignal.time = t'; % Transpose time vector 
simSignal.signals.values = Signal'; % Transpose data vector 
simSignal.signals.dimensions = 1; % Single dimension

% Convert Arrhythmic ECG to Simulink-compatible structure 
simArrhythmicSignal.time = t'; 
simArrhythmicSignal.signals.values = arrhythmic_signal'; 
simArrhythmicSignal.signals.dimensions = 1;
