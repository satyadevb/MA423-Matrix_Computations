
fprintf("\nComputing the norm between cholesky factors using mychol and chol for various choices of positice definite matrices:\n");
for i = 2:10
    X = randn(i);
    A = X'*X;
    G = mychol(A);
    H = chol(A);
    fprintf("\nFor random positive definite matrix of size %d :\n",i); 
    fprintf("\nNorm of error between decomposition matrices of mychol and chol are :");
    disp(norm(G - H));
end