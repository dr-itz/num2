% Ausangangswert
z = 0.866 + 0.52i

% 0-14: < 15
for ii = 0:14,
   % Potenzieren
   z2 = z^ii;
   
   % Real- und Imaginaerteil muss < 0 sein
   if real(z2) < 0 && imag(z2) < 0,
       fprintf('z^%d: ', ii);
       disp(z2);
   end
end
