
function y = horner(p,x)
% This function is to be called as y = horner(p,x).
% It evaluates the polynomial at x (x can be a scalar or a vector).
% p contains the coefficients of the polynomial.
    if(length(p) == 1)
        y = p(1);
    else
        y = (p(end) + (horner(p(1:end - 1),x)).*x);
    end
end
