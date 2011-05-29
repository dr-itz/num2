% u112 Lagrange  Multiplikatoren

% Stellen Sie das Gleichungssystem auf zur Lösung des 
% Optimierungsproblems mit der Methode der Lagrange-Multiplikatoren:
% F(x,y,z) = x^2 + 5*y^2 + 10*z^2
% und der Bedingungen 
% 2*x-4*y+z=12     => 2*x-4*y+z - 12 = 0
%

% Zielfuntkion: L(x,y,z,la1,la2) = x^2 + 5*y^2 + 10*z^2 + la1*(2*x-4*y+z - 12) 

% Gleichungssytem
% dL/dx  = 2*x              + la1*2       = 0
% dL/dy  =       10*y       - la1*4       = 0
% dL/dz  =             20*z + la1         = 0
% dL/dl1 = 2*x - 4*y   +z           -12   = 0 


M=[ 2  0  0  2 ;
    0 10  0 -4 ;
    0  0 20  1 ;
    2 -4  1  0  ]

v= [ 0 0 0 +12]'
u = M \ v
disp('v(1) = x, v(2) = y, v(3) = z')
disp('v(4) = lambda1')