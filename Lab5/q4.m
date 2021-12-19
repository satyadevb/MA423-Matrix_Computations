
vals = [10^5,10^7,10^11];
file = ["Q4-1.mat","Q4-2.mat","Q4-3.mat"];
for i = 1:3
    load(file(i),'A');
    [Q1,~] = cgs(A);
    [Q2,~] = mgs(A);
    [Q3,~] = cgsrep(A);
    [Q4,~] = qr(A);
    I = eye(50);
    fprintf("For cond. number of %d,the deviations from orthonormality obtained in CGS,MGS,CGSREP,QR Command processes are:\n",vals(i));
    fprintf("%d   %d   %d   %d   \n\n",norm(I - Q1'*Q1,2),norm(I - Q2'*Q2,2),norm(I - Q3'*Q3,2),norm(I - Q4'*Q4,2));
end