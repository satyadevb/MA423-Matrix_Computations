
function x = mydet(A)
% This function is to be called as a = mydet(A).
% It finds the determinant of a matrix using LU factorization.
[~,U,p] = gepp(A);
n = size(A,1);
prod = 1;
count = 0;
for i = 1:(n - 1)
        while(p(i) ~= i)
            count = count + 1;
            j = p(i);
            k = p(j);
            p(j) = p(i);
            p(i) = k;
        end
end
sign = (-1).^(count);
for i = 1:n
    prod = prod*U(i,i);
end 
x = sign * prod;
end