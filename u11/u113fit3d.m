% Fit einer Ebene An die 3D-Punkte Hp(x,y)
%   x = -1 0 1 -1 1
%   y = -1 0 1 1 -1
%   Hp = 0 2 3 1 4
% soll eine Ebene gefittet werden, d.h. die Modellparameter h0, dhx und dhy
%   H(x,y) = h0 + dhx*x + dhy*y
% sollen bestimmt werden.
% Hinweis: Jede Zeile der Fehlergleichungen enthält die Modellfunktion
% minus den vorgegebenen Hp Punkt-Höhen-Wert
%   h0 + dhx*xk + dhy *yk - Hp(xk,yk) = 0 bzw.( = rk)

x = [-1 0 1 -1 1]';
y = [-1 0 1 1 -1]';
Hp = [0 2 3 1 4]';

A = [ones(length(x), 1) x y];
p = A \ Hp;

format compact;
h0 = p(1)
dhx = p(2)
dhy = p(3)

% Punke zeichnen
clf
plot3(x,y,Hp,'*r');
hold on;
axis equal;
grid on;

% Ebene zeichnen
[xe, ye] = meshgrid(-1:.1:1, -1:.1:1);
ze = h0 + dhx*xe + dhy*ye;
mesh(xe, ye, ze, 'EdgeColor', 'black');
alpha(.4);
figure(1);
