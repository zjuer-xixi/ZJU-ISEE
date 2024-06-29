clear;
clc;
% Define the sampling interval
delta = 0.05;
t = -1:delta:4;

% Define the unit step function u(t) where it's 0 for t < 0 and 1 for t >= 0
u = [zeros(1,length(-1:delta:-delta)),ones(1,length(0:delta:4))];

% Define the response function s(t) and h(t) using the given equation
s = (1/3-1/3*exp(-3*t)).*u;
h = exp(-3*t).*u;

% Plotting
subplot(2,1,1)
plot(t,s)
title('unit step response s(t)')
xlabel('t')

subplot(2,1,2)
plot(t,h)
title('unit impulse response h(t)')
xlabel('t')