function [u,gamma,tau] = reflect(x)
% The function is to be called as [u,gamma,tau] = reflect(x).
    x1 = x(1,1);
    [n,~] = size(x);
    tau = sign(x1) * norm(x,2);
    y = zeros(n,1);
    y(1,1) = -1* tau;
    u = (x - y)/(x1 + tau);
    gamma = (tau + x1)/tau;
end
