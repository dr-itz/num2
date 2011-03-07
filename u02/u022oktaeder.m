%U022OKTAEDER Oktaeder - doppelte vierseitige Pyramide
%   Zeichnet ein Oktaeder mit der Kantenlaenge 10 und den
%   6 Ecken bei Nord, Ost, Sued, West, Top, Bottom, auf den
%   Koordinatenachsen +y, +x, -y, -x, +z, -z

% Alles bereinigen
clear;clc;clf;

% Hoehe hp der Pyramide: hp = sqrt((s^2 * 3)/4 - s^2/4)
% => hp = s / sqrt(2)

% x bzw. y Abstand vom Zentrum, da 45 Grad gedreht damit Ecken bei
% Nord, Ost, Sued, West liegen
a = 10 / sqrt(2);

% Punkte
%     x  y  z
A = [-a  0  0]'; % Westen
B = [0  -a  0]'; % Sueden
C = [ a  0  0]'; % Osten
D = [0   a  0]'; % Norden
E = [0   0  a]'; % Top
F = [0   0 -a]'; % Bottom

% Vektor-Zusammenstellung des Oktaeders
O = [A B C D A E B E C E D F A F B F C]

% 3D Plot mit labels
%       x       y       z
plot3(O(1,:), O(2,:), O(3,:),'r-');
d = 1;
text(-a-d, 0, 0,'A');
text(0, -a-d, 0,'B');
text(a+d, 0, 0,'C');
text(0, a+d, D(3),'D');
text(0, 0, a+d,'E');
text(0, 0, -a-d,'F');
axis equal


% Figur im Vordergrund darstellen
figure(1);

