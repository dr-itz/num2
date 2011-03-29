
A = [2 0]';
B = [8 0]';
C = [5 6]';

d = [A B C A];
d = [d; [1 1 1 1]];

clf;
plot(d(1,:), d(2,:), 'b');
hold on; axis equal;

% Schwerpunkt
s = (A + B + C) ./ 3;

% translation in schwerpunkt
t0 = [1 0 -s(1); 0 1 -s(2); 0 0 1]

% drehen
w = 360-90;
dw = [cosd(w) -sind(w) 0; sind(w) cosd(w) 0; 0 0 1]

% spiegeln an y-achse
sy = [1 0 0; 0 -1 0; 0 0 1]

% translation zurueck
tS = [1 0 s(1); 0 1 s(2); 0 0 1];

% gesamte translation
ttot = tS * sy * dw * t0

% neues dreieck
dt = ttot * d
plot(dt(1,:), dt(2,:), 'r');
figure(1);
