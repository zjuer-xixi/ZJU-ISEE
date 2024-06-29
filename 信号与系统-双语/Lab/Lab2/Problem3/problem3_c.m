clear;
clc;

N = 1000;
alpha = 0.5;

a = [1 zeros(1,N-1) alpha];
b = 1;

d = [1 zeros(1,4000)];

her = filter(b,a,d);
n = 0:4000;

plot(n, her,'r');
title('Echo cancellation impulse response');
xlabel('n');
ylabel('her[n]');
