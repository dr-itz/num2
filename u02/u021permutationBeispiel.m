% Beispiel fuer Zeilen- und Spaltenpermutation

v = [3 5 1 2 4]'

[ T1, T2 ] = u021permutation( v )

M = [11 12 13 14 15; 21 22 23 24 25; 31 32 33 34 35; ...
    41 42 43 44 45; 51 52 53 54 55]

fprintf('Kontrolle Zeilenpermutation bei Links-Multiplikation P1 = T1 * M:\n')
P1 = T1*M

fprintf('Kontrolle Spaltenpermutation bei Rechts-Multiplikation P2 = M * T2:\n')
P2 = M*T2
