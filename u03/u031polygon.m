%pk
% Anzahl Ecken = n
n=6
alpha= (2*pi)/n
r=1
w=[0:.01:(2*pi)]
y=r*cos(w)
x=r*sin(w)
%plot(x,y)
%hold on
AB= 2*r*sin((2*pi/n)/2)
U=2*pi*r
wstart=alpha
wvec = wstart + (0:n)*(2*pi/n)
r=[AB AB AB AB AB AB ]
polar(wvec, r)
%tbc


