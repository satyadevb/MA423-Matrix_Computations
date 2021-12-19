
function [Q,R] = mgs(V)
% This function is to be called as [Q,R] = mgs(V).
% It finds the QR factorization of a matrix V by Modified 
% Gram-Schmidt process.
    m = size(V,2);
    R = zeros(m);
    for i = 1:m
        for j = 1:i-1
            R(j,i) = V(:,i)'*V(:,j);
            V(:,i) = V(:,i) - V(:,j)*R(j,i);
        end
        R(i,i) = norm(V(:,i));
        if(R(i,i) == 0)
            error('Singular matrix. Exiting :(');
        end
        V(:,i) = V(:,i)/R(i,i);
    end
    Q = V;
end

