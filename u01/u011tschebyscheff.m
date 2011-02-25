% u011 Tschebyscheff-Polynome

x=(-1:0.01:1)';
tm = ones(201, 9);
tm(:,2) = x;
for i=3:9,
    tm(:, i) = 2*x.*tm(:, i-1) - tm(:, i-2);
end
plot(x, tm);
title('Tschebyscheff Polynome');
