
N = [20,40,60,80,100];
for n = N
    A = rand(n); 
    A(1,1) = 50*eps*A(1,1);
    [L,U] = genp(A);
    fprintf("For n = %d\n",n);
    fprintf("Using genp:\n");
    fprintf("1,2 and inf norms of L\n");
    disp(norm(L,1));disp(norm(L));disp(norm(L,inf));
    fprintf("1,2 and inf norms of U\n");
    disp(norm(U,1));disp(norm(U));disp(norm(U,inf));
    fprintf("1,2 and inf norms of relative error\n");
    disp(norm(L*U - A,1)/norm(A,1));disp(norm(L*U - A)/norm(A));disp(norm(L*U - A,inf)/norm(A,inf));
    [L,U,p] = gepp(A);
    fprintf("Using gepp:\n");
    fprintf("1,2 and inf norms of L\n");
    disp(norm(L,1));disp(norm(L));disp(norm(L,inf));
    fprintf("1,2 and inf norms of U\n");
    disp(norm(U,1));disp(norm(U));disp(norm(U,inf));
    fprintf("1,2 and inf norms of relative error\n");
    disp(norm(L*U - A(p,:),1)/norm(A(p,:),1));disp(norm(L*U - A(p,:))/norm(A(p,:)));disp(norm(L*U - A(p,:),inf)/norm(A(p,:),inf));
end
