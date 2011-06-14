function deri = splinederiv(t,yvec)
%SPLINEDERIV, Ableitung der Spline-Bedingung y(IV) = 0
%   Ableitungsfunktion: y'''' = 0

deri    = zeros(4,1);
deri(1) = yvec(2);
deri(2) = yvec(3);
deri(3) = yvec(4);
deri(4) = 0; 

end
