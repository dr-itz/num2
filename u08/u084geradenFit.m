% Fit geht auch bei bestimmten Systemen
% Bestimmen Sie mit den Normalengleichungen die beste (=einzige) Gerade
% durch die 2 Punkte (-1/1) und (1/5). Ueberzeugen Sie sich davon, dass
% die gefittete Gerade mit der durch 2 Punkte gelegten übereinstimmt! 

% Punkte
P1 = [-1 1]';
P2 = [1 5]';

% Punkte als Matrix
P = [P1 P2];

% x- und y-Vektoren
x = P(1,:);
y = P(2,:);

% Gerade durch P1/P2
clf; figure(1);
plot(x, y, '+r-'); 
hold on; 
axis([-5 5 0 6])

% Normalengleichungen N * p = u
N = [sum(x.^2) sum(x); sum(x) length(x)]
u = [sum(x.*y); sum(y)]
pn = N \ u

% Normale zeichnen
xn = [-5 5];
yn = xn.*pn(1) + pn(2);
plot(xn, yn, 'c:');

legend('Gerade durch P1/P2', 'Gerade der Normalengleichung', 'Location', 'NorthWest');
hold off;
