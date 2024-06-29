function y = diffeqn(a, x, yn1)
    N = length(x); % Length of input vector x
    y = zeros(1, N); % Initialize output vector y
    
    % Compute y[0] using y[-1]
    y(1) = a * yn1 + x(1);
    
    % Compute y[n] for n > 0
    for n = 2:N
        y(n) = a * y(n-1) + x(n);
    end
end

