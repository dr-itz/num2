function [ fvec ] = dF2dNewton( xvec )
%DF2DNEWTON verbleibender Fehlervektor zu den Funktionen
%  f1 = x^2 + 5*y^2 - 10
%  f2 = x^3 - y

fvec = zeros(2,1);
fvec(1) = xvec(1)^2 + 5*xvec(2)^2 - 10;
fvec(2) = xvec(1)^3 - xvec(2);

end

