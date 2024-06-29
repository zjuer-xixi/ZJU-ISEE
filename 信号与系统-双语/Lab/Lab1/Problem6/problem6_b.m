n=0:30;
a=1;
yn1=0;
x1=[1,zeros(1,30)];
x2=[ones(1,31)];

subplot(2,1,1)
stem(n,diffeqn(a,x1,yn1))
title('the response of x1')
xlabel('n')
ylabel('y1')

subplot(2,1,2)
stem(n,diffeqn(a,x2,yn1))
title('the response of x2')
xlabel('n')
ylabel('y2')
