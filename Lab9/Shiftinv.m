
function [iter,lambda] = Shiftinv(A,x,rho,k)
% This function is to be called as [iter,lambda] = Shiftinv(A,x,rho,k).
% It performs k iterations of the shift and inverse
% method and give the iterates as columns of an n x k matrix. 
    n = size(A,1);
    iter = zeros(n,k);
    q = x;
    [L,U,P] = gepp(A - rho*eye(n));
    for j=1:k
        b = P*q;
        y = rowforward(L,b);
        q = colbackward(U,y);
        [~,ind] = max(abs(q));
        s = q(ind);
        q = q/s;
        iter(:,j) = q;
    end
    lambda = 1/s + rho;
end
