% Potenzen von komplexen Zahlen
% ergibt sogenannte logarithmische Spiralen

clf
figure(1)
potv = 1:0.1:12;

% 1. komplexe Zahl
z1 = sqrt(3)/2 + 0.5*i;
r1 = abs(z1);
w1 = angle(z1);         %Winkel in Radiant
wd1 = w1*180/pi;        %Winkel in Grad umrechnen
zpv1 = z1.^potv;
plot(zpv1)

% 2. komplexe Zahl mit Spiralkonstante im Vergleich
z2 = sqrt(3)/2 + 0.6*i;
r2 = abs(z2);
w2 = angle(z2);  
wd2 = w2*180/pi;  
zpv2 = z2.^potv;
hold on
sc = log(r2^(1/w2));   %Spiralkonstante
wv = (0:0.01:3)*1.5*pi;
xls = exp(sc*wv).*cos(wv);
yls = exp(sc*wv).*sin(wv); 
plot(zpv2,'r')
plot(xls,yls,'k:')     %Verlgeich

% 3. komplexe Zahl
z3 = sqrt(3)/2 + 0.7*i;
r3 = abs(z3);
w3 = angle(z3);  
wd3 = w3*180/pi;  
zpv3 = z3.^potv;
plot(zpv3,'k')

axis equal
hold off