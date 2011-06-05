% u123 Euler Oszillator
% y''(t)= -y(t)
% daraus
% y'(t) = p(t)
% p'(t) = -y(t)
h=0.1
res=zeros(5,10)
% Spalte = [x y(x) p(x) y'(x) p'(x)]'
for i=1:10, res(1,i)=(i-1)*0.1, end
res

% 1. Schritt
% A
y=10;            % Startwert
p=0;             % Startwert
yv= [10; 0];     % Startvektor
res(2,1)=y; 
res(3,1)=p;
% B
ydx = p ;
pdx = -y;
res(4,1)= res(3,1);  % y'(0) = p(0)
res(5,1)= -res(2,1); % p'(0) = -y(0)


% C
yneu= y + h*ydx
pneu= p + h*pdx
res(2,2) = res(2,1) + h* res(4,1)
res(3,2) = res(3,1) + h* res(5,1)
disp('1. Durchgang')
res(:,1)

%%% Next
% A
y=yneu;
p=pneu;

% B
ydx = p ;
pdx = -y;
res(4,2)=res(3,2);
res(5,2)=-res(2,2);

% C

yneu= y + h*ydx;
pneu= p + h*pdx;
res(2,3)=res(2,2)+h*res(4,2);
res(3,3)=res(3,2)+h*res(5,2);
disp('2. Durchgang')
res(:,2)
%%% Next
% A
y=yneu;
p=pneu;

% B
ydx = p ;
pdx = -y;
res(4,3)=res(3,3);
res(5,3)=-res(2,3);
% C

yneu= y + h*ydx;
pneu= p + h*pdx;
res(2,4)=res(2,3)+h*res(4,3);
res(3,4)=res(3,3)+h*res(5,3);
disp('3. Durchgang')
res(:,3)

for i=5:10
    res(4,i-1)=res(3,i-1);
    res(5,i-1)=-res(2,i-1);
    res(2,i)=res(2,i-1)+h*res(4,i-1);
    res(3,i)=res(3,i-1)+h*res(5,i-1);
    
end
res
