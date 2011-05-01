function [ x ] = u071QRZerlegung( Q, R, b )
% QR-Zerlegung - Rueckwaerts-Einsetzen für Dimension 3x3 bzw. 3x1
% Input Parameter: Matrizen Q und R der QR Zerlegung und
%                  Vektor b der rechten Seiten 
% Output Parameter: x von Q*R*x = b

n = size(Q,1);
m = size(R,1);
if n ~= 3,
    error('Matrix must be of fixed dimensions 3x3');
elseif m ~= 3,
        error('Matrix must be of fixed dimensions 3x3');
end
    
y = Q'*b;

% Fehlende Schritte des Rueckwaerts-Einsetzens für R*x = y
% in einzeln programmierten Schritten gemäss Aufgabenstellung
 x1(3,1) = y(3,1)/R(3,3);
 x1(2,1) = (y(2,1)-R(2,3)*x1(3,1))/R(2,2);
 x1(1,1) = (y(1,1)-R(1,2)*x1(2,1)-R(1,3)*x1(3,1))/R(1,1);
 
 x = x1

% Kontrolle
fprintf('\nKontrolle: \nb1 = b (Input) \nb2 = Q*R*x \n')
b1 = b
b2 = Q*R*x

end

