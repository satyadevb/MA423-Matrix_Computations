
function [L,U] = genp(A)
% This function is to be called as [L,U] = genp(A).
% It finds an LU factorization A = LU of a square matrix A by performing 
% Gaussian Elimination with no pivoting(GENP).
n = size(A,1);
for k = 1:(n - 1)
    if (A(k,k) == 0)
        fprintf("Zero pivot encountered");
        break;
    else
        for i = (k + 1):n
            A(i,k) = A(i,k)/A(k,k);
        end
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