% Kugelkoordinaten, Buch S.295/60-32

% Vektor mit den Schaetz- bzw. Startwerten
xvec = [4 0.4 0.6]';

% Iteration von 1 bis 3, da 2-3 Verbesserungsschritte verlangt sind
for i = 1:3
    xvec = xvec - kugjac(xvec) \ kugfct(xvec)
end