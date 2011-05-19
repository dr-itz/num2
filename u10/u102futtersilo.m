%  60-8  Futtersilo mit Bodenlagerung

% x = 0-6m und y = 0-2m
xb = 0:0.1:6;
yb = 0:0.1:2;
zb = zeros(length(yb), length(xb));
for k = 1:length(xb)
  for j = 1:length(yb)
     zb(j, k) = 0.2 * xb(k) * (xb(k)-6) * yb(j) * (yb(j)-2);
  end
end

contour3(xb, yb, zb, 20)
axis([0 6 -2 4 0 6]);
axis square
hold on

% Halteseile
t = 0:0.1:2;
ys = t;
% 9 Seile in +45 Grad Richtung (xs1, ys, zs1),
%  starten bei den x-Positionen 0, 0.5, 1, 1.5 ...4 m
% 9 Seile in -45 Grad Richtung (xs23, ys, zs2),
%   starten bei den x-Positionen 2, 2.5, 3, 3.5 ...6 m
for k = 1:9
  xs1 = ys + (k-1) * 0.5;
  zs1 = 0.2 * xs1 .* (xs1-6) .* ys .* (ys-2); 
  plot3(xs1, ys, zs1, 'k')
  
  xs2 = -ys + (k-1) * 0.5 + 2;
  zs2 = 0.2 * xs2 .* (xs2-6) .* ys .* (ys-2); 
  plot3(xs2, ys, zs2, 'k')
end

% Volumen
format bank
vol = 10 * sum(sum(zb))
