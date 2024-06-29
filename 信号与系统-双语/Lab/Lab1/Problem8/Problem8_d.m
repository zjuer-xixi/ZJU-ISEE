x=sym(exp(1i*2*pi*t/16)+exp(1i*2*pi*t/8));
xr=sreal(x);
xi=simag(x);

subplot(2,1,1)
ezplot(xr,[0,32]);
title('the real component of x')
xlabel('t')
ylabel('real(x)')

subplot(2,1,2)
ezplot(xi,[0,32]);
title('the imaginary component of x')
xlabel('t')
ylabel('imag(x)')


