% Links-Matrix und b, irgendwelche Werte
L = [1 0 0; 1 2 0; 1 2 3]
b = [1 2 3]'

x = zeros(3,1);

% Vorwaertseinsetzen
x(1) = b(1) ./ L(1,1);
x(2) = b(2) ./ (L(2,2) - L(2,1) .* x(1));
x(3) = b(3) ./ (L(3,3) - L(3,1) .* x(1) - L(3,2) .* x(2));

x
