clc;
clear all; 
close all;
b_over_m=1; % N*m/(s*kg)
k_over_m=10; %N/(m kg)
C=5;
tspan=[0 10];
ICs=[0 0];


[t,y] = ode45(@(t,yvec) springmass(t,yvec,b_over_m,k_over_m,C),tspan,ICs);

figure(1);
plot(t,y(:,1),'b')
xlabel('Time [s]'); ylabel('Displacement [m]');

figure(2);
plot(t,y(:,2),'g');
xlabel('Time');
ylabel('Velocity [m/s]');