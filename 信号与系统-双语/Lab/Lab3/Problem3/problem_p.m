a1 = [1 2 26];
b1 = 5;
a2 = [-1 -1];
b2 = 1;

t = -10:0.01:10;
ts = 0:0.01:10;

x1 = [ones(201,1);zeros(800,1)];
y1 = lsim(b1,a1,x1,ts);
y1 = [zeros(1000,1);y1];

x2 = [ones(301,1);zeros(700,1)];
y2 = lsim(b2,a2,x2,ts);
y2 = [zeros(1000,1);y2];
y2 = flip(y2);

y = y1 + y2;

subplot(3,1,1)
plot(t,y1)
title('y1')
subplot(3,1,2)
plot(t,y2)
title('y2')
subplot(3,1,3)
plot(t,y)
title('y')