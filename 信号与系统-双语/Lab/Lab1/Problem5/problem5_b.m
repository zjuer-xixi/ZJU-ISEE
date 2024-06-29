n = -6:1:9;

%x1=u[n]
x1 = zeros(size(n));
x1(n >= 0) = 1;
subplot(3,1,1)
stem(n, x1)
title('x1[n]=u[n]')
xlabel('n')
axis([-5 9 0 2])

%x2=u[n+1]
x2 = zeros(size(n));
x2(n >= -1) = 1;
subplot(3,1,2)
stem(n, x2)
title('x2[n]=u[n+1]')
xlabel('n')
axis([-5 9 0 2])

y = x1 + x2;
subplot(3,1,3)
stem(n, y)
title('y[n]')
xlabel('n')
axis([-6 9 0 2])
