% Uebung 70-6 - Umsetzen von Differentialgleichungen
% Hinweis: Fuer jede Ordnung, die ueber 1 hinausgeht, muss simultan zur gesuchten 
% Hauptfuktion y(t) noch eine weitere Hilfsfunktion bestimmt werden. Damit wird 
% erreicht, dass aus der DGL hoeherer Ordnung ein aequivalentes System von DGLs 
% entsteht, die alle nur von 1. Ordnung sind. 

% DGL des gedaempften, angeregten Oszillators: y'' + d * y' + w^2 * y = a * sin(w*t)

% Anfangsbedingung
yin = [0 0]';

% Ableitungswerte
[tsol,ysol]= ode45('dampedosc', 20, yin)

% Darstellung von y(t)
figure(1); clf
plot(tsol,ysol(:,1))
hold on
plot(tsol,ysol(:,2),'r')
hold off
