% u061
% Hexagon im W�rfel Bestimmen Sie die L�ngen und (und Winkel beim Aneinanderstossen) 
% der 6 Strecken, welche die Punkte MBF MEF MEH MDH MCD MBC und wieder MBF in 
% einem W�rfel verbinden. Dies ist tats�chlich ein regul�res Sechseck. Um dies 
% vollends zu beweisen m�sste man auch noch nachweisen, dass die Punkte 
% alle in einer Ebene liegen. (am besten mit der Hesse'schen Normalform)
% Eckpunkte des W�rfels 
A=[0 0 0]'
B=[1 0 0]'
C=[1 0 1]'
D=[0 0 1]'
E=[0 1 0]'
F=[1 1 0]'
G=[1 1 1]'
H=[0 1 1]'

W=[A B C D H G C G F B F E H E A]

plot3(W(1,:),W(2,:),W(3,:));
hold on

% 0-Vektoren der Eckpunkte des Hexagons
oMBF=0.5*(B+F)
oMEF=0.5*(E+F)
oMEH=0.5*(E+H) 
oMDH=0.5*(D+H) 
oMCD=0.5*(C+D) 
oMBC=0.5*(B+C)
oMBF=0.5*(B+F)
HEX=[ oMBF oMEF oMEH oMDH oMCD oMBC oMBF oMEF oMEH]
plot3(HEX(1,:),HEX(2,:),HEX(3,:));
angofvec(oMEF-oMEH, oMEH-oMDH);
v=[HEX]
v(1,2);
% alle Winkel m�ssen = 120� sein
hundzw=[]
for n=1:1:6
    u=v(:,n+1)-v(:,n);
    w=v(:,n+3)-v(:,n+2);
    hundzw=[hundzw angofvec(u, w)];
end
hundzw
% die Kantenl�ngen m�ssen alle gleich sein
laeng=[]
for n=1:7
    l= v(:,n+1)-v(:,n);
    l=sqrt(l(1)^2+l(2)^2+l(3)^2 );
    laeng=[laeng l];
end

laeng


% liegen alle Punkte in einer Ebene
% oMBF oMEF oMEH oMDH oMCD oMBC oMBF];
tt=[HEX(1,1:6);HEX(2,1:6);HEX(3,1:6); 1 1 1 1 1 1];
det(tt(1:4,1:4))
det(tt(1:4,3:6))
