% Anwenden der pseudoinversen Matrix - Uebung 60-29
% Hinweis: svd liefert U, S, und V'. Aplus ist dann V*Splus*U'. Splus erhält 
% man, indem man S zuerst transponiert und dann alle Singulärwerte, welche 
% nicht Null sind durch ihre Inversen Werte ersetzt. 

clc, clear, format short

x1 = [-3:3]';

% Funktion 
syms x
grad = 3;
k = 1;
for i = grad:-1:0
    f(k) = x.^i;
    for j = 1:size(x1)
    A(j,k) = (x1(j,1)).^i;
    end
    k = k+1;
    j = j+1;
end
syms x clear
fprintf('\nFehlergleichungsmatrix der Funktion vom Grad %d', grad)
fprintf('\nfür Fit an die Punkte x = -3:3\n')
f
A

fprintf('\nAnwenden der pseudoinversen Matrix für folgende y-Werte:\n')
y1 = [-1 1 1 0 0 1 3]
y2 = [ 1 2 1 2 3 3 5]

[U,S,V] = svd(A);

% Pseudoinverse Singulärwert Matrix
Splus = S';
n = length(S(1,:));
for i = 1:n
    if Splus(i,i) == 0
        Splus(i,i) = 0;
    else
        Splus(i,i) = 1/Splus(i,i);
    end
end

fprintf('Pseudoinverse Matrix:\n')
Aplus = V*Splus*U'

fprintf('Parameter von SVD und Vergleich mit direkter Fehlergleichungslösung:\n')
psy1 = (Aplus * y1')'
pfy1 = (A \ y1')'
psy2 = (Aplus * y2')'
pfy2 = (A \ y2')'
