
n = input('Input size of Upper Triangular Matrix(n): ');
fprintf('Solving Ux = b for randomly filled values:\n');

U = triu(randn(n));
b = randn(n,1);
disp('U = ');disp(U);disp('b = ');disp(b);disp('x = ');
disp(colbackward(U,b));

n = input('Input size of Lower Triangular Matrix(n): ');
fprintf('Solving Lx = b for randomly filled values:\n');

L = tril(randn(n));
b = randn(n,1);
disp('L = ');disp(L);disp('b = ');disp(b);disp('x = ');
disp(rowforward(L,b));
