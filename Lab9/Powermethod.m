
function [iter,lambda] = Powermethod(A,x,k)
% This function is to be called as [iter,lambda] = Powermethod(A,x,k).
% It performs k iterations of the Power Method on A and initial vector x
% and returns an n × k matrix iter whose jth column is the jth iterate
% and the dominant eigenvalue.
    n = size(x,1);
    iter = zeros(n,k);
    [~,ind] = max(abs(x));
    lambda = x(ind);
    q = x/lambda;
    for i = 1:k
        q = A*q;
        [~,ind] = max(abs(q));
        lambda = q(ind);
        q = q/lambda;
        iter(:,i) = q;
    end
end



