w=0:.1:2*pi;
k=exp(i*w);
figure(1)
clf
axis equal
plot(k)
hold on; 
grid on;

start=pi;
sieben=[];
% ein Siebeneck im komplexen Einheitskreis erhält man mit der 7. Wurzel
% exp(i*(startwinkel/n+k*2*pi/n)) n=0:n-1 gibt die 7 Eckpunkte
for k=0:6
	ecke =exp(i*(start/7+k*2*pi/7));
	sieben=[sieben ecke];
end
sieben=[sieben sieben(1)]
plot(sieben,'rd-')

% Damit eine Ecke bei +i liegt dreht man den Startvektor nach -i = 1.5*pi
start=1.5*pi
sieben=[];
for k=0:6
	ecke =exp(i*(start/7+k*2*pi/7));
	sieben=[sieben ecke];
end

plot(sieben,'m+-')
