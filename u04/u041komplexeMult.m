function [mult] = u041komplexeMult(z1,z2)
%U041KOMPLEXEMULT
%   Zeichnet die Punkte in der Gauss'schen Zahlenebene der zwei komplexen
%   Zahlen z1 und z2 inklusiv Resultat derer Multiplikation z1*z2

clf;
hold on;

mult = z1.*z2;
pvec = 0:0.01:1;
ls = z1.*(z2.^pvec);

hold on;
plot(z1, 'b*');
plot(z2, 'r*');
plot(mult, 'k*');
plot(ls, 'g');

legend('z1', 'z2', 'z1*z2', 'log. Spirale', 'Location','North');
hold off;

end