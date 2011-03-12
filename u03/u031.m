function [ v ] = u031( n )
%U031 Summary of this function goes here
%   Detailed explanation goes here
if n<3
    error('zu kleiner Wert')
end
alpha=360/n;
x=3;
beta=0;
n=n-1;
v=[];
beta=180-alpha;
v=[beta];           %erster Winkel

for x = x:n
    beta=mod(beta-alpha,360);
    v=[v beta];
end

