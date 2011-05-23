% Kugelkoordinaten, Buch S.295/60-32

% Vektor mit den Schaetz- bzw. Startwerten
xvec = [4 0.4 0.6]';

for i = 1:3
    xvec = xvec - kugjac(xvec) \ kugfct(xvec)
end