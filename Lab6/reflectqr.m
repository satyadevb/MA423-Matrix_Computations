
function [Q,R] = reflectqr(A)
    [n,m] = size(A);
    u_list = zeros(n,m);
    g_list = zeros(m,1);
    if m == n
        p = n-1;
    else
        p = m;
    end
    for i = 1:p
        x = A(i:end,i);
        [u,gamma,~] = reflect(x);
        u_list(i:end,i) = u;
        g_list(i) = gamma;
        A(i:end,i:end) = applreflect(u,gamma,A(i:end,i:end));
    end
    R = (triu(A));
    R = R(1:m,1:m);
    Q = zeros(n,m);
    for i = 1:m
        e = zeros(n,1);
        e(i,1) = 1;
        for j = i:-1:1
            e(j:end) = applreflect(u_list(j:end,j),g_list(j),e(j:end));
        end
        Q(:,i) = e;
    end
end

