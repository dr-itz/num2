% Fit nach speziellen Funktionen: Lösen Sie mit MATLAB den Fit zur Bestimmung 
% der besten Koeffizienten a und b um die Funktion y(x) = a * 1/x + b
% an die Punkte x = 1 2 3 4 und y = 4 2 1 0.5 anzupassen.
% Hinweis: Jede Zeile der Fehlergleichungen enthält die Modellfunktion minus 
% den vorgegebenen y-Wert a * (1/xk) + b - yk = 0 bzw. ( = rk)

clear; clf;

x = [1:4]';
y = [4 2 1 0.5]';

A = [x ones(length(x),1)];
p = A\y;

clf; figure(1)
axis([0 5 0 5])
hold on;
plot(x, y, '+r')

a = p(2); 
b = p(1); 
x1 = 0:0.2:5;
y1 = a * x1.^-1 + b;
plot(x1, y1, 'b')