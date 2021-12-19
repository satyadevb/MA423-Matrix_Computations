
function [Q,R] = cgsrep(V)
% This function is to be called as [Q,R] = cgsrep(V).
% It finds the QR factorization of a matrix V by Classical 
% Gram-Schmidt process with re-orthonormalization. 
    n = size(V,1);m = size(V,2);
    R = zeros(m);
    for i = 1:m
        R(1:i-1,i) = V(:,1:i-1)'*V(:,i);
        V(:,i) = V(:,i) - V(:,1:i-1)*R(1:i-1,i);
        a = V(:,1:i-1)'*V(:,i);
        V(:,i) = V(:,i) - V(:,1:i-1)*a;
        R(1:i-1,i) = R(1:i-1,i) + a;
        R(i,i) = norm(V(:,i));
        if(R(i,i) == 0)
            error("Singular matrix. Exiting :( ");
        end
        V(:,i) = V(:,i)/R(i,i);
    end
    Q = V;
end





