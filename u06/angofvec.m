function [ w ] = angofvec( u,v )
%ANGOFVEC Winkel zwischen zwei Vekoren
%   u, v: Vetkoren, gibt den Winkel in Grad zurueck
    % Seite 184
    cow=u'*v/(norm(u)*norm(v)); 
    w=acosd(cow);
end

