function [mult] = u041komplexeMult(z1,z2)
%U041KOMPLEXEMULT
%   Zeichnet die Punkte in der Gauss'schen Zahlenebene der zwei komplexen
%   Zahlen z1 und z2 inklusiv Resultat derer Multiplikation z1*z2

% Notizen fuer komplexe Zahlen
%-----------------------------
% Multiplikationsformel: z1 * z2 = r1 * r2 * exp(i * (w1 + w2))
% => Betraege werden multipliziert (bewirken also Streckung oder Stauchung)
% => Winkel werden addiert (und Winkel addieren heisst: drehen!)

% ** Hinweis **
% z2^0 = 1 , z2^1 = z2
% Die Zahl z1 wird mit der Zahl z1*z2 verbunden durch die Linie z1*(z2^pvec) 
% mit dem fein unterteilten Potenzierungs-Vektor pvec, der Werte zwischen 0 und 1 aufweist. 
% Diese Linie ist gerade die logarithmische Spirale.

% Zeilenvektor mit fein tabellierten Werten
pvec = 0 : pi/200 : 1;

% Komplexe Zahl z = a + i*b mit a = Realteil, b = Imaginaerteil
a1 = real(z1);  % Realteil a1 von Zahl z1
b1 = imag(z1);  % Imaginaerteil b1 von Zahl z1

a2 = real(z2);  % Realteil a2 von Zahl z2
b2 = imag(z2);  % Imaginaerteil b2 von Zahl z2

% Darstellung der komplexen Zahl in Polarform: z = r * exp(i*w)
r1 = abs(z1);   % Radius r1 von Zahl z1
r2 = abs(z2);   % Radius r2 von Zahl z2
w1 = angle(z1); % Phasenwinkel w1 von Zahl z1
w2 = angle(z2); % Phasenwinkel w2 von Zahl z2

z1p = r1 * exp(i*w1);   % Polarform z1p von Zahl z1
z2p = r2 * exp(i*w2);   % Polarform z2p von Zahl z2

% Multiplikationsformel
mult = r1 * r2 * exp(1i * (w1 + w2));

% figure(1);
% Darstellung Zahl z1
% plot(z1p);
% axis equal;
% hold on;

end