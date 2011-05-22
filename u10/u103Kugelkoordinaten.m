% Kugelkoordinaten, Buch S.295/60-32
xstart = [5 0.5 0.3]';
xaktuell = xstart

for i = 1:8
    ferr = kugfct(xaktuell)
    delx = -kugjac(xaktuell) \ ferr
    xaktuell = xaktuell + delx
    pause
end

