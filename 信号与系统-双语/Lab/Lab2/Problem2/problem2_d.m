clear;
clc;

delta = 0.05;
t = -1:delta:4;

u = [zeros(1,length(-1:delta:-delta)),ones(1,length(0:delta:4))];
h = exp(-3*t) .* u;

a = [1 3];
b = 1;

% Define different delta values
delta1 = 0.1;
delta2 = 0.2;
delta3 = 0.4;

% Define the impulse sequences for different delta values
d1 = [zeros(1,length(-1:0.05:-0.05)) ones(1,length(0:0.05:delta1-0.05)) zeros(1, length(delta1:0.05:4))];
d2 = [zeros(1,length(-1:0.05:-0.05)) ones(1,length(0:0.05:delta2-0.05)) zeros(1, length(delta2:0.05:4))];
d3 = [zeros(1,length(-1:0.05:-0.05)) ones(1,length(0:0.05:delta3-0.05)) zeros(1, length(delta3:0.05:4))];

% Calculate the impulse response h1(t), h2(t), and h3(t) using the lsim function
h1 = lsim(b,a,d1,t);
h2 = lsim(b,a,d2,t);
h3 = lsim(b,a,d3,t);

% Plotting the impulse response for delta = 0.1
subplot(3,1,1)
plot(t,h1)
hold on
plot(t,h,'r') % Plot analytical h(t) in red for comparison
title('delta = 0.1')
xlabel('t')
ylabel('h(t)')

% Plotting the impulse response for delta = 0.2
subplot(3,1,2)
plot(t,h2)
hold on
plot(t,h,'r') % Plot analytical h(t) in red for comparison
title('delta = 0.2')
xlabel('t')
ylabel('h(t)')

% Plotting the impulse response for delta = 0.4
subplot(3,1,3)
plot(t,h3)
hold on
plot(t,h,'r') % Plot analytical h(t) in red for comparison
title('delta = 0.4')
xlabel('t')
ylabel('h(t)')
