% u094 Lagrange  Multiplikatoren
% Stellen Sie das Gleichungssystem auf zur Lösung des 
% Optimierungsproblems mit der Methode der Lagrange-Multiplikatoren:
% F(x,y,z) = 2*x^2 + 3*y^2 + 3*z^2
% und den 2 Bedingungen 
% x-2*y=5      => x-2*y  - 5 = 0
% 2*y+z=10     =>   2*y+z-10 = 0

% Zielfuntkion: L(x,y,z,la1,la2) = 2*x^2 + 3*y^2 + 3*z^2 + la1*(x -2*y -5) + la2*(2*y +z -10)

% Gleichungssytem
% dL/dx  = 4*x              + la1                = 0
% dL/dy  =       6*y        - la1*2 + la2*2      = 0
% dL/dz  =             6*z          + la2        = 0
% dL/dl1 =   x - 2*y                        -5   = 0 
% dL/dl2 =       2*y +   z                  -10  = 0

M=[ 4  0  0  1  0 ;
    0  6  0 -2  2 ;
    0  0  6  0  1 ;
    1 -2  0  0  0 ;
    0  2  1  0  0 ]

v= [ 0 0 0 +5 +10]'
u = M \ v
disp('v(1) = x, v(2) = y, v(3) = z')
disp('v(4) = lambda1, v(5) = lambda2')