function [ T ] = u053indSeqGauss( n )
% Index-Sequenz beim Gauss-Algorithmus
% Diese Funktion beschreibt die Reihenfolge der zu Null zu machenden
% Elemente im Verlauf der Gauss-Elimination
%
% Input Parameter n: Matrix Dimension nxn
% Output Parameter T: Index-Tabelle mit Spalten- und Zeilenindizes

l = (n-1)*n/2;
T = [l,2];
k = 1;

for spa = 1:n-1
    for zei = spa+1:n
        T(k,1) = spa;
        T(k,2) = zei;
        k = k+1;
    end
end
end

