% u083 Fit mit Gewicht
% Idee jeder Punkt hat einen individuellen Fehler
% http://pi.physik.uni-bonn.de/~aprakt/AP-A4.pdf

% Startwerte
x=[-2:1:2];
y= [-2 0 1 1.5 3];
wk=[4 2 1 2 4]';

% x,y mit Abweichung Plotten
% Kreise bei x,y
clf
gcf
plot(x,y,'ro');
axis([x(1)-1 x(length(x))+1 -4 4]); hold on; grid on;
title('u083 Fit mit Gewicht')
text(-0.5,-2.5,'blau/magenta = linear Fit; rot = lin. Fit mit Gewicht')

  % Abweichungen = Linien bei xk, von yk-0.5(ws(k)) bis yk+0.5(ws(k))
  for k=1:size(x,2)
      wkL=[y(k)-0.5*wk(k) y(k)+0.5*wk(k)];
    plot([x(k) x(k)], wkL,'r');
  end

% n1 Normalengleichung
disp('Normalengleichung')
A=[sum(x.^2) sum(x); sum(x) length(x)]
b=[0;0];
for k=1:length(x)
    b(1)=b(1)+( y(k)*x(k) );
end
b(2)=sum(y);
b
n1=A\b

% n2 Normalengleichung mit Gewicht

% g1 Geradenfit
disp('Geradenfit')
A=[x(1,:); ones(1,5)]'
y=y'
disp('A*g = y  // gX = g(1)*x + g(2)')
g1=A\y

% g2 Geradenfit mit Gewicht
% jede Zeile mit Gewichtungsfaktor aus wk multiplizieren
disp('Geradenfit mit Gewicht')
for k=1:size(x,2)
    A(k,:)=A(k,:)*wk(k);
    y(k)=y(k)*wk(k);
end

wk
g2=A\y

% innere Funktion für Gerade
% x = x-Position
% g1 = Paramter der Geraden y = x*g(1) + g(2)
gerade = @(x,g) x*g(1)+g(2);


% Gerade Normalengleichung plotten
X=[x(1)-1 x(length(x))+1];
gerade([-3 3],[1.1;0.7])
Y=[gerade(X(1),n1) gerade(X(2),n1)];
plot(X,Y,'mo-')

% Gerade Fehlergleichung 1 plotten
X=[x(1)-1 x(length(x))+1];
Y=[gerade(X(1),g1) gerade(X(2),g1)];
plot(X,Y,'b--');

% Gerade Fehlergleichung mit Fit 2 plotten
X=[x(1)-1 x(length(x))+1];
Y=[gerade(X(1),g2) gerade(X(2),g2)];
plot(X,Y,'r')








