
format long e;
x = [1;1;1];
k = 25;
A1 = [-1,1,1;-1,9,2;0,-1,2];
A2 = [-1,1,1;-1,9,2;-4,-1,2];
A3 = [-1,1,1;-1,3,2;-4,-1,2];

[V,D] = eig(A1);
[D,P] = sort(diag(D),'descend');
V = V(:,P);
l1 = D(1);
l2 = D(2);
v = V(:,1);

[iter,~] = Powermethod(A1,x,k);
theoretical_rate = abs(l2)/abs(l1);
rate = norm(iter(:,k) - v) / norm(iter(:,k-1) - v);

disp("(i)")
disp("Theoretical Convergence rate = ")
disp(theoretical_rate)
disp("Convergence rate using Powermethod() = ")
disp(rate)
disp("Difference in convergence rate = ")
disp(abs(theoretical_rate - rate))

[V,D] = eig(A2);
[D,P] = sort(diag(D),'descend');
V = V(:,P);
l1 = D(1);
l2 = D(2);
v = V(:,1);

[iter,~] = Powermethod(A2,x,k);
theoretical_rate = abs(l2)/abs(l1);
rate = norm(iter(:,k) - v) / norm(iter(:,k-1) - v);

disp("(ii)")
disp("Theoretical Convergence rate = ")
disp(theoretical_rate)
disp("Convergence rate using Powermethod() = ")
disp(rate)
disp("Difference in convergence rate = ")
disp(abs(theoretical_rate - rate))

[V,D] = eig(A3);
[D,P] = sort(diag(D),'descend');
V = V(:,P);
l1 = D(1);
l2 = D(2);
v = V(:,1);

[iter,~] = Powermethod(A3,x,k);
theoretical_rate = abs(l2)/abs(l1);
rate = norm(iter(:,k) - v) / norm(iter(:,k-1) - v);

disp("(iii)")
disp("Theoretical Convergence rate = ")
disp(theoretical_rate)
disp("Convergence rate using Powermethod() = ")
disp(rate)
disp("Difference in convergence rate = ")
disp(abs(theoretical_rate - rate))
