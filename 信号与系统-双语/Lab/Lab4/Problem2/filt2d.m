function y = filt2d(b,a,d,x)
 %d = n/2;n is the order of the 1D filter
 %a b is the coefficients of the 1Dfilter
 %size fo x y z is N*N

 [m,n] = size(x);
 y = zeros(m, n);
 z = zeros(m, n);
 
 for i = 1:n    %each column
     xi = x(:,i);
     z1 = filter(b,a,[xi;zeros(d,1)]);
     z(:,i) = z1(d+1:end);
 end

 for j = 1:m    %each row
     zj = z(j,:);
     y1 = filter(b,a,[zj zeros(1,d)]);
     y(j,:) = y1(d+1:end);
 end

end

