clear;
clc;

n = 0:5;
% Define filter coefficients
a = 1;
b = [1,-1,-1];
% Define input signals
x1 = [1,0,0,0,0,0];
x2 = [0,1,0,0,0,0];
x3 = x1+2*x2;
% Apply the filter to each input signal
w1 = filter(b,a,x1);
w2 = filter(b,a,x2);
w3 = filter(b,a,x3);
w4 = w1+2*w2;
% Plotting
subplot(2,2,1)
stem(0:5,w1)
title('w1')
xlabel('n')

subplot(2,2,2)
stem(0:5,w1)
title('w2')
xlabel('n')

subplot(2,2,3)
stem(0:5,w1)
title('w3')
xlabel('n')

subplot(2,2,4)
stem(0:5,w1)
title('w4')
xlabel('n')