function [xv,xr] = u052glsysDiag(D,b)
%U052GLSYSDIAG
%   Gleichungssystem Diagonalmatrix,
%	Vorwaertseinsetzen und Rueckwaertseinsetzen

n = size(D,1);
if n ~= size(D,2),
    error('Matrix not quadratic');
end

% Vorwaertseinsetzen
for i = 1:n
    xv(i) = b(i) ./ D(i,i);
end

% Rueckwaertseinsetzen
for i = n:-1:1
    xr(i) = b(i) ./ D(i,i);
end

end