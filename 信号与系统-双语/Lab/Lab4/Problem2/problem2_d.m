load plus;

wc = 0.4;
n1 = 10; n2 = 4; n3 = 12;
[b1,a1] = butter(n1,wc);
a2 = 1; b2 = remez(n2,[0 wc-0.04 wc+0.04 1],[1 1 0 0]);
a3 = 1; b3 = remez(n3,[0 wc-0.04 wc+0.04 1],[1 1 0 0]);

x16 = x(:,16); % the column input
y16 = filter(b1,a1,[x16;zeros(n1/2,1)]); % filter response


stem(x16);
stem(y16(n1/2+1:end));
