
function x = rowforward(L,b)
% This function is to be called as x = rowforward(L,b). 
% The solution x to the linear system Lx = b is obtained using row oriented forward 
% substitution where L is a lower triangular non-singular square matrix.  
% Example:
%   L = tril(rand(5,5)); 
%   b = [1 1 1 0 0]';
%   x = rowforward(L,b);

    n = size(L,1);
    for i = 1:n
        for j = 1:(i-1)
            b(i) = b(i) - L(i,j)*b(j);
        end
        if(L(i,i) == 0)
            fprintf("Singular matrix");
            break;
        else
            b(i) = b(i)/L(i,i);
        end
    end
    x = b;
end

