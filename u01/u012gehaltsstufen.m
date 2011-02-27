%Aufgabe u012
%Von 5 h?heren Gehaltsstufen verdient jede n?chsth?here Stufe 20% mehr als die darunterliegende
%und dazu 20'000 Fr mehr pro Jahr. Gesamtsumme = 1'000'000
% -: gs1 = gs1
% 1: gs2 = 1.2*gs1 + 20
% 2: gs3 = 1.2*gs2 + 20
% 3: gs4 = 1.2*gs3 + 20
% 4: gs5 = 1.2*gs4 + 20
% 5: gs1+gs2+gs3+gs4+gs5 = 1000
% A * x = b

A=[-1.2 1 0 0 0; 0 -1.2 1 0 0; 0 0 -1.2 1 0; 0 0 0 -1.2 1; 1 1 1 1 1]
b=1000*[20 20 20 20 1000 ]'

format bank
fprintf('Gehaltsstufen');
x = A\b

s = zeros(5,2);
s(2:5,1) = 1.2*x(1:4,:);
s(:,2) = x;
bar(s);
title('Gehaltsstufen');
legend('Vorgaenger + 20%', 'Gehaltstufe', 'Location', 'Northwest');

format short
