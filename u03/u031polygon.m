function [W] = u031polygon(n)
% gibt einen Vektor mit n-2 Winkeln zurück
% Winkel zwischen den n-2 Eckpunkten und der BasisSeite E1E2
E1=[0 0]';
b=[3 0]';
alpha=(360/n);
k=1;
E2=E1+b;
M=[E1 E2];
alt=E2;
for k =k:(n-2)
    k*alpha;
    DW=[cosd((k)*alpha) -sind((k)*alpha); sind((k)*alpha) cosd((k)*alpha)];
    v=DW*b;
    neu=alt+v;
    M=[M neu];
    alt=neu;
end
M=[M E1] ;               % Linie zurück zum Anfangspunkt, zum Zeichnen!


% nun die Winkel
W=[] ;                   % Resultatvektor
Basis=M(:,2)-M(:,1);     % Basis
k=2;
for k=k:(n-1)
    vek=M(:,k+1)-M(:,1);           % der Fächervektor beginnt immer bei E1 = M(:,1)
    beta = u031angofvec(Basis,vek);   
    W=[W beta];
end

% nun noch das Polynom zeichnen
 clf
 plot(M(1,:),M(2,:))