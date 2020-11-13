%% Manual way to create a bode plot
clc, clear all, close all

b = 10; % N*s/m
m = 1; %kg
omega = logspace(-3,4,1000); % frequency vector (the x-axis)
MAG = 20*log10((abs((1/m)./(i*omega + b/m)))); % Magnitude of TF in [dB]
PHASE = angle((1/m)./(i*omega + b/m)); % Phase of TF in rad

figure(1)
semilogx(omega,MAG); % log log plot of magnitude
xlabel('Frequency [rad/s]');
ylabel('Magnitude [dB]');

figure(2)
semilogx(omega, PHASE*180/pi);
xlabel('Frequency [rad/s]');
ylabel('Phase [deg]');

%% Alternate way
clc, clear all, close all

b = 10; % N*s/m
m = 1; %kg
H = tf([1/m],[1 (b/m)])
bode(H)

%% Magnitude Check
w = 1 % rad/s


