n=0:31;

%plot the figure of x1
x1=sin(pi*n/4).*cos(pi*n/4);
subplot(3,1,1)
stem(n,x1);
title('signal1[n]')
xlabel('n')
ylabel('x1[n]')

%plot the figure of x2
x2=cos(pi*n/4).*cos(pi*n/4);
subplot(3,1,2)
stem(n,x2)
title('signal2[n]')
xlabel('n')
ylabel('x2[n]')

%plot the figure of x3
x3=sin(pi*n/4).*cos(pi*n/8);
subplot(3,1,3)
stem(n,x3);
title('signal3[n]')
xlabel('n')
ylabel('x3[n]')
