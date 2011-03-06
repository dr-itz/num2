%U022OKTAEDER Oktaeder - doppelte vierseitige Pyramide
%   Zeichnet ein Oktaeder mit der Kantenlaenge 10

% Alles bereinigen
clear;clc;clf;

% Figur im Vordergrund darstellen
figure(1);

% Eckpunkte A,B,C,D,TOP,BOT des Oktaeders
% Spalte 1      2       3
A =     [10     10      0]';
B =     [-10    10      0]';
C =     [-10    -10     0]';
D =     [10     -10     0]';
TOP =   [0      0       10*sqrt(2)]';
BOT =   [0      0       10*-sqrt(2)]';

P = [A B C D TOP BOT];
  
% Indexvektor
idx = [1 2 5];
fill3(P(1,idx), P(2,idx), P(3,idx), 'y');
hold on

% Zusammenstellung der gelben Pyramide
% Indexvektor
idx = [2 3 5];
fill3(P(1,idx), P(2,idx), P(3,idx), 'y');

idx = [3 4 5] ;
fill3(P(1,idx), P(2,idx), P(3,idx), 'y');

idx = [4 1 5];
fill3(P(1,idx), P(2,idx), P(3,idx), 'y');


% Zusammenstellung der gruenen Pyramide
% Indexvektor
idx = [1 2 6];
fill3(P(1,idx), P(2,idx), P(3,idx), 'g');

% Indexvektor
idx = [2 3 6];
fill3(P(1,idx), P(2,idx), P(3,idx), 'g');

idx = [3 4 6];
fill3(P(1,idx), P(2,idx), P(3,idx), 'g');

idx = [4 1 6];
fill3(P(1,idx), P(2,idx), P(3,idx), 'g');

% Transparenz der gezeichneten Ebenen aus [0,1]
alpha(0.7);

% Eckpunkte des Oktaeders beschriften
text(-11.5, -10, 0, 'A')
text(8.7, -10, -1.5, 'B')
text(11, 10, 0, 'C')
text(-9.7, 10, -2, 'D')
text(-1, 0, 15.5, 'TOP')
text(-1, 0, -15.5, 'BOT')

axis equal
