
theta = 1.2;
n = 90;
s = sin(theta);
c = cos(theta);

C = triu(ones(n,n)*(-c), 1) + eye(n);
S = diag(diag(fliplr(vander(ones(n, 1)*(s)))));
A = S*C;

fprintf('\n(a)\n');
fprintf('Largest main diagonal entry: %f\n',max(diag(A)));
fprintf('Smallest main diagonal entry: %f\n',min(diag(A)));

fprintf('\n(b)\n');
fprintf('Rank of A = %d\n',rank(A));
A = gallery('kahan',90,1.2,0);
sig = svd(A);
fprintf('sig(1) = %f\n',sig(1));
fprintf('sig(89) = %f\n',sig(89));
fprintf('sig(90) = %f\n',sig(90));
fprintf('In format short e, sig(90) = %e\n\n',sig(90));

fprintf('\n(c)\n');
fprintf('Rank of A = %d\n',rank(A));
A = gallery('kahan',90,1.2,25);
sig = svd(A);
fprintf('sig(1) = %f\n',sig(1));
fprintf('sig(89) = %f\n',sig(89));
fprintf('sig(90) = %f\n',sig(90));
fprintf('In format short e, sig(90) = %e\n\n',sig(90));

[Q, R, E] = qr (A) ;
fprintf('dif = %f\n', norm(eye(n)-E));
fprintf('R(90,90) = %f\n\n',R(90,90));