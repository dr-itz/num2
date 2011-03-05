function [ T1, T2, P1, P2 ] = u021( v )
% U021 Permutationsmatrizen aus Permutationsvektoren
% Input Parameter v: Permutationsvektor mit beliebiger Reihenfolge
%                    der Zahlen von 1 bis n
%                    Bsp: v = [3 5 1 2 4] 
%
% Output Parameter T1, T2, P1, P2: 2 quadratische n x n Turmmatrizen, wobei
% T1 fuer die Zeilenpermutation P1 bei Multiplikation von links und 
% T2 fuer die Spaltenpermutation P2 bei Multiplikation von rechts verwendet
% werden

clc;

[n,m] = size(v);
T1 = zeros(n);
T2 = zeros(n);

for i = 1:n
    T1(i,v(i)) = 1;
    T2(v(i),i) = 1;
end

T1
T2
M = rand(n)

fprintf('Kontrolle Zeilenpermutation bei Links-Multiplikation P1 = T1 * M:')
P1 = T1*M

fprintf('Kontrolle Spaltenpermutation bei Rechts-Multiplikation P2 = M * T2:')
P2 = M*T2

end