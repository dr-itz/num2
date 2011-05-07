% u061
% Hexagon im Würfel Bestimmen Sie die Längen und (und Winkel beim Aneinanderstossen) 
% der 6 Strecken, welche die Punkte MBF MEF MEH MDH MCD MBC und wieder MBF in 
% einem Würfel verbinden. Dies ist tatsächlich ein reguläres Sechseck. Um dies 
% vollends zu beweisen müsste man auch noch nachweisen, dass die Punkte 
% alle in einer Ebene liegen. (am besten mit der Hesse'schen Normalform)
% Eckpunkte des Würfels 
A=[0 0 0]';
text(0,0,0,'A');
B=[1 0 0]';
text(1,0,0,'B');
C=[1 0 1]';
text(1,0,1,'C');
D=[0 0 1]';
text(0,0,1,'D');
E=[0 1 0]';
text(0,1,0,'E');
F=[1 1 0]';
text(1,1,0,'F');
G=[1 1 1]';
text(1,1,1,'G');
H=[0 1 1]';
text(0,1,1,'H');

W=[A B C D H G C G F B F E H E A D];

plot3(W(1,:),W(2,:),W(3,:));
hold on

disp('0-Vektoren der Eckpunkte des Hexagons:')
oMBF=0.5*(B+F)
text(oMBF(1),oMBF(2),oMBF(3),'MBF');
oMEF=0.5*(E+F)
text(oMEF(1),oMEF(2),oMEF(3),'MEF');
oMEH=0.5*(E+H) 
text(oMEH(1),oMEH(2),oMEH(3),'MEH');
oMDH=0.5*(D+H) 
text(oMDH(1),oMDH(2),oMDH(3),'MDH');
oMCD=0.5*(C+D) 
text(oMCD(1),oMCD(2),oMCD(3),'MCD');
oMBC=0.5*(B+C)
text(oMBC(1),oMBC(2),oMBC(3),'MBC');

HEX=[ oMBF oMEF oMEH oMDH oMCD oMBC oMBF oMEF oMEH];
plot3(HEX(1,:),HEX(2,:),HEX(3,:));
angofvec(oMEF-oMEH, oMEH-oMDH);
v=[HEX];
v(1,2);
disp('alle Winkel müssen = 120° sein:')
hundzw=[];
for n=1:1:6
    u=v(:,n+1)-v(:,n);
    w=v(:,n+3)-v(:,n+2);
    hundzw=[hundzw angofvec(u, w)];
end
hundzw

disp('die Kantenlängen müssen alle gleich sein:')
laengen=[];
for n=1:7
    l= v(:,n+1)-v(:,n);
    l=sqrt(l(1)^2+l(2)^2+l(3)^2 );
    laengen=[laengen l];
end

laengen


% liegen alle Punkte in einer Ebene
% oMBF oMEF oMEH oMDH oMCD oMBC oMBF];
disp('liegen alle Punkte in einer Ebene, Variante mit Hilfsmatrix tt:')
tt=[HEX(1,1:6);HEX(2,1:6);HEX(3,1:6); 1 1 1 1 1 1]
disp('Determinante von 4 Spalten von tt ist 0, wenn alle Punkte auf der selben Ebene:')
det(tt(1:4,1:4))
det(tt(1:4,3:6))

% oder mit Hesschen Normalform(?)
% zwei Vektoren auf der Hexagon Ebene (aus 3 Punkten), daraus n-Vektor.
% Wenn die restlichen Punkte davon einen Abstand von 0 haben sind sie auch auf der Ebene
% oMBF = Ortsvektor zum 1. Punkt der Ebene, oMEF= 2. Punkt, oMEH = 3.
disp('Variante mit Abstand von Hilfsebene:')
v=oMEF-oMBF;
w=oMEH-oMEF;
disp('normalen Vektor der Ebene:')
n=cross(v,w)

% Ebenengleichung: n1*x + n2*y + n3*z +d =0
% d bestimmen mit Hilfe oMEF
d = -1*(n(1)*oMEF(1)+n(2)*oMEF(2)+n(3)*oMEF(3));

% liegen die anderen Punkte in der selben Ebene, muss die Ebenengleichung
% mit diesem d immer auch 0 ergeben.
% Bspl Punkt oMBF: (n(1)*oMBF(1)+n(2)*oMBF(2)+n(3)*oMBF(3))+d
% alle Punkte auf einmal:
disp('Abstand aller Punkte von der Ebene (= oMEF - oMBF - oMEH) muss 0 sein:')
HEX(:,1:6)'*n+d

disp('3. Variantem Beispiel gemäss Buch S191:')
disp('Abstand von MCD zu Polygon')
en = n/norm(n);
disp('en(trans)*0P - en(trans)*0A = 0')
en'*oMCD-en'*oMEF


