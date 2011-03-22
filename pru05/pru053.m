%
% pru053
%

A = [2 0 1]';
B = [6 0 1]';
C = [4 2 1]';

f = [A B C A]

clf; hold on;
plot(f(1,:), f(2,:), 'b');
axis equal;
figure(1);

% translation der geraden y=5 nach 0/0
yT = [0 5]';
t0 = [1 0 -yT(1); 0 1 -yT(2); 0 0 1];

% spiegeln an y-achse
sy = [1 0 0; 0 -1 0; 0 0 1]

% translation zurueck
tA = [1 0 yT(1); 0 1 yT(2); 0 0 1];

% gesamte translation
ttot = tA * sy * t0

% neues dreieck
ft = ttot * f

% ausgabe
plot(ft(1,:), ft(2,:), 'r');
plot([-10 10], [5 5], 'k');
legend('Original', 'Gespiegelt', 'Gerade y=5', 'Location', 'NorthWest');
figure(1);
