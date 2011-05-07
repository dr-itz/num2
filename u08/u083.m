% u083 Fit mit Gewicht
% Idee jeder Punkt hat einen individuellen Fehler
% http://pi.physik.uni-bonn.de/~aprakt/AP-A4.pdf

% Startwerte
x=[-4:2:4];
y= [2 6 5 5 7];
wk=[2 4 3 2 1]';

% x,y mit Abweichung Plotten
% Kreise bei x,y
clf
title('u083 Fit mit Gewicht')
text(0,0.5,'blau = linear Fit; rot = lin. Fit mit Gewicht')
plot(x,y,'ro');
axis([x(1)-1 x(length(x))+1 0 10]); hold on; grid on;

  % Abweichungen = Linien bei xk, von yk-0.5(ws(k)) bis yk+0.5(ws(k))
  for k=1:size(x,2)
      wkL=[y(k)-0.5*wk(k) y(k)+0.5*wk(k)];
    plot([x(k) x(k)], wkL,'r');
  end


% g1 Geradenfit
A=[x(1,:); ones(1,5)]'
y=y'
disp('A*g = y  // gX = g(1)*x + g(2)')
g1=A\y

% g2 Geradenfit mit Gewicht
% jede Zeile mit Gewichtungsfaktor aus wk multiplizieren
for k=1:size(x,2)
    A(k,:)=A(k,:)*wk(k);
    y(k)=y(k)*wk(k);
end
disp('wk =') 
wk
g2=A\y


% Gerade 1 plotten
X=[x(1)-1 x(length(x))+1];
Y=[gerade(a(1),g1) gerade(a(2),g1)];
plot(X,Y,'b');

% Gerade 2 plotten
X=[x(1)-1 x(length(x))+1];
Y=[gerade(a(1),g2) gerade(a(2),g2)];
plot(X,Y,'r')




% innere Funktion für Gerade
% x = x-Position
% g1 = Paramter der Geraden y = x*g(1) + g(2)
gerade = @(x,g) [x*g(1)+g(2)];
