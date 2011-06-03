function res = eulerVerfahren(start, h)
%EULERVERFAHREN
%   Formel des Euler-Verfahrens (einfache lineare Extrapolation)

% Formel des Euler-Verfahrens: y(k*h+h) = y(k*h) + h * y'(k*h)

y = zeros(3, 1);
y(1) = start(1);

for k = 1 : (20/h),
    y(k+1) = y(k) + h * -0.1 * y(k);
end

res = y;

end