
function x = colbackward(U,b)
% This function is to be called as x = colbackward(U,b). 
% The solution x to the linear system Ux = b is obtained using column oriented ward 
% substitution where U is a upper triangular non-singular square matrix.  
% Example:
%   U = triu(rand(5,5)); 
%   b = [1 1 1 0 0]';
%   x = colbackward(U,b);

    n = size(U,1);
    for j = n:-1:1
        if(U(j,j) == 0)
            fprintf("Singular matrix");
            break;
        else
            b(j) = b(j)/U(j,j);
        end
        for i = j-1:-1:1
            b(i) = b(i) - U(i,j)*b(j);
        end
    end 
    x = b;
end
