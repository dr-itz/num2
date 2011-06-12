% Uebung 70-5 - Vergleich zwischen einer selbst erstellten Euler-Loesung und
% der Bibliotheksprozedur ode45

clc; clear
ttot = 20;
yin = [0 0]';

[tsol, ysol] = selfEuler('dampedosc', ttot, yin );

[tsol45, ysol45] = ode45('dampedosc', ttot, yin);

% Darstellung von y(t)
figure(1); clf; hold on
title('Vergleich zwischen selbst erstellter Euler-Loesung und der Bibliotheksprozedur ode45')
% Werte von selfEuler
plot(tsol,ysol(:,1))
plot(tsol,ysol(:,2),'r')
% Werte von ode45
plot(tsol45, ysol45(:,1), 'g');
plot(tsol45, ysol45(:,2), 'm');
legend('tsol von selfEuler','ysol von selfEuler','tsol von ode45', 'ysol von ode45','Location','NorthWest') 
hold off