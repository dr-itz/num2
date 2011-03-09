function [wl, wm, wr] = u032faecherwinkelWuerfel(p)
% Faecherwinkel im Wuerfel
% Bestimmung der Grundflaechen-Diagonalen eines Wuerfels
% Input Parameter p: Wert zwischen 0 und 1, welche die Ebene angibt
%                    Bsp.: 0 = Ebene ABCD, 1 = Ebene EFGH
% Output Parameter wl, wm, wr: Winkel links, Mitte, rechts

a = [0 0 0]';
b = [0 4 0]';
c = [4 4 0]';
d = [4 0 0]';
e = [0 0 4]';
f = [0 4 4]';
g = [4 4 4]';
h = [4 0 4]';

bv = c - a;
vl = d * (1-p) + p*h;     %Vektor links
vm = c * (1-p) + p*g;     %Vektor Mitte
vr = b * (1-p) + p*f;     %Vektor rechts

wl = angofvect(vl, bv);   %Winkel links
wm = angofvect(vm, bv);   %Winkel Mitte
wr = angofvect(vr, bv);   %Winkel rechts

function w = angofvect(u,v)

w = acos(u'*v/(norm(u)*norm(v)));

% 1. eingabe: [w1, w2, w3] = u032faecherwinkelWuerfel(0)
% w3 * 180/pi
% 2. eingabe: [w1, w2, w3] = u032faecherwinkelWuerfel(1)
% arctan(1/sqrt(2))  % ergibt w2: schnitt durch würfel
