% u054
% eckig komplexe Spirale, by Patrik Keller
% gesucht min p1 wenn imag(z^p1) negativ und wann wieder positiv
z1=1+i*0.2;

% suchen bis Imagin�rteil kleiner 0
disp('Potenz suchen, bis Imagin�rteil von 1+i*0.2^p kleiner 0:')
p1=1;
while imag(z1^p1)>=0
    p1=p1+1;
end
disp('kleinste Potenz, so dass Imagin�rteil kleiner 0',p1)
z1^p1;

% jetzt weitersuchen bis wieder >0
p2=p1;
while imag(z1^p2)<0
    p2=p2+1;
end
disp('n�chst gr�ssere Potenz bis Imagin�rteil wieder positiv',p2)
z1^p2;

