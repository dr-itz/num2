function [ T1, T2 ] = u021permutation( v )
% U021 Permutationsmatrizen aus Permutationsvektoren
% Input Parameter v: Permutationsvektor mit beliebiger Reihenfolge
%                    der Zahlen von 1 bis n
%                    Bsp: v = [3 5 1 2 4]'
%
% Output Parameter T1, T2: 2 quadratische n x n Turmmatrizen, wobei
% T1 fuer die Zeilenpermutation bei Multiplikation von links und 
% T2 fuer die Spaltenpermutation bei Multiplikation von rechts verwendet
% werden

[n,m] = size(v);
T1 = zeros(n);
T2 = zeros(n);

for i = 1:n
    T1(i,v(i)) = 1;
    T2(v(i),i) = 1;
end

end
