function [LRK] = pru042(L,R)
%PRU042 LR-Kombination
%   Eingabe: je eine L- und eine R-Matrix
%   Ausgabe: zusammengepackte Matrix LRK

[nzei,nspa] = size(L);
LRK = R;

for spa = 1:(nspa-1)
    for zei = (spa+1):nzei
        LRK(zei,spa) = L(zei,spa);
    end
end

end