% gesucht min p1 wenn imag(z^p1) wird negativ
z1=1+i*0.2;

% suchen bis Imaginärteil kleiner 0
p1=1
while imag(z^p1)>=0
    p1=p1+1;
end
p1
z^p1

% jetzt weitersuchen bis wieder >0
p2=p1
while imag(z^p2)<0
    p2=p2+1;
end
p2 
z^p2