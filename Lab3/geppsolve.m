
function x = geppsolve(A,b)
% This function is to be called as x = geppsolve(A,b).
% It finds an LU factorization of matrix A and solves Ax = b by 
% performing Gaussian Elimination with partial pivoting(GEPP).
[L,U,p] = gepp(A);
n = size(A,1);
P = zeros(n);
for i=1:n
    P(i,p(i)) = 1;
end 
y = rowforward(L,P*b);
x = colbackward(U,y);
end