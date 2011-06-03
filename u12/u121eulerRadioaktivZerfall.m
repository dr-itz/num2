% u121: Euler-Loesung des radioaktiven Zerfalls

figure(1)
hold on

% Erzeugen Richtungsfeld y'(t,y) = -0.1 * y
%   Kopiertes Skript decayfield.m
xlin = [0 20];
ylin = [ 0 0];
plot(xlin,ylin)
axis([0 20 0 18])
hold on
for k=1:20
  for l=1:18
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
x=0:h1:20;
p1 = plot(x,res1,'r');

% Zeichnen der Funktion ins Richtungsfeld (h = 0.5)
x=0:h2:20;
p2 = plot(x,res2,'m');

% Zeichnen der Funktion ins Richtungsfeld (h = 0.1)
x=0:h3:20;
p3 = plot(x,res3,'g');

% Zeichnen der analytischen Loesung
x=0:0.1:20;
y=18*exp(-0.1*x);
p4 = plot(x,y,'k');

legend([p1 p2 p3 p4],'h=1','h=0.5','h=0.1','y=18*exp(-0.1*x)')
