function [xp, yp] = pru041(x,y)
%PRU041 numerische Ableitung
%   Eingabe: je ein x-Vektor und y-Vektor
%   Grafische Ausgabe: Funktionskurve schwarz und deren Ableitung rot

n = size(x,1);

plot(x,y,'k')

yp = (y(2:n) - y(1:n-1)) ./ (x(2:n) - x(1:n-1));
xp = (x(2:n) + x(1:n-1)) / 2;

hold on

plot(xp,yp, 'r')

end
