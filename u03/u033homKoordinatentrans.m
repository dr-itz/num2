%U033HOMKOORDINATENTRANS 
%   Dreht mit homogener Koordinatentransformation das auf der Spitze stehende
%   Quadrat ABCD um die Ecke A um die drei Winkel 45, 90 und 135 Grad im
%   Gegenuhrzeigersinn (mathematisch positiv).

% clean
clc;clear;clf;

% Figur im Vordergrund anzeigen
figure(1);

% Funktion fuer das Rotieren um einen beliebigen Winkel a
rotate = @(a) [cosd(a) -sind(a) 0 ; sind(a) cosd(a) 0 ; 0 0 1];

% Das Quadrat Q mit den Ecken ABCD
A = [4 0 1]';
B = [8 -4 1]';
C = [12 0 1]';
D = [8 4 1]';

fprintf('Vektoren Quadrat Q0:')
Q0 = [A B C D A]

% Zeichnen der blauen horizontalen Linie
plot([-6 14], [0 0])

hold on;

% Zeichnen der blauen vertikalen Linie
plot([0 0 ], [-6 14])

% Definition der x- und y-Achsen des Koordinatensystems
axis([-6 14 -6 14]);

% Quadratische Darstellung der Achsen
axis square;

% Schwarzes Quadrat Q0 zeichnen
plot(Q0(1,:), Q0(2,:), 'k', 'LineWidth', 2)

% Translation der Ecke A (4/0) in (0/0)
fprintf('Translation der Ecke A (4/0) in (0/0):')
T0 = [1 0 -A(1) ; 0 1 -A(2) ; 0 0 1]

% Rotation um einen Winkel a (in Grad) um Punkt (0/0)
fprintf('Rotation um 45 Grad um Punkt (0/0):')
Ra = rotate(45)

% Ruecktranslation der Ecke A in ihren Ursprung (4/0)
fprintf('Ruecktranslation der Ecke A in ihren Ursprung (4/0):')
T1 = [1 0 A(1) ; 0 1 A(2) ; 0 0 1]

% Gesamttransformation Ttot
fprintf('Gesamttransformation Ttot:')
Ttot = T1 * Ra * T0
fprintf('Quadrat um Ecke A um 45 Grad rotiert:')
Qa = Ttot * Q0

% Rotes Quadrat Qa zeichnen
plot(Qa(1,:), Qa(2,:), 'r', 'LineWidth', 2)

% Winkel 90 Grad
fprintf('Rotation um 90 Grad:')
Ra = rotate(90)
Ttot = T1 * Ra * T0
Qa = Ttot * Q0
plot(Qa(1,:), Qa(2,:), 'g', 'LineWidth', 2)

% Winkel 135 Grad
fprintf('Rotation um 135 Grad:')
Ra = rotate(135)
Ttot = T1 * Ra * T0
Qa = Ttot * Q0
plot(Qa(1,:), Qa(2,:), 'm', 'LineWidth', 2)
