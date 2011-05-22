% u101
% Konturplot einer Halbkugel Lösen Sie die Übung 60-1. Hinweis: Wählen Sie
% den Radius 1 und erzeugen Sie mit meshgrid ein 51x51 Gitternetz. 
% Die Berechnung von Wurzeln aus negativen Werten muss durch ein
% if-statement abgefangen werden.

n=51

mitte=floor(0.5*n)+1;
step= 2/(n-1);
z= zeros(n);

for zei=1:n
    for spa=1:n
        y(zei)=(zei-mitte)*step;
        x(spa)=(spa-mitte)*step;
        
        if (1 - x(spa)^2 - (zei)^2) < 0
            % reil weil trotz "if" Wurzeln zwar positiv aber in Komplexer
            % Form ausgegeben wurden!
            z(zei,spa)=real(sqrt(1-x(spa)^2-y(zei)^2));
            
        end
    end
end


% plotten
contour(x,y,z,mitte);
axis([-1 1 -1 1]);
axis square;

% optional
disp('press return for more')
pause
contour3(x,y,z)
axis square;
pause
surf(x,y,z)
axis equal