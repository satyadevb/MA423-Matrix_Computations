
function G = mychol(A)
% This function is to be called as G = mychol(A).
% It finds the cholesky factor of a matrix.
% It returns a upper diagonal matrix G such that G'G = A.
n = size(A,1);
G = zeros(n);
    for j = 1:n
        G(j,j) = sqrt(A(j,j) - G(1:j-1,j)'*G(1:j-1,j));
        for k = (j+1):n
            G(j,k) = (A(j,k) - G(1:j-1,j)'*G(1:j-1,k))/G(j,j);
        end
    end
end

