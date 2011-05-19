function [ jac ] = Jac2dNewton( xvec )
%JAC2DNEWTON Generiert die Jacboi-Matrix zu den Funktionen:
%  f1 = x^2 + 5*y^2 - 10
%  f2 = x^3 - y

jac = zeros(2);
jac(1,1) = 2*xvec(1);
jac(1,2) = 10*xvec(2);
jac(2,1) = 3*xvec(1);
jac(2,2) = -1;

end

