% Analytische Bestimmung von partiellen Ableitungen: Buch S.292/60-9

syms x y z u real

% Aufgabe a)
F1 = x^2 * exp(y) * sin(z)
F1x = diff(F1,x)
F1y = diff(F1,y)
F1z = diff(F1,z)

% Aufgabe b)
F2 = exp(x*y) + exp(-x*y)
F2x = diff(F2,x)
F2y = diff(F2,y)

% Aufgabe c)
F3 = sin(x)^2 * cos(z)^3
F3x = diff(F3,x)
F3z = diff(F3,z)

% Aufgabe d)
F4 = x^3 * y^2 * z * (1/u)
F4x = diff(F4,x)
F4y = diff(F4,y)
F4z = diff(F4,z)
F4u = diff(F4,u)
