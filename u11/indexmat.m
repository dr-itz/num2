function A = indexmat(ndim)
% INDEXMAT
% Erzeugen einer Matrix deren Elemente den Indizes entsprechen

A = [];
ndim = min(ndim,9);

for k = 1:ndim
    A = [A ; 10*k+1:10*k+ndim];
end