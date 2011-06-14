% Differentialgleichungen zweiter Ordnung: Buch S.327 / 70-7
%   Stellen Sie die Differentialgleichungssysteme auf fuer die folgenden
%   Differentialgleichungen hoeherer Ordnung:
%       y'' = -y
%       y'' + 0.1*y' + 25*y = 0
%       y'''' = 0
%   Berechnen Sie diese mit MATLAB fuer die Anfangswerte y(0) = 1 und
%   y',y'',y''' = 0 im Bereich x = 0..4

% DGL y'' = -y => harmonosc
% Startvektor
yin = [1 0]';

% Ableitungswerte
[tsol, ysol] = ode45('harmonosc', 4, yin);

% Darstellung von y(t)
figure(1); clf
plot(tsol, ysol(:,1))
TITLE('Differentialgleichung: y'''' = -y')
hold on
plot(tsol,ysol(:,2),'r')
hold off

% DGL y'' + 0.1*y' + 25*y = 0 => dmposc501
% Startvektor
yin = [1 0]';

% Ableitungswerte
[tsol, ysol] = ode45('dmposc501', 4, yin);

% Darstellung von y(t)
figure(2); clf
plot(tsol, ysol(:,1))
TITLE('Differentialgleichung: y'''' + 0.1 * y'' + 25 * y = 0')
hold on
plot(tsol,ysol(:,2),'r')
hold off

% DGL y'''' = 0 => splinederiv
% Startvektor
yin = [1 0 0 0]';

% Ableitungswerte
[tsol, ysol] = ode45('splinederiv', 4, yin);

% Darstellung von y(t)
figure(3); clf
plot(tsol, ysol(:,1))
TITLE('Differentialgleichung: y(IV) = 0')
hold on
plot(tsol,ysol(:,2),'r')
hold off
