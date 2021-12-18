
function M = Hamiltonian(n)
% This function is to be called as M = Hamiltonian(n).
% It returns a 2n*2n size Hamiltonian matrix filled with random values.
    A = randn(n);
    B = -1 * transpose(A);
    nd = tril(randn(n));
    C =  nd + transpose(nd);
    nd = tril(randn(n));
    D = nd + transpose(nd);
    M = [[A C]; [D B]];
end
