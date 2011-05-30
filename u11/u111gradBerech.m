% Gradient Berechnung analytisch und numerisch, sowie verschiedene graphische
% Darstellungen der Funktion im Bereich x,y = -3.5...3.5
% F(x,y) = sin(sqrt(x^2+y^2))/sqrt(x^2+y^2) = sin(r)/r 

clear; 

[X,Y] = meshgrid(-3.5:3.5);
A = X.^2+Y.^2
B = sqrt(X.^2+Y.^2)
C =sin(B)
C2 = sin(sqrt(X.^2+Y.^2))

Z = sin(sqrt(X.^2+Y.^2))./sqrt(X.^2+Y.^2);

% Gradient analytisch
% grada = [diff(Z,X) diff(Z,Y)]'

% Gradient numerisch
[PX, PY] = gradient(Z)

% Graphische Darstellungen mit Contour, 3D Contour, Farbzonen-Contour,
% Flaechenplot und Flaechenplot mit Contour-Ueberlagerung
pause on
fprintf('\nUnterschiedliche graphische Darstellungen der Funktion\n')
fprintf('F(x,y) = sin(sqrt(x^2+y^2)) / sqrt(x^2+y^2)\n\n')
fprintf('-> Press any key to continue for "Contour"\n')
pause, clc, clf, figure(1), hold on
title('Darstellung mit Contour')
contour(X,Y,Z)
quiver(X,Y,PX,PY)    %mit Pfeilen als graph. Darstellung der Ableitung
axis image; hold off

fprintf('-> Press any key to continue for "3D Contour"\n')
pause, clc, clf, figure(1), hold on
contour3(X,Y,Z)
quiver(X,Y,PX,PY)
axis([-3.5 3.5 -3.5 3.5 0 1]);
view(-19,24);

title('Darstellung mit 3D Contour')
hold off

fprintf('-> Press any key to continue for "Farbzonen-Contour"\n')
pause, clc, clf, figure(1), hold on
contourf(X,Y,Z)
title('Darstellung mit Farbzonen-Contour')
hold off

fprintf('-> Press any key to continue for "Flächenplots"\n')
pause, clc, clf, figure(1), hold on
title('Darstellung eines Flächenplots')
surf(X,Y,Z)
view(68,48)
hold off

fprintf('-> Press any key to continue for "Darstellung\n')
fprintf('   eines "Flächenplots mit Contour-Überlagerung" (Ende)\n\n')
pause, clf, figure(1), hold on
title('Darstellung eines Flächenplots mit Contour-Überlagerung')
surfc(X,Y,Z)
view(-23,36)
hold off

fprintf('-> Press any key to continue')
pause

clc;
reply = input('Nochmals alle darstellen? -> Press Y/N [N]: ', 's');

if isempty(reply) 
    reply = 'N';
end
if reply == 'Y'
    u111gradBerech
else 
    clf, clc, clear
end