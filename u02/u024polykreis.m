function [ r ] = u024polykreis( n, s )
%U024POLYKREIS Vieleck mit Umkreis
%   n: Anzahl Ecken, s: Seitenlaenge
% gibt den Radius zurueck

a = 360 / n;
r = s / (2*sind(a/2));

% kreis
w = 0:2:360;
x = sind(w)*r;
y = cosd(w)*r;

clf;
plot(x,y);

hold on
axis equal;

% n-Eck
w = 0:a:360;
x = cosd(w)*r;
y = sind(w)*r;

plot(x,y,'r');
figure(1);
hold off;

end

