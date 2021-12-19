
N = [8,10,12];
for n = N
    H = hilb(n);HI = invhilb(n);
    x = randn(n,1);
    b = H*x;
    x1 = H\b;
    x2 = HI*b;
    x3 = geppsolve(H,b);
    fprintf("\nFor n = %d\n",n);
    disp([x x1 x2 x3]);
    disp([cond(H) norm(x-x1)/norm(x) norm(x-x2)/norm(x) norm(x-x3)/norm(x)]);
end
