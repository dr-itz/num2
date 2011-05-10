% Alle Loesungen der Gleichung (z+1)^3 = sqrt(2)/2 + i*sqrt(2)/2
% => u = z+1
%    u^3 = sqrt(2)/2 + i*sqrt(2)/2
%    u = (sqrt(2)/2 + i*sqrt(2)/2)^(1/3)
%    z = u-1

% Rechte Seite:
r = sqrt(2)/2 + i*sqrt(2)/2

% Wurzel
u = abs(r)^(1/3) * exp(1i*(angle(r)./3 + (0:2)'*2*pi/3));

% Resultat
z = u - 1

% Check
(z+1).^3
