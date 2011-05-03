% Bestimmen der Fehlergleichungsmatrix fuer den Fit einer Geraden
% an die Punkte x = -4 -2 0 2 4 und y = 3 2 2 1 1,
% anschliessendes Loesen der Normalengleichungen.

x = (-4:2:4)'
y = [3 2 2 1 1]';

% Fehlergleichungsmatrix
A = [x ones(5,1)]

% Fehlergleichung A * p = y
pf = A\y

figure(1)
plot(x,y,'+r'); 
hold on; 
axis([-5 5 0 5])
plot([-5 5], [pf(2)-5*pf(1) pf(2)+5*pf(1)]);

% N = A'*A oder
N = [sum(x.^2) sum(x); sum(x) 5]
% u = A'*y oder
u = [sum(x.*y); sum(y)]

% Normalengleichungen N * p = u
pn = N\u

plot([-5 5], [pn(2)-5*pn(1) pn(2)+5*pn(1)], 'c:');
hold off
