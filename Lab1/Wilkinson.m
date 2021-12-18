
function T = Wilkinson(n)
% This function is to be called as M = Wilkinson(n).
% It returns a n*n size Wilkinson matrix.
I = eye(n); 
O = ones(n);
T = -tril(O,-1);
T = T + I;
M = zeros(n);
M(:,n) = ones(n,1);
T = T + M;
T(n,n) = 1;
end