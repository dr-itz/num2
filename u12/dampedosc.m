function [ deriv ] = dampedosc( t, yac )

w = 2;
d = 0.1;
a = 0.5;

deriv    = zeros(2,1);
deriv(1) = yac(2);
deriv(2) = -d * yac(2) - w^2*yac(1) + a*sin(w*t);

end

