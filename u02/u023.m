%3D Wuerfel Zeichnen
clear 
clf
figure(1); %Graphik wird im Vordergrund dargestellt

% Quader mit Ortsvektoren:
% Punkte mit x, y, z Koordinaten
A=[0 0 0]'
B=[4 0 0]'
C=[4 4 0]'
D=[0 4 0]'
E=[0 0 4]'
F=[4 0 4]'
G=[4 4 4]'
H=[0 4 4]'
W=[A B C D E F G H]
% nur Punkte zeichenen, mit einer Linie verbunden
plot3(W(1,:), W(2,:), W(3,:), 'k*-')


%%% erweitern (überzeichen), sprich nochmals zeichnen aber mit allen Kanten und
%%% Beschriftung!
WL=[A B C D A E F B F G C G H D H E]
plot3(WL(1,:), WL(2,:), WL(3,:), 'r')
axis([-1 5 -1 5 -1 5]); 
text(0,0,-0.2,'A')
text(4,0,-0.2,'B')
text(4,4,-0.2,'C')
text(0,4,-0.2,'D')
text(0,0,4.2,'E')
text(4,0,4.2,'F')
text(4,4,4.2,'G')
text(0,4,4.2,'H')
% x-min=1 x-max=5; y-min=-1 ....
format compact;
%Richtungsvektoren, nur Länge (norm) und Richtung (AB), ohne Startpunkt
AB= B-A;
norm(AB)
AC= C-A;
norm(AC)
AD= D-A;
norm(AD)
AE= E-A;
norm(AE)
AF= F-A;
norm(AF)
AG= G-A;
norm(AG)
AH= H-A;
norm(AH)
%angofvec(AD,AB)

% Winkelmessung
disp(['AB und AC= ' num2str(angofvec(AB,AC))] )
disp(['AB und AD= ' num2str(angofvec(AB,AD))] )
disp(['AB und AE= ' num2str(angofvec(AB,AE))] )
disp(['AB und AF= ' num2str(angofvec(AB,AF))] )
disp(['AB und AG= ' num2str(angofvec(AB,AG))] )
disp(['AB und AH= ' num2str(angofvec(AB,AH))] )
disp(' und etwas komplizierter....')
EG=G-E;
CG=G-C;
disp(['AG und CG= ' num2str(angofvec(AG,CG))] )
disp(['EG und AG= ' num2str(angofvec(EG,AG))] )



