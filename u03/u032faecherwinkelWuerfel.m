function [wl, wm, wr] = u032faecherwinkelWuerfel(p)
% Faecherwinkel im Wuerfel
% Bestimmung der Grundflaechen-Diagonalen eines Wuerfels
% Input Parameter p: Wert zwischen 0 und 1, welche die Ebene angibt
%                    Bsp.: 0 = Ebene ABCD, 1 = Ebene EFGH
% Output Parameter wl, wm, wr: Winkel links, Mitte, rechts

s = 5;                    % Seitenlaenge, spielt keine Rolle
a = [0 0 0]';
b = [0 s 0]';
c = [s s 0]';
d = [s 0 0]';
e = [0 0 s]';
f = [0 s s]';
g = [s s s]';
h = [s 0 s]';

bv = c - a;
vl = d * (1-p) + p*h;     %Vektor links
vm = c * (1-p) + p*g;     %Vektor Mitte
vr = b * (1-p) + p*f;     %Vektor rechts

wl = angofvect(vl, bv);   %Winkel links
wm = angofvect(vm, bv);   %Winkel Mitte
wr = angofvect(vr, bv);   %Winkel rechts

end

function w = angofvect(u,v)
w = acosd(u'*v/(norm(u)*norm(v)));
end
