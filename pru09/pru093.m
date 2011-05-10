% Stellen Sie das Gleichungssystem auf zur Lösung des Optimierungsproblems
% mit der Methode der Lagrange-Multiplikatoren
%    F(x,y,z) = 8*x^2 + 2*y^2 + 4*z^2 => min
% und der Bedingung x - 2*y - 4*z = 16
% Das Gleichungssystem ist in diesem Fall linear, deshalb soll auch noch
% die zugehörige Matrix-Vektor-Form des Gleichungssystems bestimmt werden. 

% Nebenbedingung in 0-Form: x - 2*y - 4*z - 16 = 0
% Zielfkt: L(x,y,z,l) = 8*x^2 + 2*y^2 + 4*z^2 + l*(x - 2*y - 4*z - 16)

% Gleichungsystem
%   16*x             +   l      = 0
%          4*y       - 2*l      = 0
%                8*z - 4*l      = 0
%   x    - 2*y - 4*z       - 16 = 0

format compact

% Matrik-Vektor-Darstellung: M * u = v
M = [16 0 0 1; 0 4 0 -2; 0 0 8 -4; 1 -2 -4 0]
v = [0 0 0 16]'

u = M \ v;
x = u(1)
y = u(2)
z = u(3)
l = u(4)

