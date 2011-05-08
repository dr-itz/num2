% Die Gradient-Vektorfunktion - Uebung 60-11
% Gradient: alle partiellen Ableitungen in einem Vektor zusammengefasst

% gradF = [dF/dx dF/dy dF/dz]'

syms x y z real

% a)
F1 = x^2 + y^2;
fprintf('\nF1 = x^2 + y^2')
gradF1 = [diff(F1,x) diff(F1,y)]'

% b)
% 0 <= x,y <= 2*pi
F2 = sym(sin(x) .* cos(y));
fprintf('F2 = sin(x) * cos(y)')
gradF2 = [diff(F2,x) diff(F2,y)]'

% c)
F3 = 1 / sqrt(x^2+y^2+z^2);
fprintf('F3 = 1 / sqrt(x^2+y^2+z^2)')
gradF3 = [diff(F3,x) diff(F3,y) diff(F3,z)]'