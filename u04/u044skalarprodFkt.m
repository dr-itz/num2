function [ sp ] = u044skalarprodFkt( x, f1, f2 )
%U044SKALARPRODFKT Berechnet das Integral int(a,b,f1(x)*f2(x)*dx)
% a und b sind dabei der erste bzw. der letzte Wert aus x.

n = size(x,1);
h = (x(n) - x(1)) / n;

Tf = (f1(1)*f2(1) + f1(n)*f2(n)) / 2;
for ii = 1 : n - 1,
    Tf = Tf + f1(ii)*f2(ii);
end
Tf = h * Tf;

sp = Tf;

end
