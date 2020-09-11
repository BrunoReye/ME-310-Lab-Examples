% Lab 2 Notes
clear all; close all;

yzero=0; % this is our given intial given value y(0) = 0
ypzero=1; %derivative of sin(x)=cos(x), at t=0 cos(t)=1

divs=10;% Number of steps that the time vector will have
tvec=linspace(0,2*pi,divs); % Time vector

h=2*pi/divs; % Step size

ysolve(1)=yzero; % Intial given condition and the first value of our numerical approximation
ysolve(2)=ysolve(1) +h*ypzero; % The next step in our numerical approximation by using eq.4 of the assignment

% This for loop constructs our numerical approximation
for rr=2:length(tvec)-1;
    ysolve(1+rr)=ysolve(rr)+ h*(cos(tvec(rr)));
end

% This plots our numerical approximation and also the analytical solution
figure(1); hold on;
plot(tvec,ysolve,'b');
plot(linspace(0,2*pi,1000),sin(linspace(0,2*pi,1000)),'g')
xlabel('Time'); ylabel('y(t)'); legend('Numerical','Analytical')
annotation('textbox', [0.2,0.2,0.1,0.1],...
    'String', ['h=',num2str(h)]);