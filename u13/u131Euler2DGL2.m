%u131 gemäss 70-4
% x'' = -0.1*y'
% y'' =  0.1*x'
%
% Startwerte: 
x0  = 10;  % x(0)
y0  =  0;  % y(0)
xp0 =  0;  % xp(0)
yp0 =  1;  % yp(0)
h=0.2;
t=0;
% Ableitungsgrade reduzieren
% x'' = xp'
% xp  = x'
% y'' = yp'
% yp  = y'
%
% xp' = -0.1*yp
% yp' =  0.1*xp

% also
% (  x (t) ) '    xp
% (  xp(t) )      -0.1*yp
% (  y(t)  )   =  yp
% (  yp(t) )       0.1*xp

disp(['t = ',num2str(t)]);
disp('yvec = Position / dvec = Richtung beide im Zeitpunkt t')
disp([' x(t)']);
disp(['dx(t)']);
disp([' y(t)']);
disp(['dy(t)']);

% Startwerte + erster Durchgang
yvec=[0 0 0 0]'; ydvec=yvec; yvec1= yvec; 
yvec(1)=x0;
yvec(2)=xp0;
yvec(3)=y0;
yvec(4)=yp0;
yvec
 
ydvec(1)=yvec(2);
ydvec(2)= -0.1*yvec(4);
ydvec(3)=yvec(4);
ydvec(4)=  0.1*yvec(2);
ydvec

% zweiter Durchgang
t=t+0.2; disp(['t = ',num2str(t), ' --------------------']);
yvec(1)= yvec(1)+ h*yvec(2); % x(0+0.2) = yvec(1)+ h*xp
yvec(3)= yvec(3)+ h*yvec(4); % y(0+0.2) = yvec(3) + h*yp
yvec(2)= -0.1*yvec(3);  % xp(0.2) = -0.1*yp(0.2=
yvec(4)= +0.1*yvec(1);   % yp(0.2) = 
yvec

ydvec(1)=yvec(2);
ydvec(2)= -0.1*yvec(4); % Geschw. in x-Rtg zum Zeitpunkt t=0.2
ydvec(3)=yvec(4);
ydvec(4)=  0.1*yvec(2); % Geschw. in y-Rtg zum Zeitpunkt t=0.2
ydvec

% zweiter Durchgang
t=t+0.2; disp(['t = ',num2str(t), ' --------------------']);
yvec(1)= yvec(1)+ h*yvec(2); % x(0+0.2) = yvec(1)+ h*xp
yvec(3)= yvec(3)+ h*yvec(4); % y(0+0.2) = yvec(3) + h*yp
yvec(2)= -0.1*yvec(3);  % xp(0.2) = -0.1*yp(0.2=
yvec(4)= +0.1*yvec(1);   % yp(0.2) = 
yvec

ydvec(1)=yvec(2);
ydvec(2)= -0.1*yvec(4);
ydvec(3)=yvec(4);
ydvec(4)=  0.1*yvec(2);
ydvec


% dritter Durchgang, t=0.4
t=t+0.2; disp(['t = ',num2str(t), ' --------------------']);
yvec(1)= yvec(1)+ h*yvec(2); % x(0+0.2) = yvec(1)+ h*xp
yvec(3)= yvec(3)+ h*yvec(4); % y(0+0.2) = yvec(3) + h*yp
yvec(2)= -0.1*yvec(3);  % xp(0.2) = -0.1*yp(0.2=
yvec(4)= +0.1*yvec(1);   % yp(0.2) = 
yvec

ydvec(1)=yvec(2);
ydvec(2)= -0.1*yvec(4);
ydvec(3)=yvec(4);
ydvec(4)=  0.1*yvec(2);
ydvec

