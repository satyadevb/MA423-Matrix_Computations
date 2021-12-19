
A = [10.^(-20) 1;1 1];
[L,U] = genp(A);
fprintf("A - LU =\n");
disp(A - L*U);
b = [1;0];
x = rowforward(L,b);
genp_sol = colbackward(U,x);
actual_sol = A\b;
fprintf("2 norm difference:\n");
disp(norm(actual_sol - genp_sol));
