function fvec = kugfct(xvec)
%KUGFCT
%   Abweichungen bei Kugelfunktions-Iteration

fvec = zeros(3,1);

fvec(1) = xvec(1) * cos(xvec(2)) * cos(xvec(3)) - 3;
fvec(2) = xvec(1) * sin(xvec(2)) * cos(xvec(3)) - 1;
fvec(3) = xvec(1) * sin(xvec(3)) - 2;

end
