function [ tsol, ysol ] = selfEuler( func, ttot, yin )
% Selbst erstellte Euler-Loesung
% Input Parameter:  func = Name der Funktion y(t)
%                   ttot = Bereich von t
%                   yin  = y-Startvektor
% Output Parameter: tsol = Vektor mit Stellen an welchen Resultate
%                          berechnet wurden
%                   ysol = Resultatsvektor

s = 1000;      %Faktor fuer Schrittweite h -> je groesser gewaehlt
h = ttot/s;    %desto kleiner wird Schrittweite + umso genauere Uebereinstimmung

tsol = [0:s]' * h;
ysol = zeros(s+1, length(yin));
ysol(1,:) = yin';

for k = 2:s+1
    ysol(k,:) = ysol(k-1,:) + h * (feval(func, (k-1)*h, ysol(k-1,:)'))';
end
end