a = [-1 1 -24 -26];
b = [1 -7 21];
t = -5:0.01:5;
ts = 0:0.01:5;

h_ana = (exp(t)-exp(-t).*sin(5*t)).*(t<=0);
h = impulse(b,a,ts);
h=[zeros(500,1);h];

plot(t,flip(h),'b');
hold on
plot(t,h_ana,'o');