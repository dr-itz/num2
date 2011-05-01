% Serie von homogenen Koordinatentransformationen: Buch S.219/T425
% Zeichnen eines achtstrahligen Windraedchens

figure(1)

P = [0 8 2 0; 0 0 2 0]
plot(P(1,:), P(2,:), 'b')

s = sqrt(2)/2;
M = [s -s; s s];

hold on

for k=1:7,
    Q = M^k * P;
    plot(Q(1,:), Q(2,:), 'b')
end
