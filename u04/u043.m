function [v] = u043(z,n)
    v=[];
    alpha=atan2(imag(z),real(z));
    for k=0:n-1
        w=(alpha/n)+k*2*pi/n;
        s=abs(z).^(1/n);
        kart=s.*cos(w)+i*s.*sin(w);
        res=[s w];
        v=[v; kart];
    end
    
   