clear;
clc;

t = -1:0.05:4;

u = [zeros(1,length(-1:0.05:-0.05)),ones(1,length(0:0.05:4))];

% Define different values for parameter 'a'
a1 = 4;
a2 = 8;
a3 = 16;

% Define the exponential functions with different 'a' values
da1 = a1 * exp(-a1 * t) .* u;
da2 = a2 * exp(-a2 * t) .* u;
da3 = a3 * exp(-a3 * t) .* u;

% Define the coefficients of the transfer function
a = [1 3];
b = 1;

h = exp(-3 * t) .* u;

% Calculate the response h1(t), h2(t), and h3(t) using the lsim function
h1 = lsim(b, a, da1, t);
h2 = lsim(b, a, da2, t);
h3 = lsim(b, a, da3, t);

% Plotting the impulse response for a = 4
subplot(3,1,1)
plot(t, h1)
hold on
plot(t, h, 'r') % Plot analytical h(t) in red for comparison
title('d(4)')
xlabel('t')
ylabel('h(t)')

% Plotting the impulse response for a = 8
subplot(3,1,2)
plot(t, h2)
hold on
plot(t, h, 'r') % Plot analytical h(t) in red for comparison
title('d(8)')
xlabel('t')
ylabel('h(t)')

% Plotting the impulse response for a = 16
subplot(3,1,3)
plot(t, h3)
hold on
plot(t, h, 'r') % Plot analytical h(t) in red for comparison
title('d(16)')
xlabel('t')
ylabel('h(t)')
