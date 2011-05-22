function Jkug = kugjac(xvec)
%KUGJAC
%   Jacobi Matrix zu Kugelkoordinaten

Jkug = zeros(3);
rac = xvec(1);
tac = xvec(2);
wac = xvec(3);

Jkug(1,1) = cos(tac) * cos(wac);
Jkug(1,2) = -rac * sin(tac) * cos(wac);
Jkug(1,3) = -rac * cos(tac) * sin(wac);
Jkug(2,1) = cos(tac) * sin(wac);
Jkug(2,2) = -rac * sin(tac) * sin(wac);
Jkug(2,3) = rac * cos(tac) * cos(wac);
Jkug(3,1) = sin(tac);
Jkug(3,2) = rac * cos(tac);
Jkug(3,3) = 0;

end

