function B = applreflect(u, gamma, A)
% The function is to be called as B = applreflect(u,gamma,A).
% It performs the multiplication QA efficiently where Q = I - gamma*u*u'.
    v = gamma*u;
    w = u'*A;
    C = v*w;
    B = A - C;
end

