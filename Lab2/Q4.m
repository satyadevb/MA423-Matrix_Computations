
fprintf("\nComputing determinants using mydet and det for various choices of A:\n");
for i = 2:10
    A = randn(i);
    m = mydet(A);
    d = det(A);
    fprintf("\nFor random matrix of size %d :\n",i); 
    fprintf("Determinant using mydet is :");
    disp(m);
    fprintf("\nDeterminant using det is :");
    disp(det(A));
    fprintf("\nError between answers of mydet and det are :");
    disp(abs(m - d));
end