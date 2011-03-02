function [ w ] = angofvec( u,v )
%ANGOFVEC Summary of this function goes here
%   Detailed explanation goes here
    % Seite 184
    cow=u'*v/(norm(u)*norm(v)); 
    w=acosd(cow);
end

