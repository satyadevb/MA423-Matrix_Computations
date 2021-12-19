
fprintf("\nComputing norms of difference between actual solution and gepp solution for various choices of A:\n");
for i = 2:10
    A = randn(i);
    b = randn(i,1);
    x = geppsolve(A,b);
    actual_sol = A\b;
    fprintf("\nFor random matrix of size %d , norm is :",i);
    disp(norm(x - actual_sol));
end