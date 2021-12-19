
p = [1,4,-7,-6];
xvals = [-5,-3,-2,0,1,2];
pvals = horner(p,xvals);
for i = 1:length(xvals)
    fprintf("At %f,value of polynomial is %f\n",xvals(i),pvals(i));
end