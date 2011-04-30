% Selbst programmierte DFT: die ersten 9 cos-Koeffizienten

f = [1 1 1 1 1 zeros(1,21) 1 1 1 1];
T = length(f);
a = zeros(1,9);

for k = 0:8,
    sc = 0;
    for t = 0:T-1,
        sc = sc + f(t+1) * cos(k*t*2*pi/T);
    end
    a(k+1) = 2 * sc / T;
end

a

plot(f, 'r-');
hold on;
f2 = zeros(1,T);
for t = 1:T,
    f2(t) = a(1)/2;
    for k = 1:8,
        f2(t) = f2(t) + a(k+1)*cos(k*t*2*pi/T);
    end
end
plot(f2, 'g-');
hold off;
figure(1)
