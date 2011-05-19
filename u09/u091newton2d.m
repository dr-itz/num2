% Newton-Verfahren mit 2 Variabeln zur Loesung der des Gleichungssystem:
%  f1 = x^2 + 5*y^2 - 10
%  f2 = x^3 - y

% (fast) beliebiger Startwert
xvec = [2, 2]';

% Startwert fuer Fehlervektor, Toleranz
fvec = [1, 1]';
tol = 0.001;

% Iteration
while fvec(1) > tol || fvec(2) > tol,
   fvec = dF2dNewton(xvec)
   delx = Jac2dNewton(xvec) \ fvec;
   xvec = xvec - delx
end
