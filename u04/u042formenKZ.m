function [] = u042formenKZ( z )
% Ausgabe aller Formen einer komplexen Zahl
% Input Parameter z: komplexe Zahl
% Output: Wertereihe zu beiden Darstellungen in folgender Reihenfolge: 
%         real(z), imag(z), abs(z), angle(z), angle(z)*180/pi

rz = real(z);
iz = imag(z);
az = abs(z); 
wz = angle(z);
wzg = wz * 180 / pi;

disp([num2str(rz) ' ' num2str(iz) ' ' num2str(az) ' ' num2str(wz) ' ' num2str(wzg)]) 

end

