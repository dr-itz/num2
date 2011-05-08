% l�se die Gleichung:
% z^(5/3) = i
% z^5     = i^3
% z       = 5_Wurzel(i^3)
% die L�nge von z bleibt auf jeden Fall 1

disp('z^(5/3)=i')
z=[];
n=5;
% Winkel von i^3
w=pi/2*3;

disp('Winkel von i^3')

% 5te Wurzel
for k=0:(n-1)
    z=[ z exp(1i*((w/n)+k*2*pi/n)) ];
end
disp('gesuchte L�sungen f�r z')
z
disp('z hat immernoch die L�nge 1 mit den Winkeln [Grad]:')
angle(z)/(2*pi)*360
