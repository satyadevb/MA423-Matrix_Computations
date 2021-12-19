
t = (-5:0.5:6)';
n = length(t);
m = 17+1;

A = zeros(n,m);
for i=1:n
    for j=1:m
        A(i,j) = t(i)^(j-1);
    end
end

b = sin(pi*t/5) + t/5;

T = table('Size',[0 3] ,'VariableNames', {'Method','Condition number','|r|'}, ...
    'VariableTypes', {'int8','double','double'});

T = [T; {"Matlab Command", cond(A), norm(A*(A\b)-b)}];

G = mychol((A')*A);
y = rowforward(G',A'*b);
sol2 = colbackward(G, y);
T = [T; {"Normal Equation", cond(A'*A), norm(A*sol2-b)}];

B = [eye(n) A; A' zeros(m,m)];
b2 = zeros(size(B,1),1);
b2(1:length(b)) = b;
x = B\b2;
sol3 = x(n+1:end);
T = [T; {"Argumented system", cond(B), norm(A*sol3-b)}];

disp(T);
