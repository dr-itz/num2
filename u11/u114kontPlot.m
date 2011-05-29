% Konturplots einfacher Matrizen, Buch S.291/60-4
%   Bestimmen Sie auch fuer diese Indexwert-Matrix den Gradienten,
%   zeichnen Sie diesen in den Konturplot mit quiver ein und beachten Sie
%   die Orthogonalitaet zwischen Hoehenlinien und Gradientvektoren.

figure(1)

z = indexmat(9);
[px,py] = gradient(z,.2,.2);
contour(z), hold on, quiver(px,py), hold off

pause

Du = zeros(21);

for i = 1:21
    for j = i:41
        Du(i,j) = j - i;
    end
end

% Durch "Ph = [Du fliplr(Du)]" und "P = [flipud(Ph) ; Ph]" erhaelt man
% die Funktion einer Pyramide
Ph = [Du fliplr(Du)];
P = [flipud(Ph) ; Ph];

surf(P)

axis equal
view(-20,62)
