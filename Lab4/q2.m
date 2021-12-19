
p = [1,-18,144,-672,2016,-4032,5376,-4608,2304,-512];
tol = 0.001;
x0 = 1.95;x1 = 2.05;
fprintf("Using horner's method,\n");
for i = 1:9
    x0 = 1.95 + 0.005*i;x1 = 2.05 - 0.005*i;
    x = bisect(p,x0,x1,tol);
    fprintf("In interval [%f,%f] , root found is %f\n",x0,x1,x);
end