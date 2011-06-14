function deri = harmonosc(t,yvec)
%HARMONOSC, einfacher harmonischer Oszillator
%   Ableitungsfunktion: y'' = -y

deri    = zeros(2,1);
deri(1) = yvec(2);
deri(2) = -yvec(1);

end
