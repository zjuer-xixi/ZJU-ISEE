clear;
clc;

a = [1 2*exp(-1j*pi/3) exp(1j*pi/4) exp(-1j*pi/4) 2*exp(1j*pi/3)];
x = zeros(1,5);
nx = 0:4;
for n = 1:5
   for k = 1:5
      x(n) = x(n)+a(k)*exp(1j*(k-1)*2*pi/5*(n-1)); % compute x[n]
   end
end
xr = real(x); % real and imaginary part
xi = imag(x);

subplot(2,1,1)
stem(nx,xr);
xlabel('n');
ylabel('Amplitude');
title('real(x)');
subplot(2,1,2)
stem(nx,xi);
xlabel('n');
ylabel('Amplitude');
title('imag(x)');
