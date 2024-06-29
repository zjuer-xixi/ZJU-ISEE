clc;
clear;

x1=[1 0 0 0 0 0];  
x2=[0 1 0 0 0 0]; 
x3=[1 2 0 0 0 0]; 

w1=cos(x1);
w2=cos(x2);
w3=cos(x3);
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

