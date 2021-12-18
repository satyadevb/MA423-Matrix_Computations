
function [s, scf, scb] = sumreciprocal(m,k)
% This function is to be called as [s,scf,scb] = sumreciprocal(m,k).
% It finds the sum of the first m terms as s, the sum of the first m terms
% in 'k' digit arithmetic as scf and the same sum in reverse order in 'k'
% digit arithmetic as scb.

s = 0;scf = 0;scb = 0;
     for i = 1:m
         s = s + 1/i;
         scf = chop(scf + chop(1/i,k),k);
         scb = chop(scb + chop(1/(m - i + 1),k),k);
     end
end