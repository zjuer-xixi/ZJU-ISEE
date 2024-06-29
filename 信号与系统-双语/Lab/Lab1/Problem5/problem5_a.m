n=-10:1:10;

x1=[zeros(1,10),1,zeros(1,10)];
x2=[zeros(1,10),2,zeros(1,10)];

y1=sin(x1*pi/2);
subplot(3,1,1)
stem(n,y1)
title('signals of y1')
xlabel('n')

y2=sin(x2*pi/2);
subplot(3,1,2)
stem(n,y2)
title('signals of y2')
xlabel('n')

%If the system is linear, y1*2 will be equal to y2
subplot(3,1,3)
stem(n,2*y1-y2)
title('signals of 2*y1-y2')
xlabel('n')