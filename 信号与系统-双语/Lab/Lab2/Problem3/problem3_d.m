clc;
clear;

load lineup.mat

% Define the parameters for the echo cancellation
alpha = 0.5;  % Echo attenuation factor
N = 1000;     % Length of the filter

% Define the coefficients of the filter 'a' to create the echo effect
a = [1 zeros(1,N-1) alpha];

% Apply the filter to the audio signal 'y' to introduce echo
z = filter(1, a, y);

% Plot the original sound with echo
subplot(2,1,1)
plot(y)
title('Original sound with echo')
ylabel('y')

% Plot the sound after echo cancellation
subplot(2,1,2)
plot(z)
title('After echo cancellation')
ylabel('z')

% Define the sampling frequency
Fs = 8192;

% Play the original sound with echo
sound(y, Fs);
pause(3) % Pause for 3 seconds before playing the processed sound

% Play the sound after echo cancellation
sound(z, Fs);
audiowrite("D:\StudyRepository\信号与系统-双语\Lab\Lab2\Problem1\sound.wav", z, Fs)


