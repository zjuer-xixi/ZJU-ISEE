clc;
clear;


n=0:5;

x1=[1 0 0 0 0 0];  
x2=[0 1 0 0 0 0]; 
x3=[1 2 0 0 0 0]; 

w1=n.*x1;
w2=n.*x2;
w3=n.*x3;
w4=w1+2*w2;

subplot(2,2,1);
stem(0:5,w1);
title('w1');
xlabel('n');

subplot(2,2,2);
stem(0:5,w2);
title('w2');
xlabel('n');

subplot(2,2,3);
stem(0:5,w3);
title('w3');
xlabel('n');

subplot(2,2,4);
stem(0:5,w4);
title('w4');
xlabel('n');
