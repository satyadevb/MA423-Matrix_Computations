
C1 = [];C2 = [];Cinf = [];
N= 2:2:16;
for n = N
    H = hilb(n); 
    C1 = [C1; cond(H,1)];
    C2 = [C2; cond(H)];
    Cinf = [Cinf; cond(H,inf)];
end

figure
semilogy(N,C2)
title('Condition number in 2-norm')
xlabel('Size of Hilbert Matrix')
ylabel('Condition number')

figure
semilogy(N,C1)
title('Condition number in 1-norm')
xlabel('Size of Hilbert Matrix')
ylabel('Condition number')

figure
semilogy(N,Cinf)
title('Condition number in infinity norm')
xlabel('Size of Hilbert Matrix')
ylabel('Condition number')
