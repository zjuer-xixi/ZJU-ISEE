clear;
clc;

k=[1,2,4,6];
wk=2*k*pi/5;
n=0:9;
x=sin(wk'*n);

%k=1
subplot(2,2,1);
stem(n,x(1,:));
title('w1');
xlabel('n');
ylabel('X1[n]');

%k=2
subplot(2,2,2);
stem(n,x(2,:));
title('w2');
xlabel('n');
ylabel('X2[n]');

%k=3
subplot(2,2,3);
stem(n,x(3,:));
title('w3');
xlabel('n');
ylabel('X3[n]');

%k=4
subplot(2,2,4);
stem(n,x(4,:));
title('w4');
xlabel('n');
ylabel('X4[n]');