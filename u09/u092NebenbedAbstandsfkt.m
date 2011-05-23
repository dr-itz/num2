% Nichtlineare Nebenbedingung und Abstandsfunktion, Buch S.295/60?27
%   Stellen Sie das nichtlineare Gleichungssystem auf, welches das Optimum
%   der Funktion F(x,y) = sqrt( x^2 + y^2 ) definiert, unter der Bedingung,
%   dass y = 5 / x^3

% Nebenbedingung in "0-Form" bringen:
%   G(x,y) = y - 5 / x^3

% Zielfunktion L(x,y,l) = sqrt(x^2 + y^2) + l * (y - 5 / x^3)


% Gleichungssystem
%
% dL/dx = x / sqrt(x^2 + y^2) + l * 15/x^4  = 0
%
% dL/dy = y / sqrt(x^2 + y^2) + l           = 0
%
% dL/dl = y - 5/x^3                         = 0


% Das nichtlineare Gleichungssystem koennte nun mit dem Newton-Verfahren
% iterativ geloest werden. Ist hier aber nicht Teil der Aufgabenstellung.