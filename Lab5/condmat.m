
function A = condmat(n,kappa)
% This function is to be called as A = condmat(n,kappa).
% It generates a random n×n positive definite matrix with given condition 
% number kappa. 
    D = zeros(n,n);
    for i = 1:n
       D(i,i) = kappa^((i-1)/(n-1)); 
    end
    X = randn(n,n);
    [U,~] = qr(X);
    A = U*D*U';
end
