clear;
clc;

%define the echo time and echo amplitude 
alpha = 0.5;
N = 1000;

a = [1 zeros(1, N-1) alpha];
b = 1;

n = 0:1000;
unit_impluse = [1 zeros(1,N)];

% Apply the filter to the unit impulse signal to get the impulse response of the system
he = filter(a,b,unit_impluse);

% Plot the impulse response of the echo syste
plot(n,he,'r');
title('impulse response of the echo system');
xlabel('n');
ylabel('he[n]');
axis([-10 1100 -0.5 1.5]);
