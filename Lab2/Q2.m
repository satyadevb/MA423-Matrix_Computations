
fprintf("\nComputing norms of ||(A(p,:) - LU)|| for various choices of A:\n");
for i = 2:10
    A = randn(i);
    [L,U,p] = gepp(A);
    fprintf("\nFor random matrix of size %d , norm ||(A(p,:) - LU)|| is :",i);
    disp(norm(A(p,:) - L*U));
end

fprintf("\nComputing differences between [L,U] outputs of gepp and lu command for various choices of A:\n");
for i = 2:10
    A = randn(i);
    [L,U,p] = gepp(A);
    [L2,U2,p2] = lu(A,'vector');
    fprintf("\nFor random matrix of size %d :\n",i);
    fprintf("Norm between L obtained using gepp and lu command is :");
    disp(norm(L2 - L));
    fprintf("Norm between U obtained using gepp and lu command is :");
    disp(norm(U2 - U));
end