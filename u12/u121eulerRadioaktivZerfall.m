% u121: Euler-Loesung des radioaktiven Zerfalls

figure(1)
hold on

% Erzeugen Richtungsfeld y'(t,y) = -0.1 * y
%   Kopiertes Skript decayfield.m
xlin = [0 25];
ylin = [ 0 0];
plot(xlin,ylin)
axis([0 25 0 16])
hold on
for k=1:24
  for l=1:15
     xdir = [k-0.2 k+0.2];
     ydir = [l+l*0.02 l-l*0.02];
     plot(xdir,ydir)
     xpt = k;
     ypt = l;
     plot(xpt,ypt,'.')
  end
end

% Berechnen der ersten 3 Euler-Schritte fuer die Werte h = 1, h = 0.5 und
% h = 0.1

% Startwert y(0) = 18
start = 18;

% fuer h = 1
h1 = 1;
res1 = eulerVerfahren(start,h1)

% fuer h = 0.5
h2 = 0.5;
res2 = eulerVerfahren(start,h2)

% fuer h = 0.1
h3 = 0.1;
res3 = eulerVerfahren(start,h3)

% Zeichnen der Funktion ins Richtungsfeld (h = 1)
x=1:(20/h1);
plot(x,res1,'r')

% Zeichnen der Funktion ins Richtungsfeld (h = 0.5)
x=1:(20/h2);
plot(x,res2,'m')

% Zeichnen der Funktion ins Richtungsfeld (h = 0.1)
x=1:(20/h3);
plot(x,res3,'g')
