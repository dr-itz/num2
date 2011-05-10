% Bestimmen Sie in einem Wuerfel ABCD EFGH der Kantenlänge 4 die Laenge der
% Vektoren u = AG und v = A-MCG (MCG ist der Mittelpunkt zwischen C un G).
% Berechnen Sie auch den Winkel zwischen diesen beiden Vektoren! 

% Wuerfel
A = [0 0 0]';
B = [0 4 0]';
C = [4 4 0]';
D = [4 0 0]';
E = [0 0 4]';
F = [0 4 4]';
G = [4 4 4]';
H = [4 0 4]';

% Vektoren
u = G - A
MCG = (C+G)/2;
v = MCG - A

% Laenge der Vektoren
lu = sqrt(sum(u.^2))
lv = sqrt(sum(v.^2))

% Winkel
w = acosd(u'*v/(norm(u)*norm(v)))
