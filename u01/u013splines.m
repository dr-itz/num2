% u013 Elementare kubische Splines

fprintf ('Teilaufgabe a')
T = [0 0 0 1; 0 0 1 0; 1 1 1 1; 3 2 1 0];
s = [1; 0; 0; 0;];
aa = T \ s

fprintf ('Teilaufgabe b')
T = [0 0 0 1; 0 0 1 0; 1 1 1 1; 3 2 1 0];
s = [0; 1; 0; 0;];
ab = T \ s

fprintf ('Teilaufgabe c')
T = [0 0 0 1; 0 0 1 0; 1 1 1 1; 3 2 1 0];
s = [0; 0; 1; 0;];
ac = T \ s

fprintf ('Teilaufgabe d')
T = [0 0 0 1; 0 0 1 0; 1 1 1 1; 3 2 1 0];
s = [0; 0; 0; 1;];
ad = T \ s


t = 0:0.001:1;
f = @(a) a(1).*t.^3 + a(2).*t.^2 + a(3).*t + a(4);
plot(t, f(aa), 'r');
hold on
plot(t, f(ab), 'g');
plot(t, f(ac), 'b');
plot(t, f(ad), 'm');

title('Elementare Splines');
legend('a)', 'b)', 'c)', 'd)','Location','North');
grid on;
hold off
