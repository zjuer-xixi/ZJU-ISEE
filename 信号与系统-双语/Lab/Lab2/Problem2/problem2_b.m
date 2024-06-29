clear;
clc;

% Define the coefficients of the transfer function
a = [1 3];
b = 1;
t = 0:0.05:4;

s=(1/3-1/3*exp(-3*t));
h=exp(-3*t);
s1 = step(b,a,t);
h1 = impulse(b,a,t);

% Plotting the step response s1(t) and the analytical step response s(t)
subplot(2,1,1)
plot(t,s1)
hold on
plot(t,s,'g+')
title('s(t) and s1(t)')
xlabel('t')

% Plotting the impulse response h1(t) and the analytical impulse response h(t)
subplot(2,1,2)
plot(t,h1)
hold on
plot(t,h,'g+')
title('h(t) and h1(t)')
xlabel('t')