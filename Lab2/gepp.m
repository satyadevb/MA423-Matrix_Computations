
function [L,U,p] = gepp(A)
% This function is to be called as [L,U,p] = gepp(A).
% It finds an LU factorization A = LU of a square matrix A by performing 
% Gaussian Elimination with partial pivoting(GEPP) and
% a column vector p satisfying A(p,:) = LU.
n = size(A,1);
p = zeros(n,1);
for i = 1:n
    p(i,1) = i;
end
for k = 1:(n - 1)
    [~,m] = max(abs(A(k:n,k)));
    m = m + k -1;
    if(m ~= k)
        A([k m],:) = A([m k],:);
        p([k m]) = p([m k]);   
    end
    for i = (k + 1):n
        A(i,k) = A(i,k)/A(k,k);
    end
    for i = (k + 1):n
        for j = (k + 1):n
            A(i,j) = A(i,j) - A(i,k)*A(k,j);            
        end
    end
end
L = eye(n) + tril(A,-1);
U = triu(A);
end

