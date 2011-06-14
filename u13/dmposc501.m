function deri = dmposc501(t,yvec)
%DMPOSC501, Beispiel gedaempfter Oszillator
%   Ableitungsfunktion: y'' + 0.1*y' + 25*y = 0

deri    = zeros(2,1);
deri(1) = yvec(2);
deri(2) = -25*yvec(1) - 0.1*deri(1);

end