
function soln = bisect(p,x0,x1,tol)
% This function is to be called as x = bisect(p,x0,x1,tol).
% It finds a root of the polynomial in the interval [x0,x1] upto a given
% tolerance of tol using the bisection method.
% p contains the coefficients of the polynomial.
    x = 0;
    while(abs(x0 - x1) > 2*tol)
        x = (x0 + x1)/2;
        if(horner(p,x)*horner(p,x0) < 0)
            x1 = x;
        else
            x0 = x;
        end            
    end
    soln = x;
end
