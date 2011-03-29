z = 0.866 + 0.52i

for ii = 0:14,
   z2 = z^ii;
   if real(z2) < 0 && imag(z2) < 0,
       fprintf('z^%d: ', ii);
       disp(z2);
   end
end
