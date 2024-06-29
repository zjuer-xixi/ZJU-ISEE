a = [-1,2];
b = 1;
 
t=-5:0.01:5;
ts=0:0.01:5;
 
h_ana=-exp(-2*t).*(t<=0);
h=impulse(b,a,ts);
h=[zeros(500,1);h];

plot(t,h_ana,'o');
hold on;
plot(t,flip(h),'r');
title('impulse response');
grid on;