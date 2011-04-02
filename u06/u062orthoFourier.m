clc; clear;

w = 0:36:360;

c = zeros(3, length(w));
s = zeros(3, length(w));
for k = 1 : 3,
    c(k, :) = cosd(k * w);
    s(k, :) = sind(k * w);
end

for k = 1 : 3,
    fprintf('cos, k=%d\n', k);
    fprintf(' self: %f\n', fctscalprod(w, c(k,:), c(k,:)));
    for l = 1 : 3,
        if l ~= k,
            fprintf(' cos, k=%d: %f\n', l, fctscalprod(w, c(k,:), c(l,:)));
        end
        fprintf(' sin, k=%d: %f\n', l, fctscalprod(w, c(k,:), s(l,:)));
    end
    fprintf('sin, k=%d\n', k);
    fprintf(' self: %f\n', fctscalprod(w, s(k,:), s(k,:)));
    for l = 1 : 3,
        if l ~= k,
            fprintf(' sin, k=%d: %f\n', l, fctscalprod(w, s(k,:), s(l,:)));
        end
        fprintf(' cos, k=%d: %f\n', l, fctscalprod(w, s(k,:), c(l,:)));
    end
end
