
nm_list = [5 3; 10 10; 15 10; 20 12; 30 30];

T = table([],[],[],[],[],[],[],'VariableNames', {'n','m','norm(Q*R - A)',...
    'norm(transpose(Q)*Q - I)','norm(tril(R,-1))','norm(R - R_hat)',...
    'norm(Q - Q_hat)'});

for i=1:length(nm_list)
    n = nm_list(i,1);
    m = nm_list(i,2);
    A = randn(n,m);
    [Q,R] = reflectqr(A);
    [Qhat,Rhat] = qr(A,0);
    T = [T; {n,m,norm(Q*R-A),norm(Q'*Q-eye(m)),norm(tril(R,-1)),...
        norm(R - Rhat),norm(Q - Qhat)}];
end

disp(T);