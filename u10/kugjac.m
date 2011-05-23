function Jkug = kugjac(xvec)
%KUGJAC
%   Jacobi Matrix zu Kugelkoordinaten

Jkug = zeros(3);

Jkug(1,1) = cos(xvec(2)) * cos(xvec(3));
Jkug(1,2) = -xvec(1) * sin(xvec(2)) * cos(xvec(3));
Jkug(1,3) = -xvec(1) * cos(xvec(2)) * sin(xvec(3));
Jkug(2,1) = sin(xvec(2)) * cos(xvec(3));
Jkug(2,2) = xvec(1) * cos(xvec(2)) * cos(xvec(3));
Jkug(2,3) = -xvec(1) * sin(xvec(2)) * sin(xvec(3));
Jkug(3,1) = sin(xvec(3));
Jkug(3,2) = 0;
Jkug(3,3) = xvec(1) * cos(xvec(3));

end
