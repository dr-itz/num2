% u014 Versiera Di Agnesi
a = 2;
x = (-5:0.01:5);
y = a.^3 ./ (x.^2 + a.^2);

n = size(y,2);

y1 = (y(2:n) - y(1:n-1)) ./ (x(2:n) - x(1:n-1));
x1 = (x(2:n) + x(1:n-1)) ./ 2;

y2 = (y1(2:n-1) - y1(1:n-2)) ./ (x1(2:n-1) - x1(1:n-2));
x2 = (x1(2:n-1) + x1(1:n-2)) ./ 2;

plot(x, y, 'r');
hold on;
plot(x1, y1, 'g');
plot(x2, y2, 'b');

title('Versiera Di Agnesi');
ylabel('y');
xlabel('x');
legend('y(x)', 'y''(x)', 'y''''(x)');
grid on;

hold off;
