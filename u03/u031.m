function [ v ] = u031( n )
%U031 Vektor mit n-2 Werten welche den Winkeln zwischen den Seiten entsprechen
% hier zwischen E1-E2 und E(k-1)-Ek mit k=3 ..n
%   Detailed explanation goes here
if n<3
    error('zu kleiner Wert')
end
alpha=360/n;
k=3;
beta=0;
n=n-1;
v=[];
beta=180-alpha;
v=[beta];           %erster Winkel

for k = k:n
    beta=mod(beta-alpha,360);
    v=[v beta];
end

