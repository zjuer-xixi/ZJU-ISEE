N=6;

%plot the figure of x1
n1=0:4*N;
x1=cos(2*pi*n1/N)+2*cos(3*pi*n1/N);
subplot(3,1,1)
stem(n1,x1)
title('signals of x1')
xlabel('n1')
ylabel('x1[n]')

%plot the figure of x2
n2=0:4*N;
x2=2*cos(2*n2/N)+2*cos(3*n2/N);
subplot(3,1,2)
stem(n2,x2)
title('signals of x2')
xlabel('n2')
ylabel('x2[n]')

%plot the figure of x3
n3=0:8*N;
x3=cos(2*pi*n3/N)+3*sin(5*pi*n3/(2*N));
subplot(3,1,3)
stem(n3,x3)
title('signals of x3')
xlabel('n3')
ylabel('x3[n]')