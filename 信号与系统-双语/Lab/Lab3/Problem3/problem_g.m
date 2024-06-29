a = [-1,2];
b = 1;
 
t = -5:0.01:5;
t_reversed = 5:0.01:-5;

x = exp(5*t/2).*(t<=0);
x_reversed = exp(5*(-t)/2).*(t>=0);
 
y_ana = 2/9*(-exp(-2*t)+exp(5/2*t)).*(t<=0);
y = lsim(b,a,x_reversed,t);

plot(t,y_ana,'o');
hold on;
plot(t,flip(y),'r');
title('response');
grid on;