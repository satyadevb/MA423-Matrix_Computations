
n = input('Enter Input size of Matrix(n): ');
fprintf('LU Factorization of a matrix filled with random values:\n');

A = randn(n);
[L,U] = genp(A);
disp('A = ');disp(A);disp('L = ');disp(L);disp('U = ');disp(U);