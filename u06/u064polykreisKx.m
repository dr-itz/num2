% Vielecke im komplexen Einheiskreis 
% Der Vektor v1 aus komplexen Zahlen zeichnet ein im Einheitskreis
% einbeschriebenes regulaeres Siebeneck.
% Mit dem Vektor v2 hat das Siebeneck eine seiner Ecken bei i. 

figure(1); clf;

% Einheitskreis
w = 0 : pi/200 : 2*pi;  % Zeilenvektor mit fein tabellierten w-Werten
z = exp(j*w);
plot(z) ; axis square; hold on;
plot([0 0],[-2 2],'k') ;  
plot([-2 2],[0 0],'k') ; 

% Siebeneck
n = 7;
k = 0:n;
v1 = exp(j * k*2*pi/n);
plot(v1,'k');
   
% Siebeneck mit einer Ecke in i
v2 = exp(j * (k*2*pi/n + pi/2));
plot(v2,'r');

title('Siebeneck im komplexen Einheitskreis');
hold off;
