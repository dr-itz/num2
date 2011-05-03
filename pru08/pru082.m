% pru082

clf; clear; format compact;
hold on;
axis equal;

% Original-L
L = [5 5 6; 2 0 0; 1 1 1];
plot(L(1,:), L(2,:), 'k');

% Hilfsfunktionen
rot = @(w) [cosd(w) -sind(w) 0; sind(w) cosd(w) 0; 0 0 1];
trans = @(x, y) [1 0 x; 0 1 y; 0 0 1];
rottrans = @(x, y, w) trans(x, y) * rot(w) * trans(-x, -y);

% Alle Winkel und Fraben
angles = [45, 90, 135];
colors = ['r', 'g', 'b'];

% Drehungen und Translationen fuer alle Winkel
for i = 1:length(angles),
    d = rot(angles(i));
    Ld = d * L;
    plot(Ld(1,:), Ld(2,:), colors(i));
    
    T2 = rottrans(Ld(1,2), Ld(2,2), -angles(i));
    T2 * d
    L2 = T2 * Ld;
    plot(L2(1,:), L2(2,:), colors(i));
end

figure(1);
